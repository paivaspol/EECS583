; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c'
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

@img = external global %struct.ImageParameters*
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@listXsize = external global [6 x i32]
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@imgY_org = common global i16** null, align 8
@listX = external global [6 x %struct.storable_picture**]
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@enc_picture = external global %struct.storable_picture*
@wbp_weight = common global i32**** null, align 8
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@imgUV_org = common global i16*** null, align 8
@img4Y_tmp = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i32 0, align 4
@me_time = common global i32 0, align 4
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
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
define void @estimate_weighting_factor_P_slice(i32 %select_offset) #0 {
entry:
  %default_weight = alloca [3 x i32], align 4
  %default_weight664 = bitcast [3 x i32]* %default_weight to i8*
  %weight = alloca [2 x [15 x [3 x i32]]], align 16
  %offset = alloca [2 x [15 x [3 x i32]]], align 16
  call void @llvm.dbg.value(metadata !{i32 %select_offset}, i64 0, metadata !22), !dbg !668
  call void @llvm.dbg.value(metadata !669, i64 0, metadata !26), !dbg !670
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %default_weight}, metadata !38), !dbg !671
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !672, !tbaa !673
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90, !dbg !672
  %1 = load i32* %MbaffFrameFlag, align 4, !dbg !672, !tbaa !676
  %tobool = icmp eq i32 %1, 0, !dbg !672
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !672

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !672
  %2 = load i32* %current_mb_nr, align 4, !dbg !672, !tbaa !676
  %idxprom = sext i32 %2 to i64, !dbg !672
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !672
  %3 = load %struct.macroblock** %mb_data, align 8, !dbg !672, !tbaa !673
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22, !dbg !672
  %4 = load i32* %mb_field, align 4, !dbg !672, !tbaa !676
  %tobool1 = icmp eq i32 %4, 0, !dbg !672
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !672

cond.true:                                        ; preds = %land.lhs.true
  %rem594 = shl i32 %2, 1, !dbg !672
  %5 = and i32 %rem594, 2, !dbg !672
  %6 = or i32 %5, 4, !dbg !672
  br label %cond.end, !dbg !672

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 2, %land.lhs.true ], [ 2, %entry ]
  %7 = bitcast [2 x [15 x [3 x i32]]]* %weight to i8*, !dbg !677
  call void @llvm.lifetime.start(i64 360, i8* %7) #2, !dbg !677
  call void @llvm.dbg.declare(metadata !{[2 x [15 x [3 x i32]]]* %weight}, metadata !43), !dbg !677
  %8 = bitcast [2 x [15 x [3 x i32]]]* %offset to i8*, !dbg !678
  call void @llvm.lifetime.start(i64 360, i8* %8) #2, !dbg !678
  call void @llvm.dbg.declare(metadata !{[2 x [15 x [3 x i32]]]* %offset}, metadata !47), !dbg !678
  store i32 5, i32* @luma_log_weight_denom, align 4, !dbg !679, !tbaa !676
  store i32 5, i32* @chroma_log_weight_denom, align 4, !dbg !680, !tbaa !676
  store i32 16, i32* @wp_luma_round, align 4, !dbg !681, !tbaa !676
  store i32 16, i32* @wp_chroma_round, align 4, !dbg !682, !tbaa !676
  %arrayidx8 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 0, !dbg !683
  store i32 32, i32* %arrayidx8, align 4, !dbg !683, !tbaa !676
  %arrayidx10 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 2, !dbg !684
  store i32 32, i32* %arrayidx10, align 4, !dbg !684, !tbaa !676
  %arrayidx11 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 1, !dbg !684
  store i32 32, i32* %arrayidx11, align 4, !dbg !684, !tbaa !676
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !23), !dbg !685
  %9 = load i32**** @wp_weight, align 8, !dbg !687, !tbaa !673
  %10 = load i32**** @wp_offset, align 8, !dbg !693, !tbaa !673
  br label %for.cond12.preheader, !dbg !685

for.cond12.preheader:                             ; preds = %cond.end, %for.inc51
  %indvars.iv669 = phi i64 [ 0, %cond.end ], [ %indvars.iv.next670, %for.inc51 ]
  %arrayidx14 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv669, !dbg !694
  %11 = load i32* %arrayidx14, align 4, !dbg !694, !tbaa !676
  %cmp15634 = icmp sgt i32 %11, 0, !dbg !694
  br i1 %cmp15634, label %for.cond17.preheader.lr.ph, label %for.inc51, !dbg !694

for.cond17.preheader.lr.ph:                       ; preds = %for.cond12.preheader
  %arrayidx33 = getelementptr inbounds i32*** %9, i64 %indvars.iv669, !dbg !687
  %12 = load i32*** %arrayidx33, align 8, !dbg !687, !tbaa !673
  %arrayidx39 = getelementptr inbounds i32*** %10, i64 %indvars.iv669, !dbg !693
  %13 = load i32*** %arrayidx39, align 8, !dbg !693, !tbaa !673
  br label %for.cond17.preheader, !dbg !694

for.cond54.preheader:                             ; preds = %for.inc51
  %height628 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !695
  %14 = load i32* %height628, align 4, !dbg !695, !tbaa !676
  %cmp55629 = icmp sgt i32 %14, 0, !dbg !695
  %width623 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !697
  br i1 %cmp55629, label %for.cond57.preheader.lr.ph, label %for.cond71.preheader, !dbg !695

for.cond57.preheader.lr.ph:                       ; preds = %for.cond54.preheader
  %15 = load i32* %width623, align 4, !dbg !697, !tbaa !676
  %cmp58624 = icmp sgt i32 %15, 0, !dbg !697
  %16 = load i16*** @imgY_org, align 8, !dbg !700, !tbaa !673
  br label %for.cond57.preheader, !dbg !695

for.cond17.preheader:                             ; preds = %for.cond17.preheader.lr.ph, %for.inc48
  %indvars.iv667 = phi i64 [ 0, %for.cond17.preheader.lr.ph ], [ %indvars.iv.next668, %for.inc48 ]
  %scevgep665 = getelementptr [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv669, i64 %indvars.iv667, i64 0
  %scevgep665666 = bitcast i32* %scevgep665 to i8*
  %scevgep = getelementptr [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv669, i64 %indvars.iv667, i64 0
  %scevgep663 = bitcast i32* %scevgep to i8*
  %arrayidx34 = getelementptr inbounds i32** %12, i64 %indvars.iv667, !dbg !687
  %17 = load i32** %arrayidx34, align 8, !dbg !687, !tbaa !673
  %arrayidx40 = getelementptr inbounds i32** %13, i64 %indvars.iv667, !dbg !693
  %18 = load i32** %arrayidx40, align 8, !dbg !693, !tbaa !673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep663, i8* %default_weight664, i64 12, i32 4, i1 false), !dbg !702
  call void @llvm.memset.p0i8.i64(i8* %scevgep665666, i8 0, i64 12, i32 4, i1 false), !dbg !703
  br label %for.body19, !dbg !704

for.body19:                                       ; preds = %for.body19, %for.cond17.preheader
  %indvars.iv657 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next658, %for.body19 ]
  %arrayidx21 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 %indvars.iv657, !dbg !702
  %19 = load i32* %arrayidx21, align 4, !dbg !687, !tbaa !676
  %arrayidx35 = getelementptr inbounds i32* %17, i64 %indvars.iv657, !dbg !687
  store i32 %19, i32* %arrayidx35, align 4, !dbg !687, !tbaa !676
  %arrayidx41 = getelementptr inbounds i32* %18, i64 %indvars.iv657, !dbg !693
  store i32 0, i32* %arrayidx41, align 4, !dbg !693, !tbaa !676
  %indvars.iv.next658 = add i64 %indvars.iv657, 1, !dbg !704
  %lftr.wideiv659 = trunc i64 %indvars.iv.next658 to i32, !dbg !704
  %exitcond660 = icmp eq i32 %lftr.wideiv659, 3, !dbg !704
  br i1 %exitcond660, label %for.inc48, label %for.body19, !dbg !704

for.inc48:                                        ; preds = %for.body19
  %indvars.iv.next668 = add i64 %indvars.iv667, 1, !dbg !694
  %20 = load i32* %arrayidx14, align 4, !dbg !694, !tbaa !676
  %21 = trunc i64 %indvars.iv.next668 to i32, !dbg !694
  %cmp15 = icmp slt i32 %21, %20, !dbg !694
  br i1 %cmp15, label %for.cond17.preheader, label %for.inc51, !dbg !694

for.inc51:                                        ; preds = %for.inc48, %for.cond12.preheader
  %indvars.iv.next670 = add i64 %indvars.iv669, 1, !dbg !685
  %22 = trunc i64 %indvars.iv.next670 to i32, !dbg !685
  %cmp = icmp slt i32 %22, %cond4, !dbg !685
  br i1 %cmp, label %for.cond12.preheader, label %for.cond54.preheader, !dbg !685

for.cond57.preheader:                             ; preds = %for.cond57.preheader.lr.ph, %for.inc68
  %indvars.iv655 = phi i64 [ 0, %for.cond57.preheader.lr.ph ], [ %indvars.iv.next656, %for.inc68 ]
  %dc_org.0630 = phi double [ 0.000000e+00, %for.cond57.preheader.lr.ph ], [ %dc_org.1.lcssa, %for.inc68 ]
  br i1 %cmp58624, label %for.body59.lr.ph, label %for.inc68, !dbg !697

for.body59.lr.ph:                                 ; preds = %for.cond57.preheader
  %arrayidx62 = getelementptr inbounds i16** %16, i64 %indvars.iv655, !dbg !700
  %23 = load i16** %arrayidx62, align 8, !dbg !700, !tbaa !673
  br label %for.body59, !dbg !697

for.cond71.preheader:                             ; preds = %for.cond54.preheader, %for.inc68
  %dc_org.0.lcssa = phi double [ %dc_org.1.lcssa, %for.inc68 ], [ 0.000000e+00, %for.cond54.preheader ]
  %cmp108 = icmp eq i32 %select_offset, 0, !dbg !705
  %mul117 = fmul double %dc_org.0.lcssa, 3.200000e+01, !dbg !710
  %24 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !712, !tbaa !673
  %25 = load i32* @wp_luma_round, align 4, !dbg !712, !tbaa !676
  %26 = load i32* @luma_log_weight_denom, align 4, !dbg !712, !tbaa !676
  br label %for.cond76.preheader, !dbg !717

for.body59:                                       ; preds = %for.body59.lr.ph, %for.body59
  %indvars.iv653 = phi i64 [ 0, %for.body59.lr.ph ], [ %indvars.iv.next654, %for.body59 ]
  %dc_org.1625 = phi double [ %dc_org.0630, %for.body59.lr.ph ], [ %add64, %for.body59 ]
  %arrayidx63 = getelementptr inbounds i16* %23, i64 %indvars.iv653, !dbg !700
  %27 = load i16* %arrayidx63, align 2, !dbg !700, !tbaa !718
  %conv = uitofp i16 %27 to double, !dbg !700
  %add64 = fadd double %dc_org.1625, %conv, !dbg !700
  call void @llvm.dbg.value(metadata !{double %add64}, i64 0, metadata !26), !dbg !700
  %indvars.iv.next654 = add i64 %indvars.iv653, 1, !dbg !697
  %28 = trunc i64 %indvars.iv.next654 to i32, !dbg !697
  %cmp58 = icmp slt i32 %28, %15, !dbg !697
  br i1 %cmp58, label %for.body59, label %for.inc68, !dbg !697

for.inc68:                                        ; preds = %for.body59, %for.cond57.preheader
  %dc_org.1.lcssa = phi double [ %dc_org.0630, %for.cond57.preheader ], [ %add64, %for.body59 ]
  %indvars.iv.next656 = add i64 %indvars.iv655, 1, !dbg !695
  %29 = trunc i64 %indvars.iv.next656 to i32, !dbg !695
  %cmp55 = icmp slt i32 %29, %14, !dbg !695
  br i1 %cmp55, label %for.cond57.preheader, label %for.cond71.preheader, !dbg !695

for.cond76.preheader:                             ; preds = %for.cond71.preheader, %for.inc407
  %indvars.iv651 = phi i64 [ 0, %for.cond71.preheader ], [ %indvars.iv.next652, %for.inc407 ]
  %arrayidx78 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv651, !dbg !719
  %30 = load i32* %arrayidx78, align 4, !dbg !719, !tbaa !676
  %cmp79620 = icmp sgt i32 %30, 0, !dbg !719
  br i1 %cmp79620, label %for.body81.lr.ph, label %for.inc407, !dbg !719

for.body81.lr.ph:                                 ; preds = %for.cond76.preheader
  %arrayidx86 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv651, !dbg !720
  %31 = load %struct.storable_picture*** %arrayidx86, align 8, !dbg !720, !tbaa !673
  %32 = load i32* %width623, align 4, !dbg !721, !tbaa !676
  %mul602 = mul nsw i32 %32, %14, !dbg !721
  %cmp95603 = icmp sgt i32 %mul602, 0, !dbg !721
  %add300616 = shl i32 %14, 2, !dbg !723
  %mul301617 = add i32 %add300616, 32, !dbg !723
  %cmp302618 = icmp sgt i32 %mul301617, 0, !dbg !723
  br label %for.body81, !dbg !719

for.body81:                                       ; preds = %for.body81.lr.ph, %for.inc404
  %indvars.iv649 = phi i64 [ 0, %for.body81.lr.ph ], [ %indvars.iv.next650, %for.inc404 ]
  %arrayidx87 = getelementptr inbounds %struct.storable_picture** %31, i64 %indvars.iv649, !dbg !720
  %33 = load %struct.storable_picture** %arrayidx87, align 8, !dbg !720, !tbaa !673
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 26, !dbg !720
  %34 = load i16** %imgY_11, align 8, !dbg !720, !tbaa !673
  call void @llvm.dbg.value(metadata !{i16* %34}, i64 0, metadata !34), !dbg !720
  %imgY_11_w = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 27, !dbg !724
  %35 = load i16** %imgY_11_w, align 8, !dbg !724, !tbaa !673
  call void @llvm.dbg.value(metadata !{i16* %35}, i64 0, metadata !37), !dbg !724
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !23), !dbg !721
  br i1 %cmp95603, label %for.body97, label %for.end106, !dbg !721

for.body97:                                       ; preds = %for.body81, %for.body97
  %indvars.iv641 = phi i64 [ %indvars.iv.next642, %for.body97 ], [ 0, %for.body81 ]
  %36 = phi double [ %add103, %for.body97 ], [ 0.000000e+00, %for.body81 ], !dbg !725
  %arrayidx99 = getelementptr inbounds i16* %34, i64 %indvars.iv641, !dbg !725
  %37 = load i16* %arrayidx99, align 2, !dbg !725, !tbaa !718
  %conv100 = uitofp i16 %37 to double, !dbg !725
  %add103 = fadd double %36, %conv100, !dbg !725
  %indvars.iv.next642 = add i64 %indvars.iv641, 1, !dbg !721
  %38 = trunc i64 %indvars.iv.next642 to i32, !dbg !721
  %cmp95 = icmp slt i32 %38, %mul602, !dbg !721
  br i1 %cmp95, label %for.body97, label %for.end106, !dbg !721

for.end106:                                       ; preds = %for.body97, %for.body81
  %39 = phi double [ 0.000000e+00, %for.body81 ], [ %add103, %for.body97 ]
  br i1 %cmp108, label %if.then, label %if.else155, !dbg !705

if.then:                                          ; preds = %for.end106
  %cmp112 = fcmp une double %39, 0.000000e+00, !dbg !727
  br i1 %cmp112, label %if.end, label %if.end.thread, !dbg !727

if.end.thread:                                    ; preds = %if.then
  %arrayidx132 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0, !dbg !728
  store i32 32, i32* %arrayidx132, align 4, !dbg !728, !tbaa !676
  br label %if.end209, !dbg !729

if.end:                                           ; preds = %if.then
  %div = fdiv double %mul117, %39, !dbg !710
  %add120 = fadd double %div, 5.000000e-01, !dbg !710
  %conv121 = fptosi double %add120 to i32, !dbg !710
  %arrayidx126 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0, !dbg !710
  store i32 %conv121, i32* %arrayidx126, align 4, !dbg !710, !tbaa !676
  %.off = add i32 %conv121, 64, !dbg !729
  %40 = icmp ugt i32 %.off, 191, !dbg !729
  br i1 %40, label %if.then147, label %if.end209, !dbg !729

if.then147:                                       ; preds = %if.end
  %arrayidx137 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0, !dbg !729
  store i32 32, i32* %arrayidx137, align 4, !dbg !730, !tbaa !676
  br label %if.end209, !dbg !730

if.else155:                                       ; preds = %for.end106
  %sub158 = fsub double %dc_org.0.lcssa, %39, !dbg !731
  %conv162 = sitofp i32 %mul602 to double, !dbg !731
  %div163 = fdiv double %sub158, %conv162, !dbg !731
  %add164 = fadd double %div163, 5.000000e-01, !dbg !731
  %conv165 = fptosi double %add164 to i32, !dbg !731
  %arrayidx170 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0, !dbg !731
  store i32 %conv165, i32* %arrayidx170, align 4, !dbg !731, !tbaa !676
  %cmp176 = icmp slt i32 %conv165, -128, !dbg !733
  br i1 %cmp176, label %cond.end196, label %cond.false179, !dbg !733

cond.false179:                                    ; preds = %if.else155
  %cmp185 = icmp sgt i32 %conv165, 127, !dbg !733
  %.conv165 = select i1 %cmp185, i32 127, i32 %conv165, !dbg !733
  br label %cond.end196, !dbg !733

cond.end196:                                      ; preds = %cond.false179, %if.else155
  %cond197 = phi i32 [ -128, %if.else155 ], [ %.conv165, %cond.false179 ], !dbg !733
  store i32 %cond197, i32* %arrayidx170, align 4, !dbg !733, !tbaa !676
  %arrayidx208 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0, !dbg !734
  store i32 32, i32* %arrayidx208, align 4, !dbg !734, !tbaa !676
  br label %if.end209

if.end209:                                        ; preds = %if.end.thread, %if.end, %if.then147, %cond.end196
  %41 = phi i32 [ %conv121, %if.end ], [ 32, %if.then147 ], [ 32, %cond.end196 ], [ 32, %if.end.thread ]
  %arrayidx215 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 1, !dbg !735
  store i32 32, i32* %arrayidx215, align 4, !dbg !735, !tbaa !676
  %arrayidx221 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 2, !dbg !736
  store i32 32, i32* %arrayidx221, align 4, !dbg !736, !tbaa !676
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !23), !dbg !737
  br i1 %cmp95603, label %for.body228.lr.ph, label %for.cond298.loopexit, !dbg !737

for.body228.lr.ph:                                ; preds = %if.end209
  %arrayidx243 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0, !dbg !739
  %42 = load i32* %arrayidx243, align 4, !dbg !739, !tbaa !676
  %mul225 = mul nsw i32 %32, %14, !dbg !737
  br label %for.body228, !dbg !737

for.body228:                                      ; preds = %for.body228.lr.ph, %cond.end290
  %indvars.iv643 = phi i64 [ 0, %for.body228.lr.ph ], [ %indvars.iv.next644, %cond.end290 ]
  %arrayidx230 = getelementptr inbounds i16* %34, i64 %indvars.iv643, !dbg !739
  %43 = load i16* %arrayidx230, align 2, !dbg !739, !tbaa !718
  %conv231 = zext i16 %43 to i32, !dbg !739
  %mul237 = mul nsw i32 %conv231, %41, !dbg !739
  %add238 = add nsw i32 %mul237, %25, !dbg !739
  %shr = ashr i32 %add238, %26, !dbg !739
  %add244 = add nsw i32 %shr, %42, !dbg !739
  %cmp245 = icmp slt i32 %add244, 0, !dbg !739
  br i1 %cmp245, label %cond.end290, label %cond.false248, !dbg !739

cond.false248:                                    ; preds = %for.body228
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155, !dbg !739
  %44 = load i32* %max_imgpel_value, align 4, !dbg !739, !tbaa !676
  %cmp266 = icmp sgt i32 %add244, %44, !dbg !739
  %.add244 = select i1 %cmp266, i32 %44, i32 %add244, !dbg !739
  %phitmp595 = trunc i32 %.add244 to i16, !dbg !739
  br label %cond.end290, !dbg !739

cond.end290:                                      ; preds = %cond.false248, %for.body228
  %cond291 = phi i16 [ 0, %for.body228 ], [ %phitmp595, %cond.false248 ]
  %arrayidx294 = getelementptr inbounds i16* %35, i64 %indvars.iv643, !dbg !739
  store i16 %cond291, i16* %arrayidx294, align 2, !dbg !739, !tbaa !718
  %indvars.iv.next644 = add i64 %indvars.iv643, 1, !dbg !737
  %45 = trunc i64 %indvars.iv.next644 to i32, !dbg !737
  %cmp226 = icmp slt i32 %45, %mul225, !dbg !737
  br i1 %cmp226, label %for.body228, label %for.cond298.loopexit, !dbg !737

for.cond298.loopexit:                             ; preds = %cond.end290, %if.end209
  br i1 %cmp302618, label %for.cond305.preheader.lr.ph, label %for.inc404, !dbg !723

for.cond305.preheader.lr.ph:                      ; preds = %for.cond298.loopexit
  %add307611 = shl i32 %32, 2, !dbg !741
  %mul308612 = add i32 %add307611, 32, !dbg !741
  %cmp309613 = icmp sgt i32 %mul308612, 0, !dbg !741
  %add300 = shl i32 %14, 2, !dbg !723
  %mul301 = add i32 %add300, 32, !dbg !723
  %arrayidx315 = getelementptr inbounds %struct.storable_picture** %24, i64 %indvars.iv649, !dbg !712
  %arrayidx331 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0, !dbg !712
  br label %for.cond305.preheader, !dbg !723

for.cond305.preheader:                            ; preds = %for.cond305.preheader.lr.ph, %for.inc401
  %indvars.iv647 = phi i64 [ 0, %for.cond305.preheader.lr.ph ], [ %indvars.iv.next648, %for.inc401 ]
  br i1 %cmp309613, label %for.body311.lr.ph, label %for.inc401, !dbg !741

for.body311.lr.ph:                                ; preds = %for.cond305.preheader
  %46 = load %struct.storable_picture** %arrayidx315, align 8, !dbg !712, !tbaa !673
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %46, i64 0, i32 28, !dbg !712
  %47 = load i16*** %imgY_ups, align 8, !dbg !712, !tbaa !673
  %arrayidx316 = getelementptr inbounds i16** %47, i64 %indvars.iv647, !dbg !712
  %48 = load i16** %arrayidx316, align 8, !dbg !712, !tbaa !673
  %49 = load i32* %arrayidx331, align 4, !dbg !712, !tbaa !676
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture* %46, i64 0, i32 29, !dbg !712
  %50 = load i16*** %imgY_ups_w, align 8, !dbg !712, !tbaa !673
  %arrayidx396 = getelementptr inbounds i16** %50, i64 %indvars.iv647, !dbg !712
  %51 = load i16** %arrayidx396, align 8, !dbg !712, !tbaa !673
  br label %for.body311, !dbg !741

for.body311:                                      ; preds = %for.body311.lr.ph, %cond.end389
  %indvars.iv645 = phi i64 [ 0, %for.body311.lr.ph ], [ %indvars.iv.next646, %cond.end389 ]
  %arrayidx317 = getelementptr inbounds i16* %48, i64 %indvars.iv645, !dbg !712
  %52 = load i16* %arrayidx317, align 2, !dbg !712, !tbaa !718
  %conv318 = zext i16 %52 to i32, !dbg !712
  %mul324 = mul nsw i32 %conv318, %41, !dbg !712
  %add325 = add nsw i32 %mul324, %25, !dbg !712
  %shr326 = ashr i32 %add325, %26, !dbg !712
  %add332 = add nsw i32 %shr326, %49, !dbg !712
  %cmp333 = icmp slt i32 %add332, 0, !dbg !712
  br i1 %cmp333, label %cond.end389, label %cond.false336, !dbg !712

cond.false336:                                    ; preds = %for.body311
  %max_imgpel_value359 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155, !dbg !712
  %53 = load i32* %max_imgpel_value359, align 4, !dbg !712, !tbaa !676
  %cmp360 = icmp sgt i32 %add332, %53, !dbg !712
  %.add332 = select i1 %cmp360, i32 %53, i32 %add332, !dbg !712
  %phitmp = trunc i32 %.add332 to i16, !dbg !712
  br label %cond.end389, !dbg !712

cond.end389:                                      ; preds = %cond.false336, %for.body311
  %cond390 = phi i16 [ 0, %for.body311 ], [ %phitmp, %cond.false336 ]
  %arrayidx397 = getelementptr inbounds i16* %51, i64 %indvars.iv645, !dbg !712
  store i16 %cond390, i16* %arrayidx397, align 2, !dbg !712, !tbaa !718
  %indvars.iv.next646 = add i64 %indvars.iv645, 1, !dbg !741
  %54 = trunc i64 %indvars.iv.next646 to i32, !dbg !741
  %cmp309 = icmp slt i32 %54, %mul308612, !dbg !741
  br i1 %cmp309, label %for.body311, label %for.inc401, !dbg !741

for.inc401:                                       ; preds = %cond.end389, %for.cond305.preheader
  %indvars.iv.next648 = add i64 %indvars.iv647, 1, !dbg !723
  %55 = trunc i64 %indvars.iv.next648 to i32, !dbg !723
  %cmp302 = icmp slt i32 %55, %mul301, !dbg !723
  br i1 %cmp302, label %for.cond305.preheader, label %for.inc404, !dbg !723

for.inc404:                                       ; preds = %for.inc401, %for.cond298.loopexit
  %indvars.iv.next650 = add i64 %indvars.iv649, 1, !dbg !719
  %56 = trunc i64 %indvars.iv.next650 to i32, !dbg !719
  %cmp79 = icmp slt i32 %56, %30, !dbg !719
  br i1 %cmp79, label %for.body81, label %for.inc407, !dbg !719

for.inc407:                                       ; preds = %for.inc404, %for.cond76.preheader
  %indvars.iv.next652 = add i64 %indvars.iv651, 1, !dbg !717
  %57 = trunc i64 %indvars.iv.next652 to i32, !dbg !717
  %cmp73 = icmp slt i32 %57, %cond4, !dbg !717
  br i1 %cmp73, label %for.cond76.preheader, label %for.cond415.preheader, !dbg !717

for.cond415.preheader:                            ; preds = %for.inc407, %for.inc455
  %indvars.iv639 = phi i64 [ %indvars.iv.next640, %for.inc455 ], [ 0, %for.inc407 ]
  %arrayidx417 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv639, !dbg !742
  %58 = load i32* %arrayidx417, align 4, !dbg !742, !tbaa !676
  %cmp418597 = icmp sgt i32 %58, 0, !dbg !742
  br i1 %cmp418597, label %for.cond421.preheader.lr.ph, label %for.inc455, !dbg !742

for.cond421.preheader.lr.ph:                      ; preds = %for.cond415.preheader
  %arrayidx434 = getelementptr inbounds i32*** %9, i64 %indvars.iv639, !dbg !746
  %59 = load i32*** %arrayidx434, align 8, !dbg !746, !tbaa !673
  %arrayidx446 = getelementptr inbounds i32*** %10, i64 %indvars.iv639, !dbg !750
  %60 = load i32*** %arrayidx446, align 8, !dbg !750, !tbaa !673
  br label %for.cond421.preheader, !dbg !742

for.cond421.preheader:                            ; preds = %for.cond421.preheader.lr.ph, %for.inc452
  %indvars.iv637 = phi i64 [ 0, %for.cond421.preheader.lr.ph ], [ %indvars.iv.next638, %for.inc452 ]
  %arrayidx435 = getelementptr inbounds i32** %59, i64 %indvars.iv637, !dbg !746
  %61 = load i32** %arrayidx435, align 8, !dbg !746, !tbaa !673
  %arrayidx447 = getelementptr inbounds i32** %60, i64 %indvars.iv637, !dbg !750
  %62 = load i32** %arrayidx447, align 8, !dbg !750, !tbaa !673
  br label %for.body424, !dbg !751

for.body424:                                      ; preds = %for.body424, %for.cond421.preheader
  %indvars.iv = phi i64 [ 0, %for.cond421.preheader ], [ %indvars.iv.next, %for.body424 ]
  %arrayidx430 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv639, i64 %indvars.iv637, i64 %indvars.iv, !dbg !746
  %63 = load i32* %arrayidx430, align 4, !dbg !746, !tbaa !676
  %arrayidx436 = getelementptr inbounds i32* %61, i64 %indvars.iv, !dbg !746
  store i32 %63, i32* %arrayidx436, align 4, !dbg !746, !tbaa !676
  %arrayidx442 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv639, i64 %indvars.iv637, i64 %indvars.iv, !dbg !750
  %64 = load i32* %arrayidx442, align 4, !dbg !750, !tbaa !676
  %arrayidx448 = getelementptr inbounds i32* %62, i64 %indvars.iv, !dbg !750
  store i32 %64, i32* %arrayidx448, align 4, !dbg !750, !tbaa !676
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !751
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !751
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !751
  br i1 %exitcond, label %for.inc452, label %for.body424, !dbg !751

for.inc452:                                       ; preds = %for.body424
  %indvars.iv.next638 = add i64 %indvars.iv637, 1, !dbg !742
  %65 = load i32* %arrayidx417, align 4, !dbg !742, !tbaa !676
  %66 = trunc i64 %indvars.iv.next638 to i32, !dbg !742
  %cmp418 = icmp slt i32 %66, %65, !dbg !742
  br i1 %cmp418, label %for.cond421.preheader, label %for.inc455, !dbg !742

