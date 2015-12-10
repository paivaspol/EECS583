; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c'
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
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@img = external global %struct.ImageParameters*
@start_frame_no_in_this_IGOP = external global i32
@enc_picture = external global %struct.storable_picture*
@decs = external global %struct.Decoders*
@enc_frame_picture = external global %struct.storable_picture*
@Get_Reference_Pixel.COEF = internal unnamed_addr constant [6 x i32] [i32 1, i32 -5, i32 20, i32 20, i32 -5, i32 1], align 16
@input = external global %struct.InputParameters*
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
define void @decode_one_b8block(i32 %decoder, i32 %mbmode, i32 %b8block, i32 %b8mode, i32 %b8ref) #0 {
entry:
  %mv = alloca [2 x [4 x [4 x i32]]], align 16
  %resY_tmp = alloca [16 x [16 x i32]], align 16
  call void @llvm.dbg.value(metadata !{i32 %decoder}, i64 0, metadata !29), !dbg !756
  call void @llvm.dbg.value(metadata !{i32 %mbmode}, i64 0, metadata !30), !dbg !756
  call void @llvm.dbg.value(metadata !{i32 %b8block}, i64 0, metadata !31), !dbg !756
  call void @llvm.dbg.value(metadata !{i32 %b8mode}, i64 0, metadata !32), !dbg !756
  call void @llvm.dbg.value(metadata !{i32 %b8ref}, i64 0, metadata !33), !dbg !756
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !757, !tbaa !758
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0, !dbg !757
  %1 = load i32* %number, align 4, !dbg !757, !tbaa !761
  %2 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !757, !tbaa !761
  %sub = add i32 %1, -1, !dbg !757
  %sub1 = sub i32 %sub, %2, !dbg !757
  %num_ref_frames = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 8, !dbg !757
  %3 = load i32* %num_ref_frames, align 4, !dbg !757, !tbaa !761
  %rem = srem i32 %sub1, %3, !dbg !757
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !40), !dbg !757
  %4 = bitcast [2 x [4 x [4 x i32]]]* %mv to i8*, !dbg !762
  call void @llvm.lifetime.start(i64 128, i8* %4) #2, !dbg !762
  call void @llvm.dbg.declare(metadata !{[2 x [4 x [4 x i32]]]* %mv}, metadata !41), !dbg !762
  %5 = bitcast [16 x [16 x i32]]* %resY_tmp to i8*, !dbg !763
  call void @llvm.lifetime.start(i64 1024, i8* %5) #2, !dbg !763
  call void @llvm.dbg.declare(metadata !{[16 x [16 x i32]]* %resY_tmp}, metadata !46), !dbg !763
  %rem2 = srem i32 %b8block, 2, !dbg !764
  %shl = shl i32 %rem2, 3, !dbg !764
  call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !50), !dbg !764
  %add = add nsw i32 %shl, 8, !dbg !764
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !51), !dbg !764
  %shr = ashr exact i32 %shl, 2, !dbg !764
  call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !52), !dbg !764
  %add3 = add nsw i32 %shr, 2, !dbg !764
  call void @llvm.dbg.value(metadata !{i32 %add3}, i64 0, metadata !53), !dbg !764
  %div = sdiv i32 %b8block, 2, !dbg !765
  %shl4 = shl i32 %div, 3, !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %shl4}, i64 0, metadata !54), !dbg !765
  %add5 = add nsw i32 %shl4, 8, !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %add5}, i64 0, metadata !55), !dbg !765
  %shr6 = ashr exact i32 %shl4, 2, !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %shr6}, i64 0, metadata !56), !dbg !765
  %add7 = add nsw i32 %shr6, 2, !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %add7}, i64 0, metadata !57), !dbg !765
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !766
  %6 = load i32* %type, align 4, !dbg !766, !tbaa !761
  %cmp = icmp eq i32 %6, 2, !dbg !766
  br i1 %cmp, label %for.cond.preheader, label %if.else, !dbg !766

for.cond.preheader:                               ; preds = %entry
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33, !dbg !767
  %7 = load i32* %pix_x, align 4, !dbg !767, !tbaa !761
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34, !dbg !767
  %8 = load i32* %pix_y, align 4, !dbg !767, !tbaa !761
  %9 = load %struct.storable_picture** @enc_picture, align 8, !dbg !767, !tbaa !758
  %imgY = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 25, !dbg !767
  %10 = load i16*** %imgY, align 8, !dbg !767, !tbaa !758
  %idxprom22 = sext i32 %decoder to i64, !dbg !767
  %11 = load %struct.Decoders** @decs, align 8, !dbg !767, !tbaa !758
  %decY = getelementptr inbounds %struct.Decoders* %11, i64 0, i32 1, !dbg !767
  %12 = load i16**** %decY, align 8, !dbg !767, !tbaa !758
  %arrayidx23 = getelementptr inbounds i16*** %12, i64 %idxprom22, !dbg !767
  %13 = load i16*** %arrayidx23, align 8, !dbg !767, !tbaa !758
  %14 = shl i32 %div, 3, !dbg !772
  %15 = sext i32 %14 to i64
  %16 = sext i32 %8 to i64, !dbg !772
  %17 = shl i32 %rem2, 3, !dbg !772
  %18 = sext i32 %17 to i64
  %19 = sext i32 %7 to i64, !dbg !772
  br label %for.cond9.preheader, !dbg !772

for.cond9.preheader:                              ; preds = %for.cond.preheader, %for.inc26
  %indvars.iv461 = phi i64 [ %18, %for.cond.preheader ], [ %indvars.iv.next462, %for.inc26 ]
  %20 = add nsw i64 %19, %indvars.iv461, !dbg !767
  br label %for.body11, !dbg !773

for.body11:                                       ; preds = %for.cond9.preheader, %for.body11
  %indvars.iv = phi i64 [ %15, %for.cond9.preheader ], [ %indvars.iv.next, %for.body11 ]
  %21 = add nsw i64 %16, %indvars.iv, !dbg !767
  %arrayidx = getelementptr inbounds i16** %10, i64 %21, !dbg !767
  %22 = load i16** %arrayidx, align 8, !dbg !767, !tbaa !758
  %arrayidx15 = getelementptr inbounds i16* %22, i64 %20, !dbg !767
  %23 = load i16* %arrayidx15, align 2, !dbg !767, !tbaa !774
  %arrayidx24 = getelementptr inbounds i16** %13, i64 %21, !dbg !767
  %24 = load i16** %arrayidx24, align 8, !dbg !767, !tbaa !758
  %arrayidx25 = getelementptr inbounds i16* %24, i64 %20, !dbg !767
  store i16 %23, i16* %arrayidx25, align 2, !dbg !767, !tbaa !774
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !773
  %25 = trunc i64 %indvars.iv.next to i32, !dbg !773
  %cmp10 = icmp slt i32 %25, %add5, !dbg !773
  br i1 %cmp10, label %for.body11, label %for.inc26, !dbg !773

for.inc26:                                        ; preds = %for.body11
  %indvars.iv.next462 = add i64 %indvars.iv461, 1, !dbg !772
  %26 = trunc i64 %indvars.iv.next462 to i32, !dbg !772
  %cmp8 = icmp slt i32 %26, %add, !dbg !772
  br i1 %cmp8, label %for.cond9.preheader, label %if.end315, !dbg !772

if.else:                                          ; preds = %entry
  %cmp29 = icmp eq i32 %mbmode, 0, !dbg !775
  br i1 %cmp29, label %land.lhs.true, label %if.else75, !dbg !775

land.lhs.true:                                    ; preds = %if.else
  switch i32 %6, label %if.else75 [
    i32 0, label %for.cond37.preheader
    i32 1, label %land.lhs.true34
  ], !dbg !775

land.lhs.true34:                                  ; preds = %land.lhs.true
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 113, !dbg !775
  %27 = load i32* %nal_reference_idc, align 4, !dbg !775, !tbaa !761
  %cmp35 = icmp sgt i32 %27, 0, !dbg !775
  br i1 %cmp35, label %for.cond37.preheader, label %if.else75, !dbg !775

for.cond37.preheader:                             ; preds = %land.lhs.true, %land.lhs.true34
  %28 = shl i32 %div, 3, !dbg !777
  %29 = sext i32 %28 to i64
  %30 = shl i32 %rem2, 3, !dbg !777
  %31 = sext i32 %30 to i64
  br label %for.cond40.preheader, !dbg !777

for.cond40.preheader:                             ; preds = %for.cond37.preheader, %for.inc50
  %indvars.iv506 = phi i64 [ %31, %for.cond37.preheader ], [ %indvars.iv.next507, %for.inc50 ]
  br label %for.body42, !dbg !780

for.cond53.preheader:                             ; preds = %for.inc50
  %32 = sext i32 %shr to i64
  %33 = sext i32 %shr6 to i64
  br label %for.cond56.preheader, !dbg !782

for.body42:                                       ; preds = %for.cond40.preheader, %for.body42
  %indvars.iv504 = phi i64 [ %29, %for.cond40.preheader ], [ %indvars.iv.next505, %for.body42 ]
  %arrayidx46 = getelementptr inbounds [16 x [16 x i32]]* %resY_tmp, i64 0, i64 %indvars.iv504, i64 %indvars.iv506, !dbg !784
  store i32 0, i32* %arrayidx46, align 4, !dbg !784, !tbaa !761
  %indvars.iv.next505 = add i64 %indvars.iv504, 1, !dbg !780
  %34 = trunc i64 %indvars.iv.next505 to i32, !dbg !780
  %cmp41 = icmp slt i32 %34, %add5, !dbg !780
  br i1 %cmp41, label %for.body42, label %for.inc50, !dbg !780

for.inc50:                                        ; preds = %for.body42
  %indvars.iv.next507 = add i64 %indvars.iv506, 1, !dbg !777
  %35 = trunc i64 %indvars.iv.next507 to i32, !dbg !777
  %cmp38 = icmp slt i32 %35, %add, !dbg !777
  br i1 %cmp38, label %for.cond40.preheader, label %for.cond53.preheader, !dbg !777

for.cond56.preheader:                             ; preds = %for.cond53.preheader, %for.inc72
  %indvars.iv502 = phi i64 [ %33, %for.cond53.preheader ], [ %indvars.iv.next503, %for.inc72 ]
  br label %for.body58, !dbg !786

for.body58:                                       ; preds = %for.cond56.preheader, %for.body58
  %indvars.iv498 = phi i64 [ %32, %for.cond56.preheader ], [ %indvars.iv.next499, %for.body58 ]
  %arrayidx63 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %indvars.iv502, i64 %indvars.iv498, !dbg !788
  store i32 0, i32* %arrayidx63, align 4, !dbg !788, !tbaa !761
  %arrayidx68 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %indvars.iv502, i64 %indvars.iv498, !dbg !788
  store i32 0, i32* %arrayidx68, align 4, !dbg !788, !tbaa !761
  %indvars.iv.next499 = add i64 %indvars.iv498, 1, !dbg !786
  %36 = trunc i64 %indvars.iv.next499 to i32, !dbg !786
  %cmp57 = icmp slt i32 %36, %add3, !dbg !786
  br i1 %cmp57, label %for.body58, label %for.inc72, !dbg !786

for.inc72:                                        ; preds = %for.body58
  %indvars.iv.next503 = add i64 %indvars.iv502, 1, !dbg !782
  %37 = trunc i64 %indvars.iv.next503 to i32, !dbg !782
  %cmp54 = icmp slt i32 %37, %add7, !dbg !782
  br i1 %cmp54, label %for.cond56.preheader, label %if.end171.loopexit456, !dbg !782

if.else75:                                        ; preds = %land.lhs.true, %land.lhs.true34, %if.else
  %b8mode.off = add i32 %b8mode, -1, !dbg !790
  %38 = icmp ult i32 %b8mode.off, 7, !dbg !790
  call void @llvm.dbg.value(metadata !{i32 %shr6}, i64 0, metadata !39), !dbg !792
  br i1 %38, label %for.cond80.preheader, label %for.cond125.preheader, !dbg !790

for.cond125.preheader:                            ; preds = %if.else75
  %39 = sext i32 %shr to i64
  %40 = sext i32 %shr6 to i64
  br label %for.cond129.preheader, !dbg !795

for.cond80.preheader:                             ; preds = %if.else75
  %idxprom86 = sext i32 %b8mode to i64, !dbg !798
  %idxprom87 = sext i32 %b8ref to i64, !dbg !798
  %all_mv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71, !dbg !798
  %41 = load i16******* %all_mv, align 8, !dbg !798, !tbaa !758
  %42 = sext i32 %shr to i64
  %43 = sext i32 %shr6 to i64
  br label %for.cond83.preheader, !dbg !792

for.cond83.preheader:                             ; preds = %for.cond80.preheader, %for.inc121
  %indvars.iv490 = phi i64 [ %43, %for.cond80.preheader ], [ %indvars.iv.next491, %for.inc121 ]
  br label %for.body85, !dbg !801

for.cond149.preheader:                            ; preds = %for.inc146, %for.inc121
  %44 = load %struct.Decoders** @decs, align 8, !dbg !802, !tbaa !758
  %resY = getelementptr inbounds %struct.Decoders* %44, i64 0, i32 0, !dbg !802
  %45 = load i32*** %resY, align 8, !dbg !802, !tbaa !758
  %46 = shl i32 %div, 3, !dbg !806
  %47 = sext i32 %46 to i64
  %48 = shl i32 %rem2, 3, !dbg !806
  %49 = sext i32 %48 to i64
  br label %for.cond153.preheader, !dbg !806

for.body85:                                       ; preds = %for.cond83.preheader, %for.body85
  %indvars.iv488 = phi i64 [ %42, %for.cond83.preheader ], [ %indvars.iv.next489, %for.body85 ]
  %arrayidx90 = getelementptr inbounds i16****** %41, i64 %indvars.iv488, !dbg !798
  %50 = load i16****** %arrayidx90, align 8, !dbg !798, !tbaa !758
  %arrayidx91 = getelementptr inbounds i16***** %50, i64 %indvars.iv490, !dbg !798
  %51 = load i16***** %arrayidx91, align 8, !dbg !798, !tbaa !758
  %52 = load i16**** %51, align 8, !dbg !798, !tbaa !758
  %arrayidx93 = getelementptr inbounds i16*** %52, i64 %idxprom87, !dbg !798
  %53 = load i16*** %arrayidx93, align 8, !dbg !798, !tbaa !758
  %arrayidx94 = getelementptr inbounds i16** %53, i64 %idxprom86, !dbg !798
  %54 = load i16** %arrayidx94, align 8, !dbg !798, !tbaa !758
  %55 = load i16* %54, align 2, !dbg !798, !tbaa !774
  %conv = sext i16 %55 to i32, !dbg !798
  %arrayidx100 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %indvars.iv490, i64 %indvars.iv488, !dbg !798
  store i32 %conv, i32* %arrayidx100, align 4, !dbg !798, !tbaa !761
  %arrayidx111 = getelementptr inbounds i16* %54, i64 1, !dbg !807
  %56 = load i16* %arrayidx111, align 2, !dbg !807, !tbaa !774
  %conv112 = sext i16 %56 to i32, !dbg !807
  %arrayidx117 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %indvars.iv490, i64 %indvars.iv488, !dbg !807
  store i32 %conv112, i32* %arrayidx117, align 4, !dbg !807, !tbaa !761
  %indvars.iv.next489 = add i64 %indvars.iv488, 1, !dbg !801
  %57 = trunc i64 %indvars.iv.next489 to i32, !dbg !801
  %cmp84 = icmp slt i32 %57, %add3, !dbg !801
  br i1 %cmp84, label %for.body85, label %for.inc121, !dbg !801

for.inc121:                                       ; preds = %for.body85
  %indvars.iv.next491 = add i64 %indvars.iv490, 1, !dbg !792
  %58 = trunc i64 %indvars.iv.next491 to i32, !dbg !792
  %cmp81 = icmp slt i32 %58, %add7, !dbg !792
  br i1 %cmp81, label %for.cond83.preheader, label %for.cond149.preheader, !dbg !792

for.cond129.preheader:                            ; preds = %for.cond125.preheader, %for.inc146
  %indvars.iv496 = phi i64 [ %40, %for.cond125.preheader ], [ %indvars.iv.next497, %for.inc146 ]
  br label %for.body132, !dbg !808

for.body132:                                      ; preds = %for.cond129.preheader, %for.body132
  %indvars.iv492 = phi i64 [ %39, %for.cond129.preheader ], [ %indvars.iv.next493, %for.body132 ]
  %arrayidx137 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %indvars.iv496, i64 %indvars.iv492, !dbg !810
  store i32 0, i32* %arrayidx137, align 4, !dbg !810, !tbaa !761
  %arrayidx142 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %indvars.iv496, i64 %indvars.iv492, !dbg !810
  store i32 0, i32* %arrayidx142, align 4, !dbg !810, !tbaa !761
  %indvars.iv.next493 = add i64 %indvars.iv492, 1, !dbg !808
  %59 = trunc i64 %indvars.iv.next493 to i32, !dbg !808
  %cmp130 = icmp slt i32 %59, %add3, !dbg !808
  br i1 %cmp130, label %for.body132, label %for.inc146, !dbg !808

for.inc146:                                       ; preds = %for.body132
  %indvars.iv.next497 = add i64 %indvars.iv496, 1, !dbg !795
  %60 = trunc i64 %indvars.iv.next497 to i32, !dbg !795
  %cmp126 = icmp slt i32 %60, %add7, !dbg !795
  br i1 %cmp126, label %for.cond129.preheader, label %for.cond149.preheader, !dbg !795

for.cond153.preheader:                            ; preds = %for.cond149.preheader, %for.inc168
  %indvars.iv486 = phi i64 [ %49, %for.cond149.preheader ], [ %indvars.iv.next487, %for.inc168 ]
  br label %for.body156, !dbg !812

for.body156:                                      ; preds = %for.cond153.preheader, %for.body156
  %indvars.iv484 = phi i64 [ %47, %for.cond153.preheader ], [ %indvars.iv.next485, %for.body156 ]
  %arrayidx159 = getelementptr inbounds i32** %45, i64 %indvars.iv484, !dbg !802
  %61 = load i32** %arrayidx159, align 8, !dbg !802, !tbaa !758
  %arrayidx160 = getelementptr inbounds i32* %61, i64 %indvars.iv486, !dbg !802
  %62 = load i32* %arrayidx160, align 4, !dbg !802, !tbaa !761
  %arrayidx164 = getelementptr inbounds [16 x [16 x i32]]* %resY_tmp, i64 0, i64 %indvars.iv484, i64 %indvars.iv486, !dbg !802
  store i32 %62, i32* %arrayidx164, align 4, !dbg !802, !tbaa !761
  %indvars.iv.next485 = add i64 %indvars.iv484, 1, !dbg !812
  %63 = trunc i64 %indvars.iv.next485 to i32, !dbg !812
  %cmp154 = icmp slt i32 %63, %add5, !dbg !812
  br i1 %cmp154, label %for.body156, label %for.inc168, !dbg !812

for.inc168:                                       ; preds = %for.body156
  %indvars.iv.next487 = add i64 %indvars.iv486, 1, !dbg !806
  %64 = trunc i64 %indvars.iv.next487 to i32, !dbg !806
  %cmp150 = icmp slt i32 %64, %add, !dbg !806
  br i1 %cmp150, label %for.cond153.preheader, label %if.end171, !dbg !806

if.end171.loopexit456:                            ; preds = %for.inc72
  %b8mode.off434.pre = add i32 %b8mode, -1, !dbg !813
  br label %if.end171

if.end171:                                        ; preds = %for.inc168, %if.end171.loopexit456
  %b8mode.off434.pre-phi = phi i32 [ %b8mode.off434.pre, %if.end171.loopexit456 ], [ %b8mode.off, %for.inc168 ], !dbg !813
  %65 = icmp ult i32 %b8mode.off434.pre-phi, 7, !dbg !813
  br i1 %65, label %for.cond193.preheader, label %lor.lhs.false177, !dbg !813

lor.lhs.false177:                                 ; preds = %if.end171
  br i1 %cmp29, label %land.lhs.true180, label %for.cond280.preheader, !dbg !813

for.cond280.preheader:                            ; preds = %land.lhs.true188, %land.lhs.true180, %lor.lhs.false177
  %pix_x288 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33, !dbg !814
  %66 = load i32* %pix_x288, align 4, !dbg !814, !tbaa !761
  %pix_y291 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34, !dbg !814
  %67 = load i32* %pix_y291, align 4, !dbg !814, !tbaa !761
  %68 = load %struct.storable_picture** @enc_picture, align 8, !dbg !814, !tbaa !758
  %imgY294 = getelementptr inbounds %struct.storable_picture* %68, i64 0, i32 25, !dbg !814
  %69 = load i16*** %imgY294, align 8, !dbg !814, !tbaa !758
  %idxprom303 = sext i32 %decoder to i64, !dbg !814
  %70 = load %struct.Decoders** @decs, align 8, !dbg !814, !tbaa !758
  %decY304 = getelementptr inbounds %struct.Decoders* %70, i64 0, i32 1, !dbg !814
  %71 = load i16**** %decY304, align 8, !dbg !814, !tbaa !758
  %arrayidx305 = getelementptr inbounds i16*** %71, i64 %idxprom303, !dbg !814
  %72 = load i16*** %arrayidx305, align 8, !dbg !814, !tbaa !758
  %73 = shl i32 %div, 3, !dbg !819
  %74 = sext i32 %73 to i64
  %75 = sext i32 %67 to i64, !dbg !819
  %76 = shl i32 %rem2, 3, !dbg !819
  %77 = sext i32 %76 to i64
  %78 = sext i32 %66 to i64, !dbg !819
  br label %for.cond284.preheader, !dbg !819

land.lhs.true180:                                 ; preds = %lor.lhs.false177
  switch i32 %6, label %for.cond280.preheader [
    i32 0, label %for.cond193.preheader
    i32 1, label %land.lhs.true188
  ], !dbg !813

land.lhs.true188:                                 ; preds = %land.lhs.true180
  %nal_reference_idc189 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 113, !dbg !813
  %79 = load i32* %nal_reference_idc189, align 4, !dbg !813, !tbaa !761
  %cmp190 = icmp sgt i32 %79, 0, !dbg !813
  br i1 %cmp190, label %for.cond193.preheader, label %for.cond280.preheader, !dbg !813

for.cond193.preheader:                            ; preds = %land.lhs.true180, %if.end171, %land.lhs.true188
  %sub213 = sub i32 -2, %b8ref, !dbg !820
  %idxprom220 = sext i32 %decoder to i64, !dbg !825
  %80 = sext i32 %shr to i64
  %81 = sext i32 %shr6 to i64
  br label %for.cond197.preheader, !dbg !826

for.cond197.preheader:                            ; preds = %for.cond193.preheader, %for.inc276
  %indvars.iv476 = phi i64 [ %81, %for.cond193.preheader ], [ %indvars.iv.next477, %for.inc276 ]
  %ref_inx.0443 = phi i32 [ %rem, %for.cond193.preheader ], [ %ref_inx.2, %for.inc276 ]
  %82 = trunc i64 %indvars.iv476 to i32, !dbg !827
  %mul243 = shl i32 %82, 2, !dbg !827
  %83 = sext i32 %mul243 to i64, !dbg !831
  br label %for.body200, !dbg !831

for.body200:                                      ; preds = %for.inc273, %for.cond197.preheader
  %indvars.iv474 = phi i64 [ %80, %for.cond197.preheader ], [ %indvars.iv.next475, %for.inc273 ]
  %ref_inx.1440 = phi i32 [ %ref_inx.0443, %for.cond197.preheader ], [ %ref_inx.2, %for.inc273 ]
  %84 = load %struct.ImageParameters** @img, align 8, !dbg !832, !tbaa !758
  %block_x201 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 31, !dbg !832
  %85 = load i32* %block_x201, align 4, !dbg !832, !tbaa !761
  %86 = trunc i64 %indvars.iv474 to i32, !dbg !832
  %add202 = add nsw i32 %85, %86, !dbg !832
  call void @llvm.dbg.value(metadata !{i32 %add202}, i64 0, metadata !37), !dbg !832
  %block_y203 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 32, !dbg !833
  %87 = load i32* %block_y203, align 4, !dbg !833, !tbaa !761
  %add204 = add nsw i32 %87, %82, !dbg !833
  call void @llvm.dbg.value(metadata !{i32 %add204}, i64 0, metadata !36), !dbg !833
  %type205 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 6, !dbg !834
  %88 = load i32* %type205, align 4, !dbg !834, !tbaa !761
  %cmp206 = icmp eq i32 %88, 1, !dbg !834
  br i1 %cmp206, label %land.lhs.true208, label %if.end218, !dbg !834

land.lhs.true208:                                 ; preds = %for.body200
  %89 = load %struct.storable_picture** @enc_picture, align 8, !dbg !834, !tbaa !758
  %90 = load %struct.storable_picture** @enc_frame_picture, align 8, !dbg !834, !tbaa !758
  %cmp209 = icmp eq %struct.storable_picture* %89, %90, !dbg !834
  br i1 %cmp209, label %if.end218, label %if.then211, !dbg !834

if.then211:                                       ; preds = %land.lhs.true208
  %number212 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 0, !dbg !820
  %91 = load i32* %number212, align 4, !dbg !820, !tbaa !761
  %92 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !820, !tbaa !761
  %sub214 = add i32 %sub213, %91, !dbg !820
  %sub215 = sub i32 %sub214, %92, !dbg !820
  %num_ref_frames216 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 8, !dbg !820
  %93 = load i32* %num_ref_frames216, align 4, !dbg !820, !tbaa !761
  %rem217 = srem i32 %sub215, %93, !dbg !820
  call void @llvm.dbg.value(metadata !{i32 %rem217}, i64 0, metadata !40), !dbg !820
  br label %if.end218, !dbg !820

if.end218:                                        ; preds = %land.lhs.true208, %for.body200, %if.then211
  %ref_inx.2 = phi i32 [ %rem217, %if.then211 ], [ %ref_inx.1440, %for.body200 ], [ %ref_inx.1440, %land.lhs.true208 ]
  %idxprom219 = sext i32 %ref_inx.2 to i64, !dbg !825
  %94 = load %struct.Decoders** @decs, align 8, !dbg !825, !tbaa !758
  %decref = getelementptr inbounds %struct.Decoders* %94, i64 0, i32 2, !dbg !825
  %95 = load i16***** %decref, align 8, !dbg !825, !tbaa !758
  %arrayidx221 = getelementptr inbounds i16**** %95, i64 %idxprom220, !dbg !825
  %96 = load i16**** %arrayidx221, align 8, !dbg !825, !tbaa !758
  %arrayidx222 = getelementptr inbounds i16*** %96, i64 %idxprom219, !dbg !825
  %97 = load i16*** %arrayidx222, align 8, !dbg !825, !tbaa !758
  %arrayidx227 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %indvars.iv476, i64 %indvars.iv474, !dbg !825
  %98 = load i32* %arrayidx227, align 4, !dbg !825, !tbaa !761
  %arrayidx232 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %indvars.iv476, i64 %indvars.iv474, !dbg !825
  %99 = load i32* %arrayidx232, align 4, !dbg !825, !tbaa !761
  %RefBlock = getelementptr inbounds %struct.Decoders* %94, i64 0, i32 4, !dbg !825
  %100 = load i16*** %RefBlock, align 8, !dbg !825, !tbaa !758
  call void @Get_Reference_Block(i16** %97, i32 %add204, i32 %add202, i32 %98, i32 %99, i16** %100) #6, !dbg !825
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !35), !dbg !835
  %mul = shl i32 %86, 2, !dbg !827
  %101 = load %struct.Decoders** @decs, align 8, !dbg !827, !tbaa !758
  %RefBlock250 = getelementptr inbounds %struct.Decoders* %101, i64 0, i32 4, !dbg !827
  %102 = load i16*** %RefBlock250, align 8, !dbg !827, !tbaa !758
  %mul256 = shl i32 %add202, 2, !dbg !827
  %mul259 = shl i32 %add204, 2, !dbg !827
  %decY263 = getelementptr inbounds %struct.Decoders* %101, i64 0, i32 1, !dbg !827
  %103 = load i16**** %decY263, align 8, !dbg !827, !tbaa !758
  %arrayidx264 = getelementptr inbounds i16*** %103, i64 %idxprom220, !dbg !827
  %104 = load i16*** %arrayidx264, align 8, !dbg !827, !tbaa !758
  %105 = sext i32 %mul256 to i64, !dbg !835
  %106 = sext i32 %mul to i64, !dbg !835
  %107 = sext i32 %mul259 to i64, !dbg !835
  br label %for.cond237.preheader, !dbg !835

