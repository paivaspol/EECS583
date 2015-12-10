; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c'
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
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@write_out_picture.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@write_out_picture.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@img = external global %struct.ImageParameters*
@input = external global %struct.InputParameters*
@.str1 = private unnamed_addr constant [23 x i8] c"write_out_picture: buf\00", align 1
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@out_buffer = common global %struct.frame_store* null, align 8
@.str2 = private unnamed_addr constant [14 x i8] c"fs->is_used<3\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c\00", align 1
@__PRETTY_FUNCTION__.write_unpaired_field = private unnamed_addr constant [45 x i8] c"void write_unpaired_field(FrameStore *, int)\00", align 1
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

; Function Attrs: nounwind optsize readnone uwtable
define i32 @testEndian() #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !714, metadata !22), !dbg !715
  tail call void @llvm.dbg.value(metadata !716, i64 0, metadata !24), !dbg !717
  ret i32 0, !dbg !718
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @img2buf(i16** nocapture %imgX, i8* nocapture %buf, i32 %size_x, i32 %size_y, i32 %symbol_size_in_bytes, i32 %crop_left, i32 %crop_right, i32 %crop_top, i32 %crop_bottom) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16** %imgX}, i64 0, metadata !36), !dbg !719
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !37), !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %size_x}, i64 0, metadata !38), !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %size_y}, i64 0, metadata !39), !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %symbol_size_in_bytes}, i64 0, metadata !40), !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %crop_left}, i64 0, metadata !41), !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %crop_right}, i64 0, metadata !42), !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %crop_top}, i64 0, metadata !43), !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %crop_bottom}, i64 0, metadata !44), !dbg !719
  %sub = sub nsw i32 %size_x, %crop_left, !dbg !720
  %sub1 = sub i32 %sub, %crop_right, !dbg !720
  tail call void @llvm.dbg.value(metadata !{i32 %sub1}, i64 0, metadata !47), !dbg !720
  tail call void @llvm.dbg.value(metadata !{i32 %sub3}, i64 0, metadata !48), !dbg !721
  tail call void @llvm.dbg.value(metadata !14, i64 0, metadata !49), !dbg !722
  %cmp88 = icmp ugt i32 %symbol_size_in_bytes, 2, !dbg !723
  br i1 %cmp88, label %if.then90, label %if.else94, !dbg !723

if.then90:                                        ; preds = %entry
  %sub2 = sub i32 %size_y, %crop_top, !dbg !721
  %sub3 = sub i32 %sub2, %crop_bottom, !dbg !721
  tail call void @llvm.dbg.value(metadata !726, i64 0, metadata !49), !dbg !727
  %mul91 = mul i32 %sub1, %symbol_size_in_bytes, !dbg !729
  %mul92 = mul i32 %mul91, %sub3, !dbg !729
  %conv93 = sext i32 %mul92 to i64, !dbg !729
  tail call void @llvm.memset.p0i8.i64(i8* %buf, i8 0, i64 %conv93, i32 1, i1 false), !dbg !729
  br label %if.end, !dbg !730

if.else94:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %symbol_size_in_bytes}, i64 0, metadata !49), !dbg !731
  %phitmp = sext i32 %symbol_size_in_bytes to i64
  br label %if.end

if.end:                                           ; preds = %if.else94, %if.then90
  %size.0 = phi i64 [ 2, %if.then90 ], [ %phitmp, %if.else94 ]
  tail call void @llvm.dbg.value(metadata !{i32 %crop_top}, i64 0, metadata !45), !dbg !733
  %sub96 = sub nsw i32 %size_y, %crop_bottom, !dbg !733
  %cmp97206 = icmp sgt i32 %sub96, %crop_top, !dbg !733
  br i1 %cmp97206, label %for.cond100.preheader.lr.ph, label %if.end123, !dbg !733

for.cond100.preheader.lr.ph:                      ; preds = %if.end
  %sub101 = sub nsw i32 %size_x, %crop_right, !dbg !735
  %cmp102204 = icmp sgt i32 %sub101, %crop_left, !dbg !735
  %0 = sext i32 %crop_left to i64
  %1 = sext i32 %crop_top to i64
  br label %for.cond100.preheader, !dbg !733

for.cond100.preheader:                            ; preds = %for.cond100.preheader.lr.ph, %for.inc120
  %indvars.iv208 = phi i64 [ %1, %for.cond100.preheader.lr.ph ], [ %indvars.iv.next209, %for.inc120 ]
  br i1 %cmp102204, label %for.body104.lr.ph, label %for.inc120, !dbg !735

for.body104.lr.ph:                                ; preds = %for.cond100.preheader
  %2 = trunc i64 %indvars.iv208 to i32, !dbg !737
  %sub106 = sub nsw i32 %2, %crop_top, !dbg !737
  %mul107 = mul nsw i32 %sub106, %sub1, !dbg !737
  %sub105 = sub i32 %mul107, %crop_left, !dbg !737
  %arrayidx114 = getelementptr inbounds i16** %imgX, i64 %indvars.iv208, !dbg !737
  br label %for.body104, !dbg !735

for.body104:                                      ; preds = %for.body104.lr.ph, %for.body104
  %indvars.iv = phi i64 [ %0, %for.body104.lr.ph ], [ %indvars.iv.next, %for.body104 ]
  %3 = trunc i64 %indvars.iv to i32, !dbg !737
  %add108 = add i32 %sub105, %3, !dbg !737
  %mul109 = mul nsw i32 %add108, %symbol_size_in_bytes, !dbg !737
  %idx.ext110 = sext i32 %mul109 to i64, !dbg !737
  %add.ptr111 = getelementptr inbounds i8* %buf, i64 %idx.ext110, !dbg !737
  %4 = load i16** %arrayidx114, align 8, !dbg !737, !tbaa !739
  %arrayidx115 = getelementptr inbounds i16* %4, i64 %indvars.iv, !dbg !737
  %5 = bitcast i16* %arrayidx115 to i8*, !dbg !737
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr111, i8* %5, i64 %size.0, i32 1, i1 false), !dbg !737
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !735
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !735
  %cmp102 = icmp slt i32 %6, %sub101, !dbg !735
  br i1 %cmp102, label %for.body104, label %for.inc120, !dbg !735

for.inc120:                                       ; preds = %for.body104, %for.cond100.preheader
  %indvars.iv.next209 = add i64 %indvars.iv208, 1, !dbg !733
  %7 = trunc i64 %indvars.iv.next209 to i32, !dbg !733
  %cmp97 = icmp slt i32 %7, %sub96, !dbg !733
  br i1 %cmp97, label %for.cond100.preheader, label %if.end123, !dbg !733

if.end123:                                        ; preds = %for.inc120, %if.end
  ret void, !dbg !742
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define void @write_picture(%struct.storable_picture* %p, i32 %p_out, i32 %real_structure) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %p}, i64 0, metadata !132), !dbg !743
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !133), !dbg !743
  tail call void @llvm.dbg.value(metadata !{i32 %real_structure}, i64 0, metadata !134), !dbg !743
  tail call void @write_out_picture(%struct.storable_picture* %p, i32 %p_out) #7, !dbg !744
  ret void, !dbg !745
}

; Function Attrs: nounwind optsize uwtable
define void @write_out_picture(%struct.storable_picture* %p, i32 %p_out) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %p}, i64 0, metadata !139), !dbg !746
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !140), !dbg !746
  tail call void @llvm.dbg.declare(metadata !747, metadata !141), !dbg !748
  tail call void @llvm.dbg.declare(metadata !749, metadata !145), !dbg !750
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !751, !tbaa !739
  %pic_unit_size_on_disk = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 148, !dbg !751
  %1 = load i32* %pic_unit_size_on_disk, align 4, !dbg !751, !tbaa !752
  %div = sdiv i32 %1, 8, !dbg !751
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !150), !dbg !751
  %2 = load %struct.InputParameters** @input, align 8, !dbg !753, !tbaa !739
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 139, !dbg !753
  %3 = load i32* %rgb_input_flag, align 4, !dbg !753, !tbaa !752
  %tobool = icmp eq i32 %3, 0, !dbg !753
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !753

land.rhs:                                         ; preds = %entry
  %yuv_format = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 18, !dbg !753
  %4 = load i32* %yuv_format, align 4, !dbg !753, !tbaa !752
  %cmp = icmp eq i32 %4, 3, !dbg !753
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %non_existing = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 17, !dbg !754
  %6 = load i32* %non_existing, align 4, !dbg !754, !tbaa !752
  %tobool1 = icmp eq i32 %6, 0, !dbg !754
  br i1 %tobool1, label %if.end, label %return, !dbg !754

if.end:                                           ; preds = %land.end
  %frame_cropping_flag = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 43, !dbg !755
  %7 = load i32* %frame_cropping_flag, align 4, !dbg !755, !tbaa !752
  %tobool2 = icmp eq i32 %7, 0, !dbg !755
  br i1 %tobool2, label %if.end20, label %if.then3, !dbg !755

if.then3:                                         ; preds = %if.end
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 41, !dbg !756
  %8 = load i32* %chroma_format_idc, align 4, !dbg !756, !tbaa !752
  %idxprom = sext i32 %8 to i64, !dbg !756
  %arrayidx = getelementptr inbounds [4 x i32]* @write_out_picture.SubWidthC, i64 0, i64 %idxprom, !dbg !756
  %9 = load i32* %arrayidx, align 4, !dbg !756, !tbaa !752
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 44, !dbg !756
  %10 = load i32* %frame_cropping_rect_left_offset, align 4, !dbg !756, !tbaa !752
  %mul = mul nsw i32 %10, %9, !dbg !756
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !146), !dbg !756
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 45, !dbg !758
  %11 = load i32* %frame_cropping_rect_right_offset, align 4, !dbg !758, !tbaa !752
  %mul7 = mul nsw i32 %11, %9, !dbg !758
  tail call void @llvm.dbg.value(metadata !{i32 %mul7}, i64 0, metadata !147), !dbg !758
  %arrayidx10 = getelementptr inbounds [4 x i32]* @write_out_picture.SubHeightC, i64 0, i64 %idxprom, !dbg !759
  %12 = load i32* %arrayidx10, align 4, !dbg !759, !tbaa !752
  %frame_mbs_only_flag = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 42, !dbg !759
  %13 = load i32* %frame_mbs_only_flag, align 4, !dbg !759, !tbaa !752
  %sub = sub nsw i32 2, %13, !dbg !759
  %mul11 = mul nsw i32 %sub, %12, !dbg !759
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 46, !dbg !759
  %14 = load i32* %frame_cropping_rect_top_offset, align 4, !dbg !759, !tbaa !752
  %mul12 = mul nsw i32 %mul11, %14, !dbg !759
  tail call void @llvm.dbg.value(metadata !{i32 %mul12}, i64 0, metadata !148), !dbg !759
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 47, !dbg !760
  %15 = load i32* %frame_cropping_rect_bottom_offset, align 4, !dbg !760, !tbaa !752
  %mul19 = mul nsw i32 %mul11, %15, !dbg !760
  tail call void @llvm.dbg.value(metadata !{i32 %mul19}, i64 0, metadata !149), !dbg !760
  br label %if.end20, !dbg !761

if.end20:                                         ; preds = %if.end, %if.then3
  %crop_bottom.0 = phi i32 [ %mul19, %if.then3 ], [ 0, %if.end ]
  %crop_top.0 = phi i32 [ %mul12, %if.then3 ], [ 0, %if.end ]
  %crop_right.0 = phi i32 [ %mul7, %if.then3 ], [ 0, %if.end ]
  %crop_left.0 = phi i32 [ %mul, %if.then3 ], [ 0, %if.end ]
  %size_x = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 18, !dbg !762
  %16 = load i32* %size_x, align 4, !dbg !762, !tbaa !752
  %size_y = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 19, !dbg !762
  %17 = load i32* %size_y, align 4, !dbg !762, !tbaa !752
  %mul21 = mul i32 %16, %div, !dbg !762
  %mul22 = mul i32 %mul21, %17, !dbg !762
  %conv = sext i32 %mul22 to i64, !dbg !762
  %call = tail call noalias i8* @malloc(i64 %conv) #8, !dbg !762
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !153), !dbg !762
  %cmp23 = icmp eq i8* %call, null, !dbg !762
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !762

if.then25:                                        ; preds = %if.end20
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !762
  br label %if.end26, !dbg !762

if.end26:                                         ; preds = %if.then25, %if.end20
  br i1 %5, label %if.then28, label %if.end81, !dbg !763