for.inc455:                                       ; preds = %for.inc452, %for.cond415.preheader
  %indvars.iv.next640 = add i64 %indvars.iv639, 1, !dbg !752
  %67 = trunc i64 %indvars.iv.next640 to i32, !dbg !752
  %cmp412 = icmp slt i32 %67, %cond4, !dbg !752
  br i1 %cmp412, label %for.cond415.preheader, label %for.end457, !dbg !752

for.end457:                                       ; preds = %for.inc455
  call void @llvm.lifetime.end(i64 360, i8* %8) #2, !dbg !753
  call void @llvm.lifetime.end(i64 360, i8* %7) #2, !dbg !753
  ret void, !dbg !753
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @estimate_weighting_factor_B_slice() #0 {
entry:
  %default_weight = alloca [3 x i32], align 4
  %default_weight1285 = bitcast [3 x i32]* %default_weight to i8*
  %weight = alloca [6 x [15 x [3 x i32]]], align 16
  %offset = alloca [6 x [15 x [3 x i32]]], align 16
  %im_weight = alloca [6 x [15 x [15 x [3 x i32]]]], align 16
  call void @llvm.dbg.value(metadata !669, i64 0, metadata !59), !dbg !754
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %default_weight}, metadata !69), !dbg !755
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !756, !tbaa !673
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90, !dbg !756
  %1 = load i32* %MbaffFrameFlag, align 4, !dbg !756, !tbaa !676
  %tobool = icmp eq i32 %1, 0, !dbg !756
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !756

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !756
  %2 = load i32* %current_mb_nr, align 4, !dbg !756, !tbaa !676
  %idxprom = sext i32 %2 to i64, !dbg !756
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !756
  %3 = load %struct.macroblock** %mb_data, align 8, !dbg !756, !tbaa !673
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22, !dbg !756
  %4 = load i32* %mb_field, align 4, !dbg !756, !tbaa !676
  %tobool1 = icmp eq i32 %4, 0, !dbg !756
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !756

cond.true:                                        ; preds = %land.lhs.true
  %rem1117 = shl i32 %2, 1, !dbg !756
  %5 = and i32 %rem1117, 2, !dbg !756
  %6 = or i32 %5, 4, !dbg !756
  br label %cond.end, !dbg !756

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 2, %land.lhs.true ], [ 2, %entry ]
  %7 = bitcast [6 x [15 x [3 x i32]]]* %weight to i8*, !dbg !757
  call void @llvm.lifetime.start(i64 1080, i8* %7) #2, !dbg !757
  call void @llvm.dbg.declare(metadata !{[6 x [15 x [3 x i32]]]* %weight}, metadata !71), !dbg !757
  %8 = bitcast [6 x [15 x [3 x i32]]]* %offset to i8*, !dbg !758
  call void @llvm.lifetime.start(i64 1080, i8* %8) #2, !dbg !758
  call void @llvm.dbg.declare(metadata !{[6 x [15 x [3 x i32]]]* %offset}, metadata !74), !dbg !758
  %9 = bitcast [6 x [15 x [15 x [3 x i32]]]]* %im_weight to i8*, !dbg !759
  call void @llvm.lifetime.start(i64 16200, i8* %9) #2, !dbg !759
  call void @llvm.dbg.declare(metadata !{[6 x [15 x [15 x [3 x i32]]]]* %im_weight}, metadata !75), !dbg !759
  %10 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !760, !tbaa !673
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %10, i64 0, i32 20, !dbg !760
  %11 = load i32* %weighted_bipred_idc, align 4, !dbg !760, !tbaa !676
  %cmp = icmp eq i32 %11, 2, !dbg !760
  %. = select i1 %cmp, i32 5, i32 6, !dbg !761
  store i32 %., i32* @luma_log_weight_denom, align 4, !dbg !763, !tbaa !676
  store i32 %., i32* @chroma_log_weight_denom, align 4, !dbg !765, !tbaa !676
  %sub = add nsw i32 %., -1, !dbg !766
  %shl = shl i32 1, %sub, !dbg !766
  store i32 %shl, i32* @wp_luma_round, align 4, !dbg !766, !tbaa !676
  store i32 %shl, i32* @wp_chroma_round, align 4, !dbg !767, !tbaa !676
  %shl7 = shl i32 1, %., !dbg !768
  %arrayidx8 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 0, !dbg !768
  store i32 %shl7, i32* %arrayidx8, align 4, !dbg !768, !tbaa !676
  %arrayidx10 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 1, !dbg !769
  store i32 %shl7, i32* %arrayidx10, align 4, !dbg !769, !tbaa !676
  %arrayidx12 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 2, !dbg !770
  store i32 %shl7, i32* %arrayidx12, align 4, !dbg !770, !tbaa !676
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !53), !dbg !771
  %12 = load i32**** @wp_weight, align 8, !dbg !773, !tbaa !673
  %13 = load i32**** @wp_offset, align 8, !dbg !779, !tbaa !673
  br label %for.cond14.preheader, !dbg !771

for.cond14.preheader:                             ; preds = %cond.end, %for.inc53
  %indvars.iv1288 = phi i64 [ 0, %cond.end ], [ %indvars.iv.next1289, %for.inc53 ]
  %arrayidx16 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv1288, !dbg !780
  %14 = load i32* %arrayidx16, align 4, !dbg !780, !tbaa !676
  %cmp171208 = icmp sgt i32 %14, 0, !dbg !780
  br i1 %cmp171208, label %for.cond19.preheader.lr.ph, label %for.inc53, !dbg !780

for.cond19.preheader.lr.ph:                       ; preds = %for.cond14.preheader
  %arrayidx27 = getelementptr inbounds i32*** %12, i64 %indvars.iv1288, !dbg !773
  %15 = load i32*** %arrayidx27, align 8, !dbg !773, !tbaa !673
  %arrayidx33 = getelementptr inbounds i32*** %13, i64 %indvars.iv1288, !dbg !779
  %16 = load i32*** %arrayidx33, align 8, !dbg !779, !tbaa !673
  br label %for.cond19.preheader, !dbg !780

for.cond56.preheader:                             ; preds = %for.inc53
  %17 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !781, !tbaa !676
  %cmp571205 = icmp sgt i32 %17, 0, !dbg !781
  br i1 %cmp571205, label %for.cond59.preheader.lr.ph, label %for.end247, !dbg !781

for.cond59.preheader.lr.ph:                       ; preds = %for.cond56.preheader
  %18 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !dbg !782, !tbaa !673
  %19 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !782, !tbaa !673
  %20 = load %struct.storable_picture** @enc_picture, align 8, !dbg !783, !tbaa !673
  %poc92 = getelementptr inbounds %struct.storable_picture* %20, i64 0, i32 1, !dbg !783
  %.pre1293 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !784, !tbaa !676
  br label %for.cond59.preheader, !dbg !781

for.cond19.preheader:                             ; preds = %for.cond19.preheader.lr.ph, %for.inc50
  %indvars.iv1286 = phi i64 [ 0, %for.cond19.preheader.lr.ph ], [ %indvars.iv.next1287, %for.inc50 ]
  %scevgep1283 = getelementptr [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1288, i64 %indvars.iv1286, i64 0
  %scevgep12831284 = bitcast i32* %scevgep1283 to i8*
  %scevgep = getelementptr [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1288, i64 %indvars.iv1286, i64 0
  %scevgep1282 = bitcast i32* %scevgep to i8*
  %arrayidx28 = getelementptr inbounds i32** %15, i64 %indvars.iv1286, !dbg !773
  %21 = load i32** %arrayidx28, align 8, !dbg !773, !tbaa !673
  %arrayidx34 = getelementptr inbounds i32** %16, i64 %indvars.iv1286, !dbg !779
  %22 = load i32** %arrayidx34, align 8, !dbg !779, !tbaa !673
  call void @llvm.memset.p0i8.i64(i8* %scevgep1282, i8 0, i64 12, i32 4, i1 false), !dbg !785
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep12831284, i8* %default_weight1285, i64 12, i32 4, i1 false), !dbg !786
  br label %for.body21, !dbg !787

for.body21:                                       ; preds = %for.body21, %for.cond19.preheader
  %indvars.iv1276 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next1277, %for.body21 ]
  %arrayidx23 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 %indvars.iv1276, !dbg !773
  %23 = load i32* %arrayidx23, align 4, !dbg !773, !tbaa !676
  %arrayidx29 = getelementptr inbounds i32* %21, i64 %indvars.iv1276, !dbg !773
  store i32 %23, i32* %arrayidx29, align 4, !dbg !773, !tbaa !676
  %arrayidx35 = getelementptr inbounds i32* %22, i64 %indvars.iv1276, !dbg !779
  store i32 0, i32* %arrayidx35, align 4, !dbg !779, !tbaa !676
  %indvars.iv.next1277 = add i64 %indvars.iv1276, 1, !dbg !787
  %lftr.wideiv1278 = trunc i64 %indvars.iv.next1277 to i32, !dbg !787
  %exitcond1279 = icmp eq i32 %lftr.wideiv1278, 3, !dbg !787
  br i1 %exitcond1279, label %for.inc50, label %for.body21, !dbg !787

for.inc50:                                        ; preds = %for.body21
  %indvars.iv.next1287 = add i64 %indvars.iv1286, 1, !dbg !780
  %24 = load i32* %arrayidx16, align 4, !dbg !780, !tbaa !676
  %25 = trunc i64 %indvars.iv.next1287 to i32, !dbg !780
  %cmp17 = icmp slt i32 %25, %24, !dbg !780
  br i1 %cmp17, label %for.cond19.preheader, label %for.inc53, !dbg !780

for.inc53:                                        ; preds = %for.inc50, %for.cond14.preheader
  %indvars.iv.next1289 = add i64 %indvars.iv1288, 1, !dbg !771
  %26 = trunc i64 %indvars.iv.next1289 to i32, !dbg !771
  %cmp13 = icmp slt i32 %26, %cond4, !dbg !771
  br i1 %cmp13, label %for.cond14.preheader, label %for.cond56.preheader, !dbg !771

for.cond59.preheader:                             ; preds = %for.cond59.preheader.lr.ph, %for.inc245
  %indvars.iv1274 = phi i64 [ 0, %for.cond59.preheader.lr.ph ], [ %indvars.iv.next1275, %for.inc245 ]
  %cmp601203 = icmp sgt i32 %.pre1293, 0, !dbg !784
  br i1 %cmp601203, label %for.body61.lr.ph, label %for.inc245, !dbg !784

for.body61.lr.ph:                                 ; preds = %for.cond59.preheader
  %arrayidx65 = getelementptr inbounds %struct.storable_picture** %19, i64 %indvars.iv1274, !dbg !782
  %27 = load %struct.storable_picture** %arrayidx65, align 8, !dbg !782, !tbaa !673
  %poc66 = getelementptr inbounds %struct.storable_picture* %27, i64 0, i32 1, !dbg !782
  %.pre1294 = load i32* %poc66, align 4, !dbg !782, !tbaa !676
  br label %for.body61, !dbg !784

for.body61:                                       ; preds = %for.body61.lr.ph, %for.inc242
  %indvars.iv1272 = phi i64 [ 0, %for.body61.lr.ph ], [ %indvars.iv.next1273, %for.inc242 ]
  %arrayidx63 = getelementptr inbounds %struct.storable_picture** %18, i64 %indvars.iv1272, !dbg !782
  %28 = load %struct.storable_picture** %arrayidx63, align 8, !dbg !782, !tbaa !673
  %poc = getelementptr inbounds %struct.storable_picture* %28, i64 0, i32 1, !dbg !782
  %29 = load i32* %poc, align 4, !dbg !782, !tbaa !676
  %sub67 = sub nsw i32 %29, %.pre1294, !dbg !782
  %cmp68 = icmp slt i32 %sub67, -128, !dbg !782
  br i1 %cmp68, label %cond.end90, label %cond.false70, !dbg !782

cond.false70:                                     ; preds = %for.body61
  %cmp78 = icmp sgt i32 %sub67, 127, !dbg !782
  %.sub67 = select i1 %cmp78, i32 127, i32 %sub67, !dbg !782
  br label %cond.end90, !dbg !782

cond.end90:                                       ; preds = %for.body61, %cond.false70
  %cond91 = phi i32 [ %.sub67, %cond.false70 ], [ -128, %for.body61 ], !dbg !782
  call void @llvm.dbg.value(metadata !{i32 %cond91}, i64 0, metadata !82), !dbg !782
  %30 = load i32* %poc92, align 4, !dbg !783, !tbaa !676
  %sub96 = sub nsw i32 %30, %.pre1294, !dbg !783
  %cmp97 = icmp slt i32 %sub96, -128, !dbg !783
  br i1 %cmp97, label %cond.end115, label %cond.false99, !dbg !783

cond.false99:                                     ; preds = %cond.end90
  %cmp105 = icmp sgt i32 %sub96, 127, !dbg !783
  %.sub96 = select i1 %cmp105, i32 127, i32 %sub96, !dbg !783
  br label %cond.end115, !dbg !783

cond.end115:                                      ; preds = %cond.false99, %cond.end90
  %cond116 = phi i32 [ -128, %cond.end90 ], [ %.sub96, %cond.false99 ], !dbg !783
  call void @llvm.dbg.value(metadata !{i32 %cond116}, i64 0, metadata !87), !dbg !783
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !61), !dbg !788
  %cmp120 = icmp eq i32 %cond91, 0, !dbg !790
  %div = sdiv i32 %cond91, 2, !dbg !792
  %ispos = icmp sgt i32 %cond91, -2, !dbg !792
  %neg = sub i32 0, %div, !dbg !792
  %31 = select i1 %ispos, i32 %div, i32 %neg, !dbg !792
  %add155 = add nsw i32 %31, 16384, !dbg !792
  br label %for.body119, !dbg !788

for.body119:                                      ; preds = %for.inc239, %cond.end115
  %indvars.iv1268 = phi i64 [ 0, %cond.end115 ], [ %indvars.iv.next1269, %for.inc239 ]
  br i1 %cmp120, label %if.then121, label %if.else154, !dbg !790

if.then121:                                       ; preds = %for.body119
  %arrayidx123 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 %indvars.iv1268, !dbg !794
  %32 = load i32* %arrayidx123, align 4, !dbg !794, !tbaa !676
  %arrayidx130 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv1274, i64 %indvars.iv1272, i64 %indvars.iv1268, !dbg !794
  store i32 %32, i32* %arrayidx130, align 4, !dbg !794, !tbaa !676
  %arrayidx139 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv1274, i64 %indvars.iv1272, i64 %indvars.iv1268, !dbg !796
  store i32 %32, i32* %arrayidx139, align 4, !dbg !796, !tbaa !676
  br label %for.inc239, !dbg !797

if.else154:                                       ; preds = %for.body119
  %div156 = sdiv i32 %add155, %cond91, !dbg !792
  call void @llvm.dbg.value(metadata !{i32 %div156}, i64 0, metadata !57), !dbg !792
  %mul = mul nsw i32 %div156, %cond116, !dbg !798
  %add157 = add nsw i32 %mul, 32, !dbg !798
  %shr = ashr i32 %add157, 6, !dbg !798
  %cmp158 = icmp slt i32 %shr, -1024, !dbg !798
  br i1 %cmp158, label %cond.end172.thread, label %cond.end172, !dbg !798

cond.end172.thread:                               ; preds = %if.else154
  %arrayidx1811119 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv1274, i64 %indvars.iv1272, i64 %indvars.iv1268, !dbg !799
  store i32 -256, i32* %arrayidx1811119, align 4, !dbg !799, !tbaa !676
  br label %if.then198, !dbg !800

cond.end172:                                      ; preds = %if.else154
  %cmp164 = icmp sgt i32 %shr, 1023, !dbg !798
  %phitmp1115 = ashr i32 %add157, 8, !dbg !798
  %.phitmp1115 = select i1 %cmp164, i32 255, i32 %phitmp1115, !dbg !798
  %arrayidx181 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv1274, i64 %indvars.iv1272, i64 %indvars.iv1268, !dbg !799
  store i32 %.phitmp1115, i32* %arrayidx181, align 4, !dbg !799, !tbaa !676
  %.phitmp1115.off = add i32 %.phitmp1115, 64, !dbg !800
  %33 = icmp ugt i32 %.phitmp1115.off, 192, !dbg !800
  br i1 %33, label %if.then198, label %if.end208, !dbg !800

if.then198:                                       ; preds = %cond.end172, %cond.end172.thread
  %arrayidx1811126 = phi i32* [ %arrayidx1811119, %cond.end172.thread ], [ %arrayidx181, %cond.end172 ]
  %arrayidx200 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 %indvars.iv1268, !dbg !801
  %34 = load i32* %arrayidx200, align 4, !dbg !801, !tbaa !676
  store i32 %34, i32* %arrayidx1811126, align 4, !dbg !801, !tbaa !676
  br label %if.end208, !dbg !801

if.end208:                                        ; preds = %cond.end172, %if.then198
  %35 = phi i32 [ %.phitmp1115, %cond.end172 ], [ %34, %if.then198 ]
  %sub216 = sub nsw i32 64, %35, !dbg !802
  %arrayidx223 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv1274, i64 %indvars.iv1272, i64 %indvars.iv1268, !dbg !802
  store i32 %sub216, i32* %arrayidx223, align 4, !dbg !802, !tbaa !676
  br label %for.inc239

for.inc239:                                       ; preds = %if.then121, %if.end208
  %indvars.iv.next1269 = add i64 %indvars.iv1268, 1, !dbg !788
  %lftr.wideiv1270 = trunc i64 %indvars.iv.next1269 to i32, !dbg !788
  %exitcond1271 = icmp eq i32 %lftr.wideiv1270, 3, !dbg !788
  br i1 %exitcond1271, label %for.inc242, label %for.body119, !dbg !788

for.inc242:                                       ; preds = %for.inc239
  %indvars.iv.next1273 = add i64 %indvars.iv1272, 1, !dbg !784
  %36 = trunc i64 %indvars.iv.next1273 to i32, !dbg !784
  %cmp60 = icmp slt i32 %36, %.pre1293, !dbg !784
  br i1 %cmp60, label %for.body61, label %for.inc245, !dbg !784

for.inc245:                                       ; preds = %for.inc242, %for.cond59.preheader
  %indvars.iv.next1275 = add i64 %indvars.iv1274, 1, !dbg !781
  %37 = trunc i64 %indvars.iv.next1275 to i32, !dbg !781
  %cmp57 = icmp slt i32 %37, %17, !dbg !781
  br i1 %cmp57, label %for.cond59.preheader, label %for.end247, !dbg !781

for.end247:                                       ; preds = %for.inc245, %for.cond56.preheader
  %38 = load i32* %weighted_bipred_idc, align 4, !dbg !803, !tbaa !676
  %cmp249 = icmp eq i32 %38, 2, !dbg !803
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !53), !dbg !804
  br i1 %cmp249, label %for.cond251.preheader, label %for.cond432.preheader, !dbg !803

for.cond432.preheader:                            ; preds = %for.end247
  %height4331197 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !807
  %39 = load i32* %height4331197, align 4, !dbg !807, !tbaa !676
  %cmp4341198 = icmp sgt i32 %39, 0, !dbg !807
  %width4371193 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !810
  br i1 %cmp4341198, label %for.cond436.preheader.lr.ph, label %for.cond451.preheader, !dbg !807

for.cond436.preheader.lr.ph:                      ; preds = %for.cond432.preheader
  %40 = load i32* %width4371193, align 4, !dbg !810, !tbaa !676
  %cmp4381194 = icmp sgt i32 %40, 0, !dbg !810
  %41 = load i16*** @imgY_org, align 8, !dbg !813, !tbaa !673
  br label %for.cond436.preheader, !dbg !807

for.cond251.preheader:                            ; preds = %for.end247
  br i1 %cmp571205, label %for.cond254.preheader.lr.ph, label %for.cond306.preheader, !dbg !804

for.cond254.preheader.lr.ph:                      ; preds = %for.cond251.preheader
  %42 = load i32***** @wbp_weight, align 8, !dbg !815, !tbaa !673
  %arrayidx275 = getelementptr inbounds i32**** %42, i64 1, !dbg !815
  %.pre = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !821, !tbaa !676
  br label %for.cond254.preheader, !dbg !804

for.cond254.preheader:                            ; preds = %for.cond254.preheader.lr.ph, %for.inc299
  %43 = phi i32 [ %17, %for.cond254.preheader.lr.ph ], [ %56, %for.inc299 ]
  %44 = phi i32 [ %17, %for.cond254.preheader.lr.ph ], [ %57, %for.inc299 ]
  %45 = phi i32 [ %.pre, %for.cond254.preheader.lr.ph ], [ %58, %for.inc299 ], !dbg !821
  %indvars.iv1229 = phi i64 [ 0, %for.cond254.preheader.lr.ph ], [ %indvars.iv.next1230, %for.inc299 ]
  %cmp2551151 = icmp sgt i32 %45, 0, !dbg !821
  br i1 %cmp2551151, label %for.cond257.preheader.lr.ph, label %for.inc299, !dbg !821

for.cond257.preheader.lr.ph:                      ; preds = %for.cond254.preheader
  %46 = load i32**** %arrayidx275, align 8, !dbg !815, !tbaa !673
  %arrayidx276 = getelementptr inbounds i32*** %46, i64 %indvars.iv1229, !dbg !815
  %47 = load i32*** %arrayidx276, align 8, !dbg !815, !tbaa !673
  %48 = load i32**** %42, align 8, !dbg !822, !tbaa !673
  %arrayidx290 = getelementptr inbounds i32*** %48, i64 %indvars.iv1229, !dbg !822
  %49 = load i32*** %arrayidx290, align 8, !dbg !822, !tbaa !673
  br label %for.cond257.preheader, !dbg !821

for.cond257.preheader:                            ; preds = %for.cond257.preheader.lr.ph, %for.inc296
  %indvars.iv1227 = phi i64 [ 0, %for.cond257.preheader.lr.ph ], [ %indvars.iv.next1228, %for.inc296 ]
  %arrayidx277 = getelementptr inbounds i32** %47, i64 %indvars.iv1227, !dbg !815
  %50 = load i32** %arrayidx277, align 8, !dbg !815, !tbaa !673
  %arrayidx291 = getelementptr inbounds i32** %49, i64 %indvars.iv1227, !dbg !822
  %51 = load i32** %arrayidx291, align 8, !dbg !822, !tbaa !673
  br label %for.body259, !dbg !823

for.body259:                                      ; preds = %for.body259, %for.cond257.preheader
  %indvars.iv1223 = phi i64 [ 0, %for.cond257.preheader ], [ %indvars.iv.next1224, %for.body259 ]
  %arrayidx271 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv1229, i64 %indvars.iv1227, i64 %indvars.iv1223, !dbg !815
  %52 = load i32* %arrayidx271, align 4, !dbg !815, !tbaa !676
  %arrayidx278 = getelementptr inbounds i32* %50, i64 %indvars.iv1223, !dbg !815
  store i32 %52, i32* %arrayidx278, align 4, !dbg !815, !tbaa !676
  %arrayidx285 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv1229, i64 %indvars.iv1227, i64 %indvars.iv1223, !dbg !822
  %53 = load i32* %arrayidx285, align 4, !dbg !822, !tbaa !676
  %arrayidx292 = getelementptr inbounds i32* %51, i64 %indvars.iv1223, !dbg !822
  store i32 %53, i32* %arrayidx292, align 4, !dbg !822, !tbaa !676
  %indvars.iv.next1224 = add i64 %indvars.iv1223, 1, !dbg !823
  %lftr.wideiv1225 = trunc i64 %indvars.iv.next1224 to i32, !dbg !823
  %exitcond1226 = icmp eq i32 %lftr.wideiv1225, 3, !dbg !823
  br i1 %exitcond1226, label %for.inc296, label %for.body259, !dbg !823

for.inc296:                                       ; preds = %for.body259
  %indvars.iv.next1228 = add i64 %indvars.iv1227, 1, !dbg !821
  %54 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !821, !tbaa !676
  %55 = trunc i64 %indvars.iv.next1228 to i32, !dbg !821
  %cmp255 = icmp slt i32 %55, %54, !dbg !821
  br i1 %cmp255, label %for.cond257.preheader, label %for.cond254.for.inc299_crit_edge, !dbg !821

for.cond254.for.inc299_crit_edge:                 ; preds = %for.inc296
  %.pre1290 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !804, !tbaa !676
  br label %for.inc299, !dbg !821

for.inc299:                                       ; preds = %for.cond254.for.inc299_crit_edge, %for.cond254.preheader
  %56 = phi i32 [ %.pre1290, %for.cond254.for.inc299_crit_edge ], [ %43, %for.cond254.preheader ]
  %57 = phi i32 [ %.pre1290, %for.cond254.for.inc299_crit_edge ], [ %44, %for.cond254.preheader ], !dbg !804
  %58 = phi i32 [ %54, %for.cond254.for.inc299_crit_edge ], [ %45, %for.cond254.preheader ]
  %indvars.iv.next1230 = add i64 %indvars.iv1229, 1, !dbg !804
  %59 = trunc i64 %indvars.iv.next1230 to i32, !dbg !804
  %cmp252 = icmp slt i32 %59, %57, !dbg !804
  br i1 %cmp252, label %for.cond254.preheader, label %for.cond306.preheader, !dbg !804

for.cond306.preheader:                            ; preds = %for.cond251.preheader, %for.inc299, %for.inc347.for.cond306.preheader_crit_edge
  %60 = phi i32 [ %.pre1295, %for.inc347.for.cond306.preheader_crit_edge ], [ %17, %for.cond251.preheader ], [ %56, %for.inc299 ]
  %indvars.iv1221 = phi i64 [ %indvars.iv.next1222, %for.inc347.for.cond306.preheader_crit_edge ], [ 0, %for.cond251.preheader ], [ 0, %for.inc299 ]
  %arrayidx308 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv1221, !dbg !824
  %cmp3091147 = icmp sgt i32 %60, 0, !dbg !824
  br i1 %cmp3091147, label %for.body310.lr.ph, label %for.inc347, !dbg !824

for.body310.lr.ph:                                ; preds = %for.cond306.preheader
  %arrayidx314 = getelementptr inbounds i32*** %12, i64 %indvars.iv1221, !dbg !828
  %61 = load i32*** %arrayidx314, align 8, !dbg !828, !tbaa !673
  %arrayidx331 = getelementptr inbounds i32*** %13, i64 %indvars.iv1221, !dbg !830
  %62 = load i32*** %arrayidx331, align 8, !dbg !830, !tbaa !673
  br label %for.body310, !dbg !824

for.cond350.preheader:                            ; preds = %for.inc347
  %63 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !831, !tbaa !676
  %cmp3511145 = icmp sgt i32 %63, 0, !dbg !831
  br i1 %cmp3511145, label %for.cond353.preheader.lr.ph, label %if.end840, !dbg !831

for.cond353.preheader.lr.ph:                      ; preds = %for.cond350.preheader
  %64 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !833, !tbaa !676
  %cmp3541143 = icmp sgt i32 %64, 0, !dbg !833
  %height1128 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !836
  %width1129 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !836
  %65 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !839, !tbaa !673
  %66 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !dbg !844, !tbaa !673
  br label %for.cond353.preheader, !dbg !831

for.body310:                                      ; preds = %for.body310.lr.ph, %for.body310
  %indvars.iv1219 = phi i64 [ 0, %for.body310.lr.ph ], [ %indvars.iv.next1220, %for.body310 ]
  %arrayidx315 = getelementptr inbounds i32** %61, i64 %indvars.iv1219, !dbg !828
  %67 = load i32** %arrayidx315, align 8, !dbg !828, !tbaa !673
  store i32 %shl7, i32* %67, align 4, !dbg !828, !tbaa !676
  %arrayidx322 = getelementptr inbounds i32* %67, i64 1, !dbg !845
  store i32 %shl7, i32* %arrayidx322, align 4, !dbg !845, !tbaa !676
  %arrayidx328 = getelementptr inbounds i32* %67, i64 2, !dbg !846
  store i32 %shl7, i32* %arrayidx328, align 4, !dbg !846, !tbaa !676
  %arrayidx332 = getelementptr inbounds i32** %62, i64 %indvars.iv1219, !dbg !830
  %68 = load i32** %arrayidx332, align 8, !dbg !830, !tbaa !673
  store i32 0, i32* %68, align 4, !dbg !830, !tbaa !676
  %arrayidx338 = getelementptr inbounds i32* %68, i64 1, !dbg !847
  store i32 0, i32* %arrayidx338, align 4, !dbg !847, !tbaa !676
  %arrayidx343 = getelementptr inbounds i32* %68, i64 2, !dbg !848
  store i32 0, i32* %arrayidx343, align 4, !dbg !848, !tbaa !676
  %indvars.iv.next1220 = add i64 %indvars.iv1219, 1, !dbg !824
  %69 = load i32* %arrayidx308, align 4, !dbg !824, !tbaa !676
  %70 = trunc i64 %indvars.iv.next1220 to i32, !dbg !824
  %cmp309 = icmp slt i32 %70, %69, !dbg !824
  br i1 %cmp309, label %for.body310, label %for.inc347, !dbg !824

for.inc347:                                       ; preds = %for.body310, %for.cond306.preheader
  %indvars.iv.next1222 = add i64 %indvars.iv1221, 1, !dbg !849
  %71 = trunc i64 %indvars.iv.next1222 to i32, !dbg !849
  %cmp304 = icmp slt i32 %71, %cond4, !dbg !849
  br i1 %cmp304, label %for.inc347.for.cond306.preheader_crit_edge, label %for.cond350.preheader, !dbg !849

for.inc347.for.cond306.preheader_crit_edge:       ; preds = %for.inc347
  %arrayidx308.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next1222
  %.pre1295 = load i32* %arrayidx308.phi.trans.insert, align 4, !dbg !824, !tbaa !676
  br label %for.cond306.preheader, !dbg !849