for.cond237.preheader:                            ; preds = %for.inc270, %if.end218
  %indvars.iv468 = phi i64 [ 0, %if.end218 ], [ %indvars.iv.next469, %for.inc270 ]
  %108 = add nsw i64 %indvars.iv468, %83, !dbg !827
  %arrayidx251 = getelementptr inbounds i16** %102, i64 %indvars.iv468, !dbg !827
  %109 = load i16** %arrayidx251, align 8, !dbg !827, !tbaa !758
  %110 = add nsw i64 %indvars.iv468, %107, !dbg !827
  %arrayidx265 = getelementptr inbounds i16** %104, i64 %110, !dbg !827
  %111 = load i16** %arrayidx265, align 8, !dbg !827, !tbaa !758
  br label %for.body240, !dbg !836

for.body240:                                      ; preds = %for.body240, %for.cond237.preheader
  %indvars.iv464 = phi i64 [ 0, %for.cond237.preheader ], [ %indvars.iv.next465, %for.body240 ]
  %112 = add nsw i64 %indvars.iv464, %106, !dbg !827
  %arrayidx247 = getelementptr inbounds [16 x [16 x i32]]* %resY_tmp, i64 0, i64 %108, i64 %112, !dbg !827
  %113 = load i32* %arrayidx247, align 4, !dbg !827, !tbaa !761
  %arrayidx252 = getelementptr inbounds i16* %109, i64 %indvars.iv464, !dbg !827
  %114 = load i16* %arrayidx252, align 2, !dbg !827, !tbaa !774
  %conv253 = zext i16 %114 to i32, !dbg !827
  %add254 = add nsw i32 %conv253, %113, !dbg !827
  %conv255 = trunc i32 %add254 to i16, !dbg !827
  %115 = add nsw i64 %indvars.iv464, %105, !dbg !827
  %arrayidx266 = getelementptr inbounds i16* %111, i64 %115, !dbg !827
  store i16 %conv255, i16* %arrayidx266, align 2, !dbg !827, !tbaa !774
  %indvars.iv.next465 = add i64 %indvars.iv464, 1, !dbg !836
  %lftr.wideiv = trunc i64 %indvars.iv.next465 to i32, !dbg !836
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !836
  br i1 %exitcond, label %for.inc270, label %for.body240, !dbg !836

for.inc270:                                       ; preds = %for.body240
  %indvars.iv.next469 = add i64 %indvars.iv468, 1, !dbg !835
  %lftr.wideiv472 = trunc i64 %indvars.iv.next469 to i32, !dbg !835
  %exitcond473 = icmp eq i32 %lftr.wideiv472, 4, !dbg !835
  br i1 %exitcond473, label %for.inc273, label %for.cond237.preheader, !dbg !835

for.inc273:                                       ; preds = %for.inc270
  %indvars.iv.next475 = add i64 %indvars.iv474, 1, !dbg !831
  %116 = trunc i64 %indvars.iv.next475 to i32, !dbg !831
  %cmp198 = icmp slt i32 %116, %add3, !dbg !831
  br i1 %cmp198, label %for.body200, label %for.inc276, !dbg !831

for.inc276:                                       ; preds = %for.inc273
  %indvars.iv.next477 = add i64 %indvars.iv476, 1, !dbg !826
  %117 = trunc i64 %indvars.iv.next477 to i32, !dbg !826
  %cmp194 = icmp slt i32 %117, %add7, !dbg !826
  br i1 %cmp194, label %for.cond197.preheader, label %if.end315, !dbg !826

for.cond284.preheader:                            ; preds = %for.cond280.preheader, %for.inc311
  %indvars.iv481 = phi i64 [ %77, %for.cond280.preheader ], [ %indvars.iv.next482, %for.inc311 ]
  %118 = add nsw i64 %78, %indvars.iv481, !dbg !814
  br label %for.body287, !dbg !837

for.body287:                                      ; preds = %for.cond284.preheader, %for.body287
  %indvars.iv478 = phi i64 [ %74, %for.cond284.preheader ], [ %indvars.iv.next479, %for.body287 ]
  %119 = add nsw i64 %75, %indvars.iv478, !dbg !814
  %arrayidx295 = getelementptr inbounds i16** %69, i64 %119, !dbg !814
  %120 = load i16** %arrayidx295, align 8, !dbg !814, !tbaa !758
  %arrayidx296 = getelementptr inbounds i16* %120, i64 %118, !dbg !814
  %121 = load i16* %arrayidx296, align 2, !dbg !814, !tbaa !774
  %arrayidx306 = getelementptr inbounds i16** %72, i64 %119, !dbg !814
  %122 = load i16** %arrayidx306, align 8, !dbg !814, !tbaa !758
  %arrayidx307 = getelementptr inbounds i16* %122, i64 %118, !dbg !814
  store i16 %121, i16* %arrayidx307, align 2, !dbg !814, !tbaa !774
  %indvars.iv.next479 = add i64 %indvars.iv478, 1, !dbg !837
  %123 = trunc i64 %indvars.iv.next479 to i32, !dbg !837
  %cmp285 = icmp slt i32 %123, %add5, !dbg !837
  br i1 %cmp285, label %for.body287, label %for.inc311, !dbg !837

for.inc311:                                       ; preds = %for.body287
  %indvars.iv.next482 = add i64 %indvars.iv481, 1, !dbg !819
  %124 = trunc i64 %indvars.iv.next482 to i32, !dbg !819
  %cmp281 = icmp slt i32 %124, %add, !dbg !819
  br i1 %cmp281, label %for.cond284.preheader, label %if.end315, !dbg !819

if.end315:                                        ; preds = %for.inc311, %for.inc276, %for.inc26
  call void @llvm.lifetime.end(i64 1024, i8* %5) #2, !dbg !838
  call void @llvm.lifetime.end(i64 128, i8* %4) #2, !dbg !838
  ret void, !dbg !838
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @Get_Reference_Block(i16** nocapture %imY, i32 %block_y, i32 %block_x, i32 %mvhor, i32 %mvver, i16** nocapture %out) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16** %imY}, i64 0, metadata !135), !dbg !839
  tail call void @llvm.dbg.value(metadata !{i32 %block_y}, i64 0, metadata !136), !dbg !840
  tail call void @llvm.dbg.value(metadata !{i32 %block_x}, i64 0, metadata !137), !dbg !841
  tail call void @llvm.dbg.value(metadata !{i32 %mvhor}, i64 0, metadata !138), !dbg !842
  tail call void @llvm.dbg.value(metadata !{i32 %mvver}, i64 0, metadata !139), !dbg !843
  tail call void @llvm.dbg.value(metadata !{i16** %out}, i64 0, metadata !140), !dbg !844
  %mul1 = shl i32 %block_y, 4, !dbg !845
  %add = add nsw i32 %mul1, %mvver, !dbg !845
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !143), !dbg !845
  %mul3 = shl i32 %block_x, 4, !dbg !846
  %add4 = add nsw i32 %mul3, %mvhor, !dbg !846
  tail call void @llvm.dbg.value(metadata !{i32 %add4}, i64 0, metadata !144), !dbg !846
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !142), !dbg !847
  %0 = zext i32 %add4 to i64, !dbg !847
  %1 = zext i32 %add to i64, !dbg !847
  br label %for.cond5.preheader, !dbg !847

for.cond5.preheader:                              ; preds = %for.inc14, %entry
  %indvars.iv27 = phi i64 [ 0, %entry ], [ %indvars.iv.next28, %for.inc14 ]
  %2 = shl i64 %indvars.iv27, 2, !dbg !849
  %3 = add nsw i64 %1, %2, !dbg !849
  %arrayidx = getelementptr inbounds i16** %out, i64 %indvars.iv27, !dbg !849
  %.pre = load i16** %arrayidx, align 8, !dbg !849, !tbaa !758
  br label %for.body7, !dbg !851

for.body7:                                        ; preds = %for.body7, %for.cond5.preheader
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.body7 ]
  %4 = shl i64 %indvars.iv, 2, !dbg !849
  %5 = add nsw i64 %0, %4, !dbg !849
  %6 = trunc i64 %5 to i32, !dbg !849
  %7 = trunc i64 %3 to i32, !dbg !849
  %call = tail call zeroext i8 @Get_Reference_Pixel(i16** %imY, i32 %7, i32 %6) #6, !dbg !849
  %conv = zext i8 %call to i16, !dbg !849
  %arrayidx13 = getelementptr inbounds i16* %.pre, i64 %indvars.iv, !dbg !849
  store i16 %conv, i16* %arrayidx13, align 2, !dbg !849, !tbaa !774
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !851
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !851
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !851
  br i1 %exitcond, label %for.inc14, label %for.body7, !dbg !851

for.inc14:                                        ; preds = %for.body7
  %indvars.iv.next28 = add i64 %indvars.iv27, 1, !dbg !847
  %lftr.wideiv31 = trunc i64 %indvars.iv.next28 to i32, !dbg !847
  %exitcond32 = icmp eq i32 %lftr.wideiv31, 4, !dbg !847
  br i1 %exitcond32, label %for.end16, label %for.cond5.preheader, !dbg !847

for.end16:                                        ; preds = %for.inc14
  ret void, !dbg !852
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readnone uwtable
define void @decode_one_mb(i32 %decoder, %struct.macroblock* nocapture %currMB) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %decoder}, i64 0, metadata !126), !dbg !853
  tail call void @llvm.dbg.value(metadata !{%struct.macroblock* %currMB}, i64 0, metadata !127), !dbg !853
  ret void, !dbg !854
}

; Function Attrs: nounwind optsize readonly uwtable
define zeroext i8 @Get_Reference_Pixel(i16** nocapture %imY, i32 %y_pos, i32 %x_pos) #4 {
entry:
  %tmp_res = alloca [6 x i32], align 16
  call void @llvm.dbg.value(metadata !{i16** %imY}, i64 0, metadata !151), !dbg !855
  call void @llvm.dbg.value(metadata !{i32 %y_pos}, i64 0, metadata !152), !dbg !855
  call void @llvm.dbg.value(metadata !{i32 %x_pos}, i64 0, metadata !153), !dbg !855
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !160), !dbg !856
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %tmp_res}, metadata !165), !dbg !857
  %and = and i32 %x_pos, 3, !dbg !858
  call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !154), !dbg !858
  %and1 = and i32 %y_pos, 3, !dbg !859
  call void @llvm.dbg.value(metadata !{i32 %and1}, i64 0, metadata !156), !dbg !859
  %sub = sub nsw i32 %x_pos, %and, !dbg !860
  %div = sdiv i32 %sub, 4, !dbg !860
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !153), !dbg !860
  %sub2 = sub nsw i32 %y_pos, %and1, !dbg !861
  %div3 = sdiv i32 %sub2, 4, !dbg !861
  call void @llvm.dbg.value(metadata !{i32 %div3}, i64 0, metadata !152), !dbg !861
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !862, !tbaa !758
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !862
  %1 = load i32* %width, align 4, !dbg !862, !tbaa !761
  %sub4 = add nsw i32 %1, -1, !dbg !862
  call void @llvm.dbg.value(metadata !{i32 %sub4}, i64 0, metadata !158), !dbg !862
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !863
  %2 = load i32* %height, align 4, !dbg !863, !tbaa !761
  %sub5 = add nsw i32 %2, -1, !dbg !863
  call void @llvm.dbg.value(metadata !{i32 %sub5}, i64 0, metadata !159), !dbg !863
  %3 = or i32 %x_pos, %y_pos, !dbg !864
  %4 = and i32 %3, 3, !dbg !864
  %5 = icmp eq i32 %4, 0, !dbg !864
  br i1 %5, label %if.then, label %if.else, !dbg !864

if.then:                                          ; preds = %entry
  %cmp7 = icmp slt i32 %sub4, %div, !dbg !865
  %cond = select i1 %cmp7, i32 %sub4, i32 %div, !dbg !865
  %cmp8 = icmp slt i32 %cond, 0, !dbg !865
  %phitmp1221 = sext i32 %cond to i64, !dbg !865
  %.phitmp1221 = select i1 %cmp8, i64 0, i64 %phitmp1221, !dbg !865
  %cmp18 = icmp slt i32 %sub5, %div3, !dbg !865
  %cond22 = select i1 %cmp18, i32 %sub5, i32 %div3, !dbg !865
  %cmp23 = icmp slt i32 %cond22, 0, !dbg !865
  %phitmp1222 = sext i32 %cond22 to i64, !dbg !865
  %cond32 = select i1 %cmp23, i64 0, i64 %phitmp1222, !dbg !865
  %arrayidx = getelementptr inbounds i16** %imY, i64 %cond32, !dbg !865
  %6 = load i16** %arrayidx, align 8, !dbg !865, !tbaa !758
  %arrayidx34 = getelementptr inbounds i16* %6, i64 %.phitmp1221, !dbg !865
  %7 = load i16* %arrayidx34, align 2, !dbg !865, !tbaa !774
  %conv = zext i16 %7 to i32, !dbg !865
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !160), !dbg !865
  br label %if.end926, !dbg !867

if.else:                                          ; preds = %entry
  %cmp6 = icmp eq i32 %and1, 0, !dbg !864
  br i1 %cmp6, label %if.then37, label %if.else179, !dbg !868

if.then37:                                        ; preds = %if.else
  %cmp38 = icmp slt i32 %sub5, %div3, !dbg !870
  %cond43 = select i1 %cmp38, i32 %sub5, i32 %div3, !dbg !870
  %cmp44 = icmp slt i32 %cond43, 0, !dbg !870
  %phitmp1219 = sext i32 %cond43 to i64, !dbg !870
  %.phitmp1219 = select i1 %cmp44, i64 0, i64 %phitmp1219, !dbg !870
  call void @llvm.dbg.value(metadata !872, i64 0, metadata !155), !dbg !873
  %arrayidx81 = getelementptr inbounds i16** %imY, i64 %.phitmp1219, !dbg !875
  %8 = load i16** %arrayidx81, align 8, !dbg !875, !tbaa !758
  %9 = zext i32 %div to i64, !dbg !873
  br label %for.body, !dbg !873

for.body:                                         ; preds = %for.body, %if.then37
  %indvars.iv = phi i64 [ -2, %if.then37 ], [ %indvars.iv.next, %for.body ]
  %result.01240 = phi i32 [ 0, %if.then37 ], [ %add87, %for.body ]
  %10 = add nsw i64 %indvars.iv, %9, !dbg !877
  %11 = trunc i64 %10 to i32, !dbg !877
  %cmp58 = icmp sle i32 %1, %11, !dbg !877
  %sub4.add = select i1 %cmp58, i32 %sub4, i32 %11, !dbg !877
  %cmp65 = icmp slt i32 %sub4.add, 0, !dbg !877
  %12 = sext i32 %sub4.add to i64, !dbg !875
  %idxprom79 = select i1 %cmp65, i64 0, i64 %12, !dbg !875
  %arrayidx82 = getelementptr inbounds i16* %8, i64 %idxprom79, !dbg !875
  %13 = load i16* %arrayidx82, align 2, !dbg !875, !tbaa !774
  %conv83 = zext i16 %13 to i32, !dbg !875
  %14 = add nsw i64 %indvars.iv, 2, !dbg !875
  %arrayidx86 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %14, !dbg !875
  %15 = load i32* %arrayidx86, align 4, !dbg !875, !tbaa !761
  %mul = mul nsw i32 %conv83, %15, !dbg !875
  %add87 = add nsw i32 %mul, %result.01240, !dbg !875
  call void @llvm.dbg.value(metadata !{i32 %add87}, i64 0, metadata !160), !dbg !875
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !873
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !873
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !873
  br i1 %exitcond, label %for.end, label %for.body, !dbg !873

for.end:                                          ; preds = %for.body
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155, !dbg !878
  %16 = load i32* %max_imgpel_value, align 4, !dbg !878, !tbaa !761
  %add88 = add nsw i32 %add87, 16, !dbg !878
  %div89 = sdiv i32 %add88, 32, !dbg !878
  %cmp90 = icmp slt i32 %16, %div89, !dbg !878
  %.div89 = select i1 %cmp90, i32 %16, i32 %div89, !dbg !878
  %cmp99 = icmp slt i32 %.div89, 0, !dbg !878
  %..div89 = select i1 %cmp99, i32 0, i32 %.div89, !dbg !878
  call void @llvm.dbg.value(metadata !{i32 %..div89}, i64 0, metadata !160), !dbg !878
  switch i32 %and, label %if.end926 [
    i32 1, label %if.then119
    i32 3, label %if.then148
  ], !dbg !879

if.then119:                                       ; preds = %for.end
  %cmp120 = icmp slt i32 %sub4, %div, !dbg !880
  %cond125 = select i1 %cmp120, i32 %sub4, i32 %div, !dbg !880
  %cmp126 = icmp slt i32 %cond125, 0, !dbg !880
  %phitmp1220 = sext i32 %cond125 to i64, !dbg !880
  %.phitmp1220 = select i1 %cmp126, i64 0, i64 %phitmp1220, !dbg !880
  %arrayidx141 = getelementptr inbounds i16* %8, i64 %.phitmp1220, !dbg !880
  %17 = load i16* %arrayidx141, align 2, !dbg !880, !tbaa !774
  %conv142 = zext i16 %17 to i32, !dbg !880
  %add143 = add nsw i32 %conv142, %..div89, !dbg !880
  %div144 = sdiv i32 %add143, 2, !dbg !880
  call void @llvm.dbg.value(metadata !{i32 %div144}, i64 0, metadata !160), !dbg !880
  br label %if.end926, !dbg !882

if.then148:                                       ; preds = %for.end
  %add149 = add nsw i32 %div, 1, !dbg !883
  %cmp150 = icmp sle i32 %1, %add149, !dbg !883
  %sub4.add149 = select i1 %cmp150, i32 %sub4, i32 %add149, !dbg !883
  %cmp157 = icmp slt i32 %sub4.add149, 0, !dbg !883
  %18 = sext i32 %sub4.add149 to i64, !dbg !883
  %idxprom171 = select i1 %cmp157, i64 0, i64 %18, !dbg !883
  %arrayidx174 = getelementptr inbounds i16* %8, i64 %idxprom171, !dbg !883
  %19 = load i16* %arrayidx174, align 2, !dbg !883, !tbaa !774
  %conv175 = zext i16 %19 to i32, !dbg !883
  %add176 = add nsw i32 %conv175, %..div89, !dbg !883
  %div177 = sdiv i32 %add176, 2, !dbg !883
  call void @llvm.dbg.value(metadata !{i32 %div177}, i64 0, metadata !160), !dbg !883
  br label %if.end926, !dbg !885

if.else179:                                       ; preds = %if.else
  switch i32 %and, label %if.else534 [
    i32 0, label %if.then182
    i32 2, label %for.cond337.preheader
  ], !dbg !886

for.cond337.preheader:                            ; preds = %if.else179
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !160), !dbg !887
  %20 = zext i32 %div to i64, !dbg !891
  %21 = zext i32 %div3 to i64, !dbg !891
  br label %for.body340, !dbg !891

if.then182:                                       ; preds = %if.else179
  %cmp183 = icmp slt i32 %sub4, %div, !dbg !892
  %cond188 = select i1 %cmp183, i32 %sub4, i32 %div, !dbg !892
  %cmp189 = icmp slt i32 %cond188, 0, !dbg !892
  %phitmp1217 = sext i32 %cond188 to i64, !dbg !892
  %.phitmp1217 = select i1 %cmp189, i64 0, i64 %phitmp1217, !dbg !892
  call void @llvm.dbg.value(metadata !872, i64 0, metadata !157), !dbg !894
  %22 = zext i32 %div3 to i64, !dbg !894
  br label %for.body204, !dbg !894

for.body204:                                      ; preds = %for.body204, %if.then182
  %indvars.iv1288 = phi i64 [ -2, %if.then182 ], [ %indvars.iv.next1289, %for.body204 ]
  %result.11251 = phi i32 [ 0, %if.then182 ], [ %add236, %for.body204 ]
  %23 = add nsw i64 %indvars.iv1288, %22, !dbg !896
  %24 = trunc i64 %23 to i32, !dbg !896
  %cmp206 = icmp sle i32 %2, %24, !dbg !896
  %sub5.add205 = select i1 %cmp206, i32 %sub5, i32 %24, !dbg !896
  %cmp213 = icmp slt i32 %sub5.add205, 0, !dbg !896
  %25 = sext i32 %sub5.add205 to i64, !dbg !898
  %idxprom228 = select i1 %cmp213, i64 0, i64 %25, !dbg !898
  %arrayidx229 = getelementptr inbounds i16** %imY, i64 %idxprom228, !dbg !898
  %26 = load i16** %arrayidx229, align 8, !dbg !898, !tbaa !758
  %arrayidx230 = getelementptr inbounds i16* %26, i64 %.phitmp1217, !dbg !898
  %27 = load i16* %arrayidx230, align 2, !dbg !898, !tbaa !774
  %conv231 = zext i16 %27 to i32, !dbg !898
  %28 = add nsw i64 %indvars.iv1288, 2, !dbg !898
  %arrayidx234 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %28, !dbg !898
  %29 = load i32* %arrayidx234, align 4, !dbg !898, !tbaa !761
  %mul235 = mul nsw i32 %conv231, %29, !dbg !898
  %add236 = add nsw i32 %mul235, %result.11251, !dbg !898
  call void @llvm.dbg.value(metadata !{i32 %add236}, i64 0, metadata !160), !dbg !898
  %indvars.iv.next1289 = add i64 %indvars.iv1288, 1, !dbg !894
  %lftr.wideiv1292 = trunc i64 %indvars.iv.next1289 to i32, !dbg !894
  %exitcond1293 = icmp eq i32 %lftr.wideiv1292, 4, !dbg !894
  br i1 %exitcond1293, label %for.end239, label %for.body204, !dbg !894

for.end239:                                       ; preds = %for.body204
  %max_imgpel_value240 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155, !dbg !899
  %30 = load i32* %max_imgpel_value240, align 4, !dbg !899, !tbaa !761
  %add241 = add nsw i32 %add236, 16, !dbg !899
  %div242 = sdiv i32 %add241, 32, !dbg !899
  %cmp243 = icmp slt i32 %30, %div242, !dbg !899
  %.div242 = select i1 %cmp243, i32 %30, i32 %div242, !dbg !899
  %cmp252 = icmp slt i32 %.div242, 0, !dbg !899
  %..div242 = select i1 %cmp252, i32 0, i32 %.div242, !dbg !899
  call void @llvm.dbg.value(metadata !{i32 %..div242}, i64 0, metadata !160), !dbg !899
  switch i32 %and1, label %if.end926 [
    i32 1, label %if.then272
    i32 3, label %if.then301
  ], !dbg !900

if.then272:                                       ; preds = %for.end239
  %cmp274 = icmp slt i32 %sub5, %div3, !dbg !901
  %cond279 = select i1 %cmp274, i32 %sub5, i32 %div3, !dbg !901
  %cmp280 = icmp slt i32 %cond279, 0, !dbg !901
  %phitmp1218 = sext i32 %cond279 to i64, !dbg !901
  %.phitmp1218 = select i1 %cmp280, i64 0, i64 %phitmp1218, !dbg !901
  %arrayidx293 = getelementptr inbounds i16** %imY, i64 %.phitmp1218, !dbg !901
  %31 = load i16** %arrayidx293, align 8, !dbg !901, !tbaa !758
  %arrayidx294 = getelementptr inbounds i16* %31, i64 %.phitmp1217, !dbg !901
  %32 = load i16* %arrayidx294, align 2, !dbg !901, !tbaa !774
  %conv295 = zext i16 %32 to i32, !dbg !901
  %add296 = add nsw i32 %conv295, %..div242, !dbg !901
  %div297 = sdiv i32 %add296, 2, !dbg !901
  call void @llvm.dbg.value(metadata !{i32 %div297}, i64 0, metadata !160), !dbg !901
  br label %if.end926, !dbg !903

if.then301:                                       ; preds = %for.end239
  %add303 = add nsw i32 %div3, 1, !dbg !904
  %cmp304 = icmp sle i32 %2, %add303, !dbg !904
  %sub5.add303 = select i1 %cmp304, i32 %sub5, i32 %add303, !dbg !904
  %cmp311 = icmp slt i32 %sub5.add303, 0, !dbg !904
  %33 = sext i32 %sub5.add303 to i64, !dbg !904
  %idxprom325 = select i1 %cmp311, i64 0, i64 %33, !dbg !904
  %arrayidx326 = getelementptr inbounds i16** %imY, i64 %idxprom325, !dbg !904
  %34 = load i16** %arrayidx326, align 8, !dbg !904, !tbaa !758
  %arrayidx327 = getelementptr inbounds i16* %34, i64 %.phitmp1217, !dbg !904
  %35 = load i16* %arrayidx327, align 2, !dbg !904, !tbaa !774
  %conv328 = zext i16 %35 to i32, !dbg !904
  %add329 = add nsw i32 %conv328, %..div242, !dbg !904
  %div330 = sdiv i32 %add329, 2, !dbg !904
  call void @llvm.dbg.value(metadata !{i32 %div330}, i64 0, metadata !160), !dbg !904
  br label %if.end926, !dbg !906

for.body340:                                      ; preds = %for.end401, %for.cond337.preheader
  %indvars.iv1305 = phi i64 [ -2, %for.cond337.preheader ], [ %indvars.iv.next1306, %for.end401 ]
  %36 = add nsw i64 %indvars.iv1305, %21, !dbg !907
  %37 = trunc i64 %36 to i32, !dbg !907
  %cmp342 = icmp sle i32 %2, %37, !dbg !907
  %sub5.add341 = select i1 %cmp342, i32 %sub5, i32 %37, !dbg !907
  %cmp349 = icmp slt i32 %sub5.add341, 0, !dbg !907
  call void @llvm.dbg.value(metadata !872, i64 0, metadata !155), !dbg !908
  %38 = sext i32 %sub5.add341 to i64, !dbg !910
  %idxprom390 = select i1 %cmp349, i64 0, i64 %38, !dbg !910
  %arrayidx391 = getelementptr inbounds i16** %imY, i64 %idxprom390, !dbg !910
  %39 = load i16** %arrayidx391, align 8, !dbg !910, !tbaa !758
  br label %for.body366, !dbg !908

for.body366:                                      ; preds = %for.body366, %for.body340
  %indvars.iv1299 = phi i64 [ -2, %for.body340 ], [ %indvars.iv.next1300, %for.body366 ]
  %result.21255 = phi i32 [ 0, %for.body340 ], [ %add398, %for.body366 ]
  %40 = add nsw i64 %indvars.iv1299, %20, !dbg !912
  %41 = trunc i64 %40 to i32, !dbg !912
  %cmp368 = icmp sle i32 %1, %41, !dbg !912
  %sub4.add367 = select i1 %cmp368, i32 %sub4, i32 %41, !dbg !912
  %cmp375 = icmp slt i32 %sub4.add367, 0, !dbg !912
  %42 = sext i32 %sub4.add367 to i64, !dbg !910
  %idxprom389 = select i1 %cmp375, i64 0, i64 %42, !dbg !910
  %arrayidx392 = getelementptr inbounds i16* %39, i64 %idxprom389, !dbg !910
  %43 = load i16* %arrayidx392, align 2, !dbg !910, !tbaa !774
  %conv393 = zext i16 %43 to i32, !dbg !910
  %44 = add nsw i64 %indvars.iv1299, 2, !dbg !910
  %arrayidx396 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %44, !dbg !910
  %45 = load i32* %arrayidx396, align 4, !dbg !910, !tbaa !761
  %mul397 = mul nsw i32 %conv393, %45, !dbg !910
  %add398 = add nsw i32 %mul397, %result.21255, !dbg !910
  call void @llvm.dbg.value(metadata !{i32 %add398}, i64 0, metadata !160), !dbg !910
  %indvars.iv.next1300 = add i64 %indvars.iv1299, 1, !dbg !908
  %lftr.wideiv1303 = trunc i64 %indvars.iv.next1300 to i32, !dbg !908
  %exitcond1304 = icmp eq i32 %lftr.wideiv1303, 4, !dbg !908
  br i1 %exitcond1304, label %for.end401, label %for.body366, !dbg !908