if.then28:                                        ; preds = %if.end26
  %frame_cropping_rect_left_offset29 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 44, !dbg !764
  %18 = load i32* %frame_cropping_rect_left_offset29, align 4, !dbg !764, !tbaa !752
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !146), !dbg !764
  %frame_cropping_rect_right_offset30 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 45, !dbg !766
  %19 = load i32* %frame_cropping_rect_right_offset30, align 4, !dbg !766, !tbaa !752
  tail call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !147), !dbg !766
  %frame_mbs_only_flag31 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 42, !dbg !767
  %20 = load i32* %frame_mbs_only_flag31, align 4, !dbg !767, !tbaa !752
  %sub32 = sub nsw i32 2, %20, !dbg !767
  %frame_cropping_rect_top_offset33 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 46, !dbg !767
  %21 = load i32* %frame_cropping_rect_top_offset33, align 4, !dbg !767, !tbaa !752
  %mul34 = mul nsw i32 %sub32, %21, !dbg !767
  tail call void @llvm.dbg.value(metadata !{i32 %mul34}, i64 0, metadata !148), !dbg !767
  %frame_cropping_rect_bottom_offset37 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 47, !dbg !768
  %22 = load i32* %frame_cropping_rect_bottom_offset37, align 4, !dbg !768, !tbaa !752
  %mul38 = mul nsw i32 %22, %sub32, !dbg !768
  tail call void @llvm.dbg.value(metadata !{i32 %mul38}, i64 0, metadata !149), !dbg !768
  %imgUV = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 30, !dbg !769
  %23 = load i16**** %imgUV, align 8, !dbg !769, !tbaa !739
  %arrayidx39 = getelementptr inbounds i16*** %23, i64 1, !dbg !769
  %24 = load i16*** %arrayidx39, align 8, !dbg !769, !tbaa !739
  %size_x_cr = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 20, !dbg !769
  %25 = load i32* %size_x_cr, align 4, !dbg !769, !tbaa !752
  %size_y_cr = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 21, !dbg !769
  %26 = load i32* %size_y_cr, align 4, !dbg !769, !tbaa !752
  tail call void @img2buf(i16** %24, i8* %call, i32 %25, i32 %26, i32 %div, i32 %18, i32 %19, i32 %mul34, i32 %mul38) #7, !dbg !769
  %27 = load i32* %size_y_cr, align 4, !dbg !770, !tbaa !752
  %mul38255 = add i32 %22, %21, !dbg !770
  %sum254 = mul i32 %sub32, %mul38255, !dbg !770
  %sub42 = sub i32 %27, %sum254, !dbg !770
  %28 = load i32* %size_x_cr, align 4, !dbg !770, !tbaa !752
  %sum256 = add i32 %19, %18, !dbg !770
  %sub45 = sub i32 %28, %sum256, !dbg !770
  %mul46 = mul i32 %sub42, %div, !dbg !770
  %mul47 = mul i32 %mul46, %sub45, !dbg !770
  %conv48 = sext i32 %mul47 to i64, !dbg !770
  %call49 = tail call i64 @write(i32 %p_out, i8* %call, i64 %conv48) #8, !dbg !770
  %29 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !771, !tbaa !739
  %frame_cropping_flag50 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %29, i64 0, i32 28, !dbg !771
  %30 = load i32* %frame_cropping_flag50, align 4, !dbg !771, !tbaa !740
  %tobool51 = icmp eq i32 %30, 0, !dbg !771
  br i1 %tobool51, label %if.end81, label %if.then52, !dbg !771

if.then52:                                        ; preds = %if.then28
  %chroma_format_idc53 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 41, !dbg !772
  %31 = load i32* %chroma_format_idc53, align 4, !dbg !772, !tbaa !752
  %idxprom54 = sext i32 %31 to i64, !dbg !772
  %arrayidx55 = getelementptr inbounds [4 x i32]* @write_out_picture.SubWidthC, i64 0, i64 %idxprom54, !dbg !772
  %32 = load i32* %arrayidx55, align 4, !dbg !772, !tbaa !752
  %33 = load i32* %frame_cropping_rect_left_offset29, align 4, !dbg !772, !tbaa !752
  %mul57 = mul nsw i32 %33, %32, !dbg !772
  tail call void @llvm.dbg.value(metadata !{i32 %mul57}, i64 0, metadata !146), !dbg !772
  %34 = load i32* %frame_cropping_rect_right_offset30, align 4, !dbg !774, !tbaa !752
  %mul62 = mul nsw i32 %34, %32, !dbg !774
  tail call void @llvm.dbg.value(metadata !{i32 %mul62}, i64 0, metadata !147), !dbg !774
  %arrayidx65 = getelementptr inbounds [4 x i32]* @write_out_picture.SubHeightC, i64 0, i64 %idxprom54, !dbg !775
  %35 = load i32* %arrayidx65, align 4, !dbg !775, !tbaa !752
  %36 = load i32* %frame_mbs_only_flag31, align 4, !dbg !775, !tbaa !752
  %sub67 = sub nsw i32 2, %36, !dbg !775
  %mul68 = mul nsw i32 %sub67, %35, !dbg !775
  %37 = load i32* %frame_cropping_rect_top_offset33, align 4, !dbg !775, !tbaa !752
  %mul70 = mul nsw i32 %mul68, %37, !dbg !775
  tail call void @llvm.dbg.value(metadata !{i32 %mul70}, i64 0, metadata !148), !dbg !775
  %38 = load i32* %frame_cropping_rect_bottom_offset37, align 4, !dbg !776, !tbaa !752
  %mul78 = mul nsw i32 %mul68, %38, !dbg !776
  tail call void @llvm.dbg.value(metadata !{i32 %mul78}, i64 0, metadata !149), !dbg !776
  br label %if.end81, !dbg !777

if.end81:                                         ; preds = %if.then28, %if.end26, %if.then52
  %crop_bottom.1 = phi i32 [ %mul78, %if.then52 ], [ %crop_bottom.0, %if.end26 ], [ 0, %if.then28 ]
  %crop_top.1 = phi i32 [ %mul70, %if.then52 ], [ %crop_top.0, %if.end26 ], [ 0, %if.then28 ]
  %crop_right.1 = phi i32 [ %mul62, %if.then52 ], [ %crop_right.0, %if.end26 ], [ 0, %if.then28 ]
  %crop_left.1 = phi i32 [ %mul57, %if.then52 ], [ %crop_left.0, %if.end26 ], [ 0, %if.then28 ]
  %imgY = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 25, !dbg !778
  %39 = load i16*** %imgY, align 8, !dbg !778, !tbaa !739
  %40 = load i32* %size_x, align 4, !dbg !778, !tbaa !752
  %41 = load i32* %size_y, align 4, !dbg !778, !tbaa !752
  tail call void @img2buf(i16** %39, i8* %call, i32 %40, i32 %41, i32 %div, i32 %crop_left.1, i32 %crop_right.1, i32 %crop_top.1, i32 %crop_bottom.1) #7, !dbg !778
  %42 = load i32* %size_y, align 4, !dbg !779, !tbaa !752
  %sum = add i32 %crop_top.1, %crop_bottom.1, !dbg !779
  %sub86 = sub i32 %42, %sum, !dbg !779
  %43 = load i32* %size_x, align 4, !dbg !779, !tbaa !752
  %sum247 = add i32 %crop_left.1, %crop_right.1, !dbg !779
  %sub89 = sub i32 %43, %sum247, !dbg !779
  %mul90 = mul i32 %sub86, %div, !dbg !779
  %mul91 = mul i32 %mul90, %sub89, !dbg !779
  %conv92 = sext i32 %mul91 to i64, !dbg !779
  %call93 = tail call i64 @write(i32 %p_out, i8* %call, i64 %conv92) #8, !dbg !779
  %chroma_format_idc94 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 41, !dbg !780
  %44 = load i32* %chroma_format_idc94, align 4, !dbg !780, !tbaa !752
  %cmp95 = icmp eq i32 %44, 0, !dbg !780
  br i1 %cmp95, label %if.end139, label %if.then97, !dbg !780

if.then97:                                        ; preds = %if.end81
  %frame_cropping_rect_left_offset98 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 44, !dbg !781
  %45 = load i32* %frame_cropping_rect_left_offset98, align 4, !dbg !781, !tbaa !752
  tail call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !146), !dbg !781
  %frame_cropping_rect_right_offset99 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 45, !dbg !783
  %46 = load i32* %frame_cropping_rect_right_offset99, align 4, !dbg !783, !tbaa !752
  tail call void @llvm.dbg.value(metadata !{i32 %46}, i64 0, metadata !147), !dbg !783
  %frame_mbs_only_flag100 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 42, !dbg !784
  %47 = load i32* %frame_mbs_only_flag100, align 4, !dbg !784, !tbaa !752
  %sub101 = sub nsw i32 2, %47, !dbg !784
  %frame_cropping_rect_top_offset102 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 46, !dbg !784
  %48 = load i32* %frame_cropping_rect_top_offset102, align 4, !dbg !784, !tbaa !752
  %mul103 = mul nsw i32 %sub101, %48, !dbg !784
  tail call void @llvm.dbg.value(metadata !{i32 %mul103}, i64 0, metadata !148), !dbg !784
  %frame_cropping_rect_bottom_offset106 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 47, !dbg !785
  %49 = load i32* %frame_cropping_rect_bottom_offset106, align 4, !dbg !785, !tbaa !752
  %mul107 = mul nsw i32 %49, %sub101, !dbg !785
  tail call void @llvm.dbg.value(metadata !{i32 %mul107}, i64 0, metadata !149), !dbg !785
  %imgUV108 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 30, !dbg !786
  %50 = load i16**** %imgUV108, align 8, !dbg !786, !tbaa !739
  %51 = load i16*** %50, align 8, !dbg !786, !tbaa !739
  %size_x_cr110 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 20, !dbg !786
  %52 = load i32* %size_x_cr110, align 4, !dbg !786, !tbaa !752
  %size_y_cr111 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 21, !dbg !786
  %53 = load i32* %size_y_cr111, align 4, !dbg !786, !tbaa !752
  tail call void @img2buf(i16** %51, i8* %call, i32 %52, i32 %53, i32 %div, i32 %45, i32 %46, i32 %mul103, i32 %mul107) #7, !dbg !786
  %54 = load i32* %size_y_cr111, align 4, !dbg !787, !tbaa !752
  %mul107249 = add i32 %49, %48, !dbg !787
  %sum248 = mul i32 %sub101, %mul107249, !dbg !787
  %sub114 = sub i32 %54, %sum248, !dbg !787
  %55 = load i32* %size_x_cr110, align 4, !dbg !787, !tbaa !752
  %sum250 = add i32 %46, %45, !dbg !787
  %sub117 = sub i32 %55, %sum250, !dbg !787
  %mul118 = mul i32 %sub114, %div, !dbg !787
  %mul119 = mul i32 %mul118, %sub117, !dbg !787
  %conv120 = sext i32 %mul119 to i64, !dbg !787
  %call121 = tail call i64 @write(i32 %p_out, i8* %call, i64 %conv120) #8, !dbg !787
  br i1 %5, label %if.end139, label %if.then123, !dbg !788

if.then123:                                       ; preds = %if.then97
  %56 = load i16**** %imgUV108, align 8, !dbg !789, !tbaa !739
  %arrayidx125 = getelementptr inbounds i16*** %56, i64 1, !dbg !789
  %57 = load i16*** %arrayidx125, align 8, !dbg !789, !tbaa !739
  %58 = load i32* %size_x_cr110, align 4, !dbg !789, !tbaa !752
  %59 = load i32* %size_y_cr111, align 4, !dbg !789, !tbaa !752
  tail call void @img2buf(i16** %57, i8* %call, i32 %58, i32 %59, i32 %div, i32 %45, i32 %46, i32 %mul103, i32 %mul107) #7, !dbg !789
  %60 = load i32* %size_y_cr111, align 4, !dbg !791, !tbaa !752
  %sub130 = sub i32 %60, %sum248, !dbg !791
  %61 = load i32* %size_x_cr110, align 4, !dbg !791, !tbaa !752
  %sub133 = sub i32 %61, %sum250, !dbg !791
  %mul134 = mul i32 %sub130, %div, !dbg !791
  %mul135 = mul i32 %mul134, %sub133, !dbg !791
  %conv136 = sext i32 %mul135 to i64, !dbg !791
  %call137 = tail call i64 @write(i32 %p_out, i8* %call, i64 %conv136) #8, !dbg !791
  br label %if.end139, !dbg !792

if.end139:                                        ; preds = %if.end81, %if.then97, %if.then123
  tail call void @free(i8* %call) #8, !dbg !793
  br label %return, !dbg !793

return:                                           ; preds = %land.end, %if.end139
  ret void, !dbg !793
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #5

; Function Attrs: optsize
declare i64 @write(i32, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @init_out_buffer() #2 {
entry:
  %call = tail call %struct.frame_store* (...)* @alloc_frame_store() #8, !dbg !794
  store %struct.frame_store* %call, %struct.frame_store** @out_buffer, align 8, !dbg !794, !tbaa !739
  ret void, !dbg !795
}

; Function Attrs: optsize
declare %struct.frame_store* @alloc_frame_store(...) #5

; Function Attrs: nounwind optsize uwtable
define void @uninit_out_buffer() #2 {
entry:
  %0 = load %struct.frame_store** @out_buffer, align 8, !dbg !796, !tbaa !739
  tail call void @free_frame_store(%struct.frame_store* %0) #8, !dbg !796
  store %struct.frame_store* null, %struct.frame_store** @out_buffer, align 8, !dbg !797, !tbaa !739
  ret void, !dbg !798
}

; Function Attrs: optsize
declare void @free_frame_store(%struct.frame_store*) #5

; Function Attrs: nounwind optsize uwtable
define void @clear_picture(%struct.storable_picture* nocapture %p) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %p}, i64 0, metadata !162), !dbg !799
  tail call void @llvm.dbg.value(metadata !14, i64 0, metadata !163), !dbg !800
  %size_y = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 19, !dbg !800
  %0 = load i32* %size_y, align 4, !dbg !800, !tbaa !752
  %cmp50 = icmp sgt i32 %0, 0, !dbg !800
  br i1 %cmp50, label %for.body.lr.ph, label %for.cond1.preheader, !dbg !800

