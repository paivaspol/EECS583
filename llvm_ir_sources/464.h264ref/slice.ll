; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c'
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
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, i32, i8** }

@img = external global %struct.ImageParameters*
@input = external global %struct.InputParameters*
@stats = external global %struct.StatParameters*
@Bytes_After_Header = common global i32 0, align 4
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [83 x i8] c"Error encoding first MB with spcified parameter, bits of current MB may be too big\00", align 1
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@MBPairIsField = common global i32 0, align 4
@rpc_bits_to_go = common global i32 0, align 4
@rpc_bytes_to_go = common global i32 0, align 4
@log2_max_frame_num_minus4 = common global i32 0, align 4
@dpb = external global %struct.decoded_picture_buffer
@enc_picture = external global %struct.storable_picture*
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@img4Y_tmp = common global i32** null, align 8
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i32 0, align 4
@me_time = common global i32 0, align 4
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@mb_adaptive = common global i32 0, align 4
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
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@.str1 = private unnamed_addr constant [22 x i8] c"currPic != ((void*)0)\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c\00", align 1
@__PRETTY_FUNCTION__.init_slice = private unnamed_addr constant [21 x i8] c"void init_slice(int)\00", align 1
@.str3 = private unnamed_addr constant [71 x i8] c"Too many slices per picture, increase MAXLSICESPERPICTURE in global.h.\00", align 1
@listXsize = external global [6 x i32]
@listX = external global [6 x %struct.storable_picture**]
@enc_frame_picture2 = external global %struct.storable_picture*
@Co_located = external global %struct.colocated_params*
@.str4 = private unnamed_addr constant [30 x i8] c"malloc_slice: slice structure\00", align 1
@assignSE2partition_NoDP = external global [21 x i32]
@assignSE2partition = external global [2 x i32*]
@assignSE2partition_DP = external global [21 x i32]
@.str5 = private unnamed_addr constant [22 x i8] c"malloc_slice: partArr\00", align 1
@.str6 = private unnamed_addr constant [24 x i8] c"malloc_slice: Bitstream\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"malloc_slice: StreamBuffer\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @init_ref_pic_list_reordering() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !764, !tbaa !765
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !764
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !764, !tbaa !765
  tail call void @llvm.dbg.value(metadata !{%struct.Slice* %1}, i64 0, metadata !41), !dbg !764
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 10, !dbg !768
  store i32 0, i32* %ref_pic_list_reordering_flag_l0, align 4, !dbg !768, !tbaa !769
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 14, !dbg !770
  store i32 0, i32* %ref_pic_list_reordering_flag_l1, align 4, !dbg !770, !tbaa !769
  ret void, !dbg !771
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define i32 @start_slice() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !772, !tbaa !765
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !772
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !772, !tbaa !765
  tail call void @llvm.dbg.value(metadata !{%struct.Slice* %1}, i64 0, metadata !227), !dbg !772
  tail call void @llvm.dbg.value(metadata !34, i64 0, metadata !229), !dbg !773
  %2 = load %struct.InputParameters** @input, align 8, !dbg !774, !tbaa !765
  %partition_mode = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 61, !dbg !774
  %3 = load i32* %partition_mode, align 4, !dbg !774, !tbaa !769
  %cmp = icmp eq i32 %3, 0, !dbg !774
  %cond = select i1 %cmp, i32 1, i32 3, !dbg !774
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !231), !dbg !774
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 49, !dbg !775
  %4 = load %struct.Picture** %currentPicture, align 8, !dbg !775, !tbaa !765
  %idr_flag = getelementptr inbounds %struct.Picture* %4, i64 0, i32 1, !dbg !775
  %5 = load i32* %idr_flag, align 4, !dbg !775, !tbaa !769
  %tobool = icmp ne i32 %5, 0, !dbg !775
  %.cond = select i1 %tobool, i32 1, i32 %cond, !dbg !775
  tail call void @llvm.dbg.value(metadata !{i32 %.cond}, i64 0, metadata !231), !dbg !776
  %tr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 55, !dbg !778
  %6 = load i32* %tr, align 4, !dbg !778, !tbaa !769
  tail call void @RTPUpdateTimestamp(i32 %6) #6, !dbg !778
  tail call void @llvm.dbg.value(metadata !34, i64 0, metadata !230), !dbg !779
  %partArr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6, !dbg !781
  br label %for.body, !dbg !779

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %header_len.037 = phi i32 [ 0, %entry ], [ %header_len.3, %for.inc ]
  %7 = load %struct.datapartition** %partArr, align 8, !dbg !781, !tbaa !765
  %bitstream = getelementptr inbounds %struct.datapartition* %7, i64 %indvars.iv, i32 0, !dbg !781
  %8 = load %struct.Bitstream** %bitstream, align 8, !dbg !781, !tbaa !765
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %8}, i64 0, metadata !228), !dbg !781
  %write_flag = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 10, !dbg !783
  store i32 0, i32* %write_flag, align 4, !dbg !783, !tbaa !769
  %9 = trunc i64 %indvars.iv to i32, !dbg !784
  %cmp2 = icmp eq i32 %9, 0, !dbg !784
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !784

if.then3:                                         ; preds = %for.body
  %call = tail call i32 (i32, ...)* bitcast (i32 (...)* @SliceHeader to i32 (i32, ...)*)(i32 0) #6, !dbg !785
  br label %if.end6, !dbg !785

if.else:                                          ; preds = %for.body
  %call4 = tail call i32 (i32, ...)* bitcast (i32 (...)* @Partition_BC_Header to i32 (i32, ...)*)(i32 %9) #6, !dbg !786
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %call.pn = phi i32 [ %call, %if.then3 ], [ %call4, %if.else ]
  %header_len.1 = add nsw i32 %call.pn, %header_len.037, !dbg !785
  %10 = load %struct.InputParameters** @input, align 8, !dbg !787, !tbaa !765
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 59, !dbg !787
  %11 = load i32* %symbol_mode, align 4, !dbg !787, !tbaa !769
  %cmp7 = icmp eq i32 %11, 1, !dbg !787
  br i1 %cmp7, label %if.then8, label %if.else17, !dbg !787

if.then8:                                         ; preds = %if.end6
  %12 = load %struct.datapartition** %partArr, align 8, !dbg !788, !tbaa !765
  %ee_cabac = getelementptr inbounds %struct.datapartition* %12, i64 %indvars.iv, i32 1, !dbg !788
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %ee_cabac}, i64 0, metadata !226), !dbg !788
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 1, !dbg !790
  %13 = load i32* %bits_to_go, align 4, !dbg !790, !tbaa !769
  %cmp12 = icmp eq i32 %13, 8, !dbg !790
  %add15 = select i1 %cmp12, i32 0, i32 %13, !dbg !790
  %header_len.1.add15 = add nsw i32 %add15, %header_len.1, !dbg !790
  tail call void @writeVlcByteAlign(%struct.Bitstream* %8) #6, !dbg !791
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 9, !dbg !792
  %14 = load i8** %streamBuffer, align 8, !dbg !792, !tbaa !765
  %byte_pos = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 0, !dbg !792
  %15 = load %struct.ImageParameters** @img, align 8, !dbg !792, !tbaa !765
  %type = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 6, !dbg !792
  %16 = load i32* %type, align 4, !dbg !792, !tbaa !769
  tail call void @arienco_start_encoding(%struct.EncodingEnvironment* %ee_cabac, i8* %14, i32* %byte_pos, i32 %16) #6, !dbg !792
  tail call void (...)* @cabac_new_slice() #6, !dbg !793
  br label %for.inc, !dbg !794

if.else17:                                        ; preds = %if.end6
  tail call void (...)* @CAVLC_init() #6, !dbg !795
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.else17
  %header_len.3 = phi i32 [ %header_len.1.add15, %if.then8 ], [ %header_len.1, %if.else17 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !779
  %17 = trunc i64 %indvars.iv.next to i32, !dbg !779
  %cmp1 = icmp slt i32 %17, %.cond, !dbg !779
  br i1 %cmp1, label %for.body, label %for.end, !dbg !779

for.end:                                          ; preds = %for.inc
  %18 = load %struct.InputParameters** @input, align 8, !dbg !797, !tbaa !765
  %symbol_mode19 = getelementptr inbounds %struct.InputParameters* %18, i64 0, i32 59, !dbg !797
  %19 = load i32* %symbol_mode19, align 4, !dbg !797, !tbaa !769
  %cmp20 = icmp eq i32 %19, 1, !dbg !797
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !797

if.then21:                                        ; preds = %for.end
  tail call void (...)* @init_contexts() #6, !dbg !798
  br label %if.end22, !dbg !800

if.end22:                                         ; preds = %if.then21, %for.end
  ret i32 %header_len.3, !dbg !801
}

; Function Attrs: optsize
declare void @RTPUpdateTimestamp(i32) #2

; Function Attrs: optsize
declare i32 @SliceHeader(...) #2

; Function Attrs: optsize
declare i32 @Partition_BC_Header(...) #2

; Function Attrs: optsize
declare void @writeVlcByteAlign(%struct.Bitstream*) #2

; Function Attrs: optsize
declare void @arienco_start_encoding(%struct.EncodingEnvironment*, i8*, i32*, i32) #2

; Function Attrs: optsize
declare void @cabac_new_slice(...) #2

; Function Attrs: optsize
declare void @CAVLC_init(...) #2

; Function Attrs: optsize
declare void @init_contexts(...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @terminate_slice() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !802, !tbaa !765
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !802
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !802, !tbaa !765
  tail call void @llvm.dbg.value(metadata !{%struct.Slice* %1}, i64 0, metadata !236), !dbg !802
  %2 = load %struct.InputParameters** @input, align 8, !dbg !803, !tbaa !765
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 59, !dbg !803
  %3 = load i32* %symbol_mode, align 4, !dbg !803, !tbaa !769
  %cmp = icmp eq i32 %3, 1, !dbg !803
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !803

if.then:                                          ; preds = %entry
  tail call void @write_terminating_bit(i16 signext 1) #6, !dbg !804
  br label %for.cond.preheader, !dbg !804

for.cond.preheader:                               ; preds = %if.then, %entry
  %max_part_nr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 4, !dbg !805
  %4 = load i32* %max_part_nr, align 4, !dbg !805, !tbaa !769
  %cmp148 = icmp sgt i32 %4, 0, !dbg !805
  br i1 %cmp148, label %for.body.lr.ph, label %for.end, !dbg !805

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %partArr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6, !dbg !807
  br label %for.body, !dbg !805

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %5 = load %struct.datapartition** %partArr, align 8, !dbg !807, !tbaa !765
  %bitstream = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv, i32 0, !dbg !807
  %6 = load %struct.Bitstream** %bitstream, align 8, !dbg !807, !tbaa !765
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %6}, i64 0, metadata !235), !dbg !807
  %7 = load %struct.InputParameters** @input, align 8, !dbg !809, !tbaa !765
  %symbol_mode2 = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 59, !dbg !809
  %8 = load i32* %symbol_mode2, align 4, !dbg !809, !tbaa !769
  %cmp3 = icmp eq i32 %8, 0, !dbg !809
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !809

if.then4:                                         ; preds = %for.body
  tail call void @SODBtoRBSP(%struct.Bitstream* %6) #6, !dbg !810
  %byte_pos = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 0, !dbg !812
  %9 = load i32* %byte_pos, align 4, !dbg !812, !tbaa !769
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !239), !dbg !812
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 9, !dbg !813
  %10 = load i8** %streamBuffer, align 8, !dbg !813, !tbaa !765
  %call = tail call i32 @RBSPtoEBSP(i8* %10, i32 0, i32 %9, i32 0) #6, !dbg !813
  store i32 %call, i32* %byte_pos, align 4, !dbg !813, !tbaa !769
  %sub = sub nsw i32 %call, %9, !dbg !814
  %mul = shl i32 %sub, 3, !dbg !814
  %11 = load %struct.StatParameters** @stats, align 8, !dbg !814, !tbaa !765
  %em_prev_bits = getelementptr inbounds %struct.StatParameters* %11, i64 0, i32 31, !dbg !814
  %12 = load i32** %em_prev_bits, align 8, !dbg !814, !tbaa !765
  %13 = load i32* %12, align 4, !dbg !814, !tbaa !769
  %add = add nsw i32 %13, %mul, !dbg !814
  store i32 %add, i32* %12, align 4, !dbg !814, !tbaa !769
  br label %for.inc, !dbg !815

if.else:                                          ; preds = %for.body
  %ee_cabac = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv, i32 1, !dbg !816
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %ee_cabac}, i64 0, metadata !237), !dbg !816
  tail call void @arienco_done_encoding(%struct.EncodingEnvironment* %ee_cabac) #6, !dbg !818
  %Ebits_to_go = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv, i32 1, i32 3, !dbg !819
  %14 = load i32* %Ebits_to_go, align 4, !dbg !819, !tbaa !769
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 1, !dbg !819
  store i32 %14, i32* %bits_to_go, align 4, !dbg !819, !tbaa !769
  %byte_buf = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 2, !dbg !820
  store i8 0, i8* %byte_buf, align 1, !dbg !820, !tbaa !766
  %byte_pos11 = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 0, !dbg !821
  %15 = load i32* %byte_pos11, align 4, !dbg !822, !tbaa !769
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !239), !dbg !822
  %streamBuffer13 = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 9, !dbg !823
  %16 = load i8** %streamBuffer13, align 8, !dbg !823, !tbaa !765
  %E = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv, i32 1, i32 16, !dbg !823
  %17 = load i32* %E, align 4, !dbg !823, !tbaa !769
  %call15 = tail call i32 @RBSPtoEBSP(i8* %16, i32 0, i32 %15, i32 %17) #6, !dbg !823
  store i32 %call15, i32* %byte_pos11, align 4, !dbg !823, !tbaa !769
  %sub18 = sub nsw i32 %call15, %15, !dbg !824
  %mul19 = shl i32 %sub18, 3, !dbg !824
  %18 = load %struct.StatParameters** @stats, align 8, !dbg !824, !tbaa !765
  %em_prev_bits20 = getelementptr inbounds %struct.StatParameters* %18, i64 0, i32 31, !dbg !824
  %19 = load i32** %em_prev_bits20, align 8, !dbg !824, !tbaa !765
  %20 = load i32* %19, align 4, !dbg !824, !tbaa !769
  %add21 = add nsw i32 %20, %mul19, !dbg !824
  store i32 %add21, i32* %19, align 4, !dbg !824, !tbaa !769
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !805
  %21 = load i32* %max_part_nr, align 4, !dbg !805, !tbaa !769
  %22 = trunc i64 %indvars.iv.next to i32, !dbg !805
  %cmp1 = icmp slt i32 %22, %21, !dbg !805
  br i1 %cmp1, label %for.body, label %for.end, !dbg !805

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %23 = load %struct.InputParameters** @input, align 8, !dbg !825, !tbaa !765
  %symbol_mode23 = getelementptr inbounds %struct.InputParameters* %23, i64 0, i32 59, !dbg !825
  %24 = load i32* %symbol_mode23, align 4, !dbg !825, !tbaa !769
  %cmp24 = icmp eq i32 %24, 1, !dbg !825
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !825

if.then25:                                        ; preds = %for.end
  tail call void (...)* @store_contexts() #6, !dbg !826
  br label %if.end26, !dbg !828

if.end26:                                         ; preds = %if.then25, %for.end
  ret i32 0, !dbg !829
}

; Function Attrs: optsize
declare void @write_terminating_bit(i16 signext) #2

; Function Attrs: optsize
declare void @SODBtoRBSP(%struct.Bitstream*) #2

; Function Attrs: optsize
declare i32 @RBSPtoEBSP(i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @arienco_done_encoding(%struct.EncodingEnvironment*) #2

; Function Attrs: optsize
declare void @store_contexts(...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @encode_one_slice(i32 %SliceGroupId, %struct.Picture* nocapture %pic) #0 {
entry:
  %end_of_slice = alloca i32, align 4
  %recode_macroblock = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %SliceGroupId}, i64 0, metadata !259), !dbg !830
  call void @llvm.dbg.value(metadata !{%struct.Picture* %pic}, i64 0, metadata !260), !dbg !830
  call void @llvm.dbg.declare(metadata !{i32* %end_of_slice}, metadata !261), !dbg !831
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !261), !dbg !831
  store i32 0, i32* %end_of_slice, align 4, !dbg !831, !tbaa !766
  call void @llvm.dbg.declare(metadata !{i32* %recode_macroblock}, metadata !262), !dbg !832
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !264), !dbg !833
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !834, !tbaa !765
  %cod_counter = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 27, !dbg !834
  store i32 0, i32* %cod_counter, align 4, !dbg !834, !tbaa !769
  %call = call i32 @FmoGetFirstMacroblockInSlice(i32 %SliceGroupId) #6, !dbg !835
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !265), !dbg !835
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !836) #4, !dbg !838
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !839, !tbaa !765
  %currentPicture.i = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 49, !dbg !839
  %2 = load %struct.Picture** %currentPicture.i, align 8, !dbg !839, !tbaa !765
  call void @llvm.dbg.value(metadata !{%struct.Picture* %2}, i64 0, metadata !840) #4, !dbg !839
  %current_mb_nr.i = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !841
  store i32 %call, i32* %current_mb_nr.i, align 4, !dbg !841, !tbaa !769
  %cmp.i = icmp eq %struct.Picture* %2, null, !dbg !842
  br i1 %cmp.i, label %cond.false.i, label %cond.end.i, !dbg !842

cond.false.i:                                     ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), i32 496, i8* getelementptr inbounds ([21 x i8]* @__PRETTY_FUNCTION__.init_slice, i64 0, i64 0)) #7, !dbg !842
  unreachable, !dbg !842

cond.end.i:                                       ; preds = %entry
  %no_slices.i = getelementptr inbounds %struct.Picture* %2, i64 0, i32 0, !dbg !843
  %3 = load i32* %no_slices.i, align 4, !dbg !843, !tbaa !769
  %inc.i = add nsw i32 %3, 1, !dbg !843
  store i32 %inc.i, i32* %no_slices.i, align 4, !dbg !843, !tbaa !769
  %cmp2.i = icmp sgt i32 %3, 98, !dbg !844
  br i1 %cmp2.i, label %if.then.i, label %if.end.i, !dbg !844

if.then.i:                                        ; preds = %cond.end.i
  call void @error(i8* getelementptr inbounds ([71 x i8]* @.str3, i64 0, i64 0), i32 -1) #6, !dbg !845
  %.pre.i = load %struct.ImageParameters** @img, align 8, !dbg !846, !tbaa !765
  br label %if.end.i, !dbg !845

if.end.i:                                         ; preds = %if.then.i, %cond.end.i
  %4 = phi %struct.ImageParameters* [ %.pre.i, %if.then.i ], [ %1, %cond.end.i ]
  %width.i.i = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 13, !dbg !846
  %5 = load i32* %width.i.i, align 4, !dbg !846, !tbaa !769
  %height.i.i = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 15, !dbg !846
  %6 = load i32* %height.i.i, align 4, !dbg !846, !tbaa !769
  %mul.i.i = shl i32 %5, 2, !dbg !846
  %mul1.i.i = mul i32 %mul.i.i, %6, !dbg !846
  call void @llvm.dbg.value(metadata !{i32 %mul1.i.i}, i64 0, metadata !848) #4, !dbg !846
  %call.i.i = call noalias i8* @calloc(i64 1, i64 152) #6, !dbg !849
  %7 = bitcast i8* %call.i.i to %struct.Slice*, !dbg !849
  call void @llvm.dbg.value(metadata !{%struct.Slice* %7}, i64 0, metadata !850) #4, !dbg !849
  %cmp.i.i = icmp eq i8* %call.i.i, null, !dbg !849
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !849

if.then.i.i:                                      ; preds = %if.end.i
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !849
  br label %if.end.i.i, !dbg !849

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i
  %8 = load %struct.InputParameters** @input, align 8, !dbg !851, !tbaa !765
  %symbol_mode.i.i = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 59, !dbg !851
  %9 = load i32* %symbol_mode.i.i, align 4, !dbg !851, !tbaa !769
  %cmp2.i.i = icmp eq i32 %9, 1, !dbg !851
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end6.i.i, !dbg !851

if.then3.i.i:                                     ; preds = %if.end.i.i
  %call4.i.i = call %struct.MotionInfoContexts* @create_contexts_MotionInfo() #6, !dbg !852
  %mot_ctx.i.i = getelementptr inbounds i8* %call.i.i, i64 32, !dbg !852
  %10 = bitcast i8* %mot_ctx.i.i to %struct.MotionInfoContexts**, !dbg !852
  store %struct.MotionInfoContexts* %call4.i.i, %struct.MotionInfoContexts** %10, align 8, !dbg !852, !tbaa !765
  %call5.i.i = call %struct.TextureInfoContexts* @create_contexts_TextureInfo() #6, !dbg !854
  %tex_ctx.i.i = getelementptr inbounds i8* %call.i.i, i64 40, !dbg !854
  %11 = bitcast i8* %tex_ctx.i.i to %struct.TextureInfoContexts**, !dbg !854
  store %struct.TextureInfoContexts* %call5.i.i, %struct.TextureInfoContexts** %11, align 8, !dbg !854, !tbaa !765
  %.pre.i.i = load %struct.InputParameters** @input, align 8, !dbg !855, !tbaa !765
  br label %if.end6.i.i, !dbg !856

if.end6.i.i:                                      ; preds = %if.end.i.i, %if.then3.i.i
  %12 = phi %struct.InputParameters* [ %.pre.i.i, %if.then3.i.i ], [ %8, %if.end.i.i ]
  %partition_mode.i.i = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 61, !dbg !855
  %13 = load i32* %partition_mode.i.i, align 4, !dbg !855, !tbaa !769
  %cmp7.i.i = icmp eq i32 %13, 0, !dbg !855
  %cond.i.i = select i1 %cmp7.i.i, i32 1, i32 3, !dbg !855
  %max_part_nr.i.i = getelementptr inbounds i8* %call.i.i, i64 16, !dbg !855
  %14 = bitcast i8* %max_part_nr.i.i to i32*, !dbg !855
  %15 = load %struct.ImageParameters** @img, align 8, !dbg !857, !tbaa !765
  %currentPicture.i.i = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 49, !dbg !857
  %16 = load %struct.Picture** %currentPicture.i.i, align 8, !dbg !857, !tbaa !765
  %idr_flag.i.i = getelementptr inbounds %struct.Picture* %16, i64 0, i32 1, !dbg !857
  %17 = load i32* %idr_flag.i.i, align 4, !dbg !857, !tbaa !769
  %tobool.i.i = icmp eq i32 %17, 0, !dbg !857
  %cond..i.i = select i1 %tobool.i.i, i32 %cond.i.i, i32 1, !dbg !857
  store i32 %cond..i.i, i32* %14, align 4, !dbg !858, !tbaa !769
  store i32* getelementptr inbounds ([21 x i32]* @assignSE2partition_NoDP, i64 0, i64 0), i32** getelementptr inbounds ([2 x i32*]* @assignSE2partition, i64 0, i64 0), align 8, !dbg !859, !tbaa !765
  %18 = load %struct.Picture** %currentPicture.i.i, align 8, !dbg !860, !tbaa !765
  %idr_flag12.i.i = getelementptr inbounds %struct.Picture* %18, i64 0, i32 1, !dbg !860
  %19 = load i32* %idr_flag12.i.i, align 4, !dbg !860, !tbaa !769
  %tobool13.i.i = icmp eq i32 %19, 0, !dbg !860
  %cmp15.i.i = icmp eq i32 %13, 1, !dbg !860
  %or.cond.i.i = and i1 %tobool13.i.i, %cmp15.i.i, !dbg !860
  %storemerge.i.i = select i1 %or.cond.i.i, i32* getelementptr inbounds ([21 x i32]* @assignSE2partition_DP, i64 0, i64 0), i32* getelementptr inbounds ([21 x i32]* @assignSE2partition_NoDP, i64 0, i64 0), !dbg !860
  store i32* %storemerge.i.i, i32** getelementptr inbounds ([2 x i32*]* @assignSE2partition, i64 0, i64 1), align 8, !dbg !861, !tbaa !765
  %num_mb.i.i = getelementptr inbounds i8* %call.i.i, i64 20, !dbg !862
  %20 = bitcast i8* %num_mb.i.i to i32*, !dbg !862
  store i32 0, i32* %20, align 4, !dbg !862, !tbaa !769
  %conv55.i.i = zext i32 %cond..i.i to i64, !dbg !863
  %call19.i.i = call noalias i8* @calloc(i64 %conv55.i.i, i64 120) #6, !dbg !863
  %21 = bitcast i8* %call19.i.i to %struct.datapartition*, !dbg !863
  %partArr.i.i = getelementptr inbounds i8* %call.i.i, i64 24, !dbg !863
  %22 = bitcast i8* %partArr.i.i to %struct.datapartition**, !dbg !863
  store %struct.datapartition* %21, %struct.datapartition** %22, align 8, !dbg !863, !tbaa !765
  %cmp20.i.i = icmp eq i8* %call19.i.i, null, !dbg !863
  br i1 %cmp20.i.i, label %if.then22.i.i, label %for.body.lr.ph.i.i, !dbg !863

if.then22.i.i:                                    ; preds = %if.end6.i.i
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !863
  br label %for.body.lr.ph.i.i, !dbg !863

for.body.lr.ph.i.i:                               ; preds = %if.then22.i.i, %if.end6.i.i
  %conv33.i.i = sext i32 %mul1.i.i to i64, !dbg !864
  br label %for.body.i.i, !dbg !867

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %call28.i.i = call noalias i8* @calloc(i64 1, i64 48) #6, !dbg !868
  %23 = bitcast i8* %call28.i.i to %struct.Bitstream*, !dbg !868
  %bitstream.i.i = getelementptr inbounds %struct.datapartition* %21, i64 %indvars.iv.i.i, i32 0, !dbg !868
  store %struct.Bitstream* %23, %struct.Bitstream** %bitstream.i.i, align 8, !dbg !868, !tbaa !765
  %cmp29.i.i = icmp eq i8* %call28.i.i, null, !dbg !868
  br i1 %cmp29.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !868

if.then31.i.i:                                    ; preds = %for.body.i.i
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !868
  %.pre54.i.i = load %struct.Bitstream** %bitstream.i.i, align 8, !dbg !864, !tbaa !765
  br label %if.end32.i.i, !dbg !868

if.end32.i.i:                                     ; preds = %if.then31.i.i, %for.body.i.i
  %24 = phi %struct.Bitstream* [ %.pre54.i.i, %if.then31.i.i ], [ %23, %for.body.i.i ]
  %call34.i.i = call noalias i8* @calloc(i64 %conv33.i.i, i64 1) #6, !dbg !864
  %streamBuffer.i.i = getelementptr inbounds %struct.Bitstream* %24, i64 0, i32 9, !dbg !864
  store i8* %call34.i.i, i8** %streamBuffer.i.i, align 8, !dbg !864, !tbaa !765
  %cmp36.i.i = icmp eq i8* %call34.i.i, null, !dbg !864
  br i1 %cmp36.i.i, label %if.then38.i.i, label %for.inc.i.i, !dbg !864