for.end401:                                       ; preds = %for.body366
  %46 = add nsw i64 %indvars.iv1305, 2, !dbg !913
  %arrayidx404 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 %46, !dbg !913
  store i32 %add398, i32* %arrayidx404, align 4, !dbg !913, !tbaa !761
  %indvars.iv.next1306 = add i64 %indvars.iv1305, 1, !dbg !891
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !160), !dbg !887
  %lftr.wideiv1309 = trunc i64 %indvars.iv.next1306 to i32, !dbg !891
  %exitcond1310 = icmp eq i32 %lftr.wideiv1309, 4, !dbg !891
  br i1 %exitcond1310, label %for.body411, label %for.body340, !dbg !891

for.body411:                                      ; preds = %for.end401, %for.body411
  %indvars.iv1294 = phi i64 [ %indvars.iv.next1295, %for.body411 ], [ -2, %for.end401 ]
  %result.31253 = phi i32 [ %add419, %for.body411 ], [ 0, %for.end401 ]
  %47 = add nsw i64 %indvars.iv1294, 2, !dbg !914
  %arrayidx414 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 %47, !dbg !914
  %48 = load i32* %arrayidx414, align 4, !dbg !914, !tbaa !761
  %arrayidx417 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %47, !dbg !914
  %49 = load i32* %arrayidx417, align 4, !dbg !914, !tbaa !761
  %mul418 = mul nsw i32 %49, %48, !dbg !914
  %add419 = add nsw i32 %mul418, %result.31253, !dbg !914
  call void @llvm.dbg.value(metadata !{i32 %add419}, i64 0, metadata !160), !dbg !914
  %indvars.iv.next1295 = add i64 %indvars.iv1294, 1, !dbg !917
  %lftr.wideiv1297 = trunc i64 %indvars.iv.next1295 to i32, !dbg !917
  %exitcond1298 = icmp eq i32 %lftr.wideiv1297, 4, !dbg !917
  br i1 %exitcond1298, label %for.end422, label %for.body411, !dbg !917

for.end422:                                       ; preds = %for.body411
  %max_imgpel_value423 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155, !dbg !918
  %50 = load i32* %max_imgpel_value423, align 4, !dbg !918, !tbaa !761
  %add424 = add nsw i32 %add419, 512, !dbg !918
  %div425 = sdiv i32 %add424, 1024, !dbg !918
  %cmp426 = icmp slt i32 %50, %div425, !dbg !918
  %.div425 = select i1 %cmp426, i32 %50, i32 %div425, !dbg !918
  %cmp435 = icmp slt i32 %.div425, 0, !dbg !918
  %..div425 = select i1 %cmp435, i32 0, i32 %.div425, !dbg !918
  call void @llvm.dbg.value(metadata !{i32 %..div425}, i64 0, metadata !160), !dbg !918
  switch i32 %and1, label %if.end926 [
    i32 1, label %if.then455
    i32 3, label %if.then495
  ], !dbg !919

if.then455:                                       ; preds = %for.end422
  %arrayidx457 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 2, !dbg !920
  %51 = load i32* %arrayidx457, align 8, !dbg !920, !tbaa !761
  %add458 = add nsw i32 %51, 16, !dbg !920
  %div459 = sdiv i32 %add458, 32, !dbg !920
  %cmp460 = icmp slt i32 %50, %div459, !dbg !920
  %.div459 = select i1 %cmp460, i32 %50, i32 %div459, !dbg !920
  %cmp470 = icmp slt i32 %.div459, 0, !dbg !920
  %..div459 = select i1 %cmp470, i32 0, i32 %.div459, !dbg !920
  %add490 = add nsw i32 %..div459, %..div425, !dbg !920
  %div491 = sdiv i32 %add490, 2, !dbg !920
  call void @llvm.dbg.value(metadata !{i32 %div491}, i64 0, metadata !160), !dbg !920
  br label %if.end926, !dbg !922

if.then495:                                       ; preds = %for.end422
  %arrayidx497 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 3, !dbg !923
  %52 = load i32* %arrayidx497, align 4, !dbg !923, !tbaa !761
  %add498 = add nsw i32 %52, 16, !dbg !923
  %div499 = sdiv i32 %add498, 32, !dbg !923
  %cmp500 = icmp slt i32 %50, %div499, !dbg !923
  %.div499 = select i1 %cmp500, i32 %50, i32 %div499, !dbg !923
  %cmp510 = icmp slt i32 %.div499, 0, !dbg !923
  %..div499 = select i1 %cmp510, i32 0, i32 %.div499, !dbg !923
  %add530 = add nsw i32 %..div499, %..div425, !dbg !923
  %div531 = sdiv i32 %add530, 2, !dbg !923
  call void @llvm.dbg.value(metadata !{i32 %div531}, i64 0, metadata !160), !dbg !923
  br label %if.end926, !dbg !925

if.else534:                                       ; preds = %if.else179
  %cmp535 = icmp eq i32 %and1, 2, !dbg !926
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !160), !dbg !927
  br i1 %cmp535, label %for.cond538.preheader, label %if.else731, !dbg !926

for.cond538.preheader:                            ; preds = %if.else534
  %53 = zext i32 %div3 to i64, !dbg !931
  %54 = zext i32 %div to i64, !dbg !931
  br label %for.body541, !dbg !931

for.body541:                                      ; preds = %for.end602, %for.cond538.preheader
  %indvars.iv1270 = phi i64 [ -2, %for.cond538.preheader ], [ %indvars.iv.next1271, %for.end602 ]
  %55 = add nsw i64 %indvars.iv1270, %54, !dbg !932
  %56 = trunc i64 %55 to i32, !dbg !932
  %cmp543 = icmp sle i32 %1, %56, !dbg !932
  %sub4.add542 = select i1 %cmp543, i32 %sub4, i32 %56, !dbg !932
  %cmp550 = icmp slt i32 %sub4.add542, 0, !dbg !932
  call void @llvm.dbg.value(metadata !872, i64 0, metadata !157), !dbg !933
  %57 = sext i32 %sub4.add542 to i64, !dbg !935
  %idxprom590 = select i1 %cmp550, i64 0, i64 %57, !dbg !935
  br label %for.body567, !dbg !933

for.body567:                                      ; preds = %for.body567, %for.body541
  %indvars.iv1264 = phi i64 [ -2, %for.body541 ], [ %indvars.iv.next1265, %for.body567 ]
  %result.41244 = phi i32 [ 0, %for.body541 ], [ %add599, %for.body567 ]
  %58 = add nsw i64 %indvars.iv1264, %53, !dbg !937
  %59 = trunc i64 %58 to i32, !dbg !937
  %cmp569 = icmp sle i32 %2, %59, !dbg !937
  %sub5.add568 = select i1 %cmp569, i32 %sub5, i32 %59, !dbg !937
  %cmp576 = icmp slt i32 %sub5.add568, 0, !dbg !937
  %60 = sext i32 %sub5.add568 to i64, !dbg !935
  %idxprom591 = select i1 %cmp576, i64 0, i64 %60, !dbg !935
  %arrayidx592 = getelementptr inbounds i16** %imY, i64 %idxprom591, !dbg !935
  %61 = load i16** %arrayidx592, align 8, !dbg !935, !tbaa !758
  %arrayidx593 = getelementptr inbounds i16* %61, i64 %idxprom590, !dbg !935
  %62 = load i16* %arrayidx593, align 2, !dbg !935, !tbaa !774
  %conv594 = zext i16 %62 to i32, !dbg !935
  %63 = add nsw i64 %indvars.iv1264, 2, !dbg !935
  %arrayidx597 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %63, !dbg !935
  %64 = load i32* %arrayidx597, align 4, !dbg !935, !tbaa !761
  %mul598 = mul nsw i32 %conv594, %64, !dbg !935
  %add599 = add nsw i32 %mul598, %result.41244, !dbg !935
  call void @llvm.dbg.value(metadata !{i32 %add599}, i64 0, metadata !160), !dbg !935
  %indvars.iv.next1265 = add i64 %indvars.iv1264, 1, !dbg !933
  %lftr.wideiv1268 = trunc i64 %indvars.iv.next1265 to i32, !dbg !933
  %exitcond1269 = icmp eq i32 %lftr.wideiv1268, 4, !dbg !933
  br i1 %exitcond1269, label %for.end602, label %for.body567, !dbg !933

for.end602:                                       ; preds = %for.body567
  %65 = add nsw i64 %indvars.iv1270, 2, !dbg !938
  %arrayidx605 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 %65, !dbg !938
  store i32 %add599, i32* %arrayidx605, align 4, !dbg !938, !tbaa !761
  %indvars.iv.next1271 = add i64 %indvars.iv1270, 1, !dbg !931
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !160), !dbg !927
  %lftr.wideiv1274 = trunc i64 %indvars.iv.next1271 to i32, !dbg !931
  %exitcond1275 = icmp eq i32 %lftr.wideiv1274, 4, !dbg !931
  br i1 %exitcond1275, label %for.body612, label %for.body541, !dbg !931

for.body612:                                      ; preds = %for.end602, %for.body612
  %indvars.iv1259 = phi i64 [ %indvars.iv.next1260, %for.body612 ], [ -2, %for.end602 ]
  %result.51242 = phi i32 [ %add620, %for.body612 ], [ 0, %for.end602 ]
  %66 = add nsw i64 %indvars.iv1259, 2, !dbg !939
  %arrayidx615 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 %66, !dbg !939
  %67 = load i32* %arrayidx615, align 4, !dbg !939, !tbaa !761
  %arrayidx618 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %66, !dbg !939
  %68 = load i32* %arrayidx618, align 4, !dbg !939, !tbaa !761
  %mul619 = mul nsw i32 %68, %67, !dbg !939
  %add620 = add nsw i32 %mul619, %result.51242, !dbg !939
  call void @llvm.dbg.value(metadata !{i32 %add620}, i64 0, metadata !160), !dbg !939
  %indvars.iv.next1260 = add i64 %indvars.iv1259, 1, !dbg !942
  %lftr.wideiv1262 = trunc i64 %indvars.iv.next1260 to i32, !dbg !942
  %exitcond1263 = icmp eq i32 %lftr.wideiv1262, 4, !dbg !942
  br i1 %exitcond1263, label %for.end623, label %for.body612, !dbg !942

for.end623:                                       ; preds = %for.body612
  %max_imgpel_value624 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155, !dbg !943
  %69 = load i32* %max_imgpel_value624, align 4, !dbg !943, !tbaa !761
  %add625 = add nsw i32 %add620, 512, !dbg !943
  %div626 = sdiv i32 %add625, 1024, !dbg !943
  %cmp627 = icmp slt i32 %69, %div626, !dbg !943
  %.div626 = select i1 %cmp627, i32 %69, i32 %div626, !dbg !943
  %cmp636 = icmp slt i32 %.div626, 0, !dbg !943
  %..div626 = select i1 %cmp636, i32 0, i32 %.div626, !dbg !943
  call void @llvm.dbg.value(metadata !{i32 %..div626}, i64 0, metadata !160), !dbg !943
  %cmp654 = icmp eq i32 %and, 1, !dbg !944
  br i1 %cmp654, label %if.then656, label %if.else693, !dbg !944

if.then656:                                       ; preds = %for.end623
  %arrayidx658 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 2, !dbg !945
  %70 = load i32* %arrayidx658, align 8, !dbg !945, !tbaa !761
  %add659 = add nsw i32 %70, 16, !dbg !945
  %div660 = sdiv i32 %add659, 32, !dbg !945
  %cmp661 = icmp slt i32 %69, %div660, !dbg !945
  %.div660 = select i1 %cmp661, i32 %69, i32 %div660, !dbg !945
  %cmp671 = icmp slt i32 %.div660, 0, !dbg !945
  %..div660 = select i1 %cmp671, i32 0, i32 %.div660, !dbg !945
  %add691 = add nsw i32 %..div660, %..div626, !dbg !945
  %div692 = sdiv i32 %add691, 2, !dbg !945
  call void @llvm.dbg.value(metadata !{i32 %div692}, i64 0, metadata !160), !dbg !945
  br label %if.end926, !dbg !947

if.else693:                                       ; preds = %for.end623
  %arrayidx695 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 3, !dbg !948
  %71 = load i32* %arrayidx695, align 4, !dbg !948, !tbaa !761
  %add696 = add nsw i32 %71, 16, !dbg !948
  %div697 = sdiv i32 %add696, 32, !dbg !948
  %cmp698 = icmp slt i32 %69, %div697, !dbg !948
  %.div697 = select i1 %cmp698, i32 %69, i32 %div697, !dbg !948
  %cmp708 = icmp slt i32 %.div697, 0, !dbg !948
  %..div697 = select i1 %cmp708, i32 0, i32 %.div697, !dbg !948
  %add728 = add nsw i32 %..div697, %..div626, !dbg !948
  %div729 = sdiv i32 %add728, 2, !dbg !948
  call void @llvm.dbg.value(metadata !{i32 %div729}, i64 0, metadata !160), !dbg !948
  br label %if.end926

if.else731:                                       ; preds = %if.else534
  %not.cmp732 = icmp ne i32 %and1, 1, !dbg !950
  %add736 = zext i1 %not.cmp732 to i32, !dbg !950
  %cond738 = add nsw i32 %div3, %add736, !dbg !950
  call void @llvm.dbg.value(metadata !{i32 %cond738}, i64 0, metadata !164), !dbg !950
  %cmp739 = icmp slt i32 %sub5, %cond738, !dbg !952
  %cond744 = select i1 %cmp739, i32 %sub5, i32 %cond738, !dbg !952
  %cmp745 = icmp slt i32 %cond744, 0, !dbg !952
  %phitmp1216 = sext i32 %cond744 to i64, !dbg !952
  %.phitmp1216 = select i1 %cmp745, i64 0, i64 %phitmp1216, !dbg !952
  call void @llvm.dbg.value(metadata !872, i64 0, metadata !155), !dbg !953
  %arrayidx785 = getelementptr inbounds i16** %imY, i64 %.phitmp1216, !dbg !955
  %72 = load i16** %arrayidx785, align 8, !dbg !955, !tbaa !758
  %73 = zext i32 %div to i64, !dbg !953
  br label %for.body760, !dbg !953

for.body760:                                      ; preds = %for.body760, %if.else731
  %indvars.iv1282 = phi i64 [ -2, %if.else731 ], [ %indvars.iv.next1283, %for.body760 ]
  %result.61249 = phi i32 [ 0, %if.else731 ], [ %add792, %for.body760 ]
  %74 = add nsw i64 %indvars.iv1282, %73, !dbg !957
  %75 = trunc i64 %74 to i32, !dbg !957
  %cmp762 = icmp sle i32 %1, %75, !dbg !957
  %sub4.add761 = select i1 %cmp762, i32 %sub4, i32 %75, !dbg !957
  %cmp769 = icmp slt i32 %sub4.add761, 0, !dbg !957
  %76 = sext i32 %sub4.add761 to i64, !dbg !955
  %idxprom783 = select i1 %cmp769, i64 0, i64 %76, !dbg !955
  %arrayidx786 = getelementptr inbounds i16* %72, i64 %idxprom783, !dbg !955
  %77 = load i16* %arrayidx786, align 2, !dbg !955, !tbaa !774
  %conv787 = zext i16 %77 to i32, !dbg !955
  %78 = add nsw i64 %indvars.iv1282, 2, !dbg !955
  %arrayidx790 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %78, !dbg !955
  %79 = load i32* %arrayidx790, align 4, !dbg !955, !tbaa !761
  %mul791 = mul nsw i32 %conv787, %79, !dbg !955
  %add792 = add nsw i32 %mul791, %result.61249, !dbg !955
  call void @llvm.dbg.value(metadata !{i32 %add792}, i64 0, metadata !160), !dbg !955
  %indvars.iv.next1283 = add i64 %indvars.iv1282, 1, !dbg !953
  %lftr.wideiv1286 = trunc i64 %indvars.iv.next1283 to i32, !dbg !953
  %exitcond1287 = icmp eq i32 %lftr.wideiv1286, 4, !dbg !953
  br i1 %exitcond1287, label %for.end795, label %for.body760, !dbg !953

for.end795:                                       ; preds = %for.body760
  %max_imgpel_value796 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155, !dbg !958
  %80 = load i32* %max_imgpel_value796, align 4, !dbg !958, !tbaa !761
  %add797 = add nsw i32 %add792, 16, !dbg !958
  %div798 = sdiv i32 %add797, 32, !dbg !958
  %cmp799 = icmp slt i32 %80, %div798, !dbg !958
  %.div798 = select i1 %cmp799, i32 %80, i32 %div798, !dbg !958
  %cmp808 = icmp slt i32 %.div798, 0, !dbg !958
  call void @llvm.dbg.value(metadata !{i32 %..div798}, i64 0, metadata !161), !dbg !958
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !160), !dbg !959
  %not.cmp826 = icmp ne i32 %and, 1, !dbg !960
  %add830 = zext i1 %not.cmp826 to i32, !dbg !960
  %cond832 = add nsw i32 %div, %add830, !dbg !960
  call void @llvm.dbg.value(metadata !{i32 %cond832}, i64 0, metadata !163), !dbg !960
  %cmp833 = icmp slt i32 %sub4, %cond832, !dbg !961
  %cond838 = select i1 %cmp833, i32 %sub4, i32 %cond832, !dbg !961
  %cmp839 = icmp slt i32 %cond838, 0, !dbg !961
  %phitmp = sext i32 %cond838 to i64, !dbg !961
  %.phitmp = select i1 %cmp839, i64 0, i64 %phitmp, !dbg !961
  call void @llvm.dbg.value(metadata !872, i64 0, metadata !157), !dbg !962
  %81 = zext i32 %div3 to i64, !dbg !962
  br label %for.body854, !dbg !962

for.body854:                                      ; preds = %for.body854, %for.end795
  %indvars.iv1276 = phi i64 [ -2, %for.end795 ], [ %indvars.iv.next1277, %for.body854 ]
  %result.71247 = phi i32 [ 0, %for.end795 ], [ %add886, %for.body854 ]
  %82 = add nsw i64 %indvars.iv1276, %81, !dbg !964
  %83 = trunc i64 %82 to i32, !dbg !964
  %cmp856 = icmp sle i32 %2, %83, !dbg !964
  %sub5.add855 = select i1 %cmp856, i32 %sub5, i32 %83, !dbg !964
  %cmp863 = icmp slt i32 %sub5.add855, 0, !dbg !964
  %84 = sext i32 %sub5.add855 to i64, !dbg !966
  %idxprom878 = select i1 %cmp863, i64 0, i64 %84, !dbg !966
  %arrayidx879 = getelementptr inbounds i16** %imY, i64 %idxprom878, !dbg !966
  %85 = load i16** %arrayidx879, align 8, !dbg !966, !tbaa !758
  %arrayidx880 = getelementptr inbounds i16* %85, i64 %.phitmp, !dbg !966
  %86 = load i16* %arrayidx880, align 2, !dbg !966, !tbaa !774
  %conv881 = zext i16 %86 to i32, !dbg !966
  %87 = add nsw i64 %indvars.iv1276, 2, !dbg !966
  %arrayidx884 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %87, !dbg !966
  %88 = load i32* %arrayidx884, align 4, !dbg !966, !tbaa !761
  %mul885 = mul nsw i32 %conv881, %88, !dbg !966
  %add886 = add nsw i32 %mul885, %result.71247, !dbg !966
  call void @llvm.dbg.value(metadata !{i32 %add886}, i64 0, metadata !160), !dbg !966
  %indvars.iv.next1277 = add i64 %indvars.iv1276, 1, !dbg !962
  %lftr.wideiv1280 = trunc i64 %indvars.iv.next1277 to i32, !dbg !962
  %exitcond1281 = icmp eq i32 %lftr.wideiv1280, 4, !dbg !962
  br i1 %exitcond1281, label %for.end889, label %for.body854, !dbg !962

for.end889:                                       ; preds = %for.body854
  %..div798 = select i1 %cmp808, i32 0, i32 %.div798, !dbg !958
  %add891 = add nsw i32 %add886, 16, !dbg !967
  %div892 = sdiv i32 %add891, 32, !dbg !967
  %cmp893 = icmp slt i32 %80, %div892, !dbg !967
  %.div892 = select i1 %cmp893, i32 %80, i32 %div892, !dbg !967
  %cmp902 = icmp slt i32 %.div892, 0, !dbg !967
  %..div892 = select i1 %cmp902, i32 0, i32 %.div892, !dbg !967
  call void @llvm.dbg.value(metadata !{i32 %..div892}, i64 0, metadata !162), !dbg !967
  %add920 = add nsw i32 %..div892, %..div798, !dbg !968
  %div921 = sdiv i32 %add920, 2, !dbg !968
  call void @llvm.dbg.value(metadata !{i32 %div921}, i64 0, metadata !160), !dbg !968
  br label %if.end926

if.end926:                                        ; preds = %for.end422, %for.end239, %for.end, %if.then148, %if.then119, %if.then495, %if.then455, %if.then656, %if.else693, %for.end889, %if.then272, %if.then301, %if.then
  %result.8 = phi i32 [ %conv, %if.then ], [ %div144, %if.then119 ], [ %div177, %if.then148 ], [ %div297, %if.then272 ], [ %div330, %if.then301 ], [ %div491, %if.then455 ], [ %div531, %if.then495 ], [ %div692, %if.then656 ], [ %div729, %if.else693 ], [ %div921, %for.end889 ], [ %..div89, %for.end ], [ %..div242, %for.end239 ], [ %..div425, %for.end422 ]
  %conv927 = trunc i32 %result.8 to i8, !dbg !969
  ret i8 %conv927, !dbg !969
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateDecoders() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !173), !dbg !970
  %0 = load %struct.InputParameters** @input, align 8, !dbg !970, !tbaa !758
  %NoOfDecoders15 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 97, !dbg !970
  %1 = load i32* %NoOfDecoders15, align 4, !dbg !970, !tbaa !761
  %cmp16 = icmp sgt i32 %1, 0, !dbg !970
  br i1 %cmp16, label %for.body, label %for.end, !dbg !970

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %2 = load %struct.Decoders** @decs, align 8, !dbg !972, !tbaa !758
  %status_map = getelementptr inbounds %struct.Decoders* %2, i64 0, i32 5, !dbg !972
  %3 = load i8*** %status_map, align 8, !dbg !972, !tbaa !758
  tail call void @Build_Status_Map(i8** %3) #6, !dbg !972
  %4 = load %struct.Decoders** @decs, align 8, !dbg !974, !tbaa !758
  %decY_best = getelementptr inbounds %struct.Decoders* %4, i64 0, i32 3, !dbg !974
  %5 = load i16**** %decY_best, align 8, !dbg !974, !tbaa !758
  %arrayidx = getelementptr inbounds i16*** %5, i64 %indvars.iv, !dbg !974
  %6 = load i16*** %arrayidx, align 8, !dbg !974, !tbaa !758
  %status_map1 = getelementptr inbounds %struct.Decoders* %4, i64 0, i32 5, !dbg !974
  %7 = load i8*** %status_map1, align 8, !dbg !974, !tbaa !758
  %decref = getelementptr inbounds %struct.Decoders* %4, i64 0, i32 2, !dbg !974
  %8 = load i16***** %decref, align 8, !dbg !974, !tbaa !758
  %arrayidx3 = getelementptr inbounds i16**** %8, i64 %indvars.iv, !dbg !974
  %9 = load i16**** %arrayidx3, align 8, !dbg !974, !tbaa !758
  tail call void @Error_Concealment(i16** %6, i8** %7, i16*** %9) #6, !dbg !974
  %10 = load %struct.Decoders** @decs, align 8, !dbg !975, !tbaa !758
  %decY_best5 = getelementptr inbounds %struct.Decoders* %10, i64 0, i32 3, !dbg !975
  %11 = load i16**** %decY_best5, align 8, !dbg !975, !tbaa !758
  %arrayidx6 = getelementptr inbounds i16*** %11, i64 %indvars.iv, !dbg !975
  %12 = load i16*** %arrayidx6, align 8, !dbg !975, !tbaa !758
  %decref8 = getelementptr inbounds %struct.Decoders* %10, i64 0, i32 2, !dbg !975
  %13 = load i16***** %decref8, align 8, !dbg !975, !tbaa !758
  %arrayidx9 = getelementptr inbounds i16**** %13, i64 %indvars.iv, !dbg !975
  %14 = load i16**** %arrayidx9, align 8, !dbg !975, !tbaa !758
  tail call void @DecOneForthPix(i16** %12, i16*** %14) #6, !dbg !975
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !970
  %15 = load %struct.InputParameters** @input, align 8, !dbg !970, !tbaa !758
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters* %15, i64 0, i32 97, !dbg !970
  %16 = load i32* %NoOfDecoders, align 4, !dbg !970, !tbaa !761
  %17 = trunc i64 %indvars.iv.next to i32, !dbg !970
  %cmp = icmp slt i32 %17, %16, !dbg !970
  br i1 %cmp, label %for.body, label %for.end, !dbg !970

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !976
}

; Function Attrs: nounwind optsize uwtable
define void @Build_Status_Map(i8** nocapture %s_map) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %s_map}, i64 0, metadata !206), !dbg !977
  tail call void @llvm.dbg.value(metadata !978, i64 0, metadata !209), !dbg !979
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !210), !dbg !979
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !213), !dbg !979
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !980, !tbaa !758
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !980
  %1 = load i32* %height, align 4, !dbg !980, !tbaa !761
  %div = sdiv i32 %1, 16, !dbg !980
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !211), !dbg !980
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !981
  %2 = load i32* %width, align 4, !dbg !981, !tbaa !761
  %div1 = sdiv i32 %2, 16, !dbg !981
  tail call void @llvm.dbg.value(metadata !{i32 %div1}, i64 0, metadata !212), !dbg !981
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !208), !dbg !982
  %cmp78 = icmp sgt i32 %1, 15, !dbg !982
  br i1 %cmp78, label %for.cond2.preheader.lr.ph, label %for.end55, !dbg !982

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %cmp371 = icmp sgt i32 %2, 15, !dbg !984
  %3 = icmp sgt i32 %div1, 1, !dbg !984
  %smax = select i1 %3, i32 %div1, i32 1, !dbg !984
  br label %for.cond2.preheader, !dbg !982

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.inc53
  %indvars.iv85 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next86, %for.inc53 ]
  %packet_lost.082 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %packet_lost.1.lcssa, %for.inc53 ]
  %mb.080 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %mb.1.lcssa, %for.inc53 ]
  %slice.079 = phi i32 [ -1, %for.cond2.preheader.lr.ph ], [ %slice.1.lcssa, %for.inc53 ]
  br i1 %cmp371, label %for.body4.lr.ph, label %for.inc53, !dbg !984

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %arrayidx35 = getelementptr inbounds i8** %s_map, i64 %indvars.iv85, !dbg !986
  %4 = sext i32 %mb.080 to i64, !dbg !984
  br label %for.body4, !dbg !984

for.body4:                                        ; preds = %if.end50.for.body4_crit_edge, %for.body4.lr.ph
  %indvars.iv83 = phi i64 [ %4, %for.body4.lr.ph ], [ %indvars.iv.next84, %if.end50.for.body4_crit_edge ], !dbg !984
  %indvars.iv = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next, %if.end50.for.body4_crit_edge ]
  %packet_lost.175 = phi i32 [ %packet_lost.082, %for.body4.lr.ph ], [ %packet_lost.5, %if.end50.for.body4_crit_edge ]
  %slice.172 = phi i32 [ %slice.079, %for.body4.lr.ph ], [ %slice.2, %if.end50.for.body4_crit_edge ]
  %5 = load %struct.InputParameters** @input, align 8, !dbg !989, !tbaa !758
  %slice_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 22, !dbg !989
  %6 = load i32* %slice_mode, align 4, !dbg !989, !tbaa !761
  %tobool = icmp eq i32 %6, 0, !dbg !989
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !989