for.body.lr.ph:                                   ; preds = %entry
  %imgY = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 25, !dbg !802
  %size_x = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 18, !dbg !802
  br label %for.body, !dbg !800

for.cond1.preheader:                              ; preds = %for.body, %entry
  %size_y_cr = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 21, !dbg !803
  %1 = load i32* %size_y_cr, align 4, !dbg !803, !tbaa !752
  %cmp248 = icmp sgt i32 %1, 0, !dbg !803
  br i1 %cmp248, label %for.body4.lr.ph, label %for.end29, !dbg !803

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %imgUV = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 30, !dbg !805
  %size_x_cr = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 20, !dbg !805
  br label %for.body4, !dbg !803

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv54 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next55, %for.body ]
  %2 = load i16*** %imgY, align 8, !dbg !802, !tbaa !739
  %arrayidx = getelementptr inbounds i16** %2, i64 %indvars.iv54, !dbg !802
  %3 = load i16** %arrayidx, align 8, !dbg !802, !tbaa !739
  %4 = bitcast i16* %3 to i8*, !dbg !802
  %5 = load %struct.ImageParameters** @img, align 8, !dbg !802, !tbaa !739
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 154, !dbg !802
  %6 = load i32* %dc_pred_value, align 4, !dbg !802, !tbaa !752
  %7 = trunc i32 %6 to i8, !dbg !802
  %8 = load i32* %size_x, align 4, !dbg !802, !tbaa !752
  %conv = sext i32 %8 to i64, !dbg !802
  %mul = shl nsw i64 %conv, 1, !dbg !802
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 %7, i64 %mul, i32 2, i1 false), !dbg !802
  %indvars.iv.next55 = add i64 %indvars.iv54, 1, !dbg !800
  %9 = load i32* %size_y, align 4, !dbg !800, !tbaa !752
  %10 = trunc i64 %indvars.iv.next55 to i32, !dbg !800
  %cmp = icmp slt i32 %10, %9, !dbg !800
  br i1 %cmp, label %for.body, label %for.cond1.preheader, !dbg !800

for.cond14.preheader:                             ; preds = %for.body4
  %cmp1646 = icmp sgt i32 %19, 0, !dbg !806
  br i1 %cmp1646, label %for.body18.lr.ph, label %for.end29, !dbg !806

for.body18.lr.ph:                                 ; preds = %for.cond14.preheader
  %imgUV20 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 30, !dbg !808
  %size_x_cr24 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 20, !dbg !808
  br label %for.body18, !dbg !806

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %indvars.iv52 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next53, %for.body4 ]
  %11 = load i16**** %imgUV, align 8, !dbg !805, !tbaa !739
  %12 = load i16*** %11, align 8, !dbg !805, !tbaa !739
  %arrayidx7 = getelementptr inbounds i16** %12, i64 %indvars.iv52, !dbg !805
  %13 = load i16** %arrayidx7, align 8, !dbg !805, !tbaa !739
  %14 = bitcast i16* %13 to i8*, !dbg !805
  %15 = load %struct.ImageParameters** @img, align 8, !dbg !805, !tbaa !739
  %dc_pred_value8 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 154, !dbg !805
  %16 = load i32* %dc_pred_value8, align 4, !dbg !805, !tbaa !752
  %17 = trunc i32 %16 to i8, !dbg !805
  %18 = load i32* %size_x_cr, align 4, !dbg !805, !tbaa !752
  %conv9 = sext i32 %18 to i64, !dbg !805
  %mul10 = shl nsw i64 %conv9, 1, !dbg !805
  tail call void @llvm.memset.p0i8.i64(i8* %14, i8 %17, i64 %mul10, i32 2, i1 false), !dbg !805
  %indvars.iv.next53 = add i64 %indvars.iv52, 1, !dbg !803
  %19 = load i32* %size_y_cr, align 4, !dbg !803, !tbaa !752
  %20 = trunc i64 %indvars.iv.next53 to i32, !dbg !803
  %cmp2 = icmp slt i32 %20, %19, !dbg !803
  br i1 %cmp2, label %for.body4, label %for.cond14.preheader, !dbg !803

for.body18:                                       ; preds = %for.body18.lr.ph, %for.body18
  %indvars.iv = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next, %for.body18 ]
  %21 = load i16**** %imgUV20, align 8, !dbg !808, !tbaa !739
  %arrayidx21 = getelementptr inbounds i16*** %21, i64 1, !dbg !808
  %22 = load i16*** %arrayidx21, align 8, !dbg !808, !tbaa !739
  %arrayidx22 = getelementptr inbounds i16** %22, i64 %indvars.iv, !dbg !808
  %23 = load i16** %arrayidx22, align 8, !dbg !808, !tbaa !739
  %24 = bitcast i16* %23 to i8*, !dbg !808
  %25 = load %struct.ImageParameters** @img, align 8, !dbg !808, !tbaa !739
  %dc_pred_value23 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 154, !dbg !808
  %26 = load i32* %dc_pred_value23, align 4, !dbg !808, !tbaa !752
  %27 = trunc i32 %26 to i8, !dbg !808
  %28 = load i32* %size_x_cr24, align 4, !dbg !808, !tbaa !752
  %conv25 = sext i32 %28 to i64, !dbg !808
  %mul26 = shl nsw i64 %conv25, 1, !dbg !808
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 %27, i64 %mul26, i32 2, i1 false), !dbg !808
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !806
  %29 = load i32* %size_y_cr, align 4, !dbg !806, !tbaa !752
  %30 = trunc i64 %indvars.iv.next to i32, !dbg !806
  %cmp16 = icmp slt i32 %30, %29, !dbg !806
  br i1 %cmp16, label %for.body18, label %for.end29, !dbg !806

for.end29:                                        ; preds = %for.cond1.preheader, %for.body18, %for.cond14.preheader
  ret void, !dbg !809
}

; Function Attrs: nounwind optsize uwtable
define void @write_unpaired_field(%struct.frame_store* %fs, i32 %p_out) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.frame_store* %fs}, i64 0, metadata !185), !dbg !810
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !186), !dbg !810
  %is_used = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 0, !dbg !811
  %0 = load i32* %is_used, align 4, !dbg !811, !tbaa !752
  %cmp = icmp slt i32 %0, 3, !dbg !811
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !811

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 332, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__.write_unpaired_field, i64 0, i64 0)) #9, !dbg !811
  unreachable, !dbg !811

cond.end:                                         ; preds = %entry
  %and = and i32 %0, 1, !dbg !812
  %tobool = icmp eq i32 %and, 0, !dbg !812
  br i1 %tobool, label %if.end, label %if.then, !dbg !812

if.then:                                          ; preds = %cond.end
  %top_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11, !dbg !813
  %1 = load %struct.storable_picture** %top_field, align 8, !dbg !813, !tbaa !739
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %1}, i64 0, metadata !187), !dbg !813
  %size_x = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 18, !dbg !815
  %2 = load i32* %size_x, align 4, !dbg !815, !tbaa !752
  %size_y = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 19, !dbg !815
  %3 = load i32* %size_y, align 4, !dbg !815, !tbaa !752
  %size_x_cr = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 20, !dbg !815
  %4 = load i32* %size_x_cr, align 4, !dbg !815, !tbaa !752
  %size_y_cr = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 21, !dbg !815
  %5 = load i32* %size_y_cr, align 4, !dbg !815, !tbaa !752
  %call = tail call %struct.storable_picture* @alloc_storable_picture(i32 2, i32 %2, i32 %3, i32 %4, i32 %5) #8, !dbg !815
  %bottom_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12, !dbg !815
  store %struct.storable_picture* %call, %struct.storable_picture** %bottom_field, align 8, !dbg !815, !tbaa !739
  tail call void @clear_picture(%struct.storable_picture* %call) #7, !dbg !816
  tail call void @dpb_combine_field(%struct.frame_store* %fs) #8, !dbg !817
  %frame = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10, !dbg !818
  %6 = load %struct.storable_picture** %frame, align 8, !dbg !818, !tbaa !739
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %6}, i64 0, metadata !819) #3, !dbg !820
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !821) #3, !dbg !820
  tail call void @llvm.dbg.value(metadata !822, i64 0, metadata !823) #3, !dbg !820
  tail call void @write_out_picture(%struct.storable_picture* %6, i32 %p_out) #8, !dbg !824
  %.pre = load i32* %is_used, align 4, !dbg !825, !tbaa !752
  br label %if.end, !dbg !826

if.end:                                           ; preds = %cond.end, %if.then
  %7 = phi i32 [ %0, %cond.end ], [ %.pre, %if.then ]
  %and4 = and i32 %7, 2, !dbg !825
  %tobool5 = icmp eq i32 %and4, 0, !dbg !825
  br i1 %tobool5, label %if.end16, label %if.then6, !dbg !825

if.then6:                                         ; preds = %if.end
  %bottom_field7 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12, !dbg !827
  %8 = load %struct.storable_picture** %bottom_field7, align 8, !dbg !827, !tbaa !739
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %8}, i64 0, metadata !187), !dbg !827
  %size_x8 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 18, !dbg !829
  %9 = load i32* %size_x8, align 4, !dbg !829, !tbaa !752
  %size_y9 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 19, !dbg !829
  %10 = load i32* %size_y9, align 4, !dbg !829, !tbaa !752
  %size_x_cr10 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 20, !dbg !829
  %11 = load i32* %size_x_cr10, align 4, !dbg !829, !tbaa !752
  %size_y_cr11 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 21, !dbg !829
  %12 = load i32* %size_y_cr11, align 4, !dbg !829, !tbaa !752
  %call12 = tail call %struct.storable_picture* @alloc_storable_picture(i32 1, i32 %9, i32 %10, i32 %11, i32 %12) #8, !dbg !829
  %top_field13 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11, !dbg !829
  store %struct.storable_picture* %call12, %struct.storable_picture** %top_field13, align 8, !dbg !829, !tbaa !739
  tail call void @clear_picture(%struct.storable_picture* %call12) #7, !dbg !830
  tail call void @dpb_combine_field(%struct.frame_store* %fs) #8, !dbg !831
  %frame15 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10, !dbg !832
  %13 = load %struct.storable_picture** %frame15, align 8, !dbg !832, !tbaa !739
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %13}, i64 0, metadata !833) #3, !dbg !834
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !835) #3, !dbg !834
  tail call void @llvm.dbg.value(metadata !822, i64 0, metadata !836) #3, !dbg !834
  tail call void @write_out_picture(%struct.storable_picture* %13, i32 %p_out) #8, !dbg !837
  br label %if.end16, !dbg !838

if.end16:                                         ; preds = %if.end, %if.then6
  store i32 3, i32* %is_used, align 4, !dbg !839, !tbaa !752
  ret void, !dbg !840
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: optsize
declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #5

; Function Attrs: optsize
declare void @dpb_combine_field(%struct.frame_store*) #5

; Function Attrs: nounwind optsize uwtable
define void @flush_direct_output(i32 %p_out) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !192), !dbg !841
  %0 = load %struct.frame_store** @out_buffer, align 8, !dbg !842, !tbaa !739
  tail call void @write_unpaired_field(%struct.frame_store* %0, i32 %p_out) #7, !dbg !842
  %1 = load %struct.frame_store** @out_buffer, align 8, !dbg !843, !tbaa !739
  %frame = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 10, !dbg !843
  %2 = load %struct.storable_picture** %frame, align 8, !dbg !843, !tbaa !739
  tail call void @free_storable_picture(%struct.storable_picture* %2) #8, !dbg !843
  %3 = load %struct.frame_store** @out_buffer, align 8, !dbg !844, !tbaa !739
  %frame1 = getelementptr inbounds %struct.frame_store* %3, i64 0, i32 10, !dbg !844
  store %struct.storable_picture* null, %struct.storable_picture** %frame1, align 8, !dbg !844, !tbaa !739
  %4 = load %struct.frame_store** @out_buffer, align 8, !dbg !845, !tbaa !739
  %top_field = getelementptr inbounds %struct.frame_store* %4, i64 0, i32 11, !dbg !845
  %5 = load %struct.storable_picture** %top_field, align 8, !dbg !845, !tbaa !739
  tail call void @free_storable_picture(%struct.storable_picture* %5) #8, !dbg !845
  %6 = load %struct.frame_store** @out_buffer, align 8, !dbg !846, !tbaa !739
  %top_field2 = getelementptr inbounds %struct.frame_store* %6, i64 0, i32 11, !dbg !846
  store %struct.storable_picture* null, %struct.storable_picture** %top_field2, align 8, !dbg !846, !tbaa !739
  %7 = load %struct.frame_store** @out_buffer, align 8, !dbg !847, !tbaa !739
  %bottom_field = getelementptr inbounds %struct.frame_store* %7, i64 0, i32 12, !dbg !847
  %8 = load %struct.storable_picture** %bottom_field, align 8, !dbg !847, !tbaa !739
  tail call void @free_storable_picture(%struct.storable_picture* %8) #8, !dbg !847
  %9 = load %struct.frame_store** @out_buffer, align 8, !dbg !848, !tbaa !739
  %bottom_field3 = getelementptr inbounds %struct.frame_store* %9, i64 0, i32 12, !dbg !848
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field3, align 8, !dbg !848, !tbaa !739
  %10 = load %struct.frame_store** @out_buffer, align 8, !dbg !849, !tbaa !739
  %is_used = getelementptr inbounds %struct.frame_store* %10, i64 0, i32 0, !dbg !849
  store i32 0, i32* %is_used, align 4, !dbg !849, !tbaa !752
  ret void, !dbg !850
}