if.then38.i.i:                                    ; preds = %if.end32.i.i
  call void @no_mem_exit(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !864
  br label %for.inc.i.i, !dbg !864

for.inc.i.i:                                      ; preds = %if.then38.i.i, %if.end32.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !867
  %25 = trunc i64 %indvars.iv.next.i.i to i32, !dbg !867
  %cmp25.i.i = icmp slt i32 %25, %cond..i.i, !dbg !867
  br i1 %cmp25.i.i, label %for.body.i.i, label %malloc_slice.exit.i, !dbg !867

malloc_slice.exit.i:                              ; preds = %for.inc.i.i
  %26 = load i32* %no_slices.i, align 4, !dbg !847, !tbaa !769
  %sub.i = add nsw i32 %26, -1, !dbg !847
  %idxprom.i = sext i32 %sub.i to i64, !dbg !847
  %arrayidx.i = getelementptr inbounds %struct.Picture* %2, i64 0, i32 2, i64 %idxprom.i, !dbg !847
  store %struct.Slice* %7, %struct.Slice** %arrayidx.i, align 8, !dbg !847, !tbaa !765
  %27 = load i32* %no_slices.i, align 4, !dbg !869, !tbaa !769
  %sub5.i = add nsw i32 %27, -1, !dbg !869
  %idxprom6.i = sext i32 %sub5.i to i64, !dbg !869
  %arrayidx8.i = getelementptr inbounds %struct.Picture* %2, i64 0, i32 2, i64 %idxprom6.i, !dbg !869
  %28 = load %struct.Slice** %arrayidx8.i, align 8, !dbg !869, !tbaa !765
  call void @llvm.dbg.value(metadata !{%struct.Slice* %28}, i64 0, metadata !870) #4, !dbg !869
  %29 = load %struct.ImageParameters** @img, align 8, !dbg !871, !tbaa !765
  %currentSlice.i = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 50, !dbg !871
  store %struct.Slice* %28, %struct.Slice** %currentSlice.i, align 8, !dbg !871, !tbaa !765
  %30 = load %struct.ImageParameters** @img, align 8, !dbg !872, !tbaa !765
  %tr.i = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 55, !dbg !872
  %31 = load i32* %tr.i, align 4, !dbg !872, !tbaa !769
  %rem.i = srem i32 %31, 256, !dbg !872
  %picture_id.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 0, !dbg !872
  store i32 %rem.i, i32* %picture_id.i, align 4, !dbg !872, !tbaa !769
  %qp.i = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 10, !dbg !873
  %32 = load i32* %qp.i, align 4, !dbg !873, !tbaa !769
  %qp9.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 1, !dbg !873
  store i32 %32, i32* %qp9.i, align 4, !dbg !873, !tbaa !769
  %start_mb_nr.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 3, !dbg !874
  store i32 %call, i32* %start_mb_nr.i, align 4, !dbg !874, !tbaa !769
  %slice_too_big.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 18, !dbg !875
  store i32 (i32)* @dummy_slice_too_big, i32 (i32)** %slice_too_big.i, align 8, !dbg !875, !tbaa !765
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !876) #4, !dbg !877
  %max_part_nr.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 4, !dbg !877
  %33 = load i32* %max_part_nr.i, align 4, !dbg !877, !tbaa !769
  %cmp10278.i = icmp sgt i32 %33, 0, !dbg !877
  br i1 %cmp10278.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !877

for.body.lr.ph.i:                                 ; preds = %malloc_slice.exit.i
  %partArr.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 6, !dbg !879
  br label %for.body.i, !dbg !877

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv288.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next289.i, %for.body.i ]
  %34 = load %struct.datapartition** %partArr.i, align 8, !dbg !879, !tbaa !765
  %35 = load %struct.InputParameters** @input, align 8, !dbg !881, !tbaa !765
  %symbol_mode.i = getelementptr inbounds %struct.InputParameters* %35, i64 0, i32 59, !dbg !881
  %36 = load i32* %symbol_mode.i, align 4, !dbg !881, !tbaa !769
  %cmp13.i = icmp eq i32 %36, 0, !dbg !881
  %writeSyntaxElement.i = getelementptr inbounds %struct.datapartition* %34, i64 %indvars.iv288.i, i32 2, !dbg !882
  %writeSyntaxElement_UVLC.writeSyntaxElement_CABAC.i = select i1 %cmp13.i, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_UVLC, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_CABAC, !dbg !882
  store i32 (%struct.syntaxelement*, %struct.datapartition*)* %writeSyntaxElement_UVLC.writeSyntaxElement_CABAC.i, i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement.i, align 8, !dbg !882, !tbaa !765
  %bitstream.i = getelementptr inbounds %struct.datapartition* %34, i64 %indvars.iv288.i, i32 0, !dbg !883
  %37 = load %struct.Bitstream** %bitstream.i, align 8, !dbg !883, !tbaa !765
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %37}, i64 0, metadata !884) #4, !dbg !883
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %37, i64 0, i32 1, !dbg !885
  store i32 8, i32* %bits_to_go.i, align 4, !dbg !885, !tbaa !769
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %37, i64 0, i32 0, !dbg !886
  store i32 0, i32* %byte_pos.i, align 4, !dbg !886, !tbaa !769
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %37, i64 0, i32 2, !dbg !887
  store i8 0, i8* %byte_buf.i, align 1, !dbg !887, !tbaa !766
  %indvars.iv.next289.i = add i64 %indvars.iv288.i, 1, !dbg !877
  %38 = load i32* %max_part_nr.i, align 4, !dbg !877, !tbaa !769
  %39 = trunc i64 %indvars.iv.next289.i to i32, !dbg !877
  %cmp10.i = icmp slt i32 %39, %38, !dbg !877
  br i1 %cmp10.i, label %for.body.i, label %for.end.i, !dbg !877

for.end.i:                                        ; preds = %for.body.i, %malloc_slice.exit.i
  %40 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !888, !tbaa !765
  %num_ref_idx_l0_active_minus1.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %40, i64 0, i32 17, !dbg !888
  %41 = load i32* %num_ref_idx_l0_active_minus1.i, align 4, !dbg !888, !tbaa !769
  %add.i = add nsw i32 %41, 1, !dbg !888
  %42 = load %struct.ImageParameters** @img, align 8, !dbg !888, !tbaa !765
  %num_ref_idx_l0_active.i = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 79, !dbg !888
  store i32 %add.i, i32* %num_ref_idx_l0_active.i, align 4, !dbg !888, !tbaa !769
  %num_ref_idx_l1_active_minus1.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %40, i64 0, i32 18, !dbg !889
  %43 = load i32* %num_ref_idx_l1_active_minus1.i, align 4, !dbg !889, !tbaa !769
  %add18.i = add nsw i32 %43, 1, !dbg !889
  %num_ref_idx_l1_active.i = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 80, !dbg !889
  store i32 %add18.i, i32* %num_ref_idx_l1_active.i, align 4, !dbg !889, !tbaa !769
  %type.i = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 6, !dbg !890
  %44 = load i32* %type.i, align 4, !dbg !890, !tbaa !769
  %structure.i = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 7, !dbg !890
  %45 = load i32* %structure.i, align 4, !dbg !890, !tbaa !769
  call void @init_lists(i32 %44, i32 %45) #6, !dbg !890
  %46 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !891, !tbaa !769
  %47 = load %struct.ImageParameters** @img, align 8, !dbg !891, !tbaa !765
  %num_ref_idx_l0_active19.i = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 79, !dbg !891
  store i32 %46, i32* %num_ref_idx_l0_active19.i, align 4, !dbg !891, !tbaa !769
  %48 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !892, !tbaa !769
  %num_ref_idx_l1_active20.i = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 80, !dbg !892
  store i32 %48, i32* %num_ref_idx_l1_active20.i, align 4, !dbg !892, !tbaa !769
  %type21.i = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 6, !dbg !893
  %49 = load i32* %type21.i, align 4, !dbg !893, !tbaa !769
  switch i32 %49, label %if.end42.i [
    i32 0, label %land.lhs.true.i
    i32 3, label %land.lhs.true.i
  ], !dbg !893

land.lhs.true.i:                                  ; preds = %for.end.i, %for.end.i
  %50 = load %struct.InputParameters** @input, align 8, !dbg !893, !tbaa !765
  %P_List0_refs.i = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 10, !dbg !893
  %51 = load i32* %P_List0_refs.i, align 4, !dbg !893, !tbaa !769
  %tobool.i = icmp eq i32 %51, 0, !dbg !893
  br i1 %tobool.i, label %if.end42.i, label %if.then25.i, !dbg !893

if.then25.i:                                      ; preds = %land.lhs.true.i
  %cmp28.i = icmp slt i32 %46, %51, !dbg !895
  %..i = select i1 %cmp28.i, i32 %46, i32 %51, !dbg !895
  store i32 %..i, i32* %num_ref_idx_l0_active19.i, align 4, !dbg !895, !tbaa !769
  %52 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !897, !tbaa !769
  %53 = load i32* %P_List0_refs.i, align 4, !dbg !897, !tbaa !769
  %cmp36.i = icmp slt i32 %52, %53, !dbg !897
  %cond41.i = select i1 %cmp36.i, i32 %52, i32 %53, !dbg !897
  store i32 %cond41.i, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !897, !tbaa !769
  %.pre290.i = load i32* %type21.i, align 4, !dbg !898, !tbaa !769
  br label %if.end42.i, !dbg !899

if.end42.i:                                       ; preds = %if.then25.i, %land.lhs.true.i, %for.end.i
  %54 = phi i32 [ %49, %for.end.i ], [ %49, %land.lhs.true.i ], [ %.pre290.i, %if.then25.i ]
  %cmp44.i = icmp eq i32 %54, 1, !dbg !898
  br i1 %cmp44.i, label %if.then45.i, label %if.end86.i, !dbg !898

if.then45.i:                                      ; preds = %if.end42.i
  %55 = load %struct.InputParameters** @input, align 8, !dbg !900, !tbaa !765
  %B_List0_refs.i = getelementptr inbounds %struct.InputParameters* %55, i64 0, i32 11, !dbg !900
  %56 = load i32* %B_List0_refs.i, align 4, !dbg !900, !tbaa !769
  %tobool46.i = icmp eq i32 %56, 0, !dbg !900
  br i1 %tobool46.i, label %if.end65.i, label %if.then47.i, !dbg !900

if.then47.i:                                      ; preds = %if.then45.i
  %57 = load i32* %num_ref_idx_l0_active19.i, align 4, !dbg !902, !tbaa !769
  %cmp50.i = icmp slt i32 %57, %56, !dbg !902
  %.258.i = select i1 %cmp50.i, i32 %57, i32 %56, !dbg !902
  store i32 %.258.i, i32* %num_ref_idx_l0_active19.i, align 4, !dbg !902, !tbaa !769
  %58 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !904, !tbaa !769
  %59 = load i32* %B_List0_refs.i, align 4, !dbg !904, !tbaa !769
  %cmp59.i = icmp slt i32 %58, %59, !dbg !904
  %cond64.i = select i1 %cmp59.i, i32 %58, i32 %59, !dbg !904
  store i32 %cond64.i, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !904, !tbaa !769
  br label %if.end65.i, !dbg !905

if.end65.i:                                       ; preds = %if.then47.i, %if.then45.i
  %B_List1_refs.i = getelementptr inbounds %struct.InputParameters* %55, i64 0, i32 12, !dbg !906
  %60 = load i32* %B_List1_refs.i, align 4, !dbg !906, !tbaa !769
  %tobool66.i = icmp eq i32 %60, 0, !dbg !906
  br i1 %tobool66.i, label %if.end86.i, label %if.then67.i, !dbg !906

if.then67.i:                                      ; preds = %if.end65.i
  %61 = load i32* %num_ref_idx_l1_active20.i, align 4, !dbg !907, !tbaa !769
  %cmp70.i = icmp slt i32 %61, %60, !dbg !907
  %.259.i = select i1 %cmp70.i, i32 %61, i32 %60, !dbg !907
  store i32 %.259.i, i32* %num_ref_idx_l1_active20.i, align 4, !dbg !907, !tbaa !769
  %62 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !909, !tbaa !769
  %63 = load i32* %B_List1_refs.i, align 4, !dbg !909, !tbaa !769
  %cmp79.i = icmp slt i32 %62, %63, !dbg !909
  %cond84.i = select i1 %cmp79.i, i32 %62, i32 %63, !dbg !909
  store i32 %cond84.i, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !909, !tbaa !769
  br label %if.end86.i, !dbg !910

if.end86.i:                                       ; preds = %if.then67.i, %if.end65.i, %if.end42.i
  %nal_reference_idc.i = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 113, !dbg !911
  %64 = load i32* %nal_reference_idc.i, align 4, !dbg !911, !tbaa !769
  %tobool87.i = icmp eq i32 %64, 0, !dbg !911
  br i1 %tobool87.i, label %if.end95.i, label %land.lhs.true88.i, !dbg !911

land.lhs.true88.i:                                ; preds = %if.end86.i
  %65 = load %struct.InputParameters** @input, align 8, !dbg !911, !tbaa !765
  %PyramidCoding.i = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 55, !dbg !911
  %66 = load i32* %PyramidCoding.i, align 4, !dbg !911, !tbaa !769
  %tobool89.i = icmp eq i32 %66, 0, !dbg !911
  br i1 %tobool89.i, label %if.end95.i, label %land.lhs.true90.i, !dbg !911

land.lhs.true90.i:                                ; preds = %land.lhs.true88.i
  %PocMemoryManagement.i = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 58, !dbg !911
  %67 = load i32* %PocMemoryManagement.i, align 4, !dbg !911, !tbaa !769
  %tobool91.i = icmp eq i32 %67, 0, !dbg !911
  br i1 %tobool91.i, label %if.end95.i, label %land.lhs.true92.i, !dbg !911

land.lhs.true92.i:                                ; preds = %land.lhs.true90.i
  %68 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !dbg !911, !tbaa !769
  %69 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !dbg !911, !tbaa !769
  %cmp93.i = icmp eq i32 %68, %69, !dbg !911
  br i1 %cmp93.i, label %if.then94.i, label %if.end95.i, !dbg !911

if.then94.i:                                      ; preds = %land.lhs.true92.i
  %frame_num.i = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 105, !dbg !912
  %70 = load i32* %frame_num.i, align 4, !dbg !912, !tbaa !769
  call void @poc_based_ref_management(i32 %70) #6, !dbg !912
  %.pre291.i = load %struct.ImageParameters** @img, align 8, !dbg !914, !tbaa !765
  br label %if.end95.i, !dbg !916

if.end95.i:                                       ; preds = %if.then94.i, %land.lhs.true92.i, %land.lhs.true90.i, %land.lhs.true88.i, %if.end86.i
  %71 = phi %struct.ImageParameters* [ %47, %land.lhs.true90.i ], [ %47, %land.lhs.true88.i ], [ %47, %if.end86.i ], [ %.pre291.i, %if.then94.i ], [ %47, %land.lhs.true92.i ]
  %currentSlice.i.i = getelementptr inbounds %struct.ImageParameters* %71, i64 0, i32 50, !dbg !914
  %72 = load %struct.Slice** %currentSlice.i.i, align 8, !dbg !914, !tbaa !765
  call void @llvm.dbg.value(metadata !{%struct.Slice* %72}, i64 0, metadata !917) #4, !dbg !914
  %ref_pic_list_reordering_flag_l0.i.i = getelementptr inbounds %struct.Slice* %72, i64 0, i32 10, !dbg !918
  store i32 0, i32* %ref_pic_list_reordering_flag_l0.i.i, align 4, !dbg !918, !tbaa !769
  %ref_pic_list_reordering_flag_l1.i.i = getelementptr inbounds %struct.Slice* %72, i64 0, i32 14, !dbg !919
  store i32 0, i32* %ref_pic_list_reordering_flag_l1.i.i, align 4, !dbg !919, !tbaa !769
  %type96.i = getelementptr inbounds %struct.ImageParameters* %71, i64 0, i32 6, !dbg !920
  %73 = load i32* %type96.i, align 4, !dbg !920, !tbaa !769
  %cmp97.i = icmp eq i32 %73, 0, !dbg !920
  br i1 %cmp97.i, label %land.lhs.true98.i, label %if.end173.i, !dbg !920

land.lhs.true98.i:                                ; preds = %if.end95.i
  %74 = load %struct.InputParameters** @input, align 8, !dbg !920, !tbaa !765
  %PyramidCoding99.i = getelementptr inbounds %struct.InputParameters* %74, i64 0, i32 55, !dbg !920
  %75 = load i32* %PyramidCoding99.i, align 4, !dbg !920, !tbaa !769
  %tobool100.i = icmp eq i32 %75, 0, !dbg !920
  br i1 %tobool100.i, label %if.end173.i, label %land.lhs.true101.i, !dbg !920

land.lhs.true101.i:                               ; preds = %land.lhs.true98.i
  %PyramidRefReorder.i = getelementptr inbounds %struct.InputParameters* %74, i64 0, i32 57, !dbg !920
  %76 = load i32* %PyramidRefReorder.i, align 4, !dbg !920, !tbaa !769
  %tobool102.i = icmp eq i32 %76, 0, !dbg !920
  br i1 %tobool102.i, label %if.end173.i, label %if.then103.i, !dbg !920

if.then103.i:                                     ; preds = %land.lhs.true101.i
  call void @alloc_ref_pic_list_reordering_buffer(%struct.Slice* %28) #6, !dbg !921
  %77 = load %struct.ImageParameters** @img, align 8, !dbg !922, !tbaa !765
  %type105.i = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 6, !dbg !922
  %78 = load i32* %type105.i, align 4, !dbg !922, !tbaa !769
  switch i32 %78, label %for.cond111.preheader.i [
    i32 2, label %if.end143.i
    i32 4, label %if.end143.i
  ], !dbg !922

for.cond111.preheader.i:                          ; preds = %if.then103.i
  %num_ref_idx_l0_active112274.i = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 79, !dbg !923
  %79 = load i32* %num_ref_idx_l0_active112274.i, align 4, !dbg !923, !tbaa !769
  %cmp114276.i = icmp sgt i32 %79, -1, !dbg !923
  br i1 %cmp114276.i, label %for.body115.lr.ph.i, label %for.end124.i, !dbg !923

for.body115.lr.ph.i:                              ; preds = %for.cond111.preheader.i
  %remapping_of_pic_nums_idc_l0.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 11, !dbg !926
  %80 = load i32** %remapping_of_pic_nums_idc_l0.i, align 8, !dbg !926, !tbaa !765
  %abs_diff_pic_num_minus1_l0.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 12, !dbg !928
  %81 = load i32** %abs_diff_pic_num_minus1_l0.i, align 8, !dbg !928, !tbaa !765
  %long_term_pic_idx_l0.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 13, !dbg !929
  %82 = load i32** %long_term_pic_idx_l0.i, align 8, !dbg !929, !tbaa !765
  br label %for.body115.i, !dbg !923

for.body115.i:                                    ; preds = %for.body115.i, %for.body115.lr.ph.i
  %indvars.iv286.i = phi i64 [ 0, %for.body115.lr.ph.i ], [ %indvars.iv.next287.i, %for.body115.i ]
  %arrayidx117.i = getelementptr inbounds i32* %80, i64 %indvars.iv286.i, !dbg !926
  store i32 3, i32* %arrayidx117.i, align 4, !dbg !926, !tbaa !769
  %arrayidx119.i = getelementptr inbounds i32* %81, i64 %indvars.iv286.i, !dbg !928
  store i32 0, i32* %arrayidx119.i, align 4, !dbg !928, !tbaa !769
  %arrayidx121.i = getelementptr inbounds i32* %82, i64 %indvars.iv286.i, !dbg !929
  store i32 0, i32* %arrayidx121.i, align 4, !dbg !929, !tbaa !769
  %indvars.iv.next287.i = add i64 %indvars.iv286.i, 1, !dbg !923
  %83 = load i32* %num_ref_idx_l0_active112274.i, align 4, !dbg !923, !tbaa !769
  %84 = trunc i64 %indvars.iv286.i to i32, !dbg !923
  %cmp114.i = icmp slt i32 %84, %83, !dbg !923
  br i1 %cmp114.i, label %for.body115.i, label %for.cond111.for.end124_crit_edge.i, !dbg !923

for.cond111.for.end124_crit_edge.i:               ; preds = %for.body115.i
  %.pre293.i = load i32* %type105.i, align 4, !dbg !930, !tbaa !769
  br label %for.end124.i, !dbg !923

for.end124.i:                                     ; preds = %for.cond111.for.end124_crit_edge.i, %for.cond111.preheader.i
  %85 = phi i32 [ %83, %for.cond111.for.end124_crit_edge.i ], [ %79, %for.cond111.preheader.i ]
  %86 = phi i32 [ %.pre293.i, %for.cond111.for.end124_crit_edge.i ], [ %78, %for.cond111.preheader.i ]
  %cmp126.i = icmp eq i32 %86, 1, !dbg !930
  br i1 %cmp126.i, label %for.cond128.preheader.i, label %if.end143.i, !dbg !930

for.cond128.preheader.i:                          ; preds = %for.end124.i
  %num_ref_idx_l1_active129270.i = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 80, !dbg !931
  %87 = load i32* %num_ref_idx_l1_active129270.i, align 4, !dbg !931, !tbaa !769
  %cmp131272.i = icmp sgt i32 %87, -1, !dbg !931
  br i1 %cmp131272.i, label %for.body132.lr.ph.i, label %if.then149.i, !dbg !931

for.body132.lr.ph.i:                              ; preds = %for.cond128.preheader.i
  %remapping_of_pic_nums_idc_l1.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 15, !dbg !934
  %88 = load i32** %remapping_of_pic_nums_idc_l1.i, align 8, !dbg !934, !tbaa !765
  %abs_diff_pic_num_minus1_l1.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 16, !dbg !936
  %89 = load i32** %abs_diff_pic_num_minus1_l1.i, align 8, !dbg !936, !tbaa !765
  %long_term_pic_idx_l1.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 17, !dbg !937
  %90 = load i32** %long_term_pic_idx_l1.i, align 8, !dbg !937, !tbaa !765
  br label %for.body132.i, !dbg !931

for.body132.i:                                    ; preds = %for.body132.i, %for.body132.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body132.lr.ph.i ], [ %indvars.iv.next.i, %for.body132.i ]
  %arrayidx134.i = getelementptr inbounds i32* %88, i64 %indvars.iv.i, !dbg !934
  store i32 3, i32* %arrayidx134.i, align 4, !dbg !934, !tbaa !769
  %arrayidx136.i = getelementptr inbounds i32* %89, i64 %indvars.iv.i, !dbg !936
  store i32 0, i32* %arrayidx136.i, align 4, !dbg !936, !tbaa !769
  %arrayidx138.i = getelementptr inbounds i32* %90, i64 %indvars.iv.i, !dbg !937
  store i32 0, i32* %arrayidx138.i, align 4, !dbg !937, !tbaa !769
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !931
  %91 = load i32* %num_ref_idx_l1_active129270.i, align 4, !dbg !931, !tbaa !769
  %92 = trunc i64 %indvars.iv.i to i32, !dbg !931
  %cmp131.i = icmp slt i32 %92, %91, !dbg !931
  br i1 %cmp131.i, label %for.body132.i, label %for.cond128.if.end143.loopexit_crit_edge.i, !dbg !931

for.cond128.if.end143.loopexit_crit_edge.i:       ; preds = %for.body132.i
  %.pre292.pre.i = load i32* %type105.i, align 4, !dbg !938, !tbaa !769
  br label %if.end143.i, !dbg !931

if.end143.i:                                      ; preds = %for.cond128.if.end143.loopexit_crit_edge.i, %for.end124.i, %if.then103.i, %if.then103.i
  %93 = phi i32 [ %78, %if.then103.i ], [ %78, %if.then103.i ], [ %86, %for.end124.i ], [ %.pre292.pre.i, %for.cond128.if.end143.loopexit_crit_edge.i ]
  switch i32 %93, label %if.end143.i.if.then149.i_crit_edge [
    i32 2, label %if.end173.i
    i32 4, label %if.end173.i
  ], !dbg !938

if.end143.i.if.then149.i_crit_edge:               ; preds = %if.end143.i
  %num_ref_idx_l0_active150.i.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 79
  %.pre175 = load i32* %num_ref_idx_l0_active150.i.phi.trans.insert, align 4, !dbg !939, !tbaa !769
  br label %if.then149.i, !dbg !938

if.then149.i:                                     ; preds = %for.cond128.preheader.i, %if.end143.i.if.then149.i_crit_edge
  %94 = phi i32 [ %.pre175, %if.end143.i.if.then149.i_crit_edge ], [ %85, %for.cond128.preheader.i ]
  call void @llvm.dbg.value(metadata !{i32 %94}, i64 0, metadata !941) #4, !dbg !939
  %95 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !942, !tbaa !765
  %remapping_of_pic_nums_idc_l0151.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 11, !dbg !942
  %96 = load i32** %remapping_of_pic_nums_idc_l0151.i, align 8, !dbg !942, !tbaa !765
  %abs_diff_pic_num_minus1_l0152.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 12, !dbg !942
  %97 = load i32** %abs_diff_pic_num_minus1_l0152.i, align 8, !dbg !942, !tbaa !765
  %long_term_pic_idx_l0153.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 13, !dbg !942
  call void @poc_ref_pic_reorder(%struct.storable_picture** %95, i32 %94, i32* %96, i32* %97, i32* undef, i32 undef, i32 0) #6, !dbg !942
  %98 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !943, !tbaa !765
  %99 = load %struct.ImageParameters** @img, align 8, !dbg !943, !tbaa !765
  %num_ref_idx_l0_active154.i = getelementptr inbounds %struct.ImageParameters* %99, i64 0, i32 79, !dbg !943
  %100 = load i32* %num_ref_idx_l0_active154.i, align 4, !dbg !943, !tbaa !769
  %sub155.i = add nsw i32 %100, -1, !dbg !943
  %101 = load i32** %remapping_of_pic_nums_idc_l0151.i, align 8, !dbg !943, !tbaa !765
  %102 = load i32** %abs_diff_pic_num_minus1_l0152.i, align 8, !dbg !943, !tbaa !765
  %103 = load i32** %long_term_pic_idx_l0153.i, align 8, !dbg !943, !tbaa !765
  call void @reorder_ref_pic_list(%struct.storable_picture** %98, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), i32 %sub155.i, i32* %101, i32* %102, i32* %103) #6, !dbg !943
  %104 = load %struct.ImageParameters** @img, align 8, !dbg !944, !tbaa !765
  %type159.i = getelementptr inbounds %struct.ImageParameters* %104, i64 0, i32 6, !dbg !944
  %105 = load i32* %type159.i, align 4, !dbg !944, !tbaa !769
  %cmp160.i = icmp eq i32 %105, 1, !dbg !944
  br i1 %cmp160.i, label %if.then161.i, label %if.end173.i, !dbg !944

if.then161.i:                                     ; preds = %if.then149.i
  %num_ref_idx_l1_active162.i = getelementptr inbounds %struct.ImageParameters* %104, i64 0, i32 80, !dbg !945
  %106 = load i32* %num_ref_idx_l1_active162.i, align 4, !dbg !945, !tbaa !769
  call void @llvm.dbg.value(metadata !{i32 %106}, i64 0, metadata !941) #4, !dbg !945
  %107 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !dbg !947, !tbaa !765
  %remapping_of_pic_nums_idc_l1163.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 15, !dbg !947
  %108 = load i32** %remapping_of_pic_nums_idc_l1163.i, align 8, !dbg !947, !tbaa !765
  %abs_diff_pic_num_minus1_l1164.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 16, !dbg !947
  %109 = load i32** %abs_diff_pic_num_minus1_l1164.i, align 8, !dbg !947, !tbaa !765
  %long_term_pic_idx_l1165.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 17, !dbg !947
  call void @poc_ref_pic_reorder(%struct.storable_picture** %107, i32 %106, i32* %108, i32* %109, i32* undef, i32 undef, i32 1) #6, !dbg !947
  %110 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !dbg !948, !tbaa !765
  %111 = load %struct.ImageParameters** @img, align 8, !dbg !948, !tbaa !765
  %num_ref_idx_l1_active166.i = getelementptr inbounds %struct.ImageParameters* %111, i64 0, i32 80, !dbg !948
  %112 = load i32* %num_ref_idx_l1_active166.i, align 4, !dbg !948, !tbaa !769
  %sub167.i = add nsw i32 %112, -1, !dbg !948
  %113 = load i32** %remapping_of_pic_nums_idc_l1163.i, align 8, !dbg !948, !tbaa !765
  %114 = load i32** %abs_diff_pic_num_minus1_l1164.i, align 8, !dbg !948, !tbaa !765
  %115 = load i32** %long_term_pic_idx_l1165.i, align 8, !dbg !948, !tbaa !765
  call void @reorder_ref_pic_list(%struct.storable_picture** %110, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), i32 %sub167.i, i32* %113, i32* %114, i32* %115) #6, !dbg !948
  %.pre295.i = load %struct.ImageParameters** @img, align 8, !dbg !949, !tbaa !765
  br label %if.end173.i, !dbg !950

if.end173.i:                                      ; preds = %if.then161.i, %if.then149.i, %if.end143.i, %if.end143.i, %land.lhs.true101.i, %land.lhs.true98.i, %if.end95.i
  %116 = phi %struct.ImageParameters* [ %77, %if.end143.i ], [ %77, %if.end143.i ], [ %71, %land.lhs.true101.i ], [ %71, %land.lhs.true98.i ], [ %.pre295.i, %if.then161.i ], [ %104, %if.then149.i ], [ %71, %if.end95.i ]
  %structure174.i = getelementptr inbounds %struct.ImageParameters* %116, i64 0, i32 7, !dbg !949
  %117 = load i32* %structure174.i, align 4, !dbg !949, !tbaa !769
  %cmp175.i = icmp eq i32 %117, 0, !dbg !949
  br i1 %cmp175.i, label %if.then176.i, label %if.end177.i, !dbg !949

if.then176.i:                                     ; preds = %if.end173.i
  call void (...)* @init_mbaff_lists() #6, !dbg !951
  %.pre296.i = load %struct.ImageParameters** @img, align 8, !dbg !952, !tbaa !765
  br label %if.end177.i, !dbg !951