for.cond353.preheader:                            ; preds = %for.cond353.preheader.lr.ph, %for.inc428
  %indvars.iv1217 = phi i64 [ 0, %for.cond353.preheader.lr.ph ], [ %indvars.iv.next1218, %for.inc428 ]
  br i1 %cmp3541143, label %for.cond356.preheader.lr.ph, label %for.inc428, !dbg !833

for.cond356.preheader.lr.ph:                      ; preds = %for.cond353.preheader
  %72 = load i32* %height1128, align 4, !dbg !836, !tbaa !676
  %73 = load i32* %width1129, align 4, !dbg !836, !tbaa !676
  %mul3571130 = mul nsw i32 %73, %72, !dbg !836
  %cmp3581131 = icmp sgt i32 %mul3571130, 0, !dbg !836
  %add3831139 = shl i32 %72, 2, !dbg !850
  %mul3841140 = add i32 %add3831139, 32, !dbg !850
  %cmp3851141 = icmp sgt i32 %mul3841140, 0, !dbg !850
  %arrayidx396 = getelementptr inbounds %struct.storable_picture** %65, i64 %indvars.iv1217, !dbg !839
  br label %for.cond356.preheader, !dbg !833

for.cond356.preheader:                            ; preds = %for.inc425, %for.cond356.preheader.lr.ph
  %indvars.iv1215 = phi i64 [ 0, %for.cond356.preheader.lr.ph ], [ %indvars.iv.next1216, %for.inc425 ]
  br i1 %cmp3581131, label %for.body359.lr.ph, label %for.cond381.loopexit, !dbg !836

for.body359.lr.ph:                                ; preds = %for.cond356.preheader
  %74 = load %struct.storable_picture** %arrayidx396, align 8, !dbg !851, !tbaa !673
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %74, i64 0, i32 26, !dbg !851
  %75 = load i16** %imgY_11, align 8, !dbg !851, !tbaa !673
  %imgY_11_w = getelementptr inbounds %struct.storable_picture* %74, i64 0, i32 27, !dbg !851
  %76 = load i16** %imgY_11_w, align 8, !dbg !851, !tbaa !673
  %arrayidx370 = getelementptr inbounds %struct.storable_picture** %66, i64 %indvars.iv1215, !dbg !853
  %77 = load %struct.storable_picture** %arrayidx370, align 8, !dbg !853, !tbaa !673
  %imgY_11371 = getelementptr inbounds %struct.storable_picture* %77, i64 0, i32 26, !dbg !853
  %78 = load i16** %imgY_11371, align 8, !dbg !853, !tbaa !673
  %imgY_11_w376 = getelementptr inbounds %struct.storable_picture* %77, i64 0, i32 27, !dbg !853
  %79 = load i16** %imgY_11_w376, align 8, !dbg !853, !tbaa !673
  br label %for.body359, !dbg !836

for.body359:                                      ; preds = %for.body359.lr.ph, %for.body359
  %indvars.iv = phi i64 [ 0, %for.body359.lr.ph ], [ %indvars.iv.next, %for.body359 ]
  %arrayidx363 = getelementptr inbounds i16* %75, i64 %indvars.iv, !dbg !851
  %80 = load i16* %arrayidx363, align 2, !dbg !851, !tbaa !718
  %arrayidx367 = getelementptr inbounds i16* %76, i64 %indvars.iv, !dbg !851
  store i16 %80, i16* %arrayidx367, align 2, !dbg !851, !tbaa !718
  %arrayidx372 = getelementptr inbounds i16* %78, i64 %indvars.iv, !dbg !853
  %81 = load i16* %arrayidx372, align 2, !dbg !853, !tbaa !718
  %arrayidx377 = getelementptr inbounds i16* %79, i64 %indvars.iv, !dbg !853
  store i16 %81, i16* %arrayidx377, align 2, !dbg !853, !tbaa !718
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !836
  %82 = trunc i64 %indvars.iv.next to i32, !dbg !836
  %cmp358 = icmp slt i32 %82, %mul3571130, !dbg !836
  br i1 %cmp358, label %for.body359, label %for.cond381.loopexit, !dbg !836

for.cond381.loopexit:                             ; preds = %for.body359, %for.cond356.preheader
  br i1 %cmp3851141, label %for.cond387.preheader.lr.ph, label %for.inc425, !dbg !850

for.cond387.preheader.lr.ph:                      ; preds = %for.cond381.loopexit
  %add3891134 = shl i32 %73, 2, !dbg !854
  %mul3901135 = add i32 %add3891134, 32, !dbg !854
  %cmp3911136 = icmp sgt i32 %mul3901135, 0, !dbg !854
  %add383 = shl i32 %72, 2, !dbg !850
  %mul384 = add i32 %add383, 32, !dbg !850
  %arrayidx408 = getelementptr inbounds %struct.storable_picture** %66, i64 %indvars.iv1215, !dbg !844
  br label %for.cond387.preheader, !dbg !850

for.cond387.preheader:                            ; preds = %for.cond387.preheader.lr.ph, %for.inc422
  %indvars.iv1213 = phi i64 [ 0, %for.cond387.preheader.lr.ph ], [ %indvars.iv.next1214, %for.inc422 ]
  br i1 %cmp3911136, label %for.body392.lr.ph, label %for.inc422, !dbg !854

for.body392.lr.ph:                                ; preds = %for.cond387.preheader
  %83 = load %struct.storable_picture** %arrayidx396, align 8, !dbg !839, !tbaa !673
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %83, i64 0, i32 28, !dbg !839
  %84 = load i16*** %imgY_ups, align 8, !dbg !839, !tbaa !673
  %arrayidx397 = getelementptr inbounds i16** %84, i64 %indvars.iv1213, !dbg !839
  %85 = load i16** %arrayidx397, align 8, !dbg !839, !tbaa !673
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture* %83, i64 0, i32 29, !dbg !839
  %86 = load i16*** %imgY_ups_w, align 8, !dbg !839, !tbaa !673
  %arrayidx403 = getelementptr inbounds i16** %86, i64 %indvars.iv1213, !dbg !839
  %87 = load i16** %arrayidx403, align 8, !dbg !839, !tbaa !673
  %88 = load %struct.storable_picture** %arrayidx408, align 8, !dbg !844, !tbaa !673
  %imgY_ups409 = getelementptr inbounds %struct.storable_picture* %88, i64 0, i32 28, !dbg !844
  %89 = load i16*** %imgY_ups409, align 8, !dbg !844, !tbaa !673
  %arrayidx410 = getelementptr inbounds i16** %89, i64 %indvars.iv1213, !dbg !844
  %90 = load i16** %arrayidx410, align 8, !dbg !844, !tbaa !673
  %imgY_ups_w416 = getelementptr inbounds %struct.storable_picture* %88, i64 0, i32 29, !dbg !844
  %91 = load i16*** %imgY_ups_w416, align 8, !dbg !844, !tbaa !673
  %arrayidx417 = getelementptr inbounds i16** %91, i64 %indvars.iv1213, !dbg !844
  %92 = load i16** %arrayidx417, align 8, !dbg !844, !tbaa !673
  br label %for.body392, !dbg !854

for.body392:                                      ; preds = %for.body392.lr.ph, %for.body392
  %indvars.iv1211 = phi i64 [ 0, %for.body392.lr.ph ], [ %indvars.iv.next1212, %for.body392 ]
  %arrayidx398 = getelementptr inbounds i16* %85, i64 %indvars.iv1211, !dbg !839
  %93 = load i16* %arrayidx398, align 2, !dbg !839, !tbaa !718
  %arrayidx404 = getelementptr inbounds i16* %87, i64 %indvars.iv1211, !dbg !839
  store i16 %93, i16* %arrayidx404, align 2, !dbg !839, !tbaa !718
  %arrayidx411 = getelementptr inbounds i16* %90, i64 %indvars.iv1211, !dbg !844
  %94 = load i16* %arrayidx411, align 2, !dbg !844, !tbaa !718
  %arrayidx418 = getelementptr inbounds i16* %92, i64 %indvars.iv1211, !dbg !844
  store i16 %94, i16* %arrayidx418, align 2, !dbg !844, !tbaa !718
  %indvars.iv.next1212 = add i64 %indvars.iv1211, 1, !dbg !854
  %95 = trunc i64 %indvars.iv.next1212 to i32, !dbg !854
  %cmp391 = icmp slt i32 %95, %mul3901135, !dbg !854
  br i1 %cmp391, label %for.body392, label %for.inc422, !dbg !854

for.inc422:                                       ; preds = %for.body392, %for.cond387.preheader
  %indvars.iv.next1214 = add i64 %indvars.iv1213, 1, !dbg !850
  %96 = trunc i64 %indvars.iv.next1214 to i32, !dbg !850
  %cmp385 = icmp slt i32 %96, %mul384, !dbg !850
  br i1 %cmp385, label %for.cond387.preheader, label %for.inc425, !dbg !850

for.inc425:                                       ; preds = %for.inc422, %for.cond381.loopexit
  %indvars.iv.next1216 = add i64 %indvars.iv1215, 1, !dbg !833
  %lftr.wideiv = trunc i64 %indvars.iv.next1216 to i32, !dbg !833
  %exitcond = icmp eq i32 %lftr.wideiv, %64, !dbg !833
  br i1 %exitcond, label %for.inc428, label %for.cond356.preheader, !dbg !833

for.inc428:                                       ; preds = %for.inc425, %for.cond353.preheader
  %indvars.iv.next1218 = add i64 %indvars.iv1217, 1, !dbg !831
  %97 = trunc i64 %indvars.iv.next1218 to i32, !dbg !831
  %cmp351 = icmp slt i32 %97, %63, !dbg !831
  br i1 %cmp351, label %for.cond353.preheader, label %if.end840, !dbg !831

for.cond436.preheader:                            ; preds = %for.cond436.preheader.lr.ph, %for.inc448
  %indvars.iv1266 = phi i64 [ 0, %for.cond436.preheader.lr.ph ], [ %indvars.iv.next1267, %for.inc448 ]
  %dc_org.01199 = phi double [ 0.000000e+00, %for.cond436.preheader.lr.ph ], [ %dc_org.1.lcssa, %for.inc448 ]
  br i1 %cmp4381194, label %for.body439.lr.ph, label %for.inc448, !dbg !810

for.body439.lr.ph:                                ; preds = %for.cond436.preheader
  %arrayidx442 = getelementptr inbounds i16** %41, i64 %indvars.iv1266, !dbg !813
  %98 = load i16** %arrayidx442, align 8, !dbg !813, !tbaa !673
  br label %for.body439, !dbg !810

for.cond451.preheader:                            ; preds = %for.cond432.preheader, %for.inc448
  %dc_org.0.lcssa = phi double [ %dc_org.1.lcssa, %for.inc448 ], [ 0.000000e+00, %for.cond432.preheader ]
  %conv502 = sitofp i32 %shl7 to double, !dbg !855
  %mul503 = fmul double %dc_org.0.lcssa, %conv502, !dbg !855
  %99 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !860, !tbaa !673
  %100 = load i32* @wp_luma_round, align 4, !dbg !860, !tbaa !676
  %101 = load i32* @luma_log_weight_denom, align 4, !dbg !860, !tbaa !676
  br label %for.cond456.preheader, !dbg !865

for.body439:                                      ; preds = %for.body439.lr.ph, %for.body439
  %indvars.iv1264 = phi i64 [ 0, %for.body439.lr.ph ], [ %indvars.iv.next1265, %for.body439 ]
  %dc_org.11195 = phi double [ %dc_org.01199, %for.body439.lr.ph ], [ %add444, %for.body439 ]
  %arrayidx443 = getelementptr inbounds i16* %98, i64 %indvars.iv1264, !dbg !813
  %102 = load i16* %arrayidx443, align 2, !dbg !813, !tbaa !718
  %conv = uitofp i16 %102 to double, !dbg !813
  %add444 = fadd double %dc_org.11195, %conv, !dbg !813
  call void @llvm.dbg.value(metadata !{double %add444}, i64 0, metadata !59), !dbg !813
  %indvars.iv.next1265 = add i64 %indvars.iv1264, 1, !dbg !810
  %103 = trunc i64 %indvars.iv.next1265 to i32, !dbg !810
  %cmp438 = icmp slt i32 %103, %40, !dbg !810
  br i1 %cmp438, label %for.body439, label %for.inc448, !dbg !810

for.inc448:                                       ; preds = %for.body439, %for.cond436.preheader
  %dc_org.1.lcssa = phi double [ %dc_org.01199, %for.cond436.preheader ], [ %add444, %for.body439 ]
  %indvars.iv.next1267 = add i64 %indvars.iv1266, 1, !dbg !807
  %104 = trunc i64 %indvars.iv.next1267 to i32, !dbg !807
  %cmp434 = icmp slt i32 %104, %39, !dbg !807
  br i1 %cmp434, label %for.cond436.preheader, label %for.cond451.preheader, !dbg !807

for.cond456.preheader:                            ; preds = %for.inc682.for.cond456.preheader_crit_edge, %for.cond451.preheader
  %105 = phi i32 [ %17, %for.cond451.preheader ], [ %.pre1296, %for.inc682.for.cond456.preheader_crit_edge ]
  %indvars.iv1262 = phi i64 [ 0, %for.cond451.preheader ], [ %indvars.iv.next1263, %for.inc682.for.cond456.preheader_crit_edge ]
  %cmp4591190 = icmp sgt i32 %105, 0, !dbg !866
  br i1 %cmp4591190, label %for.body461.lr.ph, label %for.inc682, !dbg !866

for.body461.lr.ph:                                ; preds = %for.cond456.preheader
  %arrayidx468 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv1262, !dbg !867
  %106 = load %struct.storable_picture*** %arrayidx468, align 8, !dbg !867, !tbaa !673
  %107 = load i32* %width4371193, align 4, !dbg !868, !tbaa !676
  %mul4791171 = mul nsw i32 %107, %39, !dbg !868
  %cmp4801172 = icmp sgt i32 %mul4791171, 0, !dbg !868
  %add6031186 = shl i32 %39, 2, !dbg !870
  %mul6041187 = add i32 %add6031186, 32, !dbg !870
  %cmp6051188 = icmp sgt i32 %mul6041187, 0, !dbg !870
  br label %for.body461, !dbg !866

for.body461:                                      ; preds = %for.body461.lr.ph, %for.inc679
  %indvars.iv1259 = phi i64 [ 0, %for.body461.lr.ph ], [ %indvars.iv.next1260, %for.inc679 ]
  %arrayidx469 = getelementptr inbounds %struct.storable_picture** %106, i64 %indvars.iv1259, !dbg !867
  %108 = load %struct.storable_picture** %arrayidx469, align 8, !dbg !867, !tbaa !673
  %imgY_11470 = getelementptr inbounds %struct.storable_picture* %108, i64 0, i32 26, !dbg !867
  %109 = load i16** %imgY_11470, align 8, !dbg !867, !tbaa !673
  call void @llvm.dbg.value(metadata !{i16* %109}, i64 0, metadata !67), !dbg !867
  %imgY_11_w475 = getelementptr inbounds %struct.storable_picture* %108, i64 0, i32 27, !dbg !871
  %110 = load i16** %imgY_11_w475, align 8, !dbg !871, !tbaa !673
  call void @llvm.dbg.value(metadata !{i16* %110}, i64 0, metadata !68), !dbg !871
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !53), !dbg !868
  br i1 %cmp4801172, label %for.body482, label %if.end513, !dbg !868

for.body482:                                      ; preds = %for.body461, %for.body482
  %indvars.iv1251 = phi i64 [ %indvars.iv.next1252, %for.body482 ], [ 0, %for.body461 ]
  %add4901174 = phi double [ %add490, %for.body482 ], [ 0.000000e+00, %for.body461 ], !dbg !872
  %arrayidx484 = getelementptr inbounds i16* %109, i64 %indvars.iv1251, !dbg !872
  %111 = load i16* %arrayidx484, align 2, !dbg !872, !tbaa !718
  %conv485 = uitofp i16 %111 to double, !dbg !872
  %add490 = fadd double %add4901174, %conv485, !dbg !872
  %indvars.iv.next1252 = add i64 %indvars.iv1251, 1, !dbg !868
  %112 = trunc i64 %indvars.iv.next1252 to i32, !dbg !868
  %cmp480 = icmp slt i32 %112, %mul4791171, !dbg !868
  br i1 %cmp480, label %for.body482, label %for.end493, !dbg !868

for.end493:                                       ; preds = %for.body482
  %cmp498 = fcmp une double %add490, 0.000000e+00, !dbg !874
  br i1 %cmp498, label %if.then500, label %if.end513, !dbg !874

if.then500:                                       ; preds = %for.end493
  %div508 = fdiv double %mul503, %add490, !dbg !855
  %add509 = fadd double %div508, 5.000000e-01, !dbg !855
  %conv510 = fptosi double %add509 to i32, !dbg !855
  call void @llvm.dbg.value(metadata !{i32 %conv510}, i64 0, metadata !80), !dbg !855
  br label %if.end513, !dbg !855

if.end513:                                        ; preds = %for.body461, %for.end493, %if.then500
  %wf_weight.0 = phi i32 [ %conv510, %if.then500 ], [ %shl7, %for.end493 ], [ %shl7, %for.body461 ]
  %wf_weight.0.off = add i32 %wf_weight.0, 64, !dbg !875
  %113 = icmp ugt i32 %wf_weight.0.off, 191, !dbg !875
  call void @llvm.dbg.value(metadata !{i32 %shl7}, i64 0, metadata !80), !dbg !876
  %.wf_weight.0 = select i1 %113, i32 %shl7, i32 %wf_weight.0, !dbg !875
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !81), !dbg !878
  %arrayidx526 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 0, !dbg !879
  store i32 %.wf_weight.0, i32* %arrayidx526, align 4, !dbg !879, !tbaa !676
  %arrayidx532 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 1, !dbg !880
  store i32 %shl7, i32* %arrayidx532, align 4, !dbg !880, !tbaa !676
  %arrayidx538 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 2, !dbg !881
  store i32 %shl7, i32* %arrayidx538, align 4, !dbg !881, !tbaa !676
  %arrayidx543 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 0, !dbg !882
  store i32 0, i32* %arrayidx543, align 4, !dbg !882, !tbaa !676
  %arrayidx548 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 1, !dbg !883
  store i32 0, i32* %arrayidx548, align 4, !dbg !883, !tbaa !676
  %arrayidx553 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 2, !dbg !884
  store i32 0, i32* %arrayidx553, align 4, !dbg !884, !tbaa !676
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !53), !dbg !885
  br i1 %cmp4801172, label %for.body560.lr.ph, label %for.cond601.loopexit, !dbg !885

for.body560.lr.ph:                                ; preds = %if.end513
  %mul557 = mul nsw i32 %107, %39, !dbg !885
  br label %for.body560, !dbg !885

for.body560:                                      ; preds = %for.body560.lr.ph, %cond.end593
  %indvars.iv1253 = phi i64 [ 0, %for.body560.lr.ph ], [ %indvars.iv.next1254, %cond.end593 ]
  %arrayidx562 = getelementptr inbounds i16* %109, i64 %indvars.iv1253, !dbg !887
  %114 = load i16* %arrayidx562, align 2, !dbg !887, !tbaa !718
  %conv563 = zext i16 %114 to i32, !dbg !887
  %mul564 = mul nsw i32 %conv563, %.wf_weight.0, !dbg !887
  %add565 = add nsw i32 %mul564, %100, !dbg !887
  %shr566 = ashr i32 %add565, %101, !dbg !887
  %cmp568 = icmp slt i32 %shr566, 0, !dbg !887
  br i1 %cmp568, label %cond.end593, label %cond.false571, !dbg !887

cond.false571:                                    ; preds = %for.body560
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155, !dbg !887
  %115 = load i32* %max_imgpel_value, align 4, !dbg !887, !tbaa !676
  %cmp579 = icmp sgt i32 %shr566, %115, !dbg !887
  %.shr566 = select i1 %cmp579, i32 %115, i32 %shr566, !dbg !887
  %phitmp1127 = trunc i32 %.shr566 to i16, !dbg !887
  br label %cond.end593, !dbg !887

cond.end593:                                      ; preds = %cond.false571, %for.body560
  %cond594 = phi i16 [ 0, %for.body560 ], [ %phitmp1127, %cond.false571 ]
  %arrayidx597 = getelementptr inbounds i16* %110, i64 %indvars.iv1253, !dbg !887
  store i16 %cond594, i16* %arrayidx597, align 2, !dbg !887, !tbaa !718
  %indvars.iv.next1254 = add i64 %indvars.iv1253, 1, !dbg !885
  %116 = trunc i64 %indvars.iv.next1254 to i32, !dbg !885
  %cmp558 = icmp slt i32 %116, %mul557, !dbg !885
  br i1 %cmp558, label %for.body560, label %for.cond601.loopexit, !dbg !885

for.cond601.loopexit:                             ; preds = %cond.end593, %if.end513
  br i1 %cmp6051188, label %for.cond608.preheader.lr.ph, label %for.inc679, !dbg !870

for.cond608.preheader.lr.ph:                      ; preds = %for.cond601.loopexit
  %add6101181 = shl i32 %107, 2, !dbg !889
  %mul6111182 = add i32 %add6101181, 32, !dbg !889
  %cmp6121183 = icmp sgt i32 %mul6111182, 0, !dbg !889
  %add603 = shl i32 %39, 2, !dbg !870
  %mul604 = add i32 %add603, 32, !dbg !870
  %arrayidx618 = getelementptr inbounds %struct.storable_picture** %99, i64 %indvars.iv1259, !dbg !860
  br label %for.cond608.preheader, !dbg !870

for.cond608.preheader:                            ; preds = %for.cond608.preheader.lr.ph, %for.inc676
  %indvars.iv1257 = phi i64 [ 0, %for.cond608.preheader.lr.ph ], [ %indvars.iv.next1258, %for.inc676 ]
  br i1 %cmp6121183, label %for.body614.lr.ph, label %for.inc676, !dbg !889

for.body614.lr.ph:                                ; preds = %for.cond608.preheader
  %117 = load %struct.storable_picture** %arrayidx618, align 8, !dbg !860, !tbaa !673
  %imgY_ups619 = getelementptr inbounds %struct.storable_picture* %117, i64 0, i32 28, !dbg !860
  %118 = load i16*** %imgY_ups619, align 8, !dbg !860, !tbaa !673
  %arrayidx620 = getelementptr inbounds i16** %118, i64 %indvars.iv1257, !dbg !860
  %119 = load i16** %arrayidx620, align 8, !dbg !860, !tbaa !673
  %imgY_ups_w670 = getelementptr inbounds %struct.storable_picture* %117, i64 0, i32 29, !dbg !860
  %120 = load i16*** %imgY_ups_w670, align 8, !dbg !860, !tbaa !673
  %arrayidx671 = getelementptr inbounds i16** %120, i64 %indvars.iv1257, !dbg !860
  %121 = load i16** %arrayidx671, align 8, !dbg !860, !tbaa !673
  br label %for.body614, !dbg !889

for.body614:                                      ; preds = %for.body614.lr.ph, %cond.end663
  %indvars.iv1255 = phi i64 [ 0, %for.body614.lr.ph ], [ %indvars.iv.next1256, %cond.end663 ]
  %arrayidx621 = getelementptr inbounds i16* %119, i64 %indvars.iv1255, !dbg !860
  %122 = load i16* %arrayidx621, align 2, !dbg !860, !tbaa !718
  %conv622 = zext i16 %122 to i32, !dbg !860
  %mul623 = mul nsw i32 %conv622, %.wf_weight.0, !dbg !860
  %add624 = add nsw i32 %mul623, %100, !dbg !860
  %shr625 = ashr i32 %add624, %101, !dbg !860
  %cmp627 = icmp slt i32 %shr625, 0, !dbg !860
  br i1 %cmp627, label %cond.end663, label %cond.false630, !dbg !860

cond.false630:                                    ; preds = %for.body614
  %max_imgpel_value643 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155, !dbg !860
  %123 = load i32* %max_imgpel_value643, align 4, !dbg !860, !tbaa !676
  %cmp644 = icmp sgt i32 %shr625, %123, !dbg !860
  %.shr625 = select i1 %cmp644, i32 %123, i32 %shr625, !dbg !860
  %phitmp = trunc i32 %.shr625 to i16, !dbg !860
  br label %cond.end663, !dbg !860

cond.end663:                                      ; preds = %cond.false630, %for.body614
  %cond664 = phi i16 [ 0, %for.body614 ], [ %phitmp, %cond.false630 ]
  %arrayidx672 = getelementptr inbounds i16* %121, i64 %indvars.iv1255, !dbg !860
  store i16 %cond664, i16* %arrayidx672, align 2, !dbg !860, !tbaa !718
  %indvars.iv.next1256 = add i64 %indvars.iv1255, 1, !dbg !889
  %124 = trunc i64 %indvars.iv.next1256 to i32, !dbg !889
  %cmp612 = icmp slt i32 %124, %mul6111182, !dbg !889
  br i1 %cmp612, label %for.body614, label %for.inc676, !dbg !889

for.inc676:                                       ; preds = %cond.end663, %for.cond608.preheader
  %indvars.iv.next1258 = add i64 %indvars.iv1257, 1, !dbg !870
  %125 = trunc i64 %indvars.iv.next1258 to i32, !dbg !870
  %cmp605 = icmp slt i32 %125, %mul604, !dbg !870
  br i1 %cmp605, label %for.cond608.preheader, label %for.inc679, !dbg !870

for.inc679:                                       ; preds = %for.inc676, %for.cond601.loopexit
  %indvars.iv.next1260 = add i64 %indvars.iv1259, 1, !dbg !866
  %126 = trunc i64 %indvars.iv.next1260 to i32, !dbg !866
  %cmp459 = icmp slt i32 %126, %105, !dbg !866
  br i1 %cmp459, label %for.body461, label %for.inc682, !dbg !866

for.inc682:                                       ; preds = %for.inc679, %for.cond456.preheader
  %indvars.iv.next1263 = add i64 %indvars.iv1262, 1, !dbg !865
  %127 = trunc i64 %indvars.iv.next1263 to i32, !dbg !865
  %cmp453 = icmp slt i32 %127, %cond4, !dbg !865
  br i1 %cmp453, label %for.inc682.for.cond456.preheader_crit_edge, label %for.end684, !dbg !865

for.inc682.for.cond456.preheader_crit_edge:       ; preds = %for.inc682
  %arrayidx458.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next1263
  %.pre1296 = load i32* %arrayidx458.phi.trans.insert, align 4, !dbg !866, !tbaa !676
  br label %for.cond456.preheader, !dbg !865

for.end684:                                       ; preds = %for.inc682
  %cmp686 = icmp eq i32 %38, 1, !dbg !890
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !79), !dbg !891
  br i1 %cmp686, label %for.cond694.preheader, label %for.cond743.preheader, !dbg !890

for.cond694.preheader:                            ; preds = %for.end684, %for.inc734.for.cond694.preheader_crit_edge
  %128 = phi i32 [ %.pre1297, %for.inc734.for.cond694.preheader_crit_edge ], [ %17, %for.end684 ]
  %indvars.iv1245 = phi i64 [ %indvars.iv.next1246, %for.inc734.for.cond694.preheader_crit_edge ], [ 0, %for.end684 ]
  %arrayidx696 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv1245, !dbg !894
  %cmp6971162 = icmp sgt i32 %128, 0, !dbg !894
  br i1 %cmp6971162, label %for.cond700.preheader.lr.ph, label %for.inc734, !dbg !894

for.cond700.preheader.lr.ph:                      ; preds = %for.cond694.preheader
  %arrayidx713 = getelementptr inbounds i32*** %12, i64 %indvars.iv1245, !dbg !897
  %129 = load i32*** %arrayidx713, align 8, !dbg !897, !tbaa !673
  %arrayidx725 = getelementptr inbounds i32*** %13, i64 %indvars.iv1245, !dbg !901
  %130 = load i32*** %arrayidx725, align 8, !dbg !901, !tbaa !673
  br label %for.cond700.preheader, !dbg !894

for.cond789.preheader:                            ; preds = %for.inc785, %for.inc734
  %131 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !902, !tbaa !676
  %cmp7901159 = icmp sgt i32 %131, 0, !dbg !902
  br i1 %cmp7901159, label %for.cond793.preheader.lr.ph, label %if.end840, !dbg !902

for.cond793.preheader.lr.ph:                      ; preds = %for.cond789.preheader
  %132 = load i32***** @wbp_weight, align 8, !dbg !904, !tbaa !673
  %arrayidx821 = getelementptr inbounds i32*** %12, i64 1, !dbg !910
  %arrayidx827 = getelementptr inbounds i32**** %132, i64 1, !dbg !910
  %.pre1291 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !911, !tbaa !676
  br label %for.cond793.preheader, !dbg !902

for.cond700.preheader:                            ; preds = %for.cond700.preheader.lr.ph, %for.inc731
  %indvars.iv1243 = phi i64 [ 0, %for.cond700.preheader.lr.ph ], [ %indvars.iv.next1244, %for.inc731 ]
  %arrayidx714 = getelementptr inbounds i32** %129, i64 %indvars.iv1243, !dbg !897
  %133 = load i32** %arrayidx714, align 8, !dbg !897, !tbaa !673
  %arrayidx726 = getelementptr inbounds i32** %130, i64 %indvars.iv1243, !dbg !901
  %134 = load i32** %arrayidx726, align 8, !dbg !901, !tbaa !673
  br label %for.body703, !dbg !912