lor.lhs.false:                                    ; preds = %for.body4
  %7 = load %struct.ImageParameters** @img, align 8, !dbg !989, !tbaa !758
  %mb_data = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 51, !dbg !989
  %8 = load %struct.macroblock** %mb_data, align 8, !dbg !989, !tbaa !758
  %slice_nr = getelementptr inbounds %struct.macroblock* %8, i64 %indvars.iv83, i32 1, !dbg !989
  %9 = load i32* %slice_nr, align 4, !dbg !989, !tbaa !761
  %cmp5 = icmp eq i32 %9, %slice.172, !dbg !989
  br i1 %cmp5, label %if.end30, label %if.then, !dbg !989

if.then:                                          ; preds = %lor.lhs.false, %for.body4
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !213), !dbg !990
  %call = tail call i32 @rand() #7, !dbg !992
  %conv = sitofp i32 %call to double, !dbg !992
  %div6 = fdiv double %conv, 0x41DFFFFFFFC00000, !dbg !992
  %mul = fmul double %div6, 1.000000e+02, !dbg !992
  %10 = load %struct.InputParameters** @input, align 8, !dbg !992, !tbaa !758
  %LossRateC = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 96, !dbg !992
  %11 = load i32* %LossRateC, align 4, !dbg !992, !tbaa !761
  %conv7 = sitofp i32 %11 to double, !dbg !992
  %cmp8 = fcmp olt double %mul, %conv7, !dbg !992
  tail call void @llvm.dbg.value(metadata !993, i64 0, metadata !213), !dbg !992
  %packet_lost.2 = select i1 %cmp8, i32 3, i32 0, !dbg !992
  %call11 = tail call i32 @rand() #7, !dbg !994
  %conv12 = sitofp i32 %call11 to double, !dbg !994
  %div13 = fdiv double %conv12, 0x41DFFFFFFFC00000, !dbg !994
  %mul14 = fmul double %div13, 1.000000e+02, !dbg !994
  %12 = load %struct.InputParameters** @input, align 8, !dbg !994, !tbaa !758
  %LossRateB = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 95, !dbg !994
  %13 = load i32* %LossRateB, align 4, !dbg !994, !tbaa !761
  %conv15 = sitofp i32 %13 to double, !dbg !994
  %cmp16 = fcmp olt double %mul14, %conv15, !dbg !994
  %add19 = add nsw i32 %packet_lost.2, 2, !dbg !994
  tail call void @llvm.dbg.value(metadata !{i32 %add19}, i64 0, metadata !213), !dbg !994
  %packet_lost.3 = select i1 %cmp16, i32 %add19, i32 %packet_lost.2, !dbg !994
  %call21 = tail call i32 @rand() #7, !dbg !995
  %conv22 = sitofp i32 %call21 to double, !dbg !995
  %div23 = fdiv double %conv22, 0x41DFFFFFFFC00000, !dbg !995
  %mul24 = fmul double %div23, 1.000000e+02, !dbg !995
  %14 = load %struct.InputParameters** @input, align 8, !dbg !995, !tbaa !758
  %LossRateA = getelementptr inbounds %struct.InputParameters* %14, i64 0, i32 94, !dbg !995
  %15 = load i32* %LossRateA, align 4, !dbg !995, !tbaa !761
  %conv25 = sitofp i32 %15 to double, !dbg !995
  %cmp26 = fcmp olt double %mul24, %conv25, !dbg !995
  tail call void @llvm.dbg.value(metadata !996, i64 0, metadata !213), !dbg !995
  %packet_lost.4 = select i1 %cmp26, i32 1, i32 %packet_lost.3, !dbg !995
  %inc = add nsw i32 %slice.172, 1, !dbg !997
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !209), !dbg !997
  br label %if.end30, !dbg !998

if.end30:                                         ; preds = %lor.lhs.false, %if.then
  %slice.2 = phi i32 [ %inc, %if.then ], [ %slice.172, %lor.lhs.false ]
  %packet_lost.5 = phi i32 [ %packet_lost.4, %if.then ], [ %packet_lost.175, %lor.lhs.false ]
  %tobool31 = icmp eq i32 %packet_lost.5, 0, !dbg !999
  br i1 %tobool31, label %if.then32, label %if.else, !dbg !999

if.then32:                                        ; preds = %if.end30
  %16 = load i8** %arrayidx35, align 8, !dbg !986, !tbaa !758
  %arrayidx36 = getelementptr inbounds i8* %16, i64 %indvars.iv, !dbg !986
  store i8 0, i8* %arrayidx36, align 1, !dbg !986, !tbaa !759
  br label %if.end50, !dbg !1000

if.else:                                          ; preds = %if.end30
  %conv37 = trunc i32 %packet_lost.5 to i8, !dbg !1001
  %17 = load i8** %arrayidx35, align 8, !dbg !1001, !tbaa !758
  %arrayidx41 = getelementptr inbounds i8* %17, i64 %indvars.iv, !dbg !1001
  store i8 %conv37, i8* %arrayidx41, align 1, !dbg !1001, !tbaa !759
  %18 = load %struct.InputParameters** @input, align 8, !dbg !1003, !tbaa !758
  %partition_mode = getelementptr inbounds %struct.InputParameters* %18, i64 0, i32 61, !dbg !1003
  %19 = load i32* %partition_mode, align 4, !dbg !1003, !tbaa !761
  %cmp42 = icmp eq i32 %19, 0, !dbg !1003
  br i1 %cmp42, label %if.then44, label %if.end50, !dbg !1003

if.then44:                                        ; preds = %if.else
  %20 = load i8** %arrayidx35, align 8, !dbg !1003, !tbaa !758
  %arrayidx48 = getelementptr inbounds i8* %20, i64 %indvars.iv, !dbg !1003
  store i8 1, i8* %arrayidx48, align 1, !dbg !1003, !tbaa !759
  br label %if.end50, !dbg !1003

if.end50:                                         ; preds = %if.else, %if.then44, %if.then32
  tail call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !210), !dbg !1004
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !984
  %21 = trunc i64 %indvars.iv.next to i32, !dbg !984
  %cmp3 = icmp slt i32 %21, %div1, !dbg !984
  br i1 %cmp3, label %if.end50.for.body4_crit_edge, label %for.cond2.for.inc53_crit_edge, !dbg !984

if.end50.for.body4_crit_edge:                     ; preds = %if.end50
  %indvars.iv.next84 = add i64 %indvars.iv83, 1, !dbg !984
  br label %for.body4, !dbg !984

for.cond2.for.inc53_crit_edge:                    ; preds = %if.end50
  %22 = add i32 %smax, %mb.080, !dbg !984
  br label %for.inc53, !dbg !984

for.inc53:                                        ; preds = %for.cond2.for.inc53_crit_edge, %for.cond2.preheader
  %packet_lost.1.lcssa = phi i32 [ %packet_lost.5, %for.cond2.for.inc53_crit_edge ], [ %packet_lost.082, %for.cond2.preheader ]
  %mb.1.lcssa = phi i32 [ %22, %for.cond2.for.inc53_crit_edge ], [ %mb.080, %for.cond2.preheader ]
  %slice.1.lcssa = phi i32 [ %slice.2, %for.cond2.for.inc53_crit_edge ], [ %slice.079, %for.cond2.preheader ]
  %indvars.iv.next86 = add i64 %indvars.iv85, 1, !dbg !982
  %23 = trunc i64 %indvars.iv.next86 to i32, !dbg !982
  %cmp = icmp slt i32 %23, %div, !dbg !982
  br i1 %cmp, label %for.cond2.preheader, label %for.end55, !dbg !982

for.end55:                                        ; preds = %for.inc53, %entry
  ret void, !dbg !1005
}

; Function Attrs: nounwind optsize uwtable
define void @Error_Concealment(i16** nocapture %inY, i8** nocapture %s_map, i16*** nocapture %refY) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16** %inY}, i64 0, metadata !218), !dbg !1006
  tail call void @llvm.dbg.value(metadata !{i8** %s_map}, i64 0, metadata !219), !dbg !1006
  tail call void @llvm.dbg.value(metadata !{i16*** %refY}, i64 0, metadata !220), !dbg !1006
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1007, !tbaa !758
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !1007
  %1 = load i32* %height, align 4, !dbg !1007, !tbaa !761
  %div = sdiv i32 %1, 16, !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !223), !dbg !1007
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !1008
  %2 = load i32* %width, align 4, !dbg !1008, !tbaa !761
  %div1 = sdiv i32 %2, 16, !dbg !1008
  tail call void @llvm.dbg.value(metadata !{i32 %div1}, i64 0, metadata !224), !dbg !1008
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !221), !dbg !1009
  %cmp19 = icmp sgt i32 %1, 15, !dbg !1009
  br i1 %cmp19, label %for.cond2.preheader.lr.ph, label %for.end9, !dbg !1009

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %cmp317 = icmp sgt i32 %2, 15, !dbg !1011
  br label %for.cond2.preheader, !dbg !1009

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.inc7
  %indvars.iv21 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next22, %for.inc7 ]
  br i1 %cmp317, label %for.body4.lr.ph, label %for.inc7, !dbg !1011

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %arrayidx = getelementptr inbounds i8** %s_map, i64 %indvars.iv21, !dbg !1013
  br label %for.body4, !dbg !1011

for.body4:                                        ; preds = %for.inc, %for.body4.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %3 = load i8** %arrayidx, align 8, !dbg !1013, !tbaa !758
  %arrayidx6 = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !1013
  %4 = load i8* %arrayidx6, align 1, !dbg !1013, !tbaa !759
  %tobool = icmp eq i8 %4, 0, !dbg !1013
  br i1 %tobool, label %for.inc, label %if.then, !dbg !1013

if.then:                                          ; preds = %for.body4
  %5 = trunc i64 %indvars.iv to i32, !dbg !1013
  %6 = trunc i64 %indvars.iv21 to i32, !dbg !1013
  tail call void @Conceal_Error(i16** %inY, i32 %6, i32 %5, i16*** %refY, i8** %s_map) #6, !dbg !1013
  br label %for.inc, !dbg !1013

for.inc:                                          ; preds = %for.body4, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1011
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !1011
  %cmp3 = icmp slt i32 %7, %div1, !dbg !1011
  br i1 %cmp3, label %for.body4, label %for.inc7, !dbg !1011

for.inc7:                                         ; preds = %for.inc, %for.cond2.preheader
  %indvars.iv.next22 = add i64 %indvars.iv21, 1, !dbg !1009
  %8 = trunc i64 %indvars.iv.next22 to i32, !dbg !1009
  %cmp = icmp slt i32 %8, %div, !dbg !1009
  br i1 %cmp, label %for.cond2.preheader, label %for.end9, !dbg !1009

for.end9:                                         ; preds = %for.inc7, %entry
  ret void, !dbg !1015
}

; Function Attrs: nounwind optsize uwtable
define void @DecOneForthPix(i16** nocapture %dY, i16*** nocapture %dref) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16** %dY}, i64 0, metadata !179), !dbg !1016
  tail call void @llvm.dbg.value(metadata !{i16*** %dref}, i64 0, metadata !180), !dbg !1016
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1017, !tbaa !758
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !182), !dbg !1017
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !181), !dbg !1018
  %height8 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !1018
  %1 = load i32* %height8, align 4, !dbg !1018, !tbaa !761
  %cmp9 = icmp sgt i32 %1, 0, !dbg !1018
  br i1 %cmp9, label %for.body.lr.ph, label %for.end, !dbg !1018

for.body.lr.ph:                                   ; preds = %entry
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0, !dbg !1017
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 84, !dbg !1017
  %2 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1017, !tbaa !761
  %3 = load i32* %number, align 4, !dbg !1017, !tbaa !761
  %4 = load i32* %buf_cycle, align 4, !dbg !1017, !tbaa !761
  %sub = sub nsw i32 %3, %2, !dbg !1017
  %rem = srem i32 %sub, %4, !dbg !1017
  %idxprom1 = sext i32 %rem to i64, !dbg !1020
  %arrayidx = getelementptr inbounds i16*** %dref, i64 %idxprom1, !dbg !1020
  br label %for.body, !dbg !1018

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %5 = phi %struct.ImageParameters* [ %0, %for.body.lr.ph ], [ %12, %for.body ]
  %6 = load i16*** %arrayidx, align 8, !dbg !1020, !tbaa !758
  %arrayidx2 = getelementptr inbounds i16** %6, i64 %indvars.iv, !dbg !1020
  %7 = load i16** %arrayidx2, align 8, !dbg !1020, !tbaa !758
  %8 = bitcast i16* %7 to i8*, !dbg !1020
  %arrayidx4 = getelementptr inbounds i16** %dY, i64 %indvars.iv, !dbg !1020
  %9 = load i16** %arrayidx4, align 8, !dbg !1020, !tbaa !758
  %10 = bitcast i16* %9 to i8*, !dbg !1020
  %width = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 13, !dbg !1020
  %11 = load i32* %width, align 4, !dbg !1020, !tbaa !761
  %conv = sext i32 %11 to i64, !dbg !1020
  %mul = shl nsw i64 %conv, 1, !dbg !1020
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %10, i64 %mul, i32 2, i1 false), !dbg !1020
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1018
  %12 = load %struct.ImageParameters** @img, align 8, !dbg !1018, !tbaa !758
  %height = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 15, !dbg !1018
  %13 = load i32* %height, align 4, !dbg !1018, !tbaa !761
  %14 = trunc i64 %indvars.iv.next to i32, !dbg !1018
  %cmp = icmp slt i32 %14, %13, !dbg !1018
  br i1 %cmp, label %for.body, label %for.end, !dbg !1018

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !1021
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @compute_residue_b8block(i32 %b8block, i32 %i16mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %b8block}, i64 0, metadata !187), !dbg !1022
  tail call void @llvm.dbg.value(metadata !{i32 %i16mode}, i64 0, metadata !188), !dbg !1022
  %rem = srem i32 %b8block, 2, !dbg !1023
  %shl = shl i32 %rem, 3, !dbg !1023
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !191), !dbg !1023
  %add = add nsw i32 %shl, 8, !dbg !1023
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !192), !dbg !1023
  %div = sdiv i32 %b8block, 2, !dbg !1024
  %shl1 = shl i32 %div, 3, !dbg !1024
  tail call void @llvm.dbg.value(metadata !{i32 %shl1}, i64 0, metadata !193), !dbg !1024
  %add2 = add nsw i32 %shl1, 8, !dbg !1024
  tail call void @llvm.dbg.value(metadata !{i32 %add2}, i64 0, metadata !194), !dbg !1024
  %cmp = icmp sgt i32 %i16mode, -1, !dbg !1025
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !189), !dbg !1026
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1029, !tbaa !758
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33, !dbg !1029
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34, !dbg !1029
  %1 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1029, !tbaa !758
  %imgY = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 25, !dbg !1029
  %2 = load i16*** %imgY, align 8, !dbg !1029, !tbaa !758
  br i1 %cmp, label %for.cond.preheader, label %for.cond25.preheader, !dbg !1025

for.cond25.preheader:                             ; preds = %entry
  %3 = load %struct.Decoders** @decs, align 8, !dbg !1032, !tbaa !758
  %resY51 = getelementptr inbounds %struct.Decoders* %3, i64 0, i32 0, !dbg !1032
  %4 = load i32*** %resY51, align 8, !dbg !1032, !tbaa !758
  %5 = shl i32 %div, 3, !dbg !1037
  %6 = sext i32 %5 to i64
  %7 = shl i32 %rem, 3, !dbg !1037
  %8 = sext i32 %7 to i64
  br label %for.cond29.preheader, !dbg !1037

for.cond.preheader:                               ; preds = %entry
  %idxprom13 = sext i32 %i16mode to i64, !dbg !1029
  %9 = load %struct.Decoders** @decs, align 8, !dbg !1029, !tbaa !758
  %resY = getelementptr inbounds %struct.Decoders* %9, i64 0, i32 0, !dbg !1029
  %10 = load i32*** %resY, align 8, !dbg !1029, !tbaa !758
  %11 = shl i32 %div, 3, !dbg !1026
  %12 = sext i32 %11 to i64
  %13 = shl i32 %rem, 3, !dbg !1026
  %14 = sext i32 %13 to i64
  br label %for.cond4.preheader, !dbg !1026

for.cond4.preheader:                              ; preds = %for.cond.preheader, %for.inc22
  %indvars.iv90 = phi i64 [ %14, %for.cond.preheader ], [ %indvars.iv.next91, %for.inc22 ]
  br label %for.body6, !dbg !1038

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %12, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %15 = load i32* %pix_x, align 4, !dbg !1029, !tbaa !761
  %16 = trunc i64 %indvars.iv90 to i32, !dbg !1029
  %add7 = add nsw i32 %15, %16, !dbg !1029
  %idxprom = sext i32 %add7 to i64, !dbg !1029
  %17 = load i32* %pix_y, align 4, !dbg !1029, !tbaa !761
  %18 = trunc i64 %indvars.iv to i32, !dbg !1029
  %add8 = add nsw i32 %17, %18, !dbg !1029
  %idxprom9 = sext i32 %add8 to i64, !dbg !1029
  %arrayidx = getelementptr inbounds i16** %2, i64 %idxprom9, !dbg !1029
  %19 = load i16** %arrayidx, align 8, !dbg !1029, !tbaa !758
  %arrayidx10 = getelementptr inbounds i16* %19, i64 %idxprom, !dbg !1029
  %20 = load i16* %arrayidx10, align 2, !dbg !1029, !tbaa !774
  %conv = zext i16 %20 to i32, !dbg !1029
  %arrayidx16 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 42, i64 %idxprom13, i64 %indvars.iv, i64 %indvars.iv90, !dbg !1029
  %21 = load i16* %arrayidx16, align 2, !dbg !1029, !tbaa !774
  %conv17 = zext i16 %21 to i32, !dbg !1029
  %sub = sub nsw i32 %conv, %conv17, !dbg !1029
  %arrayidx20 = getelementptr inbounds i32** %10, i64 %indvars.iv, !dbg !1029
  %22 = load i32** %arrayidx20, align 8, !dbg !1029, !tbaa !758
  %arrayidx21 = getelementptr inbounds i32* %22, i64 %indvars.iv90, !dbg !1029
  store i32 %sub, i32* %arrayidx21, align 4, !dbg !1029, !tbaa !761
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1038
  %23 = trunc i64 %indvars.iv.next to i32, !dbg !1038
  %cmp5 = icmp slt i32 %23, %add2, !dbg !1038
  br i1 %cmp5, label %for.body6, label %for.inc22, !dbg !1038

for.inc22:                                        ; preds = %for.body6
  %indvars.iv.next91 = add i64 %indvars.iv90, 1, !dbg !1026
  %24 = trunc i64 %indvars.iv.next91 to i32, !dbg !1026
  %cmp3 = icmp slt i32 %24, %add, !dbg !1026
  br i1 %cmp3, label %for.cond4.preheader, label %if.end, !dbg !1026

for.cond29.preheader:                             ; preds = %for.cond25.preheader, %for.inc57
  %indvars.iv94 = phi i64 [ %8, %for.cond25.preheader ], [ %indvars.iv.next95, %for.inc57 ]
  br label %for.body32, !dbg !1039

for.body32:                                       ; preds = %for.cond29.preheader, %for.body32
  %indvars.iv92 = phi i64 [ %6, %for.cond29.preheader ], [ %indvars.iv.next93, %for.body32 ]
  %25 = load i32* %pix_x, align 4, !dbg !1032, !tbaa !761
  %26 = trunc i64 %indvars.iv94 to i32, !dbg !1032
  %add34 = add nsw i32 %25, %26, !dbg !1032
  %idxprom35 = sext i32 %add34 to i64, !dbg !1032
  %27 = load i32* %pix_y, align 4, !dbg !1032, !tbaa !761
  %28 = trunc i64 %indvars.iv92 to i32, !dbg !1032
  %add37 = add nsw i32 %27, %28, !dbg !1032
  %idxprom38 = sext i32 %add37 to i64, !dbg !1032
  %arrayidx40 = getelementptr inbounds i16** %2, i64 %idxprom38, !dbg !1032
  %29 = load i16** %arrayidx40, align 8, !dbg !1032, !tbaa !758
  %arrayidx41 = getelementptr inbounds i16* %29, i64 %idxprom35, !dbg !1032
  %30 = load i16* %arrayidx41, align 2, !dbg !1032, !tbaa !774
  %conv42 = zext i16 %30 to i32, !dbg !1032
  %arrayidx46 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 45, i64 %indvars.iv94, i64 %indvars.iv92, !dbg !1032
  %31 = load i16* %arrayidx46, align 2, !dbg !1032, !tbaa !774
  %conv47 = zext i16 %31 to i32, !dbg !1032
  %sub48 = sub nsw i32 %conv42, %conv47, !dbg !1032
  %arrayidx52 = getelementptr inbounds i32** %4, i64 %indvars.iv92, !dbg !1032
  %32 = load i32** %arrayidx52, align 8, !dbg !1032, !tbaa !758
  %arrayidx53 = getelementptr inbounds i32* %32, i64 %indvars.iv94, !dbg !1032
  store i32 %sub48, i32* %arrayidx53, align 4, !dbg !1032, !tbaa !761
  %indvars.iv.next93 = add i64 %indvars.iv92, 1, !dbg !1039
  %33 = trunc i64 %indvars.iv.next93 to i32, !dbg !1039
  %cmp30 = icmp slt i32 %33, %add2, !dbg !1039
  br i1 %cmp30, label %for.body32, label %for.inc57, !dbg !1039

for.inc57:                                        ; preds = %for.body32
  %indvars.iv.next95 = add i64 %indvars.iv94, 1, !dbg !1037
  %34 = trunc i64 %indvars.iv.next95 to i32, !dbg !1037
  %cmp26 = icmp slt i32 %34, %add, !dbg !1037
  br i1 %cmp26, label %for.cond29.preheader, label %if.end, !dbg !1037

if.end:                                           ; preds = %for.inc57, %for.inc22
  ret void, !dbg !1040
}

; Function Attrs: nounwind optsize uwtable
define void @compute_residue_mb(i32 %i16mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %i16mode}, i64 0, metadata !199), !dbg !1041
  tail call void @compute_residue_b8block(i32 0, i32 %i16mode) #6, !dbg !1042
  tail call void @compute_residue_b8block(i32 1, i32 %i16mode) #6, !dbg !1043
  tail call void @compute_residue_b8block(i32 2, i32 %i16mode) #6, !dbg !1044
  tail call void @compute_residue_b8block(i32 3, i32 %i16mode) #6, !dbg !1045
  ret void, !dbg !1046
}

; Function Attrs: nounwind optsize
declare i32 @rand() #5

; Function Attrs: nounwind optsize uwtable
define void @Conceal_Error(i16** nocapture %inY, i32 %mb_y, i32 %mb_x, i16*** nocapture %refY, i8** nocapture %s_map) #0 {
entry:
  %mv = alloca [2 x [4 x [4 x i32]]], align 16
  call void @llvm.dbg.value(metadata !{i16** %inY}, i64 0, metadata !229), !dbg !1047
  call void @llvm.dbg.value(metadata !{i32 %mb_y}, i64 0, metadata !230), !dbg !1047
  call void @llvm.dbg.value(metadata !{i32 %mb_x}, i64 0, metadata !231), !dbg !1047
  call void @llvm.dbg.value(metadata !{i16*** %refY}, i64 0, metadata !232), !dbg !1047
  call void @llvm.dbg.value(metadata !{i8** %s_map}, i64 0, metadata !233), !dbg !1047
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1048, !tbaa !758
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0, !dbg !1048
  %1 = load i32* %number, align 4, !dbg !1048, !tbaa !761
  %2 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1048, !tbaa !761
  %sub = add i32 %1, -1, !dbg !1048
  %sub1 = sub i32 %sub, %2, !dbg !1048
  %num_ref_frames = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 8, !dbg !1048
  %3 = load i32* %num_ref_frames, align 4, !dbg !1048, !tbaa !761
  %rem = srem i32 %sub1, %3, !dbg !1048
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !238), !dbg !1048
  %mul = shl nsw i32 %mb_y, 4, !dbg !1049
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !239), !dbg !1049
  %mul2 = shl nsw i32 %mb_x, 4, !dbg !1049
  call void @llvm.dbg.value(metadata !{i32 %mul2}, i64 0, metadata !240), !dbg !1049
  %4 = bitcast [2 x [4 x [4 x i32]]]* %mv to i8*, !dbg !1050
  call void @llvm.lifetime.start(i64 128, i8* %4) #2, !dbg !1050
  call void @llvm.dbg.declare(metadata !{[2 x [4 x [4 x i32]]]* %mv}, metadata !241), !dbg !1050
  %idxprom = sext i32 %mb_y to i64, !dbg !1051
  %idxprom3 = sext i32 %mb_x to i64, !dbg !1051
  %5 = load %struct.Decoders** @decs, align 8, !dbg !1051, !tbaa !758
  %dec_mb_mode = getelementptr inbounds %struct.Decoders* %5, i64 0, i32 6, !dbg !1051
  %6 = load i8*** %dec_mb_mode, align 8, !dbg !1051, !tbaa !758
  %arrayidx = getelementptr inbounds i8** %6, i64 %idxprom3, !dbg !1051
  %7 = load i8** %arrayidx, align 8, !dbg !1051, !tbaa !758
  %arrayidx4 = getelementptr inbounds i8* %7, i64 %idxprom, !dbg !1051
  %8 = load i8* %arrayidx4, align 1, !dbg !1051, !tbaa !759
  %cmp = icmp eq i8 %8, 0, !dbg !1051
  br i1 %cmp, label %land.rhs, label %land.end14, !dbg !1051

land.rhs:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1051
  %9 = load i32* %type, align 4, !dbg !1051, !tbaa !761
  %cmp6 = icmp eq i32 %9, 0, !dbg !1051
  br i1 %cmp6, label %land.end14, label %lor.rhs, !dbg !1051

lor.rhs:                                          ; preds = %land.rhs
  %cmp9 = icmp eq i32 %9, 1, !dbg !1051
  br i1 %cmp9, label %land.rhs11, label %land.end14, !dbg !1051

land.rhs11:                                       ; preds = %lor.rhs
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 113, !dbg !1051
  %10 = load i32* %nal_reference_idc, align 4, !dbg !1051, !tbaa !761
  %cmp12 = icmp sgt i32 %10, 0, !dbg !1051
  br label %land.end14

land.end14:                                       ; preds = %land.rhs, %land.rhs11, %lor.rhs, %entry
  %11 = phi i1 [ false, %entry ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp12, %land.rhs11 ]
  %cmp21 = icmp ne i8 %8, 0, !dbg !1052
  %cmp29 = icmp ult i8 %8, 4, !dbg !1052
  %or.cond = and i1 %cmp21, %cmp29, !dbg !1052
  %cmp37 = icmp eq i8 %8, 8, !dbg !1052
  %or.cond753 = or i1 %or.cond, %cmp37, !dbg !1052
  br i1 %or.cond753, label %land.rhs39, label %land.end54, !dbg !1052

land.rhs39:                                       ; preds = %land.end14
  %type40 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1052
  %12 = load i32* %type40, align 4, !dbg !1052, !tbaa !761
  %cmp41 = icmp eq i32 %12, 0, !dbg !1052
  br i1 %cmp41, label %land.end54, label %lor.rhs43, !dbg !1052

lor.rhs43:                                        ; preds = %land.rhs39
  %cmp45 = icmp eq i32 %12, 1, !dbg !1052
  br i1 %cmp45, label %land.rhs47, label %land.end54, !dbg !1052

land.rhs47:                                       ; preds = %lor.rhs43
  %nal_reference_idc48 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 113, !dbg !1052
  %13 = load i32* %nal_reference_idc48, align 4, !dbg !1052, !tbaa !761
  %cmp49 = icmp sgt i32 %13, 0, !dbg !1052
  br label %land.end54