if.end177.i:                                      ; preds = %if.then176.i, %if.end173.i
  %118 = phi %struct.ImageParameters* [ %.pre296.i, %if.then176.i ], [ %116, %if.end173.i ]
  %type178.i = getelementptr inbounds %struct.ImageParameters* %118, i64 0, i32 6, !dbg !952
  %119 = load i32* %type178.i, align 4, !dbg !952, !tbaa !769
  %cmp179.i = icmp eq i32 %119, 2, !dbg !952
  br i1 %cmp179.i, label %if.end206.i, label %land.lhs.true180.i, !dbg !952

land.lhs.true180.i:                               ; preds = %if.end177.i
  %120 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !952, !tbaa !765
  %weighted_pred_flag.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %120, i64 0, i32 19, !dbg !952
  %121 = load i32* %weighted_pred_flag.i, align 4, !dbg !952, !tbaa !766
  %cmp181.i = icmp eq i32 %121, 1, !dbg !952
  br i1 %cmp181.i, label %if.then187.i, label %lor.lhs.false182.i, !dbg !952

lor.lhs.false182.i:                               ; preds = %land.lhs.true180.i
  %weighted_bipred_idc.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %120, i64 0, i32 20, !dbg !952
  %122 = load i32* %weighted_bipred_idc.i, align 4, !dbg !952, !tbaa !769
  %cmp183.i = icmp ne i32 %122, 0, !dbg !952
  %cmp186.i = icmp eq i32 %119, 1, !dbg !952
  %or.cond.i = and i1 %cmp183.i, %cmp186.i, !dbg !952
  br i1 %or.cond.i, label %if.then187.i, label %if.end206.i, !dbg !952

if.then187.i:                                     ; preds = %lor.lhs.false182.i, %land.lhs.true180.i
  switch i32 %119, label %if.else204.i [
    i32 0, label %if.then193.i
    i32 3, label %if.then193.i
  ], !dbg !953

if.then193.i:                                     ; preds = %if.then187.i, %if.then187.i
  %123 = load %struct.InputParameters** @input, align 8, !dbg !955, !tbaa !765
  %GenerateMultiplePPS.i = getelementptr inbounds %struct.InputParameters* %123, i64 0, i32 15, !dbg !955
  %124 = load i32* %GenerateMultiplePPS.i, align 4, !dbg !955, !tbaa !769
  %tobool194.i = icmp eq i32 %124, 0, !dbg !955
  br i1 %tobool194.i, label %if.else202.i, label %land.lhs.true195.i, !dbg !955

land.lhs.true195.i:                               ; preds = %if.then193.i
  %RDPictureDecision.i = getelementptr inbounds %struct.InputParameters* %123, i64 0, i32 49, !dbg !955
  %125 = load i32* %RDPictureDecision.i, align 4, !dbg !955, !tbaa !769
  %tobool196.i = icmp eq i32 %125, 0, !dbg !955
  br i1 %tobool196.i, label %if.else202.i, label %if.then197.i, !dbg !955

if.then197.i:                                     ; preds = %land.lhs.true195.i
  %126 = load %struct.storable_picture** @enc_picture, align 8, !dbg !957, !tbaa !765
  %127 = load %struct.storable_picture** @enc_frame_picture2, align 8, !dbg !957, !tbaa !765
  %cmp198.i = icmp eq %struct.storable_picture* %126, %127, !dbg !957
  br i1 %cmp198.i, label %if.then199.i, label %if.else200.i, !dbg !957

if.then199.i:                                     ; preds = %if.then197.i
  call void @estimate_weighting_factor_P_slice(i32 0) #6, !dbg !959
  br label %if.end206.i, !dbg !959

if.else200.i:                                     ; preds = %if.then197.i
  call void @estimate_weighting_factor_P_slice(i32 1) #6, !dbg !960
  br label %if.end206.i

if.else202.i:                                     ; preds = %land.lhs.true195.i, %if.then193.i
  call void @estimate_weighting_factor_P_slice(i32 0) #6, !dbg !961
  br label %if.end206.i

if.else204.i:                                     ; preds = %if.then187.i
  call void (...)* @estimate_weighting_factor_B_slice() #6, !dbg !962
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.else204.i, %if.else202.i, %if.else200.i, %if.then199.i, %lor.lhs.false182.i, %if.end177.i
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !963) #4, !dbg !965
  %128 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !965, !tbaa !769
  %cmp210.i.i = icmp sgt i32 %128, 0, !dbg !965
  br i1 %cmp210.i.i, label %for.body.lr.ph.i260.i, label %for.cond29.preheader.i.i, !dbg !965

for.body.lr.ph.i260.i:                            ; preds = %if.end206.i
  %.pre221.i.i = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !967, !tbaa !765
  %.pre222.i.i = load %struct.storable_picture** @enc_picture, align 8, !dbg !967, !tbaa !765
  br label %for.body.i264.i, !dbg !965

for.cond29.preheader.i.i:                         ; preds = %for.body.i264.i, %if.end206.i
  %129 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !969, !tbaa !769
  %cmp30208.i.i = icmp sgt i32 %129, 0, !dbg !969
  br i1 %cmp30208.i.i, label %for.body32.lr.ph.i.i, label %for.end79.i.i, !dbg !969

for.body32.lr.ph.i.i:                             ; preds = %for.cond29.preheader.i.i
  %.pre219.i.i = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !dbg !971, !tbaa !765
  %.pre220.i.i = load %struct.storable_picture** @enc_picture, align 8, !dbg !971, !tbaa !765
  br label %for.body32.i.i, !dbg !969

for.body.i264.i:                                  ; preds = %for.body.i264.i, %for.body.lr.ph.i260.i
  %indvars.iv216.i.i = phi i64 [ 0, %for.body.lr.ph.i260.i ], [ %indvars.iv.next217.i.i, %for.body.i264.i ]
  %arrayidx.i.i = getelementptr inbounds %struct.storable_picture** %.pre221.i.i, i64 %indvars.iv216.i.i, !dbg !967
  %130 = load %struct.storable_picture** %arrayidx.i.i, align 8, !dbg !967, !tbaa !765
  %poc.i.i = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 1, !dbg !967
  %131 = load i32* %poc.i.i, align 4, !dbg !967, !tbaa !769
  %mul.i261.i = shl nsw i32 %131, 1, !dbg !967
  %structure.i.i = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 0, !dbg !967
  %132 = load i32* %structure.i.i, align 4, !dbg !967, !tbaa !766
  %cmp3.i.i = icmp eq i32 %132, 2, !dbg !967
  %cond.i262.i = zext i1 %cmp3.i.i to i32, !dbg !967
  %add.i.i = or i32 %cond.i262.i, %mul.i261.i, !dbg !967
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !967
  %arrayidx6.i.i = getelementptr inbounds %struct.storable_picture* %.pre222.i.i, i64 0, i32 6, i64 0, i64 %indvars.iv216.i.i, !dbg !967
  store i64 %conv.i.i, i64* %arrayidx6.i.i, align 8, !dbg !967, !tbaa !973
  %frame_poc.i.i = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 4, !dbg !974
  %133 = load i32* %frame_poc.i.i, align 4, !dbg !974, !tbaa !769
  %mul9.i.i = shl nsw i32 %133, 1, !dbg !974
  %conv10.i.i = sext i32 %mul9.i.i to i64, !dbg !974
  %arrayidx13.i.i = getelementptr inbounds %struct.storable_picture* %.pre222.i.i, i64 0, i32 7, i64 0, i64 %indvars.iv216.i.i, !dbg !974
  store i64 %conv10.i.i, i64* %arrayidx13.i.i, align 8, !dbg !974, !tbaa !973
  %top_poc.i.i = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 2, !dbg !975
  %134 = load i32* %top_poc.i.i, align 4, !dbg !975, !tbaa !769
  %mul16.i.i = shl nsw i32 %134, 1, !dbg !975
  %conv17.i.i = sext i32 %mul16.i.i to i64, !dbg !975
  %arrayidx20.i.i = getelementptr inbounds %struct.storable_picture* %.pre222.i.i, i64 0, i32 8, i64 0, i64 %indvars.iv216.i.i, !dbg !975
  store i64 %conv17.i.i, i64* %arrayidx20.i.i, align 8, !dbg !975, !tbaa !973
  %bottom_poc.i.i = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 3, !dbg !976
  %135 = load i32* %bottom_poc.i.i, align 4, !dbg !976, !tbaa !769
  %mul23.i.i = shl nsw i32 %135, 1, !dbg !976
  %add24204.i.i = or i32 %mul23.i.i, 1, !dbg !976
  %conv25.i.i = sext i32 %add24204.i.i to i64, !dbg !976
  %arrayidx28.i.i = getelementptr inbounds %struct.storable_picture* %.pre222.i.i, i64 0, i32 9, i64 0, i64 %indvars.iv216.i.i, !dbg !976
  store i64 %conv25.i.i, i64* %arrayidx28.i.i, align 8, !dbg !976, !tbaa !973
  %indvars.iv.next217.i.i = add i64 %indvars.iv216.i.i, 1, !dbg !965
  %lftr.wideiv170 = trunc i64 %indvars.iv.next217.i.i to i32, !dbg !965
  %exitcond171 = icmp eq i32 %lftr.wideiv170, %128, !dbg !965
  br i1 %exitcond171, label %for.cond29.preheader.i.i, label %for.body.i264.i, !dbg !965

for.body32.i.i:                                   ; preds = %for.body32.i.i, %for.body32.lr.ph.i.i
  %indvars.iv214.i.i = phi i64 [ 0, %for.body32.lr.ph.i.i ], [ %indvars.iv.next215.i.i, %for.body32.i.i ]
  %arrayidx34.i.i = getelementptr inbounds %struct.storable_picture** %.pre219.i.i, i64 %indvars.iv214.i.i, !dbg !971
  %136 = load %struct.storable_picture** %arrayidx34.i.i, align 8, !dbg !971, !tbaa !765
  %poc35.i.i = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 1, !dbg !971
  %137 = load i32* %poc35.i.i, align 4, !dbg !971, !tbaa !769
  %mul36.i.i = shl nsw i32 %137, 1, !dbg !971
  %structure39.i.i = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 0, !dbg !971
  %138 = load i32* %structure39.i.i, align 4, !dbg !971, !tbaa !766
  %cmp40.i.i = icmp eq i32 %138, 2, !dbg !971
  %cond42.i.i = zext i1 %cmp40.i.i to i32, !dbg !971
  %add43.i.i = or i32 %cond42.i.i, %mul36.i.i, !dbg !971
  %conv44.i.i = sext i32 %add43.i.i to i64, !dbg !971
  %arrayidx48.i.i = getelementptr inbounds %struct.storable_picture* %.pre220.i.i, i64 0, i32 6, i64 1, i64 %indvars.iv214.i.i, !dbg !971
  store i64 %conv44.i.i, i64* %arrayidx48.i.i, align 8, !dbg !971, !tbaa !973
  %frame_poc51.i.i = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 4, !dbg !977
  %139 = load i32* %frame_poc51.i.i, align 4, !dbg !977, !tbaa !769
  %mul52.i.i = shl nsw i32 %139, 1, !dbg !977
  %conv53.i.i = sext i32 %mul52.i.i to i64, !dbg !977
  %arrayidx57.i.i = getelementptr inbounds %struct.storable_picture* %.pre220.i.i, i64 0, i32 7, i64 1, i64 %indvars.iv214.i.i, !dbg !977
  store i64 %conv53.i.i, i64* %arrayidx57.i.i, align 8, !dbg !977, !tbaa !973
  %top_poc60.i.i = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 2, !dbg !978
  %140 = load i32* %top_poc60.i.i, align 4, !dbg !978, !tbaa !769
  %mul61.i.i = shl nsw i32 %140, 1, !dbg !978
  %conv62.i.i = sext i32 %mul61.i.i to i64, !dbg !978
  %arrayidx66.i.i = getelementptr inbounds %struct.storable_picture* %.pre220.i.i, i64 0, i32 8, i64 1, i64 %indvars.iv214.i.i, !dbg !978
  store i64 %conv62.i.i, i64* %arrayidx66.i.i, align 8, !dbg !978, !tbaa !973
  %bottom_poc69.i.i = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 3, !dbg !979
  %141 = load i32* %bottom_poc69.i.i, align 4, !dbg !979, !tbaa !769
  %mul70.i.i = shl nsw i32 %141, 1, !dbg !979
  %add71203.i.i = or i32 %mul70.i.i, 1, !dbg !979
  %conv72.i.i = sext i32 %add71203.i.i to i64, !dbg !979
  %arrayidx76.i.i = getelementptr inbounds %struct.storable_picture* %.pre220.i.i, i64 0, i32 9, i64 1, i64 %indvars.iv214.i.i, !dbg !979
  store i64 %conv72.i.i, i64* %arrayidx76.i.i, align 8, !dbg !979, !tbaa !973
  %indvars.iv.next215.i.i = add i64 %indvars.iv214.i.i, 1, !dbg !969
  %lftr.wideiv168 = trunc i64 %indvars.iv.next215.i.i to i32, !dbg !969
  %exitcond169 = icmp eq i32 %lftr.wideiv168, %129, !dbg !969
  br i1 %exitcond169, label %for.end79.i.i, label %for.body32.i.i, !dbg !969

for.end79.i.i:                                    ; preds = %for.body32.i.i, %for.cond29.preheader.i.i
  %142 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !980, !tbaa !765
  %frame_mbs_only_flag.i.i = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %142, i64 0, i32 25, !dbg !980
  %143 = load i32* %frame_mbs_only_flag.i.i, align 4, !dbg !980, !tbaa !766
  %tobool.i265.i = icmp eq i32 %143, 0, !dbg !980
  br i1 %tobool.i265.i, label %if.then.i266.i, label %set_ref_pic_num.exit.i, !dbg !980

if.then.i266.i:                                   ; preds = %for.end79.i.i
  %144 = load %struct.ImageParameters** @img, align 8, !dbg !981, !tbaa !765
  %structure80.i.i = getelementptr inbounds %struct.ImageParameters* %144, i64 0, i32 7, !dbg !981
  %145 = load i32* %structure80.i.i, align 4, !dbg !981, !tbaa !769
  %cmp81.i.i = icmp eq i32 %145, 0, !dbg !981
  br i1 %cmp81.i.i, label %for.cond88.preheader.i.i, label %set_ref_pic_num.exit.i, !dbg !981

for.cond88.preheader.i.i:                         ; preds = %if.then.i266.i, %for.inc155.i.i
  %indvars.iv212.i.i = phi i64 [ %indvars.iv.next213.i.i, %for.inc155.i.i ], [ 2, %if.then.i266.i ]
  %arrayidx90.i.i = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv212.i.i, !dbg !983
  %146 = load i32* %arrayidx90.i.i, align 4, !dbg !983, !tbaa !769
  %cmp91205.i.i = icmp sgt i32 %146, 0, !dbg !983
  br i1 %cmp91205.i.i, label %for.body93.lr.ph.i.i, label %for.inc155.i.i, !dbg !983

for.body93.lr.ph.i.i:                             ; preds = %for.cond88.preheader.i.i
  %arrayidx96.i.i = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv212.i.i, !dbg !986
  %.pre.i267.i = load %struct.storable_picture*** %arrayidx96.i.i, align 8, !dbg !986, !tbaa !765
  %.pre218.i.i = load %struct.storable_picture** @enc_picture, align 8, !dbg !986, !tbaa !765
  br label %for.body93.i.i, !dbg !983

for.body93.i.i:                                   ; preds = %for.body93.i.i, %for.body93.lr.ph.i.i
  %indvars.iv.i268.i = phi i64 [ 0, %for.body93.lr.ph.i.i ], [ %indvars.iv.next.i269.i, %for.body93.i.i ]
  %arrayidx97.i.i = getelementptr inbounds %struct.storable_picture** %.pre.i267.i, i64 %indvars.iv.i268.i, !dbg !986
  %147 = load %struct.storable_picture** %arrayidx97.i.i, align 8, !dbg !986, !tbaa !765
  %poc98.i.i = getelementptr inbounds %struct.storable_picture* %147, i64 0, i32 1, !dbg !986
  %148 = load i32* %poc98.i.i, align 4, !dbg !986, !tbaa !769
  %mul99.i.i = shl nsw i32 %148, 1, !dbg !986
  %structure104.i.i = getelementptr inbounds %struct.storable_picture* %147, i64 0, i32 0, !dbg !986
  %149 = load i32* %structure104.i.i, align 4, !dbg !986, !tbaa !766
  %cmp105.i.i = icmp eq i32 %149, 2, !dbg !986
  %cond107.i.i = zext i1 %cmp105.i.i to i32, !dbg !986
  %add108.i.i = or i32 %cond107.i.i, %mul99.i.i, !dbg !986
  %conv109.i.i = sext i32 %add108.i.i to i64, !dbg !986
  %arrayidx114.i.i = getelementptr inbounds %struct.storable_picture* %.pre218.i.i, i64 0, i32 6, i64 %indvars.iv212.i.i, i64 %indvars.iv.i268.i, !dbg !986
  store i64 %conv109.i.i, i64* %arrayidx114.i.i, align 8, !dbg !986, !tbaa !973
  %frame_poc119.i.i = getelementptr inbounds %struct.storable_picture* %147, i64 0, i32 4, !dbg !988
  %150 = load i32* %frame_poc119.i.i, align 4, !dbg !988, !tbaa !769
  %mul120.i.i = shl nsw i32 %150, 1, !dbg !988
  %conv121.i.i = sext i32 %mul120.i.i to i64, !dbg !988
  %arrayidx126.i.i = getelementptr inbounds %struct.storable_picture* %.pre218.i.i, i64 0, i32 7, i64 %indvars.iv212.i.i, i64 %indvars.iv.i268.i, !dbg !988
  store i64 %conv121.i.i, i64* %arrayidx126.i.i, align 8, !dbg !988, !tbaa !973
  %top_poc131.i.i = getelementptr inbounds %struct.storable_picture* %147, i64 0, i32 2, !dbg !989
  %151 = load i32* %top_poc131.i.i, align 4, !dbg !989, !tbaa !769
  %mul132.i.i = shl nsw i32 %151, 1, !dbg !989
  %conv133.i.i = sext i32 %mul132.i.i to i64, !dbg !989
  %arrayidx138.i.i = getelementptr inbounds %struct.storable_picture* %.pre218.i.i, i64 0, i32 8, i64 %indvars.iv212.i.i, i64 %indvars.iv.i268.i, !dbg !989
  store i64 %conv133.i.i, i64* %arrayidx138.i.i, align 8, !dbg !989, !tbaa !973
  %bottom_poc143.i.i = getelementptr inbounds %struct.storable_picture* %147, i64 0, i32 3, !dbg !990
  %152 = load i32* %bottom_poc143.i.i, align 4, !dbg !990, !tbaa !769
  %mul144.i.i = shl nsw i32 %152, 1, !dbg !990
  %add145202.i.i = or i32 %mul144.i.i, 1, !dbg !990
  %conv146.i.i = sext i32 %add145202.i.i to i64, !dbg !990
  %arrayidx151.i.i = getelementptr inbounds %struct.storable_picture* %.pre218.i.i, i64 0, i32 9, i64 %indvars.iv212.i.i, i64 %indvars.iv.i268.i, !dbg !990
  store i64 %conv146.i.i, i64* %arrayidx151.i.i, align 8, !dbg !990, !tbaa !973
  %indvars.iv.next.i269.i = add i64 %indvars.iv.i268.i, 1, !dbg !983
  %lftr.wideiv = trunc i64 %indvars.iv.next.i269.i to i32, !dbg !983
  %exitcond = icmp eq i32 %lftr.wideiv, %146, !dbg !983
  br i1 %exitcond, label %for.inc155.i.i, label %for.body93.i.i, !dbg !983

for.inc155.i.i:                                   ; preds = %for.body93.i.i, %for.cond88.preheader.i.i
  %indvars.iv.next213.i.i = add i64 %indvars.iv212.i.i, 1, !dbg !991
  %lftr.wideiv166 = trunc i64 %indvars.iv.next213.i.i to i32, !dbg !991
  %exitcond167 = icmp eq i32 %lftr.wideiv166, 6, !dbg !991
  br i1 %exitcond167, label %set_ref_pic_num.exit.i, label %for.cond88.preheader.i.i, !dbg !991

set_ref_pic_num.exit.i:                           ; preds = %for.inc155.i.i, %if.then.i266.i, %for.end79.i.i
  %153 = load %struct.ImageParameters** @img, align 8, !dbg !992, !tbaa !765
  %type207.i = getelementptr inbounds %struct.ImageParameters* %153, i64 0, i32 6, !dbg !992
  %154 = load i32* %type207.i, align 4, !dbg !992, !tbaa !769
  %cmp208.i = icmp eq i32 %154, 1, !dbg !992
  br i1 %cmp208.i, label %if.then209.i, label %init_slice.exit, !dbg !992

if.then209.i:                                     ; preds = %set_ref_pic_num.exit.i
  %155 = load %struct.colocated_params** @Co_located, align 8, !dbg !993, !tbaa !765
  call void @compute_colocated(%struct.colocated_params* %155, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0)) #6, !dbg !993
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !994, !tbaa !765
  br label %init_slice.exit, !dbg !993

init_slice.exit:                                  ; preds = %set_ref_pic_num.exit.i, %if.then209.i
  %156 = phi %struct.ImageParameters* [ %.pre, %if.then209.i ], [ %153, %set_ref_pic_num.exit.i ]
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %156, i64 0, i32 50, !dbg !994
  %157 = load %struct.Slice** %currentSlice, align 8, !dbg !994, !tbaa !765
  %partArr = getelementptr inbounds %struct.Slice* %157, i64 0, i32 6, !dbg !994
  %158 = load %struct.datapartition** %partArr, align 8, !dbg !994, !tbaa !765
  %bitstream = getelementptr inbounds %struct.datapartition* %158, i64 0, i32 0, !dbg !994
  %159 = load %struct.Bitstream** %bitstream, align 8, !dbg !994, !tbaa !765
  %byte_pos = getelementptr inbounds %struct.Bitstream* %159, i64 0, i32 0, !dbg !994
  %160 = load i32* %byte_pos, align 4, !dbg !994, !tbaa !769
  store i32 %160, i32* @Bytes_After_Header, align 4, !dbg !994, !tbaa !769
  %161 = load %struct.InputParameters** @input, align 8, !dbg !995, !tbaa !765
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %161, i64 0, i32 59, !dbg !995
  %162 = load i32* %symbol_mode, align 4, !dbg !995, !tbaa !769
  %cmp = icmp eq i32 %162, 1, !dbg !995
  br i1 %cmp, label %if.then, label %if.end, !dbg !995

if.then:                                          ; preds = %init_slice.exit
  call void (...)* @SetCtxModelNumber() #6, !dbg !996
  br label %if.end, !dbg !998

if.end:                                           ; preds = %if.then, %init_slice.exit
  %call1 = call i32 @start_slice() #8, !dbg !999
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !263), !dbg !999
  %163 = load %struct.ImageParameters** @img, align 8, !dbg !1000, !tbaa !765
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 119, !dbg !1000
  %164 = load i32* %NumberofHeaderBits, align 4, !dbg !1000, !tbaa !769
  %add = add nsw i32 %164, %call1, !dbg !1000
  store i32 %add, i32* %NumberofHeaderBits, align 4, !dbg !1000, !tbaa !769
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 139, !dbg !1001
  %165 = load i32* %BasicUnit, align 4, !dbg !1001, !tbaa !769
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 136, !dbg !1001
  %166 = load i32* %Frame_Total_Number_MB, align 4, !dbg !1001, !tbaa !769
  %cmp2 = icmp slt i32 %165, %166, !dbg !1001
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !1001

if.then3:                                         ; preds = %if.end
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 121, !dbg !1002
  %167 = load i32* %NumberofBasicUnitHeaderBits, align 4, !dbg !1002, !tbaa !769
  %add4 = add nsw i32 %167, %call1, !dbg !1002
  store i32 %add4, i32* %NumberofBasicUnitHeaderBits, align 4, !dbg !1002, !tbaa !769
  br label %if.end5, !dbg !1002

if.end5:                                          ; preds = %if.then3, %if.end
  %168 = load %struct.StatParameters** @stats, align 8, !dbg !1003, !tbaa !765
  %bit_slice = getelementptr inbounds %struct.StatParameters* %168, i64 0, i32 6, !dbg !1003
  %169 = load i32* %bit_slice, align 4, !dbg !1003, !tbaa !769
  %add6 = add nsw i32 %169, %call1, !dbg !1003
  store i32 %add6, i32* %bit_slice, align 4, !dbg !1003, !tbaa !769
  %type = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 6, !dbg !1004
  %170 = load i32* %type, align 4, !dbg !1004, !tbaa !769
  %idxprom = sext i32 %170 to i64, !dbg !1004
  %arrayidx7 = getelementptr inbounds %struct.StatParameters* %168, i64 0, i32 24, i64 %idxprom, !dbg !1004
  %171 = load i32* %arrayidx7, align 4, !dbg !1004, !tbaa !769
  %add8 = add nsw i32 %171, %call1, !dbg !1004
  store i32 %add8, i32* %arrayidx7, align 4, !dbg !1004, !tbaa !769
  call void @llvm.dbg.value(metadata !{i32* %end_of_slice}, i64 0, metadata !261), !dbg !1005
  %.pr147 = load i32* %end_of_slice, align 4, !dbg !1005, !tbaa !766
  %phitmp148 = icmp eq i32 %.pr147, 0
  call void @llvm.dbg.value(metadata !{i32* %end_of_slice}, i64 0, metadata !261), !dbg !1005
  br i1 %phitmp148, label %while.body, label %while.end, !dbg !1005

while.body:                                       ; preds = %while.condthread-pre-split.backedge, %if.end5
  %FieldRDCost.0145 = phi double [ %FieldRDCost.0.ph.be, %while.condthread-pre-split.backedge ], [ undef, %if.end5 ]
  %FrameRDCost.0144 = phi double [ %FrameRDCost.0.ph.be, %while.condthread-pre-split.backedge ], [ undef, %if.end5 ]
  %CurrentMbAddr.0143 = phi i32 [ %CurrentMbAddr.0.ph.be, %while.condthread-pre-split.backedge ], [ %call, %if.end5 ]
  %NumberOfCodedMBs.0142 = phi i32 [ %NumberOfCodedMBs.0.ph.be, %while.condthread-pre-split.backedge ], [ 0, %if.end5 ]
  %172 = load %struct.ImageParameters** @img, align 8, !dbg !1006, !tbaa !765
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 90, !dbg !1006
  %173 = load i32* %MbaffFrameFlag, align 4, !dbg !1006, !tbaa !769
  %tobool = icmp eq i32 %173, 0, !dbg !1006
  br i1 %tobool, label %if.then10, label %if.else25, !dbg !1006

if.then10:                                        ; preds = %while.body
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !262), !dbg !1008
  store i32 0, i32* %recode_macroblock, align 4, !dbg !1008, !tbaa !766
  store %struct.RD_DATA* @rddata_top_frame_mb, %struct.RD_DATA** @rdopt, align 8, !dbg !1010, !tbaa !765
  call void @start_macroblock(i32 %CurrentMbAddr.0143, i32 0) #6, !dbg !1011
  call void @encode_one_macroblock() #6, !dbg !1012
  call void @write_one_macroblock(i32 1) #6, !dbg !1013
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock) #6, !dbg !1014
  call void @llvm.dbg.value(metadata !{i32* %recode_macroblock}, i64 0, metadata !262), !dbg !1015
  %174 = load i32* %recode_macroblock, align 4, !dbg !1015, !tbaa !766
  %cmp11 = icmp eq i32 %174, 0, !dbg !1015
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !1015

if.then12:                                        ; preds = %if.then10
  %call13 = call i32 @FmoGetNextMBNr(i32 %CurrentMbAddr.0143) #6, !dbg !1016
  call void @llvm.dbg.value(metadata !{i32 %call13}, i64 0, metadata !265), !dbg !1016
  %cmp14 = icmp eq i32 %call13, -1, !dbg !1018
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1018

if.then15:                                        ; preds = %if.then12
  call void @llvm.dbg.value(metadata !1019, i64 0, metadata !261), !dbg !1020
  store i32 1, i32* %end_of_slice, align 4, !dbg !1020, !tbaa !766
  br label %if.end16, !dbg !1022

if.end16:                                         ; preds = %if.then15, %if.then12
  %inc = add nsw i32 %NumberOfCodedMBs.0142, 1, !dbg !1023
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !264), !dbg !1023
  call void (i32, ...)* bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %call13) #6, !dbg !1024
  br label %while.condthread-pre-split.backedge, !dbg !1025