; Function Attrs: optsize
declare void @free_storable_picture(%struct.storable_picture*) #5

; Function Attrs: nounwind optsize uwtable
define void @write_stored_frame(%struct.frame_store* %fs, i32 %p_out) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.frame_store* %fs}, i64 0, metadata !195), !dbg !851
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !196), !dbg !851
  tail call void @flush_direct_output(i32 %p_out) #7, !dbg !852
  %is_used = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 0, !dbg !853
  %0 = load i32* %is_used, align 4, !dbg !853, !tbaa !752
  %cmp = icmp slt i32 %0, 3, !dbg !853
  br i1 %cmp, label %if.then, label %if.else, !dbg !853

if.then:                                          ; preds = %entry
  tail call void @write_unpaired_field(%struct.frame_store* %fs, i32 %p_out) #7, !dbg !854
  br label %if.end, !dbg !856

if.else:                                          ; preds = %entry
  %frame = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10, !dbg !857
  %1 = load %struct.storable_picture** %frame, align 8, !dbg !857, !tbaa !739
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %1}, i64 0, metadata !859) #3, !dbg !860
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !861) #3, !dbg !860
  tail call void @llvm.dbg.value(metadata !822, i64 0, metadata !862) #3, !dbg !860
  tail call void @write_out_picture(%struct.storable_picture* %1, i32 %p_out) #8, !dbg !863
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %is_output = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 8, !dbg !864
  store i32 1, i32* %is_output, align 4, !dbg !864, !tbaa !752
  ret void, !dbg !865
}

; Function Attrs: nounwind optsize uwtable
define void @direct_output(%struct.storable_picture* %p, i32 %p_out) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %p}, i64 0, metadata !199), !dbg !866
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !200), !dbg !866
  %structure = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 0, !dbg !867
  %0 = load i32* %structure, align 4, !dbg !867, !tbaa !740
  switch i32 %0, label %if.end7 [
    i32 0, label %if.then
    i32 1, label %if.then3
  ], !dbg !867

if.then:                                          ; preds = %entry
  tail call void @flush_direct_output(i32 %p_out) #7, !dbg !868
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %p}, i64 0, metadata !870) #3, !dbg !872
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !873) #3, !dbg !872
  tail call void @llvm.dbg.value(metadata !822, i64 0, metadata !874) #3, !dbg !872
  tail call void @write_out_picture(%struct.storable_picture* %p, i32 %p_out) #8, !dbg !875
  tail call void @free_storable_picture(%struct.storable_picture* %p) #8, !dbg !876
  br label %if.end29, !dbg !877

if.then3:                                         ; preds = %entry
  %1 = load %struct.frame_store** @out_buffer, align 8, !dbg !878, !tbaa !739
  %is_used = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 0, !dbg !878
  %2 = load i32* %is_used, align 4, !dbg !878, !tbaa !752
  %and = and i32 %2, 1, !dbg !878
  %tobool = icmp eq i32 %and, 0, !dbg !878
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !878

if.then4:                                         ; preds = %if.then3
  tail call void @flush_direct_output(i32 %p_out) #7, !dbg !880
  %.pre40 = load %struct.frame_store** @out_buffer, align 8, !dbg !881, !tbaa !739
  br label %if.end5, !dbg !880

if.end5:                                          ; preds = %if.then3, %if.then4
  %3 = phi %struct.frame_store* [ %1, %if.then3 ], [ %.pre40, %if.then4 ]
  %top_field = getelementptr inbounds %struct.frame_store* %3, i64 0, i32 11, !dbg !881
  store %struct.storable_picture* %p, %struct.storable_picture** %top_field, align 8, !dbg !881, !tbaa !739
  %4 = load %struct.frame_store** @out_buffer, align 8, !dbg !882, !tbaa !739
  %is_used6 = getelementptr inbounds %struct.frame_store* %4, i64 0, i32 0, !dbg !882
  %5 = load i32* %is_used6, align 4, !dbg !882, !tbaa !752
  %or = or i32 %5, 1, !dbg !882
  store i32 %or, i32* %is_used6, align 4, !dbg !882, !tbaa !752
  %.pr = load i32* %structure, align 4, !dbg !883, !tbaa !740
  br label %if.end7, !dbg !884

if.end7:                                          ; preds = %entry, %if.end5
  %6 = phi i32 [ %0, %entry ], [ %.pr, %if.end5 ], !dbg !883
  %cmp9 = icmp eq i32 %6, 2, !dbg !883
  %7 = load %struct.frame_store** @out_buffer, align 8, !dbg !885, !tbaa !739
  %is_used11 = getelementptr inbounds %struct.frame_store* %7, i64 0, i32 0, !dbg !885
  %8 = load i32* %is_used11, align 4, !dbg !885, !tbaa !752
  br i1 %cmp9, label %if.then10, label %if.end18, !dbg !883

if.then10:                                        ; preds = %if.end7
  %and12 = and i32 %8, 2, !dbg !885
  %tobool13 = icmp eq i32 %and12, 0, !dbg !885
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !885

if.then14:                                        ; preds = %if.then10
  tail call void @flush_direct_output(i32 %p_out) #7, !dbg !887
  %.pre = load %struct.frame_store** @out_buffer, align 8, !dbg !888, !tbaa !739
  br label %if.end15, !dbg !887

if.end15:                                         ; preds = %if.then10, %if.then14
  %9 = phi %struct.frame_store* [ %7, %if.then10 ], [ %.pre, %if.then14 ]
  %bottom_field = getelementptr inbounds %struct.frame_store* %9, i64 0, i32 12, !dbg !888
  store %struct.storable_picture* %p, %struct.storable_picture** %bottom_field, align 8, !dbg !888, !tbaa !739
  %10 = load %struct.frame_store** @out_buffer, align 8, !dbg !889, !tbaa !739
  %is_used16 = getelementptr inbounds %struct.frame_store* %10, i64 0, i32 0, !dbg !889
  %11 = load i32* %is_used16, align 4, !dbg !889, !tbaa !752
  %or17 = or i32 %11, 2, !dbg !889
  store i32 %or17, i32* %is_used16, align 4, !dbg !889, !tbaa !752
  br label %if.end18, !dbg !890

if.end18:                                         ; preds = %if.end7, %if.end15
  %12 = phi i32 [ %or17, %if.end15 ], [ %8, %if.end7 ]
  %13 = phi %struct.frame_store* [ %10, %if.end15 ], [ %7, %if.end7 ]
  %cmp20 = icmp eq i32 %12, 3, !dbg !891
  br i1 %cmp20, label %if.then21, label %if.end29, !dbg !891

if.then21:                                        ; preds = %if.end18
  tail call void @dpb_combine_field(%struct.frame_store* %13) #8, !dbg !892
  %14 = load %struct.frame_store** @out_buffer, align 8, !dbg !894, !tbaa !739
  %frame = getelementptr inbounds %struct.frame_store* %14, i64 0, i32 10, !dbg !894
  %15 = load %struct.storable_picture** %frame, align 8, !dbg !894, !tbaa !739
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %15}, i64 0, metadata !895) #3, !dbg !896
  tail call void @llvm.dbg.value(metadata !{i32 %p_out}, i64 0, metadata !897) #3, !dbg !896
  tail call void @llvm.dbg.value(metadata !822, i64 0, metadata !898) #3, !dbg !896
  tail call void @write_out_picture(%struct.storable_picture* %15, i32 %p_out) #8, !dbg !899
  %16 = load %struct.frame_store** @out_buffer, align 8, !dbg !900, !tbaa !739
  %frame22 = getelementptr inbounds %struct.frame_store* %16, i64 0, i32 10, !dbg !900
  %17 = load %struct.storable_picture** %frame22, align 8, !dbg !900, !tbaa !739
  tail call void @free_storable_picture(%struct.storable_picture* %17) #8, !dbg !900
  %18 = load %struct.frame_store** @out_buffer, align 8, !dbg !901, !tbaa !739
  %frame23 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 10, !dbg !901
  store %struct.storable_picture* null, %struct.storable_picture** %frame23, align 8, !dbg !901, !tbaa !739
  %19 = load %struct.frame_store** @out_buffer, align 8, !dbg !902, !tbaa !739
  %top_field24 = getelementptr inbounds %struct.frame_store* %19, i64 0, i32 11, !dbg !902
  %20 = load %struct.storable_picture** %top_field24, align 8, !dbg !902, !tbaa !739
  tail call void @free_storable_picture(%struct.storable_picture* %20) #8, !dbg !902
  %21 = load %struct.frame_store** @out_buffer, align 8, !dbg !903, !tbaa !739
  %top_field25 = getelementptr inbounds %struct.frame_store* %21, i64 0, i32 11, !dbg !903
  store %struct.storable_picture* null, %struct.storable_picture** %top_field25, align 8, !dbg !903, !tbaa !739
  %22 = load %struct.frame_store** @out_buffer, align 8, !dbg !904, !tbaa !739
  %bottom_field26 = getelementptr inbounds %struct.frame_store* %22, i64 0, i32 12, !dbg !904
  %23 = load %struct.storable_picture** %bottom_field26, align 8, !dbg !904, !tbaa !739
  tail call void @free_storable_picture(%struct.storable_picture* %23) #8, !dbg !904
  %24 = load %struct.frame_store** @out_buffer, align 8, !dbg !905, !tbaa !739
  %bottom_field27 = getelementptr inbounds %struct.frame_store* %24, i64 0, i32 12, !dbg !905
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field27, align 8, !dbg !905, !tbaa !739
  %25 = load %struct.frame_store** @out_buffer, align 8, !dbg !906, !tbaa !739
  %is_used28 = getelementptr inbounds %struct.frame_store* %25, i64 0, i32 0, !dbg !906
  store i32 0, i32* %is_used28, align 4, !dbg !906, !tbaa !752
  br label %if.end29, !dbg !907