for.body703:                                      ; preds = %for.body703, %for.cond700.preheader
  %indvars.iv1239 = phi i64 [ 0, %for.cond700.preheader ], [ %indvars.iv.next1240, %for.body703 ]
  %arrayidx709 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1245, i64 %indvars.iv1243, i64 %indvars.iv1239, !dbg !897
  %135 = load i32* %arrayidx709, align 4, !dbg !897, !tbaa !676
  %arrayidx715 = getelementptr inbounds i32* %133, i64 %indvars.iv1239, !dbg !897
  store i32 %135, i32* %arrayidx715, align 4, !dbg !897, !tbaa !676
  %arrayidx721 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1245, i64 %indvars.iv1243, i64 %indvars.iv1239, !dbg !901
  %136 = load i32* %arrayidx721, align 4, !dbg !901, !tbaa !676
  %arrayidx727 = getelementptr inbounds i32* %134, i64 %indvars.iv1239, !dbg !901
  store i32 %136, i32* %arrayidx727, align 4, !dbg !901, !tbaa !676
  %indvars.iv.next1240 = add i64 %indvars.iv1239, 1, !dbg !912
  %lftr.wideiv1241 = trunc i64 %indvars.iv.next1240 to i32, !dbg !912
  %exitcond1242 = icmp eq i32 %lftr.wideiv1241, 3, !dbg !912
  br i1 %exitcond1242, label %for.inc731, label %for.body703, !dbg !912

for.inc731:                                       ; preds = %for.body703
  %indvars.iv.next1244 = add i64 %indvars.iv1243, 1, !dbg !894
  %137 = load i32* %arrayidx696, align 4, !dbg !894, !tbaa !676
  %138 = trunc i64 %indvars.iv.next1244 to i32, !dbg !894
  %cmp697 = icmp slt i32 %138, %137, !dbg !894
  br i1 %cmp697, label %for.cond700.preheader, label %for.inc734, !dbg !894

for.inc734:                                       ; preds = %for.inc731, %for.cond694.preheader
  %indvars.iv.next1246 = add i64 %indvars.iv1245, 1, !dbg !891
  %139 = trunc i64 %indvars.iv.next1246 to i32, !dbg !891
  %cmp691 = icmp slt i32 %139, %cond4, !dbg !891
  br i1 %cmp691, label %for.inc734.for.cond694.preheader_crit_edge, label %for.cond789.preheader, !dbg !891

for.inc734.for.cond694.preheader_crit_edge:       ; preds = %for.inc734
  %arrayidx696.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next1246
  %.pre1297 = load i32* %arrayidx696.phi.trans.insert, align 4, !dbg !894, !tbaa !676
  br label %for.cond694.preheader, !dbg !891

for.cond743.preheader:                            ; preds = %for.end684, %for.inc785.for.cond743.preheader_crit_edge
  %140 = phi i32 [ %.pre1298, %for.inc785.for.cond743.preheader_crit_edge ], [ %17, %for.end684 ]
  %indvars.iv1249 = phi i64 [ %indvars.iv.next1250, %for.inc785.for.cond743.preheader_crit_edge ], [ 0, %for.end684 ]
  %arrayidx745 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv1249, !dbg !913
  %cmp7461165 = icmp sgt i32 %140, 0, !dbg !913
  br i1 %cmp7461165, label %for.body748.lr.ph, label %for.inc785, !dbg !913

for.body748.lr.ph:                                ; preds = %for.cond743.preheader
  %arrayidx752 = getelementptr inbounds i32*** %12, i64 %indvars.iv1249, !dbg !918
  %141 = load i32*** %arrayidx752, align 8, !dbg !918, !tbaa !673
  %arrayidx769 = getelementptr inbounds i32*** %13, i64 %indvars.iv1249, !dbg !920
  %142 = load i32*** %arrayidx769, align 8, !dbg !920, !tbaa !673
  br label %for.body748, !dbg !913

for.body748:                                      ; preds = %for.body748, %for.body748.lr.ph
  %indvars.iv1247 = phi i64 [ 0, %for.body748.lr.ph ], [ %indvars.iv.next1248, %for.body748 ]
  %143 = load i32* @luma_log_weight_denom, align 4, !dbg !918, !tbaa !676
  %shl749 = shl i32 1, %143, !dbg !918
  %arrayidx753 = getelementptr inbounds i32** %141, i64 %indvars.iv1247, !dbg !918
  %144 = load i32** %arrayidx753, align 8, !dbg !918, !tbaa !673
  store i32 %shl749, i32* %144, align 4, !dbg !918, !tbaa !676
  %145 = load i32* @chroma_log_weight_denom, align 4, !dbg !921, !tbaa !676
  %shl755 = shl i32 1, %145, !dbg !921
  %arrayidx760 = getelementptr inbounds i32* %144, i64 1, !dbg !921
  store i32 %shl755, i32* %arrayidx760, align 4, !dbg !921, !tbaa !676
  %146 = load i32* @chroma_log_weight_denom, align 4, !dbg !922, !tbaa !676
  %shl761 = shl i32 1, %146, !dbg !922
  %arrayidx766 = getelementptr inbounds i32* %144, i64 2, !dbg !922
  store i32 %shl761, i32* %arrayidx766, align 4, !dbg !922, !tbaa !676
  %arrayidx770 = getelementptr inbounds i32** %142, i64 %indvars.iv1247, !dbg !920
  %147 = load i32** %arrayidx770, align 8, !dbg !920, !tbaa !673
  store i32 0, i32* %147, align 4, !dbg !920, !tbaa !676
  %arrayidx776 = getelementptr inbounds i32* %147, i64 1, !dbg !923
  store i32 0, i32* %arrayidx776, align 4, !dbg !923, !tbaa !676
  %arrayidx781 = getelementptr inbounds i32* %147, i64 2, !dbg !924
  store i32 0, i32* %arrayidx781, align 4, !dbg !924, !tbaa !676
  %indvars.iv.next1248 = add i64 %indvars.iv1247, 1, !dbg !913
  %148 = load i32* %arrayidx745, align 4, !dbg !913, !tbaa !676
  %149 = trunc i64 %indvars.iv.next1248 to i32, !dbg !913
  %cmp746 = icmp slt i32 %149, %148, !dbg !913
  br i1 %cmp746, label %for.body748, label %for.inc785, !dbg !913

for.inc785:                                       ; preds = %for.body748, %for.cond743.preheader
  %indvars.iv.next1250 = add i64 %indvars.iv1249, 1, !dbg !925
  %150 = trunc i64 %indvars.iv.next1250 to i32, !dbg !925
  %cmp740 = icmp slt i32 %150, %cond4, !dbg !925
  br i1 %cmp740, label %for.inc785.for.cond743.preheader_crit_edge, label %for.cond789.preheader, !dbg !925

for.inc785.for.cond743.preheader_crit_edge:       ; preds = %for.inc785
  %arrayidx745.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next1250
  %.pre1298 = load i32* %arrayidx745.phi.trans.insert, align 4, !dbg !913, !tbaa !676
  br label %for.cond743.preheader, !dbg !925

for.cond793.preheader:                            ; preds = %for.cond793.preheader.lr.ph, %for.inc837
  %151 = phi i32 [ %131, %for.cond793.preheader.lr.ph ], [ %167, %for.inc837 ]
  %152 = phi i32 [ %.pre1291, %for.cond793.preheader.lr.ph ], [ %168, %for.inc837 ], !dbg !911
  %indvars.iv1237 = phi i64 [ 0, %for.cond793.preheader.lr.ph ], [ %indvars.iv.next1238, %for.inc837 ]
  %cmp7941156 = icmp sgt i32 %152, 0, !dbg !911
  br i1 %cmp7941156, label %for.cond797.preheader.lr.ph, label %for.inc837, !dbg !911

for.cond797.preheader.lr.ph:                      ; preds = %for.cond793.preheader
  %153 = load i32*** %12, align 8, !dbg !904, !tbaa !673
  %arrayidx810 = getelementptr inbounds i32** %153, i64 %indvars.iv1237, !dbg !904
  %154 = load i32** %arrayidx810, align 8, !dbg !904, !tbaa !673
  %155 = load i32**** %132, align 8, !dbg !904, !tbaa !673
  %arrayidx816 = getelementptr inbounds i32*** %155, i64 %indvars.iv1237, !dbg !904
  %156 = load i32*** %arrayidx816, align 8, !dbg !904, !tbaa !673
  %157 = load i32*** %arrayidx821, align 8, !dbg !910, !tbaa !673
  %158 = load i32**** %arrayidx827, align 8, !dbg !910, !tbaa !673
  %arrayidx828 = getelementptr inbounds i32*** %158, i64 %indvars.iv1237, !dbg !910
  %159 = load i32*** %arrayidx828, align 8, !dbg !910, !tbaa !673
  br label %for.cond797.preheader, !dbg !911

for.cond797.preheader:                            ; preds = %for.cond797.preheader.lr.ph, %for.inc834
  %indvars.iv1235 = phi i64 [ 0, %for.cond797.preheader.lr.ph ], [ %indvars.iv.next1236, %for.inc834 ]
  %arrayidx817 = getelementptr inbounds i32** %156, i64 %indvars.iv1235, !dbg !904
  %160 = load i32** %arrayidx817, align 8, !dbg !904, !tbaa !673
  %arrayidx822 = getelementptr inbounds i32** %157, i64 %indvars.iv1235, !dbg !910
  %161 = load i32** %arrayidx822, align 8, !dbg !910, !tbaa !673
  %arrayidx829 = getelementptr inbounds i32** %159, i64 %indvars.iv1235, !dbg !910
  %162 = load i32** %arrayidx829, align 8, !dbg !910, !tbaa !673
  br label %for.body800, !dbg !926

for.body800:                                      ; preds = %for.body800, %for.cond797.preheader
  %indvars.iv1231 = phi i64 [ 0, %for.cond797.preheader ], [ %indvars.iv.next1232, %for.body800 ]
  %arrayidx811 = getelementptr inbounds i32* %154, i64 %indvars.iv1231, !dbg !904
  %163 = load i32* %arrayidx811, align 4, !dbg !904, !tbaa !676
  %arrayidx818 = getelementptr inbounds i32* %160, i64 %indvars.iv1231, !dbg !904
  store i32 %163, i32* %arrayidx818, align 4, !dbg !904, !tbaa !676
  %arrayidx823 = getelementptr inbounds i32* %161, i64 %indvars.iv1231, !dbg !910
  %164 = load i32* %arrayidx823, align 4, !dbg !910, !tbaa !676
  %arrayidx830 = getelementptr inbounds i32* %162, i64 %indvars.iv1231, !dbg !910
  store i32 %164, i32* %arrayidx830, align 4, !dbg !910, !tbaa !676
  %indvars.iv.next1232 = add i64 %indvars.iv1231, 1, !dbg !926
  %lftr.wideiv1233 = trunc i64 %indvars.iv.next1232 to i32, !dbg !926
  %exitcond1234 = icmp eq i32 %lftr.wideiv1233, 3, !dbg !926
  br i1 %exitcond1234, label %for.inc834, label %for.body800, !dbg !926

for.inc834:                                       ; preds = %for.body800
  %indvars.iv.next1236 = add i64 %indvars.iv1235, 1, !dbg !911
  %165 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !911, !tbaa !676
  %166 = trunc i64 %indvars.iv.next1236 to i32, !dbg !911
  %cmp794 = icmp slt i32 %166, %165, !dbg !911
  br i1 %cmp794, label %for.cond797.preheader, label %for.cond793.for.inc837_crit_edge, !dbg !911

for.cond793.for.inc837_crit_edge:                 ; preds = %for.inc834
  %.pre1292 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !902, !tbaa !676
  br label %for.inc837, !dbg !911

for.inc837:                                       ; preds = %for.cond793.for.inc837_crit_edge, %for.cond793.preheader
  %167 = phi i32 [ %.pre1292, %for.cond793.for.inc837_crit_edge ], [ %151, %for.cond793.preheader ], !dbg !902
  %168 = phi i32 [ %165, %for.cond793.for.inc837_crit_edge ], [ %152, %for.cond793.preheader ]
  %indvars.iv.next1238 = add i64 %indvars.iv1237, 1, !dbg !902
  %169 = trunc i64 %indvars.iv.next1238 to i32, !dbg !902
  %cmp790 = icmp slt i32 %169, %167, !dbg !902
  br i1 %cmp790, label %for.cond793.preheader, label %if.end840, !dbg !902

if.end840:                                        ; preds = %for.cond789.preheader, %for.inc837, %for.cond350.preheader, %for.inc428
  call void @llvm.lifetime.end(i64 16200, i8* %9) #2, !dbg !927
  call void @llvm.lifetime.end(i64 1080, i8* %8) #2, !dbg !927
  call void @llvm.lifetime.end(i64 1080, i8* %7) #2, !dbg !927
  ret void, !dbg !927
}

; Function Attrs: nounwind optsize uwtable
define i32 @test_wp_P_slice(i32 %select_offset) #0 {
entry:
  %weight = alloca [2 x [15 x [3 x i32]]], align 16
  %offset = alloca [2 x [15 x [3 x i32]]], align 16
  call void @llvm.dbg.value(metadata !{i32 %select_offset}, i64 0, metadata !92), !dbg !928
  call void @llvm.dbg.value(metadata !669, i64 0, metadata !96), !dbg !929
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !930, !tbaa !673
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90, !dbg !930
  %1 = load i32* %MbaffFrameFlag, align 4, !dbg !930, !tbaa !676
  %tobool = icmp eq i32 %1, 0, !dbg !930
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !930

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !930
  %2 = load i32* %current_mb_nr, align 4, !dbg !930, !tbaa !676
  %idxprom = sext i32 %2 to i64, !dbg !930
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !930
  %3 = load %struct.macroblock** %mb_data, align 8, !dbg !930, !tbaa !673
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22, !dbg !930
  %4 = load i32* %mb_field, align 4, !dbg !930, !tbaa !676
  %tobool1 = icmp eq i32 %4, 0, !dbg !930
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !930

cond.true:                                        ; preds = %land.lhs.true
  %rem351 = shl i32 %2, 1, !dbg !930
  %5 = and i32 %rem351, 2, !dbg !930
  %6 = or i32 %5, 4, !dbg !930
  br label %cond.end, !dbg !930

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 2, %land.lhs.true ], [ 2, %entry ]
  %7 = bitcast [2 x [15 x [3 x i32]]]* %weight to i8*, !dbg !931
  call void @llvm.lifetime.start(i64 360, i8* %7) #2, !dbg !931
  call void @llvm.dbg.declare(metadata !{[2 x [15 x [3 x i32]]]* %weight}, metadata !105), !dbg !931
  %8 = bitcast [2 x [15 x [3 x i32]]]* %offset to i8*, !dbg !932
  call void @llvm.lifetime.start(i64 360, i8* %8) #2, !dbg !932
  call void @llvm.dbg.declare(metadata !{[2 x [15 x [3 x i32]]]* %offset}, metadata !106), !dbg !932
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !108), !dbg !933
  store i32 5, i32* @luma_log_weight_denom, align 4, !dbg !934, !tbaa !676
  store i32 5, i32* @chroma_log_weight_denom, align 4, !dbg !935, !tbaa !676
  store i32 16, i32* @wp_luma_round, align 4, !dbg !936, !tbaa !676
  store i32 16, i32* @wp_chroma_round, align 4, !dbg !937, !tbaa !676
  call void @llvm.dbg.value(metadata !938, i64 0, metadata !102), !dbg !939
  call void @llvm.dbg.value(metadata !938, i64 0, metadata !103), !dbg !940
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !93), !dbg !941
  %9 = load i32**** @wp_weight, align 8, !dbg !943, !tbaa !673
  %10 = load i32**** @wp_offset, align 8, !dbg !949, !tbaa !673
  br label %for.cond9.preheader, !dbg !941

for.cond9.preheader:                              ; preds = %cond.end, %for.inc44
  %indvars.iv402 = phi i64 [ 0, %cond.end ], [ %indvars.iv.next403, %for.inc44 ]
  %arrayidx11 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv402, !dbg !950
  %11 = load i32* %arrayidx11, align 4, !dbg !950, !tbaa !676
  %cmp12378 = icmp sgt i32 %11, 0, !dbg !950
  br i1 %cmp12378, label %for.cond14.preheader.lr.ph, label %for.inc44, !dbg !950

for.cond14.preheader.lr.ph:                       ; preds = %for.cond9.preheader
  %arrayidx26 = getelementptr inbounds i32*** %9, i64 %indvars.iv402, !dbg !943
  %12 = load i32*** %arrayidx26, align 8, !dbg !943, !tbaa !673
  %arrayidx32 = getelementptr inbounds i32*** %10, i64 %indvars.iv402, !dbg !949
  %13 = load i32*** %arrayidx32, align 8, !dbg !949, !tbaa !673
  br label %for.cond14.preheader, !dbg !950

for.cond47.preheader:                             ; preds = %for.inc44
  %height372 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !951
  %14 = load i32* %height372, align 4, !dbg !951, !tbaa !676
  %cmp48373 = icmp sgt i32 %14, 0, !dbg !951
  %width367 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !953
  br i1 %cmp48373, label %for.cond50.preheader.lr.ph, label %for.cond64.preheader, !dbg !951

for.cond50.preheader.lr.ph:                       ; preds = %for.cond47.preheader
  %15 = load i32* %width367, align 4, !dbg !953, !tbaa !676
  %cmp51368 = icmp sgt i32 %15, 0, !dbg !953
  %16 = load i16*** @imgY_org, align 8, !dbg !956, !tbaa !673
  br label %for.cond50.preheader, !dbg !951

for.cond14.preheader:                             ; preds = %for.cond14.preheader.lr.ph, %for.inc41
  %indvars.iv400 = phi i64 [ 0, %for.cond14.preheader.lr.ph ], [ %indvars.iv.next401, %for.inc41 ]
  %scevgep = getelementptr [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv402, i64 %indvars.iv400, i64 0
  %scevgep399 = bitcast i32* %scevgep to i8*
  %arrayidx27 = getelementptr inbounds i32** %12, i64 %indvars.iv400, !dbg !943
  %17 = load i32** %arrayidx27, align 8, !dbg !943, !tbaa !673
  %arrayidx33 = getelementptr inbounds i32** %13, i64 %indvars.iv400, !dbg !949
  %18 = load i32** %arrayidx33, align 8, !dbg !949, !tbaa !673
  call void @llvm.memset.p0i8.i64(i8* %scevgep399, i8 0, i64 12, i32 4, i1 false), !dbg !958
  br label %for.body16, !dbg !959

for.body16:                                       ; preds = %for.body16, %for.cond14.preheader
  %indvars.iv395 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next396, %for.body16 ]
  %arrayidx22 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv402, i64 %indvars.iv400, i64 %indvars.iv395, !dbg !960
  store i32 32, i32* %arrayidx22, align 4, !dbg !960, !tbaa !676
  %arrayidx28 = getelementptr inbounds i32* %17, i64 %indvars.iv395, !dbg !943
  store i32 32, i32* %arrayidx28, align 4, !dbg !943, !tbaa !676
  %arrayidx34 = getelementptr inbounds i32* %18, i64 %indvars.iv395, !dbg !949
  store i32 0, i32* %arrayidx34, align 4, !dbg !949, !tbaa !676
  %indvars.iv.next396 = add i64 %indvars.iv395, 1, !dbg !959
  %lftr.wideiv = trunc i64 %indvars.iv.next396 to i32, !dbg !959
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !959
  br i1 %exitcond, label %for.inc41, label %for.body16, !dbg !959

for.inc41:                                        ; preds = %for.body16
  %indvars.iv.next401 = add i64 %indvars.iv400, 1, !dbg !950
  %19 = load i32* %arrayidx11, align 4, !dbg !950, !tbaa !676
  %20 = trunc i64 %indvars.iv.next401 to i32, !dbg !950
  %cmp12 = icmp slt i32 %20, %19, !dbg !950
  br i1 %cmp12, label %for.cond14.preheader, label %for.inc44, !dbg !950

for.inc44:                                        ; preds = %for.inc41, %for.cond9.preheader
  %indvars.iv.next403 = add i64 %indvars.iv402, 1, !dbg !941
  %21 = trunc i64 %indvars.iv.next403 to i32, !dbg !941
  %cmp = icmp slt i32 %21, %cond4, !dbg !941
  br i1 %cmp, label %for.cond9.preheader, label %for.cond47.preheader, !dbg !941

for.cond50.preheader:                             ; preds = %for.cond50.preheader.lr.ph, %for.inc61
  %indvars.iv393 = phi i64 [ 0, %for.cond50.preheader.lr.ph ], [ %indvars.iv.next394, %for.inc61 ]
  %dc_org.0374 = phi double [ 0.000000e+00, %for.cond50.preheader.lr.ph ], [ %dc_org.1.lcssa, %for.inc61 ]
  br i1 %cmp51368, label %for.body52.lr.ph, label %for.inc61, !dbg !953

for.body52.lr.ph:                                 ; preds = %for.cond50.preheader
  %arrayidx55 = getelementptr inbounds i16** %16, i64 %indvars.iv393, !dbg !956
  %22 = load i16** %arrayidx55, align 8, !dbg !956, !tbaa !673
  br label %for.body52, !dbg !953

for.cond64.preheader:                             ; preds = %for.cond47.preheader, %for.inc61
  %dc_org.0.lcssa = phi double [ %dc_org.1.lcssa, %for.inc61 ], [ 0.000000e+00, %for.cond47.preheader ]
  %cmp100 = icmp eq i32 %select_offset, 0, !dbg !961
  %mul108 = fmul double %dc_org.0.lcssa, 3.200000e+01, !dbg !966
  br label %for.cond69.preheader, !dbg !968

for.body52:                                       ; preds = %for.body52.lr.ph, %for.body52
  %indvars.iv391 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next392, %for.body52 ]
  %dc_org.1369 = phi double [ %dc_org.0374, %for.body52.lr.ph ], [ %add57, %for.body52 ]
  %arrayidx56 = getelementptr inbounds i16* %22, i64 %indvars.iv391, !dbg !956
  %23 = load i16* %arrayidx56, align 2, !dbg !956, !tbaa !718
  %conv = uitofp i16 %23 to double, !dbg !956
  %add57 = fadd double %dc_org.1369, %conv, !dbg !956
  call void @llvm.dbg.value(metadata !{double %add57}, i64 0, metadata !96), !dbg !956
  %indvars.iv.next392 = add i64 %indvars.iv391, 1, !dbg !953
  %24 = trunc i64 %indvars.iv.next392 to i32, !dbg !953
  %cmp51 = icmp slt i32 %24, %15, !dbg !953
  br i1 %cmp51, label %for.body52, label %for.inc61, !dbg !953

for.inc61:                                        ; preds = %for.body52, %for.cond50.preheader
  %dc_org.1.lcssa = phi double [ %dc_org.0374, %for.cond50.preheader ], [ %add57, %for.body52 ]
  %indvars.iv.next394 = add i64 %indvars.iv393, 1, !dbg !951
  %25 = trunc i64 %indvars.iv.next394 to i32, !dbg !951
  %cmp48 = icmp slt i32 %25, %14, !dbg !951
  br i1 %cmp48, label %for.cond50.preheader, label %for.cond64.preheader, !dbg !951

for.cond69.preheader:                             ; preds = %for.cond64.preheader, %for.inc211
  %indvars.iv389 = phi i64 [ 0, %for.cond64.preheader ], [ %indvars.iv.next390, %for.inc211 ]
  %arrayidx71 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv389, !dbg !969
  %26 = load i32* %arrayidx71, align 4, !dbg !969, !tbaa !676
  %cmp72364 = icmp sgt i32 %26, 0, !dbg !969
  br i1 %cmp72364, label %for.body74.lr.ph, label %for.inc211, !dbg !969

for.body74.lr.ph:                                 ; preds = %for.cond69.preheader
  %arrayidx79 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv389, !dbg !970
  %27 = load %struct.storable_picture*** %arrayidx79, align 8, !dbg !970, !tbaa !673
  %28 = load i32* %width367, align 4, !dbg !971, !tbaa !676
  %mul361 = mul nsw i32 %28, %14, !dbg !971
  %cmp88362 = icmp sgt i32 %mul361, 0, !dbg !971
  br label %for.body74, !dbg !969

for.body74:                                       ; preds = %for.body74.lr.ph, %if.end197
  %indvars.iv387 = phi i64 [ 0, %for.body74.lr.ph ], [ %indvars.iv.next388, %if.end197 ]
  %arrayidx80 = getelementptr inbounds %struct.storable_picture** %27, i64 %indvars.iv387, !dbg !970
  %29 = load %struct.storable_picture** %arrayidx80, align 8, !dbg !970, !tbaa !673
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %29, i64 0, i32 26, !dbg !970
  %30 = load i16** %imgY_11, align 8, !dbg !970, !tbaa !673
  call void @llvm.dbg.value(metadata !{i16* %30}, i64 0, metadata !100), !dbg !970
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !93), !dbg !971
  br i1 %cmp88362, label %for.body90, label %for.end99, !dbg !971

for.body90:                                       ; preds = %for.body74, %for.body90
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %for.body90 ], [ 0, %for.body74 ]
  %31 = phi double [ %add96, %for.body90 ], [ 0.000000e+00, %for.body74 ], !dbg !973
  %arrayidx92 = getelementptr inbounds i16* %30, i64 %indvars.iv385, !dbg !973
  %32 = load i16* %arrayidx92, align 2, !dbg !973, !tbaa !718
  %conv93 = uitofp i16 %32 to double, !dbg !973
  %add96 = fadd double %31, %conv93, !dbg !973
  %indvars.iv.next386 = add i64 %indvars.iv385, 1, !dbg !971
  %33 = trunc i64 %indvars.iv.next386 to i32, !dbg !971
  %cmp88 = icmp slt i32 %33, %mul361, !dbg !971
  br i1 %cmp88, label %for.body90, label %for.end99, !dbg !971

for.end99:                                        ; preds = %for.body90, %for.body74
  %34 = phi double [ 0.000000e+00, %for.body74 ], [ %add96, %for.body90 ]
  br i1 %cmp100, label %if.then, label %if.else144, !dbg !961

if.then:                                          ; preds = %for.end99
  %cmp104 = fcmp une double %34, 0.000000e+00, !dbg !975
  br i1 %cmp104, label %if.end, label %if.end.thread, !dbg !975

if.end.thread:                                    ; preds = %if.then
  %arrayidx122 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 0, !dbg !976
  store i32 32, i32* %arrayidx122, align 4, !dbg !976, !tbaa !676
  br label %if.end197, !dbg !977

if.end:                                           ; preds = %if.then
  %div = fdiv double %mul108, %34, !dbg !966
  %add111 = fadd double %div, 5.000000e-01, !dbg !966
  %conv112 = fptosi double %add111 to i32, !dbg !966
  %arrayidx117 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 0, !dbg !966
  store i32 %conv112, i32* %arrayidx117, align 4, !dbg !966, !tbaa !676
  %phitmp = add i32 %conv112, 64, !dbg !966
  %phitmp404 = icmp ugt i32 %phitmp, 191, !dbg !966
  br i1 %phitmp404, label %if.then137, label %if.end197, !dbg !977

if.then137:                                       ; preds = %if.end
  %arrayidx127 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 0, !dbg !977
  store i32 32, i32* %arrayidx127, align 4, !dbg !978, !tbaa !676
  br label %if.end197, !dbg !978

if.else144:                                       ; preds = %for.end99
  %sub147 = fsub double %dc_org.0.lcssa, %34, !dbg !979
  %conv151 = sitofp i32 %mul361 to double, !dbg !979
  %div152 = fdiv double %sub147, %conv151, !dbg !979
  %add153 = fadd double %div152, 5.000000e-01, !dbg !979
  %conv154 = fptosi double %add153 to i32, !dbg !979
  %arrayidx159 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 0, !dbg !979
  store i32 %conv154, i32* %arrayidx159, align 4, !dbg !979, !tbaa !676
  %cmp165 = icmp slt i32 %conv154, -128, !dbg !981
  br i1 %cmp165, label %cond.end185, label %cond.false168, !dbg !981

cond.false168:                                    ; preds = %if.else144
  %cmp174 = icmp sgt i32 %conv154, 127, !dbg !981
  %.conv154 = select i1 %cmp174, i32 127, i32 %conv154, !dbg !981
  br label %cond.end185, !dbg !981

cond.end185:                                      ; preds = %cond.false168, %if.else144
  %cond186 = phi i32 [ -128, %if.else144 ], [ %.conv154, %cond.false168 ], !dbg !981
  store i32 %cond186, i32* %arrayidx159, align 4, !dbg !981, !tbaa !676
  %arrayidx196 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 0, !dbg !982
  store i32 32, i32* %arrayidx196, align 4, !dbg !982, !tbaa !676
  br label %if.end197

if.end197:                                        ; preds = %if.end.thread, %if.end, %if.then137, %cond.end185
  %arrayidx202 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 1, !dbg !983
  store i32 32, i32* %arrayidx202, align 4, !dbg !983, !tbaa !676
  %arrayidx207 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 2, !dbg !984
  store i32 32, i32* %arrayidx207, align 4, !dbg !984, !tbaa !676
  %indvars.iv.next388 = add i64 %indvars.iv387, 1, !dbg !969
  %35 = trunc i64 %indvars.iv.next388 to i32, !dbg !969
  %cmp72 = icmp slt i32 %35, %26, !dbg !969
  br i1 %cmp72, label %for.body74, label %for.inc211, !dbg !969

for.inc211:                                       ; preds = %if.end197, %for.cond69.preheader
  %indvars.iv.next390 = add i64 %indvars.iv389, 1, !dbg !968
  %36 = trunc i64 %indvars.iv.next390 to i32, !dbg !968
  %cmp66 = icmp slt i32 %36, %cond4, !dbg !968
  br i1 %cmp66, label %for.cond69.preheader, label %for.cond219.preheader, !dbg !968

for.cond219.preheader:                            ; preds = %for.inc211, %for.inc262
  %indvars.iv383 = phi i64 [ %indvars.iv.next384, %for.inc262 ], [ 0, %for.inc211 ]
  %arrayidx221 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv383, !dbg !985
  %37 = load i32* %arrayidx221, align 4, !dbg !985, !tbaa !676
  %cmp222355 = icmp sgt i32 %37, 0, !dbg !985
  br i1 %cmp222355, label %for.cond225.preheader, label %for.inc262, !dbg !985