if.else:                                          ; preds = %if.then10
  %175 = load %struct.ImageParameters** @img, align 8, !dbg !1026, !tbaa !765
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %175, i64 0, i32 3, !dbg !1026
  %176 = load i32* %current_mb_nr, align 4, !dbg !1026, !tbaa !769
  %call17 = call i32 @FmoGetPreviousMBNr(i32 %176) #6, !dbg !1026
  %177 = load %struct.ImageParameters** @img, align 8, !dbg !1026, !tbaa !765
  %current_mb_nr18 = getelementptr inbounds %struct.ImageParameters* %177, i64 0, i32 3, !dbg !1026
  store i32 %call17, i32* %current_mb_nr18, align 4, !dbg !1026, !tbaa !769
  %cmp20 = icmp eq i32 %call17, -1, !dbg !1028
  br i1 %cmp20, label %if.then21, label %while.condthread-pre-split.backedge, !dbg !1028

while.condthread-pre-split.backedge:              ; preds = %if.end98, %if.else, %if.then21, %if.end16
  %NumberOfCodedMBs.0.ph.be = phi i32 [ %NumberOfCodedMBs.0142, %if.else ], [ %NumberOfCodedMBs.0142, %if.then21 ], [ %inc, %if.end16 ], [ %inc87, %if.end98 ]
  %CurrentMbAddr.0.ph.be = phi i32 [ %CurrentMbAddr.0143, %if.else ], [ %CurrentMbAddr.0143, %if.then21 ], [ %call13, %if.end16 ], [ %call102, %if.end98 ]
  %FrameRDCost.0.ph.be = phi double [ %FrameRDCost.0144, %if.else ], [ %FrameRDCost.0144, %if.then21 ], [ %FrameRDCost.0144, %if.end16 ], [ %FrameRDCost.1, %if.end98 ]
  %FieldRDCost.0.ph.be = phi double [ %FieldRDCost.0145, %if.else ], [ %FieldRDCost.0145, %if.then21 ], [ %FieldRDCost.0145, %if.end16 ], [ %FieldRDCost.1, %if.end98 ]
  call void @llvm.dbg.value(metadata !{i32* %end_of_slice}, i64 0, metadata !261), !dbg !1005
  %.pr = load i32* %end_of_slice, align 4, !dbg !1005, !tbaa !766
  %phitmp = icmp eq i32 %.pr, 0
  call void @llvm.dbg.value(metadata !{i32* %end_of_slice}, i64 0, metadata !261), !dbg !1005
  br i1 %phitmp, label %while.body, label %while.end, !dbg !1005

if.then21:                                        ; preds = %if.else
  %call22 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1029
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #6, !dbg !1031
  br label %while.condthread-pre-split.backedge, !dbg !1032

if.else25:                                        ; preds = %while.body
  %178 = load %struct.InputParameters** @input, align 8, !dbg !1033, !tbaa !765
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %178, i64 0, i32 92, !dbg !1033
  %179 = load i32* %MbInterlace, align 4, !dbg !1033, !tbaa !769
  %cmp26 = icmp eq i32 %179, 2, !dbg !1033
  br i1 %cmp26, label %if.then27, label %if.end33, !dbg !1033

if.then27:                                        ; preds = %if.else25
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !262), !dbg !1035
  store i32 0, i32* %recode_macroblock, align 4, !dbg !1035, !tbaa !766
  %field_mode = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 81, !dbg !1037
  store i32 0, i32* %field_mode, align 4, !dbg !1037, !tbaa !769
  %top_field = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 82, !dbg !1038
  store i32 0, i32* %top_field, align 4, !dbg !1038, !tbaa !769
  %write_macroblock = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 140, !dbg !1039
  store i32 0, i32* %write_macroblock, align 4, !dbg !1039, !tbaa !769
  %bot_MB = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 141, !dbg !1040
  store i32 0, i32* %bot_MB, align 4, !dbg !1040, !tbaa !769
  call void @start_macroblock(i32 %CurrentMbAddr.0143, i32 0) #6, !dbg !1041
  store %struct.RD_DATA* @rddata_top_frame_mb, %struct.RD_DATA** @rdopt, align 8, !dbg !1042, !tbaa !765
  call void @encode_one_macroblock() #6, !dbg !1043
  %180 = load %struct.RD_DATA** @rdopt, align 8, !dbg !1044, !tbaa !765
  %min_rdcost = getelementptr inbounds %struct.RD_DATA* %180, i64 0, i32 0, !dbg !1044
  %181 = load double* %min_rdcost, align 8, !dbg !1044, !tbaa !1045
  call void @llvm.dbg.value(metadata !{double %181}, i64 0, metadata !266), !dbg !1044
  %182 = load %struct.ImageParameters** @img, align 8, !dbg !1046, !tbaa !765
  %bot_MB28 = getelementptr inbounds %struct.ImageParameters* %182, i64 0, i32 141, !dbg !1046
  store i32 1, i32* %bot_MB28, align 4, !dbg !1046, !tbaa !769
  %field_mode29 = getelementptr inbounds %struct.ImageParameters* %182, i64 0, i32 81, !dbg !1047
  store i32 0, i32* %field_mode29, align 4, !dbg !1047, !tbaa !769
  %add30 = add nsw i32 %CurrentMbAddr.0143, 1, !dbg !1048
  call void @start_macroblock(i32 %add30, i32 0) #6, !dbg !1048
  store %struct.RD_DATA* @rddata_bot_frame_mb, %struct.RD_DATA** @rdopt, align 8, !dbg !1049, !tbaa !765
  call void @encode_one_macroblock() #6, !dbg !1050
  %183 = load %struct.RD_DATA** @rdopt, align 8, !dbg !1051, !tbaa !765
  %min_rdcost31 = getelementptr inbounds %struct.RD_DATA* %183, i64 0, i32 0, !dbg !1051
  %184 = load double* %min_rdcost31, align 8, !dbg !1051, !tbaa !1045
  %add32 = fadd double %181, %184, !dbg !1051
  call void @llvm.dbg.value(metadata !{double %add32}, i64 0, metadata !266), !dbg !1051
  %.pre172 = load %struct.InputParameters** @input, align 8, !dbg !1052, !tbaa !765
  %MbInterlace34.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre172, i64 0, i32 92
  %.pre173 = load i32* %MbInterlace34.phi.trans.insert, align 4, !dbg !1052, !tbaa !769
  br label %if.end33, !dbg !1053

if.end33:                                         ; preds = %if.then27, %if.else25
  %185 = phi i32 [ %.pre173, %if.then27 ], [ %179, %if.else25 ]
  %186 = phi %struct.InputParameters* [ %.pre172, %if.then27 ], [ %178, %if.else25 ]
  %FrameRDCost.1 = phi double [ %add32, %if.then27 ], [ %FrameRDCost.0144, %if.else25 ]
  %.off = add i32 %185, -1, !dbg !1052
  %switch = icmp ult i32 %.off, 2, !dbg !1052
  br i1 %switch, label %if.then38, label %if.end52, !dbg !1052

if.then38:                                        ; preds = %if.end33
  %187 = load %struct.ImageParameters** @img, align 8, !dbg !1054, !tbaa !765
  %bot_MB39 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 141, !dbg !1054
  store i32 0, i32* %bot_MB39, align 4, !dbg !1054, !tbaa !769
  %field_mode40 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 81, !dbg !1056
  store i32 1, i32* %field_mode40, align 4, !dbg !1056, !tbaa !769
  %top_field41 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 82, !dbg !1057
  store i32 1, i32* %top_field41, align 4, !dbg !1057, !tbaa !769
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 84, !dbg !1058
  %188 = load i32* %buf_cycle, align 4, !dbg !1058, !tbaa !769
  %shl = shl i32 %188, 1, !dbg !1058
  store i32 %shl, i32* %buf_cycle, align 4, !dbg !1058, !tbaa !769
  %num_ref_frames = getelementptr inbounds %struct.InputParameters* %186, i64 0, i32 9, !dbg !1059
  %189 = load i32* %num_ref_frames, align 4, !dbg !1059, !tbaa !769
  %shl42 = shl i32 %189, 1, !dbg !1059
  store i32 %shl42, i32* %num_ref_frames, align 4, !dbg !1059, !tbaa !769
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 79, !dbg !1060
  %190 = load i32* %num_ref_idx_l0_active, align 4, !dbg !1060, !tbaa !769
  %shl43 = shl i32 %190, 1, !dbg !1060
  %add45178 = or i32 %shl43, 1, !dbg !1061
  store i32 %add45178, i32* %num_ref_idx_l0_active, align 4, !dbg !1061, !tbaa !769
  call void @start_macroblock(i32 %CurrentMbAddr.0143, i32 1) #6, !dbg !1062
  store %struct.RD_DATA* @rddata_top_field_mb, %struct.RD_DATA** @rdopt, align 8, !dbg !1063, !tbaa !765
  call void @encode_one_macroblock() #6, !dbg !1064
  %191 = load %struct.RD_DATA** @rdopt, align 8, !dbg !1065, !tbaa !765
  %min_rdcost46 = getelementptr inbounds %struct.RD_DATA* %191, i64 0, i32 0, !dbg !1065
  %192 = load double* %min_rdcost46, align 8, !dbg !1065, !tbaa !1045
  call void @llvm.dbg.value(metadata !{double %192}, i64 0, metadata !268), !dbg !1065
  %193 = load %struct.ImageParameters** @img, align 8, !dbg !1066, !tbaa !765
  %bot_MB47 = getelementptr inbounds %struct.ImageParameters* %193, i64 0, i32 141, !dbg !1066
  store i32 1, i32* %bot_MB47, align 4, !dbg !1066, !tbaa !769
  %top_field48 = getelementptr inbounds %struct.ImageParameters* %193, i64 0, i32 82, !dbg !1067
  store i32 0, i32* %top_field48, align 4, !dbg !1067, !tbaa !769
  %add49 = add nsw i32 %CurrentMbAddr.0143, 1, !dbg !1068
  call void @start_macroblock(i32 %add49, i32 1) #6, !dbg !1068
  store %struct.RD_DATA* @rddata_bot_field_mb, %struct.RD_DATA** @rdopt, align 8, !dbg !1069, !tbaa !765
  call void @encode_one_macroblock() #6, !dbg !1070
  %194 = load %struct.RD_DATA** @rdopt, align 8, !dbg !1071, !tbaa !765
  %min_rdcost50 = getelementptr inbounds %struct.RD_DATA* %194, i64 0, i32 0, !dbg !1071
  %195 = load double* %min_rdcost50, align 8, !dbg !1071, !tbaa !1045
  %add51 = fadd double %192, %195, !dbg !1071
  call void @llvm.dbg.value(metadata !{double %add51}, i64 0, metadata !268), !dbg !1071
  %.pre174 = load %struct.InputParameters** @input, align 8, !dbg !1072, !tbaa !765
  br label %if.end52, !dbg !1073

if.end52:                                         ; preds = %if.end33, %if.then38
  %196 = phi %struct.InputParameters* [ %.pre174, %if.then38 ], [ %186, %if.end33 ]
  %FieldRDCost.1 = phi double [ %add51, %if.then38 ], [ %FieldRDCost.0145, %if.end33 ]
  %197 = load %struct.ImageParameters** @img, align 8, !dbg !1074, !tbaa !765
  %write_macroblock_frame = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 142, !dbg !1074
  store i32 0, i32* %write_macroblock_frame, align 4, !dbg !1074, !tbaa !769
  %MbInterlace53 = getelementptr inbounds %struct.InputParameters* %196, i64 0, i32 92, !dbg !1072
  %198 = load i32* %MbInterlace53, align 4, !dbg !1072, !tbaa !769
  %cmp54 = icmp eq i32 %198, 2, !dbg !1072
  %cmp55 = fcmp olt double %FrameRDCost.1, %FieldRDCost.1, !dbg !1072
  %or.cond = and i1 %cmp54, %cmp55, !dbg !1072
  %field_mode57 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 81, !dbg !1075
  br i1 %or.cond, label %if.then56, label %if.else65, !dbg !1072

if.then56:                                        ; preds = %if.end52
  store i32 0, i32* %field_mode57, align 4, !dbg !1075, !tbaa !769
  %buf_cycle58 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 84, !dbg !1077
  %199 = load i32* %buf_cycle58, align 4, !dbg !1077, !tbaa !769
  %shr = ashr i32 %199, 1, !dbg !1077
  store i32 %shr, i32* %buf_cycle58, align 4, !dbg !1077, !tbaa !769
  %num_ref_frames59 = getelementptr inbounds %struct.InputParameters* %196, i64 0, i32 9, !dbg !1078
  %200 = load i32* %num_ref_frames59, align 4, !dbg !1078, !tbaa !769
  %shr60 = ashr i32 %200, 1, !dbg !1078
  store i32 %shr60, i32* %num_ref_frames59, align 4, !dbg !1078, !tbaa !769
  store i32 0, i32* @MBPairIsField, align 4, !dbg !1079, !tbaa !769
  %num_ref_idx_l0_active61 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 79, !dbg !1080
  %201 = load i32* %num_ref_idx_l0_active61, align 4, !dbg !1080, !tbaa !769
  %sub = add nsw i32 %201, -1, !dbg !1080
  %shr63 = ashr i32 %sub, 1, !dbg !1081
  store i32 %shr63, i32* %num_ref_idx_l0_active61, align 4, !dbg !1081, !tbaa !769
  store i32 1, i32* %write_macroblock_frame, align 4, !dbg !1082, !tbaa !769
  br label %if.end67, !dbg !1083

if.else65:                                        ; preds = %if.end52
  store i32 1, i32* %field_mode57, align 4, !dbg !1084, !tbaa !769
  store i32 1, i32* @MBPairIsField, align 4, !dbg !1086, !tbaa !769
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %if.then56
  %write_macroblock68 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 140, !dbg !1087
  store i32 1, i32* %write_macroblock68, align 4, !dbg !1087, !tbaa !769
  %202 = load i32* @MBPairIsField, align 4, !dbg !1088, !tbaa !769
  %top_field71 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 82, !dbg !1089
  %not.tobool69 = icmp ne i32 %202, 0
  %. = zext i1 %not.tobool69 to i32
  store i32 %., i32* %top_field71, align 4, !dbg !1089, !tbaa !769
  %bot_MB75 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 141, !dbg !1090
  store i32 0, i32* %bot_MB75, align 4, !dbg !1090, !tbaa !769
  %203 = load i32* %field_mode57, align 4, !dbg !1091, !tbaa !769
  call void @start_macroblock(i32 %CurrentMbAddr.0143, i32 %203) #6, !dbg !1091
  %204 = load %struct.ImageParameters** @img, align 8, !dbg !1092, !tbaa !765
  %field_mode77 = getelementptr inbounds %struct.ImageParameters* %204, i64 0, i32 81, !dbg !1092
  %205 = load i32* %field_mode77, align 4, !dbg !1092, !tbaa !769
  %tobool78 = icmp ne i32 %205, 0, !dbg !1092
  %cond = select i1 %tobool78, %struct.RD_DATA* @rddata_top_field_mb, %struct.RD_DATA* @rddata_top_frame_mb, !dbg !1092
  store %struct.RD_DATA* %cond, %struct.RD_DATA** @rdopt, align 8, !dbg !1092, !tbaa !765
  call void @copy_rdopt_data(i32 0) #6, !dbg !1093
  call void @write_one_macroblock(i32 1) #6, !dbg !1094
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock) #6, !dbg !1095
  call void (i32, ...)* bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %CurrentMbAddr.0143) #6, !dbg !1096
  %206 = load %struct.ImageParameters** @img, align 8, !dbg !1097, !tbaa !765
  %bot_MB80 = getelementptr inbounds %struct.ImageParameters* %206, i64 0, i32 141, !dbg !1097
  store i32 1, i32* %bot_MB80, align 4, !dbg !1097, !tbaa !769
  %top_field81 = getelementptr inbounds %struct.ImageParameters* %206, i64 0, i32 82, !dbg !1098
  store i32 0, i32* %top_field81, align 4, !dbg !1098, !tbaa !769
  %add82 = add nsw i32 %CurrentMbAddr.0143, 1, !dbg !1099
  %field_mode83 = getelementptr inbounds %struct.ImageParameters* %206, i64 0, i32 81, !dbg !1099
  %207 = load i32* %field_mode83, align 4, !dbg !1099, !tbaa !769
  call void @start_macroblock(i32 %add82, i32 %207) #6, !dbg !1099
  %208 = load %struct.ImageParameters** @img, align 8, !dbg !1100, !tbaa !765
  %field_mode84 = getelementptr inbounds %struct.ImageParameters* %208, i64 0, i32 81, !dbg !1100
  %209 = load i32* %field_mode84, align 4, !dbg !1100, !tbaa !769
  %tobool85 = icmp ne i32 %209, 0, !dbg !1100
  %cond86 = select i1 %tobool85, %struct.RD_DATA* @rddata_bot_field_mb, %struct.RD_DATA* @rddata_bot_frame_mb, !dbg !1100
  store %struct.RD_DATA* %cond86, %struct.RD_DATA** @rdopt, align 8, !dbg !1100, !tbaa !765
  call void @copy_rdopt_data(i32 1) #6, !dbg !1101
  call void @write_one_macroblock(i32 0) #6, !dbg !1102
  %inc87 = add nsw i32 %NumberOfCodedMBs.0142, 2, !dbg !1103
  call void @llvm.dbg.value(metadata !{i32 %inc87}, i64 0, metadata !264), !dbg !1103
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock) #6, !dbg !1104
  call void (i32, ...)* bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %CurrentMbAddr.0143) #6, !dbg !1105
  %210 = load i32* @MBPairIsField, align 4, !dbg !1106, !tbaa !769
  %tobool88 = icmp eq i32 %210, 0, !dbg !1106
  %.pre176 = load %struct.ImageParameters** @img, align 8, !dbg !1107, !tbaa !765
  br i1 %tobool88, label %if.end98, label %if.then89, !dbg !1106

if.then89:                                        ; preds = %if.end67
  %buf_cycle90 = getelementptr inbounds %struct.ImageParameters* %.pre176, i64 0, i32 84, !dbg !1108
  %211 = load i32* %buf_cycle90, align 4, !dbg !1108, !tbaa !769
  %shr91 = ashr i32 %211, 1, !dbg !1108
  store i32 %shr91, i32* %buf_cycle90, align 4, !dbg !1108, !tbaa !769
  %212 = load %struct.InputParameters** @input, align 8, !dbg !1110, !tbaa !765
  %num_ref_frames92 = getelementptr inbounds %struct.InputParameters* %212, i64 0, i32 9, !dbg !1110
  %213 = load i32* %num_ref_frames92, align 4, !dbg !1110, !tbaa !769
  %shr93 = ashr i32 %213, 1, !dbg !1110
  store i32 %shr93, i32* %num_ref_frames92, align 4, !dbg !1110, !tbaa !769
  %num_ref_idx_l0_active94 = getelementptr inbounds %struct.ImageParameters* %.pre176, i64 0, i32 79, !dbg !1111
  %214 = load i32* %num_ref_idx_l0_active94, align 4, !dbg !1111, !tbaa !769
  %sub95 = add nsw i32 %214, -1, !dbg !1111
  %shr97 = ashr i32 %sub95, 1, !dbg !1112
  store i32 %shr97, i32* %num_ref_idx_l0_active94, align 4, !dbg !1112, !tbaa !769
  br label %if.end98, !dbg !1113

if.end98:                                         ; preds = %if.end67, %if.then89
  %top_field99 = getelementptr inbounds %struct.ImageParameters* %.pre176, i64 0, i32 82, !dbg !1107
  store i32 0, i32* %top_field99, align 4, !dbg !1107, !tbaa !769
  %field_mode100 = getelementptr inbounds %struct.ImageParameters* %.pre176, i64 0, i32 81, !dbg !1107
  store i32 0, i32* %field_mode100, align 4, !dbg !1107, !tbaa !769
  %call101 = call i32 @FmoGetNextMBNr(i32 %CurrentMbAddr.0143) #6, !dbg !1114
  call void @llvm.dbg.value(metadata !{i32 %call101}, i64 0, metadata !265), !dbg !1114
  %call102 = call i32 @FmoGetNextMBNr(i32 %call101) #6, !dbg !1115
  call void @llvm.dbg.value(metadata !{i32 %call102}, i64 0, metadata !265), !dbg !1115
  %call103 = call i32 @FmoMB2SliceGroup(i32 %call102) #6, !dbg !1116
  %call104 = call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call103) #6, !dbg !1116
  %cmp105 = icmp eq i32 %call102, %call104, !dbg !1116
  br i1 %cmp105, label %while.cond.while.end_crit_edge, label %while.condthread-pre-split.backedge, !dbg !1116

while.cond.while.end_crit_edge:                   ; preds = %if.end98
  call void @llvm.dbg.value(metadata !1019, i64 0, metadata !261), !dbg !1117
  store i32 1, i32* %end_of_slice, align 4, !dbg !1117, !tbaa !766
  call void @llvm.dbg.value(metadata !{i32* %end_of_slice}, i64 0, metadata !261), !dbg !1005
  br label %while.end, !dbg !1005

while.end:                                        ; preds = %if.end5, %while.condthread-pre-split.backedge, %while.cond.while.end_crit_edge
  %NumberOfCodedMBs.0.lcssa = phi i32 [ %inc87, %while.cond.while.end_crit_edge ], [ 0, %if.end5 ], [ %NumberOfCodedMBs.0.ph.be, %while.condthread-pre-split.backedge ]
  %call109 = call i32 @terminate_slice() #8, !dbg !1118
  ret i32 %NumberOfCodedMBs.0.lcssa, !dbg !1119
}

; Function Attrs: optsize
declare i32 @FmoGetFirstMacroblockInSlice(i32) #2

; Function Attrs: optsize
declare void @SetCtxModelNumber(...) #2

; Function Attrs: optsize
declare void @start_macroblock(i32, i32) #2

; Function Attrs: optsize
declare void @encode_one_macroblock() #2

; Function Attrs: optsize
declare void @write_one_macroblock(i32) #2

; Function Attrs: optsize
declare void @terminate_macroblock(i32*, i32*) #2

; Function Attrs: optsize
declare i32 @FmoGetNextMBNr(i32) #2

; Function Attrs: optsize
declare void @proceed2nextMacroblock(...) #2

; Function Attrs: optsize
declare i32 @FmoGetPreviousMBNr(i32) #2

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: optsize
declare void @copy_rdopt_data(i32) #2

; Function Attrs: optsize
declare i32 @FmoGetLastCodedMBOfSliceGroup(i32) #2

; Function Attrs: optsize
declare i32 @FmoMB2SliceGroup(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @free_slice_list(%struct.Picture* nocapture %currPic) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.Picture* %currPic}, i64 0, metadata !273), !dbg !1120
  tail call void @llvm.dbg.value(metadata !34, i64 0, metadata !274), !dbg !1121
  %no_slices = getelementptr inbounds %struct.Picture* %currPic, i64 0, i32 0, !dbg !1121
  %0 = load i32* %no_slices, align 4, !dbg !1121, !tbaa !769
  %cmp9 = icmp sgt i32 %0, 0, !dbg !1121
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1121

for.body:                                         ; preds = %entry, %free_slice.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %free_slice.exit ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.Picture* %currPic, i64 0, i32 2, i64 %indvars.iv, !dbg !1123
  %1 = load %struct.Slice** %arrayidx, align 8, !dbg !1123, !tbaa !765
  tail call void @llvm.dbg.value(metadata !{%struct.Slice* %1}, i64 0, metadata !1125) #4, !dbg !1126
  %cmp.i = icmp eq %struct.Slice* %1, null, !dbg !1127
  br i1 %cmp.i, label %free_slice.exit, label %for.cond.preheader.i, !dbg !1127

for.cond.preheader.i:                             ; preds = %for.body
  %max_part_nr.i = getelementptr inbounds %struct.Slice* %1, i64 0, i32 4, !dbg !1128
  %2 = load i32* %max_part_nr.i, align 4, !dbg !1128, !tbaa !769
  %cmp136.i = icmp sgt i32 %2, 0, !dbg !1128
  %partArr.i = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6, !dbg !1131
  br i1 %cmp136.i, label %for.body.i, label %for.end.i, !dbg !1128

for.body.i:                                       ; preds = %for.inc.i, %for.cond.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %3 = load %struct.datapartition** %partArr.i, align 8, !dbg !1131, !tbaa !765
  %arrayidx.i = getelementptr inbounds %struct.datapartition* %3, i64 %indvars.iv.i, !dbg !1131
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %arrayidx.i}, i64 0, metadata !1133) #4, !dbg !1131
  %cmp2.i = icmp eq %struct.datapartition* %arrayidx.i, null, !dbg !1134
  br i1 %cmp2.i, label %for.inc.i, label %if.then3.i, !dbg !1134

if.then3.i:                                       ; preds = %for.body.i
  %bitstream.i = getelementptr inbounds %struct.datapartition* %arrayidx.i, i64 0, i32 0, !dbg !1135
  %4 = load %struct.Bitstream** %bitstream.i, align 8, !dbg !1135, !tbaa !765
  %streamBuffer.i = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 9, !dbg !1135
  %5 = load i8** %streamBuffer.i, align 8, !dbg !1135, !tbaa !765
  %cmp4.i = icmp eq i8* %5, null, !dbg !1135
  br i1 %cmp4.i, label %if.end.i, label %if.then5.i, !dbg !1135

if.then5.i:                                       ; preds = %if.then3.i
  tail call void @free(i8* %5) #6, !dbg !1137
  %.pr.i = load %struct.Bitstream** %bitstream.i, align 8, !dbg !1138, !tbaa !765
  br label %if.end.i, !dbg !1137

if.end.i:                                         ; preds = %if.then5.i, %if.then3.i
  %6 = phi %struct.Bitstream* [ %4, %if.then3.i ], [ %.pr.i, %if.then5.i ], !dbg !1138
  %cmp9.i = icmp eq %struct.Bitstream* %6, null, !dbg !1138
  br i1 %cmp9.i, label %for.inc.i, label %if.then10.i, !dbg !1138

if.then10.i:                                      ; preds = %if.end.i
  %7 = bitcast %struct.Bitstream* %6 to i8*, !dbg !1139
  tail call void @free(i8* %7) #6, !dbg !1139
  br label %for.inc.i, !dbg !1139

for.inc.i:                                        ; preds = %if.end.i, %if.then10.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1128
  %8 = load i32* %max_part_nr.i, align 4, !dbg !1128, !tbaa !769
  %9 = trunc i64 %indvars.iv.next.i to i32, !dbg !1128
  %cmp1.i = icmp slt i32 %9, %8, !dbg !1128
  br i1 %cmp1.i, label %for.body.i, label %for.end.i, !dbg !1128

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %10 = load %struct.datapartition** %partArr.i, align 8, !dbg !1140, !tbaa !765
  %cmp15.i = icmp eq %struct.datapartition* %10, null, !dbg !1140
  br i1 %cmp15.i, label %if.end18.i, label %if.then16.i, !dbg !1140

if.then16.i:                                      ; preds = %for.end.i
  %11 = bitcast %struct.datapartition* %10 to i8*, !dbg !1141
  tail call void @free(i8* %11) #6, !dbg !1141
  br label %if.end18.i, !dbg !1141

if.end18.i:                                       ; preds = %if.then16.i, %for.end.i
  %12 = load %struct.InputParameters** @input, align 8, !dbg !1142, !tbaa !765
  %symbol_mode.i = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 59, !dbg !1142
  %13 = load i32* %symbol_mode.i, align 4, !dbg !1142, !tbaa !769
  %cmp19.i = icmp eq i32 %13, 1, !dbg !1142
  br i1 %cmp19.i, label %if.then20.i, label %if.end21.i, !dbg !1142

if.then20.i:                                      ; preds = %if.end18.i
  %mot_ctx.i = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7, !dbg !1143
  %14 = load %struct.MotionInfoContexts** %mot_ctx.i, align 8, !dbg !1143, !tbaa !765
  tail call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %14) #6, !dbg !1143
  %tex_ctx.i = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8, !dbg !1145
  %15 = load %struct.TextureInfoContexts** %tex_ctx.i, align 8, !dbg !1145, !tbaa !765
  tail call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %15) #6, !dbg !1145
  br label %if.end21.i, !dbg !1146

if.end21.i:                                       ; preds = %if.then20.i, %if.end18.i
  %16 = bitcast %struct.Slice* %1 to i8*, !dbg !1147
  tail call void @free(i8* %16) #6, !dbg !1147
  br label %free_slice.exit, !dbg !1148