land.end54:                                       ; preds = %land.end14, %land.rhs39, %land.rhs47, %lor.rhs43
  %14 = phi i1 [ true, %land.rhs39 ], [ false, %lor.rhs43 ], [ %cmp49, %land.rhs47 ], [ false, %land.end14 ]
  %15 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1053, !tbaa !758
  %mv56 = getelementptr inbounds %struct.storable_picture* %15, i64 0, i32 35, !dbg !1053
  %16 = load i16***** %mv56, align 8, !dbg !1053, !tbaa !758
  %17 = load i16**** %16, align 8, !dbg !1053, !tbaa !758
  call void @llvm.dbg.value(metadata !{i16*** %17}, i64 0, metadata !245), !dbg !1053
  %arrayidx60 = getelementptr inbounds i8** %s_map, i64 %idxprom, !dbg !1054
  %18 = load i8** %arrayidx60, align 8, !dbg !1054, !tbaa !758
  %arrayidx61 = getelementptr inbounds i8* %18, i64 %idxprom3, !dbg !1054
  %19 = load i8* %arrayidx61, align 1, !dbg !1054, !tbaa !759
  %conv62 = zext i8 %19 to i32, !dbg !1054
  switch i32 %conv62, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %for.cond109.preheader
    i32 3, label %sw.bb322
    i32 2, label %sw.bb488
  ], !dbg !1054

for.cond109.preheader:                            ; preds = %land.end54
  %mul122 = shl i32 %mb_y, 2, !dbg !1055
  %mul125 = shl i32 %mb_x, 2, !dbg !1055
  %add126 = add i32 %mul125, 4, !dbg !1055
  %20 = sext i32 %mul122 to i64, !dbg !1060
  br label %for.cond113.preheader, !dbg !1060

sw.bb:                                            ; preds = %land.end54
  %type63 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1061
  %21 = load i32* %type63, align 4, !dbg !1061, !tbaa !761
  %cmp64 = icmp eq i32 %21, 2, !dbg !1061
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !235), !dbg !1062
  br i1 %cmp64, label %for.cond88.preheader, label %for.cond.preheader, !dbg !1061

for.cond.preheader:                               ; preds = %sw.bb
  %idxprom75 = sext i32 %rem to i64, !dbg !1065
  %arrayidx76 = getelementptr inbounds i16*** %refY, i64 %idxprom75, !dbg !1065
  %22 = load i16*** %arrayidx76, align 8, !dbg !1065, !tbaa !758
  %23 = sext i32 %mul2 to i64, !dbg !1062
  %24 = sext i32 %mul to i64, !dbg !1062
  br label %for.cond68.preheader, !dbg !1062

for.cond88.preheader:                             ; preds = %sw.bb
  %25 = sext i32 %mul2 to i64, !dbg !1067
  %26 = sext i32 %mul to i64, !dbg !1067
  br label %for.cond92.preheader, !dbg !1067

for.cond68.preheader:                             ; preds = %for.inc85, %for.cond.preheader
  %indvars.iv807 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next808, %for.inc85 ]
  %27 = add nsw i64 %indvars.iv807, %24, !dbg !1065
  %arrayidx77 = getelementptr inbounds i16** %22, i64 %27, !dbg !1065
  %28 = load i16** %arrayidx77, align 8, !dbg !1065, !tbaa !758
  %arrayidx83 = getelementptr inbounds i16** %inY, i64 %27, !dbg !1065
  %29 = load i16** %arrayidx83, align 8, !dbg !1065, !tbaa !758
  br label %for.body71, !dbg !1070

for.body71:                                       ; preds = %for.body71, %for.cond68.preheader
  %indvars.iv801 = phi i64 [ 0, %for.cond68.preheader ], [ %indvars.iv.next802, %for.body71 ]
  %30 = add nsw i64 %indvars.iv801, %23, !dbg !1065
  %arrayidx78 = getelementptr inbounds i16* %28, i64 %30, !dbg !1065
  %31 = load i16* %arrayidx78, align 2, !dbg !1065, !tbaa !774
  %arrayidx84 = getelementptr inbounds i16* %29, i64 %30, !dbg !1065
  store i16 %31, i16* %arrayidx84, align 2, !dbg !1065, !tbaa !774
  %indvars.iv.next802 = add i64 %indvars.iv801, 1, !dbg !1070
  %lftr.wideiv804 = trunc i64 %indvars.iv.next802 to i32, !dbg !1070
  %exitcond805 = icmp eq i32 %lftr.wideiv804, 16, !dbg !1070
  br i1 %exitcond805, label %for.inc85, label %for.body71, !dbg !1070

for.inc85:                                        ; preds = %for.body71
  %indvars.iv.next808 = add i64 %indvars.iv807, 1, !dbg !1062
  %lftr.wideiv810 = trunc i64 %indvars.iv.next808 to i32, !dbg !1062
  %exitcond811 = icmp eq i32 %lftr.wideiv810, 16, !dbg !1062
  br i1 %exitcond811, label %sw.epilog, label %for.cond68.preheader, !dbg !1062

for.cond92.preheader:                             ; preds = %for.inc105, %for.cond88.preheader
  %indvars.iv796 = phi i64 [ 0, %for.cond88.preheader ], [ %indvars.iv.next797, %for.inc105 ]
  %32 = add nsw i64 %indvars.iv796, %26, !dbg !1071
  %arrayidx100 = getelementptr inbounds i16** %inY, i64 %32, !dbg !1071
  %33 = load i16** %arrayidx100, align 8, !dbg !1071, !tbaa !758
  br label %for.body95, !dbg !1073

for.body95:                                       ; preds = %for.body95, %for.cond92.preheader
  %indvars.iv = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next, %for.body95 ]
  %34 = add nsw i64 %indvars.iv, %25, !dbg !1071
  %arrayidx101 = getelementptr inbounds i16* %33, i64 %34, !dbg !1071
  store i16 127, i16* %arrayidx101, align 2, !dbg !1071, !tbaa !774
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1073
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1073
  %exitcond = icmp eq i32 %lftr.wideiv, 16, !dbg !1073
  br i1 %exitcond, label %for.inc105, label %for.body95, !dbg !1073

for.inc105:                                       ; preds = %for.body95
  %indvars.iv.next797 = add i64 %indvars.iv796, 1, !dbg !1067
  %lftr.wideiv799 = trunc i64 %indvars.iv.next797 to i32, !dbg !1067
  %exitcond800 = icmp eq i32 %lftr.wideiv799, 16, !dbg !1067
  br i1 %exitcond800, label %sw.epilog, label %for.cond92.preheader, !dbg !1067

for.cond113.preheader:                            ; preds = %for.inc145, %for.cond109.preheader
  %indvars.iv869 = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next870, %for.inc145 ]
  %35 = add nsw i64 %indvars.iv869, %20, !dbg !1055
  br label %for.cond117.preheader, !dbg !1074

for.cond148.preheader:                            ; preds = %for.inc145
  %type166 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1075
  %36 = load i32* %type166, align 4, !dbg !1075, !tbaa !761
  %cmp167 = icmp eq i32 %36, 2, !dbg !1075
  br i1 %cmp167, label %for.cond301.preheader, label %if.then169, !dbg !1075

for.cond117.preheader:                            ; preds = %for.inc142, %for.cond113.preheader
  %indvars.iv865 = phi i64 [ 0, %for.cond113.preheader ], [ %indvars.iv.next866, %for.inc142 ]
  %37 = trunc i64 %indvars.iv865 to i32, !dbg !1055
  %add127 = add i32 %add126, %37, !dbg !1055
  %idxprom128 = sext i32 %add127 to i64, !dbg !1055
  %arrayidx129 = getelementptr inbounds i16*** %17, i64 %idxprom128, !dbg !1055
  %38 = load i16*** %arrayidx129, align 8, !dbg !1055, !tbaa !758
  %arrayidx130 = getelementptr inbounds i16** %38, i64 %35, !dbg !1055
  %39 = load i16** %arrayidx130, align 8, !dbg !1055, !tbaa !758
  br label %for.body120, !dbg !1076

for.body120:                                      ; preds = %for.body120, %for.cond117.preheader
  %indvars.iv861 = phi i64 [ 0, %for.cond117.preheader ], [ %indvars.iv.next862, %for.body120 ]
  %arrayidx131 = getelementptr inbounds i16* %39, i64 %indvars.iv861, !dbg !1055
  %40 = load i16* %arrayidx131, align 2, !dbg !1055, !tbaa !774
  %conv132 = sext i16 %40 to i32, !dbg !1055
  %arrayidx138 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 %indvars.iv861, i64 %indvars.iv869, i64 %indvars.iv865, !dbg !1055
  store i32 %conv132, i32* %arrayidx138, align 4, !dbg !1055, !tbaa !761
  %indvars.iv.next862 = add i64 %indvars.iv861, 1, !dbg !1076
  %lftr.wideiv863 = trunc i64 %indvars.iv.next862 to i32, !dbg !1076
  %exitcond864 = icmp eq i32 %lftr.wideiv863, 2, !dbg !1076
  br i1 %exitcond864, label %for.inc142, label %for.body120, !dbg !1076

for.inc142:                                       ; preds = %for.body120
  %indvars.iv.next866 = add i64 %indvars.iv865, 1, !dbg !1074
  %lftr.wideiv867 = trunc i64 %indvars.iv.next866 to i32, !dbg !1074
  %exitcond868 = icmp eq i32 %lftr.wideiv867, 4, !dbg !1074
  br i1 %exitcond868, label %for.inc145, label %for.cond117.preheader, !dbg !1074

for.inc145:                                       ; preds = %for.inc142
  %indvars.iv.next870 = add i64 %indvars.iv869, 1, !dbg !1060
  %lftr.wideiv872 = trunc i64 %indvars.iv.next870 to i32, !dbg !1060
  %exitcond873 = icmp eq i32 %lftr.wideiv872, 4, !dbg !1060
  br i1 %exitcond873, label %for.cond148.preheader, label %for.cond113.preheader, !dbg !1060

for.cond301.preheader:                            ; preds = %for.cond148.preheader
  %41 = sext i32 %mul2 to i64, !dbg !1077
  %42 = sext i32 %mul to i64, !dbg !1077
  br label %for.cond305.preheader, !dbg !1077

if.then169:                                       ; preds = %for.cond148.preheader
  %idxprom183 = sext i32 %rem to i64, !dbg !1080
  %arrayidx184 = getelementptr inbounds i16*** %refY, i64 %idxprom183, !dbg !1080
  br i1 %11, label %for.cond171.preheader, label %if.else199, !dbg !1085

for.cond171.preheader:                            ; preds = %if.then169
  %43 = load i16*** %arrayidx184, align 8, !dbg !1080, !tbaa !758
  %44 = sext i32 %mul2 to i64, !dbg !1086
  %45 = sext i32 %mul to i64, !dbg !1086
  br label %for.cond175.preheader, !dbg !1086

for.cond175.preheader:                            ; preds = %for.inc196, %for.cond171.preheader
  %indvars.iv828 = phi i64 [ 0, %for.cond171.preheader ], [ %indvars.iv.next829, %for.inc196 ]
  %46 = add nsw i64 %indvars.iv828, %45, !dbg !1080
  %arrayidx185 = getelementptr inbounds i16** %43, i64 %46, !dbg !1080
  %47 = load i16** %arrayidx185, align 8, !dbg !1080, !tbaa !758
  %arrayidx191 = getelementptr inbounds i16** %inY, i64 %46, !dbg !1080
  %48 = load i16** %arrayidx191, align 8, !dbg !1080, !tbaa !758
  br label %for.body178, !dbg !1087

for.body178:                                      ; preds = %for.body178, %for.cond175.preheader
  %indvars.iv822 = phi i64 [ 0, %for.cond175.preheader ], [ %indvars.iv.next823, %for.body178 ]
  %49 = add nsw i64 %indvars.iv822, %44, !dbg !1080
  %arrayidx186 = getelementptr inbounds i16* %47, i64 %49, !dbg !1080
  %50 = load i16* %arrayidx186, align 2, !dbg !1080, !tbaa !774
  %arrayidx192 = getelementptr inbounds i16* %48, i64 %49, !dbg !1080
  store i16 %50, i16* %arrayidx192, align 2, !dbg !1080, !tbaa !774
  %indvars.iv.next823 = add i64 %indvars.iv822, 1, !dbg !1087
  %lftr.wideiv825 = trunc i64 %indvars.iv.next823 to i32, !dbg !1087
  %exitcond826 = icmp eq i32 %lftr.wideiv825, 16, !dbg !1087
  br i1 %exitcond826, label %for.inc196, label %for.body178, !dbg !1087

for.inc196:                                       ; preds = %for.body178
  %indvars.iv.next829 = add i64 %indvars.iv828, 1, !dbg !1086
  %lftr.wideiv831 = trunc i64 %indvars.iv.next829 to i32, !dbg !1086
  %exitcond832 = icmp eq i32 %lftr.wideiv831, 16, !dbg !1086
  br i1 %exitcond832, label %sw.epilog, label %for.cond175.preheader, !dbg !1086

if.else199:                                       ; preds = %if.then169
  br i1 %14, label %if.then201, label %for.cond270.preheader, !dbg !1088

for.cond270.preheader:                            ; preds = %if.else199
  %51 = load i16*** %arrayidx184, align 8, !dbg !1089, !tbaa !758
  %52 = sext i32 %mul2 to i64, !dbg !1093
  %53 = sext i32 %mul to i64, !dbg !1093
  br label %for.cond274.preheader, !dbg !1093

if.then201:                                       ; preds = %if.else199
  call void @llvm.dbg.value(metadata !{i32 %mul122}, i64 0, metadata !237), !dbg !1094
  %54 = shl i32 %mb_x, 2, !dbg !1094
  %55 = sext i32 %54 to i64
  %56 = shl i32 %mb_y, 2, !dbg !1094
  %57 = sext i32 %56 to i64
  %RefBlock.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.Decoders* %5, i64 0, i32 4
  %.pre936.pre = load i16*** %RefBlock.phi.trans.insert.phi.trans.insert, align 8, !dbg !1097, !tbaa !758
  br label %for.body208, !dbg !1094

for.body208:                                      ; preds = %if.then201, %for.inc266
  %.pre936 = phi i16** [ %.pre936.pre, %if.then201 ], [ %66, %for.inc266 ]
  %indvars.iv846 = phi i64 [ %57, %if.then201 ], [ %indvars.iv.next847, %for.inc266 ]
  call void @llvm.dbg.value(metadata !{i32 %mul125}, i64 0, metadata !236), !dbg !1100
  %58 = trunc i64 %indvars.iv846 to i32, !dbg !1097
  %sub222 = sub nsw i32 %58, %mul122, !dbg !1097
  %idxprom223 = sext i32 %sub222 to i64, !dbg !1097
  %mul252 = shl i32 %58, 2, !dbg !1101
  %59 = sext i32 %mul252 to i64, !dbg !1100
  br label %for.body215, !dbg !1100

for.body215:                                      ; preds = %for.body208, %for.inc263
  %60 = phi i16** [ %.pre936, %for.body208 ], [ %66, %for.inc263 ], !dbg !1097
  %indvars.iv844 = phi i64 [ %55, %for.body208 ], [ %indvars.iv.next845, %for.inc263 ]
  %61 = load i16*** %arrayidx184, align 8, !dbg !1097, !tbaa !758
  %62 = trunc i64 %indvars.iv844 to i32, !dbg !1097
  %sub219 = sub nsw i32 %62, %mul125, !dbg !1097
  %idxprom220 = sext i32 %sub219 to i64, !dbg !1097
  %arrayidx226 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %idxprom223, i64 %idxprom220, !dbg !1097
  %63 = load i32* %arrayidx226, align 4, !dbg !1097, !tbaa !761
  %arrayidx235 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %idxprom223, i64 %idxprom220, !dbg !1097
  %64 = load i32* %arrayidx235, align 4, !dbg !1097, !tbaa !761
  call void @Get_Reference_Block(i16** %61, i32 %58, i32 %62, i32 %63, i32 %64, i16** %60) #6, !dbg !1097
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !235), !dbg !1105
  %65 = load %struct.Decoders** @decs, align 8, !dbg !1101, !tbaa !758
  %RefBlock246 = getelementptr inbounds %struct.Decoders* %65, i64 0, i32 4, !dbg !1101
  %66 = load i16*** %RefBlock246, align 8, !dbg !1101, !tbaa !758
  %mul249 = shl i32 %62, 2, !dbg !1101
  %67 = sext i32 %mul249 to i64, !dbg !1105
  br label %for.cond240.preheader, !dbg !1105

for.cond240.preheader:                            ; preds = %for.inc260, %for.body215
  %indvars.iv839 = phi i64 [ 0, %for.body215 ], [ %indvars.iv.next840, %for.inc260 ]
  %arrayidx247 = getelementptr inbounds i16** %66, i64 %indvars.iv839, !dbg !1101
  %68 = load i16** %arrayidx247, align 8, !dbg !1101, !tbaa !758
  %69 = add nsw i64 %indvars.iv839, %59, !dbg !1101
  %arrayidx255 = getelementptr inbounds i16** %inY, i64 %69, !dbg !1101
  %70 = load i16** %arrayidx255, align 8, !dbg !1101, !tbaa !758
  br label %for.body243, !dbg !1106

for.body243:                                      ; preds = %for.body243, %for.cond240.preheader
  %indvars.iv833 = phi i64 [ 0, %for.cond240.preheader ], [ %indvars.iv.next834, %for.body243 ]
  %arrayidx248 = getelementptr inbounds i16* %68, i64 %indvars.iv833, !dbg !1101
  %71 = load i16* %arrayidx248, align 2, !dbg !1101, !tbaa !774
  %72 = add nsw i64 %indvars.iv833, %67, !dbg !1101
  %arrayidx256 = getelementptr inbounds i16* %70, i64 %72, !dbg !1101
  store i16 %71, i16* %arrayidx256, align 2, !dbg !1101, !tbaa !774
  %indvars.iv.next834 = add i64 %indvars.iv833, 1, !dbg !1106
  %lftr.wideiv836 = trunc i64 %indvars.iv.next834 to i32, !dbg !1106
  %exitcond837 = icmp eq i32 %lftr.wideiv836, 4, !dbg !1106
  br i1 %exitcond837, label %for.inc260, label %for.body243, !dbg !1106

for.inc260:                                       ; preds = %for.body243
  %indvars.iv.next840 = add i64 %indvars.iv839, 1, !dbg !1105
  %lftr.wideiv842 = trunc i64 %indvars.iv.next840 to i32, !dbg !1105
  %exitcond843 = icmp eq i32 %lftr.wideiv842, 4, !dbg !1105
  br i1 %exitcond843, label %for.inc263, label %for.cond240.preheader, !dbg !1105

for.inc263:                                       ; preds = %for.inc260
  %indvars.iv.next845 = add i64 %indvars.iv844, 1, !dbg !1100
  %73 = or i32 %mul125, 3, !dbg !1100
  %cmp213 = icmp slt i32 %62, %73, !dbg !1100
  br i1 %cmp213, label %for.body215, label %for.inc266, !dbg !1100

for.inc266:                                       ; preds = %for.inc263
  %indvars.iv.next847 = add i64 %indvars.iv846, 1, !dbg !1094
  %74 = or i32 %mul122, 3, !dbg !1094
  %cmp206 = icmp slt i32 %58, %74, !dbg !1094
  br i1 %cmp206, label %for.body208, label %sw.epilog, !dbg !1094

for.cond274.preheader:                            ; preds = %for.inc295, %for.cond270.preheader
  %indvars.iv854 = phi i64 [ 0, %for.cond270.preheader ], [ %indvars.iv.next855, %for.inc295 ]
  %75 = add nsw i64 %indvars.iv854, %53, !dbg !1089
  %arrayidx284 = getelementptr inbounds i16** %51, i64 %75, !dbg !1089
  %76 = load i16** %arrayidx284, align 8, !dbg !1089, !tbaa !758
  %arrayidx290 = getelementptr inbounds i16** %inY, i64 %75, !dbg !1089
  %77 = load i16** %arrayidx290, align 8, !dbg !1089, !tbaa !758
  br label %for.body277, !dbg !1107

for.body277:                                      ; preds = %for.body277, %for.cond274.preheader
  %indvars.iv848 = phi i64 [ 0, %for.cond274.preheader ], [ %indvars.iv.next849, %for.body277 ]
  %78 = add nsw i64 %indvars.iv848, %52, !dbg !1089
  %arrayidx285 = getelementptr inbounds i16* %76, i64 %78, !dbg !1089
  %79 = load i16* %arrayidx285, align 2, !dbg !1089, !tbaa !774
  %arrayidx291 = getelementptr inbounds i16* %77, i64 %78, !dbg !1089
  store i16 %79, i16* %arrayidx291, align 2, !dbg !1089, !tbaa !774
  %indvars.iv.next849 = add i64 %indvars.iv848, 1, !dbg !1107
  %lftr.wideiv851 = trunc i64 %indvars.iv.next849 to i32, !dbg !1107
  %exitcond852 = icmp eq i32 %lftr.wideiv851, 16, !dbg !1107
  br i1 %exitcond852, label %for.inc295, label %for.body277, !dbg !1107

for.inc295:                                       ; preds = %for.body277
  %indvars.iv.next855 = add i64 %indvars.iv854, 1, !dbg !1093
  %lftr.wideiv857 = trunc i64 %indvars.iv.next855 to i32, !dbg !1093
  %exitcond858 = icmp eq i32 %lftr.wideiv857, 16, !dbg !1093
  br i1 %exitcond858, label %sw.epilog, label %for.cond274.preheader, !dbg !1093

for.cond305.preheader:                            ; preds = %for.inc318, %for.cond301.preheader
  %indvars.iv817 = phi i64 [ 0, %for.cond301.preheader ], [ %indvars.iv.next818, %for.inc318 ]
  %80 = add nsw i64 %indvars.iv817, %42, !dbg !1108
  %arrayidx313 = getelementptr inbounds i16** %inY, i64 %80, !dbg !1108
  %81 = load i16** %arrayidx313, align 8, !dbg !1108, !tbaa !758
  br label %for.body308, !dbg !1110

for.body308:                                      ; preds = %for.body308, %for.cond305.preheader
  %indvars.iv812 = phi i64 [ 0, %for.cond305.preheader ], [ %indvars.iv.next813, %for.body308 ]
  %82 = add nsw i64 %indvars.iv812, %41, !dbg !1108
  %arrayidx314 = getelementptr inbounds i16* %81, i64 %82, !dbg !1108
  store i16 127, i16* %arrayidx314, align 2, !dbg !1108, !tbaa !774
  %indvars.iv.next813 = add i64 %indvars.iv812, 1, !dbg !1110
  %lftr.wideiv815 = trunc i64 %indvars.iv.next813 to i32, !dbg !1110
  %exitcond816 = icmp eq i32 %lftr.wideiv815, 16, !dbg !1110
  br i1 %exitcond816, label %for.inc318, label %for.body308, !dbg !1110

for.inc318:                                       ; preds = %for.body308
  %indvars.iv.next818 = add i64 %indvars.iv817, 1, !dbg !1077
  %lftr.wideiv820 = trunc i64 %indvars.iv.next818 to i32, !dbg !1077
  %exitcond821 = icmp eq i32 %lftr.wideiv820, 16, !dbg !1077
  br i1 %exitcond821, label %sw.epilog, label %for.cond305.preheader, !dbg !1077

sw.bb322:                                         ; preds = %land.end54
  %type323 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1111
  %83 = load i32* %type323, align 4, !dbg !1111, !tbaa !761
  %cmp324 = icmp eq i32 %83, 2, !dbg !1111
  br i1 %cmp324, label %sw.epilog, label %for.cond327.preheader, !dbg !1111

for.cond327.preheader:                            ; preds = %sw.bb322
  %mul340 = shl i32 %mb_y, 2, !dbg !1112
  %mul343 = shl i32 %mb_x, 2, !dbg !1112
  %add344 = add i32 %mul343, 4, !dbg !1112
  %84 = sext i32 %mul340 to i64, !dbg !1117
  br label %for.cond331.preheader, !dbg !1117

for.cond331.preheader:                            ; preds = %for.inc363, %for.cond327.preheader
  %indvars.iv910 = phi i64 [ 0, %for.cond327.preheader ], [ %indvars.iv.next911, %for.inc363 ]
  %85 = add nsw i64 %indvars.iv910, %84, !dbg !1112
  br label %for.cond335.preheader, !dbg !1118

for.cond366.preheader:                            ; preds = %for.inc363
  br i1 %11, label %for.cond386.preheader, label %if.else414, !dbg !1119

for.cond335.preheader:                            ; preds = %for.inc360, %for.cond331.preheader
  %indvars.iv906 = phi i64 [ 0, %for.cond331.preheader ], [ %indvars.iv.next907, %for.inc360 ]
  %86 = trunc i64 %indvars.iv906 to i32, !dbg !1112
  %add345 = add i32 %add344, %86, !dbg !1112
  %idxprom346 = sext i32 %add345 to i64, !dbg !1112
  %arrayidx347 = getelementptr inbounds i16*** %17, i64 %idxprom346, !dbg !1112
  %87 = load i16*** %arrayidx347, align 8, !dbg !1112, !tbaa !758
  %arrayidx348 = getelementptr inbounds i16** %87, i64 %85, !dbg !1112
  %88 = load i16** %arrayidx348, align 8, !dbg !1112, !tbaa !758
  br label %for.body338, !dbg !1120

for.body338:                                      ; preds = %for.body338, %for.cond335.preheader
  %indvars.iv902 = phi i64 [ 0, %for.cond335.preheader ], [ %indvars.iv.next903, %for.body338 ]
  %arrayidx349 = getelementptr inbounds i16* %88, i64 %indvars.iv902, !dbg !1112
  %89 = load i16* %arrayidx349, align 2, !dbg !1112, !tbaa !774
  %conv350 = sext i16 %89 to i32, !dbg !1112
  %arrayidx356 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 %indvars.iv902, i64 %indvars.iv910, i64 %indvars.iv906, !dbg !1112
  store i32 %conv350, i32* %arrayidx356, align 4, !dbg !1112, !tbaa !761
  %indvars.iv.next903 = add i64 %indvars.iv902, 1, !dbg !1120
  %lftr.wideiv904 = trunc i64 %indvars.iv.next903 to i32, !dbg !1120
  %exitcond905 = icmp eq i32 %lftr.wideiv904, 2, !dbg !1120
  br i1 %exitcond905, label %for.inc360, label %for.body338, !dbg !1120

for.inc360:                                       ; preds = %for.body338
  %indvars.iv.next907 = add i64 %indvars.iv906, 1, !dbg !1118
  %lftr.wideiv908 = trunc i64 %indvars.iv.next907 to i32, !dbg !1118
  %exitcond909 = icmp eq i32 %lftr.wideiv908, 4, !dbg !1118
  br i1 %exitcond909, label %for.inc363, label %for.cond335.preheader, !dbg !1118

for.inc363:                                       ; preds = %for.inc360
  %indvars.iv.next911 = add i64 %indvars.iv910, 1, !dbg !1117
  %lftr.wideiv913 = trunc i64 %indvars.iv.next911 to i32, !dbg !1117
  %exitcond914 = icmp eq i32 %lftr.wideiv913, 4, !dbg !1117
  br i1 %exitcond914, label %for.cond366.preheader, label %for.cond331.preheader, !dbg !1117

for.cond386.preheader:                            ; preds = %for.cond366.preheader
  %idxprom398 = sext i32 %rem to i64, !dbg !1121
  %arrayidx399 = getelementptr inbounds i16*** %refY, i64 %idxprom398, !dbg !1121
  %90 = load i16*** %arrayidx399, align 8, !dbg !1121, !tbaa !758
  %91 = sext i32 %mul2 to i64, !dbg !1125
  %92 = sext i32 %mul to i64, !dbg !1125
  br label %for.cond390.preheader, !dbg !1125