if.end29:                                         ; preds = %if.then, %if.then21, %if.end18
  ret void, !dbg !908
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !14, metadata !15, metadata !201, metadata !14, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !9}
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
!14 = metadata !{i32 0}
!15 = metadata !{metadata !16, metadata !28, metadata !56, metadata !135, metadata !154, metadata !157, metadata !158, metadata !164, metadata !188, metadata !193, metadata !197}
!16 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"testEndian", metadata !"testEndian", metadata !"", i32 44, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @testEndian, null, null, metadata !21, i32 45} ; [ DW_TAG_subprogram ] [line 44] [def] [scope 45] [testEndian]
!17 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!18 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{metadata !22, metadata !24}
!22 = metadata !{i32 786688, metadata !16, metadata !"s", metadata !17, i32 46, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 46]
!23 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!24 = metadata !{i32 786688, metadata !16, metadata !"p", metadata !17, i32 47, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 47]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!26 = metadata !{i32 786454, metadata !1, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!27 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!28 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"img2buf", metadata !"img2buf", metadata !"", i32 79, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i16**, i8*, i32, i32, i32, i32, i32, i32, i32)* @img2buf, null, null, metadata !35, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [img2buf]
!29 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{null, metadata !31, metadata !34, metadata !20, metadata !20, metadata !20, metadata !20, metadata !20, metadata !20, metadata !20}
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!33 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !55}
!36 = metadata !{i32 786689, metadata !28, metadata !"imgX", metadata !17, i32 16777295, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imgX] [line 79]
!37 = metadata !{i32 786689, metadata !28, metadata !"buf", metadata !17, i32 33554511, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 79]
!38 = metadata !{i32 786689, metadata !28, metadata !"size_x", metadata !17, i32 50331727, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size_x] [line 79]
!39 = metadata !{i32 786689, metadata !28, metadata !"size_y", metadata !17, i32 67108943, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size_y] [line 79]
!40 = metadata !{i32 786689, metadata !28, metadata !"symbol_size_in_bytes", metadata !17, i32 83886159, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbol_size_in_bytes] [line 79]
!41 = metadata !{i32 786689, metadata !28, metadata !"crop_left", metadata !17, i32 100663375, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [crop_left] [line 79]
!42 = metadata !{i32 786689, metadata !28, metadata !"crop_right", metadata !17, i32 117440591, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [crop_right] [line 79]
!43 = metadata !{i32 786689, metadata !28, metadata !"crop_top", metadata !17, i32 134217807, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [crop_top] [line 79]
!44 = metadata !{i32 786689, metadata !28, metadata !"crop_bottom", metadata !17, i32 150995023, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [crop_bottom] [line 79]
!45 = metadata !{i32 786688, metadata !28, metadata !"i", metadata !17, i32 81, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 81]
!46 = metadata !{i32 786688, metadata !28, metadata !"j", metadata !17, i32 81, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 81]
!47 = metadata !{i32 786688, metadata !28, metadata !"twidth", metadata !17, i32 83, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [twidth] [line 83]
!48 = metadata !{i32 786688, metadata !28, metadata !"theight", metadata !17, i32 84, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [theight] [line 84]
!49 = metadata !{i32 786688, metadata !28, metadata !"size", metadata !17, i32 86, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 86]
!50 = metadata !{i32 786688, metadata !28, metadata !"ui8", metadata !17, i32 88, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ui8] [line 88]
!51 = metadata !{i32 786688, metadata !28, metadata !"tmp16", metadata !17, i32 89, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp16] [line 89]
!52 = metadata !{i32 786688, metadata !28, metadata !"ui16", metadata !17, i32 89, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ui16] [line 89]
!53 = metadata !{i32 786688, metadata !28, metadata !"tmp32", metadata !17, i32 90, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp32] [line 90]
!54 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!55 = metadata !{i32 786688, metadata !28, metadata !"ui32", metadata !17, i32 90, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ui32] [line 90]
!56 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"write_picture", metadata !"write_picture", metadata !"", i32 184, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.storable_picture*, i32, i32)* @write_picture, null, null, metadata !131, i32 185} ; [ DW_TAG_subprogram ] [line 184] [def] [scope 185] [write_picture]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{null, metadata !59, metadata !20, metadata !20}
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from StorablePicture]
!60 = metadata !{i32 786454, metadata !1, null, metadata !"StorablePicture", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [StorablePicture] [line 82, size 0, align 0, offset 0] [from storable_picture]
!61 = metadata !{i32 786451, metadata !62, null, metadata !"storable_picture", i32 21, i64 52672, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [storable_picture] [line 21, size 52672, align 64, offset 0] [from ]
!62 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/mbuffer.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!63 = metadata !{metadata !64, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !79, metadata !80, metadata !81, metadata !82, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !105, metadata !106, metadata !110, metadata !114, metadata !115, metadata !117, metadata !119, metadata !120, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130}
!64 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"structure", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [structure] [line 23, size 32, align 32, offset 0] [from PictureStructure]
!65 = metadata !{i32 786454, metadata !62, null, metadata !"PictureStructure", i32 190, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [PictureStructure] [line 190, size 0, align 0, offset 0] [from ]
!66 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"poc", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [poc] [line 25, size 32, align 32, offset 32] [from int]
!67 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"top_poc", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [top_poc] [line 26, size 32, align 32, offset 64] [from int]
!68 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"bottom_poc", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [bottom_poc] [line 27, size 32, align 32, offset 96] [from int]
!69 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"frame_poc", i32 28, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [frame_poc] [line 28, size 32, align 32, offset 128] [from int]
!70 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"order_num", i32 29, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [order_num] [line 29, size 32, align 32, offset 160] [from int]
!71 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"ref_pic_num", i32 30, i64 12672, i64 64, i64 192, i32 0, metadata !72} ; [ DW_TAG_member ] [ref_pic_num] [line 30, size 12672, align 64, offset 192] [from ]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 12672, i64 64, i32 0, i32 0, metadata !73, metadata !76, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 12672, align 64, offset 0] [from int64]
!73 = metadata !{i32 786454, metadata !62, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!74 = metadata !{i32 786454, metadata !62, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!75 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!76 = metadata !{metadata !77, metadata !78}
!77 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!78 = metadata !{i32 786465, i64 0, i64 33}       ; [ DW_TAG_subrange_type ] [0, 32]
!79 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"frm_ref_pic_num", i32 31, i64 12672, i64 64, i64 12864, i32 0, metadata !72} ; [ DW_TAG_member ] [frm_ref_pic_num] [line 31, size 12672, align 64, offset 12864] [from ]
!80 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"top_ref_pic_num", i32 32, i64 12672, i64 64, i64 25536, i32 0, metadata !72} ; [ DW_TAG_member ] [top_ref_pic_num] [line 32, size 12672, align 64, offset 25536] [from ]
!81 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"bottom_ref_pic_num", i32 33, i64 12672, i64 64, i64 38208, i32 0, metadata !72} ; [ DW_TAG_member ] [bottom_ref_pic_num] [line 33, size 12672, align 64, offset 38208] [from ]
!82 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"frame_num", i32 34, i64 32, i64 32, i64 50880, i32 0, metadata !83} ; [ DW_TAG_member ] [frame_num] [line 34, size 32, align 32, offset 50880] [from unsigned int]
!83 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!84 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"pic_num", i32 35, i64 32, i64 32, i64 50912, i32 0, metadata !20} ; [ DW_TAG_member ] [pic_num] [line 35, size 32, align 32, offset 50912] [from int]
!85 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"long_term_pic_num", i32 36, i64 32, i64 32, i64 50944, i32 0, metadata !20} ; [ DW_TAG_member ] [long_term_pic_num] [line 36, size 32, align 32, offset 50944] [from int]
!86 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"long_term_frame_idx", i32 37, i64 32, i64 32, i64 50976, i32 0, metadata !20} ; [ DW_TAG_member ] [long_term_frame_idx] [line 37, size 32, align 32, offset 50976] [from int]
!87 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"is_long_term", i32 39, i64 32, i64 32, i64 51008, i32 0, metadata !20} ; [ DW_TAG_member ] [is_long_term] [line 39, size 32, align 32, offset 51008] [from int]
!88 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"used_for_reference", i32 40, i64 32, i64 32, i64 51040, i32 0, metadata !20} ; [ DW_TAG_member ] [used_for_reference] [line 40, size 32, align 32, offset 51040] [from int]
!89 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"is_output", i32 41, i64 32, i64 32, i64 51072, i32 0, metadata !20} ; [ DW_TAG_member ] [is_output] [line 41, size 32, align 32, offset 51072] [from int]
!90 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"non_existing", i32 42, i64 32, i64 32, i64 51104, i32 0, metadata !20} ; [ DW_TAG_member ] [non_existing] [line 42, size 32, align 32, offset 51104] [from int]
!91 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"size_x", i32 44, i64 32, i64 32, i64 51136, i32 0, metadata !20} ; [ DW_TAG_member ] [size_x] [line 44, size 32, align 32, offset 51136] [from int]
!92 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"size_y", i32 44, i64 32, i64 32, i64 51168, i32 0, metadata !20} ; [ DW_TAG_member ] [size_y] [line 44, size 32, align 32, offset 51168] [from int]
!93 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"size_x_cr", i32 44, i64 32, i64 32, i64 51200, i32 0, metadata !20} ; [ DW_TAG_member ] [size_x_cr] [line 44, size 32, align 32, offset 51200] [from int]
!94 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"size_y_cr", i32 44, i64 32, i64 32, i64 51232, i32 0, metadata !20} ; [ DW_TAG_member ] [size_y_cr] [line 44, size 32, align 32, offset 51232] [from int]
!95 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"chroma_vector_adjustment", i32 45, i64 32, i64 32, i64 51264, i32 0, metadata !20} ; [ DW_TAG_member ] [chroma_vector_adjustment] [line 45, size 32, align 32, offset 51264] [from int]
!96 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"coded_frame", i32 46, i64 32, i64 32, i64 51296, i32 0, metadata !20} ; [ DW_TAG_member ] [coded_frame] [line 46, size 32, align 32, offset 51296] [from int]
!97 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"MbaffFrameFlag", i32 47, i64 32, i64 32, i64 51328, i32 0, metadata !20} ; [ DW_TAG_member ] [MbaffFrameFlag] [line 47, size 32, align 32, offset 51328] [from int]
!98 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"imgY", i32 49, i64 64, i64 64, i64 51392, i32 0, metadata !31} ; [ DW_TAG_member ] [imgY] [line 49, size 64, align 64, offset 51392] [from ]
!99 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"imgY_11", i32 50, i64 64, i64 64, i64 51456, i32 0, metadata !32} ; [ DW_TAG_member ] [imgY_11] [line 50, size 64, align 64, offset 51456] [from ]
!100 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"imgY_11_w", i32 51, i64 64, i64 64, i64 51520, i32 0, metadata !32} ; [ DW_TAG_member ] [imgY_11_w] [line 51, size 64, align 64, offset 51520] [from ]
!101 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"imgY_ups", i32 52, i64 64, i64 64, i64 51584, i32 0, metadata !31} ; [ DW_TAG_member ] [imgY_ups] [line 52, size 64, align 64, offset 51584] [from ]
!102 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"imgY_ups_w", i32 53, i64 64, i64 64, i64 51648, i32 0, metadata !31} ; [ DW_TAG_member ] [imgY_ups_w] [line 53, size 64, align 64, offset 51648] [from ]
!103 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"imgUV", i32 54, i64 64, i64 64, i64 51712, i32 0, metadata !104} ; [ DW_TAG_member ] [imgUV] [line 54, size 64, align 64, offset 51712] [from ]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!105 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"mb_field", i32 56, i64 64, i64 64, i64 51776, i32 0, metadata !25} ; [ DW_TAG_member ] [mb_field] [line 56, size 64, align 64, offset 51776] [from ]
!106 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"ref_idx", i32 58, i64 64, i64 64, i64 51840, i32 0, metadata !107} ; [ DW_TAG_member ] [ref_idx] [line 58, size 64, align 64, offset 51840] [from ]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!110 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"ref_pic_id", i32 60, i64 64, i64 64, i64 51904, i32 0, metadata !111} ; [ DW_TAG_member ] [ref_pic_id] [line 60, size 64, align 64, offset 51904] [from ]
!111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int64]
!114 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"ref_id", i32 63, i64 64, i64 64, i64 51968, i32 0, metadata !111} ; [ DW_TAG_member ] [ref_id] [line 63, size 64, align 64, offset 51968] [from ]
!115 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"mv", i32 66, i64 64, i64 64, i64 52032, i32 0, metadata !116} ; [ DW_TAG_member ] [mv] [line 66, size 64, align 64, offset 52032] [from ]
!116 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!117 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"moving_block", i32 68, i64 64, i64 64, i64 52096, i32 0, metadata !118} ; [ DW_TAG_member ] [moving_block] [line 68, size 64, align 64, offset 52096] [from ]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!119 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"field_frame", i32 69, i64 64, i64 64, i64 52160, i32 0, metadata !118} ; [ DW_TAG_member ] [field_frame] [line 69, size 64, align 64, offset 52160] [from ]
!120 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"top_field", i32 71, i64 64, i64 64, i64 52224, i32 0, metadata !121} ; [ DW_TAG_member ] [top_field] [line 71, size 64, align 64, offset 52224] [from ]
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from storable_picture]
!122 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"bottom_field", i32 72, i64 64, i64 64, i64 52288, i32 0, metadata !121} ; [ DW_TAG_member ] [bottom_field] [line 72, size 64, align 64, offset 52288] [from ]
!123 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"frame", i32 73, i64 64, i64 64, i64 52352, i32 0, metadata !121} ; [ DW_TAG_member ] [frame] [line 73, size 64, align 64, offset 52352] [from ]
!124 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"chroma_format_idc", i32 75, i64 32, i64 32, i64 52416, i32 0, metadata !20} ; [ DW_TAG_member ] [chroma_format_idc] [line 75, size 32, align 32, offset 52416] [from int]
!125 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"frame_mbs_only_flag", i32 76, i64 32, i64 32, i64 52448, i32 0, metadata !20} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 76, size 32, align 32, offset 52448] [from int]
!126 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"frame_cropping_flag", i32 77, i64 32, i64 32, i64 52480, i32 0, metadata !20} ; [ DW_TAG_member ] [frame_cropping_flag] [line 77, size 32, align 32, offset 52480] [from int]
!127 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"frame_cropping_rect_left_offset", i32 78, i64 32, i64 32, i64 52512, i32 0, metadata !20} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 78, size 32, align 32, offset 52512] [from int]
!128 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"frame_cropping_rect_right_offset", i32 79, i64 32, i64 32, i64 52544, i32 0, metadata !20} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 79, size 32, align 32, offset 52544] [from int]
!129 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"frame_cropping_rect_top_offset", i32 80, i64 32, i64 32, i64 52576, i32 0, metadata !20} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 80, size 32, align 32, offset 52576] [from int]
!130 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"frame_cropping_rect_bottom_offset", i32 81, i64 32, i64 32, i64 52608, i32 0, metadata !20} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 81, size 32, align 32, offset 52608] [from int]
!131 = metadata !{metadata !132, metadata !133, metadata !134}
!132 = metadata !{i32 786689, metadata !56, metadata !"p", metadata !17, i32 16777400, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 184]
!133 = metadata !{i32 786689, metadata !56, metadata !"p_out", metadata !17, i32 33554616, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_out] [line 184]
!134 = metadata !{i32 786689, metadata !56, metadata !"real_structure", metadata !17, i32 50331832, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [real_structure] [line 184]
!135 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"write_out_picture", metadata !"write_out_picture", metadata !"", i32 199, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.storable_picture*, i32)* @write_out_picture, null, null, metadata !138, i32 200} ; [ DW_TAG_subprogram ] [line 199] [def] [scope 200] [write_out_picture]
!136 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!137 = metadata !{null, metadata !59, metadata !20}
!138 = metadata !{metadata !139, metadata !140, metadata !141, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !153}
!139 = metadata !{i32 786689, metadata !135, metadata !"p", metadata !17, i32 16777415, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 199]
!140 = metadata !{i32 786689, metadata !135, metadata !"p_out", metadata !17, i32 33554631, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_out] [line 199]
!141 = metadata !{i32 786688, metadata !135, metadata !"SubWidthC", metadata !17, i32 201, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SubWidthC] [line 201]
!142 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !20, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!145 = metadata !{i32 786688, metadata !135, metadata !"SubHeightC", metadata !17, i32 202, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SubHeightC] [line 202]
!146 = metadata !{i32 786688, metadata !135, metadata !"crop_left", metadata !17, i32 204, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [crop_left] [line 204]
!147 = metadata !{i32 786688, metadata !135, metadata !"crop_right", metadata !17, i32 204, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [crop_right] [line 204]
!148 = metadata !{i32 786688, metadata !135, metadata !"crop_top", metadata !17, i32 204, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [crop_top] [line 204]
!149 = metadata !{i32 786688, metadata !135, metadata !"crop_bottom", metadata !17, i32 204, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [crop_bottom] [line 204]
!150 = metadata !{i32 786688, metadata !135, metadata !"symbol_size_in_bytes", metadata !17, i32 205, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbol_size_in_bytes] [line 205]
!151 = metadata !{i32 786688, metadata !135, metadata !"rgb_output", metadata !17, i32 206, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rgb_output] [line 206]
!152 = metadata !{i32 786454, metadata !4, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!153 = metadata !{i32 786688, metadata !135, metadata !"buf", metadata !17, i32 207, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 207]
!154 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"init_out_buffer", metadata !"init_out_buffer", metadata !"", i32 283, metadata !155, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @init_out_buffer, null, null, metadata !14, i32 284} ; [ DW_TAG_subprogram ] [line 283] [def] [scope 284] [init_out_buffer]
!155 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!156 = metadata !{null}
!157 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"uninit_out_buffer", metadata !"uninit_out_buffer", metadata !"", i32 294, metadata !155, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @uninit_out_buffer, null, null, metadata !14, i32 295} ; [ DW_TAG_subprogram ] [line 294] [def] [scope 295] [uninit_out_buffer]
!158 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"clear_picture", metadata !"clear_picture", metadata !"", i32 306, metadata !159, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.storable_picture*)* @clear_picture, null, null, metadata !161, i32 307} ; [ DW_TAG_subprogram ] [line 306] [def] [scope 307] [clear_picture]
!159 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!160 = metadata !{null, metadata !59}
!161 = metadata !{metadata !162, metadata !163}
!162 = metadata !{i32 786689, metadata !158, metadata !"p", metadata !17, i32 16777522, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 306]
!163 = metadata !{i32 786688, metadata !158, metadata !"i", metadata !17, i32 308, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 308]
!164 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"write_unpaired_field", metadata !"write_unpaired_field", metadata !"", i32 329, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.frame_store*, i32)* @write_unpaired_field, null, null, metadata !184, i32 330} ; [ DW_TAG_subprogram ] [line 329] [def] [scope 330] [write_unpaired_field]
!165 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!166 = metadata !{null, metadata !167, metadata !20}
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FrameStore]
!168 = metadata !{i32 786454, metadata !1, null, metadata !"FrameStore", i32 137, i64 0, i64 0, i64 0, i32 0, metadata !169} ; [ DW_TAG_typedef ] [FrameStore] [line 137, size 0, align 0, offset 0] [from frame_store]
!169 = metadata !{i32 786451, metadata !62, null, metadata !"frame_store", i32 118, i64 512, i64 64, i32 0, i32 0, null, metadata !170, i32 0, null, null} ; [ DW_TAG_structure_type ] [frame_store] [line 118, size 512, align 64, offset 0] [from ]
!170 = metadata !{metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183}
!171 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"is_used", i32 120, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [is_used] [line 120, size 32, align 32, offset 0] [from int]
!172 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"is_reference", i32 121, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [is_reference] [line 121, size 32, align 32, offset 32] [from int]
!173 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"is_long_term", i32 122, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [is_long_term] [line 122, size 32, align 32, offset 64] [from int]
!174 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"is_orig_reference", i32 123, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [is_orig_reference] [line 123, size 32, align 32, offset 96] [from int]
!175 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"is_non_existent", i32 125, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [is_non_existent] [line 125, size 32, align 32, offset 128] [from int]
!176 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"frame_num", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !83} ; [ DW_TAG_member ] [frame_num] [line 127, size 32, align 32, offset 160] [from unsigned int]
!177 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"frame_num_wrap", i32 128, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [frame_num_wrap] [line 128, size 32, align 32, offset 192] [from int]
!178 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"long_term_frame_idx", i32 129, i64 32, i64 32, i64 224, i32 0, metadata !20} ; [ DW_TAG_member ] [long_term_frame_idx] [line 129, size 32, align 32, offset 224] [from int]
!179 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"is_output", i32 130, i64 32, i64 32, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [is_output] [line 130, size 32, align 32, offset 256] [from int]
!180 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"poc", i32 131, i64 32, i64 32, i64 288, i32 0, metadata !20} ; [ DW_TAG_member ] [poc] [line 131, size 32, align 32, offset 288] [from int]
!181 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"frame", i32 133, i64 64, i64 64, i64 320, i32 0, metadata !59} ; [ DW_TAG_member ] [frame] [line 133, size 64, align 64, offset 320] [from ]
!182 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"top_field", i32 134, i64 64, i64 64, i64 384, i32 0, metadata !59} ; [ DW_TAG_member ] [top_field] [line 134, size 64, align 64, offset 384] [from ]
!183 = metadata !{i32 786445, metadata !62, metadata !169, metadata !"bottom_field", i32 135, i64 64, i64 64, i64 448, i32 0, metadata !59} ; [ DW_TAG_member ] [bottom_field] [line 135, size 64, align 64, offset 448] [from ]
!184 = metadata !{metadata !185, metadata !186, metadata !187}
!185 = metadata !{i32 786689, metadata !164, metadata !"fs", metadata !17, i32 16777545, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 329]
!186 = metadata !{i32 786689, metadata !164, metadata !"p_out", metadata !17, i32 33554761, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_out] [line 329]
!187 = metadata !{i32 786688, metadata !164, metadata !"p", metadata !17, i32 331, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 331]
!188 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"flush_direct_output", metadata !"flush_direct_output", metadata !"", i32 366, metadata !189, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @flush_direct_output, null, null, metadata !191, i32 367} ; [ DW_TAG_subprogram ] [line 366] [def] [scope 367] [flush_direct_output]
!189 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!190 = metadata !{null, metadata !20}
!191 = metadata !{metadata !192}
!192 = metadata !{i32 786689, metadata !188, metadata !"p_out", metadata !17, i32 16777582, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_out] [line 366]
!193 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"write_stored_frame", metadata !"write_stored_frame", metadata !"", i32 390, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.frame_store*, i32)* @write_stored_frame, null, null, metadata !194, i32 391} ; [ DW_TAG_subprogram ] [line 390] [def] [scope 391] [write_stored_frame]
!194 = metadata !{metadata !195, metadata !196}
!195 = metadata !{i32 786689, metadata !193, metadata !"fs", metadata !17, i32 16777606, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 390]
!196 = metadata !{i32 786689, metadata !193, metadata !"p_out", metadata !17, i32 33554822, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_out] [line 390]
!197 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"direct_output", metadata !"direct_output", metadata !"", i32 418, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.storable_picture*, i32)* @direct_output, null, null, metadata !198, i32 419} ; [ DW_TAG_subprogram ] [line 418] [def] [scope 419] [direct_output]
!198 = metadata !{metadata !199, metadata !200}
!199 = metadata !{i32 786689, metadata !197, metadata !"p", metadata !17, i32 16777634, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 418]
!200 = metadata !{i32 786689, metadata !197, metadata !"p_out", metadata !17, i32 33554850, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_out] [line 418]
!201 = metadata !{metadata !202, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !439, metadata !534, metadata !535, metadata !536, metadata !538, metadata !539, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !570, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !582, metadata !585, metadata !586, metadata !587, metadata !588, metadata !591, metadata !594, metadata !605, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !705, metadata !706, metadata !707, metadata !708, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713}
!202 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !203, i32 558, metadata !204, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!203 = metadata !{i32 786473, metadata !4}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!204 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!205 = metadata !{i32 786454, metadata !4, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!206 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !207, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!207 = metadata !{metadata !208, metadata !209, metadata !210, metadata !383, metadata !384, metadata !386, metadata !387}
!208 = metadata !{i32 786445, metadata !4, metadata !206, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!209 = metadata !{i32 786445, metadata !4, metadata !206, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!210 = metadata !{i32 786445, metadata !4, metadata !206, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!211 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !212, metadata !381, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!212 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!213 = metadata !{i32 786454, metadata !4, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!214 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !215, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!215 = metadata !{metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !296, metadata !330, metadata !357, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !378}
!216 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!217 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!218 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!219 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!220 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!221 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!222 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !223} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!223 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!224 = metadata !{i32 786454, metadata !4, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!225 = metadata !{i32 786451, metadata !4, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !226, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!226 = metadata !{metadata !227, metadata !243, metadata !268}
!227 = metadata !{i32 786445, metadata !4, metadata !225, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!228 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !229} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!229 = metadata !{i32 786454, metadata !4, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !230} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!230 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !231, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!231 = metadata !{metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242}
!232 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!233 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!234 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!235 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!236 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!237 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!238 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !26} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!239 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!240 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !20} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!241 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !25} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!242 = metadata !{i32 786445, metadata !4, metadata !230, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!243 = metadata !{i32 786445, metadata !4, metadata !225, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !244} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!244 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !245} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!245 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !246, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!246 = metadata !{metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267}
!247 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!248 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !83} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!249 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!250 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !83} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!251 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !83} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!252 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!253 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !254} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!254 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!255 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !83} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!256 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !83} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!257 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !83} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!258 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !83} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!259 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !83} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!260 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !25} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!261 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !254} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!262 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !20} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!263 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !20} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!264 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !20} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!265 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !20} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!266 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !20} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!267 = metadata !{i32 786445, metadata !4, metadata !245, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !20} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!268 = metadata !{i32 786445, metadata !4, metadata !225, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !269} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!269 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !270} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!270 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!271 = metadata !{metadata !20, metadata !272, metadata !295}
!272 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !273} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!273 = metadata !{i32 786454, metadata !4, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!274 = metadata !{i32 786451, metadata !4, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !275, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!275 = metadata !{metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !288}
!276 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!277 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!278 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!279 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!280 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!281 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !83} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!282 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!283 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !20} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!284 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !285} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!285 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !286} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!286 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{null, metadata !20, metadata !20, metadata !254, metadata !254}
!288 = metadata !{i32 786445, metadata !4, metadata !274, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !289} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!289 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!290 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!291 = metadata !{null, metadata !292, metadata !293}
!292 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!293 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!294 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!295 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !225} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!296 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !297} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!297 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !298} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!298 = metadata !{i32 786454, metadata !4, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !299} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!299 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !300, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!300 = metadata !{metadata !301, metadata !312, metadata !317, metadata !321, metadata !324, metadata !326, metadata !327}
!301 = metadata !{i32 786445, metadata !4, metadata !299, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !302} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!302 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !303, metadata !309, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!303 = metadata !{i32 786454, metadata !4, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!304 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !305, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!305 = metadata !{metadata !306, metadata !307, metadata !308}
!306 = metadata !{i32 786445, metadata !4, metadata !304, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!307 = metadata !{i32 786445, metadata !4, metadata !304, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !27} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!308 = metadata !{i32 786445, metadata !4, metadata !304, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!309 = metadata !{metadata !310, metadata !311}
!310 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!311 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!312 = metadata !{i32 786445, metadata !4, metadata !299, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !313} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!313 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !303, metadata !314, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!314 = metadata !{metadata !315, metadata !316}
!315 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!316 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!317 = metadata !{i32 786445, metadata !4, metadata !299, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !318} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!318 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !303, metadata !319, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!319 = metadata !{metadata !315, metadata !320}
!320 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!321 = metadata !{i32 786445, metadata !4, metadata !299, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !322} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!322 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !303, metadata !323, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!323 = metadata !{metadata !315, metadata !77}
!324 = metadata !{i32 786445, metadata !4, metadata !299, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !325} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!325 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !303, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!326 = metadata !{i32 786445, metadata !4, metadata !299, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !325} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!327 = metadata !{i32 786445, metadata !4, metadata !299, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !328} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!328 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !303, metadata !329, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!329 = metadata !{metadata !310}
!330 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !331} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!331 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !332} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!332 = metadata !{i32 786454, metadata !4, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !333} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!333 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !334, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!334 = metadata !{metadata !335, metadata !338, metadata !339, metadata !342, metadata !345, metadata !349, metadata !350, metadata !354, metadata !355, metadata !356}
!335 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !336} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!336 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !303, metadata !337, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!337 = metadata !{metadata !315}
!338 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !325} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!339 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !340} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!340 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !303, metadata !341, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!341 = metadata !{metadata !310, metadata !144}
!342 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !343} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!343 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !303, metadata !344, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!344 = metadata !{metadata !320, metadata !144}
!345 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !346} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!346 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !303, metadata !347, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!347 = metadata !{metadata !320, metadata !348}
!348 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!349 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !346} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!350 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !351} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!351 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !303, metadata !352, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!352 = metadata !{metadata !320, metadata !353}
!353 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!354 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !351} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!355 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !346} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!356 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !346} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!357 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !358} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!358 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !359} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!359 = metadata !{i32 786454, metadata !4, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !360} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!360 = metadata !{i32 786451, metadata !4, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !361, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!361 = metadata !{metadata !362, metadata !363, metadata !364}
!362 = metadata !{i32 786445, metadata !4, metadata !360, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!363 = metadata !{i32 786445, metadata !4, metadata !360, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!364 = metadata !{i32 786445, metadata !4, metadata !360, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !365} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!365 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !360} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!366 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !20} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!367 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !254} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!368 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !254} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!369 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !254} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!370 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !20} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!371 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !254} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!372 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !254} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!373 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !254} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!374 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !375} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!375 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !376} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!376 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!377 = metadata !{metadata !152, metadata !20}
!378 = metadata !{i32 786445, metadata !4, metadata !214, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !379} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!379 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !20, metadata !380, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!380 = metadata !{metadata !310, metadata !315}
!381 = metadata !{metadata !382}
!382 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!383 = metadata !{i32 786445, metadata !4, metadata !206, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !20} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!384 = metadata !{i32 786445, metadata !4, metadata !206, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !385} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!385 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!386 = metadata !{i32 786445, metadata !4, metadata !206, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !385} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!387 = metadata !{i32 786445, metadata !4, metadata !206, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !385} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!388 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !203, i32 559, metadata !204, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!389 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !203, i32 560, metadata !204, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!390 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !203, i32 561, metadata !204, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!391 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !203, i32 562, metadata !204, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!392 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !203, i32 565, metadata !31, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!393 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !203, i32 566, metadata !104, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!394 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !203, i32 567, metadata !395, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!395 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !254} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!396 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !203, i32 569, metadata !83, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!397 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !203, i32 570, metadata !83, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!398 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !203, i32 572, metadata !20, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!399 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !203, i32 572, metadata !20, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!400 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !203, i32 573, metadata !401, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!401 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !402} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!402 = metadata !{i32 786454, metadata !4, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !403} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!403 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !404, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!404 = metadata !{metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !415, metadata !416, metadata !417, metadata !418, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438}
!405 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !152} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!406 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !83} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!407 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!408 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !152} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!409 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !152} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!410 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !152} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!411 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !412} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!412 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !20, metadata !413, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!413 = metadata !{metadata !414}
!414 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!415 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !152} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!416 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !83} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!417 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !83} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!418 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !419} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!419 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !83, metadata !413, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!420 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !419} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!421 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !419} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!422 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !152} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!423 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !83} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!424 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !83} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!425 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !25} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!426 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !20} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!427 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !20} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!428 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !152} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!429 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !83} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!430 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !20} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!431 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !20} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!432 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !20} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!433 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !20} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!434 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !20} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!435 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !152} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!436 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !152} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!437 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !152} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!438 = metadata !{i32 786445, metadata !10, metadata !403, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !152} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!439 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !203, i32 574, metadata !440, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!440 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !441} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!441 = metadata !{i32 786454, metadata !10, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !442} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!442 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !443, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!443 = metadata !{metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481}
!444 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !152} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!445 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !83} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!446 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !152} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!447 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !152} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!448 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !152} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!449 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !152} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!450 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !83} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!451 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !83} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!452 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !83} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!453 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !152} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!454 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !412} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!455 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !83} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!456 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !83} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!457 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !83} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!458 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !83} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!459 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !83} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!460 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !152} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!461 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !20} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!462 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !20} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!463 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !83} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!464 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !465} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!465 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !20, metadata !466, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!466 = metadata !{metadata !467}
!467 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!468 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !83} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!469 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !152} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!470 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !83} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!471 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !83} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!472 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !152} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!473 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !152} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!474 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !152} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!475 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !152} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!476 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !83} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!477 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !83} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!478 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !83} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!479 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !83} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!480 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !152} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!481 = metadata !{i32 786445, metadata !10, metadata !442, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !482} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!482 = metadata !{i32 786454, metadata !10, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !483} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!483 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !484, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!484 = metadata !{metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533}
!485 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !152} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!486 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !83} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!487 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!488 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !83} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!489 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !152} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!490 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !152} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!491 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !152} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!492 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !83} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!493 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !152} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!494 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !152} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!495 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !83} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!496 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !83} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!497 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !83} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!498 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !152} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!499 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !83} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!500 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !83} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!501 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !152} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!502 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !83} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!503 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !83} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!504 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !152} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!505 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !152} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!506 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !507} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!507 = metadata !{i32 786454, metadata !10, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !508} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!508 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !509, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!509 = metadata !{metadata !510, metadata !511, metadata !512, metadata !513, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522}
!510 = metadata !{i32 786445, metadata !10, metadata !508, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!511 = metadata !{i32 786445, metadata !10, metadata !508, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !83} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!512 = metadata !{i32 786445, metadata !10, metadata !508, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!513 = metadata !{i32 786445, metadata !10, metadata !508, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !514} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!514 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !83, metadata !515, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!515 = metadata !{metadata !516}
!516 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!517 = metadata !{i32 786445, metadata !10, metadata !508, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !514} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!518 = metadata !{i32 786445, metadata !10, metadata !508, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !514} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!519 = metadata !{i32 786445, metadata !10, metadata !508, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !83} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!520 = metadata !{i32 786445, metadata !10, metadata !508, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !83} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!521 = metadata !{i32 786445, metadata !10, metadata !508, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !83} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!522 = metadata !{i32 786445, metadata !10, metadata !508, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !83} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!523 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !152} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!524 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !507} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!525 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !152} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!526 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !152} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!527 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !152} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!528 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !83} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!529 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !83} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!530 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !83} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!531 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !83} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!532 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !83} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!533 = metadata !{i32 786445, metadata !10, metadata !483, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !83} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!534 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !203, i32 578, metadata !20, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!535 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !203, i32 579, metadata !20, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!536 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !203, i32 583, metadata !537, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!537 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !395} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!538 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !203, i32 584, metadata !537, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!539 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !203, i32 585, metadata !540, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!540 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !537} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!541 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !203, i32 586, metadata !20, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!542 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !203, i32 587, metadata !20, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!543 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !203, i32 588, metadata !20, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!544 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !203, i32 589, metadata !20, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!545 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !203, i32 592, metadata !31, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!546 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !203, i32 593, metadata !31, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!547 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !203, i32 595, metadata !104, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!548 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !203, i32 596, metadata !104, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!549 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !203, i32 598, metadata !31, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!550 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !203, i32 599, metadata !104, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!551 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !203, i32 601, metadata !31, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!552 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !203, i32 602, metadata !104, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!553 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !203, i32 604, metadata !107, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!554 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !203, i32 605, metadata !108, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!555 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !203, i32 608, metadata !118, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!556 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !203, i32 609, metadata !118, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!557 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !203, i32 610, metadata !20, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!558 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !203, i32 612, metadata !20, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!559 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !203, i32 612, metadata !20, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!560 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !203, i32 612, metadata !20, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!561 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !203, i32 613, metadata !20, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!562 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !203, i32 613, metadata !20, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!563 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !203, i32 613, metadata !20, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!564 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !203, i32 614, metadata !20, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!565 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !203, i32 617, metadata !566, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!566 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !567, metadata !568, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!567 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!568 = metadata !{metadata !569}
!569 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!570 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !203, i32 620, metadata !571, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!571 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !20, metadata !572, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!572 = metadata !{metadata !573, metadata !573}
!573 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!574 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !203, i32 620, metadata !571, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!575 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !203, i32 620, metadata !571, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!576 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !203, i32 621, metadata !571, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!577 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !203, i32 621, metadata !571, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!578 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !203, i32 621, metadata !571, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!579 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !203, i32 622, metadata !580, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!580 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !20, metadata !581, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!581 = metadata !{metadata !310, metadata !573, metadata !573}
!582 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !203, i32 623, metadata !583, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!583 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !20, metadata !584, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!584 = metadata !{metadata !315, metadata !144, metadata !144}
!585 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !203, i32 623, metadata !583, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!586 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !203, i32 624, metadata !583, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!587 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !203, i32 624, metadata !583, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!588 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !203, i32 625, metadata !589, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!589 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !20, metadata !590, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!590 = metadata !{metadata !144, metadata !144}
!591 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !203, i32 625, metadata !592, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!592 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !20, metadata !593, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!593 = metadata !{metadata !573}
!594 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !203, i32 1201, metadata !595, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!595 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !596} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!596 = metadata !{i32 786454, metadata !4, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !597} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!597 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !598, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!598 = metadata !{metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604}
!599 = metadata !{i32 786445, metadata !4, metadata !597, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!600 = metadata !{i32 786445, metadata !4, metadata !597, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!601 = metadata !{i32 786445, metadata !4, metadata !597, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!602 = metadata !{i32 786445, metadata !4, metadata !597, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!603 = metadata !{i32 786445, metadata !4, metadata !597, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!604 = metadata !{i32 786445, metadata !4, metadata !597, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!605 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !203, i32 1202, metadata !606, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!606 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !607} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!607 = metadata !{i32 786454, metadata !4, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !608} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!608 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !609, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!609 = metadata !{metadata !610, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !629, metadata !630, metadata !631, metadata !632, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640}
!610 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !611} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!611 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!612 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !571} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!613 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !571} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!614 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !571} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!615 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !540} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!616 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !537} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!617 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !20} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!618 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !20} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!619 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !142} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!620 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !142} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!621 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !395} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!622 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !592} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!623 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !20} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!624 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !73} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!625 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !20} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!626 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !627} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!627 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !628} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!628 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!629 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !627} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!630 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !627} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!631 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !627} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!632 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !633} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!633 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !23, metadata !584, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!634 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !20} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!635 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !20} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!636 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !20} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!637 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !20} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!638 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !20} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!639 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !20} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!640 = metadata !{i32 786445, metadata !4, metadata !608, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !20} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!641 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !203, i32 1203, metadata !607, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!642 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !203, i32 1203, metadata !607, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!643 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !203, i32 1204, metadata !607, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!644 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !203, i32 1204, metadata !607, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!645 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !203, i32 1230, metadata !646, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!646 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !647} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!647 = metadata !{i32 786454, metadata !4, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !648} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!648 = metadata !{i32 786451, metadata !649, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !650, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!649 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!650 = metadata !{metadata !651, metadata !652, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !672, metadata !673, metadata !674, metadata !675, metadata !677, metadata !678, metadata !680, metadata !684, metadata !686, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !694, metadata !695}
!651 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!652 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!653 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !567} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!654 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!655 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!656 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!657 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!658 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!659 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!660 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!661 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!662 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!663 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !653} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!664 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !665} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!665 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !666} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!666 = metadata !{i32 786451, metadata !649, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !667, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!667 = metadata !{metadata !668, metadata !669, metadata !671}
!668 = metadata !{i32 786445, metadata !649, metadata !666, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !665} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!669 = metadata !{i32 786445, metadata !649, metadata !666, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !670} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!670 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !648} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!671 = metadata !{i32 786445, metadata !649, metadata !666, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!672 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !670} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!673 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !20} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!674 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !20} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!675 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !676} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!676 = metadata !{i32 786454, metadata !649, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!677 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !33} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!678 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !679} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!679 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!680 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !681} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!681 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !567, metadata !682, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!682 = metadata !{metadata !683}
!683 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!684 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !685} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!685 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!686 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !687} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!687 = metadata !{i32 786454, metadata !649, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!688 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !685} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!689 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !685} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!690 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !685} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!691 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !685} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!692 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !693} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!693 = metadata !{i32 786454, metadata !649, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!694 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !20} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!695 = metadata !{i32 786445, metadata !649, metadata !648, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !696} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!696 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !567, metadata !697, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!697 = metadata !{metadata !698}
!698 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!699 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !203, i32 1231, metadata !646, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!700 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !203, i32 1232, metadata !646, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!701 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !203, i32 1233, metadata !20, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!702 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !203, i32 1234, metadata !20, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!703 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !203, i32 1237, metadata !704, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!704 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !20, metadata !697, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!705 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !203, i32 1238, metadata !704, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!706 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !203, i32 1239, metadata !704, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!707 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !203, i32 1240, metadata !704, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!708 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !203, i32 1241, metadata !704, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!709 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !203, i32 1242, metadata !704, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!710 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !203, i32 1456, metadata !20, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!711 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !203, i32 1465, metadata !20, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!712 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !203, i32 1466, metadata !20, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!713 = metadata !{i32 786484, i32 0, null, metadata !"out_buffer", metadata !"out_buffer", metadata !"", metadata !17, i32 32, metadata !167, i32 0, i32 1, %struct.frame_store** @out_buffer, null} ; [ DW_TAG_variable ] [out_buffer] [line 32] [def]
!714 = metadata !{i16* undef}
!715 = metadata !{i32 46, i32 0, metadata !16, null}
!716 = metadata !{i8* undef}
!717 = metadata !{i32 49, i32 0, metadata !16, null}
!718 = metadata !{i32 53, i32 0, metadata !16, null}
!719 = metadata !{i32 79, i32 0, metadata !28, null}
!720 = metadata !{i32 83, i32 0, metadata !28, null}
!721 = metadata !{i32 84, i32 0, metadata !28, null}
!722 = metadata !{i32 86, i32 0, metadata !28, null}
!723 = metadata !{i32 150, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !725, i32 148, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!725 = metadata !{i32 786443, metadata !1, metadata !28, i32 100, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!726 = metadata !{i32 2}
!727 = metadata !{i32 153, i32 0, metadata !728, null}
!728 = metadata !{i32 786443, metadata !1, metadata !724, i32 151, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!729 = metadata !{i32 155, i32 0, metadata !728, null}
!730 = metadata !{i32 156, i32 0, metadata !728, null}
!731 = metadata !{i32 159, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !724, i32 158, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!733 = metadata !{i32 162, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !1, metadata !724, i32 162, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!735 = metadata !{i32 163, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !734, i32 163, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!737 = metadata !{i32 165, i32 0, metadata !738, null}
!738 = metadata !{i32 786443, metadata !1, metadata !736, i32 164, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!739 = metadata !{metadata !"any pointer", metadata !740}
!740 = metadata !{metadata !"omnipotent char", metadata !741}
!741 = metadata !{metadata !"Simple C/C++ TBAA"}
!742 = metadata !{i32 170, i32 0, metadata !28, null}
!743 = metadata !{i32 184, i32 0, metadata !56, null}
!744 = metadata !{i32 186, i32 0, metadata !56, null}
!745 = metadata !{i32 187, i32 0, metadata !56, null}
!746 = metadata !{i32 199, i32 0, metadata !135, null}
!747 = metadata !{[4 x i32]* @write_out_picture.SubWidthC}
!748 = metadata !{i32 201, i32 0, metadata !135, null}
!749 = metadata !{[4 x i32]* @write_out_picture.SubHeightC}
!750 = metadata !{i32 202, i32 0, metadata !135, null}
!751 = metadata !{i32 205, i32 0, metadata !135, null}
!752 = metadata !{metadata !"int", metadata !740}
!753 = metadata !{i32 206, i32 0, metadata !135, null}
!754 = metadata !{i32 209, i32 0, metadata !135, null}
!755 = metadata !{i32 212, i32 0, metadata !135, null}
!756 = metadata !{i32 214, i32 0, metadata !757, null}
!757 = metadata !{i32 786443, metadata !1, metadata !135, i32 213, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!758 = metadata !{i32 215, i32 0, metadata !757, null}
!759 = metadata !{i32 216, i32 0, metadata !757, null}
!760 = metadata !{i32 217, i32 0, metadata !757, null}
!761 = metadata !{i32 218, i32 0, metadata !757, null}
!762 = metadata !{i32 227, i32 0, metadata !135, null}
!763 = metadata !{i32 229, i32 0, metadata !135, null}
!764 = metadata !{i32 231, i32 0, metadata !765, null}
!765 = metadata !{i32 786443, metadata !1, metadata !135, i32 230, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!766 = metadata !{i32 232, i32 0, metadata !765, null}
!767 = metadata !{i32 233, i32 0, metadata !765, null}
!768 = metadata !{i32 234, i32 0, metadata !765, null}
!769 = metadata !{i32 236, i32 0, metadata !765, null}
!770 = metadata !{i32 237, i32 0, metadata !765, null}
!771 = metadata !{i32 239, i32 0, metadata !765, null}
!772 = metadata !{i32 241, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !765, i32 240, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!774 = metadata !{i32 242, i32 0, metadata !773, null}
!775 = metadata !{i32 243, i32 0, metadata !773, null}
!776 = metadata !{i32 244, i32 0, metadata !773, null}
!777 = metadata !{i32 245, i32 0, metadata !773, null}
!778 = metadata !{i32 252, i32 0, metadata !135, null}
!779 = metadata !{i32 253, i32 0, metadata !135, null}
!780 = metadata !{i32 255, i32 0, metadata !135, null}
!781 = metadata !{i32 257, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !135, i32 256, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!783 = metadata !{i32 258, i32 0, metadata !782, null}
!784 = metadata !{i32 259, i32 0, metadata !782, null}
!785 = metadata !{i32 260, i32 0, metadata !782, null}
!786 = metadata !{i32 262, i32 0, metadata !782, null}
!787 = metadata !{i32 263, i32 0, metadata !782, null}
!788 = metadata !{i32 265, i32 0, metadata !782, null}
!789 = metadata !{i32 267, i32 0, metadata !790, null}
!790 = metadata !{i32 786443, metadata !1, metadata !782, i32 266, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!791 = metadata !{i32 268, i32 0, metadata !790, null}
!792 = metadata !{i32 269, i32 0, metadata !790, null}
!793 = metadata !{i32 272, i32 0, metadata !135, null}
!794 = metadata !{i32 285, i32 0, metadata !154, null}
!795 = metadata !{i32 286, i32 0, metadata !154, null}
!796 = metadata !{i32 296, i32 0, metadata !157, null}
!797 = metadata !{i32 297, i32 0, metadata !157, null}
!798 = metadata !{i32 298, i32 0, metadata !157, null}
!799 = metadata !{i32 306, i32 0, metadata !158, null}
!800 = metadata !{i32 310, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !158, i32 310, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!802 = metadata !{i32 311, i32 0, metadata !801, null}
!803 = metadata !{i32 312, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !1, metadata !158, i32 312, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!805 = metadata !{i32 313, i32 0, metadata !804, null}
!806 = metadata !{i32 314, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !158, i32 314, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!808 = metadata !{i32 315, i32 0, metadata !807, null}
!809 = metadata !{i32 316, i32 0, metadata !158, null}
!810 = metadata !{i32 329, i32 0, metadata !164, null}
!811 = metadata !{i32 332, i32 0, metadata !164, null}
!812 = metadata !{i32 333, i32 0, metadata !164, null}
!813 = metadata !{i32 337, i32 0, metadata !814, null}
!814 = metadata !{i32 786443, metadata !1, metadata !164, i32 334, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!815 = metadata !{i32 338, i32 0, metadata !814, null}
!816 = metadata !{i32 339, i32 0, metadata !814, null}
!817 = metadata !{i32 340, i32 0, metadata !814, null}
!818 = metadata !{i32 341, i32 0, metadata !814, null}
!819 = metadata !{i32 786689, metadata !56, metadata !"p", metadata !17, i32 16777400, metadata !59, i32 0, metadata !818} ; [ DW_TAG_arg_variable ] [p] [line 184]
!820 = metadata !{i32 184, i32 0, metadata !56, metadata !818}
!821 = metadata !{i32 786689, metadata !56, metadata !"p_out", metadata !17, i32 33554616, metadata !20, i32 0, metadata !818} ; [ DW_TAG_arg_variable ] [p_out] [line 184]
!822 = metadata !{i32 undef}
!823 = metadata !{i32 786689, metadata !56, metadata !"real_structure", metadata !17, i32 50331832, metadata !20, i32 0, metadata !818} ; [ DW_TAG_arg_variable ] [real_structure] [line 184]
!824 = metadata !{i32 186, i32 0, metadata !56, metadata !818}
!825 = metadata !{i32 344, i32 0, metadata !164, null}
!826 = metadata !{i32 342, i32 0, metadata !814, null}
!827 = metadata !{i32 348, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !164, i32 345, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!829 = metadata !{i32 349, i32 0, metadata !828, null}
!830 = metadata !{i32 350, i32 0, metadata !828, null}
!831 = metadata !{i32 351, i32 0, metadata !828, null}
!832 = metadata !{i32 352, i32 0, metadata !828, null}
!833 = metadata !{i32 786689, metadata !56, metadata !"p", metadata !17, i32 16777400, metadata !59, i32 0, metadata !832} ; [ DW_TAG_arg_variable ] [p] [line 184]
!834 = metadata !{i32 184, i32 0, metadata !56, metadata !832}
!835 = metadata !{i32 786689, metadata !56, metadata !"p_out", metadata !17, i32 33554616, metadata !20, i32 0, metadata !832} ; [ DW_TAG_arg_variable ] [p_out] [line 184]
!836 = metadata !{i32 786689, metadata !56, metadata !"real_structure", metadata !17, i32 50331832, metadata !20, i32 0, metadata !832} ; [ DW_TAG_arg_variable ] [real_structure] [line 184]
!837 = metadata !{i32 186, i32 0, metadata !56, metadata !832}
!838 = metadata !{i32 353, i32 0, metadata !828, null}
!839 = metadata !{i32 355, i32 0, metadata !164, null}
!840 = metadata !{i32 356, i32 0, metadata !164, null}
!841 = metadata !{i32 366, i32 0, metadata !188, null}
!842 = metadata !{i32 368, i32 0, metadata !188, null}
!843 = metadata !{i32 370, i32 0, metadata !188, null}
!844 = metadata !{i32 371, i32 0, metadata !188, null}
!845 = metadata !{i32 372, i32 0, metadata !188, null}
!846 = metadata !{i32 373, i32 0, metadata !188, null}
!847 = metadata !{i32 374, i32 0, metadata !188, null}
!848 = metadata !{i32 375, i32 0, metadata !188, null}
!849 = metadata !{i32 376, i32 0, metadata !188, null}
!850 = metadata !{i32 377, i32 0, metadata !188, null}
!851 = metadata !{i32 390, i32 0, metadata !193, null}
!852 = metadata !{i32 393, i32 0, metadata !193, null}
!853 = metadata !{i32 395, i32 0, metadata !193, null}
!854 = metadata !{i32 397, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !193, i32 396, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!856 = metadata !{i32 398, i32 0, metadata !855, null}
!857 = metadata !{i32 401, i32 0, metadata !858, null}
!858 = metadata !{i32 786443, metadata !1, metadata !193, i32 400, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!859 = metadata !{i32 786689, metadata !56, metadata !"p", metadata !17, i32 16777400, metadata !59, i32 0, metadata !857} ; [ DW_TAG_arg_variable ] [p] [line 184]
!860 = metadata !{i32 184, i32 0, metadata !56, metadata !857}
!861 = metadata !{i32 786689, metadata !56, metadata !"p_out", metadata !17, i32 33554616, metadata !20, i32 0, metadata !857} ; [ DW_TAG_arg_variable ] [p_out] [line 184]
!862 = metadata !{i32 786689, metadata !56, metadata !"real_structure", metadata !17, i32 50331832, metadata !20, i32 0, metadata !857} ; [ DW_TAG_arg_variable ] [real_structure] [line 184]
!863 = metadata !{i32 186, i32 0, metadata !56, metadata !857}
!864 = metadata !{i32 404, i32 0, metadata !193, null}
!865 = metadata !{i32 405, i32 0, metadata !193, null}
!866 = metadata !{i32 418, i32 0, metadata !197, null}
!867 = metadata !{i32 420, i32 0, metadata !197, null}
!868 = metadata !{i32 424, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !197, i32 421, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!870 = metadata !{i32 786689, metadata !56, metadata !"p", metadata !17, i32 16777400, metadata !59, i32 0, metadata !871} ; [ DW_TAG_arg_variable ] [p] [line 184]
!871 = metadata !{i32 425, i32 0, metadata !869, null}
!872 = metadata !{i32 184, i32 0, metadata !56, metadata !871}
!873 = metadata !{i32 786689, metadata !56, metadata !"p_out", metadata !17, i32 33554616, metadata !20, i32 0, metadata !871} ; [ DW_TAG_arg_variable ] [p_out] [line 184]
!874 = metadata !{i32 786689, metadata !56, metadata !"real_structure", metadata !17, i32 50331832, metadata !20, i32 0, metadata !871} ; [ DW_TAG_arg_variable ] [real_structure] [line 184]
!875 = metadata !{i32 186, i32 0, metadata !56, metadata !871}
!876 = metadata !{i32 426, i32 0, metadata !869, null}
!877 = metadata !{i32 427, i32 0, metadata !869, null}
!878 = metadata !{i32 432, i32 0, metadata !879, null}
!879 = metadata !{i32 786443, metadata !1, metadata !197, i32 431, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!880 = metadata !{i32 433, i32 0, metadata !879, null}
!881 = metadata !{i32 434, i32 0, metadata !879, null}
!882 = metadata !{i32 435, i32 0, metadata !879, null}
!883 = metadata !{i32 438, i32 0, metadata !197, null}
!884 = metadata !{i32 436, i32 0, metadata !879, null}
!885 = metadata !{i32 440, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !197, i32 439, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!887 = metadata !{i32 441, i32 0, metadata !886, null}
!888 = metadata !{i32 442, i32 0, metadata !886, null}
!889 = metadata !{i32 443, i32 0, metadata !886, null}
!890 = metadata !{i32 444, i32 0, metadata !886, null}
!891 = metadata !{i32 446, i32 0, metadata !197, null}
!892 = metadata !{i32 449, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !197, i32 447, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c]
!894 = metadata !{i32 450, i32 0, metadata !893, null}
!895 = metadata !{i32 786689, metadata !56, metadata !"p", metadata !17, i32 16777400, metadata !59, i32 0, metadata !894} ; [ DW_TAG_arg_variable ] [p] [line 184]
!896 = metadata !{i32 184, i32 0, metadata !56, metadata !894}
!897 = metadata !{i32 786689, metadata !56, metadata !"p_out", metadata !17, i32 33554616, metadata !20, i32 0, metadata !894} ; [ DW_TAG_arg_variable ] [p_out] [line 184]
!898 = metadata !{i32 786689, metadata !56, metadata !"real_structure", metadata !17, i32 50331832, metadata !20, i32 0, metadata !894} ; [ DW_TAG_arg_variable ] [real_structure] [line 184]
!899 = metadata !{i32 186, i32 0, metadata !56, metadata !894}
!900 = metadata !{i32 451, i32 0, metadata !893, null}
!901 = metadata !{i32 452, i32 0, metadata !893, null}
!902 = metadata !{i32 453, i32 0, metadata !893, null}
!903 = metadata !{i32 454, i32 0, metadata !893, null}
!904 = metadata !{i32 455, i32 0, metadata !893, null}
!905 = metadata !{i32 456, i32 0, metadata !893, null}
!906 = metadata !{i32 457, i32 0, metadata !893, null}
!907 = metadata !{i32 458, i32 0, metadata !893, null}
!908 = metadata !{i32 457, i32 0, metadata !197, null}