for.cond225.preheader:                            ; preds = %for.cond219.preheader, %for.inc255
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.inc255 ], [ 0, %for.cond219.preheader ]
  br label %for.body228, !dbg !989

for.cond225:                                      ; preds = %lor.lhs.false237
  %38 = trunc i64 %indvars.iv.next to i32, !dbg !989
  %cmp226 = icmp slt i32 %38, 3, !dbg !989
  br i1 %cmp226, label %for.body228, label %for.inc255, !dbg !989

for.body228:                                      ; preds = %for.cond225.preheader, %for.cond225
  %indvars.iv = phi i64 [ 0, %for.cond225.preheader ], [ %indvars.iv.next, %for.cond225 ]
  %arrayidx234 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv383, i64 %indvars.iv381, i64 %indvars.iv, !dbg !992
  %39 = load i32* %arrayidx234, align 4, !dbg !992, !tbaa !676
  %cmp235 = icmp eq i32 %39, 32, !dbg !992
  br i1 %cmp235, label %lor.lhs.false237, label %for.end264, !dbg !992

lor.lhs.false237:                                 ; preds = %for.body228
  %arrayidx243 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv383, i64 %indvars.iv381, i64 %indvars.iv, !dbg !992
  %40 = load i32* %arrayidx243, align 4, !dbg !992, !tbaa !676
  %cmp244 = icmp eq i32 %40, 0, !dbg !992
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !989
  br i1 %cmp244, label %for.cond225, label %for.end264, !dbg !992

for.inc255:                                       ; preds = %for.cond225
  %indvars.iv.next382 = add i64 %indvars.iv381, 1, !dbg !985
  %41 = trunc i64 %indvars.iv.next382 to i32, !dbg !985
  %cmp222 = icmp slt i32 %41, %37, !dbg !985
  br i1 %cmp222, label %for.cond225.preheader, label %for.inc262, !dbg !985

for.inc262:                                       ; preds = %for.inc255, %for.cond219.preheader
  %indvars.iv.next384 = add i64 %indvars.iv383, 1, !dbg !994
  %42 = trunc i64 %indvars.iv.next384 to i32, !dbg !994
  %cmp216 = icmp slt i32 %42, %cond4, !dbg !994
  br i1 %cmp216, label %for.cond219.preheader, label %for.end264, !dbg !994

for.end264:                                       ; preds = %for.inc262, %for.body228, %lor.lhs.false237
  %perform_wp.4 = phi i32 [ 1, %lor.lhs.false237 ], [ 1, %for.body228 ], [ 0, %for.inc262 ]
  call void @llvm.lifetime.end(i64 360, i8* %8) #2, !dbg !995
  call void @llvm.lifetime.end(i64 360, i8* %7) #2, !dbg !995
  ret i32 %perform_wp.4, !dbg !995
}

; Function Attrs: nounwind optsize uwtable
define i32 @test_wp_B_slice(i32 %select_method) #0 {
entry:
  %weight = alloca [6 x [15 x [3 x i32]]], align 16
  %offset = alloca [6 x [15 x [3 x i32]]], align 16
  %im_weight = alloca [6 x [15 x [15 x [3 x i32]]]], align 16
  call void @llvm.dbg.value(metadata !{i32 %select_method}, i64 0, metadata !111), !dbg !996
  call void @llvm.dbg.value(metadata !669, i64 0, metadata !117), !dbg !997
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !998, !tbaa !673
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90, !dbg !998
  %1 = load i32* %MbaffFrameFlag, align 4, !dbg !998, !tbaa !676
  %tobool = icmp eq i32 %1, 0, !dbg !998
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !998

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !998
  %2 = load i32* %current_mb_nr, align 4, !dbg !998, !tbaa !676
  %idxprom = sext i32 %2 to i64, !dbg !998
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !998
  %3 = load %struct.macroblock** %mb_data, align 8, !dbg !998, !tbaa !673
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22, !dbg !998
  %4 = load i32* %mb_field, align 4, !dbg !998, !tbaa !676
  %tobool1 = icmp eq i32 %4, 0, !dbg !998
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !998

cond.true:                                        ; preds = %land.lhs.true
  %rem883 = shl i32 %2, 1, !dbg !998
  %5 = and i32 %rem883, 2, !dbg !998
  %6 = or i32 %5, 4, !dbg !998
  br label %cond.end, !dbg !998

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 2, %land.lhs.true ], [ 2, %entry ]
  %7 = bitcast [6 x [15 x [3 x i32]]]* %weight to i8*, !dbg !999
  call void @llvm.lifetime.start(i64 1080, i8* %7) #2, !dbg !999
  call void @llvm.dbg.declare(metadata !{[6 x [15 x [3 x i32]]]* %weight}, metadata !127), !dbg !999
  %8 = bitcast [6 x [15 x [3 x i32]]]* %offset to i8*, !dbg !1000
  call void @llvm.lifetime.start(i64 1080, i8* %8) #2, !dbg !1000
  call void @llvm.dbg.declare(metadata !{[6 x [15 x [3 x i32]]]* %offset}, metadata !128), !dbg !1000
  %9 = bitcast [6 x [15 x [15 x [3 x i32]]]]* %im_weight to i8*, !dbg !1001
  call void @llvm.lifetime.start(i64 16200, i8* %9) #2, !dbg !1001
  call void @llvm.dbg.declare(metadata !{[6 x [15 x [15 x [3 x i32]]]]* %im_weight}, metadata !129), !dbg !1001
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !134), !dbg !1002
  store i32 5, i32* @luma_log_weight_denom, align 4, !dbg !1003, !tbaa !676
  store i32 5, i32* @chroma_log_weight_denom, align 4, !dbg !1004, !tbaa !676
  store i32 16, i32* @wp_luma_round, align 4, !dbg !1005, !tbaa !676
  store i32 16, i32* @wp_chroma_round, align 4, !dbg !1006, !tbaa !676
  call void @llvm.dbg.value(metadata !938, i64 0, metadata !124), !dbg !1007
  call void @llvm.dbg.value(metadata !938, i64 0, metadata !125), !dbg !1008
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !112), !dbg !1009
  %10 = load i32**** @wp_weight, align 8, !dbg !1011, !tbaa !673
  %11 = load i32**** @wp_offset, align 8, !dbg !1017, !tbaa !673
  br label %for.cond9.preheader, !dbg !1009

for.cond9.preheader:                              ; preds = %cond.end, %for.inc44
  %indvars.iv1003 = phi i64 [ 0, %cond.end ], [ %indvars.iv.next1004, %for.inc44 ]
  %arrayidx11 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv1003, !dbg !1018
  %12 = load i32* %arrayidx11, align 4, !dbg !1018, !tbaa !676
  %cmp12938 = icmp sgt i32 %12, 0, !dbg !1018
  br i1 %cmp12938, label %for.cond14.preheader.lr.ph, label %for.inc44, !dbg !1018

for.cond14.preheader.lr.ph:                       ; preds = %for.cond9.preheader
  %arrayidx20 = getelementptr inbounds i32*** %10, i64 %indvars.iv1003, !dbg !1011
  %13 = load i32*** %arrayidx20, align 8, !dbg !1011, !tbaa !673
  %arrayidx26 = getelementptr inbounds i32*** %11, i64 %indvars.iv1003, !dbg !1017
  %14 = load i32*** %arrayidx26, align 8, !dbg !1017, !tbaa !673
  br label %for.cond14.preheader, !dbg !1018

for.cond47.preheader:                             ; preds = %for.inc44
  %15 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !1019, !tbaa !676
  %cmp48935 = icmp sgt i32 %15, 0, !dbg !1019
  br i1 %cmp48935, label %for.cond50.preheader.lr.ph, label %for.end229, !dbg !1019

for.cond50.preheader.lr.ph:                       ; preds = %for.cond47.preheader
  %16 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !1020, !tbaa !676
  %cmp51933 = icmp sgt i32 %16, 0, !dbg !1020
  %17 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !dbg !1021, !tbaa !673
  %18 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !1021, !tbaa !673
  %19 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1022, !tbaa !673
  %poc83 = getelementptr inbounds %struct.storable_picture* %19, i64 0, i32 1, !dbg !1022
  br label %for.cond50.preheader, !dbg !1019

for.cond14.preheader:                             ; preds = %for.cond14.preheader.lr.ph, %for.inc41
  %indvars.iv1001 = phi i64 [ 0, %for.cond14.preheader.lr.ph ], [ %indvars.iv.next1002, %for.inc41 ]
  %scevgep = getelementptr [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1003, i64 %indvars.iv1001, i64 0
  %scevgep1000 = bitcast i32* %scevgep to i8*
  %arrayidx21 = getelementptr inbounds i32** %13, i64 %indvars.iv1001, !dbg !1011
  %20 = load i32** %arrayidx21, align 8, !dbg !1011, !tbaa !673
  %arrayidx27 = getelementptr inbounds i32** %14, i64 %indvars.iv1001, !dbg !1017
  %21 = load i32** %arrayidx27, align 8, !dbg !1017, !tbaa !673
  call void @llvm.memset.p0i8.i64(i8* %scevgep1000, i8 0, i64 12, i32 4, i1 false), !dbg !1023
  br label %for.body16, !dbg !1024

for.body16:                                       ; preds = %for.body16, %for.cond14.preheader
  %indvars.iv994 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next995, %for.body16 ]
  %arrayidx22 = getelementptr inbounds i32* %20, i64 %indvars.iv994, !dbg !1011
  store i32 32, i32* %arrayidx22, align 4, !dbg !1011, !tbaa !676
  %arrayidx28 = getelementptr inbounds i32* %21, i64 %indvars.iv994, !dbg !1017
  store i32 0, i32* %arrayidx28, align 4, !dbg !1017, !tbaa !676
  %arrayidx40 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1003, i64 %indvars.iv1001, i64 %indvars.iv994, !dbg !1025
  store i32 32, i32* %arrayidx40, align 4, !dbg !1025, !tbaa !676
  %indvars.iv.next995 = add i64 %indvars.iv994, 1, !dbg !1024
  %lftr.wideiv996 = trunc i64 %indvars.iv.next995 to i32, !dbg !1024
  %exitcond997 = icmp eq i32 %lftr.wideiv996, 3, !dbg !1024
  br i1 %exitcond997, label %for.inc41, label %for.body16, !dbg !1024

for.inc41:                                        ; preds = %for.body16
  %indvars.iv.next1002 = add i64 %indvars.iv1001, 1, !dbg !1018
  %22 = load i32* %arrayidx11, align 4, !dbg !1018, !tbaa !676
  %23 = trunc i64 %indvars.iv.next1002 to i32, !dbg !1018
  %cmp12 = icmp slt i32 %23, %22, !dbg !1018
  br i1 %cmp12, label %for.cond14.preheader, label %for.inc44, !dbg !1018

for.inc44:                                        ; preds = %for.inc41, %for.cond9.preheader
  %indvars.iv.next1004 = add i64 %indvars.iv1003, 1, !dbg !1009
  %24 = trunc i64 %indvars.iv.next1004 to i32, !dbg !1009
  %cmp = icmp slt i32 %24, %cond4, !dbg !1009
  br i1 %cmp, label %for.cond9.preheader, label %for.cond47.preheader, !dbg !1009

for.cond50.preheader:                             ; preds = %for.cond50.preheader.lr.ph, %for.inc227
  %indvars.iv992 = phi i64 [ 0, %for.cond50.preheader.lr.ph ], [ %indvars.iv.next993, %for.inc227 ]
  br i1 %cmp51933, label %for.body52.lr.ph, label %for.inc227, !dbg !1020

for.body52.lr.ph:                                 ; preds = %for.cond50.preheader
  %arrayidx56 = getelementptr inbounds %struct.storable_picture** %18, i64 %indvars.iv992, !dbg !1021
  %25 = load %struct.storable_picture** %arrayidx56, align 8, !dbg !1021, !tbaa !673
  %poc57 = getelementptr inbounds %struct.storable_picture* %25, i64 0, i32 1, !dbg !1021
  %26 = load i32* %poc57, align 4, !dbg !1021, !tbaa !676
  %27 = load i32* %poc83, align 4, !dbg !1022, !tbaa !676
  %sub87 = sub nsw i32 %27, %26, !dbg !1022
  %cmp88 = icmp slt i32 %sub87, -128, !dbg !1022
  %cmp96 = icmp sgt i32 %sub87, 127, !dbg !1022
  %.sub87 = select i1 %cmp96, i32 127, i32 %sub87, !dbg !1022
  br label %for.body52, !dbg !1020

for.body52:                                       ; preds = %for.body52.lr.ph, %for.inc224
  %indvars.iv990 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next991, %for.inc224 ]
  %arrayidx54 = getelementptr inbounds %struct.storable_picture** %17, i64 %indvars.iv990, !dbg !1021
  %28 = load %struct.storable_picture** %arrayidx54, align 8, !dbg !1021, !tbaa !673
  %poc = getelementptr inbounds %struct.storable_picture* %28, i64 0, i32 1, !dbg !1021
  %29 = load i32* %poc, align 4, !dbg !1021, !tbaa !676
  %sub58 = sub nsw i32 %29, %26, !dbg !1021
  %cmp59 = icmp slt i32 %sub58, -128, !dbg !1021
  br i1 %cmp59, label %cond.end81, label %cond.false61, !dbg !1021

cond.false61:                                     ; preds = %for.body52
  %cmp69 = icmp sgt i32 %sub58, 127, !dbg !1021
  %.sub58 = select i1 %cmp69, i32 127, i32 %sub58, !dbg !1021
  br label %cond.end81, !dbg !1021

cond.end81:                                       ; preds = %cond.false61, %for.body52
  %cond82 = phi i32 [ -128, %for.body52 ], [ %.sub58, %cond.false61 ], !dbg !1021
  call void @llvm.dbg.value(metadata !{i32 %cond82}, i64 0, metadata !135), !dbg !1021
  %..sub87 = select i1 %cmp88, i32 -128, i32 %.sub87, !dbg !1022
  call void @llvm.dbg.value(metadata !{i32 %..sub87}, i64 0, metadata !140), !dbg !1022
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !119), !dbg !1026
  %cmp111 = icmp eq i32 %cond82, 0, !dbg !1028
  %div = sdiv i32 %cond82, 2, !dbg !1030
  %ispos = icmp sgt i32 %cond82, -2, !dbg !1030
  %neg = sub i32 0, %div, !dbg !1030
  %30 = select i1 %ispos, i32 %div, i32 %neg, !dbg !1030
  %add140 = add nsw i32 %30, 16384, !dbg !1030
  br label %for.body110, !dbg !1026

for.body110:                                      ; preds = %for.inc221, %cond.end81
  %indvars.iv986 = phi i64 [ 0, %cond.end81 ], [ %indvars.iv.next987, %for.inc221 ]
  br i1 %cmp111, label %if.then, label %if.else, !dbg !1028

if.then:                                          ; preds = %for.body110
  %arrayidx118 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv992, i64 %indvars.iv990, i64 %indvars.iv986, !dbg !1032
  store i32 32, i32* %arrayidx118, align 4, !dbg !1032, !tbaa !676
  %arrayidx125 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv992, i64 %indvars.iv990, i64 %indvars.iv986, !dbg !1034
  store i32 32, i32* %arrayidx125, align 4, !dbg !1034, !tbaa !676
  br label %for.inc221, !dbg !1035

if.else:                                          ; preds = %for.body110
  %div141 = sdiv i32 %add140, %cond82, !dbg !1030
  call void @llvm.dbg.value(metadata !{i32 %div141}, i64 0, metadata !115), !dbg !1030
  %mul = mul nsw i32 %div141, %..sub87, !dbg !1036
  %add142 = add nsw i32 %mul, 32, !dbg !1036
  %shr = ashr i32 %add142, 6, !dbg !1036
  %cmp143 = icmp slt i32 %shr, -1024, !dbg !1036
  br i1 %cmp143, label %cond.end157, label %cond.false145, !dbg !1036

cond.false145:                                    ; preds = %if.else
  %cmp149 = icmp sgt i32 %shr, 1023, !dbg !1036
  %phitmp882 = ashr i32 %add142, 8, !dbg !1036
  %.phitmp882 = select i1 %cmp149, i32 255, i32 %phitmp882, !dbg !1036
  br label %cond.end157, !dbg !1036

cond.end157:                                      ; preds = %cond.false145, %if.else
  %cond158 = phi i32 [ -256, %if.else ], [ %.phitmp882, %cond.false145 ]
  %arrayidx166 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv992, i64 %indvars.iv990, i64 %indvars.iv986, !dbg !1037
  %cond158.off = add i32 %cond158, 64, !dbg !1038
  %31 = icmp ugt i32 %cond158.off, 192, !dbg !1038
  %.cond158 = select i1 %31, i32 32, i32 %cond158, !dbg !1038
  store i32 %.cond158, i32* %arrayidx166, align 4, !dbg !1039, !tbaa !676
  %sub198 = sub nsw i32 64, %.cond158, !dbg !1040
  %arrayidx205 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv992, i64 %indvars.iv990, i64 %indvars.iv986, !dbg !1040
  store i32 %sub198, i32* %arrayidx205, align 4, !dbg !1040, !tbaa !676
  br label %for.inc221

for.inc221:                                       ; preds = %if.then, %cond.end157
  %indvars.iv.next987 = add i64 %indvars.iv986, 1, !dbg !1026
  %lftr.wideiv988 = trunc i64 %indvars.iv.next987 to i32, !dbg !1026
  %exitcond989 = icmp eq i32 %lftr.wideiv988, 3, !dbg !1026
  br i1 %exitcond989, label %for.inc224, label %for.body110, !dbg !1026

for.inc224:                                       ; preds = %for.inc221
  %indvars.iv.next991 = add i64 %indvars.iv990, 1, !dbg !1020
  %32 = trunc i64 %indvars.iv.next991 to i32, !dbg !1020
  %cmp51 = icmp slt i32 %32, %16, !dbg !1020
  br i1 %cmp51, label %for.body52, label %for.inc227, !dbg !1020

for.inc227:                                       ; preds = %for.inc224, %for.cond50.preheader
  %indvars.iv.next993 = add i64 %indvars.iv992, 1, !dbg !1019
  %33 = trunc i64 %indvars.iv.next993 to i32, !dbg !1019
  %cmp48 = icmp slt i32 %33, %15, !dbg !1019
  br i1 %cmp48, label %for.cond50.preheader, label %for.end229, !dbg !1019

for.end229:                                       ; preds = %for.inc227, %for.cond47.preheader
  %cmp230 = icmp eq i32 %select_method, 1, !dbg !1041
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !112), !dbg !1042
  br i1 %cmp230, label %for.cond232.preheader, label %for.cond332.preheader, !dbg !1041

for.cond332.preheader:                            ; preds = %for.end229
  %height926 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !1045
  %34 = load i32* %height926, align 4, !dbg !1045, !tbaa !676
  %cmp333927 = icmp sgt i32 %34, 0, !dbg !1045
  %width922 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !1048
  br i1 %cmp333927, label %for.cond335.preheader.lr.ph, label %for.cond349.preheader, !dbg !1045

for.cond335.preheader.lr.ph:                      ; preds = %for.cond332.preheader
  %35 = load i32* %width922, align 4, !dbg !1048, !tbaa !676
  %cmp336923 = icmp sgt i32 %35, 0, !dbg !1048
  %36 = load i16*** @imgY_org, align 8, !dbg !1051, !tbaa !673
  br label %for.cond335.preheader, !dbg !1045

for.cond232.preheader:                            ; preds = %for.end229
  br i1 %cmp48935, label %for.cond235.preheader.lr.ph, label %for.cond287.preheader, !dbg !1042

for.cond235.preheader.lr.ph:                      ; preds = %for.cond232.preheader
  %37 = load i32***** @wbp_weight, align 8, !dbg !1053, !tbaa !673
  %arrayidx256 = getelementptr inbounds i32**** %37, i64 1, !dbg !1053
  %.pre = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !1059, !tbaa !676
  br label %for.cond235.preheader, !dbg !1042

for.cond235.preheader:                            ; preds = %for.cond235.preheader.lr.ph, %for.inc280
  %38 = phi i32 [ %15, %for.cond235.preheader.lr.ph ], [ %50, %for.inc280 ]
  %39 = phi i32 [ %.pre, %for.cond235.preheader.lr.ph ], [ %51, %for.inc280 ], !dbg !1059
  %indvars.iv953 = phi i64 [ 0, %for.cond235.preheader.lr.ph ], [ %indvars.iv.next954, %for.inc280 ]
  %cmp236895 = icmp sgt i32 %39, 0, !dbg !1059
  br i1 %cmp236895, label %for.cond238.preheader.lr.ph, label %for.inc280, !dbg !1059

for.cond238.preheader.lr.ph:                      ; preds = %for.cond235.preheader
  %40 = load i32**** %arrayidx256, align 8, !dbg !1053, !tbaa !673
  %arrayidx257 = getelementptr inbounds i32*** %40, i64 %indvars.iv953, !dbg !1053
  %41 = load i32*** %arrayidx257, align 8, !dbg !1053, !tbaa !673
  %42 = load i32**** %37, align 8, !dbg !1060, !tbaa !673
  %arrayidx271 = getelementptr inbounds i32*** %42, i64 %indvars.iv953, !dbg !1060
  %43 = load i32*** %arrayidx271, align 8, !dbg !1060, !tbaa !673
  br label %for.cond238.preheader, !dbg !1059

for.cond238.preheader:                            ; preds = %for.cond238.preheader.lr.ph, %for.inc277
  %indvars.iv951 = phi i64 [ 0, %for.cond238.preheader.lr.ph ], [ %indvars.iv.next952, %for.inc277 ]
  %arrayidx258 = getelementptr inbounds i32** %41, i64 %indvars.iv951, !dbg !1053
  %44 = load i32** %arrayidx258, align 8, !dbg !1053, !tbaa !673
  %arrayidx272 = getelementptr inbounds i32** %43, i64 %indvars.iv951, !dbg !1060
  %45 = load i32** %arrayidx272, align 8, !dbg !1060, !tbaa !673
  br label %for.body240, !dbg !1061

for.body240:                                      ; preds = %for.body240, %for.cond238.preheader
  %indvars.iv949 = phi i64 [ 0, %for.cond238.preheader ], [ %indvars.iv.next950, %for.body240 ]
  %arrayidx252 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv953, i64 %indvars.iv951, i64 %indvars.iv949, !dbg !1053
  %46 = load i32* %arrayidx252, align 4, !dbg !1053, !tbaa !676
  %arrayidx259 = getelementptr inbounds i32* %44, i64 %indvars.iv949, !dbg !1053
  store i32 %46, i32* %arrayidx259, align 4, !dbg !1053, !tbaa !676
  %arrayidx266 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv953, i64 %indvars.iv951, i64 %indvars.iv949, !dbg !1060
  %47 = load i32* %arrayidx266, align 4, !dbg !1060, !tbaa !676
  %arrayidx273 = getelementptr inbounds i32* %45, i64 %indvars.iv949, !dbg !1060
  store i32 %47, i32* %arrayidx273, align 4, !dbg !1060, !tbaa !676
  %indvars.iv.next950 = add i64 %indvars.iv949, 1, !dbg !1061
  %lftr.wideiv = trunc i64 %indvars.iv.next950 to i32, !dbg !1061
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1061
  br i1 %exitcond, label %for.inc277, label %for.body240, !dbg !1061

for.inc277:                                       ; preds = %for.body240
  %indvars.iv.next952 = add i64 %indvars.iv951, 1, !dbg !1059
  %48 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !1059, !tbaa !676
  %49 = trunc i64 %indvars.iv.next952 to i32, !dbg !1059
  %cmp236 = icmp slt i32 %49, %48, !dbg !1059
  br i1 %cmp236, label %for.cond238.preheader, label %for.cond235.for.inc280_crit_edge, !dbg !1059

for.cond235.for.inc280_crit_edge:                 ; preds = %for.inc277
  %.pre1005 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !1042, !tbaa !676
  br label %for.inc280, !dbg !1059

for.inc280:                                       ; preds = %for.cond235.for.inc280_crit_edge, %for.cond235.preheader
  %50 = phi i32 [ %.pre1005, %for.cond235.for.inc280_crit_edge ], [ %38, %for.cond235.preheader ], !dbg !1042
  %51 = phi i32 [ %48, %for.cond235.for.inc280_crit_edge ], [ %39, %for.cond235.preheader ]
  %indvars.iv.next954 = add i64 %indvars.iv953, 1, !dbg !1042
  %52 = trunc i64 %indvars.iv.next954 to i32, !dbg !1042
  %cmp233 = icmp slt i32 %52, %50, !dbg !1042
  br i1 %cmp233, label %for.cond235.preheader, label %for.cond287.preheader, !dbg !1042

for.cond287.preheader:                            ; preds = %for.cond232.preheader, %for.inc280, %for.inc328.for.cond287.preheader_crit_edge
  %53 = phi i32 [ %.pre1008, %for.inc328.for.cond287.preheader_crit_edge ], [ %15, %for.cond232.preheader ], [ %50, %for.inc280 ]
  %indvars.iv947 = phi i64 [ %indvars.iv.next948, %for.inc328.for.cond287.preheader_crit_edge ], [ 0, %for.cond232.preheader ], [ 0, %for.inc280 ]
  %arrayidx289 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv947, !dbg !1062
  %cmp290891 = icmp sgt i32 %53, 0, !dbg !1062
  br i1 %cmp290891, label %for.body291.lr.ph, label %for.inc328, !dbg !1062

for.body291.lr.ph:                                ; preds = %for.cond287.preheader
  %arrayidx295 = getelementptr inbounds i32*** %10, i64 %indvars.iv947, !dbg !1066
  %54 = load i32*** %arrayidx295, align 8, !dbg !1066, !tbaa !673
  %arrayidx312 = getelementptr inbounds i32*** %11, i64 %indvars.iv947, !dbg !1068
  %55 = load i32*** %arrayidx312, align 8, !dbg !1068, !tbaa !673
  br label %for.body291, !dbg !1062

for.body291:                                      ; preds = %for.body291, %for.body291.lr.ph
  %indvars.iv945 = phi i64 [ 0, %for.body291.lr.ph ], [ %indvars.iv.next946, %for.body291 ]
  %56 = load i32* @luma_log_weight_denom, align 4, !dbg !1066, !tbaa !676
  %shl292 = shl i32 1, %56, !dbg !1066
  %arrayidx296 = getelementptr inbounds i32** %54, i64 %indvars.iv945, !dbg !1066
  %57 = load i32** %arrayidx296, align 8, !dbg !1066, !tbaa !673
  store i32 %shl292, i32* %57, align 4, !dbg !1066, !tbaa !676
  %58 = load i32* @chroma_log_weight_denom, align 4, !dbg !1069, !tbaa !676
  %shl298 = shl i32 1, %58, !dbg !1069
  %arrayidx303 = getelementptr inbounds i32* %57, i64 1, !dbg !1069
  store i32 %shl298, i32* %arrayidx303, align 4, !dbg !1069, !tbaa !676
  %59 = load i32* @chroma_log_weight_denom, align 4, !dbg !1070, !tbaa !676
  %shl304 = shl i32 1, %59, !dbg !1070
  %arrayidx309 = getelementptr inbounds i32* %57, i64 2, !dbg !1070
  store i32 %shl304, i32* %arrayidx309, align 4, !dbg !1070, !tbaa !676
  %arrayidx313 = getelementptr inbounds i32** %55, i64 %indvars.iv945, !dbg !1068
  %60 = load i32** %arrayidx313, align 8, !dbg !1068, !tbaa !673
  store i32 0, i32* %60, align 4, !dbg !1068, !tbaa !676
  %arrayidx319 = getelementptr inbounds i32* %60, i64 1, !dbg !1071
  store i32 0, i32* %arrayidx319, align 4, !dbg !1071, !tbaa !676
  %arrayidx324 = getelementptr inbounds i32* %60, i64 2, !dbg !1072
  store i32 0, i32* %arrayidx324, align 4, !dbg !1072, !tbaa !676
  %indvars.iv.next946 = add i64 %indvars.iv945, 1, !dbg !1062
  %61 = load i32* %arrayidx289, align 4, !dbg !1062, !tbaa !676
  %62 = trunc i64 %indvars.iv.next946 to i32, !dbg !1062
  %cmp290 = icmp slt i32 %62, %61, !dbg !1062
  br i1 %cmp290, label %for.body291, label %for.inc328, !dbg !1062

for.inc328:                                       ; preds = %for.body291, %for.cond287.preheader
  %indvars.iv.next948 = add i64 %indvars.iv947, 1, !dbg !1073
  %63 = trunc i64 %indvars.iv.next948 to i32, !dbg !1073
  %cmp285 = icmp slt i32 %63, %cond4, !dbg !1073
  br i1 %cmp285, label %for.inc328.for.cond287.preheader_crit_edge, label %for.cond611.preheader, !dbg !1073

for.inc328.for.cond287.preheader_crit_edge:       ; preds = %for.inc328
  %arrayidx289.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next948
  %.pre1008 = load i32* %arrayidx289.phi.trans.insert, align 4, !dbg !1062, !tbaa !676
  br label %for.cond287.preheader, !dbg !1073

for.cond335.preheader:                            ; preds = %for.cond335.preheader.lr.ph, %for.inc346
  %indvars.iv984 = phi i64 [ 0, %for.cond335.preheader.lr.ph ], [ %indvars.iv.next985, %for.inc346 ]
  %dc_org.0928 = phi double [ 0.000000e+00, %for.cond335.preheader.lr.ph ], [ %dc_org.1.lcssa, %for.inc346 ]
  br i1 %cmp336923, label %for.body337.lr.ph, label %for.inc346, !dbg !1048