free_slice.exit:                                  ; preds = %for.body, %if.end21.i
  store %struct.Slice* null, %struct.Slice** %arrayidx, align 8, !dbg !1149, !tbaa !765
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1121
  %17 = load i32* %no_slices, align 4, !dbg !1121, !tbaa !769
  %18 = trunc i64 %indvars.iv.next to i32, !dbg !1121
  %cmp = icmp slt i32 %18, %17, !dbg !1121
  br i1 %cmp, label %for.body, label %for.end, !dbg !1121

for.end:                                          ; preds = %free_slice.exit, %entry
  ret void, !dbg !1150
}

; Function Attrs: nounwind optsize uwtable
define void @modify_redundant_pic_cnt(i8* nocapture %buffer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buffer}, i64 0, metadata !280), !dbg !1151
  %0 = load i32* @rpc_bits_to_go, align 4, !dbg !1152, !tbaa !769
  %sub = add nsw i32 %0, -1, !dbg !1152
  %shl = shl i32 1, %sub, !dbg !1152
  %1 = load i32* @rpc_bytes_to_go, align 4, !dbg !1153, !tbaa !769
  %idxprom = sext i32 %1 to i64, !dbg !1153
  %arrayidx = getelementptr inbounds i8* %buffer, i64 %idxprom, !dbg !1153
  %2 = load i8* %arrayidx, align 1, !dbg !1153, !tbaa !766
  %conv2 = zext i8 %2 to i32, !dbg !1153
  %or = or i32 %conv2, %shl, !dbg !1153
  %conv3 = trunc i32 %or to i8, !dbg !1153
  store i8 %conv3, i8* %arrayidx, align 1, !dbg !1153, !tbaa !766
  ret void, !dbg !1154
}

; Function Attrs: nounwind optsize uwtable
define void @poc_ref_pic_reorder(%struct.storable_picture** nocapture %list, i32 %num_ref_idx_lX_active, i32* nocapture %remapping_of_pic_nums_idc, i32* nocapture %abs_diff_pic_num_minus1, i32* nocapture %long_term_pic_idx, i32 %weighted_prediction, i32 %list_no) #0 {
entry:
  %default_order = alloca [32 x i32], align 16
  %0 = bitcast [32 x i32]* %default_order to i8*
  %re_order = alloca [32 x i32], align 16
  %tmp_reorder = alloca [32 x i32], align 16
  %1 = bitcast [32 x i32]* %tmp_reorder to i8*
  %list_sign = alloca [32 x i32], align 16
  %poc_diff = alloca [32 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct.storable_picture** %list}, i64 0, metadata !360), !dbg !1155
  call void @llvm.dbg.value(metadata !{i32 %num_ref_idx_lX_active}, i64 0, metadata !361), !dbg !1155
  call void @llvm.dbg.value(metadata !{i32* %remapping_of_pic_nums_idc}, i64 0, metadata !362), !dbg !1155
  call void @llvm.dbg.value(metadata !{i32* %abs_diff_pic_num_minus1}, i64 0, metadata !363), !dbg !1155
  call void @llvm.dbg.value(metadata !{i32* %long_term_pic_idx}, i64 0, metadata !364), !dbg !1155
  call void @llvm.dbg.value(metadata !{i32 %weighted_prediction}, i64 0, metadata !365), !dbg !1155
  call void @llvm.dbg.value(metadata !{i32 %list_no}, i64 0, metadata !366), !dbg !1155
  call void @llvm.lifetime.start(i64 128, i8* %0) #4, !dbg !1156
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %default_order}, metadata !372), !dbg !1156
  %2 = bitcast [32 x i32]* %re_order to i8*, !dbg !1157
  call void @llvm.lifetime.start(i64 128, i8* %2) #4, !dbg !1157
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %re_order}, metadata !376), !dbg !1157
  call void @llvm.lifetime.start(i64 128, i8* %1) #4, !dbg !1158
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %tmp_reorder}, metadata !377), !dbg !1158
  %3 = bitcast [32 x i32]* %list_sign to i8*, !dbg !1159
  call void @llvm.lifetime.start(i64 128, i8* %3) #4, !dbg !1159
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %list_sign}, metadata !378), !dbg !1159
  %4 = bitcast [32 x i32]* %poc_diff to i8*, !dbg !1160
  call void @llvm.lifetime.start(i64 128, i8* %4) #4, !dbg !1160
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %poc_diff}, metadata !381), !dbg !1160
  %5 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !1161, !tbaa !769
  %add = add i32 %5, 4, !dbg !1161
  %shl = shl i32 1, %add, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !386), !dbg !1161
  %6 = load %struct.ImageParameters** @img, align 8, !dbg !1162, !tbaa !765
  %structure = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 7, !dbg !1162
  %7 = load i32* %structure, align 4, !dbg !1162, !tbaa !769
  %cmp = icmp eq i32 %7, 0, !dbg !1162
  br i1 %cmp, label %if.then, label %if.else, !dbg !1162

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !385), !dbg !1163
  %frame_num = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 105, !dbg !1165
  %8 = load i32* %frame_num, align 4, !dbg !1165, !tbaa !769
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !370), !dbg !1165
  br label %if.end, !dbg !1166

if.else:                                          ; preds = %entry
  %mul = shl nsw i32 %shl, 1, !dbg !1167
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !385), !dbg !1167
  %frame_num1 = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 105, !dbg !1169
  %9 = load i32* %frame_num1, align 4, !dbg !1169, !tbaa !769
  %mul2 = shl i32 %9, 1, !dbg !1169
  %add3330 = or i32 %mul2, 1, !dbg !1169
  call void @llvm.dbg.value(metadata !{i32 %add3330}, i64 0, metadata !370), !dbg !1169
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %currPicNum.0 = phi i32 [ %8, %if.then ], [ %add3330, %if.else ]
  %maxPicNum.0 = phi i32 [ %shl, %if.then ], [ %mul, %if.else ]
  call void @llvm.dbg.value(metadata !{i32 %currPicNum.0}, i64 0, metadata !371), !dbg !1170
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !367), !dbg !1171
  %cmp4363 = icmp eq i32 %num_ref_idx_lX_active, 0, !dbg !1171
  br i1 %cmp4363, label %for.cond7.preheader, label %for.body, !dbg !1171

for.cond7.preheader:                              ; preds = %for.body, %if.end
  %10 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !dbg !1173, !tbaa !769
  %cmp8361 = icmp eq i32 %10, 0, !dbg !1173
  br i1 %cmp8361, label %for.body70.lr.ph, label %for.body9.lr.ph, !dbg !1173

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %11 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !dbg !1175, !tbaa !765
  %12 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1177, !tbaa !765
  %poc30 = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 1, !dbg !1177
  %cmp33 = icmp eq i32 %list_no, 0, !dbg !1179
  br label %for.body9, !dbg !1173

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds %struct.storable_picture** %list, i64 %indvars.iv389, !dbg !1180
  %13 = load %struct.storable_picture** %arrayidx, align 8, !dbg !1180, !tbaa !765
  %pic_num = getelementptr inbounds %struct.storable_picture* %13, i64 0, i32 11, !dbg !1180
  %14 = load i32* %pic_num, align 4, !dbg !1180, !tbaa !769
  %arrayidx6 = getelementptr inbounds [32 x i32]* %default_order, i64 0, i64 %indvars.iv389, !dbg !1180
  store i32 %14, i32* %arrayidx6, align 4, !dbg !1180, !tbaa !769
  %indvars.iv.next390 = add i64 %indvars.iv389, 1, !dbg !1171
  %lftr.wideiv391 = trunc i64 %indvars.iv.next390 to i32, !dbg !1171
  %exitcond392 = icmp eq i32 %lftr.wideiv391, %num_ref_idx_lX_active, !dbg !1171
  br i1 %exitcond392, label %for.cond7.preheader, label %for.body, !dbg !1171

for.cond67.preheader:                             ; preds = %for.inc64
  %cmp69359 = icmp eq i32 %10, 1, !dbg !1182
  br i1 %cmp69359, label %for.cond123.preheader, label %for.body70.lr.ph, !dbg !1182

for.body70.lr.ph:                                 ; preds = %for.cond7.preheader, %for.cond67.preheader
  %15 = phi i32 [ %10, %for.cond67.preheader ], [ 0, %for.cond7.preheader ]
  %sub68 = add i32 %15, -1, !dbg !1182
  br label %for.body70, !dbg !1182

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc64
  %indvars.iv387 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next388, %for.inc64 ]
  %arrayidx11 = getelementptr inbounds %struct.frame_store** %11, i64 %indvars.iv387, !dbg !1175
  %16 = load %struct.frame_store** %arrayidx11, align 8, !dbg !1175, !tbaa !765
  %frame = getelementptr inbounds %struct.frame_store* %16, i64 0, i32 10, !dbg !1175
  %17 = load %struct.storable_picture** %frame, align 8, !dbg !1175, !tbaa !765
  %pic_num12 = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 11, !dbg !1175
  %18 = load i32* %pic_num12, align 4, !dbg !1175, !tbaa !769
  %arrayidx14 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv387, !dbg !1175
  store i32 %18, i32* %arrayidx14, align 4, !dbg !1175, !tbaa !769
  %is_used = getelementptr inbounds %struct.frame_store* %16, i64 0, i32 0, !dbg !1184
  %19 = load i32* %is_used, align 4, !dbg !1184, !tbaa !769
  %cmp17 = icmp eq i32 %19, 3, !dbg !1184
  br i1 %cmp17, label %land.lhs.true, label %for.inc64, !dbg !1184

land.lhs.true:                                    ; preds = %for.body9
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 15, !dbg !1184
  %20 = load i32* %used_for_reference, align 4, !dbg !1184, !tbaa !769
  %tobool = icmp eq i32 %20, 0, !dbg !1184
  br i1 %tobool, label %for.inc64, label %land.lhs.true21, !dbg !1184

land.lhs.true21:                                  ; preds = %land.lhs.true
  %is_long_term = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 14, !dbg !1184
  %21 = load i32* %is_long_term, align 4, !dbg !1184, !tbaa !769
  %tobool25 = icmp eq i32 %21, 0, !dbg !1184
  br i1 %tobool25, label %if.then26, label %for.inc64, !dbg !1184

if.then26:                                        ; preds = %land.lhs.true21
  %poc = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 1, !dbg !1177
  %22 = load i32* %poc, align 4, !dbg !1177, !tbaa !769
  %23 = load i32* %poc30, align 4, !dbg !1177, !tbaa !769
  %sub = sub nsw i32 %22, %23, !dbg !1177
  %ispos333 = icmp sgt i32 %sub, -1, !dbg !1177
  %neg334 = sub i32 0, %sub, !dbg !1177
  %24 = select i1 %ispos333, i32 %sub, i32 %neg334, !dbg !1177
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !384), !dbg !1177
  %arrayidx32 = getelementptr inbounds [32 x i32]* %poc_diff, i64 0, i64 %indvars.iv387, !dbg !1185
  store i32 %24, i32* %arrayidx32, align 4, !dbg !1185, !tbaa !769
  br i1 %cmp33, label %if.then34, label %if.else48, !dbg !1179

if.then34:                                        ; preds = %if.then26
  %cmp40 = icmp slt i32 %23, %22, !dbg !1186
  %arrayidx43 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv387, !dbg !1188
  br i1 %cmp40, label %if.then41, label %if.else44, !dbg !1186

if.then41:                                        ; preds = %if.then34
  store i32 1, i32* %arrayidx43, align 4, !dbg !1188, !tbaa !769
  br label %for.inc64, !dbg !1190

if.else44:                                        ; preds = %if.then34
  store i32 -1, i32* %arrayidx43, align 4, !dbg !1191, !tbaa !769
  br label %for.inc64

if.else48:                                        ; preds = %if.then26
  %cmp54 = icmp sgt i32 %23, %22, !dbg !1193
  %arrayidx57 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv387, !dbg !1195
  br i1 %cmp54, label %if.then55, label %if.else58, !dbg !1193

if.then55:                                        ; preds = %if.else48
  store i32 1, i32* %arrayidx57, align 4, !dbg !1195, !tbaa !769
  br label %for.inc64, !dbg !1197

if.else58:                                        ; preds = %if.else48
  store i32 -1, i32* %arrayidx57, align 4, !dbg !1198, !tbaa !769
  br label %for.inc64

for.inc64:                                        ; preds = %land.lhs.true21, %land.lhs.true, %for.body9, %if.then55, %if.else58, %if.then41, %if.else44
  %indvars.iv.next388 = add i64 %indvars.iv387, 1, !dbg !1173
  %25 = trunc i64 %indvars.iv.next388 to i32, !dbg !1173
  %cmp8 = icmp ult i32 %25, %10, !dbg !1173
  br i1 %cmp8, label %for.body9, label %for.cond67.preheader, !dbg !1173

for.cond67.loopexit:                              ; preds = %for.inc117, %for.body70
  %cmp69 = icmp ult i32 %26, %sub68, !dbg !1182
  %indvars.iv.next379 = add i64 %indvars.iv378, 1, !dbg !1182
  br i1 %cmp69, label %for.body70, label %for.cond123.preheader, !dbg !1182

for.cond123.preheader:                            ; preds = %for.cond67.loopexit, %for.cond67.preheader
  br i1 %cmp4363, label %if.end240, label %for.body125, !dbg !1200

for.body70:                                       ; preds = %for.body70.lr.ph, %for.cond67.loopexit
  %indvars.iv385 = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next386, %for.cond67.loopexit ]
  %indvars.iv378 = phi i64 [ 1, %for.body70.lr.ph ], [ %indvars.iv.next379, %for.cond67.loopexit ]
  %indvars.iv.next386 = add i64 %indvars.iv385, 1, !dbg !1182
  %26 = trunc i64 %indvars.iv.next386 to i32, !dbg !1202
  %cmp73356 = icmp ult i32 %26, %15, !dbg !1202
  br i1 %cmp73356, label %for.body74.lr.ph, label %for.cond67.loopexit, !dbg !1202

for.body74.lr.ph:                                 ; preds = %for.body70
  %arrayidx76 = getelementptr inbounds [32 x i32]* %poc_diff, i64 0, i64 %indvars.iv385, !dbg !1205
  %arrayidx101 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv385, !dbg !1207
  %arrayidx109 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv385, !dbg !1209
  br label %for.body74, !dbg !1202

for.body74:                                       ; preds = %for.inc117, %for.body74.lr.ph
  %indvars.iv380 = phi i64 [ %indvars.iv378, %for.body74.lr.ph ], [ %indvars.iv.next381, %for.inc117 ], !dbg !1182
  %27 = load i32* %arrayidx76, align 4, !dbg !1205, !tbaa !769
  %arrayidx78 = getelementptr inbounds [32 x i32]* %poc_diff, i64 0, i64 %indvars.iv380, !dbg !1205
  %28 = load i32* %arrayidx78, align 4, !dbg !1205, !tbaa !769
  %cmp79 = icmp sgt i32 %27, %28, !dbg !1205
  br i1 %cmp79, label %for.body74.if.then91_crit_edge, label %lor.lhs.false, !dbg !1205

for.body74.if.then91_crit_edge:                   ; preds = %for.body74
  %arrayidx111.phi.trans.insert = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv380
  %.pre = load i32* %arrayidx111.phi.trans.insert, align 4, !dbg !1210, !tbaa !769
  %.pre393 = load i32* %arrayidx109, align 4, !dbg !1209, !tbaa !769
  br label %if.then91, !dbg !1205

lor.lhs.false:                                    ; preds = %for.body74
  %cmp84 = icmp eq i32 %27, %28, !dbg !1205
  br i1 %cmp84, label %land.lhs.true85, label %for.inc117, !dbg !1205

land.lhs.true85:                                  ; preds = %lor.lhs.false
  %arrayidx87 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv380, !dbg !1205
  %29 = load i32* %arrayidx87, align 4, !dbg !1205, !tbaa !769
  %30 = load i32* %arrayidx109, align 4, !dbg !1205, !tbaa !769
  %cmp90 = icmp sgt i32 %29, %30, !dbg !1205
  br i1 %cmp90, label %if.then91, label %for.inc117, !dbg !1205

if.then91:                                        ; preds = %land.lhs.true85, %for.body74.if.then91_crit_edge
  %31 = phi i32 [ %.pre393, %for.body74.if.then91_crit_edge ], [ %30, %land.lhs.true85 ]
  %32 = phi i32 [ %.pre, %for.body74.if.then91_crit_edge ], [ %29, %land.lhs.true85 ]
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !382), !dbg !1211
  store i32 %28, i32* %arrayidx76, align 4, !dbg !1212, !tbaa !769
  store i32 %27, i32* %arrayidx78, align 4, !dbg !1213, !tbaa !769
  %33 = load i32* %arrayidx101, align 4, !dbg !1207, !tbaa !769
  call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !382), !dbg !1207
  %arrayidx103 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv380, !dbg !1214
  %34 = load i32* %arrayidx103, align 4, !dbg !1214, !tbaa !769
  store i32 %34, i32* %arrayidx101, align 4, !dbg !1214, !tbaa !769
  store i32 %33, i32* %arrayidx103, align 4, !dbg !1215, !tbaa !769
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !382), !dbg !1209
  %arrayidx111 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv380, !dbg !1210
  store i32 %32, i32* %arrayidx109, align 4, !dbg !1210, !tbaa !769
  store i32 %31, i32* %arrayidx111, align 4, !dbg !1216, !tbaa !769
  br label %for.inc117, !dbg !1217

for.inc117:                                       ; preds = %lor.lhs.false, %land.lhs.true85, %if.then91
  %indvars.iv.next381 = add i64 %indvars.iv380, 1, !dbg !1202
  %lftr.wideiv383 = trunc i64 %indvars.iv.next381 to i32, !dbg !1202
  %exitcond384 = icmp eq i32 %lftr.wideiv383, %15, !dbg !1202
  br i1 %exitcond384, label %for.cond67.loopexit, label %for.body74, !dbg !1202

for.body125:                                      ; preds = %for.cond123.preheader, %for.body125
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body125 ], [ 0, %for.cond123.preheader ]
  %no_reorder.0353 = phi i32 [ %no_reorder.0., %for.body125 ], [ 1, %for.cond123.preheader ]
  %arrayidx127 = getelementptr inbounds [32 x i32]* %default_order, i64 0, i64 %indvars.iv, !dbg !1218
  %35 = load i32* %arrayidx127, align 4, !dbg !1218, !tbaa !769
  %arrayidx129 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv, !dbg !1218
  %36 = load i32* %arrayidx129, align 4, !dbg !1218, !tbaa !769
  %cmp130 = icmp eq i32 %35, %36, !dbg !1218
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !380), !dbg !1220
  %no_reorder.0. = select i1 %cmp130, i32 %no_reorder.0353, i32 0, !dbg !1218
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1200
  %lftr.wideiv376 = trunc i64 %indvars.iv.next to i32, !dbg !1200
  %exitcond377 = icmp eq i32 %lftr.wideiv376, %num_ref_idx_lX_active, !dbg !1200
  br i1 %exitcond377, label %for.end135, label %for.body125, !dbg !1200

for.end135:                                       ; preds = %for.body125
  %phitmp = icmp eq i32 %no_reorder.0., 0, !dbg !1200
  br i1 %phitmp, label %for.cond138.preheader, label %if.end240, !dbg !1222

for.cond138.preheader:                            ; preds = %for.end135
  br i1 %cmp4363, label %for.end222.thread, label %for.body140.lr.ph, !dbg !1223

for.end222.thread:                                ; preds = %for.cond138.preheader
  store i32 3, i32* %remapping_of_pic_nums_idc, align 4, !dbg !1226, !tbaa !769
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !368), !dbg !1227
  br label %for.end234, !dbg !1227

for.body140.lr.ph:                                ; preds = %for.cond138.preheader
  %37 = add i32 %num_ref_idx_lX_active, -1, !dbg !1223
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 2, !dbg !1223
  %40 = add i64 %39, 4, !dbg !1223
  br label %for.body140, !dbg !1223

for.body140:                                      ; preds = %for.body212.lr.ph, %for.body140.lr.ph
  %indvars.iv374 = phi i64 [ 0, %for.body140.lr.ph ], [ %indvars.iv.next375, %for.body212.lr.ph ]
  %i.4351 = phi i32 [ 0, %for.body140.lr.ph ], [ %add192, %for.body212.lr.ph ]
  %picNumLXPred.0350 = phi i32 [ %currPicNum.0, %for.body140.lr.ph ], [ %41, %for.body212.lr.ph ]
  %arrayidx142 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv374, !dbg !1229
  %41 = load i32* %arrayidx142, align 4, !dbg !1229, !tbaa !769
  %sub143 = sub nsw i32 %41, %picNumLXPred.0350, !dbg !1229
  call void @llvm.dbg.value(metadata !{i32 %sub143}, i64 0, metadata !383), !dbg !1229
  %cmp144 = icmp slt i32 %sub143, 1, !dbg !1231
  %arrayidx147 = getelementptr inbounds i32* %remapping_of_pic_nums_idc, i64 %indvars.iv374, !dbg !1232
  br i1 %cmp144, label %if.then145, label %if.else160, !dbg !1231

if.then145:                                       ; preds = %for.body140
  store i32 0, i32* %arrayidx147, align 4, !dbg !1232, !tbaa !769
  %ispos331 = icmp sgt i32 %sub143, -1, !dbg !1234
  %neg332 = sub i32 0, %sub143, !dbg !1234
  %42 = select i1 %ispos331, i32 %sub143, i32 %neg332, !dbg !1234
  %arrayidx151 = getelementptr inbounds i32* %abs_diff_pic_num_minus1, i64 %indvars.iv374, !dbg !1234
  %cmp154 = icmp slt i32 %42, 1, !dbg !1235
  %sub156.sub149.v = select i1 %cmp154, i32 %maxPicNum.0, i32 %42, !dbg !1235
  %sub156.sub149 = add i32 %sub156.sub149.v, -1, !dbg !1235
  store i32 %sub156.sub149, i32* %arrayidx151, align 4, !dbg !1236, !tbaa !769
  br label %for.body176.lr.ph, !dbg !1235

if.else160:                                       ; preds = %for.body140
  store i32 1, i32* %arrayidx147, align 4, !dbg !1237, !tbaa !769
  %sub164 = add nsw i32 %sub143, -1, !dbg !1239
  %arrayidx166 = getelementptr inbounds i32* %abs_diff_pic_num_minus1, i64 %indvars.iv374, !dbg !1239
  store i32 %sub164, i32* %arrayidx166, align 4, !dbg !1239, !tbaa !769
  br label %for.body176.lr.ph

for.body176.lr.ph:                                ; preds = %if.then145, %if.else160
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !371), !dbg !1240
  %arrayidx173 = getelementptr inbounds [32 x i32]* %tmp_reorder, i64 0, i64 %indvars.iv374, !dbg !1241
  store i32 %41, i32* %arrayidx173, align 4, !dbg !1241, !tbaa !769
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !369), !dbg !1242
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !368), !dbg !1243
  br label %for.body176, !dbg !1243

for.body176:                                      ; preds = %for.inc189, %for.body176.lr.ph
  %indvars.iv365 = phi i64 [ %indvars.iv374, %for.body176.lr.ph ], [ %indvars.iv.next366, %for.inc189 ], !dbg !1223
  %k.0338 = phi i32 [ %i.4351, %for.body176.lr.ph ], [ %k.1, %for.inc189 ]
  %arrayidx178 = getelementptr inbounds [32 x i32]* %default_order, i64 0, i64 %indvars.iv365, !dbg !1245
  %43 = load i32* %arrayidx178, align 4, !dbg !1245, !tbaa !769
  %cmp181 = icmp eq i32 %43, %41, !dbg !1245
  br i1 %cmp181, label %for.inc189, label %if.then182, !dbg !1245

if.then182:                                       ; preds = %for.body176
  %inc183 = add i32 %k.0338, 1, !dbg !1247
  call void @llvm.dbg.value(metadata !{i32 %inc183}, i64 0, metadata !369), !dbg !1247
  %idxprom186 = zext i32 %inc183 to i64, !dbg !1249
  %arrayidx187 = getelementptr inbounds [32 x i32]* %tmp_reorder, i64 0, i64 %idxprom186, !dbg !1249
  store i32 %43, i32* %arrayidx187, align 4, !dbg !1249, !tbaa !769
  br label %for.inc189, !dbg !1250

for.inc189:                                       ; preds = %for.body176, %if.then182
  %k.1 = phi i32 [ %inc183, %if.then182 ], [ %k.0338, %for.body176 ]
  %indvars.iv.next366 = add i64 %indvars.iv365, 1, !dbg !1243
  %lftr.wideiv = trunc i64 %indvars.iv.next366 to i32, !dbg !1243
  %exitcond = icmp eq i32 %lftr.wideiv, %num_ref_idx_lX_active, !dbg !1243
  br i1 %exitcond, label %for.end191, label %for.body176, !dbg !1243

for.end191:                                       ; preds = %for.inc189
  call void @llvm.dbg.value(metadata !1019, i64 0, metadata !379), !dbg !1251
  %indvars.iv.next375 = add i64 %indvars.iv374, 1, !dbg !1223
  %add192 = add i32 %i.4351, 1, !dbg !1252
  call void @llvm.dbg.value(metadata !{i32 %add192}, i64 0, metadata !368), !dbg !1252
  %44 = trunc i64 %indvars.iv.next375 to i32, !dbg !1252
  %cmp194340 = icmp ult i32 %44, %num_ref_idx_lX_active, !dbg !1252
  br i1 %cmp194340, label %for.body195, label %for.end222, !dbg !1252

for.cond193:                                      ; preds = %for.body195
  %cmp194 = icmp ult i32 %inc204, %num_ref_idx_lX_active, !dbg !1252
  br i1 %cmp194, label %for.body195, label %for.end222, !dbg !1252

for.body195:                                      ; preds = %for.end191, %for.cond193
  %j.2341 = phi i32 [ %inc204, %for.cond193 ], [ %add192, %for.end191 ]
  %idxprom196 = zext i32 %j.2341 to i64, !dbg !1254
  %arrayidx197 = getelementptr inbounds [32 x i32]* %tmp_reorder, i64 0, i64 %idxprom196, !dbg !1254
  %45 = load i32* %arrayidx197, align 4, !dbg !1254, !tbaa !769
  %arrayidx199 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %idxprom196, !dbg !1254
  %46 = load i32* %arrayidx199, align 4, !dbg !1254, !tbaa !769
  %cmp200 = icmp eq i32 %45, %46, !dbg !1254
  %inc204 = add i32 %j.2341, 1, !dbg !1252
  call void @llvm.dbg.value(metadata !{i32 %inc204}, i64 0, metadata !368), !dbg !1252
  br i1 %cmp200, label %for.cond193, label %for.body212.lr.ph, !dbg !1254

for.body212.lr.ph:                                ; preds = %for.body195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %40, i32 16, i1 false), !dbg !1256
  br label %for.body140, !dbg !1259

for.end222:                                       ; preds = %for.cond193, %for.end191
  %phitmp394 = zext i32 %add192 to i64
  %arrayidx224 = getelementptr inbounds i32* %remapping_of_pic_nums_idc, i64 %phitmp394, !dbg !1226
  store i32 3, i32* %arrayidx224, align 4, !dbg !1226, !tbaa !769
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !368), !dbg !1227
  br i1 %cmp4363, label %for.end234, label %for.body227.lr.ph, !dbg !1227

for.body227.lr.ph:                                ; preds = %for.end222
  %47 = add i32 %num_ref_idx_lX_active, -1, !dbg !1227
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 2, !dbg !1227
  %50 = add i64 %49, 4, !dbg !1227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %50, i32 16, i1 false), !dbg !1260
  br label %for.end234, !dbg !1227

for.end234:                                       ; preds = %for.end222.thread, %for.end222, %for.body227.lr.ph
  %cmp235 = icmp eq i32 %list_no, 0, !dbg !1262
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 50, !dbg !1263
  %51 = load %struct.Slice** %currentSlice, align 8, !dbg !1263, !tbaa !765
  br i1 %cmp235, label %if.then236, label %if.else237, !dbg !1262

if.then236:                                       ; preds = %for.end234
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice* %51, i64 0, i32 10, !dbg !1263
  store i32 1, i32* %ref_pic_list_reordering_flag_l0, align 4, !dbg !1263, !tbaa !769
  br label %if.end240, !dbg !1265

if.else237:                                       ; preds = %for.end234
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice* %51, i64 0, i32 14, !dbg !1266
  store i32 1, i32* %ref_pic_list_reordering_flag_l1, align 4, !dbg !1266, !tbaa !769
  br label %if.end240