for.cond390.preheader:                            ; preds = %for.inc411, %for.cond386.preheader
  %indvars.iv880 = phi i64 [ 0, %for.cond386.preheader ], [ %indvars.iv.next881, %for.inc411 ]
  %93 = add nsw i64 %indvars.iv880, %92, !dbg !1121
  %arrayidx400 = getelementptr inbounds i16** %90, i64 %93, !dbg !1121
  %94 = load i16** %arrayidx400, align 8, !dbg !1121, !tbaa !758
  %arrayidx406 = getelementptr inbounds i16** %inY, i64 %93, !dbg !1121
  %95 = load i16** %arrayidx406, align 8, !dbg !1121, !tbaa !758
  br label %for.body393, !dbg !1126

for.body393:                                      ; preds = %for.body393, %for.cond390.preheader
  %indvars.iv874 = phi i64 [ 0, %for.cond390.preheader ], [ %indvars.iv.next875, %for.body393 ]
  %96 = add nsw i64 %indvars.iv874, %91, !dbg !1121
  %arrayidx401 = getelementptr inbounds i16* %94, i64 %96, !dbg !1121
  %97 = load i16* %arrayidx401, align 2, !dbg !1121, !tbaa !774
  %arrayidx407 = getelementptr inbounds i16* %95, i64 %96, !dbg !1121
  store i16 %97, i16* %arrayidx407, align 2, !dbg !1121, !tbaa !774
  %indvars.iv.next875 = add i64 %indvars.iv874, 1, !dbg !1126
  %lftr.wideiv877 = trunc i64 %indvars.iv.next875 to i32, !dbg !1126
  %exitcond878 = icmp eq i32 %lftr.wideiv877, 16, !dbg !1126
  br i1 %exitcond878, label %for.inc411, label %for.body393, !dbg !1126

for.inc411:                                       ; preds = %for.body393
  %indvars.iv.next881 = add i64 %indvars.iv880, 1, !dbg !1125
  %lftr.wideiv883 = trunc i64 %indvars.iv.next881 to i32, !dbg !1125
  %exitcond884 = icmp eq i32 %lftr.wideiv883, 16, !dbg !1125
  br i1 %exitcond884, label %sw.epilog, label %for.cond390.preheader, !dbg !1125

if.else414:                                       ; preds = %for.cond366.preheader
  br i1 %14, label %if.then416, label %sw.epilog, !dbg !1127

if.then416:                                       ; preds = %if.else414
  call void @llvm.dbg.value(metadata !{i32 %mul340}, i64 0, metadata !237), !dbg !1128
  %idxprom431 = sext i32 %rem to i64, !dbg !1131
  %arrayidx432 = getelementptr inbounds i16*** %refY, i64 %idxprom431, !dbg !1131
  %98 = shl i32 %mb_x, 2, !dbg !1128
  %99 = sext i32 %98 to i64
  %100 = shl i32 %mb_y, 2, !dbg !1128
  %101 = sext i32 %100 to i64
  %RefBlock451.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.Decoders* %5, i64 0, i32 4
  %.pre.pre = load i16*** %RefBlock451.phi.trans.insert.phi.trans.insert, align 8, !dbg !1131, !tbaa !758
  br label %for.body423, !dbg !1128

for.body423:                                      ; preds = %if.then416, %for.inc482
  %.pre = phi i16** [ %.pre.pre, %if.then416 ], [ %110, %for.inc482 ]
  %indvars.iv898 = phi i64 [ %101, %if.then416 ], [ %indvars.iv.next899, %for.inc482 ]
  call void @llvm.dbg.value(metadata !{i32 %mul343}, i64 0, metadata !236), !dbg !1134
  %102 = trunc i64 %indvars.iv898 to i32, !dbg !1131
  %sub437 = sub nsw i32 %102, %mul340, !dbg !1131
  %idxprom438 = sext i32 %sub437 to i64, !dbg !1131
  %mul468 = shl i32 %102, 2, !dbg !1135
  %103 = sext i32 %mul468 to i64, !dbg !1134
  br label %for.body430, !dbg !1134

for.body430:                                      ; preds = %for.body423, %for.inc479
  %104 = phi i16** [ %.pre, %for.body423 ], [ %110, %for.inc479 ], !dbg !1131
  %indvars.iv896 = phi i64 [ %99, %for.body423 ], [ %indvars.iv.next897, %for.inc479 ]
  %105 = load i16*** %arrayidx432, align 8, !dbg !1131, !tbaa !758
  %106 = trunc i64 %indvars.iv896 to i32, !dbg !1131
  %sub434 = sub nsw i32 %106, %mul343, !dbg !1131
  %idxprom435 = sext i32 %sub434 to i64, !dbg !1131
  %arrayidx441 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %idxprom438, i64 %idxprom435, !dbg !1131
  %107 = load i32* %arrayidx441, align 4, !dbg !1131, !tbaa !761
  %arrayidx450 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %idxprom438, i64 %idxprom435, !dbg !1131
  %108 = load i32* %arrayidx450, align 4, !dbg !1131, !tbaa !761
  call void @Get_Reference_Block(i16** %105, i32 %102, i32 %106, i32 %107, i32 %108, i16** %104) #6, !dbg !1131
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !235), !dbg !1139
  %109 = load %struct.Decoders** @decs, align 8, !dbg !1135, !tbaa !758
  %RefBlock462 = getelementptr inbounds %struct.Decoders* %109, i64 0, i32 4, !dbg !1135
  %110 = load i16*** %RefBlock462, align 8, !dbg !1135, !tbaa !758
  %mul465 = shl i32 %106, 2, !dbg !1135
  %111 = sext i32 %mul465 to i64, !dbg !1139
  br label %for.cond456.preheader, !dbg !1139

for.cond456.preheader:                            ; preds = %for.inc476, %for.body430
  %indvars.iv891 = phi i64 [ 0, %for.body430 ], [ %indvars.iv.next892, %for.inc476 ]
  %arrayidx463 = getelementptr inbounds i16** %110, i64 %indvars.iv891, !dbg !1135
  %112 = load i16** %arrayidx463, align 8, !dbg !1135, !tbaa !758
  %113 = add nsw i64 %indvars.iv891, %103, !dbg !1135
  %arrayidx471 = getelementptr inbounds i16** %inY, i64 %113, !dbg !1135
  %114 = load i16** %arrayidx471, align 8, !dbg !1135, !tbaa !758
  br label %for.body459, !dbg !1140

for.body459:                                      ; preds = %for.body459, %for.cond456.preheader
  %indvars.iv885 = phi i64 [ 0, %for.cond456.preheader ], [ %indvars.iv.next886, %for.body459 ]
  %arrayidx464 = getelementptr inbounds i16* %112, i64 %indvars.iv885, !dbg !1135
  %115 = load i16* %arrayidx464, align 2, !dbg !1135, !tbaa !774
  %116 = add nsw i64 %indvars.iv885, %111, !dbg !1135
  %arrayidx472 = getelementptr inbounds i16* %114, i64 %116, !dbg !1135
  store i16 %115, i16* %arrayidx472, align 2, !dbg !1135, !tbaa !774
  %indvars.iv.next886 = add i64 %indvars.iv885, 1, !dbg !1140
  %lftr.wideiv888 = trunc i64 %indvars.iv.next886 to i32, !dbg !1140
  %exitcond889 = icmp eq i32 %lftr.wideiv888, 4, !dbg !1140
  br i1 %exitcond889, label %for.inc476, label %for.body459, !dbg !1140

for.inc476:                                       ; preds = %for.body459
  %indvars.iv.next892 = add i64 %indvars.iv891, 1, !dbg !1139
  %lftr.wideiv894 = trunc i64 %indvars.iv.next892 to i32, !dbg !1139
  %exitcond895 = icmp eq i32 %lftr.wideiv894, 4, !dbg !1139
  br i1 %exitcond895, label %for.inc479, label %for.cond456.preheader, !dbg !1139

for.inc479:                                       ; preds = %for.inc476
  %indvars.iv.next897 = add i64 %indvars.iv896, 1, !dbg !1134
  %117 = or i32 %mul343, 3, !dbg !1134
  %cmp428 = icmp slt i32 %106, %117, !dbg !1134
  br i1 %cmp428, label %for.body430, label %for.inc482, !dbg !1134

for.inc482:                                       ; preds = %for.inc479
  %indvars.iv.next899 = add i64 %indvars.iv898, 1, !dbg !1128
  %118 = or i32 %mul340, 3, !dbg !1128
  %cmp421 = icmp slt i32 %102, %118, !dbg !1128
  br i1 %cmp421, label %for.body423, label %sw.epilog, !dbg !1128

sw.bb488:                                         ; preds = %land.end54
  %type489 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1141
  %119 = load i32* %type489, align 4, !dbg !1141, !tbaa !761
  %cmp490 = icmp eq i32 %119, 2, !dbg !1141
  br i1 %cmp490, label %for.cond525.preheader, label %if.then492, !dbg !1141

for.cond525.preheader:                            ; preds = %sw.bb488
  %120 = sext i32 %mul2 to i64, !dbg !1142
  %121 = sext i32 %mul to i64, !dbg !1142
  br label %for.cond529.preheader, !dbg !1142

if.then492:                                       ; preds = %sw.bb488
  br i1 %14, label %sw.epilog, label %for.cond495.preheader, !dbg !1145

for.cond495.preheader:                            ; preds = %if.then492
  %idxprom507 = sext i32 %rem to i64, !dbg !1147
  %arrayidx508 = getelementptr inbounds i16*** %refY, i64 %idxprom507, !dbg !1147
  %122 = load i16*** %arrayidx508, align 8, !dbg !1147, !tbaa !758
  %123 = sext i32 %mul2 to i64, !dbg !1151
  %124 = sext i32 %mul to i64, !dbg !1151
  br label %for.cond499.preheader, !dbg !1151

for.cond499.preheader:                            ; preds = %for.inc520, %for.cond495.preheader
  %indvars.iv931 = phi i64 [ 0, %for.cond495.preheader ], [ %indvars.iv.next932, %for.inc520 ]
  %125 = add nsw i64 %indvars.iv931, %124, !dbg !1147
  %arrayidx509 = getelementptr inbounds i16** %122, i64 %125, !dbg !1147
  %126 = load i16** %arrayidx509, align 8, !dbg !1147, !tbaa !758
  %arrayidx515 = getelementptr inbounds i16** %inY, i64 %125, !dbg !1147
  %127 = load i16** %arrayidx515, align 8, !dbg !1147, !tbaa !758
  br label %for.body502, !dbg !1152

for.body502:                                      ; preds = %for.body502, %for.cond499.preheader
  %indvars.iv925 = phi i64 [ 0, %for.cond499.preheader ], [ %indvars.iv.next926, %for.body502 ]
  %128 = add nsw i64 %indvars.iv925, %123, !dbg !1147
  %arrayidx510 = getelementptr inbounds i16* %126, i64 %128, !dbg !1147
  %129 = load i16* %arrayidx510, align 2, !dbg !1147, !tbaa !774
  %arrayidx516 = getelementptr inbounds i16* %127, i64 %128, !dbg !1147
  store i16 %129, i16* %arrayidx516, align 2, !dbg !1147, !tbaa !774
  %indvars.iv.next926 = add i64 %indvars.iv925, 1, !dbg !1152
  %lftr.wideiv928 = trunc i64 %indvars.iv.next926 to i32, !dbg !1152
  %exitcond929 = icmp eq i32 %lftr.wideiv928, 16, !dbg !1152
  br i1 %exitcond929, label %for.inc520, label %for.body502, !dbg !1152

for.inc520:                                       ; preds = %for.body502
  %indvars.iv.next932 = add i64 %indvars.iv931, 1, !dbg !1151
  %lftr.wideiv934 = trunc i64 %indvars.iv.next932 to i32, !dbg !1151
  %exitcond935 = icmp eq i32 %lftr.wideiv934, 16, !dbg !1151
  br i1 %exitcond935, label %sw.epilog, label %for.cond499.preheader, !dbg !1151

for.cond529.preheader:                            ; preds = %for.inc542, %for.cond525.preheader
  %indvars.iv920 = phi i64 [ 0, %for.cond525.preheader ], [ %indvars.iv.next921, %for.inc542 ]
  %130 = add nsw i64 %indvars.iv920, %121, !dbg !1153
  %arrayidx537 = getelementptr inbounds i16** %inY, i64 %130, !dbg !1153
  %131 = load i16** %arrayidx537, align 8, !dbg !1153, !tbaa !758
  br label %for.body532, !dbg !1155

for.body532:                                      ; preds = %for.body532, %for.cond529.preheader
  %indvars.iv915 = phi i64 [ 0, %for.cond529.preheader ], [ %indvars.iv.next916, %for.body532 ]
  %132 = add nsw i64 %indvars.iv915, %120, !dbg !1153
  %arrayidx538 = getelementptr inbounds i16* %131, i64 %132, !dbg !1153
  store i16 127, i16* %arrayidx538, align 2, !dbg !1153, !tbaa !774
  %indvars.iv.next916 = add i64 %indvars.iv915, 1, !dbg !1155
  %lftr.wideiv918 = trunc i64 %indvars.iv.next916 to i32, !dbg !1155
  %exitcond919 = icmp eq i32 %lftr.wideiv918, 16, !dbg !1155
  br i1 %exitcond919, label %for.inc542, label %for.body532, !dbg !1155

for.inc542:                                       ; preds = %for.body532
  %indvars.iv.next921 = add i64 %indvars.iv920, 1, !dbg !1142
  %lftr.wideiv923 = trunc i64 %indvars.iv.next921 to i32, !dbg !1142
  %exitcond924 = icmp eq i32 %lftr.wideiv923, 16, !dbg !1142
  br i1 %exitcond924, label %sw.epilog, label %for.cond529.preheader, !dbg !1142