for.body337.lr.ph:                                ; preds = %for.cond335.preheader
  %arrayidx340 = getelementptr inbounds i16** %36, i64 %indvars.iv984, !dbg !1051
  %64 = load i16** %arrayidx340, align 8, !dbg !1051, !tbaa !673
  br label %for.body337, !dbg !1048

for.cond349.preheader:                            ; preds = %for.cond332.preheader, %for.inc346
  %dc_org.0.lcssa = phi double [ %dc_org.1.lcssa, %for.inc346 ], [ 0.000000e+00, %for.cond332.preheader ]
  %mul398 = fmul double %dc_org.0.lcssa, 3.200000e+01, !dbg !1074
  br label %for.cond354.preheader, !dbg !1079

for.body337:                                      ; preds = %for.body337.lr.ph, %for.body337
  %indvars.iv982 = phi i64 [ 0, %for.body337.lr.ph ], [ %indvars.iv.next983, %for.body337 ]
  %dc_org.1924 = phi double [ %dc_org.0928, %for.body337.lr.ph ], [ %add342, %for.body337 ]
  %arrayidx341 = getelementptr inbounds i16* %64, i64 %indvars.iv982, !dbg !1051
  %65 = load i16* %arrayidx341, align 2, !dbg !1051, !tbaa !718
  %conv = uitofp i16 %65 to double, !dbg !1051
  %add342 = fadd double %dc_org.1924, %conv, !dbg !1051
  call void @llvm.dbg.value(metadata !{double %add342}, i64 0, metadata !117), !dbg !1051
  %indvars.iv.next983 = add i64 %indvars.iv982, 1, !dbg !1048
  %66 = trunc i64 %indvars.iv.next983 to i32, !dbg !1048
  %cmp336 = icmp slt i32 %66, %35, !dbg !1048
  br i1 %cmp336, label %for.body337, label %for.inc346, !dbg !1048

for.inc346:                                       ; preds = %for.body337, %for.cond335.preheader
  %dc_org.1.lcssa = phi double [ %dc_org.0928, %for.cond335.preheader ], [ %add342, %for.body337 ]
  %indvars.iv.next985 = add i64 %indvars.iv984, 1, !dbg !1045
  %67 = trunc i64 %indvars.iv.next985 to i32, !dbg !1045
  %cmp333 = icmp slt i32 %67, %34, !dbg !1045
  br i1 %cmp333, label %for.cond335.preheader, label %for.cond349.preheader, !dbg !1045

for.cond354.preheader:                            ; preds = %for.inc448.for.cond354.preheader_crit_edge, %for.cond349.preheader
  %68 = phi i32 [ %15, %for.cond349.preheader ], [ %.pre1009, %for.inc448.for.cond354.preheader_crit_edge ]
  %indvars.iv980 = phi i64 [ 0, %for.cond349.preheader ], [ %indvars.iv.next981, %for.inc448.for.cond354.preheader_crit_edge ]
  %cmp357919 = icmp sgt i32 %68, 0, !dbg !1080
  br i1 %cmp357919, label %for.body359.lr.ph, label %for.inc448, !dbg !1080

for.body359.lr.ph:                                ; preds = %for.cond354.preheader
  %arrayidx366 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv980, !dbg !1081
  %69 = load %struct.storable_picture*** %arrayidx366, align 8, !dbg !1081, !tbaa !673
  %70 = load i32* %width922, align 4, !dbg !1082, !tbaa !676
  %mul375915 = mul nsw i32 %70, %34, !dbg !1082
  %cmp376916 = icmp sgt i32 %mul375915, 0, !dbg !1082
  br label %for.body359, !dbg !1080

for.body359:                                      ; preds = %for.body359.lr.ph, %if.end407
  %indvars.iv977 = phi i64 [ 0, %for.body359.lr.ph ], [ %indvars.iv.next978, %if.end407 ]
  %arrayidx367 = getelementptr inbounds %struct.storable_picture** %69, i64 %indvars.iv977, !dbg !1081
  %71 = load %struct.storable_picture** %arrayidx367, align 8, !dbg !1081, !tbaa !673
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %71, i64 0, i32 26, !dbg !1081
  %72 = load i16** %imgY_11, align 8, !dbg !1081, !tbaa !673
  call void @llvm.dbg.value(metadata !{i16* %72}, i64 0, metadata !122), !dbg !1081
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !112), !dbg !1082
  br i1 %cmp376916, label %for.body378, label %if.end407, !dbg !1082

for.body378:                                      ; preds = %for.body359, %for.body378
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %for.body378 ], [ 0, %for.body359 ]
  %add386918 = phi double [ %add386, %for.body378 ], [ 0.000000e+00, %for.body359 ], !dbg !1084
  %arrayidx380 = getelementptr inbounds i16* %72, i64 %indvars.iv975, !dbg !1084
  %73 = load i16* %arrayidx380, align 2, !dbg !1084, !tbaa !718
  %conv381 = uitofp i16 %73 to double, !dbg !1084
  %add386 = fadd double %add386918, %conv381, !dbg !1084
  %indvars.iv.next976 = add i64 %indvars.iv975, 1, !dbg !1082
  %74 = trunc i64 %indvars.iv.next976 to i32, !dbg !1082
  %cmp376 = icmp slt i32 %74, %mul375915, !dbg !1082
  br i1 %cmp376, label %for.body378, label %for.end389, !dbg !1082

for.end389:                                       ; preds = %for.body378
  %cmp394 = fcmp une double %add386, 0.000000e+00, !dbg !1086
  br i1 %cmp394, label %if.then396, label %if.end407, !dbg !1086

if.then396:                                       ; preds = %for.end389
  %div403 = fdiv double %mul398, %add386, !dbg !1074
  %add404 = fadd double %div403, 5.000000e-01, !dbg !1074
  %conv405 = fptosi double %add404 to i32, !dbg !1074
  call void @llvm.dbg.value(metadata !{i32 %conv405}, i64 0, metadata !132), !dbg !1074
  br label %if.end407, !dbg !1074

if.end407:                                        ; preds = %for.body359, %for.end389, %if.then396
  %wf_weight.0 = phi i32 [ %conv405, %if.then396 ], [ 32, %for.end389 ], [ 32, %for.body359 ]
  %wf_weight.0.off = add i32 %wf_weight.0, 64, !dbg !1087
  %75 = icmp ugt i32 %wf_weight.0.off, 191, !dbg !1087
  call void @llvm.dbg.value(metadata !938, i64 0, metadata !132), !dbg !1088
  %.wf_weight.0 = select i1 %75, i32 32, i32 %wf_weight.0, !dbg !1087
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !133), !dbg !1090
  %arrayidx419 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 0, !dbg !1091
  store i32 %.wf_weight.0, i32* %arrayidx419, align 4, !dbg !1091, !tbaa !676
  %arrayidx424 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 1, !dbg !1092
  store i32 32, i32* %arrayidx424, align 4, !dbg !1092, !tbaa !676
  %arrayidx429 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 2, !dbg !1093
  store i32 32, i32* %arrayidx429, align 4, !dbg !1093, !tbaa !676
  %arrayidx434 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 0, !dbg !1094
  store i32 0, i32* %arrayidx434, align 4, !dbg !1094, !tbaa !676
  %arrayidx439 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 1, !dbg !1095
  store i32 0, i32* %arrayidx439, align 4, !dbg !1095, !tbaa !676
  %arrayidx444 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 2, !dbg !1096
  store i32 0, i32* %arrayidx444, align 4, !dbg !1096, !tbaa !676
  %indvars.iv.next978 = add i64 %indvars.iv977, 1, !dbg !1080
  %76 = trunc i64 %indvars.iv.next978 to i32, !dbg !1080
  %cmp357 = icmp slt i32 %76, %68, !dbg !1080
  br i1 %cmp357, label %for.body359, label %for.inc448, !dbg !1080

for.inc448:                                       ; preds = %if.end407, %for.cond354.preheader
  %indvars.iv.next981 = add i64 %indvars.iv980, 1, !dbg !1079
  %77 = trunc i64 %indvars.iv.next981 to i32, !dbg !1079
  %cmp351 = icmp slt i32 %77, %cond4, !dbg !1079
  br i1 %cmp351, label %for.inc448.for.cond354.preheader_crit_edge, label %for.end450, !dbg !1079

for.inc448.for.cond354.preheader_crit_edge:       ; preds = %for.inc448
  %arrayidx356.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next981
  %.pre1009 = load i32* %arrayidx356.phi.trans.insert, align 4, !dbg !1080, !tbaa !676
  br label %for.cond354.preheader, !dbg !1079

for.end450:                                       ; preds = %for.inc448
  %78 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1097, !tbaa !673
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %78, i64 0, i32 20, !dbg !1097
  %79 = load i32* %weighted_bipred_idc, align 4, !dbg !1097, !tbaa !676
  %cmp451 = icmp eq i32 %79, 1, !dbg !1097
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !131), !dbg !1098
  br i1 %cmp451, label %for.cond459.preheader, label %for.cond508.preheader, !dbg !1097

for.cond459.preheader:                            ; preds = %for.end450, %for.inc499.for.cond459.preheader_crit_edge
  %80 = phi i32 [ %.pre1010, %for.inc499.for.cond459.preheader_crit_edge ], [ %15, %for.end450 ]
  %indvars.iv969 = phi i64 [ %indvars.iv.next970, %for.inc499.for.cond459.preheader_crit_edge ], [ 0, %for.end450 ]
  %arrayidx461 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv969, !dbg !1101
  %cmp462906 = icmp sgt i32 %80, 0, !dbg !1101
  br i1 %cmp462906, label %for.cond465.preheader.lr.ph, label %for.inc499, !dbg !1101

for.cond465.preheader.lr.ph:                      ; preds = %for.cond459.preheader
  %arrayidx478 = getelementptr inbounds i32*** %10, i64 %indvars.iv969, !dbg !1104
  %81 = load i32*** %arrayidx478, align 8, !dbg !1104, !tbaa !673
  %arrayidx490 = getelementptr inbounds i32*** %11, i64 %indvars.iv969, !dbg !1108
  %82 = load i32*** %arrayidx490, align 8, !dbg !1108, !tbaa !673
  br label %for.cond465.preheader, !dbg !1101

for.cond554.preheader:                            ; preds = %for.inc550, %for.inc499
  %83 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !1109, !tbaa !676
  %cmp555903 = icmp sgt i32 %83, 0, !dbg !1109
  br i1 %cmp555903, label %for.cond558.preheader.lr.ph, label %for.cond611.preheader, !dbg !1109

for.cond558.preheader.lr.ph:                      ; preds = %for.cond554.preheader
  %84 = load i32***** @wbp_weight, align 8, !dbg !1111, !tbaa !673
  %arrayidx586 = getelementptr inbounds i32*** %10, i64 1, !dbg !1117
  %arrayidx592 = getelementptr inbounds i32**** %84, i64 1, !dbg !1117
  %.pre1006 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !1118, !tbaa !676
  br label %for.cond558.preheader, !dbg !1109

for.cond465.preheader:                            ; preds = %for.cond465.preheader.lr.ph, %for.inc496
  %indvars.iv967 = phi i64 [ 0, %for.cond465.preheader.lr.ph ], [ %indvars.iv.next968, %for.inc496 ]
  %arrayidx479 = getelementptr inbounds i32** %81, i64 %indvars.iv967, !dbg !1104
  %85 = load i32** %arrayidx479, align 8, !dbg !1104, !tbaa !673
  %arrayidx491 = getelementptr inbounds i32** %82, i64 %indvars.iv967, !dbg !1108
  %86 = load i32** %arrayidx491, align 8, !dbg !1108, !tbaa !673
  br label %for.body468, !dbg !1119

for.body468:                                      ; preds = %for.body468, %for.cond465.preheader
  %indvars.iv963 = phi i64 [ 0, %for.cond465.preheader ], [ %indvars.iv.next964, %for.body468 ]
  %arrayidx474 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv969, i64 %indvars.iv967, i64 %indvars.iv963, !dbg !1104
  %87 = load i32* %arrayidx474, align 4, !dbg !1104, !tbaa !676
  %arrayidx480 = getelementptr inbounds i32* %85, i64 %indvars.iv963, !dbg !1104
  store i32 %87, i32* %arrayidx480, align 4, !dbg !1104, !tbaa !676
  %arrayidx486 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv969, i64 %indvars.iv967, i64 %indvars.iv963, !dbg !1108
  %88 = load i32* %arrayidx486, align 4, !dbg !1108, !tbaa !676
  %arrayidx492 = getelementptr inbounds i32* %86, i64 %indvars.iv963, !dbg !1108
  store i32 %88, i32* %arrayidx492, align 4, !dbg !1108, !tbaa !676
  %indvars.iv.next964 = add i64 %indvars.iv963, 1, !dbg !1119
  %lftr.wideiv965 = trunc i64 %indvars.iv.next964 to i32, !dbg !1119
  %exitcond966 = icmp eq i32 %lftr.wideiv965, 3, !dbg !1119
  br i1 %exitcond966, label %for.inc496, label %for.body468, !dbg !1119

for.inc496:                                       ; preds = %for.body468
  %indvars.iv.next968 = add i64 %indvars.iv967, 1, !dbg !1101
  %89 = load i32* %arrayidx461, align 4, !dbg !1101, !tbaa !676
  %90 = trunc i64 %indvars.iv.next968 to i32, !dbg !1101
  %cmp462 = icmp slt i32 %90, %89, !dbg !1101
  br i1 %cmp462, label %for.cond465.preheader, label %for.inc499, !dbg !1101

for.inc499:                                       ; preds = %for.inc496, %for.cond459.preheader
  %indvars.iv.next970 = add i64 %indvars.iv969, 1, !dbg !1098
  %91 = trunc i64 %indvars.iv.next970 to i32, !dbg !1098
  %cmp456 = icmp slt i32 %91, %cond4, !dbg !1098
  br i1 %cmp456, label %for.inc499.for.cond459.preheader_crit_edge, label %for.cond554.preheader, !dbg !1098

for.inc499.for.cond459.preheader_crit_edge:       ; preds = %for.inc499
  %arrayidx461.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next970
  %.pre1010 = load i32* %arrayidx461.phi.trans.insert, align 4, !dbg !1101, !tbaa !676
  br label %for.cond459.preheader, !dbg !1098

for.cond508.preheader:                            ; preds = %for.end450, %for.inc550.for.cond508.preheader_crit_edge
  %92 = phi i32 [ %.pre1011, %for.inc550.for.cond508.preheader_crit_edge ], [ %15, %for.end450 ]
  %indvars.iv973 = phi i64 [ %indvars.iv.next974, %for.inc550.for.cond508.preheader_crit_edge ], [ 0, %for.end450 ]
  %arrayidx510 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv973, !dbg !1120
  %cmp511909 = icmp sgt i32 %92, 0, !dbg !1120
  br i1 %cmp511909, label %for.body513.lr.ph, label %for.inc550, !dbg !1120

for.body513.lr.ph:                                ; preds = %for.cond508.preheader
  %arrayidx517 = getelementptr inbounds i32*** %10, i64 %indvars.iv973, !dbg !1125
  %93 = load i32*** %arrayidx517, align 8, !dbg !1125, !tbaa !673
  %arrayidx534 = getelementptr inbounds i32*** %11, i64 %indvars.iv973, !dbg !1127
  %94 = load i32*** %arrayidx534, align 8, !dbg !1127, !tbaa !673
  br label %for.body513, !dbg !1120

for.body513:                                      ; preds = %for.body513, %for.body513.lr.ph
  %indvars.iv971 = phi i64 [ 0, %for.body513.lr.ph ], [ %indvars.iv.next972, %for.body513 ]
  %95 = load i32* @luma_log_weight_denom, align 4, !dbg !1125, !tbaa !676
  %shl514 = shl i32 1, %95, !dbg !1125
  %arrayidx518 = getelementptr inbounds i32** %93, i64 %indvars.iv971, !dbg !1125
  %96 = load i32** %arrayidx518, align 8, !dbg !1125, !tbaa !673
  store i32 %shl514, i32* %96, align 4, !dbg !1125, !tbaa !676
  %97 = load i32* @chroma_log_weight_denom, align 4, !dbg !1128, !tbaa !676
  %shl520 = shl i32 1, %97, !dbg !1128
  %arrayidx525 = getelementptr inbounds i32* %96, i64 1, !dbg !1128
  store i32 %shl520, i32* %arrayidx525, align 4, !dbg !1128, !tbaa !676
  %98 = load i32* @chroma_log_weight_denom, align 4, !dbg !1129, !tbaa !676
  %shl526 = shl i32 1, %98, !dbg !1129
  %arrayidx531 = getelementptr inbounds i32* %96, i64 2, !dbg !1129
  store i32 %shl526, i32* %arrayidx531, align 4, !dbg !1129, !tbaa !676
  %arrayidx535 = getelementptr inbounds i32** %94, i64 %indvars.iv971, !dbg !1127
  %99 = load i32** %arrayidx535, align 8, !dbg !1127, !tbaa !673
  store i32 0, i32* %99, align 4, !dbg !1127, !tbaa !676
  %arrayidx541 = getelementptr inbounds i32* %99, i64 1, !dbg !1130
  store i32 0, i32* %arrayidx541, align 4, !dbg !1130, !tbaa !676
  %arrayidx546 = getelementptr inbounds i32* %99, i64 2, !dbg !1131
  store i32 0, i32* %arrayidx546, align 4, !dbg !1131, !tbaa !676
  %indvars.iv.next972 = add i64 %indvars.iv971, 1, !dbg !1120
  %100 = load i32* %arrayidx510, align 4, !dbg !1120, !tbaa !676
  %101 = trunc i64 %indvars.iv.next972 to i32, !dbg !1120
  %cmp511 = icmp slt i32 %101, %100, !dbg !1120
  br i1 %cmp511, label %for.body513, label %for.inc550, !dbg !1120

for.inc550:                                       ; preds = %for.body513, %for.cond508.preheader
  %indvars.iv.next974 = add i64 %indvars.iv973, 1, !dbg !1132
  %102 = trunc i64 %indvars.iv.next974 to i32, !dbg !1132
  %cmp505 = icmp slt i32 %102, %cond4, !dbg !1132
  br i1 %cmp505, label %for.inc550.for.cond508.preheader_crit_edge, label %for.cond554.preheader, !dbg !1132

for.inc550.for.cond508.preheader_crit_edge:       ; preds = %for.inc550
  %arrayidx510.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next974
  %.pre1011 = load i32* %arrayidx510.phi.trans.insert, align 4, !dbg !1120, !tbaa !676
  br label %for.cond508.preheader, !dbg !1132

for.cond558.preheader:                            ; preds = %for.cond558.preheader.lr.ph, %for.inc602
  %103 = phi i32 [ %83, %for.cond558.preheader.lr.ph ], [ %119, %for.inc602 ]
  %104 = phi i32 [ %.pre1006, %for.cond558.preheader.lr.ph ], [ %120, %for.inc602 ], !dbg !1118
  %indvars.iv961 = phi i64 [ 0, %for.cond558.preheader.lr.ph ], [ %indvars.iv.next962, %for.inc602 ]
  %cmp559900 = icmp sgt i32 %104, 0, !dbg !1118
  br i1 %cmp559900, label %for.cond562.preheader.lr.ph, label %for.inc602, !dbg !1118

for.cond562.preheader.lr.ph:                      ; preds = %for.cond558.preheader
  %105 = load i32*** %10, align 8, !dbg !1111, !tbaa !673
  %arrayidx575 = getelementptr inbounds i32** %105, i64 %indvars.iv961, !dbg !1111
  %106 = load i32** %arrayidx575, align 8, !dbg !1111, !tbaa !673
  %107 = load i32**** %84, align 8, !dbg !1111, !tbaa !673
  %arrayidx581 = getelementptr inbounds i32*** %107, i64 %indvars.iv961, !dbg !1111
  %108 = load i32*** %arrayidx581, align 8, !dbg !1111, !tbaa !673
  %109 = load i32*** %arrayidx586, align 8, !dbg !1117, !tbaa !673
  %110 = load i32**** %arrayidx592, align 8, !dbg !1117, !tbaa !673
  %arrayidx593 = getelementptr inbounds i32*** %110, i64 %indvars.iv961, !dbg !1117
  %111 = load i32*** %arrayidx593, align 8, !dbg !1117, !tbaa !673
  br label %for.cond562.preheader, !dbg !1118

for.cond562.preheader:                            ; preds = %for.cond562.preheader.lr.ph, %for.inc599
  %indvars.iv959 = phi i64 [ 0, %for.cond562.preheader.lr.ph ], [ %indvars.iv.next960, %for.inc599 ]
  %arrayidx582 = getelementptr inbounds i32** %108, i64 %indvars.iv959, !dbg !1111
  %112 = load i32** %arrayidx582, align 8, !dbg !1111, !tbaa !673
  %arrayidx587 = getelementptr inbounds i32** %109, i64 %indvars.iv959, !dbg !1117
  %113 = load i32** %arrayidx587, align 8, !dbg !1117, !tbaa !673
  %arrayidx594 = getelementptr inbounds i32** %111, i64 %indvars.iv959, !dbg !1117
  %114 = load i32** %arrayidx594, align 8, !dbg !1117, !tbaa !673
  br label %for.body565, !dbg !1133

for.body565:                                      ; preds = %for.body565, %for.cond562.preheader
  %indvars.iv955 = phi i64 [ 0, %for.cond562.preheader ], [ %indvars.iv.next956, %for.body565 ]
  %arrayidx576 = getelementptr inbounds i32* %106, i64 %indvars.iv955, !dbg !1111
  %115 = load i32* %arrayidx576, align 4, !dbg !1111, !tbaa !676
  %arrayidx583 = getelementptr inbounds i32* %112, i64 %indvars.iv955, !dbg !1111
  store i32 %115, i32* %arrayidx583, align 4, !dbg !1111, !tbaa !676
  %arrayidx588 = getelementptr inbounds i32* %113, i64 %indvars.iv955, !dbg !1117
  %116 = load i32* %arrayidx588, align 4, !dbg !1117, !tbaa !676
  %arrayidx595 = getelementptr inbounds i32* %114, i64 %indvars.iv955, !dbg !1117
  store i32 %116, i32* %arrayidx595, align 4, !dbg !1117, !tbaa !676
  %indvars.iv.next956 = add i64 %indvars.iv955, 1, !dbg !1133
  %lftr.wideiv957 = trunc i64 %indvars.iv.next956 to i32, !dbg !1133
  %exitcond958 = icmp eq i32 %lftr.wideiv957, 3, !dbg !1133
  br i1 %exitcond958, label %for.inc599, label %for.body565, !dbg !1133

for.inc599:                                       ; preds = %for.body565
  %indvars.iv.next960 = add i64 %indvars.iv959, 1, !dbg !1118
  %117 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !1118, !tbaa !676
  %118 = trunc i64 %indvars.iv.next960 to i32, !dbg !1118
  %cmp559 = icmp slt i32 %118, %117, !dbg !1118
  br i1 %cmp559, label %for.cond562.preheader, label %for.cond558.for.inc602_crit_edge, !dbg !1118

for.cond558.for.inc602_crit_edge:                 ; preds = %for.inc599
  %.pre1007 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !1109, !tbaa !676
  br label %for.inc602, !dbg !1118

for.inc602:                                       ; preds = %for.cond558.for.inc602_crit_edge, %for.cond558.preheader
  %119 = phi i32 [ %.pre1007, %for.cond558.for.inc602_crit_edge ], [ %103, %for.cond558.preheader ], !dbg !1109
  %120 = phi i32 [ %117, %for.cond558.for.inc602_crit_edge ], [ %104, %for.cond558.preheader ]
  %indvars.iv.next962 = add i64 %indvars.iv961, 1, !dbg !1109
  %121 = trunc i64 %indvars.iv.next962 to i32, !dbg !1109
  %cmp555 = icmp slt i32 %121, %119, !dbg !1109
  br i1 %cmp555, label %for.cond558.preheader, label %for.cond611.preheader, !dbg !1109

for.cond611.preheader:                            ; preds = %for.inc654, %for.inc328, %for.inc602, %for.cond554.preheader
  %indvars.iv943 = phi i64 [ 0, %for.cond554.preheader ], [ 0, %for.inc602 ], [ 0, %for.inc328 ], [ %indvars.iv.next944, %for.inc654 ]
  %arrayidx613 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv943, !dbg !1134
  %122 = load i32* %arrayidx613, align 4, !dbg !1134, !tbaa !676
  %cmp614887 = icmp sgt i32 %122, 0, !dbg !1134
  br i1 %cmp614887, label %for.cond617.preheader.lr.ph, label %for.inc654, !dbg !1134

for.cond617.preheader.lr.ph:                      ; preds = %for.cond611.preheader
  %arrayidx624 = getelementptr inbounds i32*** %10, i64 %indvars.iv943, !dbg !1138
  %123 = load i32*** %arrayidx624, align 8, !dbg !1138, !tbaa !673
  %arrayidx633 = getelementptr inbounds i32*** %11, i64 %indvars.iv943, !dbg !1138
  br label %for.cond617.preheader, !dbg !1134

for.cond617.preheader:                            ; preds = %for.cond617.preheader.lr.ph, %for.inc647
  %indvars.iv941 = phi i64 [ 0, %for.cond617.preheader.lr.ph ], [ %indvars.iv.next942, %for.inc647 ]
  %arrayidx625 = getelementptr inbounds i32** %123, i64 %indvars.iv941, !dbg !1138
  %124 = load i32** %arrayidx625, align 8, !dbg !1138, !tbaa !673
  br label %for.body620, !dbg !1142

for.cond617:                                      ; preds = %lor.lhs.false629
  %125 = trunc i64 %indvars.iv.next to i32, !dbg !1142
  %cmp618 = icmp slt i32 %125, 3, !dbg !1142
  br i1 %cmp618, label %for.body620, label %for.inc647, !dbg !1142

for.body620:                                      ; preds = %for.cond617.preheader, %for.cond617
  %indvars.iv = phi i64 [ 0, %for.cond617.preheader ], [ %indvars.iv.next, %for.cond617 ]
  %arrayidx626 = getelementptr inbounds i32* %124, i64 %indvars.iv, !dbg !1138
  %126 = load i32* %arrayidx626, align 4, !dbg !1138, !tbaa !676
  %cmp627 = icmp eq i32 %126, 32, !dbg !1138
  br i1 %cmp627, label %lor.lhs.false629, label %for.end656, !dbg !1138

lor.lhs.false629:                                 ; preds = %for.body620
  %127 = load i32*** %arrayidx633, align 8, !dbg !1138, !tbaa !673
  %arrayidx634 = getelementptr inbounds i32** %127, i64 %indvars.iv941, !dbg !1138
  %128 = load i32** %arrayidx634, align 8, !dbg !1138, !tbaa !673
  %arrayidx635 = getelementptr inbounds i32* %128, i64 %indvars.iv, !dbg !1138
  %129 = load i32* %arrayidx635, align 4, !dbg !1138, !tbaa !676
  %cmp636 = icmp eq i32 %129, 0, !dbg !1138
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1142
  br i1 %cmp636, label %for.cond617, label %for.end656, !dbg !1138

for.inc647:                                       ; preds = %for.cond617
  %indvars.iv.next942 = add i64 %indvars.iv941, 1, !dbg !1134
  %130 = trunc i64 %indvars.iv.next942 to i32, !dbg !1134
  %cmp614 = icmp slt i32 %130, %122, !dbg !1134
  br i1 %cmp614, label %for.cond617.preheader, label %for.inc654, !dbg !1134

for.inc654:                                       ; preds = %for.inc647, %for.cond611.preheader
  %indvars.iv.next944 = add i64 %indvars.iv943, 1, !dbg !1143
  %131 = trunc i64 %indvars.iv.next944 to i32, !dbg !1143
  %cmp608 = icmp slt i32 %131, %cond4, !dbg !1143
  br i1 %cmp608, label %for.cond611.preheader, label %for.end656, !dbg !1143