if.end240:                                        ; preds = %for.cond123.preheader, %if.then236, %if.else237, %for.end135
  call void @llvm.lifetime.end(i64 128, i8* %4) #4, !dbg !1268
  call void @llvm.lifetime.end(i64 128, i8* %3) #4, !dbg !1268
  call void @llvm.lifetime.end(i64 128, i8* %1) #4, !dbg !1268
  call void @llvm.lifetime.end(i64 128, i8* %2) #4, !dbg !1268
  call void @llvm.lifetime.end(i64 128, i8* %0) #4, !dbg !1268
  ret void, !dbg !1268
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #2

; Function Attrs: optsize
declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #2

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: optsize
declare i32 @dummy_slice_too_big(i32) #2

; Function Attrs: optsize
declare i32 @writeSyntaxElement_UVLC(%struct.syntaxelement*, %struct.datapartition*) #2

; Function Attrs: optsize
declare i32 @writeSyntaxElement_CABAC(%struct.syntaxelement*, %struct.datapartition*) #2

; Function Attrs: optsize
declare void @init_lists(i32, i32) #2

; Function Attrs: optsize
declare void @poc_based_ref_management(i32) #2

; Function Attrs: optsize
declare void @alloc_ref_pic_list_reordering_buffer(%struct.Slice*) #2

; Function Attrs: optsize
declare void @reorder_ref_pic_list(%struct.storable_picture**, i32*, i32, i32*, i32*, i32*) #2

; Function Attrs: optsize
declare void @init_mbaff_lists(...) #2

; Function Attrs: optsize
declare void @estimate_weighting_factor_P_slice(i32) #2

; Function Attrs: optsize
declare void @estimate_weighting_factor_B_slice(...) #2

; Function Attrs: optsize
declare void @compute_colocated(%struct.colocated_params*, %struct.storable_picture***) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: optsize
declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #2