sw.epilog:                                        ; preds = %for.inc520, %for.inc542, %for.inc482, %for.inc411, %for.inc295, %for.inc266, %for.inc196, %for.inc318, %for.inc85, %for.inc105, %sw.bb322, %if.then492, %if.else414, %land.end54
  call void @llvm.lifetime.end(i64 128, i8* %4) #2, !dbg !1156
  ret void, !dbg !1156
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !21, metadata !22, metadata !250, metadata !21, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8, metadata !16}
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
!16 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!17 = metadata !{metadata !18, metadata !19, metadata !20}
!18 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!19 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!20 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!21 = metadata !{i32 0}
!22 = metadata !{metadata !23, metadata !58, metadata !128, metadata !145, metadata !169, metadata !174, metadata !183, metadata !195, metadata !200, metadata !214, metadata !225}
!23 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"decode_one_b8block", metadata !"decode_one_b8block", metadata !"", i32 37, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32)* @decode_one_b8block, null, null, metadata !28, i32 38} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 38] [decode_one_b8block]
!24 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{null, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27}
!27 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !46, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57}
!29 = metadata !{i32 786689, metadata !23, metadata !"decoder", metadata !24, i32 16777253, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [decoder] [line 37]
!30 = metadata !{i32 786689, metadata !23, metadata !"mbmode", metadata !24, i32 33554469, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mbmode] [line 37]
!31 = metadata !{i32 786689, metadata !23, metadata !"b8block", metadata !24, i32 50331685, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b8block] [line 37]
!32 = metadata !{i32 786689, metadata !23, metadata !"b8mode", metadata !24, i32 67108901, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b8mode] [line 37]
!33 = metadata !{i32 786689, metadata !23, metadata !"b8ref", metadata !24, i32 83886117, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b8ref] [line 37]
!34 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !24, i32 39, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 39]
!35 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !24, i32 39, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 39]
!36 = metadata !{i32 786688, metadata !23, metadata !"block_y", metadata !24, i32 39, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_y] [line 39]
!37 = metadata !{i32 786688, metadata !23, metadata !"block_x", metadata !24, i32 39, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_x] [line 39]
!38 = metadata !{i32 786688, metadata !23, metadata !"bx", metadata !24, i32 39, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bx] [line 39]
!39 = metadata !{i32 786688, metadata !23, metadata !"by", metadata !24, i32 39, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [by] [line 39]
!40 = metadata !{i32 786688, metadata !23, metadata !"ref_inx", metadata !24, i32 40, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_inx] [line 40]
!41 = metadata !{i32 786688, metadata !23, metadata !"mv", metadata !24, i32 42, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mv] [line 42]
!42 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !27, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!43 = metadata !{metadata !44, metadata !45, metadata !45}
!44 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!45 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!46 = metadata !{i32 786688, metadata !23, metadata !"resY_tmp", metadata !24, i32 43, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resY_tmp] [line 43]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !27, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!48 = metadata !{metadata !49, metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 16}       ; [ DW_TAG_subrange_type ] [0, 15]
!50 = metadata !{i32 786688, metadata !23, metadata !"i0", metadata !24, i32 45, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i0] [line 45]
!51 = metadata !{i32 786688, metadata !23, metadata !"i1", metadata !24, i32 45, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 45]
!52 = metadata !{i32 786688, metadata !23, metadata !"bx0", metadata !24, i32 45, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bx0] [line 45]
!53 = metadata !{i32 786688, metadata !23, metadata !"bx1", metadata !24, i32 45, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bx1] [line 45]
!54 = metadata !{i32 786688, metadata !23, metadata !"j0", metadata !24, i32 46, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j0] [line 46]
!55 = metadata !{i32 786688, metadata !23, metadata !"j1", metadata !24, i32 46, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j1] [line 46]
!56 = metadata !{i32 786688, metadata !23, metadata !"by0", metadata !24, i32 46, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [by0] [line 46]
!57 = metadata !{i32 786688, metadata !23, metadata !"by1", metadata !24, i32 46, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [by1] [line 46]
!58 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"decode_one_mb", metadata !"decode_one_mb", metadata !"", i32 146, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.macroblock*)* @decode_one_mb, null, null, metadata !125, i32 147} ; [ DW_TAG_subprogram ] [line 146] [def] [scope 147] [decode_one_mb]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{null, metadata !27, metadata !61}
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Macroblock]
!62 = metadata !{i32 786454, metadata !9, null, metadata !"Macroblock", i32 406, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [Macroblock] [line 406, size 0, align 0, offset 0] [from macroblock]
!63 = metadata !{i32 786451, metadata !9, null, metadata !"macroblock", i32 351, i64 5056, i64 64, i32 0, i32 0, null, metadata !64, i32 0, null, null} ; [ DW_TAG_structure_type ] [macroblock] [line 351, size 5056, align 64, offset 0] [from ]
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !74, metadata !76, metadata !77, metadata !78, metadata !81, metadata !84, metadata !85, metadata !86, metadata !90, metadata !93, metadata !94, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!65 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"currSEnr", i32 353, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [currSEnr] [line 353, size 32, align 32, offset 0] [from int]
!66 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"slice_nr", i32 354, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [slice_nr] [line 354, size 32, align 32, offset 32] [from int]
!67 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"delta_qp", i32 355, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [delta_qp] [line 355, size 32, align 32, offset 64] [from int]
!68 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"qp", i32 356, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [qp] [line 356, size 32, align 32, offset 96] [from int]
!69 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"qpsp", i32 357, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [qpsp] [line 357, size 32, align 32, offset 128] [from int]
!70 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"bitcounter", i32 358, i64 256, i64 32, i64 160, i32 0, metadata !71} ; [ DW_TAG_member ] [bitcounter] [line 358, size 256, align 32, offset 160] [from ]
!71 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !27, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!74 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mb_available_up", i32 360, i64 64, i64 64, i64 448, i32 0, metadata !75} ; [ DW_TAG_member ] [mb_available_up] [line 360, size 64, align 64, offset 448] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macroblock]
!76 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mb_available_left", i32 361, i64 64, i64 64, i64 512, i32 0, metadata !75} ; [ DW_TAG_member ] [mb_available_left] [line 361, size 64, align 64, offset 512] [from ]
!77 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mb_type", i32 363, i64 32, i64 32, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [mb_type] [line 363, size 32, align 32, offset 576] [from int]
!78 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mvd", i32 364, i64 2048, i64 32, i64 608, i32 0, metadata !79} ; [ DW_TAG_member ] [mvd] [line 364, size 2048, align 32, offset 608] [from ]
!79 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !27, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!80 = metadata !{metadata !44, metadata !45, metadata !45, metadata !44}
!81 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"intra_pred_modes", i32 365, i64 512, i64 32, i64 2656, i32 0, metadata !82} ; [ DW_TAG_member ] [intra_pred_modes] [line 365, size 512, align 32, offset 2656] [from ]
!82 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !27, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!83 = metadata !{metadata !49}
!84 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"intra_pred_modes8x8", i32 366, i64 512, i64 32, i64 3168, i32 0, metadata !82} ; [ DW_TAG_member ] [intra_pred_modes8x8] [line 366, size 512, align 32, offset 3168] [from ]
!85 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"cbp", i32 367, i64 32, i64 32, i64 3680, i32 0, metadata !27} ; [ DW_TAG_member ] [cbp] [line 367, size 32, align 32, offset 3680] [from int]
!86 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"cbp_blk", i32 368, i64 64, i64 64, i64 3712, i32 0, metadata !87} ; [ DW_TAG_member ] [cbp_blk] [line 368, size 64, align 64, offset 3712] [from int64]
!87 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!88 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!89 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!90 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"b8mode", i32 369, i64 128, i64 32, i64 3776, i32 0, metadata !91} ; [ DW_TAG_member ] [b8mode] [line 369, size 128, align 32, offset 3776] [from ]
!91 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !27, metadata !92, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!92 = metadata !{metadata !45}
!93 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"b8pdir", i32 370, i64 128, i64 32, i64 3904, i32 0, metadata !91} ; [ DW_TAG_member ] [b8pdir] [line 370, size 128, align 32, offset 3904] [from ]
!94 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"cbp_bits", i32 371, i64 64, i64 64, i64 4032, i32 0, metadata !95} ; [ DW_TAG_member ] [cbp_bits] [line 371, size 64, align 64, offset 4032] [from long unsigned int]
!95 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!96 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"lf_disable", i32 373, i64 32, i64 32, i64 4096, i32 0, metadata !27} ; [ DW_TAG_member ] [lf_disable] [line 373, size 32, align 32, offset 4096] [from int]
!97 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"lf_alpha_c0_offset", i32 374, i64 32, i64 32, i64 4128, i32 0, metadata !27} ; [ DW_TAG_member ] [lf_alpha_c0_offset] [line 374, size 32, align 32, offset 4128] [from int]
!98 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"lf_beta_offset", i32 375, i64 32, i64 32, i64 4160, i32 0, metadata !27} ; [ DW_TAG_member ] [lf_beta_offset] [line 375, size 32, align 32, offset 4160] [from int]
!99 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"c_ipred_mode", i32 377, i64 32, i64 32, i64 4192, i32 0, metadata !27} ; [ DW_TAG_member ] [c_ipred_mode] [line 377, size 32, align 32, offset 4192] [from int]
!100 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"IntraChromaPredModeFlag", i32 378, i64 32, i64 32, i64 4224, i32 0, metadata !27} ; [ DW_TAG_member ] [IntraChromaPredModeFlag] [line 378, size 32, align 32, offset 4224] [from int]
!101 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mb_field", i32 380, i64 32, i64 32, i64 4256, i32 0, metadata !27} ; [ DW_TAG_member ] [mb_field] [line 380, size 32, align 32, offset 4256] [from int]
!102 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mbAddrA", i32 382, i64 32, i64 32, i64 4288, i32 0, metadata !27} ; [ DW_TAG_member ] [mbAddrA] [line 382, size 32, align 32, offset 4288] [from int]
!103 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mbAddrB", i32 382, i64 32, i64 32, i64 4320, i32 0, metadata !27} ; [ DW_TAG_member ] [mbAddrB] [line 382, size 32, align 32, offset 4320] [from int]
!104 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mbAddrC", i32 382, i64 32, i64 32, i64 4352, i32 0, metadata !27} ; [ DW_TAG_member ] [mbAddrC] [line 382, size 32, align 32, offset 4352] [from int]
!105 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mbAddrD", i32 382, i64 32, i64 32, i64 4384, i32 0, metadata !27} ; [ DW_TAG_member ] [mbAddrD] [line 382, size 32, align 32, offset 4384] [from int]
!106 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mbAvailA", i32 383, i64 32, i64 32, i64 4416, i32 0, metadata !27} ; [ DW_TAG_member ] [mbAvailA] [line 383, size 32, align 32, offset 4416] [from int]
!107 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mbAvailB", i32 383, i64 32, i64 32, i64 4448, i32 0, metadata !27} ; [ DW_TAG_member ] [mbAvailB] [line 383, size 32, align 32, offset 4448] [from int]
!108 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mbAvailC", i32 383, i64 32, i64 32, i64 4480, i32 0, metadata !27} ; [ DW_TAG_member ] [mbAvailC] [line 383, size 32, align 32, offset 4480] [from int]
!109 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"mbAvailD", i32 383, i64 32, i64 32, i64 4512, i32 0, metadata !27} ; [ DW_TAG_member ] [mbAvailD] [line 383, size 32, align 32, offset 4512] [from int]
!110 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"all_blk_8x8", i32 385, i64 32, i64 32, i64 4544, i32 0, metadata !27} ; [ DW_TAG_member ] [all_blk_8x8] [line 385, size 32, align 32, offset 4544] [from int]
!111 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"luma_transform_size_8x8_flag", i32 386, i64 32, i64 32, i64 4576, i32 0, metadata !27} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 386, size 32, align 32, offset 4576] [from int]
!112 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"NoMbPartLessThan8x8Flag", i32 387, i64 32, i64 32, i64 4608, i32 0, metadata !27} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 387, size 32, align 32, offset 4608] [from int]
!113 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"bi_pred_me", i32 390, i64 32, i64 32, i64 4640, i32 0, metadata !27} ; [ DW_TAG_member ] [bi_pred_me] [line 390, size 32, align 32, offset 4640] [from int]
!114 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"actj", i32 394, i64 64, i64 64, i64 4672, i32 0, metadata !115} ; [ DW_TAG_member ] [actj] [line 394, size 64, align 64, offset 4672] [from double]
!115 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!116 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"prev_qp", i32 395, i64 32, i64 32, i64 4736, i32 0, metadata !27} ; [ DW_TAG_member ] [prev_qp] [line 395, size 32, align 32, offset 4736] [from int]
!117 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"prev_delta_qp", i32 396, i64 32, i64 32, i64 4768, i32 0, metadata !27} ; [ DW_TAG_member ] [prev_delta_qp] [line 396, size 32, align 32, offset 4768] [from int]
!118 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"prev_cbp", i32 397, i64 32, i64 32, i64 4800, i32 0, metadata !27} ; [ DW_TAG_member ] [prev_cbp] [line 397, size 32, align 32, offset 4800] [from int]
!119 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"predict_qp", i32 398, i64 32, i64 32, i64 4832, i32 0, metadata !27} ; [ DW_TAG_member ] [predict_qp] [line 398, size 32, align 32, offset 4832] [from int]
!120 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"predict_error", i32 399, i64 32, i64 32, i64 4864, i32 0, metadata !27} ; [ DW_TAG_member ] [predict_error] [line 399, size 32, align 32, offset 4864] [from int]
!121 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"LFDisableIdc", i32 401, i64 32, i64 32, i64 4896, i32 0, metadata !27} ; [ DW_TAG_member ] [LFDisableIdc] [line 401, size 32, align 32, offset 4896] [from int]
!122 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"LFAlphaC0Offset", i32 402, i64 32, i64 32, i64 4928, i32 0, metadata !27} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 402, size 32, align 32, offset 4928] [from int]
!123 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"LFBetaOffset", i32 403, i64 32, i64 32, i64 4960, i32 0, metadata !27} ; [ DW_TAG_member ] [LFBetaOffset] [line 403, size 32, align 32, offset 4960] [from int]
!124 = metadata !{i32 786445, metadata !9, metadata !63, metadata !"skip_flag", i32 405, i64 32, i64 32, i64 4992, i32 0, metadata !27} ; [ DW_TAG_member ] [skip_flag] [line 405, size 32, align 32, offset 4992] [from int]
!125 = metadata !{metadata !126, metadata !127}
!126 = metadata !{i32 786689, metadata !58, metadata !"decoder", metadata !24, i32 16777362, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [decoder] [line 146]
!127 = metadata !{i32 786689, metadata !58, metadata !"currMB", metadata !24, i32 33554578, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currMB] [line 146]
!128 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"Get_Reference_Block", metadata !"Get_Reference_Block", metadata !"", i32 179, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i16**, i32, i32, i32, i32, i16**)* @Get_Reference_Block, null, null, metadata !134, i32 185} ; [ DW_TAG_subprogram ] [line 179] [def] [scope 185] [Get_Reference_Block]
!129 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{null, metadata !131, metadata !27, metadata !27, metadata !27, metadata !27, metadata !131}
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!133 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!134 = metadata !{metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144}
!135 = metadata !{i32 786689, metadata !128, metadata !"imY", metadata !24, i32 16777395, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imY] [line 179]
!136 = metadata !{i32 786689, metadata !128, metadata !"block_y", metadata !24, i32 33554612, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_y] [line 180]
!137 = metadata !{i32 786689, metadata !128, metadata !"block_x", metadata !24, i32 50331829, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_x] [line 181]
!138 = metadata !{i32 786689, metadata !128, metadata !"mvhor", metadata !24, i32 67109046, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mvhor] [line 182]
!139 = metadata !{i32 786689, metadata !128, metadata !"mvver", metadata !24, i32 83886263, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mvver] [line 183]
!140 = metadata !{i32 786689, metadata !128, metadata !"out", metadata !24, i32 100663480, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 184]
!141 = metadata !{i32 786688, metadata !128, metadata !"i", metadata !24, i32 186, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 186]
!142 = metadata !{i32 786688, metadata !128, metadata !"j", metadata !24, i32 186, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 186]
!143 = metadata !{i32 786688, metadata !128, metadata !"y", metadata !24, i32 186, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 186]
!144 = metadata !{i32 786688, metadata !128, metadata !"x", metadata !24, i32 186, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 186]
!145 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"Get_Reference_Pixel", metadata !"Get_Reference_Pixel", metadata !"", i32 207, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8 (i16**, i32, i32)* @Get_Reference_Pixel, null, null, metadata !150, i32 208} ; [ DW_TAG_subprogram ] [line 207] [def] [scope 208] [Get_Reference_Pixel]
!146 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!147 = metadata !{metadata !148, metadata !131, metadata !27, metadata !27}
!148 = metadata !{i32 786454, metadata !9, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!149 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165}
!151 = metadata !{i32 786689, metadata !145, metadata !"imY", metadata !24, i32 16777423, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imY] [line 207]
!152 = metadata !{i32 786689, metadata !145, metadata !"y_pos", metadata !24, i32 33554639, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y_pos] [line 207]
!153 = metadata !{i32 786689, metadata !145, metadata !"x_pos", metadata !24, i32 50331855, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x_pos] [line 207]
!154 = metadata !{i32 786688, metadata !145, metadata !"dx", metadata !24, i32 210, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 210]
!155 = metadata !{i32 786688, metadata !145, metadata !"x", metadata !24, i32 210, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 210]
!156 = metadata !{i32 786688, metadata !145, metadata !"dy", metadata !24, i32 211, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 211]
!157 = metadata !{i32 786688, metadata !145, metadata !"y", metadata !24, i32 211, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 211]
!158 = metadata !{i32 786688, metadata !145, metadata !"maxold_x", metadata !24, i32 212, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxold_x] [line 212]
!159 = metadata !{i32 786688, metadata !145, metadata !"maxold_y", metadata !24, i32 212, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxold_y] [line 212]
!160 = metadata !{i32 786688, metadata !145, metadata !"result", metadata !24, i32 214, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 214]
!161 = metadata !{i32 786688, metadata !145, metadata !"result1", metadata !24, i32 214, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result1] [line 214]
!162 = metadata !{i32 786688, metadata !145, metadata !"result2", metadata !24, i32 214, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result2] [line 214]
!163 = metadata !{i32 786688, metadata !145, metadata !"pres_x", metadata !24, i32 215, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pres_x] [line 215]
!164 = metadata !{i32 786688, metadata !145, metadata !"pres_y", metadata !24, i32 216, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pres_y] [line 216]
!165 = metadata !{i32 786688, metadata !145, metadata !"tmp_res", metadata !24, i32 218, metadata !166, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_res] [line 218]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !27, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!169 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"UpdateDecoders", metadata !"UpdateDecoders", metadata !"", i32 361, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @UpdateDecoders, null, null, metadata !172, i32 362} ; [ DW_TAG_subprogram ] [line 361] [def] [scope 362] [UpdateDecoders]
!170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{null}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 786688, metadata !169, metadata !"k", metadata !24, i32 363, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 363]
!174 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"DecOneForthPix", metadata !"DecOneForthPix", metadata !"", i32 386, metadata !175, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i16**, i16***)* @DecOneForthPix, null, null, metadata !178, i32 387} ; [ DW_TAG_subprogram ] [line 386] [def] [scope 387] [DecOneForthPix]
!175 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!176 = metadata !{null, metadata !131, metadata !177}
!177 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!178 = metadata !{metadata !179, metadata !180, metadata !181, metadata !182}
!179 = metadata !{i32 786689, metadata !174, metadata !"dY", metadata !24, i32 16777602, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dY] [line 386]
!180 = metadata !{i32 786689, metadata !174, metadata !"dref", metadata !24, i32 33554818, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dref] [line 386]
!181 = metadata !{i32 786688, metadata !174, metadata !"j", metadata !24, i32 388, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 388]
!182 = metadata !{i32 786688, metadata !174, metadata !"ref", metadata !24, i32 388, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref] [line 388]
!183 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"compute_residue_b8block", metadata !"compute_residue_b8block", metadata !"", i32 400, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @compute_residue_b8block, null, null, metadata !186, i32 401} ; [ DW_TAG_subprogram ] [line 400] [def] [scope 401] [compute_residue_b8block]
!184 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!185 = metadata !{null, metadata !27, metadata !27}
!186 = metadata !{metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194}
!187 = metadata !{i32 786689, metadata !183, metadata !"b8block", metadata !24, i32 16777616, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b8block] [line 400]
!188 = metadata !{i32 786689, metadata !183, metadata !"i16mode", metadata !24, i32 33554832, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i16mode] [line 400]
!189 = metadata !{i32 786688, metadata !183, metadata !"i", metadata !24, i32 402, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 402]
!190 = metadata !{i32 786688, metadata !183, metadata !"j", metadata !24, i32 402, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 402]
!191 = metadata !{i32 786688, metadata !183, metadata !"i0", metadata !24, i32 403, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i0] [line 403]
!192 = metadata !{i32 786688, metadata !183, metadata !"i1", metadata !24, i32 403, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 403]
!193 = metadata !{i32 786688, metadata !183, metadata !"j0", metadata !24, i32 404, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j0] [line 404]
!194 = metadata !{i32 786688, metadata !183, metadata !"j1", metadata !24, i32 404, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j1] [line 404]
!195 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"compute_residue_mb", metadata !"compute_residue_mb", metadata !"", i32 430, metadata !196, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @compute_residue_mb, null, null, metadata !198, i32 431} ; [ DW_TAG_subprogram ] [line 430] [def] [scope 431] [compute_residue_mb]
!196 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!197 = metadata !{null, metadata !27}
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786689, metadata !195, metadata !"i16mode", metadata !24, i32 16777646, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i16mode] [line 430]
!200 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"Build_Status_Map", metadata !"Build_Status_Map", metadata !"", i32 449, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**)* @Build_Status_Map, null, null, metadata !205, i32 450} ; [ DW_TAG_subprogram ] [line 449] [def] [scope 450] [Build_Status_Map]
!201 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!202 = metadata !{null, metadata !203}
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!204 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!205 = metadata !{metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213}
!206 = metadata !{i32 786689, metadata !200, metadata !"s_map", metadata !24, i32 16777665, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s_map] [line 449]
!207 = metadata !{i32 786688, metadata !200, metadata !"i", metadata !24, i32 451, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 451]
!208 = metadata !{i32 786688, metadata !200, metadata !"j", metadata !24, i32 451, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 451]
!209 = metadata !{i32 786688, metadata !200, metadata !"slice", metadata !24, i32 451, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slice] [line 451]
!210 = metadata !{i32 786688, metadata !200, metadata !"mb", metadata !24, i32 451, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb] [line 451]
!211 = metadata !{i32 786688, metadata !200, metadata !"jj", metadata !24, i32 451, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 451]
!212 = metadata !{i32 786688, metadata !200, metadata !"ii", metadata !24, i32 451, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 451]
!213 = metadata !{i32 786688, metadata !200, metadata !"packet_lost", metadata !24, i32 451, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [packet_lost] [line 451]
!214 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"Error_Concealment", metadata !"Error_Concealment", metadata !"", i32 500, metadata !215, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i16**, i8**, i16***)* @Error_Concealment, null, null, metadata !217, i32 501} ; [ DW_TAG_subprogram ] [line 500] [def] [scope 501] [Error_Concealment]
!215 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!216 = metadata !{null, metadata !131, metadata !203, metadata !177}
!217 = metadata !{metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224}
!218 = metadata !{i32 786689, metadata !214, metadata !"inY", metadata !24, i32 16777716, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inY] [line 500]
!219 = metadata !{i32 786689, metadata !214, metadata !"s_map", metadata !24, i32 33554932, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s_map] [line 500]
!220 = metadata !{i32 786689, metadata !214, metadata !"refY", metadata !24, i32 50332148, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [refY] [line 500]
!221 = metadata !{i32 786688, metadata !214, metadata !"mb_y", metadata !24, i32 502, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_y] [line 502]
!222 = metadata !{i32 786688, metadata !214, metadata !"mb_x", metadata !24, i32 502, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_x] [line 502]
!223 = metadata !{i32 786688, metadata !214, metadata !"mb_h", metadata !24, i32 502, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_h] [line 502]
!224 = metadata !{i32 786688, metadata !214, metadata !"mb_w", metadata !24, i32 502, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_w] [line 502]
!225 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"Conceal_Error", metadata !"Conceal_Error", metadata !"", i32 520, metadata !226, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i16**, i32, i32, i16***, i8**)* @Conceal_Error, null, null, metadata !228, i32 521} ; [ DW_TAG_subprogram ] [line 520] [def] [scope 521] [Conceal_Error]
!226 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!227 = metadata !{null, metadata !131, metadata !27, metadata !27, metadata !177, metadata !203}
!228 = metadata !{metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245}
!229 = metadata !{i32 786689, metadata !225, metadata !"inY", metadata !24, i32 16777736, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inY] [line 520]
!230 = metadata !{i32 786689, metadata !225, metadata !"mb_y", metadata !24, i32 33554952, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mb_y] [line 520]
!231 = metadata !{i32 786689, metadata !225, metadata !"mb_x", metadata !24, i32 50332168, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mb_x] [line 520]
!232 = metadata !{i32 786689, metadata !225, metadata !"refY", metadata !24, i32 67109384, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [refY] [line 520]
!233 = metadata !{i32 786689, metadata !225, metadata !"s_map", metadata !24, i32 83886600, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s_map] [line 520]
!234 = metadata !{i32 786688, metadata !225, metadata !"i", metadata !24, i32 522, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 522]
!235 = metadata !{i32 786688, metadata !225, metadata !"j", metadata !24, i32 522, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 522]
!236 = metadata !{i32 786688, metadata !225, metadata !"block_x", metadata !24, i32 522, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_x] [line 522]
!237 = metadata !{i32 786688, metadata !225, metadata !"block_y", metadata !24, i32 522, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_y] [line 522]
!238 = metadata !{i32 786688, metadata !225, metadata !"ref_inx", metadata !24, i32 523, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_inx] [line 523]
!239 = metadata !{i32 786688, metadata !225, metadata !"pos_y", metadata !24, i32 524, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos_y] [line 524]
!240 = metadata !{i32 786688, metadata !225, metadata !"pos_x", metadata !24, i32 524, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos_x] [line 524]
!241 = metadata !{i32 786688, metadata !225, metadata !"mv", metadata !24, i32 525, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mv] [line 525]
!242 = metadata !{i32 786688, metadata !225, metadata !"resY", metadata !24, i32 526, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resY] [line 526]
!243 = metadata !{i32 786688, metadata !225, metadata !"copy", metadata !24, i32 527, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [copy] [line 527]
!244 = metadata !{i32 786688, metadata !225, metadata !"inter", metadata !24, i32 528, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inter] [line 528]
!245 = metadata !{i32 786688, metadata !225, metadata !"tmp_mv", metadata !24, i32 529, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_mv] [line 529]
!246 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !247} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!247 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !248} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!248 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !249} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!249 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!250 = metadata !{metadata !251, metadata !254, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !489, metadata !584, metadata !585, metadata !586, metadata !588, metadata !589, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !636, metadata !637, metadata !648, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755}
!251 = metadata !{i32 786484, i32 0, metadata !145, metadata !"COEF", metadata !"COEF", metadata !"", metadata !24, i32 220, metadata !252, i32 1, i32 1, [6 x i32]* @Get_Reference_Pixel.COEF, null} ; [ DW_TAG_variable ] [COEF] [line 220] [local] [def]
!252 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !253, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from ]
!253 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!254 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !255, i32 558, metadata !256, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!255 = metadata !{i32 786473, metadata !9}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!256 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !257} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!257 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !258} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!258 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !259, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!259 = metadata !{metadata !260, metadata !261, metadata !262, metadata !436, metadata !437, metadata !439, metadata !440}
!260 = metadata !{i32 786445, metadata !9, metadata !258, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!261 = metadata !{i32 786445, metadata !9, metadata !258, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!262 = metadata !{i32 786445, metadata !9, metadata !258, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !263} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!263 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !264, metadata !434, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!264 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !265} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!265 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !266} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!266 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !267, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!267 = metadata !{metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !349, metadata !382, metadata !409, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !431}
!268 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!269 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!270 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!271 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!272 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!273 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !27} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!274 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !275} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!275 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !276} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!276 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !277} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!277 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !278, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!278 = metadata !{metadata !279, metadata !295, metadata !321}
!279 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !280} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!280 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!281 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !282} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!282 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !283, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!283 = metadata !{metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294}
!284 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!285 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!286 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !148} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!287 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!288 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!289 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !148} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!290 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !148} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!291 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!292 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !27} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!293 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !204} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!294 = metadata !{i32 786445, metadata !9, metadata !282, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !27} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!295 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !296} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!296 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !297} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!297 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !298, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!298 = metadata !{metadata !299, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320}
!299 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !300} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!300 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!301 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !300} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!302 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !300} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!303 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !300} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!304 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !300} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!305 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !204} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!306 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !307} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!307 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!308 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !300} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!309 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !300} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!310 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !300} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!311 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !300} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!312 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !300} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!313 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !204} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!314 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !307} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!315 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!316 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!317 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!318 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !27} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!319 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!320 = metadata !{i32 786445, metadata !9, metadata !297, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !27} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!321 = metadata !{i32 786445, metadata !9, metadata !277, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !322} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!322 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !323} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!323 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!324 = metadata !{metadata !27, metadata !325, metadata !348}
!325 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !326} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!326 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !327} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!327 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !328, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!328 = metadata !{metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !341}
!329 = metadata !{i32 786445, metadata !9, metadata !327, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!330 = metadata !{i32 786445, metadata !9, metadata !327, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!331 = metadata !{i32 786445, metadata !9, metadata !327, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!332 = metadata !{i32 786445, metadata !9, metadata !327, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!333 = metadata !{i32 786445, metadata !9, metadata !327, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!334 = metadata !{i32 786445, metadata !9, metadata !327, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !300} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!335 = metadata !{i32 786445, metadata !9, metadata !327, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!336 = metadata !{i32 786445, metadata !9, metadata !327, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !27} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!337 = metadata !{i32 786445, metadata !9, metadata !327, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !338} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!338 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !339} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!339 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!340 = metadata !{null, metadata !27, metadata !27, metadata !307, metadata !307}
!341 = metadata !{i32 786445, metadata !9, metadata !327, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !342} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!342 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !343} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!343 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !344, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!344 = metadata !{null, metadata !345, metadata !346}
!345 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !327} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!346 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !347} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!347 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !296} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!348 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !277} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!349 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !350} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!350 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !351} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!351 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !352} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!352 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !353, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!353 = metadata !{metadata !354, metadata !365, metadata !369, metadata !373, metadata !376, metadata !378, metadata !379}
!354 = metadata !{i32 786445, metadata !9, metadata !352, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !355} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!355 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !356, metadata !362, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!356 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !357} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!357 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !358, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!358 = metadata !{metadata !359, metadata !360, metadata !361}
!359 = metadata !{i32 786445, metadata !9, metadata !357, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !133} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!360 = metadata !{i32 786445, metadata !9, metadata !357, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !149} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!361 = metadata !{i32 786445, metadata !9, metadata !357, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !95} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!362 = metadata !{metadata !363, metadata !364}
!363 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!364 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!365 = metadata !{i32 786445, metadata !9, metadata !352, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !366} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!366 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !356, metadata !367, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!367 = metadata !{metadata !44, metadata !368}
!368 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!369 = metadata !{i32 786445, metadata !9, metadata !352, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !370} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!370 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !356, metadata !371, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!371 = metadata !{metadata !44, metadata !372}
!372 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!373 = metadata !{i32 786445, metadata !9, metadata !352, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !374} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!374 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !356, metadata !375, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!375 = metadata !{metadata !44, metadata !168}
!376 = metadata !{i32 786445, metadata !9, metadata !352, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !377} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!377 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !356, metadata !92, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!378 = metadata !{i32 786445, metadata !9, metadata !352, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !377} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!379 = metadata !{i32 786445, metadata !9, metadata !352, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !380} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!380 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !356, metadata !381, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!381 = metadata !{metadata !363}
!382 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !383} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!383 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !384} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!384 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !385} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!385 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !386, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!386 = metadata !{metadata !387, metadata !390, metadata !391, metadata !394, metadata !397, metadata !401, metadata !402, metadata !406, metadata !407, metadata !408}
!387 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !388} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!388 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !356, metadata !389, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!389 = metadata !{metadata !44}
!390 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !377} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!391 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !392} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!392 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !356, metadata !393, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!393 = metadata !{metadata !363, metadata !45}
!394 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !395} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!395 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !356, metadata !396, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!396 = metadata !{metadata !372, metadata !45}
!397 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !398} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!398 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !356, metadata !399, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!399 = metadata !{metadata !372, metadata !400}
!400 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!401 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !398} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!402 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !403} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!403 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !356, metadata !404, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!404 = metadata !{metadata !372, metadata !405}
!405 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!406 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !403} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!407 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !398} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!408 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !398} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!409 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !410} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!410 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !411} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!411 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !412} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!412 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !413, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!413 = metadata !{metadata !414, metadata !415, metadata !416}
!414 = metadata !{i32 786445, metadata !9, metadata !412, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!415 = metadata !{i32 786445, metadata !9, metadata !412, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!416 = metadata !{i32 786445, metadata !9, metadata !412, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !417} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!417 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !412} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!418 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !27} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!419 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !307} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!420 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !307} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!421 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !307} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!422 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!423 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !307} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!424 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !307} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!425 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !307} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!426 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !427} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!427 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !428} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!428 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!429 = metadata !{metadata !430, metadata !27}
!430 = metadata !{i32 786454, metadata !9, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!431 = metadata !{i32 786445, metadata !9, metadata !266, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !432} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!432 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !27, metadata !433, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!433 = metadata !{metadata !363, metadata !44}
!434 = metadata !{metadata !435}
!435 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!436 = metadata !{i32 786445, metadata !9, metadata !258, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !27} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!437 = metadata !{i32 786445, metadata !9, metadata !258, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !438} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!438 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!439 = metadata !{i32 786445, metadata !9, metadata !258, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !438} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!440 = metadata !{i32 786445, metadata !9, metadata !258, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !438} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!441 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !255, i32 559, metadata !256, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!442 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !255, i32 560, metadata !256, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!443 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !255, i32 561, metadata !256, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!444 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !255, i32 562, metadata !256, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!445 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !255, i32 565, metadata !131, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!446 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !255, i32 566, metadata !177, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!447 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !255, i32 567, metadata !448, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!448 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !307} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!449 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !255, i32 569, metadata !300, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!450 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !255, i32 570, metadata !300, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!451 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !255, i32 572, metadata !27, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!452 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !255, i32 572, metadata !27, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!453 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !255, i32 573, metadata !454, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!454 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !455} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!455 = metadata !{i32 786454, metadata !9, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !456} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!456 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !457, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!457 = metadata !{metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488}
!458 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !430} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!459 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !300} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!460 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !300} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!461 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !430} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!462 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !430} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!463 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !430} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!464 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !71} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!465 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !430} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!466 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !300} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!467 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !300} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!468 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !469} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!469 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !300, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!470 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !469} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!471 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !469} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!472 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !430} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!473 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !300} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!474 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !300} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!475 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !204} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!476 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !27} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!477 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !27} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!478 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !430} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!479 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !300} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!480 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !27} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!481 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !27} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!482 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !27} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!483 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !27} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!484 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !27} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!485 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !430} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!486 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !430} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!487 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !430} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!488 = metadata !{i32 786445, metadata !4, metadata !456, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !430} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!489 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !255, i32 574, metadata !490, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!490 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !491} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!491 = metadata !{i32 786454, metadata !9, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !492} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!492 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !493, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!493 = metadata !{metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531}
!494 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !430} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!495 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !300} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!496 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !430} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!497 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !430} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!498 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !430} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!499 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !430} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!500 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !300} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!501 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !300} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!502 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !300} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!503 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !430} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!504 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !71} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!505 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !300} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!506 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !300} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!507 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !300} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!508 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !300} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!509 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !300} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!510 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !430} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!511 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!512 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !27} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!513 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !300} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!514 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !515} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!515 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !27, metadata !516, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!516 = metadata !{metadata !517}
!517 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!518 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !300} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!519 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !430} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!520 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !300} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!521 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !300} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!522 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !430} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!523 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !430} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!524 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !430} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!525 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !430} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!526 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !300} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!527 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !300} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!528 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !300} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!529 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !300} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!530 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !430} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!531 = metadata !{i32 786445, metadata !4, metadata !492, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !532} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!532 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !533} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!533 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !534, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!534 = metadata !{metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583}
!535 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !430} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!536 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !300} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!537 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !300} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!538 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !300} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!539 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !430} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!540 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !430} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!541 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !430} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!542 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !300} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!543 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !430} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!544 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !430} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!545 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !300} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!546 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !300} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!547 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !300} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!548 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !430} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!549 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !300} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!550 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !300} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!551 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !430} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!552 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !300} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!553 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !300} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!554 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !430} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!555 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !430} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!556 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !557} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!557 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !558} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!558 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !559, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!559 = metadata !{metadata !560, metadata !561, metadata !562, metadata !563, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572}
!560 = metadata !{i32 786445, metadata !4, metadata !558, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !300} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!561 = metadata !{i32 786445, metadata !4, metadata !558, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !300} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!562 = metadata !{i32 786445, metadata !4, metadata !558, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !300} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!563 = metadata !{i32 786445, metadata !4, metadata !558, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !564} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!564 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !300, metadata !565, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!565 = metadata !{metadata !566}
!566 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!567 = metadata !{i32 786445, metadata !4, metadata !558, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !564} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!568 = metadata !{i32 786445, metadata !4, metadata !558, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !564} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!569 = metadata !{i32 786445, metadata !4, metadata !558, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !300} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!570 = metadata !{i32 786445, metadata !4, metadata !558, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !300} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!571 = metadata !{i32 786445, metadata !4, metadata !558, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !300} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!572 = metadata !{i32 786445, metadata !4, metadata !558, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !300} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!573 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !430} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!574 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !557} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!575 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !430} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!576 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !430} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!577 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !430} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!578 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !300} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!579 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !300} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!580 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !300} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!581 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !300} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!582 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !300} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!583 = metadata !{i32 786445, metadata !4, metadata !533, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !300} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!584 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !255, i32 578, metadata !27, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!585 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !255, i32 579, metadata !27, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!586 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !255, i32 583, metadata !587, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!587 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !448} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!588 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !255, i32 584, metadata !587, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!589 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !255, i32 585, metadata !590, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!590 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !587} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!591 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !255, i32 586, metadata !27, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!592 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !255, i32 587, metadata !27, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!593 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !255, i32 588, metadata !27, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!594 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !255, i32 589, metadata !27, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!595 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !255, i32 592, metadata !131, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!596 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !255, i32 593, metadata !131, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!597 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !255, i32 595, metadata !177, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!598 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !255, i32 596, metadata !177, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!599 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !255, i32 598, metadata !131, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!600 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !255, i32 599, metadata !177, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!601 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !255, i32 601, metadata !131, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!602 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !255, i32 602, metadata !177, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!603 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !255, i32 604, metadata !246, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!604 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !255, i32 605, metadata !247, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!605 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !255, i32 608, metadata !203, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!606 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !255, i32 609, metadata !203, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!607 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !255, i32 610, metadata !27, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!608 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !255, i32 612, metadata !27, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!609 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !255, i32 612, metadata !27, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!610 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !255, i32 612, metadata !27, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!611 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !255, i32 613, metadata !27, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!612 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !255, i32 613, metadata !27, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!613 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !255, i32 613, metadata !27, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!614 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !255, i32 614, metadata !27, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!615 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !255, i32 617, metadata !616, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!616 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !617, metadata !618, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!617 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!618 = metadata !{metadata !619}
!619 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!620 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !255, i32 620, metadata !47, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!621 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !255, i32 620, metadata !47, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!622 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !255, i32 620, metadata !47, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!623 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !255, i32 621, metadata !47, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!624 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !255, i32 621, metadata !47, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!625 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !255, i32 621, metadata !47, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!626 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !255, i32 622, metadata !627, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!627 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !27, metadata !628, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!628 = metadata !{metadata !363, metadata !49, metadata !49}
!629 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !255, i32 623, metadata !42, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!630 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !255, i32 623, metadata !42, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!631 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !255, i32 624, metadata !42, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!632 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !255, i32 624, metadata !42, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!633 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !255, i32 625, metadata !634, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!634 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !27, metadata !635, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!635 = metadata !{metadata !45, metadata !45}
!636 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !255, i32 625, metadata !82, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!637 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !255, i32 1201, metadata !638, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!638 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !639} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!639 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !640} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!640 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !641, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!641 = metadata !{metadata !642, metadata !643, metadata !644, metadata !645, metadata !646, metadata !647}
!642 = metadata !{i32 786445, metadata !9, metadata !640, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!643 = metadata !{i32 786445, metadata !9, metadata !640, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!644 = metadata !{i32 786445, metadata !9, metadata !640, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!645 = metadata !{i32 786445, metadata !9, metadata !640, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!646 = metadata !{i32 786445, metadata !9, metadata !640, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!647 = metadata !{i32 786445, metadata !9, metadata !640, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !27} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!648 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !255, i32 1202, metadata !649, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!649 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !650} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!650 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !651} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!651 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !652, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!652 = metadata !{metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !672, metadata !673, metadata !674, metadata !675, metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683}
!653 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!654 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!655 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !47} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!656 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !47} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!657 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !590} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!658 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !587} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!659 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !27} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!660 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !27} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!661 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !91} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!662 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !91} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!663 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !448} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!664 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !82} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!665 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !27} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!666 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !87} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!667 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !27} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!668 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !669} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!669 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !670} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!670 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !671} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!671 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !246} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!672 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !669} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!673 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !669} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!674 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !669} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!675 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !676} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!676 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !249, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!677 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !27} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!678 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !27} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!679 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !27} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!680 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !27} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!681 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !27} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!682 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !27} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!683 = metadata !{i32 786445, metadata !9, metadata !651, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !27} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!684 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !255, i32 1203, metadata !650, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!685 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !255, i32 1203, metadata !650, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!686 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !255, i32 1204, metadata !650, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!687 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !255, i32 1204, metadata !650, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!688 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !255, i32 1230, metadata !689, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!689 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !690} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!690 = metadata !{i32 786454, metadata !9, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !691} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!691 = metadata !{i32 786451, metadata !692, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !693, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!692 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!693 = metadata !{metadata !694, metadata !695, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !704, metadata !705, metadata !706, metadata !707, metadata !715, metadata !716, metadata !717, metadata !718, metadata !720, metadata !721, metadata !723, metadata !727, metadata !729, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !737, metadata !738}
!694 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!695 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!696 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !617} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!697 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!698 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!699 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!700 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!701 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!702 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!703 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!704 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!705 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!706 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !696} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!707 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !708} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!708 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !709} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!709 = metadata !{i32 786451, metadata !692, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !710, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!710 = metadata !{metadata !711, metadata !712, metadata !714}
!711 = metadata !{i32 786445, metadata !692, metadata !709, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !708} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!712 = metadata !{i32 786445, metadata !692, metadata !709, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !713} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!713 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !691} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!714 = metadata !{i32 786445, metadata !692, metadata !709, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!715 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !713} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!716 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !27} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!717 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !27} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!718 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !719} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!719 = metadata !{i32 786454, metadata !692, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!720 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !133} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!721 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !722} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!722 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!723 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !724} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!724 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !617, metadata !725, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!725 = metadata !{metadata !726}
!726 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!727 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !728} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!728 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!729 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !730} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!730 = metadata !{i32 786454, metadata !692, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!731 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !728} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!732 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !728} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!733 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !728} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!734 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !728} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!735 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !736} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!736 = metadata !{i32 786454, metadata !692, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!737 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !27} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!738 = metadata !{i32 786445, metadata !692, metadata !691, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !739} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!739 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !617, metadata !740, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!740 = metadata !{metadata !741}
!741 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!742 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !255, i32 1231, metadata !689, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!743 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !255, i32 1232, metadata !689, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!744 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !255, i32 1233, metadata !27, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!745 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !255, i32 1234, metadata !27, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!746 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !255, i32 1237, metadata !747, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!747 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !27, metadata !740, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!748 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !255, i32 1238, metadata !747, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!749 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !255, i32 1239, metadata !747, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!750 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !255, i32 1240, metadata !747, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!751 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !255, i32 1241, metadata !747, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!752 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !255, i32 1242, metadata !747, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!753 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !255, i32 1456, metadata !27, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!754 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !255, i32 1465, metadata !27, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!755 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !255, i32 1466, metadata !27, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!756 = metadata !{i32 37, i32 0, metadata !23, null}
!757 = metadata !{i32 40, i32 0, metadata !23, null}
!758 = metadata !{metadata !"any pointer", metadata !759}
!759 = metadata !{metadata !"omnipotent char", metadata !760}
!760 = metadata !{metadata !"Simple C/C++ TBAA"}
!761 = metadata !{metadata !"int", metadata !759}
!762 = metadata !{i32 42, i32 0, metadata !23, null}
!763 = metadata !{i32 43, i32 0, metadata !23, null}
!764 = metadata !{i32 45, i32 0, metadata !23, null}
!765 = metadata !{i32 46, i32 0, metadata !23, null}
!766 = metadata !{i32 48, i32 0, metadata !23, null}
!767 = metadata !{i32 53, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !769, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!769 = metadata !{i32 786443, metadata !1, metadata !770, i32 51, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!770 = metadata !{i32 786443, metadata !1, metadata !771, i32 50, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!771 = metadata !{i32 786443, metadata !1, metadata !23, i32 49, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!772 = metadata !{i32 50, i32 0, metadata !770, null}
!773 = metadata !{i32 51, i32 0, metadata !769, null}
!774 = metadata !{metadata !"short", metadata !759}
!775 = metadata !{i32 58, i32 0, metadata !776, null} ; [ DW_TAG_imported_module ]
!776 = metadata !{i32 786443, metadata !1, metadata !23, i32 57, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!777 = metadata !{i32 60, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !779, i32 60, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!779 = metadata !{i32 786443, metadata !1, metadata !776, i32 59, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!780 = metadata !{i32 61, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !778, i32 61, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!782 = metadata !{i32 65, i32 0, metadata !783, null}
!783 = metadata !{i32 786443, metadata !1, metadata !779, i32 65, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!784 = metadata !{i32 63, i32 0, metadata !785, null}
!785 = metadata !{i32 786443, metadata !1, metadata !781, i32 62, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!786 = metadata !{i32 66, i32 0, metadata !787, null}
!787 = metadata !{i32 786443, metadata !1, metadata !783, i32 66, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!788 = metadata !{i32 68, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !787, i32 67, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!790 = metadata !{i32 73, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !776, i32 72, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!792 = metadata !{i32 75, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !794, i32 75, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!794 = metadata !{i32 786443, metadata !1, metadata !791, i32 74, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!795 = metadata !{i32 84, i32 0, metadata !796, null}
!796 = metadata !{i32 786443, metadata !1, metadata !797, i32 84, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!797 = metadata !{i32 786443, metadata !1, metadata !791, i32 83, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!798 = metadata !{i32 78, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !800, i32 77, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!800 = metadata !{i32 786443, metadata !1, metadata !793, i32 76, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!801 = metadata !{i32 76, i32 0, metadata !800, null}
!802 = metadata !{i32 94, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !804, i32 93, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!804 = metadata !{i32 786443, metadata !1, metadata !805, i32 92, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!805 = metadata !{i32 786443, metadata !1, metadata !791, i32 91, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!806 = metadata !{i32 91, i32 0, metadata !805, null}
!807 = metadata !{i32 79, i32 0, metadata !799, null}
!808 = metadata !{i32 85, i32 0, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !796, i32 85, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!810 = metadata !{i32 87, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !809, i32 86, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!812 = metadata !{i32 92, i32 0, metadata !804, null}
!813 = metadata !{i32 99, i32 0, metadata !776, null}
!814 = metadata !{i32 133, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !816, i32 132, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!816 = metadata !{i32 786443, metadata !1, metadata !817, i32 131, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!817 = metadata !{i32 786443, metadata !1, metadata !818, i32 130, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!818 = metadata !{i32 786443, metadata !1, metadata !776, i32 128, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!819 = metadata !{i32 130, i32 0, metadata !817, null}
!820 = metadata !{i32 107, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !822, i32 103, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!822 = metadata !{i32 786443, metadata !1, metadata !823, i32 102, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!823 = metadata !{i32 786443, metadata !1, metadata !824, i32 101, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!824 = metadata !{i32 786443, metadata !1, metadata !776, i32 100, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!825 = metadata !{i32 109, i32 0, metadata !821, null}
!826 = metadata !{i32 101, i32 0, metadata !823, null}
!827 = metadata !{i32 123, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !829, i32 116, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!829 = metadata !{i32 786443, metadata !1, metadata !830, i32 115, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!830 = metadata !{i32 786443, metadata !1, metadata !821, i32 114, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!831 = metadata !{i32 102, i32 0, metadata !822, null}
!832 = metadata !{i32 104, i32 0, metadata !821, null}
!833 = metadata !{i32 105, i32 0, metadata !821, null}
!834 = metadata !{i32 106, i32 0, metadata !821, null}
!835 = metadata !{i32 114, i32 0, metadata !830, null}
!836 = metadata !{i32 115, i32 0, metadata !829, null}
!837 = metadata !{i32 131, i32 0, metadata !816, null}
!838 = metadata !{i32 137, i32 0, metadata !23, null}
!839 = metadata !{i32 179, i32 0, metadata !128, null}
!840 = metadata !{i32 180, i32 0, metadata !128, null}
!841 = metadata !{i32 181, i32 0, metadata !128, null}
!842 = metadata !{i32 182, i32 0, metadata !128, null}
!843 = metadata !{i32 183, i32 0, metadata !128, null}
!844 = metadata !{i32 184, i32 0, metadata !128, null}
!845 = metadata !{i32 188, i32 0, metadata !128, null}
!846 = metadata !{i32 189, i32 0, metadata !128, null}
!847 = metadata !{i32 191, i32 0, metadata !848, null}
!848 = metadata !{i32 786443, metadata !1, metadata !128, i32 191, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!849 = metadata !{i32 193, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !848, i32 192, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!851 = metadata !{i32 192, i32 0, metadata !850, null}
!852 = metadata !{i32 194, i32 0, metadata !128, null}
!853 = metadata !{i32 146, i32 0, metadata !58, null}
!854 = metadata !{i32 154, i32 0, metadata !58, null}
!855 = metadata !{i32 207, i32 0, metadata !145, null}
!856 = metadata !{i32 214, i32 0, metadata !145, null}
!857 = metadata !{i32 218, i32 0, metadata !145, null}
!858 = metadata !{i32 225, i32 0, metadata !145, null}
!859 = metadata !{i32 226, i32 0, metadata !145, null}
!860 = metadata !{i32 227, i32 0, metadata !145, null}
!861 = metadata !{i32 228, i32 0, metadata !145, null}
!862 = metadata !{i32 229, i32 0, metadata !145, null}
!863 = metadata !{i32 230, i32 0, metadata !145, null}
!864 = metadata !{i32 232, i32 0, metadata !145, null}
!865 = metadata !{i32 233, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !1, metadata !145, i32 232, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!867 = metadata !{i32 234, i32 0, metadata !866, null}
!868 = metadata !{i32 237, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !145, i32 235, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!870 = metadata !{i32 239, i32 0, metadata !871, null}
!871 = metadata !{i32 786443, metadata !1, metadata !869, i32 237, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!872 = metadata !{i32 -2}
!873 = metadata !{i32 240, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !871, i32 240, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!875 = metadata !{i32 242, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !874, i32 240, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!877 = metadata !{i32 241, i32 0, metadata !876, null}
!878 = metadata !{i32 245, i32 0, metadata !871, null}
!879 = metadata !{i32 247, i32 0, metadata !871, null}
!880 = metadata !{i32 248, i32 0, metadata !881, null}
!881 = metadata !{i32 786443, metadata !1, metadata !871, i32 247, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!882 = metadata !{i32 249, i32 0, metadata !881, null}
!883 = metadata !{i32 251, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !1, metadata !871, i32 250, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!885 = metadata !{i32 252, i32 0, metadata !884, null}
!886 = metadata !{i32 254, i32 0, metadata !869, null}
!887 = metadata !{i32 274, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !889, i32 273, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!889 = metadata !{i32 786443, metadata !1, metadata !890, i32 273, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!890 = metadata !{i32 786443, metadata !1, metadata !869, i32 271, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!891 = metadata !{i32 273, i32 0, metadata !889, null}
!892 = metadata !{i32 256, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !869, i32 254, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!894 = metadata !{i32 257, i32 0, metadata !895, null}
!895 = metadata !{i32 786443, metadata !1, metadata !893, i32 257, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!896 = metadata !{i32 258, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !1, metadata !895, i32 257, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!898 = metadata !{i32 259, i32 0, metadata !897, null}
!899 = metadata !{i32 262, i32 0, metadata !893, null}
!900 = metadata !{i32 264, i32 0, metadata !893, null}
!901 = metadata !{i32 265, i32 0, metadata !902, null}
!902 = metadata !{i32 786443, metadata !1, metadata !893, i32 264, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!903 = metadata !{i32 266, i32 0, metadata !902, null}
!904 = metadata !{i32 268, i32 0, metadata !905, null}
!905 = metadata !{i32 786443, metadata !1, metadata !893, i32 267, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!906 = metadata !{i32 269, i32 0, metadata !905, null}
!907 = metadata !{i32 275, i32 0, metadata !888, null}
!908 = metadata !{i32 276, i32 0, metadata !909, null}
!909 = metadata !{i32 786443, metadata !1, metadata !888, i32 276, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!910 = metadata !{i32 278, i32 0, metadata !911, null}
!911 = metadata !{i32 786443, metadata !1, metadata !909, i32 276, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!912 = metadata !{i32 277, i32 0, metadata !911, null}
!913 = metadata !{i32 280, i32 0, metadata !888, null}
!914 = metadata !{i32 285, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !1, metadata !916, i32 284, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!916 = metadata !{i32 786443, metadata !1, metadata !890, i32 284, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!917 = metadata !{i32 284, i32 0, metadata !916, null}
!918 = metadata !{i32 288, i32 0, metadata !890, null}
!919 = metadata !{i32 290, i32 0, metadata !890, null}
!920 = metadata !{i32 291, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !890, i32 290, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!922 = metadata !{i32 292, i32 0, metadata !921, null}
!923 = metadata !{i32 294, i32 0, metadata !924, null}
!924 = metadata !{i32 786443, metadata !1, metadata !890, i32 293, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!925 = metadata !{i32 295, i32 0, metadata !924, null}
!926 = metadata !{i32 297, i32 0, metadata !869, null}
!927 = metadata !{i32 300, i32 0, metadata !928, null}
!928 = metadata !{i32 786443, metadata !1, metadata !929, i32 299, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!929 = metadata !{i32 786443, metadata !1, metadata !930, i32 299, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!930 = metadata !{i32 786443, metadata !1, metadata !869, i32 297, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!931 = metadata !{i32 299, i32 0, metadata !929, null}
!932 = metadata !{i32 301, i32 0, metadata !928, null}
!933 = metadata !{i32 302, i32 0, metadata !934, null}
!934 = metadata !{i32 786443, metadata !1, metadata !928, i32 302, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!935 = metadata !{i32 304, i32 0, metadata !936, null}
!936 = metadata !{i32 786443, metadata !1, metadata !934, i32 302, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!937 = metadata !{i32 303, i32 0, metadata !936, null}
!938 = metadata !{i32 306, i32 0, metadata !928, null}
!939 = metadata !{i32 311, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !1, metadata !941, i32 310, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!941 = metadata !{i32 786443, metadata !1, metadata !930, i32 310, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!942 = metadata !{i32 310, i32 0, metadata !941, null}
!943 = metadata !{i32 314, i32 0, metadata !930, null}
!944 = metadata !{i32 316, i32 0, metadata !930, null}
!945 = metadata !{i32 317, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !930, i32 316, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!947 = metadata !{i32 318, i32 0, metadata !946, null}
!948 = metadata !{i32 320, i32 0, metadata !949, null}
!949 = metadata !{i32 786443, metadata !1, metadata !930, i32 319, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!950 = metadata !{i32 326, i32 0, metadata !951, null}
!951 = metadata !{i32 786443, metadata !1, metadata !869, i32 323, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!952 = metadata !{i32 327, i32 0, metadata !951, null}
!953 = metadata !{i32 329, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !951, i32 329, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!955 = metadata !{i32 331, i32 0, metadata !956, null}
!956 = metadata !{i32 786443, metadata !1, metadata !954, i32 329, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!957 = metadata !{i32 330, i32 0, metadata !956, null}
!958 = metadata !{i32 334, i32 0, metadata !951, null}
!959 = metadata !{i32 336, i32 0, metadata !951, null}
!960 = metadata !{i32 337, i32 0, metadata !951, null}
!961 = metadata !{i32 338, i32 0, metadata !951, null}
!962 = metadata !{i32 340, i32 0, metadata !963, null}
!963 = metadata !{i32 786443, metadata !1, metadata !951, i32 340, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!964 = metadata !{i32 341, i32 0, metadata !965, null}
!965 = metadata !{i32 786443, metadata !1, metadata !963, i32 340, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!966 = metadata !{i32 342, i32 0, metadata !965, null}
!967 = metadata !{i32 345, i32 0, metadata !951, null}
!968 = metadata !{i32 346, i32 0, metadata !951, null}
!969 = metadata !{i32 350, i32 0, metadata !145, null}
!970 = metadata !{i32 364, i32 0, metadata !971, null}
!971 = metadata !{i32 786443, metadata !1, metadata !169, i32 364, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!972 = metadata !{i32 366, i32 0, metadata !973, null}
!973 = metadata !{i32 786443, metadata !1, metadata !971, i32 365, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!974 = metadata !{i32 367, i32 0, metadata !973, null}
!975 = metadata !{i32 370, i32 0, metadata !973, null}
!976 = metadata !{i32 372, i32 0, metadata !169, null}
!977 = metadata !{i32 449, i32 0, metadata !200, null}
!978 = metadata !{i32 -1}
!979 = metadata !{i32 451, i32 0, metadata !200, null}
!980 = metadata !{i32 453, i32 0, metadata !200, null}
!981 = metadata !{i32 454, i32 0, metadata !200, null}
!982 = metadata !{i32 456, i32 0, metadata !983, null}
!983 = metadata !{i32 786443, metadata !1, metadata !200, i32 456, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!984 = metadata !{i32 457, i32 0, metadata !985, null}
!985 = metadata !{i32 786443, metadata !1, metadata !983, i32 457, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!986 = metadata !{i32 475, i32 0, metadata !987, null}
!987 = metadata !{i32 786443, metadata !1, metadata !988, i32 474, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!988 = metadata !{i32 786443, metadata !1, metadata !985, i32 458, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!989 = metadata !{i32 459, i32 0, metadata !988, null}
!990 = metadata !{i32 461, i32 0, metadata !991, null}
!991 = metadata !{i32 786443, metadata !1, metadata !988, i32 460, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!992 = metadata !{i32 467, i32 0, metadata !991, null}
!993 = metadata !{i32 3}
!994 = metadata !{i32 468, i32 0, metadata !991, null}
!995 = metadata !{i32 469, i32 0, metadata !991, null}
!996 = metadata !{i32 1}
!997 = metadata !{i32 471, i32 0, metadata !991, null}
!998 = metadata !{i32 472, i32 0, metadata !991, null}
!999 = metadata !{i32 473, i32 0, metadata !988, null}
!1000 = metadata !{i32 476, i32 0, metadata !987, null}
!1001 = metadata !{i32 479, i32 0, metadata !1002, null}
!1002 = metadata !{i32 786443, metadata !1, metadata !988, i32 478, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1003 = metadata !{i32 480, i32 0, metadata !1002, null}
!1004 = metadata !{i32 482, i32 0, metadata !988, null}
!1005 = metadata !{i32 484, i32 0, metadata !200, null}
!1006 = metadata !{i32 500, i32 0, metadata !214, null}
!1007 = metadata !{i32 503, i32 0, metadata !214, null}
!1008 = metadata !{i32 504, i32 0, metadata !214, null}
!1009 = metadata !{i32 506, i32 0, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !1, metadata !214, i32 506, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1011 = metadata !{i32 507, i32 0, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !1, metadata !1010, i32 507, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1013 = metadata !{i32 509, i32 0, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !1, metadata !1012, i32 508, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1015 = metadata !{i32 511, i32 0, metadata !214, null}
!1016 = metadata !{i32 386, i32 0, metadata !174, null}
!1017 = metadata !{i32 388, i32 0, metadata !174, null}
!1018 = metadata !{i32 390, i32 0, metadata !1019, null}
!1019 = metadata !{i32 786443, metadata !1, metadata !174, i32 390, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1020 = metadata !{i32 391, i32 0, metadata !1019, null}
!1021 = metadata !{i32 392, i32 0, metadata !174, null}
!1022 = metadata !{i32 400, i32 0, metadata !183, null}
!1023 = metadata !{i32 403, i32 0, metadata !183, null}
!1024 = metadata !{i32 404, i32 0, metadata !183, null}
!1025 = metadata !{i32 406, i32 0, metadata !183, null}
!1026 = metadata !{i32 408, i32 0, metadata !1027, null}
!1027 = metadata !{i32 786443, metadata !1, metadata !1028, i32 408, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1028 = metadata !{i32 786443, metadata !1, metadata !183, i32 407, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1029 = metadata !{i32 411, i32 0, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !1, metadata !1031, i32 410, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1031 = metadata !{i32 786443, metadata !1, metadata !1027, i32 409, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1032 = metadata !{i32 419, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !1034, i32 418, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1034 = metadata !{i32 786443, metadata !1, metadata !1035, i32 417, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1035 = metadata !{i32 786443, metadata !1, metadata !1036, i32 416, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1036 = metadata !{i32 786443, metadata !1, metadata !183, i32 415, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1037 = metadata !{i32 416, i32 0, metadata !1035, null}
!1038 = metadata !{i32 409, i32 0, metadata !1031, null}
!1039 = metadata !{i32 417, i32 0, metadata !1034, null}
!1040 = metadata !{i32 422, i32 0, metadata !183, null}
!1041 = metadata !{i32 430, i32 0, metadata !195, null}
!1042 = metadata !{i32 432, i32 0, metadata !195, null}
!1043 = metadata !{i32 433, i32 0, metadata !195, null}
!1044 = metadata !{i32 434, i32 0, metadata !195, null}
!1045 = metadata !{i32 435, i32 0, metadata !195, null}
!1046 = metadata !{i32 436, i32 0, metadata !195, null}
!1047 = metadata !{i32 520, i32 0, metadata !225, null}
!1048 = metadata !{i32 523, i32 0, metadata !225, null}
!1049 = metadata !{i32 524, i32 0, metadata !225, null}
!1050 = metadata !{i32 525, i32 0, metadata !225, null}
!1051 = metadata !{i32 527, i32 0, metadata !225, null}
!1052 = metadata !{i32 528, i32 0, metadata !225, null}
!1053 = metadata !{i32 529, i32 0, metadata !225, null}
!1054 = metadata !{i32 531, i32 0, metadata !225, null}
!1055 = metadata !{i32 553, i32 0, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !1, metadata !1057, i32 552, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1057 = metadata !{i32 786443, metadata !1, metadata !1058, i32 551, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1058 = metadata !{i32 786443, metadata !1, metadata !1059, i32 550, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1059 = metadata !{i32 786443, metadata !1, metadata !225, i32 532, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1060 = metadata !{i32 550, i32 0, metadata !1058, null}
!1061 = metadata !{i32 534, i32 0, metadata !1059, null}
!1062 = metadata !{i32 536, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1064, i32 536, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1064 = metadata !{i32 786443, metadata !1, metadata !1059, i32 535, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1065 = metadata !{i32 538, i32 0, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !1, metadata !1063, i32 537, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1067 = metadata !{i32 542, i32 0, metadata !1068, null}
!1068 = metadata !{i32 786443, metadata !1, metadata !1069, i32 542, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1069 = metadata !{i32 786443, metadata !1, metadata !1059, i32 541, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1070 = metadata !{i32 537, i32 0, metadata !1066, null}
!1071 = metadata !{i32 544, i32 0, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !1, metadata !1068, i32 543, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1073 = metadata !{i32 543, i32 0, metadata !1072, null}
!1074 = metadata !{i32 551, i32 0, metadata !1057, null}
!1075 = metadata !{i32 561, i32 0, metadata !1059, null}
!1076 = metadata !{i32 552, i32 0, metadata !1056, null}
!1077 = metadata !{i32 597, i32 0, metadata !1078, null}
!1078 = metadata !{i32 786443, metadata !1, metadata !1079, i32 597, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1079 = metadata !{i32 786443, metadata !1, metadata !1059, i32 596, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1080 = metadata !{i32 568, i32 0, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !1, metadata !1082, i32 567, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1082 = metadata !{i32 786443, metadata !1, metadata !1083, i32 566, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1083 = metadata !{i32 786443, metadata !1, metadata !1084, i32 565, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1084 = metadata !{i32 786443, metadata !1, metadata !1059, i32 562, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1085 = metadata !{i32 564, i32 0, metadata !1084, null}
!1086 = metadata !{i32 566, i32 0, metadata !1082, null}
!1087 = metadata !{i32 567, i32 0, metadata !1081, null}
!1088 = metadata !{i32 571, i32 0, metadata !1084, null}
!1089 = metadata !{i32 592, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !1091, i32 591, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1091 = metadata !{i32 786443, metadata !1, metadata !1092, i32 590, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1092 = metadata !{i32 786443, metadata !1, metadata !1084, i32 589, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1093 = metadata !{i32 590, i32 0, metadata !1091, null}
!1094 = metadata !{i32 573, i32 0, metadata !1095, null}
!1095 = metadata !{i32 786443, metadata !1, metadata !1096, i32 573, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1096 = metadata !{i32 786443, metadata !1, metadata !1084, i32 572, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1097 = metadata !{i32 576, i32 0, metadata !1098, null}
!1098 = metadata !{i32 786443, metadata !1, metadata !1099, i32 575, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1099 = metadata !{i32 786443, metadata !1, metadata !1095, i32 574, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1100 = metadata !{i32 574, i32 0, metadata !1099, null}
!1101 = metadata !{i32 584, i32 0, metadata !1102, null}
!1102 = metadata !{i32 786443, metadata !1, metadata !1103, i32 583, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1103 = metadata !{i32 786443, metadata !1, metadata !1104, i32 582, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1104 = metadata !{i32 786443, metadata !1, metadata !1098, i32 581, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1105 = metadata !{i32 581, i32 0, metadata !1104, null}
!1106 = metadata !{i32 582, i32 0, metadata !1103, null}
!1107 = metadata !{i32 591, i32 0, metadata !1090, null}
!1108 = metadata !{i32 599, i32 0, metadata !1109, null}
!1109 = metadata !{i32 786443, metadata !1, metadata !1078, i32 598, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1110 = metadata !{i32 598, i32 0, metadata !1109, null}
!1111 = metadata !{i32 603, i32 0, metadata !1059, null}
!1112 = metadata !{i32 609, i32 0, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !1, metadata !1114, i32 608, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1114 = metadata !{i32 786443, metadata !1, metadata !1115, i32 607, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1115 = metadata !{i32 786443, metadata !1, metadata !1116, i32 606, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1116 = metadata !{i32 786443, metadata !1, metadata !1059, i32 604, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1117 = metadata !{i32 606, i32 0, metadata !1115, null}
!1118 = metadata !{i32 607, i32 0, metadata !1114, null}
!1119 = metadata !{i32 617, i32 0, metadata !1116, null}
!1120 = metadata !{i32 608, i32 0, metadata !1113, null}
!1121 = metadata !{i32 621, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !1123, i32 620, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1123 = metadata !{i32 786443, metadata !1, metadata !1124, i32 619, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1124 = metadata !{i32 786443, metadata !1, metadata !1116, i32 618, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1125 = metadata !{i32 619, i32 0, metadata !1123, null}
!1126 = metadata !{i32 620, i32 0, metadata !1122, null}
!1127 = metadata !{i32 624, i32 0, metadata !1116, null}
!1128 = metadata !{i32 626, i32 0, metadata !1129, null}
!1129 = metadata !{i32 786443, metadata !1, metadata !1130, i32 626, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1130 = metadata !{i32 786443, metadata !1, metadata !1116, i32 625, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1131 = metadata !{i32 629, i32 0, metadata !1132, null}
!1132 = metadata !{i32 786443, metadata !1, metadata !1133, i32 628, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1133 = metadata !{i32 786443, metadata !1, metadata !1129, i32 627, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1134 = metadata !{i32 627, i32 0, metadata !1133, null}
!1135 = metadata !{i32 637, i32 0, metadata !1136, null}
!1136 = metadata !{i32 786443, metadata !1, metadata !1137, i32 636, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1137 = metadata !{i32 786443, metadata !1, metadata !1138, i32 635, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1138 = metadata !{i32 786443, metadata !1, metadata !1132, i32 634, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1139 = metadata !{i32 634, i32 0, metadata !1138, null}
!1140 = metadata !{i32 635, i32 0, metadata !1137, null}
!1141 = metadata !{i32 644, i32 0, metadata !1059, null}
!1142 = metadata !{i32 655, i32 0, metadata !1143, null}
!1143 = metadata !{i32 786443, metadata !1, metadata !1144, i32 655, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1144 = metadata !{i32 786443, metadata !1, metadata !1059, i32 654, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1145 = metadata !{i32 646, i32 0, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !1, metadata !1059, i32 645, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1147 = metadata !{i32 650, i32 0, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !1, metadata !1149, i32 649, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1149 = metadata !{i32 786443, metadata !1, metadata !1150, i32 648, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1150 = metadata !{i32 786443, metadata !1, metadata !1146, i32 647, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1151 = metadata !{i32 648, i32 0, metadata !1149, null}
!1152 = metadata !{i32 649, i32 0, metadata !1148, null}
!1153 = metadata !{i32 657, i32 0, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !1, metadata !1143, i32 656, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c]
!1155 = metadata !{i32 656, i32 0, metadata !1154, null}
!1156 = metadata !{i32 661, i32 0, metadata !225, null}