for.end656:                                       ; preds = %for.inc654, %for.body620, %lor.lhs.false629
  %perform_wp.4 = phi i32 [ 1, %lor.lhs.false629 ], [ 1, %for.body620 ], [ 0, %for.inc654 ]
  call void @llvm.lifetime.end(i64 16200, i8* %9) #2, !dbg !1144
  call void @llvm.lifetime.end(i64 1080, i8* %8) #2, !dbg !1144
  call void @llvm.lifetime.end(i64 1080, i8* %7) #2, !dbg !1144
  ret i32 %perform_wp.4, !dbg !1144
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !14, metadata !15, metadata !141, metadata !14, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!9 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!10 = metadata !{metadata !11, metadata !12, metadata !13}
!11 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!12 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!13 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!14 = metadata !{i32 0}
!15 = metadata !{metadata !16, metadata !49, metadata !88, metadata !109}
!16 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"estimate_weighting_factor_P_slice", metadata !"estimate_weighting_factor_P_slice", metadata !"", i32 28, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @estimate_weighting_factor_P_slice, null, null, metadata !21, i32 29} ; [ DW_TAG_subprogram ] [line 28] [def] [scope 29] [estimate_weighting_factor_P_slice]
!17 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!18 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{null, metadata !20}
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !28, metadata !29, metadata !30, metadata !34, metadata !37, metadata !38, metadata !42, metadata !43, metadata !47, metadata !48}
!22 = metadata !{i32 786689, metadata !16, metadata !"select_offset", metadata !17, i32 16777244, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [select_offset] [line 28]
!23 = metadata !{i32 786688, metadata !16, metadata !"i", metadata !17, i32 30, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 30]
!24 = metadata !{i32 786688, metadata !16, metadata !"j", metadata !17, i32 30, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 30]
!25 = metadata !{i32 786688, metadata !16, metadata !"n", metadata !17, i32 30, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 30]
!26 = metadata !{i32 786688, metadata !16, metadata !"dc_org", metadata !17, i32 32, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dc_org] [line 32]
!27 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!28 = metadata !{i32 786688, metadata !16, metadata !"index", metadata !17, i32 33, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 33]
!29 = metadata !{i32 786688, metadata !16, metadata !"comp", metadata !17, i32 34, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comp] [line 34]
!30 = metadata !{i32 786688, metadata !16, metadata !"dc_ref", metadata !17, i32 35, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dc_ref] [line 35]
!31 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 960, i64 64, i32 0, i32 0, metadata !27, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 960, align 64, offset 0] [from double]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ] [0, 14]
!34 = metadata !{i32 786688, metadata !16, metadata !"ref_pic", metadata !17, i32 37, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_pic] [line 37]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!36 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!37 = metadata !{i32 786688, metadata !16, metadata !"ref_pic_w", metadata !17, i32 38, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_pic_w] [line 38]
!38 = metadata !{i32 786688, metadata !16, metadata !"default_weight", metadata !17, i32 39, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [default_weight] [line 39]
!39 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !20, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!42 = metadata !{i32 786688, metadata !16, metadata !"list_offset", metadata !17, i32 41, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list_offset] [line 41]
!43 = metadata !{i32 786688, metadata !16, metadata !"weight", metadata !17, i32 42, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 42]
!44 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2880, i64 32, i32 0, i32 0, metadata !20, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2880, align 32, offset 0] [from int]
!45 = metadata !{metadata !46, metadata !33, metadata !41}
!46 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!47 = metadata !{i32 786688, metadata !16, metadata !"offset", metadata !17, i32 43, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 43]
!48 = metadata !{i32 786688, metadata !16, metadata !"clist", metadata !17, i32 44, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clist] [line 44]
!49 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"estimate_weighting_factor_B_slice", metadata !"estimate_weighting_factor_B_slice", metadata !"", i32 152, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @estimate_weighting_factor_B_slice, null, null, metadata !52, i32 153} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 153] [estimate_weighting_factor_B_slice]
!50 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{null}
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !87}
!53 = metadata !{i32 786688, metadata !49, metadata !"i", metadata !17, i32 154, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 154]
!54 = metadata !{i32 786688, metadata !49, metadata !"j", metadata !17, i32 154, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 154]
!55 = metadata !{i32 786688, metadata !49, metadata !"n", metadata !17, i32 154, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 154]
!56 = metadata !{i32 786688, metadata !49, metadata !"l", metadata !17, i32 154, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 154]
!57 = metadata !{i32 786688, metadata !49, metadata !"tx", metadata !17, i32 156, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 156]
!58 = metadata !{i32 786688, metadata !49, metadata !"DistScaleFactor", metadata !17, i32 156, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DistScaleFactor] [line 156]
!59 = metadata !{i32 786688, metadata !49, metadata !"dc_org", metadata !17, i32 157, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dc_org] [line 157]
!60 = metadata !{i32 786688, metadata !49, metadata !"index", metadata !17, i32 158, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 158]
!61 = metadata !{i32 786688, metadata !49, metadata !"comp", metadata !17, i32 159, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comp] [line 159]
!62 = metadata !{i32 786688, metadata !49, metadata !"dc_ref", metadata !17, i32 160, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dc_ref] [line 160]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5760, i64 64, i32 0, i32 0, metadata !27, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5760, align 64, offset 0] [from double]
!64 = metadata !{metadata !65, metadata !33}
!65 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!66 = metadata !{i32 786688, metadata !49, metadata !"log_weight_denom", metadata !17, i32 162, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [log_weight_denom] [line 162]
!67 = metadata !{i32 786688, metadata !49, metadata !"ref_pic", metadata !17, i32 164, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_pic] [line 164]
!68 = metadata !{i32 786688, metadata !49, metadata !"ref_pic_w", metadata !17, i32 165, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_pic_w] [line 165]
!69 = metadata !{i32 786688, metadata !49, metadata !"default_weight", metadata !17, i32 166, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [default_weight] [line 166]
!70 = metadata !{i32 786688, metadata !49, metadata !"list_offset", metadata !17, i32 167, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list_offset] [line 167]
!71 = metadata !{i32 786688, metadata !49, metadata !"weight", metadata !17, i32 168, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 168]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8640, i64 32, i32 0, i32 0, metadata !20, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8640, align 32, offset 0] [from int]
!73 = metadata !{metadata !65, metadata !33, metadata !41}
!74 = metadata !{i32 786688, metadata !49, metadata !"offset", metadata !17, i32 169, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 169]
!75 = metadata !{i32 786688, metadata !49, metadata !"im_weight", metadata !17, i32 170, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [im_weight] [line 170]
!76 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 129600, i64 32, i32 0, i32 0, metadata !20, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 129600, align 32, offset 0] [from int]
!77 = metadata !{metadata !65, metadata !33, metadata !33, metadata !41}
!78 = metadata !{i32 786688, metadata !49, metadata !"im_offset", metadata !17, i32 171, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [im_offset] [line 171]
!79 = metadata !{i32 786688, metadata !49, metadata !"clist", metadata !17, i32 172, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clist] [line 172]
!80 = metadata !{i32 786688, metadata !49, metadata !"wf_weight", metadata !17, i32 173, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wf_weight] [line 173]
!81 = metadata !{i32 786688, metadata !49, metadata !"wf_offset", metadata !17, i32 173, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wf_offset] [line 173]
!82 = metadata !{i32 786688, metadata !83, metadata !"td", metadata !17, i32 211, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [td] [line 211]
!83 = metadata !{i32 786443, metadata !1, metadata !84, i32 210, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!84 = metadata !{i32 786443, metadata !1, metadata !85, i32 209, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!85 = metadata !{i32 786443, metadata !1, metadata !86, i32 208, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!86 = metadata !{i32 786443, metadata !1, metadata !49, i32 207, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!87 = metadata !{i32 786688, metadata !83, metadata !"tb", metadata !17, i32 211, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tb] [line 211]
!88 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"test_wp_P_slice", metadata !"test_wp_P_slice", metadata !"", i32 414, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @test_wp_P_slice, null, null, metadata !91, i32 415} ; [ DW_TAG_subprogram ] [line 414] [def] [scope 415] [test_wp_P_slice]
!89 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{metadata !20, metadata !20}
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!92 = metadata !{i32 786689, metadata !88, metadata !"select_offset", metadata !17, i32 16777630, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [select_offset] [line 414]
!93 = metadata !{i32 786688, metadata !88, metadata !"i", metadata !17, i32 416, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 416]
!94 = metadata !{i32 786688, metadata !88, metadata !"j", metadata !17, i32 416, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 416]
!95 = metadata !{i32 786688, metadata !88, metadata !"n", metadata !17, i32 416, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 416]
!96 = metadata !{i32 786688, metadata !88, metadata !"dc_org", metadata !17, i32 418, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dc_org] [line 418]
!97 = metadata !{i32 786688, metadata !88, metadata !"index", metadata !17, i32 419, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 419]
!98 = metadata !{i32 786688, metadata !88, metadata !"comp", metadata !17, i32 420, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comp] [line 420]
!99 = metadata !{i32 786688, metadata !88, metadata !"dc_ref", metadata !17, i32 421, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dc_ref] [line 421]
!100 = metadata !{i32 786688, metadata !88, metadata !"ref_pic", metadata !17, i32 423, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_pic] [line 423]
!101 = metadata !{i32 786688, metadata !88, metadata !"ref_pic_w", metadata !17, i32 424, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_pic_w] [line 424]
!102 = metadata !{i32 786688, metadata !88, metadata !"default_weight", metadata !17, i32 425, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [default_weight] [line 425]
!103 = metadata !{i32 786688, metadata !88, metadata !"default_weight_chroma", metadata !17, i32 426, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [default_weight_chroma] [line 426]
!104 = metadata !{i32 786688, metadata !88, metadata !"list_offset", metadata !17, i32 427, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list_offset] [line 427]
!105 = metadata !{i32 786688, metadata !88, metadata !"weight", metadata !17, i32 428, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 428]
!106 = metadata !{i32 786688, metadata !88, metadata !"offset", metadata !17, i32 429, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 429]
!107 = metadata !{i32 786688, metadata !88, metadata !"clist", metadata !17, i32 430, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clist] [line 430]
!108 = metadata !{i32 786688, metadata !88, metadata !"perform_wp", metadata !17, i32 431, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [perform_wp] [line 431]
!109 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"test_wp_B_slice", metadata !"test_wp_B_slice", metadata !"", i32 531, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @test_wp_B_slice, null, null, metadata !110, i32 532} ; [ DW_TAG_subprogram ] [line 531] [def] [scope 532] [test_wp_B_slice]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !140}
!111 = metadata !{i32 786689, metadata !109, metadata !"select_method", metadata !17, i32 16777747, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [select_method] [line 531]
!112 = metadata !{i32 786688, metadata !109, metadata !"i", metadata !17, i32 533, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 533]
!113 = metadata !{i32 786688, metadata !109, metadata !"j", metadata !17, i32 533, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 533]
!114 = metadata !{i32 786688, metadata !109, metadata !"n", metadata !17, i32 533, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 533]
!115 = metadata !{i32 786688, metadata !109, metadata !"tx", metadata !17, i32 535, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 535]
!116 = metadata !{i32 786688, metadata !109, metadata !"DistScaleFactor", metadata !17, i32 535, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DistScaleFactor] [line 535]
!117 = metadata !{i32 786688, metadata !109, metadata !"dc_org", metadata !17, i32 536, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dc_org] [line 536]
!118 = metadata !{i32 786688, metadata !109, metadata !"index", metadata !17, i32 537, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 537]
!119 = metadata !{i32 786688, metadata !109, metadata !"comp", metadata !17, i32 538, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comp] [line 538]
!120 = metadata !{i32 786688, metadata !109, metadata !"dc_ref", metadata !17, i32 539, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dc_ref] [line 539]
!121 = metadata !{i32 786688, metadata !109, metadata !"log_weight_denom", metadata !17, i32 541, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [log_weight_denom] [line 541]
!122 = metadata !{i32 786688, metadata !109, metadata !"ref_pic", metadata !17, i32 543, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_pic] [line 543]
!123 = metadata !{i32 786688, metadata !109, metadata !"ref_pic_w", metadata !17, i32 544, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_pic_w] [line 544]
!124 = metadata !{i32 786688, metadata !109, metadata !"default_weight", metadata !17, i32 545, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [default_weight] [line 545]
!125 = metadata !{i32 786688, metadata !109, metadata !"default_weight_chroma", metadata !17, i32 546, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [default_weight_chroma] [line 546]
!126 = metadata !{i32 786688, metadata !109, metadata !"list_offset", metadata !17, i32 547, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list_offset] [line 547]
!127 = metadata !{i32 786688, metadata !109, metadata !"weight", metadata !17, i32 548, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 548]
!128 = metadata !{i32 786688, metadata !109, metadata !"offset", metadata !17, i32 549, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 549]
!129 = metadata !{i32 786688, metadata !109, metadata !"im_weight", metadata !17, i32 550, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [im_weight] [line 550]
!130 = metadata !{i32 786688, metadata !109, metadata !"im_offset", metadata !17, i32 551, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [im_offset] [line 551]
!131 = metadata !{i32 786688, metadata !109, metadata !"clist", metadata !17, i32 552, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clist] [line 552]
!132 = metadata !{i32 786688, metadata !109, metadata !"wf_weight", metadata !17, i32 553, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wf_weight] [line 553]
!133 = metadata !{i32 786688, metadata !109, metadata !"wf_offset", metadata !17, i32 553, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wf_offset] [line 553]
!134 = metadata !{i32 786688, metadata !109, metadata !"perform_wp", metadata !17, i32 554, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [perform_wp] [line 554]
!135 = metadata !{i32 786688, metadata !136, metadata !"td", metadata !17, i32 582, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [td] [line 582]
!136 = metadata !{i32 786443, metadata !1, metadata !137, i32 581, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!137 = metadata !{i32 786443, metadata !1, metadata !138, i32 580, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!138 = metadata !{i32 786443, metadata !1, metadata !139, i32 579, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!139 = metadata !{i32 786443, metadata !1, metadata !109, i32 578, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!140 = metadata !{i32 786688, metadata !136, metadata !"tb", metadata !17, i32 582, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tb] [line 582]
!141 = metadata !{metadata !142, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !338, metadata !340, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !385, metadata !480, metadata !481, metadata !482, metadata !484, metadata !485, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !504, metadata !505, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !521, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !533, metadata !536, metadata !537, metadata !538, metadata !539, metadata !542, metadata !545, metadata !556, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667}
!142 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !143, i32 558, metadata !144, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!143 = metadata !{i32 786473, metadata !9}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!144 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!145 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!146 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !147, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!147 = metadata !{metadata !148, metadata !149, metadata !150, metadata !327, metadata !328, metadata !330, metadata !331}
!148 = metadata !{i32 786445, metadata !9, metadata !146, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!149 = metadata !{i32 786445, metadata !9, metadata !146, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!150 = metadata !{i32 786445, metadata !9, metadata !146, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !151} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!151 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !152, metadata !325, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!153 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!154 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !155, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !240, metadata !274, metadata !300, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !322}
!156 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!157 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!158 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!159 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!160 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!161 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!162 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !163} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!163 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!164 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !165} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!165 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !166, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!166 = metadata !{metadata !167, metadata !186, metadata !212}
!167 = metadata !{i32 786445, metadata !9, metadata !165, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!168 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!169 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !170} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!170 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !171, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!171 = metadata !{metadata !172, metadata !173, metadata !174, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !185}
!172 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!173 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!174 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !175} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!175 = metadata !{i32 786454, metadata !9, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!176 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!177 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!178 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!179 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !175} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!180 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !175} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!181 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!182 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !20} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!183 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !184} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!184 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!185 = metadata !{i32 786445, metadata !9, metadata !170, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!186 = metadata !{i32 786445, metadata !9, metadata !165, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !187} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!187 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!188 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !189, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!189 = metadata !{metadata !190, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211}
!190 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !191} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!191 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!192 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !191} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!193 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !191} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!194 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !191} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!195 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !191} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!196 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !184} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!197 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !198} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!198 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!199 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !191} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!200 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !191} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!201 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !191} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!202 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !191} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!203 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !191} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!204 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !184} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!205 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !198} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!206 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !20} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!207 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !20} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!208 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !20} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!209 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !20} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!210 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !20} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!211 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !20} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!212 = metadata !{i32 786445, metadata !9, metadata !165, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !213} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!213 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!214 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{metadata !20, metadata !216, metadata !239}
!216 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!217 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !218} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!218 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !219, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!219 = metadata !{metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !232}
!220 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!221 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!222 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!223 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!224 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!225 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !191} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!226 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!227 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !20} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!228 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !229} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!229 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !230} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!230 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{null, metadata !20, metadata !20, metadata !198, metadata !198}
!232 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !233} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!233 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!234 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!235 = metadata !{null, metadata !236, metadata !237}
!236 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!237 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !238} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!238 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!239 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!240 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !241} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!241 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !242} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!242 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !243} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!243 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !244, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!244 = metadata !{metadata !245, metadata !256, metadata !260, metadata !264, metadata !267, metadata !271, metadata !272}
!245 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !246} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!246 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !247, metadata !254, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!247 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !248} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!248 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !249, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!249 = metadata !{metadata !250, metadata !251, metadata !252}
!250 = metadata !{i32 786445, metadata !9, metadata !248, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!251 = metadata !{i32 786445, metadata !9, metadata !248, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !176} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!252 = metadata !{i32 786445, metadata !9, metadata !248, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !253} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!253 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!254 = metadata !{metadata !41, metadata !255}
!255 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!256 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !257} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!257 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !247, metadata !258, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!258 = metadata !{metadata !46, metadata !259}
!259 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!260 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !261} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!261 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !247, metadata !262, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!262 = metadata !{metadata !46, metadata !263}
!263 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!264 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !265} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!265 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !247, metadata !266, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!266 = metadata !{metadata !46, metadata !65}
!267 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !268} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!268 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !247, metadata !269, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!269 = metadata !{metadata !270}
!270 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!271 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !268} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!272 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !273} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!273 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !247, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!274 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !275} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!275 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !276} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!276 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !277} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!277 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !278, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!278 = metadata !{metadata !279, metadata !282, metadata !283, metadata !286, metadata !289, metadata !292, metadata !293, metadata !297, metadata !298, metadata !299}
!279 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !280} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!280 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !247, metadata !281, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!281 = metadata !{metadata !46}
!282 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !268} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!283 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !284} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!284 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !247, metadata !285, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!285 = metadata !{metadata !41, metadata !270}
!286 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !287} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!287 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !247, metadata !288, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!288 = metadata !{metadata !263, metadata !270}
!289 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !290} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!290 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !247, metadata !291, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!291 = metadata !{metadata !263, metadata !33}
!292 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !290} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!293 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !294} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!294 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !247, metadata !295, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!295 = metadata !{metadata !263, metadata !296}
!296 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!297 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !294} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!298 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !290} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!299 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !290} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!300 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !301} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!301 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !302} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!302 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !303} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!303 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !304, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!304 = metadata !{metadata !305, metadata !306, metadata !307}
!305 = metadata !{i32 786445, metadata !9, metadata !303, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!306 = metadata !{i32 786445, metadata !9, metadata !303, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!307 = metadata !{i32 786445, metadata !9, metadata !303, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !308} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!308 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!309 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !20} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!310 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !198} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!311 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !198} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!312 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !198} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!313 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !20} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!314 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !198} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!315 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !198} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!316 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !198} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!317 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !318} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!318 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !319} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!319 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!320 = metadata !{metadata !321, metadata !20}
!321 = metadata !{i32 786454, metadata !9, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!322 = metadata !{i32 786445, metadata !9, metadata !154, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !323} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!323 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !20, metadata !324, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!324 = metadata !{metadata !41, metadata !46}
!325 = metadata !{metadata !326}
!326 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!327 = metadata !{i32 786445, metadata !9, metadata !146, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !20} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!328 = metadata !{i32 786445, metadata !9, metadata !146, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !329} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!329 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!330 = metadata !{i32 786445, metadata !9, metadata !146, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !329} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!331 = metadata !{i32 786445, metadata !9, metadata !146, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !329} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!332 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !143, i32 559, metadata !144, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!333 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !143, i32 560, metadata !144, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!334 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !143, i32 561, metadata !144, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!335 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !143, i32 562, metadata !144, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!336 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !143, i32 565, metadata !337, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!337 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!338 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !143, i32 566, metadata !339, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!339 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !337} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!340 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !143, i32 567, metadata !341, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!341 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !198} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!342 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !143, i32 569, metadata !191, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!343 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !143, i32 570, metadata !191, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!344 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !143, i32 572, metadata !20, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!345 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !143, i32 572, metadata !20, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!346 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !143, i32 573, metadata !347, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!347 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !348} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!348 = metadata !{i32 786454, metadata !4, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !349} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!349 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !350, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!350 = metadata !{metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !361, metadata !362, metadata !363, metadata !364, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384}
!351 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !321} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!352 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !191} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!353 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !191} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!354 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !321} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!355 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !321} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!356 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !321} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!357 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !358} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!358 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !20, metadata !359, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!359 = metadata !{metadata !360}
!360 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!361 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !321} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!362 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !191} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!363 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !191} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!364 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !365} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!365 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !191, metadata !359, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!366 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !365} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!367 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !365} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!368 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !321} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!369 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !191} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!370 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !191} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!371 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !184} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!372 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !20} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!373 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !20} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!374 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !321} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!375 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !191} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!376 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !20} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!377 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !20} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!378 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !20} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!379 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !20} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!380 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !20} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!381 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !321} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!382 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !321} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!383 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !321} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!384 = metadata !{i32 786445, metadata !4, metadata !349, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !321} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!385 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !143, i32 574, metadata !386, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!386 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !387} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!387 = metadata !{i32 786454, metadata !9, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !388} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!388 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !389, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!389 = metadata !{metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427}
!390 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !321} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!391 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !191} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!392 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !321} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!393 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !321} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!394 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !321} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!395 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !321} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!396 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !191} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!397 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !191} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!398 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !191} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!399 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !321} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!400 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !358} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!401 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !191} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!402 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !191} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!403 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !191} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!404 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !191} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!405 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !191} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!406 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !321} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!407 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !20} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!408 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !20} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!409 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !191} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!410 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !411} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!411 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !20, metadata !412, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!412 = metadata !{metadata !413}
!413 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!414 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !191} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!415 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !321} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!416 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !191} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!417 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !191} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!418 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !321} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!419 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !321} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!420 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !321} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!421 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !321} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!422 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !191} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!423 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !191} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!424 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !191} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!425 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !191} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!426 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !321} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!427 = metadata !{i32 786445, metadata !4, metadata !388, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !428} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!428 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !429} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!429 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !430, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!430 = metadata !{metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479}
!431 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !321} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!432 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !191} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!433 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !191} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!434 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !191} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!435 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !321} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!436 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !321} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!437 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !321} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!438 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !191} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!439 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !321} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!440 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !321} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!441 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !191} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!442 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !191} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!443 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !191} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!444 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !321} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!445 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !191} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!446 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !191} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!447 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !321} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!448 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !191} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!449 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !191} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!450 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !321} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!451 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !321} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!452 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !453} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!453 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !454} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!454 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !455, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!455 = metadata !{metadata !456, metadata !457, metadata !458, metadata !459, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468}
!456 = metadata !{i32 786445, metadata !4, metadata !454, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !191} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!457 = metadata !{i32 786445, metadata !4, metadata !454, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !191} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!458 = metadata !{i32 786445, metadata !4, metadata !454, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !191} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!459 = metadata !{i32 786445, metadata !4, metadata !454, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !460} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!460 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !191, metadata !461, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!461 = metadata !{metadata !462}
!462 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!463 = metadata !{i32 786445, metadata !4, metadata !454, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !460} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!464 = metadata !{i32 786445, metadata !4, metadata !454, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !460} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!465 = metadata !{i32 786445, metadata !4, metadata !454, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !191} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!466 = metadata !{i32 786445, metadata !4, metadata !454, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !191} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!467 = metadata !{i32 786445, metadata !4, metadata !454, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !191} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!468 = metadata !{i32 786445, metadata !4, metadata !454, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !191} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!469 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !321} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!470 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !453} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!471 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !321} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!472 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !321} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!473 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !321} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!474 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !191} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!475 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !191} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!476 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !191} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!477 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !191} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!478 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !191} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!479 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !191} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!480 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !143, i32 578, metadata !20, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!481 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !143, i32 579, metadata !20, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!482 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !143, i32 583, metadata !483, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!483 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !341} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!484 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !143, i32 584, metadata !483, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!485 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !143, i32 585, metadata !486, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!486 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !483} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!487 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !143, i32 586, metadata !20, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!488 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !143, i32 587, metadata !20, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!489 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !143, i32 588, metadata !20, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!490 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !143, i32 589, metadata !20, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!491 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !143, i32 592, metadata !337, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!492 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !143, i32 593, metadata !337, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!493 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !143, i32 595, metadata !339, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!494 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !143, i32 596, metadata !339, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!495 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !143, i32 598, metadata !337, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!496 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !143, i32 599, metadata !339, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!497 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !143, i32 601, metadata !337, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!498 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !143, i32 602, metadata !339, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!499 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !143, i32 604, metadata !500, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!500 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !501} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!501 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !502} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!502 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !503} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!503 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!504 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !143, i32 605, metadata !501, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!505 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !143, i32 608, metadata !506, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!506 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!507 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !143, i32 609, metadata !506, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!508 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !143, i32 610, metadata !20, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!509 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !143, i32 612, metadata !20, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!510 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !143, i32 612, metadata !20, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!511 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !143, i32 612, metadata !20, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!512 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !143, i32 613, metadata !20, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!513 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !143, i32 613, metadata !20, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!514 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !143, i32 613, metadata !20, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!515 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !143, i32 614, metadata !20, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!516 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !143, i32 617, metadata !517, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!517 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !518, metadata !519, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!518 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!519 = metadata !{metadata !520}
!520 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!521 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !143, i32 620, metadata !522, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!522 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !20, metadata !523, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!523 = metadata !{metadata !524, metadata !524}
!524 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!525 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !143, i32 620, metadata !522, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!526 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !143, i32 620, metadata !522, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!527 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !143, i32 621, metadata !522, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!528 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !143, i32 621, metadata !522, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!529 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !143, i32 621, metadata !522, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!530 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !143, i32 622, metadata !531, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!531 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !20, metadata !532, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!532 = metadata !{metadata !41, metadata !524, metadata !524}
!533 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !143, i32 623, metadata !534, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!534 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !20, metadata !535, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!535 = metadata !{metadata !46, metadata !270, metadata !270}
!536 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !143, i32 623, metadata !534, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!537 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !143, i32 624, metadata !534, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!538 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !143, i32 624, metadata !534, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!539 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !143, i32 625, metadata !540, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!540 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !20, metadata !541, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!541 = metadata !{metadata !270, metadata !270}
!542 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !143, i32 625, metadata !543, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!543 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !20, metadata !544, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!544 = metadata !{metadata !524}
!545 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !143, i32 1201, metadata !546, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!546 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !547} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!547 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !548} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!548 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !549, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!549 = metadata !{metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555}
!550 = metadata !{i32 786445, metadata !9, metadata !548, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!551 = metadata !{i32 786445, metadata !9, metadata !548, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!552 = metadata !{i32 786445, metadata !9, metadata !548, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!553 = metadata !{i32 786445, metadata !9, metadata !548, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!554 = metadata !{i32 786445, metadata !9, metadata !548, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!555 = metadata !{i32 786445, metadata !9, metadata !548, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!556 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !143, i32 1202, metadata !557, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!557 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !558} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!558 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !559} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!559 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !560, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!560 = metadata !{metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !579, metadata !580, metadata !584, metadata !585, metadata !586, metadata !587, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595}
!561 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!562 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !522} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!563 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !522} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!564 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !522} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!565 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !486} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!566 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !483} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!567 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !20} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!568 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !20} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!569 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !570} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!570 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !20, metadata !269, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!571 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !570} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!572 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !341} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!573 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !543} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!574 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !20} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!575 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !576} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!576 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !577} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!577 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !578} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!578 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!579 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !20} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!580 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !581} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!581 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !582} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!582 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !583} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!583 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !500} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!584 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !581} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!585 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !581} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!586 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !581} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!587 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !588} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!588 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !503, metadata !535, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!589 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !20} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!590 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !20} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!591 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !20} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!592 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !20} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!593 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !20} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!594 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !20} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!595 = metadata !{i32 786445, metadata !9, metadata !559, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !20} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!596 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !143, i32 1203, metadata !558, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!597 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !143, i32 1203, metadata !558, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!598 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !143, i32 1204, metadata !558, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!599 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !143, i32 1204, metadata !558, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!600 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !143, i32 1230, metadata !601, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!601 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !602} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!602 = metadata !{i32 786454, metadata !9, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !603} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!603 = metadata !{i32 786451, metadata !604, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !605, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!604 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!605 = metadata !{metadata !606, metadata !607, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !627, metadata !628, metadata !629, metadata !630, metadata !632, metadata !633, metadata !635, metadata !639, metadata !641, metadata !643, metadata !644, metadata !645, metadata !646, metadata !647, metadata !649, metadata !650}
!606 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!607 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!608 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !518} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!609 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!610 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!611 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!612 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!613 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!614 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!615 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!616 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!617 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!618 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !608} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!619 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !620} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!620 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !621} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!621 = metadata !{i32 786451, metadata !604, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !622, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!622 = metadata !{metadata !623, metadata !624, metadata !626}
!623 = metadata !{i32 786445, metadata !604, metadata !621, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !620} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!624 = metadata !{i32 786445, metadata !604, metadata !621, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !625} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!625 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !603} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!626 = metadata !{i32 786445, metadata !604, metadata !621, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!627 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !625} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!628 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !20} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!629 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !20} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!630 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !631} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!631 = metadata !{i32 786454, metadata !604, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !578} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!632 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !36} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!633 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !634} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!634 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!635 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !636} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!636 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !518, metadata !637, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!637 = metadata !{metadata !638}
!638 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!639 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !640} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!640 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!641 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !642} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!642 = metadata !{i32 786454, metadata !604, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !578} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!643 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !640} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!644 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !640} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!645 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !640} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!646 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !640} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!647 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !648} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!648 = metadata !{i32 786454, metadata !604, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !253} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!649 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !20} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!650 = metadata !{i32 786445, metadata !604, metadata !603, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !651} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!651 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !518, metadata !652, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!652 = metadata !{metadata !653}
!653 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!654 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !143, i32 1231, metadata !601, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!655 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !143, i32 1232, metadata !601, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!656 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !143, i32 1233, metadata !20, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!657 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !143, i32 1234, metadata !20, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!658 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !143, i32 1237, metadata !659, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!659 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !20, metadata !652, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!660 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !143, i32 1238, metadata !659, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!661 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !143, i32 1239, metadata !659, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!662 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !143, i32 1240, metadata !659, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!663 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !143, i32 1241, metadata !659, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!664 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !143, i32 1242, metadata !659, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!665 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !143, i32 1456, metadata !20, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!666 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !143, i32 1465, metadata !20, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!667 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !143, i32 1466, metadata !20, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!668 = metadata !{i32 28, i32 0, metadata !16, null}
!669 = metadata !{double 0.000000e+00}
!670 = metadata !{i32 32, i32 0, metadata !16, null}
!671 = metadata !{i32 39, i32 0, metadata !16, null}
!672 = metadata !{i32 41, i32 0, metadata !16, null}
!673 = metadata !{metadata !"any pointer", metadata !674}
!674 = metadata !{metadata !"omnipotent char", metadata !675}
!675 = metadata !{metadata !"Simple C/C++ TBAA"}
!676 = metadata !{metadata !"int", metadata !674}
!677 = metadata !{i32 42, i32 0, metadata !16, null}
!678 = metadata !{i32 43, i32 0, metadata !16, null}
!679 = metadata !{i32 48, i32 0, metadata !16, null}
!680 = metadata !{i32 49, i32 0, metadata !16, null}
!681 = metadata !{i32 50, i32 0, metadata !16, null}
!682 = metadata !{i32 51, i32 0, metadata !16, null}
!683 = metadata !{i32 52, i32 0, metadata !16, null}
!684 = metadata !{i32 53, i32 0, metadata !16, null}
!685 = metadata !{i32 56, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !1, metadata !16, i32 56, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!687 = metadata !{i32 63, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !689, i32 61, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!689 = metadata !{i32 786443, metadata !1, metadata !690, i32 60, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!690 = metadata !{i32 786443, metadata !1, metadata !691, i32 59, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!691 = metadata !{i32 786443, metadata !1, metadata !692, i32 58, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!692 = metadata !{i32 786443, metadata !1, metadata !686, i32 57, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!693 = metadata !{i32 64, i32 0, metadata !688, null}
!694 = metadata !{i32 58, i32 0, metadata !691, null} ; [ DW_TAG_imported_module ]
!695 = metadata !{i32 70, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !16, i32 70, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!697 = metadata !{i32 72, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !699, i32 72, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!699 = metadata !{i32 786443, metadata !1, metadata !696, i32 71, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!700 = metadata !{i32 74, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !698, i32 73, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!702 = metadata !{i32 62, i32 0, metadata !688, null}
!703 = metadata !{i32 65, i32 0, metadata !688, null}
!704 = metadata !{i32 60, i32 0, metadata !689, null}
!705 = metadata !{i32 93, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !1, metadata !707, i32 81, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!707 = metadata !{i32 786443, metadata !1, metadata !708, i32 80, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!708 = metadata !{i32 786443, metadata !1, metadata !709, i32 79, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!709 = metadata !{i32 786443, metadata !1, metadata !16, i32 78, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!710 = metadata !{i32 96, i32 0, metadata !711, null}
!711 = metadata !{i32 786443, metadata !1, metadata !706, i32 94, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!712 = metadata !{i32 125, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !714, i32 124, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!714 = metadata !{i32 786443, metadata !1, metadata !715, i32 123, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!715 = metadata !{i32 786443, metadata !1, metadata !716, i32 122, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!716 = metadata !{i32 786443, metadata !1, metadata !706, i32 121, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!717 = metadata !{i32 78, i32 0, metadata !709, null}
!718 = metadata !{metadata !"short", metadata !674}
!719 = metadata !{i32 80, i32 0, metadata !707, null}
!720 = metadata !{i32 84, i32 0, metadata !706, null}
!721 = metadata !{i32 88, i32 0, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !706, i32 88, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!723 = metadata !{i32 121, i32 0, metadata !716, null}
!724 = metadata !{i32 85, i32 0, metadata !706, null}
!725 = metadata !{i32 90, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !722, i32 89, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!727 = metadata !{i32 95, i32 0, metadata !711, null}
!728 = metadata !{i32 98, i32 0, metadata !711, null}
!729 = metadata !{i32 99, i32 0, metadata !711, null}
!730 = metadata !{i32 100, i32 0, metadata !711, null}
!731 = metadata !{i32 104, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !706, i32 103, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!733 = metadata !{i32 105, i32 0, metadata !732, null}
!734 = metadata !{i32 106, i32 0, metadata !732, null}
!735 = metadata !{i32 111, i32 0, metadata !706, null}
!736 = metadata !{i32 112, i32 0, metadata !706, null}
!737 = metadata !{i32 117, i32 0, metadata !738, null}
!738 = metadata !{i32 786443, metadata !1, metadata !706, i32 117, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!739 = metadata !{i32 119, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !738, i32 118, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!741 = metadata !{i32 123, i32 0, metadata !714, null}
!742 = metadata !{i32 133, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !744, i32 133, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!744 = metadata !{i32 786443, metadata !1, metadata !745, i32 132, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!745 = metadata !{i32 786443, metadata !1, metadata !16, i32 131, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!746 = metadata !{i32 137, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !748, i32 136, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!748 = metadata !{i32 786443, metadata !1, metadata !749, i32 135, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!749 = metadata !{i32 786443, metadata !1, metadata !743, i32 134, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!750 = metadata !{i32 138, i32 0, metadata !747, null}
!751 = metadata !{i32 135, i32 0, metadata !748, null}
!752 = metadata !{i32 131, i32 0, metadata !745, null}
!753 = metadata !{i32 144, i32 0, metadata !16, null}
!754 = metadata !{i32 157, i32 0, metadata !49, null}
!755 = metadata !{i32 166, i32 0, metadata !49, null}
!756 = metadata !{i32 167, i32 0, metadata !49, null}
!757 = metadata !{i32 168, i32 0, metadata !49, null}
!758 = metadata !{i32 169, i32 0, metadata !49, null}
!759 = metadata !{i32 170, i32 0, metadata !49, null}
!760 = metadata !{i32 175, i32 0, metadata !49, null}
!761 = metadata !{i32 179, i32 0, metadata !762, null}
!762 = metadata !{i32 786443, metadata !1, metadata !49, i32 176, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!763 = metadata !{i32 182, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !49, i32 181, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!765 = metadata !{i32 178, i32 0, metadata !762, null}
!766 = metadata !{i32 186, i32 0, metadata !49, null}
!767 = metadata !{i32 187, i32 0, metadata !49, null}
!768 = metadata !{i32 188, i32 0, metadata !49, null}
!769 = metadata !{i32 189, i32 0, metadata !49, null}
!770 = metadata !{i32 190, i32 0, metadata !49, null}
!771 = metadata !{i32 193, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !49, i32 193, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!773 = metadata !{i32 199, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !775, i32 198, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!775 = metadata !{i32 786443, metadata !1, metadata !776, i32 197, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!776 = metadata !{i32 786443, metadata !1, metadata !777, i32 196, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!777 = metadata !{i32 786443, metadata !1, metadata !778, i32 195, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!778 = metadata !{i32 786443, metadata !1, metadata !772, i32 194, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!779 = metadata !{i32 200, i32 0, metadata !774, null}
!780 = metadata !{i32 195, i32 0, metadata !777, null}
!781 = metadata !{i32 207, i32 0, metadata !86, null}
!782 = metadata !{i32 212, i32 0, metadata !83, null}
!783 = metadata !{i32 213, i32 0, metadata !83, null}
!784 = metadata !{i32 209, i32 0, metadata !84, null}
!785 = metadata !{i32 201, i32 0, metadata !774, null}
!786 = metadata !{i32 202, i32 0, metadata !774, null}
!787 = metadata !{i32 197, i32 0, metadata !775, null}
!788 = metadata !{i32 214, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !83, i32 214, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!790 = metadata !{i32 217, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !789, i32 215, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!792 = metadata !{i32 226, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !791, i32 225, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!794 = metadata !{i32 219, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !1, metadata !791, i32 218, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!796 = metadata !{i32 220, i32 0, metadata !795, null}
!797 = metadata !{i32 223, i32 0, metadata !795, null}
!798 = metadata !{i32 227, i32 0, metadata !793, null}
!799 = metadata !{i32 228, i32 0, metadata !793, null}
!800 = metadata !{i32 229, i32 0, metadata !793, null}
!801 = metadata !{i32 230, i32 0, metadata !793, null}
!802 = metadata !{i32 231, i32 0, metadata !793, null}
!803 = metadata !{i32 245, i32 0, metadata !49, null}
!804 = metadata !{i32 248, i32 0, metadata !805, null}
!805 = metadata !{i32 786443, metadata !1, metadata !806, i32 248, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!806 = metadata !{i32 786443, metadata !1, metadata !49, i32 246, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!807 = metadata !{i32 297, i32 0, metadata !808, null}
!808 = metadata !{i32 786443, metadata !1, metadata !809, i32 297, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!809 = metadata !{i32 786443, metadata !1, metadata !49, i32 296, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!810 = metadata !{i32 299, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !812, i32 299, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!812 = metadata !{i32 786443, metadata !1, metadata !808, i32 298, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!813 = metadata !{i32 301, i32 0, metadata !814, null}
!814 = metadata !{i32 786443, metadata !1, metadata !811, i32 300, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!815 = metadata !{i32 255, i32 0, metadata !816, null}
!816 = metadata !{i32 786443, metadata !1, metadata !817, i32 253, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!817 = metadata !{i32 786443, metadata !1, metadata !818, i32 252, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!818 = metadata !{i32 786443, metadata !1, metadata !819, i32 251, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!819 = metadata !{i32 786443, metadata !1, metadata !820, i32 250, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!820 = metadata !{i32 786443, metadata !1, metadata !805, i32 249, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!821 = metadata !{i32 250, i32 0, metadata !819, null}
!822 = metadata !{i32 256, i32 0, metadata !816, null}
!823 = metadata !{i32 252, i32 0, metadata !817, null}
!824 = metadata !{i32 263, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !826, i32 263, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!826 = metadata !{i32 786443, metadata !1, metadata !827, i32 262, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!827 = metadata !{i32 786443, metadata !1, metadata !806, i32 261, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!828 = metadata !{i32 265, i32 0, metadata !829, null}
!829 = metadata !{i32 786443, metadata !1, metadata !825, i32 264, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!830 = metadata !{i32 268, i32 0, metadata !829, null}
!831 = metadata !{i32 273, i32 0, metadata !832, null}
!832 = metadata !{i32 786443, metadata !1, metadata !806, i32 273, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!833 = metadata !{i32 275, i32 0, metadata !834, null}
!834 = metadata !{i32 786443, metadata !1, metadata !835, i32 275, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!835 = metadata !{i32 786443, metadata !1, metadata !832, i32 274, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!836 = metadata !{i32 278, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !838, i32 278, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!838 = metadata !{i32 786443, metadata !1, metadata !834, i32 276, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!839 = metadata !{i32 288, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !1, metadata !841, i32 287, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!841 = metadata !{i32 786443, metadata !1, metadata !842, i32 286, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!842 = metadata !{i32 786443, metadata !1, metadata !843, i32 285, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!843 = metadata !{i32 786443, metadata !1, metadata !838, i32 284, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!844 = metadata !{i32 289, i32 0, metadata !840, null}
!845 = metadata !{i32 266, i32 0, metadata !829, null}
!846 = metadata !{i32 267, i32 0, metadata !829, null}
!847 = metadata !{i32 269, i32 0, metadata !829, null}
!848 = metadata !{i32 270, i32 0, metadata !829, null}
!849 = metadata !{i32 261, i32 0, metadata !827, null}
!850 = metadata !{i32 284, i32 0, metadata !843, null}
!851 = metadata !{i32 280, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !1, metadata !837, i32 279, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!853 = metadata !{i32 281, i32 0, metadata !852, null}
!854 = metadata !{i32 286, i32 0, metadata !841, null}
!855 = metadata !{i32 320, i32 0, metadata !856, null}
!856 = metadata !{i32 786443, metadata !1, metadata !857, i32 308, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!857 = metadata !{i32 786443, metadata !1, metadata !858, i32 307, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!858 = metadata !{i32 786443, metadata !1, metadata !859, i32 306, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!859 = metadata !{i32 786443, metadata !1, metadata !809, i32 305, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!860 = metadata !{i32 349, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !862, i32 348, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!862 = metadata !{i32 786443, metadata !1, metadata !863, i32 347, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!863 = metadata !{i32 786443, metadata !1, metadata !864, i32 346, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!864 = metadata !{i32 786443, metadata !1, metadata !856, i32 345, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!865 = metadata !{i32 305, i32 0, metadata !859, null}
!866 = metadata !{i32 307, i32 0, metadata !857, null}
!867 = metadata !{i32 311, i32 0, metadata !856, null}
!868 = metadata !{i32 315, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !856, i32 315, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!870 = metadata !{i32 345, i32 0, metadata !864, null}
!871 = metadata !{i32 312, i32 0, metadata !856, null}
!872 = metadata !{i32 317, i32 0, metadata !873, null}
!873 = metadata !{i32 786443, metadata !1, metadata !869, i32 316, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!874 = metadata !{i32 319, i32 0, metadata !856, null}
!875 = metadata !{i32 323, i32 0, metadata !856, null}
!876 = metadata !{i32 325, i32 0, metadata !877, null}
!877 = metadata !{i32 786443, metadata !1, metadata !856, i32 324, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!878 = metadata !{i32 327, i32 0, metadata !856, null}
!879 = metadata !{i32 332, i32 0, metadata !856, null}
!880 = metadata !{i32 333, i32 0, metadata !856, null}
!881 = metadata !{i32 334, i32 0, metadata !856, null}
!882 = metadata !{i32 335, i32 0, metadata !856, null}
!883 = metadata !{i32 336, i32 0, metadata !856, null}
!884 = metadata !{i32 337, i32 0, metadata !856, null}
!885 = metadata !{i32 341, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !856, i32 341, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!887 = metadata !{i32 343, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !886, i32 342, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!889 = metadata !{i32 347, i32 0, metadata !862, null}
!890 = metadata !{i32 356, i32 0, metadata !809, null}
!891 = metadata !{i32 358, i32 0, metadata !892, null}
!892 = metadata !{i32 786443, metadata !1, metadata !893, i32 358, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!893 = metadata !{i32 786443, metadata !1, metadata !809, i32 357, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!894 = metadata !{i32 360, i32 0, metadata !895, null}
!895 = metadata !{i32 786443, metadata !1, metadata !896, i32 360, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!896 = metadata !{i32 786443, metadata !1, metadata !892, i32 359, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!897 = metadata !{i32 364, i32 0, metadata !898, null}
!898 = metadata !{i32 786443, metadata !1, metadata !899, i32 363, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!899 = metadata !{i32 786443, metadata !1, metadata !900, i32 362, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!900 = metadata !{i32 786443, metadata !1, metadata !895, i32 361, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!901 = metadata !{i32 365, i32 0, metadata !898, null}
!902 = metadata !{i32 386, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !809, i32 386, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!904 = metadata !{i32 393, i32 0, metadata !905, null}
!905 = metadata !{i32 786443, metadata !1, metadata !906, i32 391, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!906 = metadata !{i32 786443, metadata !1, metadata !907, i32 390, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!907 = metadata !{i32 786443, metadata !1, metadata !908, i32 389, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!908 = metadata !{i32 786443, metadata !1, metadata !909, i32 388, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!909 = metadata !{i32 786443, metadata !1, metadata !903, i32 387, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!910 = metadata !{i32 394, i32 0, metadata !905, null}
!911 = metadata !{i32 388, i32 0, metadata !908, null}
!912 = metadata !{i32 362, i32 0, metadata !899, null}
!913 = metadata !{i32 375, i32 0, metadata !914, null}
!914 = metadata !{i32 786443, metadata !1, metadata !915, i32 375, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!915 = metadata !{i32 786443, metadata !1, metadata !916, i32 374, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!916 = metadata !{i32 786443, metadata !1, metadata !917, i32 373, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!917 = metadata !{i32 786443, metadata !1, metadata !809, i32 372, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!918 = metadata !{i32 377, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !914, i32 376, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!920 = metadata !{i32 380, i32 0, metadata !919, null}
!921 = metadata !{i32 378, i32 0, metadata !919, null}
!922 = metadata !{i32 379, i32 0, metadata !919, null}
!923 = metadata !{i32 381, i32 0, metadata !919, null}
!924 = metadata !{i32 382, i32 0, metadata !919, null}
!925 = metadata !{i32 373, i32 0, metadata !916, null}
!926 = metadata !{i32 390, i32 0, metadata !906, null}
!927 = metadata !{i32 404, i32 0, metadata !49, null}
!928 = metadata !{i32 414, i32 0, metadata !88, null}
!929 = metadata !{i32 418, i32 0, metadata !88, null}
!930 = metadata !{i32 427, i32 0, metadata !88, null}
!931 = metadata !{i32 428, i32 0, metadata !88, null}
!932 = metadata !{i32 429, i32 0, metadata !88, null}
!933 = metadata !{i32 431, i32 0, metadata !88, null}
!934 = metadata !{i32 434, i32 0, metadata !88, null}
!935 = metadata !{i32 435, i32 0, metadata !88, null}
!936 = metadata !{i32 436, i32 0, metadata !88, null}
!937 = metadata !{i32 437, i32 0, metadata !88, null}
!938 = metadata !{i32 32}
!939 = metadata !{i32 438, i32 0, metadata !88, null}
!940 = metadata !{i32 439, i32 0, metadata !88, null}
!941 = metadata !{i32 442, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !88, i32 442, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!943 = metadata !{i32 449, i32 0, metadata !944, null}
!944 = metadata !{i32 786443, metadata !1, metadata !945, i32 447, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!945 = metadata !{i32 786443, metadata !1, metadata !946, i32 446, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!946 = metadata !{i32 786443, metadata !1, metadata !947, i32 445, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!947 = metadata !{i32 786443, metadata !1, metadata !948, i32 444, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!948 = metadata !{i32 786443, metadata !1, metadata !942, i32 443, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!949 = metadata !{i32 450, i32 0, metadata !944, null}
!950 = metadata !{i32 444, i32 0, metadata !947, null}
!951 = metadata !{i32 456, i32 0, metadata !952, null}
!952 = metadata !{i32 786443, metadata !1, metadata !88, i32 456, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!953 = metadata !{i32 458, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !955, i32 458, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!955 = metadata !{i32 786443, metadata !1, metadata !952, i32 457, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!956 = metadata !{i32 460, i32 0, metadata !957, null}
!957 = metadata !{i32 786443, metadata !1, metadata !954, i32 459, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!958 = metadata !{i32 451, i32 0, metadata !944, null}
!959 = metadata !{i32 446, i32 0, metadata !945, null}
!960 = metadata !{i32 448, i32 0, metadata !944, null}
!961 = metadata !{i32 479, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !1, metadata !963, i32 467, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!963 = metadata !{i32 786443, metadata !1, metadata !964, i32 466, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!964 = metadata !{i32 786443, metadata !1, metadata !965, i32 465, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!965 = metadata !{i32 786443, metadata !1, metadata !88, i32 464, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!966 = metadata !{i32 482, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !962, i32 480, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!968 = metadata !{i32 464, i32 0, metadata !965, null}
!969 = metadata !{i32 466, i32 0, metadata !963, null}
!970 = metadata !{i32 470, i32 0, metadata !962, null}
!971 = metadata !{i32 474, i32 0, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !962, i32 474, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!973 = metadata !{i32 476, i32 0, metadata !974, null}
!974 = metadata !{i32 786443, metadata !1, metadata !972, i32 475, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!975 = metadata !{i32 481, i32 0, metadata !967, null}
!976 = metadata !{i32 484, i32 0, metadata !967, null}
!977 = metadata !{i32 485, i32 0, metadata !967, null}
!978 = metadata !{i32 486, i32 0, metadata !967, null}
!979 = metadata !{i32 490, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !1, metadata !962, i32 489, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!981 = metadata !{i32 492, i32 0, metadata !980, null}
!982 = metadata !{i32 493, i32 0, metadata !980, null}
!983 = metadata !{i32 498, i32 0, metadata !962, null}
!984 = metadata !{i32 499, i32 0, metadata !962, null}
!985 = metadata !{i32 506, i32 0, metadata !986, null}
!986 = metadata !{i32 786443, metadata !1, metadata !987, i32 506, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!987 = metadata !{i32 786443, metadata !1, metadata !988, i32 505, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!988 = metadata !{i32 786443, metadata !1, metadata !88, i32 504, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!989 = metadata !{i32 508, i32 0, metadata !990, null}
!990 = metadata !{i32 786443, metadata !1, metadata !991, i32 508, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!991 = metadata !{i32 786443, metadata !1, metadata !986, i32 507, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!992 = metadata !{i32 510, i32 0, metadata !993, null}
!993 = metadata !{i32 786443, metadata !1, metadata !990, i32 509, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!994 = metadata !{i32 504, i32 0, metadata !988, null}
!995 = metadata !{i32 522, i32 0, metadata !88, null}
!996 = metadata !{i32 531, i32 0, metadata !109, null}
!997 = metadata !{i32 536, i32 0, metadata !109, null}
!998 = metadata !{i32 547, i32 0, metadata !109, null}
!999 = metadata !{i32 548, i32 0, metadata !109, null}
!1000 = metadata !{i32 549, i32 0, metadata !109, null}
!1001 = metadata !{i32 550, i32 0, metadata !109, null}
!1002 = metadata !{i32 554, i32 0, metadata !109, null}
!1003 = metadata !{i32 556, i32 0, metadata !109, null}
!1004 = metadata !{i32 557, i32 0, metadata !109, null}
!1005 = metadata !{i32 558, i32 0, metadata !109, null}
!1006 = metadata !{i32 559, i32 0, metadata !109, null}
!1007 = metadata !{i32 560, i32 0, metadata !109, null}
!1008 = metadata !{i32 561, i32 0, metadata !109, null}
!1009 = metadata !{i32 564, i32 0, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !1, metadata !109, i32 564, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1011 = metadata !{i32 570, i32 0, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !1, metadata !1013, i32 569, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1013 = metadata !{i32 786443, metadata !1, metadata !1014, i32 568, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1014 = metadata !{i32 786443, metadata !1, metadata !1015, i32 567, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1015 = metadata !{i32 786443, metadata !1, metadata !1016, i32 566, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1016 = metadata !{i32 786443, metadata !1, metadata !1010, i32 565, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1017 = metadata !{i32 571, i32 0, metadata !1012, null}
!1018 = metadata !{i32 566, i32 0, metadata !1015, null}
!1019 = metadata !{i32 578, i32 0, metadata !139, null}
!1020 = metadata !{i32 580, i32 0, metadata !137, null}
!1021 = metadata !{i32 583, i32 0, metadata !136, null}
!1022 = metadata !{i32 584, i32 0, metadata !136, null}
!1023 = metadata !{i32 572, i32 0, metadata !1012, null}
!1024 = metadata !{i32 568, i32 0, metadata !1013, null}
!1025 = metadata !{i32 573, i32 0, metadata !1012, null}
!1026 = metadata !{i32 585, i32 0, metadata !1027, null}
!1027 = metadata !{i32 786443, metadata !1, metadata !136, i32 585, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1028 = metadata !{i32 588, i32 0, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !1, metadata !1027, i32 586, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1030 = metadata !{i32 597, i32 0, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !1, metadata !1029, i32 596, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1032 = metadata !{i32 590, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !1029, i32 589, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1034 = metadata !{i32 591, i32 0, metadata !1033, null}
!1035 = metadata !{i32 594, i32 0, metadata !1033, null}
!1036 = metadata !{i32 598, i32 0, metadata !1031, null}
!1037 = metadata !{i32 599, i32 0, metadata !1031, null}
!1038 = metadata !{i32 600, i32 0, metadata !1031, null}
!1039 = metadata !{i32 601, i32 0, metadata !1031, null}
!1040 = metadata !{i32 602, i32 0, metadata !1031, null}
!1041 = metadata !{i32 616, i32 0, metadata !109, null}
!1042 = metadata !{i32 619, i32 0, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !1, metadata !1044, i32 619, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1044 = metadata !{i32 786443, metadata !1, metadata !109, i32 617, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1045 = metadata !{i32 647, i32 0, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !1, metadata !1047, i32 647, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1047 = metadata !{i32 786443, metadata !1, metadata !109, i32 646, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1048 = metadata !{i32 649, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !1050, i32 649, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1050 = metadata !{i32 786443, metadata !1, metadata !1046, i32 648, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1051 = metadata !{i32 651, i32 0, metadata !1052, null}
!1052 = metadata !{i32 786443, metadata !1, metadata !1049, i32 650, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1053 = metadata !{i32 626, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !1055, i32 624, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1055 = metadata !{i32 786443, metadata !1, metadata !1056, i32 623, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1056 = metadata !{i32 786443, metadata !1, metadata !1057, i32 622, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1057 = metadata !{i32 786443, metadata !1, metadata !1058, i32 621, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1058 = metadata !{i32 786443, metadata !1, metadata !1043, i32 620, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1059 = metadata !{i32 621, i32 0, metadata !1057, null}
!1060 = metadata !{i32 627, i32 0, metadata !1054, null}
!1061 = metadata !{i32 623, i32 0, metadata !1055, null}
!1062 = metadata !{i32 634, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1064, i32 634, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1064 = metadata !{i32 786443, metadata !1, metadata !1065, i32 633, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1065 = metadata !{i32 786443, metadata !1, metadata !1044, i32 632, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1066 = metadata !{i32 636, i32 0, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !1, metadata !1063, i32 635, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1068 = metadata !{i32 639, i32 0, metadata !1067, null}
!1069 = metadata !{i32 637, i32 0, metadata !1067, null}
!1070 = metadata !{i32 638, i32 0, metadata !1067, null}
!1071 = metadata !{i32 640, i32 0, metadata !1067, null}
!1072 = metadata !{i32 641, i32 0, metadata !1067, null}
!1073 = metadata !{i32 632, i32 0, metadata !1065, null}
!1074 = metadata !{i32 670, i32 0, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !1, metadata !1076, i32 658, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1076 = metadata !{i32 786443, metadata !1, metadata !1077, i32 657, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1077 = metadata !{i32 786443, metadata !1, metadata !1078, i32 656, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1078 = metadata !{i32 786443, metadata !1, metadata !1047, i32 655, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1079 = metadata !{i32 655, i32 0, metadata !1078, null}
!1080 = metadata !{i32 657, i32 0, metadata !1076, null}
!1081 = metadata !{i32 661, i32 0, metadata !1075, null}
!1082 = metadata !{i32 665, i32 0, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !1, metadata !1075, i32 665, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1084 = metadata !{i32 667, i32 0, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !1, metadata !1083, i32 666, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1086 = metadata !{i32 669, i32 0, metadata !1075, null}
!1087 = metadata !{i32 673, i32 0, metadata !1075, null}
!1088 = metadata !{i32 675, i32 0, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !1, metadata !1075, i32 674, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1090 = metadata !{i32 677, i32 0, metadata !1075, null}
!1091 = metadata !{i32 680, i32 0, metadata !1075, null}
!1092 = metadata !{i32 681, i32 0, metadata !1075, null}
!1093 = metadata !{i32 682, i32 0, metadata !1075, null}
!1094 = metadata !{i32 683, i32 0, metadata !1075, null}
!1095 = metadata !{i32 684, i32 0, metadata !1075, null}
!1096 = metadata !{i32 685, i32 0, metadata !1075, null}
!1097 = metadata !{i32 690, i32 0, metadata !1047, null}
!1098 = metadata !{i32 692, i32 0, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !1, metadata !1100, i32 692, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1100 = metadata !{i32 786443, metadata !1, metadata !1047, i32 691, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1101 = metadata !{i32 694, i32 0, metadata !1102, null}
!1102 = metadata !{i32 786443, metadata !1, metadata !1103, i32 694, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1103 = metadata !{i32 786443, metadata !1, metadata !1099, i32 693, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1104 = metadata !{i32 698, i32 0, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !1, metadata !1106, i32 697, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1106 = metadata !{i32 786443, metadata !1, metadata !1107, i32 696, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1107 = metadata !{i32 786443, metadata !1, metadata !1102, i32 695, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1108 = metadata !{i32 699, i32 0, metadata !1105, null}
!1109 = metadata !{i32 719, i32 0, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1, metadata !1047, i32 719, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1111 = metadata !{i32 726, i32 0, metadata !1112, null}
!1112 = metadata !{i32 786443, metadata !1, metadata !1113, i32 724, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1113 = metadata !{i32 786443, metadata !1, metadata !1114, i32 723, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1114 = metadata !{i32 786443, metadata !1, metadata !1115, i32 722, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1115 = metadata !{i32 786443, metadata !1, metadata !1116, i32 721, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1116 = metadata !{i32 786443, metadata !1, metadata !1110, i32 720, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1117 = metadata !{i32 727, i32 0, metadata !1112, null}
!1118 = metadata !{i32 721, i32 0, metadata !1115, null}
!1119 = metadata !{i32 696, i32 0, metadata !1106, null}
!1120 = metadata !{i32 708, i32 0, metadata !1121, null}
!1121 = metadata !{i32 786443, metadata !1, metadata !1122, i32 708, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1122 = metadata !{i32 786443, metadata !1, metadata !1123, i32 707, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1123 = metadata !{i32 786443, metadata !1, metadata !1124, i32 706, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1124 = metadata !{i32 786443, metadata !1, metadata !1047, i32 705, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1125 = metadata !{i32 710, i32 0, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !1, metadata !1121, i32 709, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1127 = metadata !{i32 713, i32 0, metadata !1126, null}
!1128 = metadata !{i32 711, i32 0, metadata !1126, null}
!1129 = metadata !{i32 712, i32 0, metadata !1126, null}
!1130 = metadata !{i32 714, i32 0, metadata !1126, null}
!1131 = metadata !{i32 715, i32 0, metadata !1126, null}
!1132 = metadata !{i32 706, i32 0, metadata !1123, null}
!1133 = metadata !{i32 723, i32 0, metadata !1113, null}
!1134 = metadata !{i32 740, i32 0, metadata !1135, null}
!1135 = metadata !{i32 786443, metadata !1, metadata !1136, i32 740, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1136 = metadata !{i32 786443, metadata !1, metadata !1137, i32 739, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1137 = metadata !{i32 786443, metadata !1, metadata !109, i32 738, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1138 = metadata !{i32 744, i32 0, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !1, metadata !1140, i32 743, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1140 = metadata !{i32 786443, metadata !1, metadata !1141, i32 742, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1141 = metadata !{i32 786443, metadata !1, metadata !1135, i32 741, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c]
!1142 = metadata !{i32 742, i32 0, metadata !1140, null}
!1143 = metadata !{i32 738, i32 0, metadata !1137, null}
!1144 = metadata !{i32 756, i32 0, metadata !109, null}