; Function Attrs: optsize
declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !34, metadata !35, metadata !420, metadata !34, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8, metadata !13, metadata !17, metadata !22, metadata !27}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 96, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 96, size 32, align 32, offset 0] [from ]
!9 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!10 = metadata !{metadata !11, metadata !12}
!11 = metadata !{i32 786472, metadata !"PAR_DP_1", i64 0} ; [ DW_TAG_enumerator ] [PAR_DP_1 :: 0]
!12 = metadata !{i32 786472, metadata !"PAR_DP_3", i64 1} ; [ DW_TAG_enumerator ] [PAR_DP_3 :: 1]
!13 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 178, i64 32, i64 32, i32 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 178, size 32, align 32, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !16}
!15 = metadata !{i32 786472, metadata !"UVLC", i64 0} ; [ DW_TAG_enumerator ] [UVLC :: 0]
!16 = metadata !{i32 786472, metadata !"CABAC", i64 1} ; [ DW_TAG_enumerator ] [CABAC :: 1]
!17 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 111, i64 32, i64 32, i32 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 111, size 32, align 32, offset 0] [from ]
!18 = metadata !{metadata !19, metadata !20, metadata !21}
!19 = metadata !{i32 786472, metadata !"FRAME_CODING", i64 0} ; [ DW_TAG_enumerator ] [FRAME_CODING :: 0]
!20 = metadata !{i32 786472, metadata !"FIELD_CODING", i64 1} ; [ DW_TAG_enumerator ] [FIELD_CODING :: 1]
!21 = metadata !{i32 786472, metadata !"ADAPTIVE_CODING", i64 2} ; [ DW_TAG_enumerator ] [ADAPTIVE_CODING :: 2]
!22 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !25, metadata !26}
!24 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!25 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!26 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!27 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 192, i64 32, i64 32, i32 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 192, size 32, align 32, offset 0] [from ]
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33}
!29 = metadata !{i32 786472, metadata !"P_SLICE", i64 0} ; [ DW_TAG_enumerator ] [P_SLICE :: 0]
!30 = metadata !{i32 786472, metadata !"B_SLICE", i64 1} ; [ DW_TAG_enumerator ] [B_SLICE :: 1]
!31 = metadata !{i32 786472, metadata !"I_SLICE", i64 2} ; [ DW_TAG_enumerator ] [I_SLICE :: 2]
!32 = metadata !{i32 786472, metadata !"SP_SLICE", i64 3} ; [ DW_TAG_enumerator ] [SP_SLICE :: 3]
!33 = metadata !{i32 786472, metadata !"SI_SLICE", i64 4} ; [ DW_TAG_enumerator ] [SI_SLICE :: 4]
!34 = metadata !{i32 0}
!35 = metadata !{metadata !36, metadata !222, metadata !232, metadata !240, metadata !269, metadata !275, metadata !282, metadata !387, metadata !394, metadata !407, metadata !411}
!36 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"init_ref_pic_list_reordering", metadata !"init_ref_pic_list_reordering", metadata !"", i32 50, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @init_ref_pic_list_reordering, null, null, metadata !40, i32 51} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 51] [init_ref_pic_list_reordering]
!37 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!38 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{null}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786688, metadata !36, metadata !"currSlice", metadata !37, i32 52, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currSlice] [line 52]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!43 = metadata !{i32 786454, metadata !1, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!44 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!45 = metadata !{metadata !46, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !131, metadata !170, metadata !197, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !219}
!46 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!47 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!48 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !47} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!49 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!50 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !47} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!51 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!52 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !47} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!53 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !54} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!55 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!56 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !57, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!57 = metadata !{metadata !58, metadata !77, metadata !103}
!58 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!60 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!61 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !62, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !76}
!63 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!64 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !47} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!65 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!66 = metadata !{i32 786454, metadata !9, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!67 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!68 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !47} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!69 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!70 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !66} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!71 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !66} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!72 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!73 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !47} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!74 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !75} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!76 = metadata !{i32 786445, metadata !9, metadata !61, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !47} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!77 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !78} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!78 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!79 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !80, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!80 = metadata !{metadata !81, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!81 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!82 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!83 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !82} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!84 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!85 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !82} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!86 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !82} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!87 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!88 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !89} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!90 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !82} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!91 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !82} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!92 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !82} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!93 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !82} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!94 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !82} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!95 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !75} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!96 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !89} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!97 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !47} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!98 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !47} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!99 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!100 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !47} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!101 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !47} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!102 = metadata !{i32 786445, metadata !9, metadata !79, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !47} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!103 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !104} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!105 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!106 = metadata !{metadata !47, metadata !107, metadata !130}
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!108 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!109 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !110, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !123}
!111 = metadata !{i32 786445, metadata !9, metadata !109, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!112 = metadata !{i32 786445, metadata !9, metadata !109, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !47} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!113 = metadata !{i32 786445, metadata !9, metadata !109, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!114 = metadata !{i32 786445, metadata !9, metadata !109, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !47} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!115 = metadata !{i32 786445, metadata !9, metadata !109, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!116 = metadata !{i32 786445, metadata !9, metadata !109, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !82} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!117 = metadata !{i32 786445, metadata !9, metadata !109, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!118 = metadata !{i32 786445, metadata !9, metadata !109, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !47} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!119 = metadata !{i32 786445, metadata !9, metadata !109, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !120} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!121 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!122 = metadata !{null, metadata !47, metadata !47, metadata !89, metadata !89}
!123 = metadata !{i32 786445, metadata !9, metadata !109, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !124} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!124 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!125 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{null, metadata !127, metadata !128}
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!128 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!131 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !132} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!133 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!134 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !135, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!135 = metadata !{metadata !136, metadata !149, metadata !154, metadata !158, metadata !162, metadata !166, metadata !167}
!136 = metadata !{i32 786445, metadata !9, metadata !134, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!137 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !138, metadata !146, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!138 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!139 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !140, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!140 = metadata !{metadata !141, metadata !143, metadata !144}
!141 = metadata !{i32 786445, metadata !9, metadata !139, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!142 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!143 = metadata !{i32 786445, metadata !9, metadata !139, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !67} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!144 = metadata !{i32 786445, metadata !9, metadata !139, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!145 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!146 = metadata !{metadata !147, metadata !148}
!147 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!148 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!149 = metadata !{i32 786445, metadata !9, metadata !134, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !150} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!150 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !138, metadata !151, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!151 = metadata !{metadata !152, metadata !153}
!152 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!153 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!154 = metadata !{i32 786445, metadata !9, metadata !134, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !155} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!155 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !138, metadata !156, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!156 = metadata !{metadata !152, metadata !157}
!157 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!158 = metadata !{i32 786445, metadata !9, metadata !134, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !159} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!159 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !138, metadata !160, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!160 = metadata !{metadata !152, metadata !161}
!161 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!162 = metadata !{i32 786445, metadata !9, metadata !134, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !163} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!163 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !138, metadata !164, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!164 = metadata !{metadata !165}
!165 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!166 = metadata !{i32 786445, metadata !9, metadata !134, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !163} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!167 = metadata !{i32 786445, metadata !9, metadata !134, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !168} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!168 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !138, metadata !169, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!169 = metadata !{metadata !147}
!170 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !171} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!172 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!173 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !174, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!174 = metadata !{metadata !175, metadata !178, metadata !179, metadata !182, metadata !185, metadata !189, metadata !190, metadata !194, metadata !195, metadata !196}
!175 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!176 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !138, metadata !177, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!177 = metadata !{metadata !152}
!178 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !163} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!179 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !180} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!180 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !138, metadata !181, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!181 = metadata !{metadata !147, metadata !165}
!182 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !183} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!183 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !138, metadata !184, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!184 = metadata !{metadata !157, metadata !165}
!185 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !186} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!186 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !138, metadata !187, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!187 = metadata !{metadata !157, metadata !188}
!188 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!189 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !186} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!190 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !191} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!191 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !138, metadata !192, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!192 = metadata !{metadata !157, metadata !193}
!193 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!194 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !191} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!195 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !186} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!196 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !186} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!197 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !198} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!198 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!199 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!200 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !201, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!201 = metadata !{metadata !202, metadata !203, metadata !204}
!202 = metadata !{i32 786445, metadata !9, metadata !200, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!203 = metadata !{i32 786445, metadata !9, metadata !200, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !47} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!204 = metadata !{i32 786445, metadata !9, metadata !200, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !205} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !200} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!206 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !47} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!207 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !89} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!208 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !89} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!209 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !89} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!210 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!211 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !89} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!212 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !89} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!213 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !89} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!214 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !215} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!215 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !216} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!216 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!217 = metadata !{metadata !218, metadata !47}
!218 = metadata !{i32 786454, metadata !9, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!219 = metadata !{i32 786445, metadata !9, metadata !44, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !220} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!220 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !47, metadata !221, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!221 = metadata !{metadata !147, metadata !152}
!222 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"start_slice", metadata !"start_slice", metadata !"", i32 72, metadata !223, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @start_slice, null, null, metadata !225, i32 73} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 73] [start_slice]
!223 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!224 = metadata !{metadata !47}
!225 = metadata !{metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231}
!226 = metadata !{i32 786688, metadata !222, metadata !"eep", metadata !37, i32 74, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eep] [line 74]
!227 = metadata !{i32 786688, metadata !222, metadata !"currSlice", metadata !37, i32 75, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currSlice] [line 75]
!228 = metadata !{i32 786688, metadata !222, metadata !"currStream", metadata !37, i32 76, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currStream] [line 76]
!229 = metadata !{i32 786688, metadata !222, metadata !"header_len", metadata !37, i32 77, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [header_len] [line 77]
!230 = metadata !{i32 786688, metadata !222, metadata !"i", metadata !37, i32 78, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 78]
!231 = metadata !{i32 786688, metadata !222, metadata !"NumberOfPartitions", metadata !37, i32 79, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NumberOfPartitions] [line 79]
!232 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"terminate_slice", metadata !"terminate_slice", metadata !"", i32 134, metadata !223, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @terminate_slice, null, null, metadata !233, i32 135} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 135] [terminate_slice]
!233 = metadata !{metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239}
!234 = metadata !{i32 786688, metadata !232, metadata !"bytes_written", metadata !37, i32 136, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes_written] [line 136]
!235 = metadata !{i32 786688, metadata !232, metadata !"currStream", metadata !37, i32 137, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currStream] [line 137]
!236 = metadata !{i32 786688, metadata !232, metadata !"currSlice", metadata !37, i32 138, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currSlice] [line 138]
!237 = metadata !{i32 786688, metadata !232, metadata !"eep", metadata !37, i32 139, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eep] [line 139]
!238 = metadata !{i32 786688, metadata !232, metadata !"i", metadata !37, i32 140, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 140]
!239 = metadata !{i32 786688, metadata !232, metadata !"byte_pos_before_startcode_emu_prevention", metadata !37, i32 141, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [byte_pos_before_startcode_emu_prevention] [line 141]
!240 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"encode_one_slice", metadata !"encode_one_slice", metadata !"", i32 185, metadata !241, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.Picture*)* @encode_one_slice, null, null, metadata !258, i32 186} ; [ DW_TAG_subprogram ] [line 185] [def] [scope 186] [encode_one_slice]
!241 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!242 = metadata !{metadata !47, metadata !47, metadata !243}
!243 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!244 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !245} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!245 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !246, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!246 = metadata !{metadata !247, metadata !248, metadata !249, metadata !253, metadata !254, metadata !256, metadata !257}
!247 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!248 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !47} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!249 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !250} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!250 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !42, metadata !251, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!251 = metadata !{metadata !252}
!252 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!253 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !47} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!254 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !255} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!255 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!256 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !255} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!257 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !255} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!258 = metadata !{metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !268}
!259 = metadata !{i32 786689, metadata !240, metadata !"SliceGroupId", metadata !37, i32 16777401, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SliceGroupId] [line 185]
!260 = metadata !{i32 786689, metadata !240, metadata !"pic", metadata !37, i32 33554617, metadata !243, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pic] [line 185]
!261 = metadata !{i32 786688, metadata !240, metadata !"end_of_slice", metadata !37, i32 187, metadata !218, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end_of_slice] [line 187]
!262 = metadata !{i32 786688, metadata !240, metadata !"recode_macroblock", metadata !37, i32 188, metadata !218, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [recode_macroblock] [line 188]
!263 = metadata !{i32 786688, metadata !240, metadata !"len", metadata !37, i32 189, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 189]
!264 = metadata !{i32 786688, metadata !240, metadata !"NumberOfCodedMBs", metadata !37, i32 190, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NumberOfCodedMBs] [line 190]
!265 = metadata !{i32 786688, metadata !240, metadata !"CurrentMbAddr", metadata !37, i32 191, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CurrentMbAddr] [line 191]
!266 = metadata !{i32 786688, metadata !240, metadata !"FrameRDCost", metadata !37, i32 192, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrameRDCost] [line 192]
!267 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!268 = metadata !{i32 786688, metadata !240, metadata !"FieldRDCost", metadata !37, i32 192, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FieldRDCost] [line 192]
!269 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"free_slice_list", metadata !"free_slice_list", metadata !"", i32 731, metadata !270, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.Picture*)* @free_slice_list, null, null, metadata !272, i32 732} ; [ DW_TAG_subprogram ] [line 731] [def] [scope 732] [free_slice_list]
!270 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!271 = metadata !{null, metadata !243}
!272 = metadata !{metadata !273, metadata !274}
!273 = metadata !{i32 786689, metadata !269, metadata !"currPic", metadata !37, i32 16777947, metadata !243, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currPic] [line 731]
!274 = metadata !{i32 786688, metadata !269, metadata !"i", metadata !37, i32 733, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 733]
!275 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"modify_redundant_pic_cnt", metadata !"modify_redundant_pic_cnt", metadata !"", i32 789, metadata !276, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @modify_redundant_pic_cnt, null, null, metadata !279, i32 790} ; [ DW_TAG_subprogram ] [line 789] [def] [scope 790] [modify_redundant_pic_cnt]
!276 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!277 = metadata !{null, metadata !278}
!278 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!279 = metadata !{metadata !280, metadata !281}
!280 = metadata !{i32 786689, metadata !275, metadata !"buffer", metadata !37, i32 16778005, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 789]
!281 = metadata !{i32 786688, metadata !275, metadata !"tmp", metadata !37, i32 791, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 791]
!282 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"poc_ref_pic_reorder", metadata !"poc_ref_pic_reorder", metadata !"", i32 838, metadata !283, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.storable_picture**, i32, i32*, i32*, i32*, i32, i32)* @poc_ref_pic_reorder, null, null, metadata !359, i32 839} ; [ DW_TAG_subprogram ] [line 838] [def] [scope 839] [poc_ref_pic_reorder]
!283 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!284 = metadata !{null, metadata !285, metadata !82, metadata !89, metadata !89, metadata !89, metadata !47, metadata !47}
!285 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !286} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!286 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !287} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from StorablePicture]
!287 = metadata !{i32 786454, metadata !1, null, metadata !"StorablePicture", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !288} ; [ DW_TAG_typedef ] [StorablePicture] [line 82, size 0, align 0, offset 0] [from storable_picture]
!288 = metadata !{i32 786451, metadata !289, null, metadata !"storable_picture", i32 21, i64 52672, i64 64, i32 0, i32 0, null, metadata !290, i32 0, null, null} ; [ DW_TAG_structure_type ] [storable_picture] [line 21, size 52672, align 64, offset 0] [from ]
!289 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/mbuffer.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!290 = metadata !{metadata !291, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !332, metadata !333, metadata !338, metadata !342, metadata !343, metadata !345, metadata !347, metadata !348, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358}
!291 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"structure", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !292} ; [ DW_TAG_member ] [structure] [line 23, size 32, align 32, offset 0] [from PictureStructure]
!292 = metadata !{i32 786454, metadata !289, null, metadata !"PictureStructure", i32 190, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [PictureStructure] [line 190, size 0, align 0, offset 0] [from ]
!293 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"poc", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !47} ; [ DW_TAG_member ] [poc] [line 25, size 32, align 32, offset 32] [from int]
!294 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"top_poc", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [top_poc] [line 26, size 32, align 32, offset 64] [from int]
!295 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"bottom_poc", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !47} ; [ DW_TAG_member ] [bottom_poc] [line 27, size 32, align 32, offset 96] [from int]
!296 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"frame_poc", i32 28, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [frame_poc] [line 28, size 32, align 32, offset 128] [from int]
!297 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"order_num", i32 29, i64 32, i64 32, i64 160, i32 0, metadata !47} ; [ DW_TAG_member ] [order_num] [line 29, size 32, align 32, offset 160] [from int]
!298 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"ref_pic_num", i32 30, i64 12672, i64 64, i64 192, i32 0, metadata !299} ; [ DW_TAG_member ] [ref_pic_num] [line 30, size 12672, align 64, offset 192] [from ]
!299 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 12672, i64 64, i32 0, i32 0, metadata !300, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 12672, align 64, offset 0] [from int64]
!300 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !301} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!301 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !302} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!302 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!303 = metadata !{metadata !161, metadata !304}
!304 = metadata !{i32 786465, i64 0, i64 33}      ; [ DW_TAG_subrange_type ] [0, 32]
!305 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"frm_ref_pic_num", i32 31, i64 12672, i64 64, i64 12864, i32 0, metadata !299} ; [ DW_TAG_member ] [frm_ref_pic_num] [line 31, size 12672, align 64, offset 12864] [from ]
!306 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"top_ref_pic_num", i32 32, i64 12672, i64 64, i64 25536, i32 0, metadata !299} ; [ DW_TAG_member ] [top_ref_pic_num] [line 32, size 12672, align 64, offset 25536] [from ]
!307 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"bottom_ref_pic_num", i32 33, i64 12672, i64 64, i64 38208, i32 0, metadata !299} ; [ DW_TAG_member ] [bottom_ref_pic_num] [line 33, size 12672, align 64, offset 38208] [from ]
!308 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"frame_num", i32 34, i64 32, i64 32, i64 50880, i32 0, metadata !82} ; [ DW_TAG_member ] [frame_num] [line 34, size 32, align 32, offset 50880] [from unsigned int]
!309 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"pic_num", i32 35, i64 32, i64 32, i64 50912, i32 0, metadata !47} ; [ DW_TAG_member ] [pic_num] [line 35, size 32, align 32, offset 50912] [from int]
!310 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"long_term_pic_num", i32 36, i64 32, i64 32, i64 50944, i32 0, metadata !47} ; [ DW_TAG_member ] [long_term_pic_num] [line 36, size 32, align 32, offset 50944] [from int]
!311 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"long_term_frame_idx", i32 37, i64 32, i64 32, i64 50976, i32 0, metadata !47} ; [ DW_TAG_member ] [long_term_frame_idx] [line 37, size 32, align 32, offset 50976] [from int]
!312 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"is_long_term", i32 39, i64 32, i64 32, i64 51008, i32 0, metadata !47} ; [ DW_TAG_member ] [is_long_term] [line 39, size 32, align 32, offset 51008] [from int]
!313 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"used_for_reference", i32 40, i64 32, i64 32, i64 51040, i32 0, metadata !47} ; [ DW_TAG_member ] [used_for_reference] [line 40, size 32, align 32, offset 51040] [from int]
!314 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"is_output", i32 41, i64 32, i64 32, i64 51072, i32 0, metadata !47} ; [ DW_TAG_member ] [is_output] [line 41, size 32, align 32, offset 51072] [from int]
!315 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"non_existing", i32 42, i64 32, i64 32, i64 51104, i32 0, metadata !47} ; [ DW_TAG_member ] [non_existing] [line 42, size 32, align 32, offset 51104] [from int]
!316 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"size_x", i32 44, i64 32, i64 32, i64 51136, i32 0, metadata !47} ; [ DW_TAG_member ] [size_x] [line 44, size 32, align 32, offset 51136] [from int]
!317 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"size_y", i32 44, i64 32, i64 32, i64 51168, i32 0, metadata !47} ; [ DW_TAG_member ] [size_y] [line 44, size 32, align 32, offset 51168] [from int]
!318 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"size_x_cr", i32 44, i64 32, i64 32, i64 51200, i32 0, metadata !47} ; [ DW_TAG_member ] [size_x_cr] [line 44, size 32, align 32, offset 51200] [from int]
!319 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"size_y_cr", i32 44, i64 32, i64 32, i64 51232, i32 0, metadata !47} ; [ DW_TAG_member ] [size_y_cr] [line 44, size 32, align 32, offset 51232] [from int]
!320 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"chroma_vector_adjustment", i32 45, i64 32, i64 32, i64 51264, i32 0, metadata !47} ; [ DW_TAG_member ] [chroma_vector_adjustment] [line 45, size 32, align 32, offset 51264] [from int]
!321 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"coded_frame", i32 46, i64 32, i64 32, i64 51296, i32 0, metadata !47} ; [ DW_TAG_member ] [coded_frame] [line 46, size 32, align 32, offset 51296] [from int]
!322 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"MbaffFrameFlag", i32 47, i64 32, i64 32, i64 51328, i32 0, metadata !47} ; [ DW_TAG_member ] [MbaffFrameFlag] [line 47, size 32, align 32, offset 51328] [from int]
!323 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"imgY", i32 49, i64 64, i64 64, i64 51392, i32 0, metadata !324} ; [ DW_TAG_member ] [imgY] [line 49, size 64, align 64, offset 51392] [from ]
!324 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !325} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!325 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!326 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"imgY_11", i32 50, i64 64, i64 64, i64 51456, i32 0, metadata !325} ; [ DW_TAG_member ] [imgY_11] [line 50, size 64, align 64, offset 51456] [from ]
!327 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"imgY_11_w", i32 51, i64 64, i64 64, i64 51520, i32 0, metadata !325} ; [ DW_TAG_member ] [imgY_11_w] [line 51, size 64, align 64, offset 51520] [from ]
!328 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"imgY_ups", i32 52, i64 64, i64 64, i64 51584, i32 0, metadata !324} ; [ DW_TAG_member ] [imgY_ups] [line 52, size 64, align 64, offset 51584] [from ]
!329 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"imgY_ups_w", i32 53, i64 64, i64 64, i64 51648, i32 0, metadata !324} ; [ DW_TAG_member ] [imgY_ups_w] [line 53, size 64, align 64, offset 51648] [from ]
!330 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"imgUV", i32 54, i64 64, i64 64, i64 51712, i32 0, metadata !331} ; [ DW_TAG_member ] [imgUV] [line 54, size 64, align 64, offset 51712] [from ]
!331 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !324} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!332 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"mb_field", i32 56, i64 64, i64 64, i64 51776, i32 0, metadata !75} ; [ DW_TAG_member ] [mb_field] [line 56, size 64, align 64, offset 51776] [from ]
!333 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"ref_idx", i32 58, i64 64, i64 64, i64 51840, i32 0, metadata !334} ; [ DW_TAG_member ] [ref_idx] [line 58, size 64, align 64, offset 51840] [from ]
!334 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !335} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!335 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !336} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!336 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !337} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!337 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!338 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"ref_pic_id", i32 60, i64 64, i64 64, i64 51904, i32 0, metadata !339} ; [ DW_TAG_member ] [ref_pic_id] [line 60, size 64, align 64, offset 51904] [from ]
!339 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !340} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!340 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !341} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!341 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !300} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int64]
!342 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"ref_id", i32 63, i64 64, i64 64, i64 51968, i32 0, metadata !339} ; [ DW_TAG_member ] [ref_id] [line 63, size 64, align 64, offset 51968] [from ]
!343 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"mv", i32 66, i64 64, i64 64, i64 52032, i32 0, metadata !344} ; [ DW_TAG_member ] [mv] [line 66, size 64, align 64, offset 52032] [from ]
!344 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !334} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!345 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"moving_block", i32 68, i64 64, i64 64, i64 52096, i32 0, metadata !346} ; [ DW_TAG_member ] [moving_block] [line 68, size 64, align 64, offset 52096] [from ]
!346 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!347 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"field_frame", i32 69, i64 64, i64 64, i64 52160, i32 0, metadata !346} ; [ DW_TAG_member ] [field_frame] [line 69, size 64, align 64, offset 52160] [from ]
!348 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"top_field", i32 71, i64 64, i64 64, i64 52224, i32 0, metadata !349} ; [ DW_TAG_member ] [top_field] [line 71, size 64, align 64, offset 52224] [from ]
!349 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !288} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from storable_picture]
!350 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"bottom_field", i32 72, i64 64, i64 64, i64 52288, i32 0, metadata !349} ; [ DW_TAG_member ] [bottom_field] [line 72, size 64, align 64, offset 52288] [from ]
!351 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"frame", i32 73, i64 64, i64 64, i64 52352, i32 0, metadata !349} ; [ DW_TAG_member ] [frame] [line 73, size 64, align 64, offset 52352] [from ]
!352 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"chroma_format_idc", i32 75, i64 32, i64 32, i64 52416, i32 0, metadata !47} ; [ DW_TAG_member ] [chroma_format_idc] [line 75, size 32, align 32, offset 52416] [from int]
!353 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"frame_mbs_only_flag", i32 76, i64 32, i64 32, i64 52448, i32 0, metadata !47} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 76, size 32, align 32, offset 52448] [from int]
!354 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"frame_cropping_flag", i32 77, i64 32, i64 32, i64 52480, i32 0, metadata !47} ; [ DW_TAG_member ] [frame_cropping_flag] [line 77, size 32, align 32, offset 52480] [from int]
!355 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"frame_cropping_rect_left_offset", i32 78, i64 32, i64 32, i64 52512, i32 0, metadata !47} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 78, size 32, align 32, offset 52512] [from int]
!356 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"frame_cropping_rect_right_offset", i32 79, i64 32, i64 32, i64 52544, i32 0, metadata !47} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 79, size 32, align 32, offset 52544] [from int]
!357 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"frame_cropping_rect_top_offset", i32 80, i64 32, i64 32, i64 52576, i32 0, metadata !47} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 80, size 32, align 32, offset 52576] [from int]
!358 = metadata !{i32 786445, metadata !289, metadata !288, metadata !"frame_cropping_rect_bottom_offset", i32 81, i64 32, i64 32, i64 52608, i32 0, metadata !47} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 81, size 32, align 32, offset 52608] [from int]
!359 = metadata !{metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386}
!360 = metadata !{i32 786689, metadata !282, metadata !"list", metadata !37, i32 16778054, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 838]
!361 = metadata !{i32 786689, metadata !282, metadata !"num_ref_idx_lX_active", metadata !37, i32 33555270, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_ref_idx_lX_active] [line 838]
!362 = metadata !{i32 786689, metadata !282, metadata !"remapping_of_pic_nums_idc", metadata !37, i32 50332486, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [remapping_of_pic_nums_idc] [line 838]
!363 = metadata !{i32 786689, metadata !282, metadata !"abs_diff_pic_num_minus1", metadata !37, i32 67109702, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [abs_diff_pic_num_minus1] [line 838]
!364 = metadata !{i32 786689, metadata !282, metadata !"long_term_pic_idx", metadata !37, i32 83886918, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [long_term_pic_idx] [line 838]
!365 = metadata !{i32 786689, metadata !282, metadata !"weighted_prediction", metadata !37, i32 100664134, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weighted_prediction] [line 838]
!366 = metadata !{i32 786689, metadata !282, metadata !"list_no", metadata !37, i32 117441350, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list_no] [line 838]
!367 = metadata !{i32 786688, metadata !282, metadata !"i", metadata !37, i32 840, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 840]
!368 = metadata !{i32 786688, metadata !282, metadata !"j", metadata !37, i32 840, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 840]
!369 = metadata !{i32 786688, metadata !282, metadata !"k", metadata !37, i32 840, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 840]
!370 = metadata !{i32 786688, metadata !282, metadata !"currPicNum", metadata !37, i32 842, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currPicNum] [line 842]
!371 = metadata !{i32 786688, metadata !282, metadata !"picNumLXPred", metadata !37, i32 842, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [picNumLXPred] [line 842]
!372 = metadata !{i32 786688, metadata !282, metadata !"default_order", metadata !37, i32 844, metadata !373, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [default_order] [line 844]
!373 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !47, metadata !374, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!374 = metadata !{metadata !375}
!375 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!376 = metadata !{i32 786688, metadata !282, metadata !"re_order", metadata !37, i32 845, metadata !373, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [re_order] [line 845]
!377 = metadata !{i32 786688, metadata !282, metadata !"tmp_reorder", metadata !37, i32 846, metadata !373, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_reorder] [line 846]
!378 = metadata !{i32 786688, metadata !282, metadata !"list_sign", metadata !37, i32 847, metadata !373, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list_sign] [line 847]
!379 = metadata !{i32 786688, metadata !282, metadata !"reorder_stop", metadata !37, i32 848, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reorder_stop] [line 848]
!380 = metadata !{i32 786688, metadata !282, metadata !"no_reorder", metadata !37, i32 848, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_reorder] [line 848]
!381 = metadata !{i32 786688, metadata !282, metadata !"poc_diff", metadata !37, i32 849, metadata !373, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [poc_diff] [line 849]
!382 = metadata !{i32 786688, metadata !282, metadata !"tmp_value", metadata !37, i32 850, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_value] [line 850]
!383 = metadata !{i32 786688, metadata !282, metadata !"diff", metadata !37, i32 850, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff] [line 850]
!384 = metadata !{i32 786688, metadata !282, metadata !"abs_poc_dist", metadata !37, i32 852, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [abs_poc_dist] [line 852]
!385 = metadata !{i32 786688, metadata !282, metadata !"maxPicNum", metadata !37, i32 853, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxPicNum] [line 853]
!386 = metadata !{i32 786688, metadata !282, metadata !"MaxFrameNum", metadata !37, i32 853, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MaxFrameNum] [line 853]
!387 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"free_slice", metadata !"free_slice", metadata !"", i32 752, metadata !388, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !390, i32 753} ; [ DW_TAG_subprogram ] [line 752] [local] [def] [scope 753] [free_slice]
!388 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!389 = metadata !{null, metadata !42}
!390 = metadata !{metadata !391, metadata !392, metadata !393}
!391 = metadata !{i32 786689, metadata !387, metadata !"slice", metadata !37, i32 16777968, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [slice] [line 752]
!392 = metadata !{i32 786688, metadata !387, metadata !"i", metadata !37, i32 754, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 754]
!393 = metadata !{i32 786688, metadata !387, metadata !"dataPart", metadata !37, i32 755, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dataPart] [line 755]
!394 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"init_slice", metadata !"init_slice", metadata !"", i32 485, metadata !395, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !397, i32 486} ; [ DW_TAG_subprogram ] [line 485] [local] [def] [scope 486] [init_slice]
!395 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!396 = metadata !{null, metadata !47}
!397 = metadata !{metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !406}
!398 = metadata !{i32 786689, metadata !394, metadata !"start_mb_addr", metadata !37, i32 16777701, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start_mb_addr] [line 485]
!399 = metadata !{i32 786688, metadata !394, metadata !"i", metadata !37, i32 487, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 487]
!400 = metadata !{i32 786688, metadata !394, metadata !"currPic", metadata !37, i32 488, metadata !243, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currPic] [line 488]
!401 = metadata !{i32 786688, metadata !394, metadata !"dataPart", metadata !37, i32 489, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dataPart] [line 489]
!402 = metadata !{i32 786688, metadata !394, metadata !"currStream", metadata !37, i32 490, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currStream] [line 490]
!403 = metadata !{i32 786688, metadata !394, metadata !"currSlice", metadata !37, i32 491, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currSlice] [line 491]
!404 = metadata !{i32 786688, metadata !405, metadata !"i", metadata !37, i32 574, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 574]
!405 = metadata !{i32 786443, metadata !1, metadata !394, i32 572, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!406 = metadata !{i32 786688, metadata !405, metadata !"num_ref", metadata !37, i32 574, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_ref] [line 574]
!407 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"set_ref_pic_num", metadata !"set_ref_pic_num", metadata !"", i32 795, metadata !38, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !408, i32 796} ; [ DW_TAG_subprogram ] [line 795] [local] [def] [scope 796] [set_ref_pic_num]
!408 = metadata !{metadata !409, metadata !410}
!409 = metadata !{i32 786688, metadata !407, metadata !"i", metadata !37, i32 797, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 797]
!410 = metadata !{i32 786688, metadata !407, metadata !"j", metadata !37, i32 797, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 797]
!411 = metadata !{i32 786478, metadata !1, metadata !37, metadata !"malloc_slice", metadata !"malloc_slice", metadata !"", i32 674, metadata !412, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !414, i32 675} ; [ DW_TAG_subprogram ] [line 674] [local] [def] [scope 675] [malloc_slice]
!412 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!413 = metadata !{metadata !42}
!414 = metadata !{metadata !415, metadata !416, metadata !417, metadata !418}
!415 = metadata !{i32 786688, metadata !411, metadata !"i", metadata !37, i32 676, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 676]
!416 = metadata !{i32 786688, metadata !411, metadata !"dataPart", metadata !37, i32 677, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dataPart] [line 677]
!417 = metadata !{i32 786688, metadata !411, metadata !"slice", metadata !37, i32 678, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slice] [line 678]
!418 = metadata !{i32 786688, metadata !411, metadata !"buffer_size", metadata !37, i32 679, metadata !419, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer_size] [line 679]
!419 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!420 = metadata !{metadata !421, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !474, metadata !567, metadata !568, metadata !569, metadata !571, metadata !572, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !603, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !615, metadata !618, metadata !619, metadata !620, metadata !621, metadata !624, metadata !627, metadata !638, metadata !674, metadata !675, metadata !676, metadata !677, metadata !678, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746}
!421 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !422, i32 558, metadata !243, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!422 = metadata !{i32 786473, metadata !9}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!423 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !422, i32 559, metadata !243, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!424 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !422, i32 560, metadata !243, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!425 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !422, i32 561, metadata !243, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!426 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !422, i32 562, metadata !243, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!427 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !422, i32 565, metadata !324, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!428 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !422, i32 566, metadata !331, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!429 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !422, i32 567, metadata !430, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!430 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!431 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !422, i32 569, metadata !82, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!432 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !422, i32 570, metadata !82, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!433 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !422, i32 572, metadata !47, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!434 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !422, i32 572, metadata !47, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!435 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !422, i32 573, metadata !436, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!436 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !437} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!437 = metadata !{i32 786454, metadata !9, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !438} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!438 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !439, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!439 = metadata !{metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !450, metadata !451, metadata !452, metadata !453, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473}
!440 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!441 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !82} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!442 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!443 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !218} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!444 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !218} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!445 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !218} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!446 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !447} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!447 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !47, metadata !448, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!448 = metadata !{metadata !449}
!449 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!450 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !218} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!451 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !82} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!452 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !82} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!453 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !454} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!454 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !82, metadata !448, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!455 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !454} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!456 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !454} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!457 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !218} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!458 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !82} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!459 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !82} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!460 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !75} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!461 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !47} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!462 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !47} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!463 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !218} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!464 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !82} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!465 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !47} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!466 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !47} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!467 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !47} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!468 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !47} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!469 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !47} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!470 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !218} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!471 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !218} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!472 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !218} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!473 = metadata !{i32 786445, metadata !4, metadata !438, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !218} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!474 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !422, i32 574, metadata !475, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!475 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !476} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!476 = metadata !{i32 786454, metadata !9, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !477} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!477 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !478, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!478 = metadata !{metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516}
!479 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!480 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !82} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!481 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !218} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!482 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !218} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!483 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !218} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!484 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !218} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!485 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !82} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!486 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !82} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!487 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !82} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!488 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !218} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!489 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !447} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!490 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !82} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!491 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !82} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!492 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !82} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!493 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !82} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!494 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !82} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!495 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !218} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!496 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !47} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!497 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !47} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!498 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !82} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!499 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !500} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!500 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !47, metadata !501, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!501 = metadata !{metadata !502}
!502 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!503 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !82} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!504 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !218} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!505 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !82} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!506 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !82} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!507 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !218} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!508 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !218} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!509 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !218} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!510 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !218} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!511 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !82} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!512 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !82} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!513 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !82} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!514 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !82} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!515 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !218} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!516 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !517} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!517 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !518} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!518 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !519, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!519 = metadata !{metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566}
!520 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!521 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !82} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!522 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!523 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !82} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!524 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !218} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!525 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !218} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!526 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !218} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!527 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !82} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!528 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !218} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!529 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !218} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!530 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !82} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!531 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !82} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!532 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !82} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!533 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !218} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!534 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !82} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!535 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !82} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!536 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !218} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!537 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !82} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!538 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !82} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!539 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !218} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!540 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !218} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!541 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !542} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!542 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !543} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!543 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !544, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!544 = metadata !{metadata !545, metadata !546, metadata !547, metadata !548, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555}
!545 = metadata !{i32 786445, metadata !4, metadata !543, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!546 = metadata !{i32 786445, metadata !4, metadata !543, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !82} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!547 = metadata !{i32 786445, metadata !4, metadata !543, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!548 = metadata !{i32 786445, metadata !4, metadata !543, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !549} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!549 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !82, metadata !374, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!550 = metadata !{i32 786445, metadata !4, metadata !543, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !549} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!551 = metadata !{i32 786445, metadata !4, metadata !543, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !549} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!552 = metadata !{i32 786445, metadata !4, metadata !543, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !82} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!553 = metadata !{i32 786445, metadata !4, metadata !543, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !82} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!554 = metadata !{i32 786445, metadata !4, metadata !543, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !82} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!555 = metadata !{i32 786445, metadata !4, metadata !543, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !82} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!556 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !218} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!557 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !542} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!558 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !218} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!559 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !218} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!560 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !218} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!561 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !82} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!562 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !82} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!563 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !82} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!564 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !82} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!565 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !82} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!566 = metadata !{i32 786445, metadata !4, metadata !518, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !82} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!567 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !422, i32 578, metadata !47, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!568 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !422, i32 579, metadata !47, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!569 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !422, i32 583, metadata !570, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!570 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !430} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!571 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !422, i32 584, metadata !570, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!572 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !422, i32 585, metadata !573, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!573 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !570} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!574 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !422, i32 586, metadata !47, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!575 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !422, i32 587, metadata !47, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!576 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !422, i32 588, metadata !47, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!577 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !422, i32 589, metadata !47, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!578 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !422, i32 592, metadata !324, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!579 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !422, i32 593, metadata !324, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!580 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !422, i32 595, metadata !331, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!581 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !422, i32 596, metadata !331, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!582 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !422, i32 598, metadata !324, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!583 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !422, i32 599, metadata !331, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!584 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !422, i32 601, metadata !324, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!585 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !422, i32 602, metadata !331, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!586 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !422, i32 604, metadata !334, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!587 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !422, i32 605, metadata !335, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!588 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !422, i32 608, metadata !346, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!589 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !422, i32 609, metadata !346, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!590 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !422, i32 610, metadata !47, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!591 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !422, i32 612, metadata !47, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!592 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !422, i32 612, metadata !47, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!593 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !422, i32 612, metadata !47, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!594 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !422, i32 613, metadata !47, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!595 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !422, i32 613, metadata !47, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!596 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !422, i32 613, metadata !47, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!597 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !422, i32 614, metadata !47, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!598 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !422, i32 617, metadata !599, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!599 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !600, metadata !601, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!600 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!601 = metadata !{metadata !602}
!602 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!603 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !422, i32 620, metadata !604, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!604 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !47, metadata !605, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!605 = metadata !{metadata !606, metadata !606}
!606 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!607 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !422, i32 620, metadata !604, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!608 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !422, i32 620, metadata !604, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!609 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !422, i32 621, metadata !604, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!610 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !422, i32 621, metadata !604, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!611 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !422, i32 621, metadata !604, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!612 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !422, i32 622, metadata !613, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!613 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !47, metadata !614, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!614 = metadata !{metadata !147, metadata !606, metadata !606}
!615 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !422, i32 623, metadata !616, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!616 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !47, metadata !617, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!617 = metadata !{metadata !152, metadata !165, metadata !165}
!618 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !422, i32 623, metadata !616, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!619 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !422, i32 624, metadata !616, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!620 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !422, i32 624, metadata !616, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!621 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !422, i32 625, metadata !622, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!622 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !47, metadata !623, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!623 = metadata !{metadata !165, metadata !165}
!624 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !422, i32 625, metadata !625, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!625 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !47, metadata !626, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!626 = metadata !{metadata !606}
!627 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !422, i32 1201, metadata !628, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!628 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !629} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!629 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !630} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!630 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !631, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!631 = metadata !{metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637}
!632 = metadata !{i32 786445, metadata !9, metadata !630, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!633 = metadata !{i32 786445, metadata !9, metadata !630, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !47} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!634 = metadata !{i32 786445, metadata !9, metadata !630, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!635 = metadata !{i32 786445, metadata !9, metadata !630, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !47} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!636 = metadata !{i32 786445, metadata !9, metadata !630, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!637 = metadata !{i32 786445, metadata !9, metadata !630, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !47} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!638 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !422, i32 1202, metadata !639, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!639 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !640} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!640 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !641} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!641 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !642, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!642 = metadata !{metadata !643, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !662, metadata !663, metadata !664, metadata !665, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673}
!643 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !267} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!644 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !604} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!645 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !604} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!646 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !604} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!647 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !573} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!648 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !570} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!649 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !47} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!650 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !47} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!651 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !652} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!652 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !47, metadata !164, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!653 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !652} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!654 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !430} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!655 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !625} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!656 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !47} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!657 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !300} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!658 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !47} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!659 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !660} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!660 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !661} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!661 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !344} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!662 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !660} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!663 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !660} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!664 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !660} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!665 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !666} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!666 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !337, metadata !617, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!667 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !47} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!668 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !47} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!669 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !47} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!670 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !47} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!671 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !47} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!672 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !47} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!673 = metadata !{i32 786445, metadata !9, metadata !641, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !47} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!674 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !422, i32 1203, metadata !640, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!675 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !422, i32 1203, metadata !640, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!676 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !422, i32 1204, metadata !640, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!677 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !422, i32 1204, metadata !640, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!678 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !422, i32 1230, metadata !679, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!679 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !680} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!680 = metadata !{i32 786454, metadata !9, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !681} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!681 = metadata !{i32 786451, metadata !682, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !683, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!682 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!683 = metadata !{metadata !684, metadata !685, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !705, metadata !706, metadata !707, metadata !708, metadata !710, metadata !711, metadata !713, metadata !717, metadata !719, metadata !721, metadata !722, metadata !723, metadata !724, metadata !725, metadata !727, metadata !728}
!684 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!685 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!686 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !600} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!687 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!688 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!689 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!690 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!691 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!692 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!693 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!694 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!695 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!696 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !686} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!697 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !698} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!698 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !699} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!699 = metadata !{i32 786451, metadata !682, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !700, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!700 = metadata !{metadata !701, metadata !702, metadata !704}
!701 = metadata !{i32 786445, metadata !682, metadata !699, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !698} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!702 = metadata !{i32 786445, metadata !682, metadata !699, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !703} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!703 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !681} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!704 = metadata !{i32 786445, metadata !682, metadata !699, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!705 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !703} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!706 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !47} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!707 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !47} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!708 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !709} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!709 = metadata !{i32 786454, metadata !682, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !302} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!710 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !142} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!711 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !712} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!712 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!713 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !714} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!714 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !600, metadata !715, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!715 = metadata !{metadata !716}
!716 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!717 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !718} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!718 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!719 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !720} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!720 = metadata !{i32 786454, metadata !682, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !302} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!721 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !718} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!722 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !718} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!723 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !718} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!724 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !718} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!725 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !726} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!726 = metadata !{i32 786454, metadata !682, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!727 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !47} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!728 = metadata !{i32 786445, metadata !682, metadata !681, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !729} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!729 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !600, metadata !730, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!730 = metadata !{metadata !731}
!731 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!732 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !422, i32 1231, metadata !679, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!733 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !422, i32 1232, metadata !679, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!734 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !422, i32 1233, metadata !47, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!735 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !422, i32 1234, metadata !47, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!736 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !422, i32 1237, metadata !737, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!737 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !47, metadata !730, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!738 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !422, i32 1238, metadata !737, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!739 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !422, i32 1239, metadata !737, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!740 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !422, i32 1240, metadata !737, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!741 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !422, i32 1241, metadata !737, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!742 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !422, i32 1242, metadata !737, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!743 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !422, i32 1456, metadata !47, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!744 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !422, i32 1465, metadata !47, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!745 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !422, i32 1466, metadata !47, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!746 = metadata !{i32 786484, i32 0, null, metadata !"WriteNALU", metadata !"WriteNALU", metadata !"", metadata !747, i32 28, metadata !749, i32 0, i32 1, i32 (%struct.NALU_t*)** @WriteNALU, null} ; [ DW_TAG_variable ] [WriteNALU] [line 28] [def]
!747 = metadata !{i32 786473, metadata !748}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h]
!748 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!749 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !750} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!750 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !751, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!751 = metadata !{metadata !47, metadata !752}
!752 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !753} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from NALU_t]
!753 = metadata !{i32 786454, metadata !748, null, metadata !"NALU_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !754} ; [ DW_TAG_typedef ] [NALU_t] [line 49, size 0, align 0, offset 0] [from ]
!754 = metadata !{i32 786451, metadata !755, null, metadata !"", i32 40, i64 256, i64 64, i32 0, i32 0, null, metadata !756, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 256, align 64, offset 0] [from ]
!755 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalucommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!756 = metadata !{metadata !757, metadata !758, metadata !759, metadata !760, metadata !761, metadata !762, metadata !763}
!757 = metadata !{i32 786445, metadata !755, metadata !754, metadata !"startcodeprefix_len", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [startcodeprefix_len] [line 42, size 32, align 32, offset 0] [from int]
!758 = metadata !{i32 786445, metadata !755, metadata !754, metadata !"len", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !82} ; [ DW_TAG_member ] [len] [line 43, size 32, align 32, offset 32] [from unsigned int]
!759 = metadata !{i32 786445, metadata !755, metadata !754, metadata !"max_size", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [max_size] [line 44, size 32, align 32, offset 64] [from unsigned int]
!760 = metadata !{i32 786445, metadata !755, metadata !754, metadata !"nal_unit_type", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !47} ; [ DW_TAG_member ] [nal_unit_type] [line 45, size 32, align 32, offset 96] [from int]
!761 = metadata !{i32 786445, metadata !755, metadata !754, metadata !"nal_reference_idc", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [nal_reference_idc] [line 46, size 32, align 32, offset 128] [from int]
!762 = metadata !{i32 786445, metadata !755, metadata !754, metadata !"forbidden_bit", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !47} ; [ DW_TAG_member ] [forbidden_bit] [line 47, size 32, align 32, offset 160] [from int]
!763 = metadata !{i32 786445, metadata !755, metadata !754, metadata !"buf", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [buf] [line 48, size 64, align 64, offset 192] [from ]
!764 = metadata !{i32 52, i32 0, metadata !36, null}
!765 = metadata !{metadata !"any pointer", metadata !766}
!766 = metadata !{metadata !"omnipotent char", metadata !767}
!767 = metadata !{metadata !"Simple C/C++ TBAA"}
!768 = metadata !{i32 54, i32 0, metadata !36, null}
!769 = metadata !{metadata !"int", metadata !766}
!770 = metadata !{i32 55, i32 0, metadata !36, null}
!771 = metadata !{i32 56, i32 0, metadata !36, null}
!772 = metadata !{i32 75, i32 0, metadata !222, null}
!773 = metadata !{i32 77, i32 0, metadata !222, null}
!774 = metadata !{i32 79, i32 0, metadata !222, null}
!775 = metadata !{i32 82, i32 0, metadata !222, null}
!776 = metadata !{i32 84, i32 0, metadata !777, null}
!777 = metadata !{i32 786443, metadata !1, metadata !222, i32 83, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!778 = metadata !{i32 87, i32 0, metadata !222, null}
!779 = metadata !{i32 89, i32 0, metadata !780, null}
!780 = metadata !{i32 786443, metadata !1, metadata !222, i32 89, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!781 = metadata !{i32 91, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !780, i32 90, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!783 = metadata !{i32 93, i32 0, metadata !782, null}
!784 = metadata !{i32 94, i32 0, metadata !782, null}
!785 = metadata !{i32 95, i32 0, metadata !782, null}
!786 = metadata !{i32 97, i32 0, metadata !782, null}
!787 = metadata !{i32 100, i32 0, metadata !782, null}
!788 = metadata !{i32 102, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !782, i32 101, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!790 = metadata !{i32 103, i32 0, metadata !789, null}
!791 = metadata !{i32 105, i32 0, metadata !789, null}
!792 = metadata !{i32 106, i32 0, metadata !789, null}
!793 = metadata !{i32 107, i32 0, metadata !789, null}
!794 = metadata !{i32 108, i32 0, metadata !789, null}
!795 = metadata !{i32 111, i32 0, metadata !796, null}
!796 = metadata !{i32 786443, metadata !1, metadata !782, i32 109, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!797 = metadata !{i32 114, i32 0, metadata !222, null}
!798 = metadata !{i32 116, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !222, i32 115, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!800 = metadata !{i32 117, i32 0, metadata !799, null}
!801 = metadata !{i32 118, i32 0, metadata !222, null}
!802 = metadata !{i32 138, i32 0, metadata !232, null}
!803 = metadata !{i32 143, i32 0, metadata !232, null}
!804 = metadata !{i32 144, i32 0, metadata !232, null}
!805 = metadata !{i32 146, i32 0, metadata !806, null}
!806 = metadata !{i32 786443, metadata !1, metadata !232, i32 146, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!807 = metadata !{i32 148, i32 0, metadata !808, null}
!808 = metadata !{i32 786443, metadata !1, metadata !806, i32 147, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!809 = metadata !{i32 149, i32 0, metadata !808, null}
!810 = metadata !{i32 151, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !808, i32 150, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!812 = metadata !{i32 152, i32 0, metadata !811, null}
!813 = metadata !{i32 153, i32 0, metadata !811, null}
!814 = metadata !{i32 154, i32 0, metadata !811, null}
!815 = metadata !{i32 155, i32 0, metadata !811, null}
!816 = metadata !{i32 158, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !808, i32 157, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!818 = metadata !{i32 160, i32 0, metadata !817, null}
!819 = metadata !{i32 161, i32 0, metadata !817, null}
!820 = metadata !{i32 162, i32 0, metadata !817, null}
!821 = metadata !{i32 163, i32 0, metadata !817, null}
!822 = metadata !{i32 164, i32 0, metadata !817, null}
!823 = metadata !{i32 165, i32 0, metadata !817, null}
!824 = metadata !{i32 166, i32 0, metadata !817, null}
!825 = metadata !{i32 169, i32 0, metadata !232, null}
!826 = metadata !{i32 171, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !232, i32 170, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!828 = metadata !{i32 172, i32 0, metadata !827, null}
!829 = metadata !{i32 174, i32 0, metadata !232, null}
!830 = metadata !{i32 185, i32 0, metadata !240, null}
!831 = metadata !{i32 187, i32 0, metadata !240, null}
!832 = metadata !{i32 188, i32 0, metadata !240, null}
!833 = metadata !{i32 190, i32 0, metadata !240, null}
!834 = metadata !{i32 194, i32 0, metadata !240, null}
!835 = metadata !{i32 196, i32 0, metadata !240, null}
!836 = metadata !{i32 786689, metadata !394, metadata !"start_mb_addr", metadata !37, i32 16777701, metadata !47, i32 0, metadata !837} ; [ DW_TAG_arg_variable ] [start_mb_addr] [line 485]
!837 = metadata !{i32 199, i32 0, metadata !240, null}
!838 = metadata !{i32 485, i32 0, metadata !394, metadata !837}
!839 = metadata !{i32 488, i32 0, metadata !394, metadata !837}
!840 = metadata !{i32 786688, metadata !394, metadata !"currPic", metadata !37, i32 488, metadata !243, i32 0, metadata !837} ; [ DW_TAG_auto_variable ] [currPic] [line 488]
!841 = metadata !{i32 493, i32 0, metadata !394, metadata !837}
!842 = metadata !{i32 496, i32 0, metadata !394, metadata !837}
!843 = metadata !{i32 497, i32 0, metadata !394, metadata !837}
!844 = metadata !{i32 498, i32 0, metadata !394, metadata !837}
!845 = metadata !{i32 499, i32 0, metadata !394, metadata !837}
!846 = metadata !{i32 679, i32 0, metadata !411, metadata !847}
!847 = metadata !{i32 501, i32 0, metadata !394, metadata !837}
!848 = metadata !{i32 786688, metadata !411, metadata !"buffer_size", metadata !37, i32 679, metadata !419, i32 0, metadata !847} ; [ DW_TAG_auto_variable ] [buffer_size] [line 679]
!849 = metadata !{i32 683, i32 0, metadata !411, metadata !847}
!850 = metadata !{i32 786688, metadata !411, metadata !"slice", metadata !37, i32 678, metadata !42, i32 0, metadata !847} ; [ DW_TAG_auto_variable ] [slice] [line 678]
!851 = metadata !{i32 685, i32 0, metadata !411, metadata !847}
!852 = metadata !{i32 688, i32 0, metadata !853, metadata !847}
!853 = metadata !{i32 786443, metadata !1, metadata !411, i32 686, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!854 = metadata !{i32 689, i32 0, metadata !853, metadata !847}
!855 = metadata !{i32 692, i32 0, metadata !411, metadata !847}
!856 = metadata !{i32 690, i32 0, metadata !853, metadata !847}
!857 = metadata !{i32 695, i32 0, metadata !411, metadata !847}
!858 = metadata !{i32 696, i32 0, metadata !411, metadata !847}
!859 = metadata !{i32 698, i32 0, metadata !411, metadata !847}
!860 = metadata !{i32 701, i32 0, metadata !411, metadata !847}
!861 = metadata !{i32 702, i32 0, metadata !411, metadata !847}
!862 = metadata !{i32 708, i32 0, metadata !411, metadata !847}
!863 = metadata !{i32 710, i32 0, metadata !411, metadata !847}
!864 = metadata !{i32 715, i32 0, metadata !865, metadata !847}
!865 = metadata !{i32 786443, metadata !1, metadata !866, i32 712, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!866 = metadata !{i32 786443, metadata !1, metadata !411, i32 711, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!867 = metadata !{i32 711, i32 0, metadata !866, metadata !847}
!868 = metadata !{i32 714, i32 0, metadata !865, metadata !847}
!869 = metadata !{i32 502, i32 0, metadata !394, metadata !837}
!870 = metadata !{i32 786688, metadata !394, metadata !"currSlice", metadata !37, i32 491, metadata !42, i32 0, metadata !837} ; [ DW_TAG_auto_variable ] [currSlice] [line 491]
!871 = metadata !{i32 504, i32 0, metadata !394, metadata !837}
!872 = metadata !{i32 506, i32 0, metadata !394, metadata !837}
!873 = metadata !{i32 507, i32 0, metadata !394, metadata !837}
!874 = metadata !{i32 508, i32 0, metadata !394, metadata !837}
!875 = metadata !{i32 509, i32 0, metadata !394, metadata !837}
!876 = metadata !{i32 786688, metadata !394, metadata !"i", metadata !37, i32 487, metadata !47, i32 0, metadata !837} ; [ DW_TAG_auto_variable ] [i] [line 487]
!877 = metadata !{i32 511, i32 0, metadata !878, metadata !837}
!878 = metadata !{i32 786443, metadata !1, metadata !394, i32 511, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!879 = metadata !{i32 513, i32 0, metadata !880, metadata !837}
!880 = metadata !{i32 786443, metadata !1, metadata !878, i32 512, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!881 = metadata !{i32 514, i32 0, metadata !880, metadata !837}
!882 = metadata !{i32 515, i32 0, metadata !880, metadata !837}
!883 = metadata !{i32 519, i32 0, metadata !880, metadata !837}
!884 = metadata !{i32 786688, metadata !394, metadata !"currStream", metadata !37, i32 490, metadata !59, i32 0, metadata !837} ; [ DW_TAG_auto_variable ] [currStream] [line 490]
!885 = metadata !{i32 520, i32 0, metadata !880, metadata !837}
!886 = metadata !{i32 521, i32 0, metadata !880, metadata !837}
!887 = metadata !{i32 522, i32 0, metadata !880, metadata !837}
!888 = metadata !{i32 528, i32 0, metadata !394, metadata !837}
!889 = metadata !{i32 529, i32 0, metadata !394, metadata !837}
!890 = metadata !{i32 532, i32 0, metadata !394, metadata !837}
!891 = metadata !{i32 535, i32 0, metadata !394, metadata !837}
!892 = metadata !{i32 536, i32 0, metadata !394, metadata !837}
!893 = metadata !{i32 540, i32 0, metadata !894, metadata !837}
!894 = metadata !{i32 786443, metadata !1, metadata !394, i32 539, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!895 = metadata !{i32 542, i32 0, metadata !896, metadata !837}
!896 = metadata !{i32 786443, metadata !1, metadata !894, i32 541, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!897 = metadata !{i32 543, i32 0, metadata !896, metadata !837}
!898 = metadata !{i32 545, i32 0, metadata !894, metadata !837}
!899 = metadata !{i32 544, i32 0, metadata !896, metadata !837}
!900 = metadata !{i32 548, i32 0, metadata !901, metadata !837}
!901 = metadata !{i32 786443, metadata !1, metadata !894, i32 546, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!902 = metadata !{i32 550, i32 0, metadata !903, metadata !837}
!903 = metadata !{i32 786443, metadata !1, metadata !901, i32 549, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!904 = metadata !{i32 551, i32 0, metadata !903, metadata !837}
!905 = metadata !{i32 552, i32 0, metadata !903, metadata !837}
!906 = metadata !{i32 553, i32 0, metadata !901, metadata !837}
!907 = metadata !{i32 556, i32 0, metadata !908, metadata !837}
!908 = metadata !{i32 786443, metadata !1, metadata !901, i32 554, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!909 = metadata !{i32 557, i32 0, metadata !908, metadata !837}
!910 = metadata !{i32 558, i32 0, metadata !908, metadata !837}
!911 = metadata !{i32 563, i32 0, metadata !394, metadata !837}
!912 = metadata !{i32 565, i32 0, metadata !913, metadata !837}
!913 = metadata !{i32 786443, metadata !1, metadata !394, i32 564, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!914 = metadata !{i32 52, i32 0, metadata !36, metadata !915}
!915 = metadata !{i32 568, i32 0, metadata !394, metadata !837}
!916 = metadata !{i32 566, i32 0, metadata !913, metadata !837}
!917 = metadata !{i32 786688, metadata !36, metadata !"currSlice", metadata !37, i32 52, metadata !42, i32 0, metadata !915} ; [ DW_TAG_auto_variable ] [currSlice] [line 52]
!918 = metadata !{i32 54, i32 0, metadata !36, metadata !915}
!919 = metadata !{i32 55, i32 0, metadata !36, metadata !915}
!920 = metadata !{i32 571, i32 0, metadata !394, metadata !837}
!921 = metadata !{i32 576, i32 0, metadata !405, metadata !837}
!922 = metadata !{i32 578, i32 0, metadata !405, metadata !837}
!923 = metadata !{i32 580, i32 0, metadata !924, metadata !837}
!924 = metadata !{i32 786443, metadata !1, metadata !925, i32 580, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!925 = metadata !{i32 786443, metadata !1, metadata !405, i32 579, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!926 = metadata !{i32 582, i32 0, metadata !927, metadata !837}
!927 = metadata !{i32 786443, metadata !1, metadata !924, i32 581, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!928 = metadata !{i32 583, i32 0, metadata !927, metadata !837}
!929 = metadata !{i32 584, i32 0, metadata !927, metadata !837}
!930 = metadata !{i32 587, i32 0, metadata !925, metadata !837}
!931 = metadata !{i32 589, i32 0, metadata !932, metadata !837}
!932 = metadata !{i32 786443, metadata !1, metadata !933, i32 589, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!933 = metadata !{i32 786443, metadata !1, metadata !925, i32 588, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!934 = metadata !{i32 591, i32 0, metadata !935, metadata !837}
!935 = metadata !{i32 786443, metadata !1, metadata !932, i32 590, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!936 = metadata !{i32 592, i32 0, metadata !935, metadata !837}
!937 = metadata !{i32 593, i32 0, metadata !935, metadata !837}
!938 = metadata !{i32 598, i32 0, metadata !405, metadata !837}
!939 = metadata !{i32 600, i32 0, metadata !940, metadata !837}
!940 = metadata !{i32 786443, metadata !1, metadata !405, i32 599, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!941 = metadata !{i32 786688, metadata !405, metadata !"num_ref", metadata !37, i32 574, metadata !47, i32 0, metadata !837} ; [ DW_TAG_auto_variable ] [num_ref] [line 574]
!942 = metadata !{i32 601, i32 0, metadata !940, metadata !837}
!943 = metadata !{i32 608, i32 0, metadata !940, metadata !837}
!944 = metadata !{i32 615, i32 0, metadata !940, metadata !837}
!945 = metadata !{i32 617, i32 0, metadata !946, metadata !837}
!946 = metadata !{i32 786443, metadata !1, metadata !940, i32 616, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!947 = metadata !{i32 618, i32 0, metadata !946, metadata !837}
!948 = metadata !{i32 625, i32 0, metadata !946, metadata !837}
!949 = metadata !{i32 636, i32 0, metadata !394, metadata !837}
!950 = metadata !{i32 630, i32 0, metadata !946, metadata !837}
!951 = metadata !{i32 637, i32 0, metadata !394, metadata !837}
!952 = metadata !{i32 639, i32 0, metadata !394, metadata !837}
!953 = metadata !{i32 641, i32 0, metadata !954, metadata !837}
!954 = metadata !{i32 786443, metadata !1, metadata !394, i32 640, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!955 = metadata !{i32 643, i32 0, metadata !956, metadata !837}
!956 = metadata !{i32 786443, metadata !1, metadata !954, i32 642, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!957 = metadata !{i32 645, i32 0, metadata !958, metadata !837}
!958 = metadata !{i32 786443, metadata !1, metadata !956, i32 644, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!959 = metadata !{i32 646, i32 0, metadata !958, metadata !837}
!960 = metadata !{i32 648, i32 0, metadata !958, metadata !837}
!961 = metadata !{i32 651, i32 0, metadata !956, metadata !837}
!962 = metadata !{i32 655, i32 0, metadata !954, metadata !837}
!963 = metadata !{i32 786688, metadata !407, metadata !"i", metadata !37, i32 797, metadata !47, i32 0, metadata !964} ; [ DW_TAG_auto_variable ] [i] [line 797]
!964 = metadata !{i32 658, i32 0, metadata !394, metadata !837}
!965 = metadata !{i32 801, i32 0, metadata !966, metadata !964}
!966 = metadata !{i32 786443, metadata !1, metadata !407, i32 801, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!967 = metadata !{i32 803, i32 0, metadata !968, metadata !964}
!968 = metadata !{i32 786443, metadata !1, metadata !966, i32 802, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!969 = metadata !{i32 809, i32 0, metadata !970, metadata !964}
!970 = metadata !{i32 786443, metadata !1, metadata !407, i32 809, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!971 = metadata !{i32 811, i32 0, metadata !972, metadata !964}
!972 = metadata !{i32 786443, metadata !1, metadata !970, i32 810, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!973 = metadata !{metadata !"long", metadata !766}
!974 = metadata !{i32 804, i32 0, metadata !968, metadata !964}
!975 = metadata !{i32 805, i32 0, metadata !968, metadata !964}
!976 = metadata !{i32 806, i32 0, metadata !968, metadata !964}
!977 = metadata !{i32 812, i32 0, metadata !972, metadata !964}
!978 = metadata !{i32 813, i32 0, metadata !972, metadata !964}
!979 = metadata !{i32 814, i32 0, metadata !972, metadata !964}
!980 = metadata !{i32 817, i32 0, metadata !407, metadata !964}
!981 = metadata !{i32 819, i32 0, metadata !982, metadata !964}
!982 = metadata !{i32 786443, metadata !1, metadata !407, i32 818, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!983 = metadata !{i32 821, i32 0, metadata !984, metadata !964}
!984 = metadata !{i32 786443, metadata !1, metadata !985, i32 821, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!985 = metadata !{i32 786443, metadata !1, metadata !982, i32 820, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!986 = metadata !{i32 823, i32 0, metadata !987, metadata !964}
!987 = metadata !{i32 786443, metadata !1, metadata !984, i32 822, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!988 = metadata !{i32 824, i32 0, metadata !987, metadata !964}
!989 = metadata !{i32 825, i32 0, metadata !987, metadata !964}
!990 = metadata !{i32 826, i32 0, metadata !987, metadata !964}
!991 = metadata !{i32 820, i32 0, metadata !985, metadata !964}
!992 = metadata !{i32 660, i32 0, metadata !394, metadata !837}
!993 = metadata !{i32 661, i32 0, metadata !394, metadata !837}
!994 = metadata !{i32 200, i32 0, metadata !240, null}
!995 = metadata !{i32 202, i32 0, metadata !240, null}
!996 = metadata !{i32 204, i32 0, metadata !997, null}
!997 = metadata !{i32 786443, metadata !1, metadata !240, i32 203, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!998 = metadata !{i32 205, i32 0, metadata !997, null}
!999 = metadata !{i32 220, i32 0, metadata !240, null}
!1000 = metadata !{i32 223, i32 0, metadata !240, null}
!1001 = metadata !{i32 226, i32 0, metadata !240, null}
!1002 = metadata !{i32 227, i32 0, metadata !240, null}
!1003 = metadata !{i32 240, i32 0, metadata !240, null}
!1004 = metadata !{i32 241, i32 0, metadata !240, null}
!1005 = metadata !{i32 244, i32 0, metadata !240, null}
!1006 = metadata !{i32 247, i32 0, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !1, metadata !240, i32 245, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1008 = metadata !{i32 249, i32 0, metadata !1009, null}
!1009 = metadata !{i32 786443, metadata !1, metadata !1007, i32 248, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1010 = metadata !{i32 250, i32 0, metadata !1009, null}
!1011 = metadata !{i32 252, i32 0, metadata !1009, null}
!1012 = metadata !{i32 253, i32 0, metadata !1009, null}
!1013 = metadata !{i32 254, i32 0, metadata !1009, null}
!1014 = metadata !{i32 256, i32 0, metadata !1009, null}
!1015 = metadata !{i32 262, i32 0, metadata !1009, null}
!1016 = metadata !{i32 264, i32 0, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !1009, i32 263, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1018 = metadata !{i32 265, i32 0, metadata !1017, null}
!1019 = metadata !{i32 1}
!1020 = metadata !{i32 268, i32 0, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !1, metadata !1017, i32 266, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1022 = metadata !{i32 269, i32 0, metadata !1021, null}
!1023 = metadata !{i32 270, i32 0, metadata !1017, null}
!1024 = metadata !{i32 271, i32 0, metadata !1017, null}
!1025 = metadata !{i32 272, i32 0, metadata !1017, null}
!1026 = metadata !{i32 276, i32 0, metadata !1027, null}
!1027 = metadata !{i32 786443, metadata !1, metadata !1009, i32 274, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1028 = metadata !{i32 277, i32 0, metadata !1027, null}
!1029 = metadata !{i32 280, i32 0, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !1, metadata !1027, i32 279, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1031 = metadata !{i32 281, i32 0, metadata !1030, null}
!1032 = metadata !{i32 282, i32 0, metadata !1030, null}
!1033 = metadata !{i32 316, i32 0, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !1, metadata !1007, i32 286, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1035 = metadata !{i32 320, i32 0, metadata !1036, null}
!1036 = metadata !{i32 786443, metadata !1, metadata !1034, i32 317, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1037 = metadata !{i32 323, i32 0, metadata !1036, null}
!1038 = metadata !{i32 324, i32 0, metadata !1036, null}
!1039 = metadata !{i32 327, i32 0, metadata !1036, null}
!1040 = metadata !{i32 328, i32 0, metadata !1036, null}
!1041 = metadata !{i32 330, i32 0, metadata !1036, null}
!1042 = metadata !{i32 332, i32 0, metadata !1036, null}
!1043 = metadata !{i32 333, i32 0, metadata !1036, null}
!1044 = metadata !{i32 334, i32 0, metadata !1036, null}
!1045 = metadata !{metadata !"double", metadata !766}
!1046 = metadata !{i32 338, i32 0, metadata !1036, null}
!1047 = metadata !{i32 341, i32 0, metadata !1036, null}
!1048 = metadata !{i32 343, i32 0, metadata !1036, null}
!1049 = metadata !{i32 344, i32 0, metadata !1036, null}
!1050 = metadata !{i32 345, i32 0, metadata !1036, null}
!1051 = metadata !{i32 346, i32 0, metadata !1036, null}
!1052 = metadata !{i32 351, i32 0, metadata !1034, null}
!1053 = metadata !{i32 349, i32 0, metadata !1036, null}
!1054 = metadata !{i32 354, i32 0, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !1, metadata !1034, i32 352, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1056 = metadata !{i32 358, i32 0, metadata !1055, null}
!1057 = metadata !{i32 359, i32 0, metadata !1055, null}
!1058 = metadata !{i32 360, i32 0, metadata !1055, null}
!1059 = metadata !{i32 361, i32 0, metadata !1055, null}
!1060 = metadata !{i32 362, i32 0, metadata !1055, null}
!1061 = metadata !{i32 363, i32 0, metadata !1055, null}
!1062 = metadata !{i32 364, i32 0, metadata !1055, null}
!1063 = metadata !{i32 367, i32 0, metadata !1055, null}
!1064 = metadata !{i32 369, i32 0, metadata !1055, null}
!1065 = metadata !{i32 370, i32 0, metadata !1055, null}
!1066 = metadata !{i32 373, i32 0, metadata !1055, null}
!1067 = metadata !{i32 375, i32 0, metadata !1055, null}
!1068 = metadata !{i32 376, i32 0, metadata !1055, null}
!1069 = metadata !{i32 377, i32 0, metadata !1055, null}
!1070 = metadata !{i32 378, i32 0, metadata !1055, null}
!1071 = metadata !{i32 379, i32 0, metadata !1055, null}
!1072 = metadata !{i32 388, i32 0, metadata !1034, null}
!1073 = metadata !{i32 381, i32 0, metadata !1055, null}
!1074 = metadata !{i32 384, i32 0, metadata !1034, null}
!1075 = metadata !{i32 390, i32 0, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !1, metadata !1034, i32 389, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1077 = metadata !{i32 391, i32 0, metadata !1076, null}
!1078 = metadata !{i32 392, i32 0, metadata !1076, null}
!1079 = metadata !{i32 393, i32 0, metadata !1076, null}
!1080 = metadata !{i32 394, i32 0, metadata !1076, null}
!1081 = metadata !{i32 395, i32 0, metadata !1076, null}
!1082 = metadata !{i32 398, i32 0, metadata !1076, null}
!1083 = metadata !{i32 399, i32 0, metadata !1076, null}
!1084 = metadata !{i32 402, i32 0, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !1, metadata !1034, i32 401, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1086 = metadata !{i32 403, i32 0, metadata !1085, null}
!1087 = metadata !{i32 407, i32 0, metadata !1034, null}
!1088 = metadata !{i32 409, i32 0, metadata !1034, null}
!1089 = metadata !{i32 410, i32 0, metadata !1034, null}
!1090 = metadata !{i32 415, i32 0, metadata !1034, null}
!1091 = metadata !{i32 418, i32 0, metadata !1034, null}
!1092 = metadata !{i32 420, i32 0, metadata !1034, null}
!1093 = metadata !{i32 421, i32 0, metadata !1034, null}
!1094 = metadata !{i32 422, i32 0, metadata !1034, null}
!1095 = metadata !{i32 424, i32 0, metadata !1034, null}
!1096 = metadata !{i32 425, i32 0, metadata !1034, null}
!1097 = metadata !{i32 428, i32 0, metadata !1034, null}
!1098 = metadata !{i32 430, i32 0, metadata !1034, null}
!1099 = metadata !{i32 431, i32 0, metadata !1034, null}
!1100 = metadata !{i32 433, i32 0, metadata !1034, null}
!1101 = metadata !{i32 434, i32 0, metadata !1034, null}
!1102 = metadata !{i32 436, i32 0, metadata !1034, null}
!1103 = metadata !{i32 437, i32 0, metadata !1034, null}
!1104 = metadata !{i32 438, i32 0, metadata !1034, null}
!1105 = metadata !{i32 439, i32 0, metadata !1034, null}
!1106 = metadata !{i32 441, i32 0, metadata !1034, null}
!1107 = metadata !{i32 448, i32 0, metadata !1034, null}
!1108 = metadata !{i32 443, i32 0, metadata !1109, null}
!1109 = metadata !{i32 786443, metadata !1, metadata !1034, i32 442, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1110 = metadata !{i32 444, i32 0, metadata !1109, null}
!1111 = metadata !{i32 445, i32 0, metadata !1109, null}
!1112 = metadata !{i32 446, i32 0, metadata !1109, null}
!1113 = metadata !{i32 447, i32 0, metadata !1109, null}
!1114 = metadata !{i32 452, i32 0, metadata !1034, null}
!1115 = metadata !{i32 453, i32 0, metadata !1034, null}
!1116 = metadata !{i32 455, i32 0, metadata !1034, null}
!1117 = metadata !{i32 456, i32 0, metadata !1034, null}
!1118 = metadata !{i32 468, i32 0, metadata !240, null}
!1119 = metadata !{i32 469, i32 0, metadata !240, null}
!1120 = metadata !{i32 731, i32 0, metadata !269, null}
!1121 = metadata !{i32 735, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !269, i32 735, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1123 = metadata !{i32 737, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1, metadata !1122, i32 736, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1125 = metadata !{i32 786689, metadata !387, metadata !"slice", metadata !37, i32 16777968, metadata !42, i32 0, metadata !1123} ; [ DW_TAG_arg_variable ] [slice] [line 752]
!1126 = metadata !{i32 752, i32 0, metadata !387, metadata !1123}
!1127 = metadata !{i32 757, i32 0, metadata !387, metadata !1123}
!1128 = metadata !{i32 759, i32 0, metadata !1129, metadata !1123}
!1129 = metadata !{i32 786443, metadata !1, metadata !1130, i32 759, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1130 = metadata !{i32 786443, metadata !1, metadata !387, i32 758, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1131 = metadata !{i32 761, i32 0, metadata !1132, metadata !1123}
!1132 = metadata !{i32 786443, metadata !1, metadata !1129, i32 760, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1133 = metadata !{i32 786688, metadata !387, metadata !"dataPart", metadata !37, i32 755, metadata !54, i32 0, metadata !1123} ; [ DW_TAG_auto_variable ] [dataPart] [line 755]
!1134 = metadata !{i32 762, i32 0, metadata !1132, metadata !1123}
!1135 = metadata !{i32 764, i32 0, metadata !1136, metadata !1123}
!1136 = metadata !{i32 786443, metadata !1, metadata !1132, i32 763, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1137 = metadata !{i32 765, i32 0, metadata !1136, metadata !1123}
!1138 = metadata !{i32 766, i32 0, metadata !1136, metadata !1123}
!1139 = metadata !{i32 767, i32 0, metadata !1136, metadata !1123}
!1140 = metadata !{i32 770, i32 0, metadata !1130, metadata !1123}
!1141 = metadata !{i32 771, i32 0, metadata !1130, metadata !1123}
!1142 = metadata !{i32 772, i32 0, metadata !1130, metadata !1123}
!1143 = metadata !{i32 774, i32 0, metadata !1144, metadata !1123}
!1144 = metadata !{i32 786443, metadata !1, metadata !1130, i32 773, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1145 = metadata !{i32 775, i32 0, metadata !1144, metadata !1123}
!1146 = metadata !{i32 776, i32 0, metadata !1144, metadata !1123}
!1147 = metadata !{i32 778, i32 0, metadata !1130, metadata !1123}
!1148 = metadata !{i32 779, i32 0, metadata !1130, metadata !1123}
!1149 = metadata !{i32 738, i32 0, metadata !1124, null}
!1150 = metadata !{i32 740, i32 0, metadata !269, null}
!1151 = metadata !{i32 789, i32 0, metadata !275, null}
!1152 = metadata !{i32 791, i32 0, metadata !275, null}
!1153 = metadata !{i32 792, i32 0, metadata !275, null}
!1154 = metadata !{i32 793, i32 0, metadata !275, null}
!1155 = metadata !{i32 838, i32 0, metadata !282, null}
!1156 = metadata !{i32 844, i32 0, metadata !282, null}
!1157 = metadata !{i32 845, i32 0, metadata !282, null}
!1158 = metadata !{i32 846, i32 0, metadata !282, null}
!1159 = metadata !{i32 847, i32 0, metadata !282, null}
!1160 = metadata !{i32 849, i32 0, metadata !282, null}
!1161 = metadata !{i32 853, i32 0, metadata !282, null}
!1162 = metadata !{i32 855, i32 0, metadata !282, null}
!1163 = metadata !{i32 857, i32 0, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !1, metadata !282, i32 856, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1165 = metadata !{i32 858, i32 0, metadata !1164, null}
!1166 = metadata !{i32 859, i32 0, metadata !1164, null}
!1167 = metadata !{i32 862, i32 0, metadata !1168, null}
!1168 = metadata !{i32 786443, metadata !1, metadata !282, i32 861, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1169 = metadata !{i32 863, i32 0, metadata !1168, null}
!1170 = metadata !{i32 866, i32 0, metadata !282, null}
!1171 = metadata !{i32 869, i32 0, metadata !1172, null}
!1172 = metadata !{i32 786443, metadata !1, metadata !282, i32 869, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1173 = metadata !{i32 878, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !1, metadata !282, i32 878, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1175 = metadata !{i32 880, i32 0, metadata !1176, null}
!1176 = metadata !{i32 786443, metadata !1, metadata !1174, i32 879, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1177 = metadata !{i32 884, i32 0, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !1, metadata !1176, i32 883, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1179 = metadata !{i32 886, i32 0, metadata !1178, null}
!1180 = metadata !{i32 871, i32 0, metadata !1181, null}
!1181 = metadata !{i32 786443, metadata !1, metadata !1172, i32 870, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1182 = metadata !{i32 913, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !282, i32 913, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1184 = metadata !{i32 882, i32 0, metadata !1176, null}
!1185 = metadata !{i32 885, i32 0, metadata !1178, null}
!1186 = metadata !{i32 888, i32 0, metadata !1187, null}
!1187 = metadata !{i32 786443, metadata !1, metadata !1178, i32 887, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1188 = metadata !{i32 890, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !1187, i32 889, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1190 = metadata !{i32 891, i32 0, metadata !1189, null}
!1191 = metadata !{i32 894, i32 0, metadata !1192, null}
!1192 = metadata !{i32 786443, metadata !1, metadata !1187, i32 893, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1193 = metadata !{i32 899, i32 0, metadata !1194, null}
!1194 = metadata !{i32 786443, metadata !1, metadata !1178, i32 898, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1195 = metadata !{i32 901, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !1194, i32 900, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1197 = metadata !{i32 902, i32 0, metadata !1196, null}
!1198 = metadata !{i32 905, i32 0, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !1, metadata !1194, i32 904, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1200 = metadata !{i32 937, i32 0, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !1, metadata !282, i32 937, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1202 = metadata !{i32 915, i32 0, metadata !1203, null}
!1203 = metadata !{i32 786443, metadata !1, metadata !1204, i32 915, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1204 = metadata !{i32 786443, metadata !1, metadata !1183, i32 914, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1205 = metadata !{i32 918, i32 0, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !1, metadata !1203, i32 916, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1207 = metadata !{i32 924, i32 0, metadata !1208, null}
!1208 = metadata !{i32 786443, metadata !1, metadata !1206, i32 919, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1209 = metadata !{i32 927, i32 0, metadata !1208, null}
!1210 = metadata !{i32 928, i32 0, metadata !1208, null}
!1211 = metadata !{i32 921, i32 0, metadata !1208, null}
!1212 = metadata !{i32 922, i32 0, metadata !1208, null}
!1213 = metadata !{i32 923, i32 0, metadata !1208, null}
!1214 = metadata !{i32 925, i32 0, metadata !1208, null}
!1215 = metadata !{i32 926, i32 0, metadata !1208, null}
!1216 = metadata !{i32 929, i32 0, metadata !1208, null}
!1217 = metadata !{i32 930, i32 0, metadata !1208, null}
!1218 = metadata !{i32 939, i32 0, metadata !1219, null}
!1219 = metadata !{i32 786443, metadata !1, metadata !1201, i32 938, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1220 = metadata !{i32 941, i32 0, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !1, metadata !1219, i32 940, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1222 = metadata !{i32 946, i32 0, metadata !282, null}
!1223 = metadata !{i32 948, i32 0, metadata !1224, null}
!1224 = metadata !{i32 786443, metadata !1, metadata !1225, i32 948, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1225 = metadata !{i32 786443, metadata !1, metadata !282, i32 947, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1226 = metadata !{i32 999, i32 0, metadata !1225, null}
!1227 = metadata !{i32 1001, i32 0, metadata !1228, null}
!1228 = metadata !{i32 786443, metadata !1, metadata !1225, i32 1001, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1229 = metadata !{i32 950, i32 0, metadata !1230, null}
!1230 = metadata !{i32 786443, metadata !1, metadata !1224, i32 949, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1231 = metadata !{i32 951, i32 0, metadata !1230, null}
!1232 = metadata !{i32 953, i32 0, metadata !1233, null}
!1233 = metadata !{i32 786443, metadata !1, metadata !1230, i32 952, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1234 = metadata !{i32 954, i32 0, metadata !1233, null}
!1235 = metadata !{i32 955, i32 0, metadata !1233, null}
!1236 = metadata !{i32 956, i32 0, metadata !1233, null}
!1237 = metadata !{i32 960, i32 0, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !1, metadata !1230, i32 959, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1239 = metadata !{i32 961, i32 0, metadata !1238, null}
!1240 = metadata !{i32 963, i32 0, metadata !1230, null}
!1241 = metadata !{i32 965, i32 0, metadata !1230, null}
!1242 = metadata !{i32 967, i32 0, metadata !1230, null}
!1243 = metadata !{i32 968, i32 0, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !1, metadata !1230, i32 968, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1245 = metadata !{i32 970, i32 0, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !1, metadata !1244, i32 969, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1247 = metadata !{i32 972, i32 0, metadata !1248, null}
!1248 = metadata !{i32 786443, metadata !1, metadata !1246, i32 971, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1249 = metadata !{i32 973, i32 0, metadata !1248, null}
!1250 = metadata !{i32 974, i32 0, metadata !1248, null}
!1251 = metadata !{i32 976, i32 0, metadata !1230, null}
!1252 = metadata !{i32 977, i32 0, metadata !1253, null}
!1253 = metadata !{i32 786443, metadata !1, metadata !1230, i32 977, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1254 = metadata !{i32 979, i32 0, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !1, metadata !1253, i32 978, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1256 = metadata !{i32 995, i32 0, metadata !1257, null}
!1257 = metadata !{i32 786443, metadata !1, metadata !1258, i32 994, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1258 = metadata !{i32 786443, metadata !1, metadata !1230, i32 993, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1259 = metadata !{i32 993, i32 0, metadata !1258, null}
!1260 = metadata !{i32 1003, i32 0, metadata !1261, null}
!1261 = metadata !{i32 786443, metadata !1, metadata !1228, i32 1002, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1262 = metadata !{i32 1006, i32 0, metadata !1225, null}
!1263 = metadata !{i32 1008, i32 0, metadata !1264, null}
!1264 = metadata !{i32 786443, metadata !1, metadata !1225, i32 1007, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1265 = metadata !{i32 1009, i32 0, metadata !1264, null}
!1266 = metadata !{i32 1012, i32 0, metadata !1267, null}
!1267 = metadata !{i32 786443, metadata !1, metadata !1225, i32 1011, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c]
!1268 = metadata !{i32 1015, i32 0, metadata !282, null}
