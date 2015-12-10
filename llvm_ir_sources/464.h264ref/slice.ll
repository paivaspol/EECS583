; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/slice.c'
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
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@__func__.init_slice = private unnamed_addr constant [11 x i8] c"init_slice\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/slice.c\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"currPic != NULL\00", align 1
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

; Function Attrs: nounwind optsize ssp uwtable
define void @init_ref_pic_list_reordering() #0 {
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !774, !tbaa !775
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !779
  %3 = load %struct.Slice** %2, align 8, !dbg !779, !tbaa !780
  tail call void @llvm.dbg.value(metadata %struct.Slice* %3, i64 0, metadata !222, metadata !785), !dbg !786
  %4 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 10, !dbg !787
  store i32 0, i32* %4, align 4, !dbg !788, !tbaa !789
  %5 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 14, !dbg !791
  store i32 0, i32* %5, align 4, !dbg !792, !tbaa !793
  ret void, !dbg !794
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @start_slice() #0 {
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !795, !tbaa !775
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !796
  %3 = load %struct.Slice** %2, align 8, !dbg !796, !tbaa !780
  tail call void @llvm.dbg.value(metadata %struct.Slice* %3, i64 0, metadata !228, metadata !785), !dbg !797
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !230, metadata !785), !dbg !798
  %4 = load %struct.InputParameters** @input, align 8, !dbg !799, !tbaa !775
  %5 = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 61, !dbg !800
  %6 = load i32* %5, align 4, !dbg !800, !tbaa !801
  %7 = icmp eq i32 %6, 0, !dbg !803
  %8 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 49, !dbg !804
  %9 = load %struct.Picture** %8, align 8, !dbg !804, !tbaa !806
  %10 = getelementptr inbounds %struct.Picture* %9, i64 0, i32 1, !dbg !807
  %11 = load i32* %10, align 4, !dbg !807, !tbaa !808
  %12 = icmp ne i32 %11, 0, !dbg !810
  %13 = or i1 %7, %12, !dbg !811
  %14 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 55, !dbg !812
  %15 = load i32* %14, align 4, !dbg !812, !tbaa !813
  tail call void @RTPUpdateTimestamp(i32 %15) #6, !dbg !814
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !231, metadata !785), !dbg !815
  %16 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 6, !dbg !816
  %17 = select i1 %13, i64 1, i64 3, !dbg !820
  br label %18, !dbg !820

; <label>:18                                      ; preds = %0, %48
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %48 ]
  %header_len.01 = phi i32 [ 0, %0 ], [ %header_len.3, %48 ]
  %19 = load %struct.datapartition** %16, align 8, !dbg !816, !tbaa !821
  %20 = getelementptr inbounds %struct.datapartition* %19, i64 %indvars.iv, i32 0, !dbg !822
  %21 = load %struct.Bitstream** %20, align 8, !dbg !822, !tbaa !823
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %21, i64 0, metadata !229, metadata !785), !dbg !826
  %22 = getelementptr inbounds %struct.Bitstream* %21, i64 0, i32 10, !dbg !827
  store i32 0, i32* %22, align 4, !dbg !828, !tbaa !829
  %23 = trunc i64 %indvars.iv to i32, !dbg !831
  %24 = icmp eq i32 %23, 0, !dbg !831
  br i1 %24, label %25, label %27, !dbg !833

; <label>:25                                      ; preds = %18
  %26 = tail call i32 (i32, ...)* bitcast (i32 (...)* @SliceHeader to i32 (i32, ...)*)(i32 0) #6, !dbg !834
  br label %29, !dbg !835

; <label>:27                                      ; preds = %18
  %28 = tail call i32 (i32, ...)* bitcast (i32 (...)* @Partition_BC_Header to i32 (i32, ...)*)(i32 %23) #6, !dbg !836
  br label %29

; <label>:29                                      ; preds = %27, %25
  %.pn = phi i32 [ %26, %25 ], [ %28, %27 ]
  %header_len.1 = add nsw i32 %.pn, %header_len.01, !dbg !837
  %30 = load %struct.InputParameters** @input, align 8, !dbg !838, !tbaa !775
  %31 = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 59, !dbg !840
  %32 = load i32* %31, align 4, !dbg !840, !tbaa !841
  %33 = icmp eq i32 %32, 1, !dbg !842
  br i1 %33, label %34, label %47, !dbg !843

; <label>:34                                      ; preds = %29
  %35 = load %struct.datapartition** %16, align 8, !dbg !844, !tbaa !821
  %36 = getelementptr inbounds %struct.datapartition* %35, i64 %indvars.iv, i32 1, !dbg !846
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %36, i64 0, metadata !227, metadata !785), !dbg !847
  %37 = getelementptr inbounds %struct.Bitstream* %21, i64 0, i32 1, !dbg !848
  %38 = load i32* %37, align 4, !dbg !848, !tbaa !850
  %39 = icmp eq i32 %38, 8, !dbg !851
  %40 = select i1 %39, i32 0, i32 %38, !dbg !852
  %header_len.1. = add nsw i32 %40, %header_len.1, !dbg !852
  tail call void @writeVlcByteAlign(%struct.Bitstream* %21) #6, !dbg !853
  %41 = getelementptr inbounds %struct.Bitstream* %21, i64 0, i32 9, !dbg !854
  %42 = load i8** %41, align 8, !dbg !854, !tbaa !855
  %43 = getelementptr inbounds %struct.Bitstream* %21, i64 0, i32 0, !dbg !856
  %44 = load %struct.ImageParameters** @img, align 8, !dbg !857, !tbaa !775
  %45 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 6, !dbg !858
  %46 = load i32* %45, align 4, !dbg !858, !tbaa !859
  tail call void @arienco_start_encoding(%struct.EncodingEnvironment* %36, i8* %42, i32* %43, i32 %46) #6, !dbg !860
  tail call void (...)* @cabac_new_slice() #6, !dbg !861
  br label %48, !dbg !862

; <label>:47                                      ; preds = %29
  tail call void (...)* @CAVLC_init() #6, !dbg !863
  br label %48

; <label>:48                                      ; preds = %34, %47
  %header_len.3 = phi i32 [ %header_len.1., %34 ], [ %header_len.1, %47 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !820
  %49 = icmp slt i64 %indvars.iv.next, %17, !dbg !865
  br i1 %49, label %18, label %50, !dbg !820

; <label>:50                                      ; preds = %48
  %51 = load %struct.InputParameters** @input, align 8, !dbg !866, !tbaa !775
  %52 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 59, !dbg !868
  %53 = load i32* %52, align 4, !dbg !868, !tbaa !841
  %54 = icmp eq i32 %53, 1, !dbg !869
  br i1 %54, label %55, label %56, !dbg !870

; <label>:55                                      ; preds = %50
  tail call void (...)* @init_contexts() #6, !dbg !871
  br label %56, !dbg !873

; <label>:56                                      ; preds = %55, %50
  ret i32 %header_len.3, !dbg !874
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

; Function Attrs: nounwind optsize ssp uwtable
define i32 @terminate_slice() #0 {
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !875, !tbaa !775
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !876
  %3 = load %struct.Slice** %2, align 8, !dbg !876, !tbaa !780
  tail call void @llvm.dbg.value(metadata %struct.Slice* %3, i64 0, metadata !237, metadata !785), !dbg !877
  %4 = load %struct.InputParameters** @input, align 8, !dbg !878, !tbaa !775
  %5 = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 59, !dbg !880
  %6 = load i32* %5, align 4, !dbg !880, !tbaa !841
  %7 = icmp eq i32 %6, 1, !dbg !881
  br i1 %7, label %8, label %.preheader, !dbg !882

; <label>:8                                       ; preds = %0
  tail call void @write_terminating_bit(i16 signext 1) #6, !dbg !883
  br label %.preheader, !dbg !883

.preheader:                                       ; preds = %8, %0
  %9 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 4, !dbg !884
  %10 = load i32* %9, align 4, !dbg !884, !tbaa !887
  %11 = icmp sgt i32 %10, 0, !dbg !888
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !889

.lr.ph:                                           ; preds = %.preheader
  %12 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 6, !dbg !890
  br label %13, !dbg !889

; <label>:13                                      ; preds = %.lr.ph, %54
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %54 ]
  %14 = load %struct.datapartition** %12, align 8, !dbg !890, !tbaa !821
  %15 = getelementptr inbounds %struct.datapartition* %14, i64 %indvars.iv, i32 0, !dbg !892
  %16 = load %struct.Bitstream** %15, align 8, !dbg !892, !tbaa !823
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %16, i64 0, metadata !236, metadata !785), !dbg !893
  %17 = load %struct.InputParameters** @input, align 8, !dbg !894, !tbaa !775
  %18 = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 59, !dbg !896
  %19 = load i32* %18, align 4, !dbg !896, !tbaa !841
  %20 = icmp eq i32 %19, 0, !dbg !897
  br i1 %20, label %21, label %34, !dbg !898

; <label>:21                                      ; preds = %13
  tail call void @SODBtoRBSP(%struct.Bitstream* %16) #6, !dbg !899
  %22 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 0, !dbg !901
  %23 = load i32* %22, align 4, !dbg !901, !tbaa !902
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !240, metadata !785), !dbg !903
  %24 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 9, !dbg !904
  %25 = load i8** %24, align 8, !dbg !904, !tbaa !855
  %26 = tail call i32 @RBSPtoEBSP(i8* %25, i32 0, i32 %23, i32 0) #6, !dbg !905
  store i32 %26, i32* %22, align 4, !dbg !906, !tbaa !902
  %27 = sub nsw i32 %26, %23, !dbg !907
  %28 = shl i32 %27, 3, !dbg !908
  %29 = load %struct.StatParameters** @stats, align 8, !dbg !909, !tbaa !775
  %30 = getelementptr inbounds %struct.StatParameters* %29, i64 0, i32 31, !dbg !910
  %31 = load i32** %30, align 8, !dbg !910, !tbaa !911
  %32 = load i32* %31, align 4, !dbg !913, !tbaa !914
  %33 = add nsw i32 %32, %28, !dbg !913
  store i32 %33, i32* %31, align 4, !dbg !913, !tbaa !914
  br label %54, !dbg !915

; <label>:34                                      ; preds = %13
  %35 = getelementptr inbounds %struct.datapartition* %14, i64 %indvars.iv, i32 1, !dbg !916
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %35, i64 0, metadata !238, metadata !785), !dbg !918
  tail call void @arienco_done_encoding(%struct.EncodingEnvironment* %35) #6, !dbg !919
  %36 = getelementptr inbounds %struct.datapartition* %14, i64 %indvars.iv, i32 1, i32 3, !dbg !920
  %37 = load i32* %36, align 4, !dbg !920, !tbaa !921
  %38 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 1, !dbg !922
  store i32 %37, i32* %38, align 4, !dbg !923, !tbaa !850
  %39 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 2, !dbg !924
  store i8 0, i8* %39, align 1, !dbg !925, !tbaa !926
  %40 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 0, !dbg !927
  %41 = load i32* %40, align 4, !dbg !928, !tbaa !902
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !240, metadata !785), !dbg !903
  %42 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 9, !dbg !929
  %43 = load i8** %42, align 8, !dbg !929, !tbaa !855
  %44 = getelementptr inbounds %struct.datapartition* %14, i64 %indvars.iv, i32 1, i32 16, !dbg !930
  %45 = load i32* %44, align 4, !dbg !930, !tbaa !931
  %46 = tail call i32 @RBSPtoEBSP(i8* %43, i32 0, i32 %41, i32 %45) #6, !dbg !932
  store i32 %46, i32* %40, align 4, !dbg !933, !tbaa !902
  %47 = sub nsw i32 %46, %41, !dbg !934
  %48 = shl i32 %47, 3, !dbg !935
  %49 = load %struct.StatParameters** @stats, align 8, !dbg !936, !tbaa !775
  %50 = getelementptr inbounds %struct.StatParameters* %49, i64 0, i32 31, !dbg !937
  %51 = load i32** %50, align 8, !dbg !937, !tbaa !911
  %52 = load i32* %51, align 4, !dbg !938, !tbaa !914
  %53 = add nsw i32 %52, %48, !dbg !938
  store i32 %53, i32* %51, align 4, !dbg !938, !tbaa !914
  br label %54

; <label>:54                                      ; preds = %21, %34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !889
  %55 = load i32* %9, align 4, !dbg !884, !tbaa !887
  %56 = sext i32 %55 to i64, !dbg !888
  %57 = icmp slt i64 %indvars.iv.next, %56, !dbg !888
  br i1 %57, label %13, label %._crit_edge, !dbg !889

._crit_edge:                                      ; preds = %54, %.preheader
  %58 = load %struct.InputParameters** @input, align 8, !dbg !939, !tbaa !775
  %59 = getelementptr inbounds %struct.InputParameters* %58, i64 0, i32 59, !dbg !941
  %60 = load i32* %59, align 4, !dbg !941, !tbaa !841
  %61 = icmp eq i32 %60, 1, !dbg !942
  br i1 %61, label %62, label %63, !dbg !943

; <label>:62                                      ; preds = %._crit_edge
  tail call void (...)* @store_contexts() #6, !dbg !944
  br label %63, !dbg !946

; <label>:63                                      ; preds = %62, %._crit_edge
  ret i32 0, !dbg !947
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

; Function Attrs: nounwind optsize ssp uwtable
define i32 @encode_one_slice(i32 %SliceGroupId, %struct.Picture* nocapture readnone %pic) #0 {
  %end_of_slice = alloca i32, align 4
  %recode_macroblock = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %SliceGroupId, i64 0, metadata !260, metadata !785), !dbg !948
  tail call void @llvm.dbg.value(metadata %struct.Picture* %pic, i64 0, metadata !261, metadata !785), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !262, metadata !785), !dbg !950
  store i32 0, i32* %end_of_slice, align 4, !dbg !950, !tbaa !951
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !265, metadata !785), !dbg !952
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !953, !tbaa !775
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 27, !dbg !954
  store i32 0, i32* %2, align 4, !dbg !955, !tbaa !956
  %3 = tail call i32 @FmoGetFirstMacroblockInSlice(i32 %SliceGroupId) #6, !dbg !957
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !266, metadata !785), !dbg !958
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !393, metadata !785) #3, !dbg !959
  %4 = load %struct.ImageParameters** @img, align 8, !dbg !961, !tbaa !775
  %5 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 49, !dbg !962
  %6 = load %struct.Picture** %5, align 8, !dbg !962, !tbaa !806
  tail call void @llvm.dbg.value(metadata %struct.Picture* %6, i64 0, metadata !395, metadata !785) #3, !dbg !963
  %7 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 3, !dbg !964
  store i32 %3, i32* %7, align 4, !dbg !965, !tbaa !966
  %8 = icmp eq %struct.Picture* %6, null, !dbg !967
  br i1 %8, label %9, label %10, !dbg !967, !prof !968

; <label>:9                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([11 x i8]* @__func__.init_slice, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 496, i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !967
  unreachable, !dbg !967

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.Picture* %6, i64 0, i32 0, !dbg !969
  %12 = load i32* %11, align 4, !dbg !970, !tbaa !971
  %13 = add nsw i32 %12, 1, !dbg !970
  store i32 %13, i32* %11, align 4, !dbg !970, !tbaa !971
  %14 = icmp sgt i32 %12, 98, !dbg !972
  br i1 %14, label %15, label %16, !dbg !974

; <label>:15                                      ; preds = %10
  tail call void @error(i8* getelementptr inbounds ([71 x i8]* @.str3, i64 0, i64 0), i32 -1) #6, !dbg !975
  %.pre.i = load %struct.ImageParameters** @img, align 8, !dbg !976, !tbaa !775
  br label %16, !dbg !975

; <label>:16                                      ; preds = %15, %10
  %17 = phi %struct.ImageParameters* [ %.pre.i, %15 ], [ %4, %10 ], !dbg !978
  %18 = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 13, !dbg !979
  %19 = load i32* %18, align 4, !dbg !979, !tbaa !980
  %20 = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 15, !dbg !981
  %21 = load i32* %20, align 4, !dbg !981, !tbaa !982
  %22 = shl i32 %19, 2, !dbg !983
  %23 = mul i32 %22, %21, !dbg !984
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !410, metadata !785) #3, !dbg !985
  %24 = tail call i8* @calloc(i64 1, i64 152) #6, !dbg !986
  %25 = icmp eq i8* %24, null, !dbg !988
  br i1 %25, label %26, label %27, !dbg !989

; <label>:26                                      ; preds = %16
  tail call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !990
  br label %27, !dbg !990

; <label>:27                                      ; preds = %26, %16
  %28 = load %struct.InputParameters** @input, align 8, !dbg !991, !tbaa !775
  %29 = getelementptr inbounds %struct.InputParameters* %28, i64 0, i32 59, !dbg !993
  %30 = load i32* %29, align 4, !dbg !993, !tbaa !841
  %31 = icmp eq i32 %30, 1, !dbg !994
  br i1 %31, label %32, label %39, !dbg !995

; <label>:32                                      ; preds = %27
  %33 = tail call %struct.MotionInfoContexts* @create_contexts_MotionInfo() #6, !dbg !996
  %34 = getelementptr inbounds i8* %24, i64 32, !dbg !998
  %35 = bitcast i8* %34 to %struct.MotionInfoContexts**, !dbg !998
  store %struct.MotionInfoContexts* %33, %struct.MotionInfoContexts** %35, align 8, !dbg !999, !tbaa !1000
  %36 = tail call %struct.TextureInfoContexts* @create_contexts_TextureInfo() #6, !dbg !1001
  %37 = getelementptr inbounds i8* %24, i64 40, !dbg !1002
  %38 = bitcast i8* %37 to %struct.TextureInfoContexts**, !dbg !1002
  store %struct.TextureInfoContexts* %36, %struct.TextureInfoContexts** %38, align 8, !dbg !1003, !tbaa !1004
  %.pre.i.i = load %struct.InputParameters** @input, align 8, !dbg !1005, !tbaa !775
  br label %39, !dbg !1006

; <label>:39                                      ; preds = %32, %27
  %40 = phi %struct.InputParameters* [ %.pre.i.i, %32 ], [ %28, %27 ], !dbg !1007
  %41 = getelementptr inbounds %struct.InputParameters* %40, i64 0, i32 61, !dbg !1008
  %42 = load i32* %41, align 4, !dbg !1008, !tbaa !801
  %43 = icmp eq i32 %42, 0, !dbg !1009
  %44 = select i1 %43, i32 1, i32 3, !dbg !1005
  %45 = getelementptr inbounds i8* %24, i64 16, !dbg !1010
  %46 = bitcast i8* %45 to i32*, !dbg !1010
  %47 = load %struct.ImageParameters** @img, align 8, !dbg !1011, !tbaa !775
  %48 = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 49, !dbg !1013
  %49 = load %struct.Picture** %48, align 8, !dbg !1013, !tbaa !806
  %50 = getelementptr inbounds %struct.Picture* %49, i64 0, i32 1, !dbg !1014
  %51 = load i32* %50, align 4, !dbg !1014, !tbaa !808
  %52 = icmp eq i32 %51, 0, !dbg !1011
  %..i.i = select i1 %52, i32 %44, i32 1, !dbg !1015
  store i32 %..i.i, i32* %46, align 4, !dbg !1016, !tbaa !887
  store i32* getelementptr inbounds ([21 x i32]* @assignSE2partition_NoDP, i64 0, i64 0), i32** getelementptr inbounds ([2 x i32*]* @assignSE2partition, i64 0, i64 0), align 8, !dbg !1017, !tbaa !775
  %53 = load %struct.Picture** %48, align 8, !dbg !1018, !tbaa !806
  %54 = getelementptr inbounds %struct.Picture* %53, i64 0, i32 1, !dbg !1020
  %55 = load i32* %54, align 4, !dbg !1020, !tbaa !808
  %56 = icmp eq i32 %55, 0, !dbg !1021
  %57 = icmp eq i32 %42, 1, !dbg !1022
  %or.cond.i.i = and i1 %57, %56, !dbg !1023
  %storemerge.i.i = select i1 %or.cond.i.i, i32* getelementptr inbounds ([21 x i32]* @assignSE2partition_DP, i64 0, i64 0), i32* getelementptr inbounds ([21 x i32]* @assignSE2partition_NoDP, i64 0, i64 0), !dbg !1023
  store i32* %storemerge.i.i, i32** getelementptr inbounds ([2 x i32*]* @assignSE2partition, i64 0, i64 1), align 8, !dbg !1024, !tbaa !775
  %58 = getelementptr inbounds i8* %24, i64 20, !dbg !1025
  %59 = bitcast i8* %58 to i32*, !dbg !1025
  store i32 0, i32* %59, align 4, !dbg !1026, !tbaa !1027
  %60 = zext i32 %..i.i to i64, !dbg !1028
  %61 = tail call i8* @calloc(i64 %60, i64 120) #6, !dbg !1030
  %62 = getelementptr inbounds i8* %24, i64 24, !dbg !1031
  %63 = bitcast i8* %62 to i8**, !dbg !1032
  store i8* %61, i8** %63, align 8, !dbg !1032, !tbaa !821
  %64 = icmp eq i8* %61, null, !dbg !1033
  %65 = bitcast i8* %61 to %struct.datapartition*, !dbg !1007
  br i1 %64, label %66, label %.lr.ph.i.i, !dbg !1034

; <label>:66                                      ; preds = %39
  tail call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !1035
  br label %.lr.ph.i.i, !dbg !1035

.lr.ph.i.i:                                       ; preds = %66, %39
  %67 = sext i32 %23 to i64, !dbg !1036
  br label %68, !dbg !1041

; <label>:68                                      ; preds = %81, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %81 ], !dbg !1007
  %69 = tail call i8* @calloc(i64 1, i64 48) #6, !dbg !1042
  %70 = getelementptr inbounds %struct.datapartition* %65, i64 %indvars.iv.i.i, i32 0, !dbg !1044
  %71 = bitcast %struct.Bitstream** %70 to i8**, !dbg !1045
  store i8* %69, i8** %71, align 8, !dbg !1045, !tbaa !823
  %72 = icmp eq i8* %69, null, !dbg !1046
  %73 = bitcast i8* %69 to %struct.Bitstream*, !dbg !978
  br i1 %72, label %74, label %75, !dbg !1047

; <label>:74                                      ; preds = %68
  tail call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !1048
  %.pre20.i = load %struct.Bitstream** %70, align 8, !dbg !1049, !tbaa !823
  br label %75, !dbg !1048

; <label>:75                                      ; preds = %74, %68
  %76 = phi %struct.Bitstream* [ %.pre20.i, %74 ], [ %73, %68 ], !dbg !978
  %77 = tail call i8* @calloc(i64 %67, i64 1) #6, !dbg !1050
  %78 = getelementptr inbounds %struct.Bitstream* %76, i64 0, i32 9, !dbg !1051
  store i8* %77, i8** %78, align 8, !dbg !1052, !tbaa !855
  %79 = icmp eq i8* %77, null, !dbg !1053
  br i1 %79, label %80, label %81, !dbg !1054

; <label>:80                                      ; preds = %75
  tail call void @no_mem_exit(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !1055
  br label %81, !dbg !1055

; <label>:81                                      ; preds = %80, %75
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !1041
  %82 = icmp slt i64 %indvars.iv.next.i.i, %60, !dbg !1056
  br i1 %82, label %68, label %malloc_slice.exit.i, !dbg !1041

malloc_slice.exit.i:                              ; preds = %81
  %83 = load i32* %11, align 4, !dbg !1057, !tbaa !971
  %84 = add nsw i32 %83, -1, !dbg !1058
  %85 = sext i32 %84 to i64, !dbg !1059
  %86 = getelementptr inbounds %struct.Picture* %6, i64 0, i32 2, i64 %85, !dbg !1059
  %87 = bitcast %struct.Slice** %86 to i8**, !dbg !1060
  store i8* %24, i8** %87, align 8, !dbg !1060, !tbaa !775
  %88 = load i32* %11, align 4, !dbg !1061, !tbaa !971
  %89 = add nsw i32 %88, -1, !dbg !1062
  %90 = sext i32 %89 to i64, !dbg !1063
  %91 = getelementptr inbounds %struct.Picture* %6, i64 0, i32 2, i64 %90, !dbg !1063
  %92 = load %struct.Slice** %91, align 8, !dbg !1063, !tbaa !775
  tail call void @llvm.dbg.value(metadata %struct.Slice* %92, i64 0, metadata !398, metadata !785) #3, !dbg !1064
  %93 = load %struct.ImageParameters** @img, align 8, !dbg !1065, !tbaa !775
  %94 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 50, !dbg !1066
  store %struct.Slice* %92, %struct.Slice** %94, align 8, !dbg !1067, !tbaa !780
  %95 = load %struct.ImageParameters** @img, align 8, !dbg !1068, !tbaa !775
  %96 = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 55, !dbg !1069
  %97 = load i32* %96, align 4, !dbg !1069, !tbaa !813
  %98 = srem i32 %97, 256, !dbg !1070
  %99 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 0, !dbg !1071
  store i32 %98, i32* %99, align 4, !dbg !1072, !tbaa !1073
  %100 = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 10, !dbg !1074
  %101 = load i32* %100, align 4, !dbg !1074, !tbaa !1075
  %102 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 1, !dbg !1076
  store i32 %101, i32* %102, align 4, !dbg !1077, !tbaa !1078
  %103 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 3, !dbg !1079
  store i32 %3, i32* %103, align 4, !dbg !1080, !tbaa !1081
  %104 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 18, !dbg !1082
  store i32 (i32)* @dummy_slice_too_big, i32 (i32)** %104, align 8, !dbg !1083, !tbaa !1084
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !394, metadata !785) #3, !dbg !1085
  %105 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 4, !dbg !1086
  %106 = load i32* %105, align 4, !dbg !1086, !tbaa !887
  %107 = icmp sgt i32 %106, 0, !dbg !1089
  br i1 %107, label %.lr.ph12.i, label %._crit_edge13.i, !dbg !1090

.lr.ph12.i:                                       ; preds = %malloc_slice.exit.i
  %108 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 6, !dbg !1091
  %.pre21.i = load %struct.datapartition** %108, align 8, !dbg !1091, !tbaa !821
  %109 = sext i32 %106 to i64
  %110 = add nsw i64 %109, -1, !dbg !1090
  br label %111, !dbg !1090

; <label>:111                                     ; preds = %111, %.lr.ph12.i
  %indvars.iv18.i = phi i64 [ 0, %.lr.ph12.i ], [ %indvars.iv.next19.i, %111 ], !dbg !978
  %112 = load %struct.InputParameters** @input, align 8, !dbg !1093, !tbaa !775
  %113 = getelementptr inbounds %struct.InputParameters* %112, i64 0, i32 59, !dbg !1095
  %114 = load i32* %113, align 4, !dbg !1095, !tbaa !841
  %115 = icmp eq i32 %114, 0, !dbg !1096
  %116 = getelementptr inbounds %struct.datapartition* %.pre21.i, i64 %indvars.iv18.i, i32 2, !dbg !1097
  %writeSyntaxElement_UVLC.writeSyntaxElement_CABAC.i = select i1 %115, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_UVLC, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_CABAC, !dbg !1098
  store i32 (%struct.syntaxelement*, %struct.datapartition*)* %writeSyntaxElement_UVLC.writeSyntaxElement_CABAC.i, i32 (%struct.syntaxelement*, %struct.datapartition*)** %116, align 8, !dbg !1099, !tbaa !1100
  %117 = getelementptr inbounds %struct.datapartition* %.pre21.i, i64 %indvars.iv18.i, i32 0, !dbg !1101
  %118 = load %struct.Bitstream** %117, align 8, !dbg !1101, !tbaa !823
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %118, i64 0, metadata !397, metadata !785) #3, !dbg !1102
  %119 = getelementptr inbounds %struct.Bitstream* %118, i64 0, i32 1, !dbg !1103
  store i32 8, i32* %119, align 4, !dbg !1104, !tbaa !850
  %120 = getelementptr inbounds %struct.Bitstream* %118, i64 0, i32 0, !dbg !1105
  store i32 0, i32* %120, align 4, !dbg !1106, !tbaa !902
  %121 = getelementptr inbounds %struct.Bitstream* %118, i64 0, i32 2, !dbg !1107
  store i8 0, i8* %121, align 1, !dbg !1108, !tbaa !926
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1, !dbg !1090
  %exitcond = icmp eq i64 %indvars.iv18.i, %110, !dbg !1090
  br i1 %exitcond, label %._crit_edge13.i, label %111, !dbg !1090

._crit_edge13.i:                                  ; preds = %111, %malloc_slice.exit.i
  %122 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1109, !tbaa !775
  %123 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %122, i64 0, i32 17, !dbg !1110
  %124 = load i32* %123, align 4, !dbg !1110, !tbaa !1111
  %125 = add nsw i32 %124, 1, !dbg !1113
  %126 = load %struct.ImageParameters** @img, align 8, !dbg !1114, !tbaa !775
  %127 = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 79, !dbg !1115
  store i32 %125, i32* %127, align 4, !dbg !1116, !tbaa !1117
  %128 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %122, i64 0, i32 18, !dbg !1118
  %129 = load i32* %128, align 4, !dbg !1118, !tbaa !1119
  %130 = add nsw i32 %129, 1, !dbg !1120
  %131 = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 80, !dbg !1121
  store i32 %130, i32* %131, align 4, !dbg !1122, !tbaa !1123
  %132 = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 6, !dbg !1124
  %133 = load i32* %132, align 4, !dbg !1124, !tbaa !859
  %134 = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 7, !dbg !1125
  %135 = load i32* %134, align 4, !dbg !1125, !tbaa !1126
  tail call void @init_lists(i32 %133, i32 %135) #6, !dbg !1127
  %136 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !1128, !tbaa !914
  %137 = load %struct.ImageParameters** @img, align 8, !dbg !1129, !tbaa !775
  %138 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 79, !dbg !1130
  store i32 %136, i32* %138, align 4, !dbg !1131, !tbaa !1117
  %139 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !1132, !tbaa !914
  %140 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 80, !dbg !1133
  store i32 %139, i32* %140, align 4, !dbg !1134, !tbaa !1123
  %141 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 6, !dbg !1135
  %142 = load i32* %141, align 4, !dbg !1135, !tbaa !859
  switch i32 %142, label %153 [
    i32 0, label %143
    i32 3, label %143
  ], !dbg !1138

; <label>:143                                     ; preds = %._crit_edge13.i, %._crit_edge13.i
  %144 = load %struct.InputParameters** @input, align 8, !dbg !1139, !tbaa !775
  %145 = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 10, !dbg !1140
  %146 = load i32* %145, align 4, !dbg !1140, !tbaa !1141
  %147 = icmp eq i32 %146, 0, !dbg !1139
  br i1 %147, label %153, label %148, !dbg !1142

; <label>:148                                     ; preds = %143
  %149 = icmp slt i32 %136, %146, !dbg !1143
  %..i = select i1 %149, i32 %136, i32 %146, !dbg !1143
  store i32 %..i, i32* %138, align 4, !dbg !1145, !tbaa !1117
  %150 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !1146, !tbaa !914
  %151 = icmp slt i32 %150, %146, !dbg !1146
  %152 = select i1 %151, i32 %150, i32 %146, !dbg !1146
  store i32 %152, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !1147, !tbaa !914
  %.pre22.i = load i32* %141, align 4, !dbg !1148, !tbaa !859
  br label %153, !dbg !1150

; <label>:153                                     ; preds = %148, %143, %._crit_edge13.i
  %154 = phi i32 [ %142, %._crit_edge13.i ], [ %142, %143 ], [ %.pre22.i, %148 ], !dbg !978
  %155 = icmp eq i32 %154, 1, !dbg !1151
  br i1 %155, label %156, label %177, !dbg !1152

; <label>:156                                     ; preds = %153
  %157 = load %struct.InputParameters** @input, align 8, !dbg !1153, !tbaa !775
  %158 = getelementptr inbounds %struct.InputParameters* %157, i64 0, i32 11, !dbg !1156
  %159 = load i32* %158, align 4, !dbg !1156, !tbaa !1157
  %160 = icmp eq i32 %159, 0, !dbg !1153
  br i1 %160, label %167, label %161, !dbg !1158

; <label>:161                                     ; preds = %156
  %162 = load i32* %138, align 4, !dbg !1159, !tbaa !1117
  %163 = icmp slt i32 %162, %159, !dbg !1159
  %.2.i = select i1 %163, i32 %162, i32 %159, !dbg !1159
  store i32 %.2.i, i32* %138, align 4, !dbg !1161, !tbaa !1117
  %164 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !1162, !tbaa !914
  %165 = icmp slt i32 %164, %159, !dbg !1162
  %166 = select i1 %165, i32 %164, i32 %159, !dbg !1162
  store i32 %166, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !1163, !tbaa !914
  br label %167, !dbg !1164

; <label>:167                                     ; preds = %161, %156
  %168 = getelementptr inbounds %struct.InputParameters* %157, i64 0, i32 12, !dbg !1165
  %169 = load i32* %168, align 4, !dbg !1165, !tbaa !1167
  %170 = icmp eq i32 %169, 0, !dbg !1168
  br i1 %170, label %177, label %171, !dbg !1169

; <label>:171                                     ; preds = %167
  %172 = load i32* %140, align 4, !dbg !1170, !tbaa !1123
  %173 = icmp slt i32 %172, %169, !dbg !1170
  %.3.i = select i1 %173, i32 %172, i32 %169, !dbg !1170
  store i32 %.3.i, i32* %140, align 4, !dbg !1172, !tbaa !1123
  %174 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !1173, !tbaa !914
  %175 = icmp slt i32 %174, %169, !dbg !1173
  %176 = select i1 %175, i32 %174, i32 %169, !dbg !1173
  store i32 %176, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !1174, !tbaa !914
  br label %177, !dbg !1175

; <label>:177                                     ; preds = %171, %167, %153
  %178 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 113, !dbg !1176
  %179 = load i32* %178, align 4, !dbg !1176, !tbaa !1178
  %180 = icmp eq i32 %179, 0, !dbg !1179
  br i1 %180, label %197, label %181, !dbg !1180

; <label>:181                                     ; preds = %177
  %182 = load %struct.InputParameters** @input, align 8, !dbg !1181, !tbaa !775
  %183 = getelementptr inbounds %struct.InputParameters* %182, i64 0, i32 55, !dbg !1182
  %184 = load i32* %183, align 4, !dbg !1182, !tbaa !1183
  %185 = icmp eq i32 %184, 0, !dbg !1181
  br i1 %185, label %197, label %186, !dbg !1184

; <label>:186                                     ; preds = %181
  %187 = getelementptr inbounds %struct.InputParameters* %182, i64 0, i32 58, !dbg !1185
  %188 = load i32* %187, align 4, !dbg !1185, !tbaa !1186
  %189 = icmp eq i32 %188, 0, !dbg !1187
  br i1 %189, label %197, label %190, !dbg !1188

; <label>:190                                     ; preds = %186
  %191 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !dbg !1189, !tbaa !1190
  %192 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !dbg !1192, !tbaa !1193
  %193 = icmp eq i32 %191, %192, !dbg !1194
  br i1 %193, label %194, label %197, !dbg !1195

; <label>:194                                     ; preds = %190
  %195 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 105, !dbg !1196
  %196 = load i32* %195, align 4, !dbg !1196, !tbaa !1198
  tail call void @poc_based_ref_management(i32 %196) #6, !dbg !1199
  %.pre23.i = load %struct.ImageParameters** @img, align 8, !dbg !1200, !tbaa !775
  br label %197, !dbg !1202

; <label>:197                                     ; preds = %194, %190, %186, %181, %177
  %198 = phi %struct.ImageParameters* [ %137, %186 ], [ %137, %181 ], [ %137, %177 ], [ %.pre23.i, %194 ], [ %137, %190 ], !dbg !978
  %199 = getelementptr inbounds %struct.ImageParameters* %198, i64 0, i32 50, !dbg !1203
  %200 = load %struct.Slice** %199, align 8, !dbg !1203, !tbaa !780
  tail call void @llvm.dbg.value(metadata %struct.Slice* %200, i64 0, metadata !222, metadata !785) #3, !dbg !1204
  %201 = getelementptr inbounds %struct.Slice* %200, i64 0, i32 10, !dbg !1205
  store i32 0, i32* %201, align 4, !dbg !1206, !tbaa !789
  %202 = getelementptr inbounds %struct.Slice* %200, i64 0, i32 14, !dbg !1207
  store i32 0, i32* %202, align 4, !dbg !1208, !tbaa !793
  %203 = getelementptr inbounds %struct.ImageParameters* %198, i64 0, i32 6, !dbg !1209
  %204 = load i32* %203, align 4, !dbg !1209, !tbaa !859
  %205 = icmp eq i32 %204, 0, !dbg !1210
  br i1 %205, label %206, label %292, !dbg !1211

; <label>:206                                     ; preds = %197
  %207 = load %struct.InputParameters** @input, align 8, !dbg !1212, !tbaa !775
  %208 = getelementptr inbounds %struct.InputParameters* %207, i64 0, i32 55, !dbg !1213
  %209 = load i32* %208, align 4, !dbg !1213, !tbaa !1183
  %210 = icmp eq i32 %209, 0, !dbg !1212
  br i1 %210, label %292, label %211, !dbg !1214

; <label>:211                                     ; preds = %206
  %212 = getelementptr inbounds %struct.InputParameters* %207, i64 0, i32 57, !dbg !1215
  %213 = load i32* %212, align 4, !dbg !1215, !tbaa !1216
  %214 = icmp eq i32 %213, 0, !dbg !1217
  br i1 %214, label %292, label %215, !dbg !1218

; <label>:215                                     ; preds = %211
  tail call void @alloc_ref_pic_list_reordering_buffer(%struct.Slice* %92) #6, !dbg !1219
  %216 = load %struct.ImageParameters** @img, align 8, !dbg !1220, !tbaa !775
  %217 = getelementptr inbounds %struct.ImageParameters* %216, i64 0, i32 6, !dbg !1222
  %218 = load i32* %217, align 4, !dbg !1222, !tbaa !859
  switch i32 %218, label %.preheader7.i [
    i32 2, label %.loopexit.i
    i32 4, label %.loopexit.i
  ], !dbg !1223

.preheader7.i:                                    ; preds = %215
  %219 = getelementptr inbounds %struct.ImageParameters* %216, i64 0, i32 79, !dbg !1224
  %220 = load i32* %219, align 4, !dbg !1224, !tbaa !1117
  %221 = icmp sgt i32 %220, -1, !dbg !1228
  br i1 %221, label %.lr.ph10.i, label %235, !dbg !1229

.lr.ph10.i:                                       ; preds = %.preheader7.i
  %222 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 11, !dbg !1230
  %223 = load i32** %222, align 8, !dbg !1230, !tbaa !1232
  %224 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 12, !dbg !1233
  %225 = load i32** %224, align 8, !dbg !1233, !tbaa !1234
  %226 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 13, !dbg !1235
  %227 = load i32** %226, align 8, !dbg !1235, !tbaa !1236
  br label %228, !dbg !1229

; <label>:228                                     ; preds = %228, %.lr.ph10.i
  %indvars.iv16.i = phi i64 [ 0, %.lr.ph10.i ], [ %indvars.iv.next17.i, %228 ], !dbg !978
  %229 = getelementptr inbounds i32* %223, i64 %indvars.iv16.i, !dbg !1237
  store i32 3, i32* %229, align 4, !dbg !1238, !tbaa !914
  %230 = getelementptr inbounds i32* %225, i64 %indvars.iv16.i, !dbg !1239
  store i32 0, i32* %230, align 4, !dbg !1240, !tbaa !914
  %231 = getelementptr inbounds i32* %227, i64 %indvars.iv16.i, !dbg !1241
  store i32 0, i32* %231, align 4, !dbg !1242, !tbaa !914
  %indvars.iv.next17.i = add nuw i64 %indvars.iv16.i, 1, !dbg !1229
  %232 = load i32* %219, align 4, !dbg !1224, !tbaa !1117
  %233 = sext i32 %232 to i64, !dbg !1228
  %234 = icmp slt i64 %indvars.iv16.i, %233, !dbg !1228
  br i1 %234, label %228, label %._crit_edge.i, !dbg !1229

._crit_edge.i:                                    ; preds = %228
  %.pre24.i = load i32* %217, align 4, !dbg !1243, !tbaa !859
  br label %235, !dbg !1229

; <label>:235                                     ; preds = %._crit_edge.i, %.preheader7.i
  %236 = phi i32 [ %232, %._crit_edge.i ], [ %220, %.preheader7.i ]
  %237 = phi i32 [ %.pre24.i, %._crit_edge.i ], [ %218, %.preheader7.i ], !dbg !978
  %238 = icmp eq i32 %237, 1, !dbg !1245
  br i1 %238, label %.preheader.i, label %.loopexit.i, !dbg !1246

.preheader.i:                                     ; preds = %235
  %239 = getelementptr inbounds %struct.ImageParameters* %216, i64 0, i32 80, !dbg !1247
  %240 = load i32* %239, align 4, !dbg !1247, !tbaa !1123
  %241 = icmp sgt i32 %240, -1, !dbg !1251
  br i1 %241, label %.lr.ph.i, label %.loopexit.thread.i, !dbg !1252

.lr.ph.i:                                         ; preds = %.preheader.i
  %242 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 15, !dbg !1253
  %243 = load i32** %242, align 8, !dbg !1253, !tbaa !1255
  %244 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 16, !dbg !1256
  %245 = load i32** %244, align 8, !dbg !1256, !tbaa !1257
  %246 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 17, !dbg !1258
  %247 = load i32** %246, align 8, !dbg !1258, !tbaa !1259
  br label %248, !dbg !1252

; <label>:248                                     ; preds = %248, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %248 ], !dbg !978
  %249 = getelementptr inbounds i32* %243, i64 %indvars.iv.i, !dbg !1260
  store i32 3, i32* %249, align 4, !dbg !1261, !tbaa !914
  %250 = getelementptr inbounds i32* %245, i64 %indvars.iv.i, !dbg !1262
  store i32 0, i32* %250, align 4, !dbg !1263, !tbaa !914
  %251 = getelementptr inbounds i32* %247, i64 %indvars.iv.i, !dbg !1264
  store i32 0, i32* %251, align 4, !dbg !1265, !tbaa !914
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1, !dbg !1252
  %252 = load i32* %239, align 4, !dbg !1247, !tbaa !1123
  %253 = sext i32 %252 to i64, !dbg !1251
  %254 = icmp slt i64 %indvars.iv.i, %253, !dbg !1251
  br i1 %254, label %248, label %..loopexit_crit_edge.i, !dbg !1252

..loopexit_crit_edge.i:                           ; preds = %248
  %.pre25.pre.i = load i32* %217, align 4, !dbg !1266, !tbaa !859
  br label %.loopexit.i, !dbg !1252

.loopexit.i:                                      ; preds = %..loopexit_crit_edge.i, %235, %215, %215
  %255 = phi i32 [ %218, %215 ], [ %218, %215 ], [ %237, %235 ], [ %.pre25.pre.i, %..loopexit_crit_edge.i ], !dbg !978
  switch i32 %255, label %.loopexit.i..loopexit.thread.i_crit_edge [
    i32 2, label %292
    i32 4, label %292
  ], !dbg !1268

.loopexit.i..loopexit.thread.i_crit_edge:         ; preds = %.loopexit.i
  %.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %216, i64 0, i32 79
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !1269, !tbaa !1117
  br label %.loopexit.thread.i, !dbg !1268

.loopexit.thread.i:                               ; preds = %.loopexit.i..loopexit.thread.i_crit_edge, %.preheader.i
  %256 = phi i32 [ %.pre, %.loopexit.i..loopexit.thread.i_crit_edge ], [ %236, %.preheader.i ]
  tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !402, metadata !785) #3, !dbg !1271
  %257 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !1272, !tbaa !775
  %258 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 11, !dbg !1273
  %259 = load i32** %258, align 8, !dbg !1273, !tbaa !1232
  %260 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 12, !dbg !1274
  %261 = load i32** %260, align 8, !dbg !1274, !tbaa !1234
  %262 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 13, !dbg !1275
  tail call void @poc_ref_pic_reorder(%struct.storable_picture** %257, i32 %256, i32* %259, i32* %261, i32* undef, i32 undef, i32 0) #6, !dbg !1276
  %263 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !1277, !tbaa !775
  %264 = load %struct.ImageParameters** @img, align 8, !dbg !1278, !tbaa !775
  %265 = getelementptr inbounds %struct.ImageParameters* %264, i64 0, i32 79, !dbg !1279
  %266 = load i32* %265, align 4, !dbg !1279, !tbaa !1117
  %267 = add nsw i32 %266, -1, !dbg !1280
  %268 = load i32** %258, align 8, !dbg !1281, !tbaa !1232
  %269 = load i32** %260, align 8, !dbg !1282, !tbaa !1234
  %270 = load i32** %262, align 8, !dbg !1283, !tbaa !1236
  tail call void @reorder_ref_pic_list(%struct.storable_picture** %263, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), i32 %267, i32* %268, i32* %269, i32* %270) #6, !dbg !1284
  %271 = load %struct.ImageParameters** @img, align 8, !dbg !1285, !tbaa !775
  %272 = getelementptr inbounds %struct.ImageParameters* %271, i64 0, i32 6, !dbg !1287
  %273 = load i32* %272, align 4, !dbg !1287, !tbaa !859
  %274 = icmp eq i32 %273, 1, !dbg !1288
  br i1 %274, label %275, label %292, !dbg !1289

; <label>:275                                     ; preds = %.loopexit.thread.i
  %276 = getelementptr inbounds %struct.ImageParameters* %271, i64 0, i32 80, !dbg !1290
  %277 = load i32* %276, align 4, !dbg !1290, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 %277, i64 0, metadata !402, metadata !785) #3, !dbg !1271
  %278 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !dbg !1292, !tbaa !775
  %279 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 15, !dbg !1293
  %280 = load i32** %279, align 8, !dbg !1293, !tbaa !1255
  %281 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 16, !dbg !1294
  %282 = load i32** %281, align 8, !dbg !1294, !tbaa !1257
  %283 = getelementptr inbounds %struct.Slice* %92, i64 0, i32 17, !dbg !1295
  tail call void @poc_ref_pic_reorder(%struct.storable_picture** %278, i32 %277, i32* %280, i32* %282, i32* undef, i32 undef, i32 1) #6, !dbg !1296
  %284 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !dbg !1297, !tbaa !775
  %285 = load %struct.ImageParameters** @img, align 8, !dbg !1298, !tbaa !775
  %286 = getelementptr inbounds %struct.ImageParameters* %285, i64 0, i32 80, !dbg !1299
  %287 = load i32* %286, align 4, !dbg !1299, !tbaa !1123
  %288 = add nsw i32 %287, -1, !dbg !1300
  %289 = load i32** %279, align 8, !dbg !1301, !tbaa !1255
  %290 = load i32** %281, align 8, !dbg !1302, !tbaa !1257
  %291 = load i32** %283, align 8, !dbg !1303, !tbaa !1259
  tail call void @reorder_ref_pic_list(%struct.storable_picture** %284, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), i32 %288, i32* %289, i32* %290, i32* %291) #6, !dbg !1304
  %.pre26.i = load %struct.ImageParameters** @img, align 8, !dbg !1305, !tbaa !775
  br label %292, !dbg !1307

; <label>:292                                     ; preds = %275, %.loopexit.thread.i, %.loopexit.i, %.loopexit.i, %211, %206, %197
  %293 = phi %struct.ImageParameters* [ %216, %.loopexit.i ], [ %216, %.loopexit.i ], [ %198, %211 ], [ %198, %206 ], [ %.pre26.i, %275 ], [ %271, %.loopexit.thread.i ], [ %198, %197 ], !dbg !978
  %294 = getelementptr inbounds %struct.ImageParameters* %293, i64 0, i32 7, !dbg !1308
  %295 = load i32* %294, align 4, !dbg !1308, !tbaa !1126
  %296 = icmp eq i32 %295, 0, !dbg !1309
  br i1 %296, label %297, label %298, !dbg !1310

; <label>:297                                     ; preds = %292
  tail call void (...)* @init_mbaff_lists() #6, !dbg !1311
  %.pre27.i = load %struct.ImageParameters** @img, align 8, !dbg !1312, !tbaa !775
  br label %298, !dbg !1311

; <label>:298                                     ; preds = %297, %292
  %299 = phi %struct.ImageParameters* [ %.pre27.i, %297 ], [ %293, %292 ], !dbg !978
  %300 = getelementptr inbounds %struct.ImageParameters* %299, i64 0, i32 6, !dbg !1314
  %301 = load i32* %300, align 4, !dbg !1314, !tbaa !859
  %302 = icmp eq i32 %301, 2, !dbg !1315
  br i1 %302, label %331, label %303, !dbg !1316

; <label>:303                                     ; preds = %298
  %304 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1317, !tbaa !775
  %305 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %304, i64 0, i32 19, !dbg !1318
  %306 = load i32* %305, align 4, !dbg !1318, !tbaa !1319
  %307 = icmp eq i32 %306, 1, !dbg !1320
  br i1 %307, label %313, label %308, !dbg !1321

; <label>:308                                     ; preds = %303
  %309 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %304, i64 0, i32 20, !dbg !1322
  %310 = load i32* %309, align 4, !dbg !1322, !tbaa !1323
  %311 = icmp ne i32 %310, 0, !dbg !1324
  %312 = icmp eq i32 %301, 1, !dbg !1325
  %or.cond.i = and i1 %312, %311, !dbg !1326
  br i1 %or.cond.i, label %313, label %331, !dbg !1326

; <label>:313                                     ; preds = %308, %303
  switch i32 %301, label %330 [
    i32 0, label %314
    i32 3, label %314
  ], !dbg !1327

; <label>:314                                     ; preds = %313, %313
  %315 = load %struct.InputParameters** @input, align 8, !dbg !1330, !tbaa !775
  %316 = getelementptr inbounds %struct.InputParameters* %315, i64 0, i32 15, !dbg !1333
  %317 = load i32* %316, align 4, !dbg !1333, !tbaa !1334
  %318 = icmp eq i32 %317, 0, !dbg !1330
  br i1 %318, label %329, label %319, !dbg !1335

; <label>:319                                     ; preds = %314
  %320 = getelementptr inbounds %struct.InputParameters* %315, i64 0, i32 49, !dbg !1336
  %321 = load i32* %320, align 4, !dbg !1336, !tbaa !1337
  %322 = icmp eq i32 %321, 0, !dbg !1338
  br i1 %322, label %329, label %323, !dbg !1339

; <label>:323                                     ; preds = %319
  %324 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1340, !tbaa !775
  %325 = load %struct.storable_picture** @enc_frame_picture2, align 8, !dbg !1343, !tbaa !775
  %326 = icmp eq %struct.storable_picture* %324, %325, !dbg !1344
  br i1 %326, label %327, label %328, !dbg !1345

; <label>:327                                     ; preds = %323
  tail call void @estimate_weighting_factor_P_slice(i32 0) #6, !dbg !1346
  br label %331, !dbg !1346

; <label>:328                                     ; preds = %323
  tail call void @estimate_weighting_factor_P_slice(i32 1) #6, !dbg !1347
  br label %331, !dbg !978

; <label>:329                                     ; preds = %319, %314
  tail call void @estimate_weighting_factor_P_slice(i32 0) #6, !dbg !1348
  br label %331, !dbg !978

; <label>:330                                     ; preds = %313
  tail call void (...)* @estimate_weighting_factor_B_slice() #6, !dbg !1349
  br label %331, !dbg !978

; <label>:331                                     ; preds = %330, %329, %328, %327, %308, %298
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !414, metadata !785) #3, !dbg !1350
  %332 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !dbg !1352, !tbaa !914
  %333 = icmp sgt i32 %332, 0, !dbg !1355
  br i1 %333, label %.lr.ph10.i.i, label %.preheader2.i.i, !dbg !1356

.lr.ph10.i.i:                                     ; preds = %331
  %334 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !dbg !1357, !tbaa !775
  %335 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1359, !tbaa !775
  %336 = sext i32 %332 to i64, !dbg !978
  %337 = add nsw i64 %336, -1, !dbg !1356
  br label %344, !dbg !1356

.preheader2.i.i:                                  ; preds = %344, %331
  %338 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !dbg !1360, !tbaa !914
  %339 = icmp sgt i32 %338, 0, !dbg !1363
  br i1 %339, label %.lr.ph6.i.i, label %._crit_edge7.i.i, !dbg !1364

.lr.ph6.i.i:                                      ; preds = %.preheader2.i.i
  %340 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !dbg !1365, !tbaa !775
  %341 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1367, !tbaa !775
  %342 = sext i32 %338 to i64, !dbg !978
  %343 = add nsw i64 %342, -1, !dbg !1364
  br label %373, !dbg !1364

; <label>:344                                     ; preds = %344, %.lr.ph10.i.i
  %indvars.iv15.i.i = phi i64 [ 0, %.lr.ph10.i.i ], [ %indvars.iv.next16.i.i, %344 ], !dbg !1368
  %345 = getelementptr inbounds %struct.storable_picture** %334, i64 %indvars.iv15.i.i, !dbg !1357
  %346 = load %struct.storable_picture** %345, align 8, !dbg !1357, !tbaa !775
  %347 = getelementptr inbounds %struct.storable_picture* %346, i64 0, i32 1, !dbg !1369
  %348 = load i32* %347, align 4, !dbg !1369, !tbaa !1370
  %349 = shl nsw i32 %348, 1, !dbg !1372
  %350 = getelementptr inbounds %struct.storable_picture* %346, i64 0, i32 0, !dbg !1373
  %351 = load i32* %350, align 4, !dbg !1373, !tbaa !1374
  %352 = icmp eq i32 %351, 2, !dbg !1375
  %353 = zext i1 %352 to i32, !dbg !1376
  %354 = or i32 %353, %349, !dbg !1377
  %355 = sext i32 %354 to i64, !dbg !1357
  %356 = getelementptr inbounds %struct.storable_picture* %335, i64 0, i32 6, i64 0, i64 %indvars.iv15.i.i, !dbg !1359
  store i64 %355, i64* %356, align 8, !dbg !1378, !tbaa !1379
  %357 = getelementptr inbounds %struct.storable_picture* %346, i64 0, i32 4, !dbg !1381
  %358 = load i32* %357, align 4, !dbg !1381, !tbaa !1382
  %359 = shl nsw i32 %358, 1, !dbg !1383
  %360 = sext i32 %359 to i64, !dbg !1384
  %361 = getelementptr inbounds %struct.storable_picture* %335, i64 0, i32 7, i64 0, i64 %indvars.iv15.i.i, !dbg !1385
  store i64 %360, i64* %361, align 8, !dbg !1386, !tbaa !1379
  %362 = getelementptr inbounds %struct.storable_picture* %346, i64 0, i32 2, !dbg !1387
  %363 = load i32* %362, align 4, !dbg !1387, !tbaa !1388
  %364 = shl nsw i32 %363, 1, !dbg !1389
  %365 = sext i32 %364 to i64, !dbg !1390
  %366 = getelementptr inbounds %struct.storable_picture* %335, i64 0, i32 8, i64 0, i64 %indvars.iv15.i.i, !dbg !1391
  store i64 %365, i64* %366, align 8, !dbg !1392, !tbaa !1379
  %367 = getelementptr inbounds %struct.storable_picture* %346, i64 0, i32 3, !dbg !1393
  %368 = load i32* %367, align 4, !dbg !1393, !tbaa !1394
  %369 = shl nsw i32 %368, 1, !dbg !1395
  %370 = or i32 %369, 1, !dbg !1396
  %371 = sext i32 %370 to i64, !dbg !1397
  %372 = getelementptr inbounds %struct.storable_picture* %335, i64 0, i32 9, i64 0, i64 %indvars.iv15.i.i, !dbg !1398
  store i64 %371, i64* %372, align 8, !dbg !1399, !tbaa !1379
  %indvars.iv.next16.i.i = add nuw nsw i64 %indvars.iv15.i.i, 1, !dbg !1356
  %exitcond15.i = icmp eq i64 %indvars.iv15.i.i, %337, !dbg !1356
  br i1 %exitcond15.i, label %.preheader2.i.i, label %344, !dbg !1356

; <label>:373                                     ; preds = %373, %.lr.ph6.i.i
  %indvars.iv13.i.i = phi i64 [ 0, %.lr.ph6.i.i ], [ %indvars.iv.next14.i.i, %373 ], !dbg !1368
  %374 = getelementptr inbounds %struct.storable_picture** %340, i64 %indvars.iv13.i.i, !dbg !1365
  %375 = load %struct.storable_picture** %374, align 8, !dbg !1365, !tbaa !775
  %376 = getelementptr inbounds %struct.storable_picture* %375, i64 0, i32 1, !dbg !1400
  %377 = load i32* %376, align 4, !dbg !1400, !tbaa !1370
  %378 = shl nsw i32 %377, 1, !dbg !1401
  %379 = getelementptr inbounds %struct.storable_picture* %375, i64 0, i32 0, !dbg !1402
  %380 = load i32* %379, align 4, !dbg !1402, !tbaa !1374
  %381 = icmp eq i32 %380, 2, !dbg !1403
  %382 = zext i1 %381 to i32, !dbg !1404
  %383 = or i32 %382, %378, !dbg !1405
  %384 = sext i32 %383 to i64, !dbg !1365
  %385 = getelementptr inbounds %struct.storable_picture* %341, i64 0, i32 6, i64 1, i64 %indvars.iv13.i.i, !dbg !1367
  store i64 %384, i64* %385, align 8, !dbg !1406, !tbaa !1379
  %386 = getelementptr inbounds %struct.storable_picture* %375, i64 0, i32 4, !dbg !1407
  %387 = load i32* %386, align 4, !dbg !1407, !tbaa !1382
  %388 = shl nsw i32 %387, 1, !dbg !1408
  %389 = sext i32 %388 to i64, !dbg !1409
  %390 = getelementptr inbounds %struct.storable_picture* %341, i64 0, i32 7, i64 1, i64 %indvars.iv13.i.i, !dbg !1410
  store i64 %389, i64* %390, align 8, !dbg !1411, !tbaa !1379
  %391 = getelementptr inbounds %struct.storable_picture* %375, i64 0, i32 2, !dbg !1412
  %392 = load i32* %391, align 4, !dbg !1412, !tbaa !1388
  %393 = shl nsw i32 %392, 1, !dbg !1413
  %394 = sext i32 %393 to i64, !dbg !1414
  %395 = getelementptr inbounds %struct.storable_picture* %341, i64 0, i32 8, i64 1, i64 %indvars.iv13.i.i, !dbg !1415
  store i64 %394, i64* %395, align 8, !dbg !1416, !tbaa !1379
  %396 = getelementptr inbounds %struct.storable_picture* %375, i64 0, i32 3, !dbg !1417
  %397 = load i32* %396, align 4, !dbg !1417, !tbaa !1394
  %398 = shl nsw i32 %397, 1, !dbg !1418
  %399 = or i32 %398, 1, !dbg !1419
  %400 = sext i32 %399 to i64, !dbg !1420
  %401 = getelementptr inbounds %struct.storable_picture* %341, i64 0, i32 9, i64 1, i64 %indvars.iv13.i.i, !dbg !1421
  store i64 %400, i64* %401, align 8, !dbg !1422, !tbaa !1379
  %indvars.iv.next14.i.i = add nuw nsw i64 %indvars.iv13.i.i, 1, !dbg !1364
  %exitcond14.i = icmp eq i64 %indvars.iv13.i.i, %343, !dbg !1364
  br i1 %exitcond14.i, label %._crit_edge7.i.i, label %373, !dbg !1364

._crit_edge7.i.i:                                 ; preds = %373, %.preheader2.i.i
  %402 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1423, !tbaa !775
  %403 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %402, i64 0, i32 25, !dbg !1425
  %404 = load i32* %403, align 4, !dbg !1425, !tbaa !1426
  %405 = icmp eq i32 %404, 0, !dbg !1423
  %406 = load %struct.ImageParameters** @img, align 8, !dbg !1430, !tbaa !775
  br i1 %405, label %407, label %set_ref_pic_num.exit.i, !dbg !1433

; <label>:407                                     ; preds = %._crit_edge7.i.i
  %408 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 7, !dbg !1434
  %409 = load i32* %408, align 4, !dbg !1434, !tbaa !1126
  %410 = icmp eq i32 %409, 0, !dbg !1435
  br i1 %410, label %.preheader1.i.i, label %set_ref_pic_num.exit.i, !dbg !1436

.preheader1.i.i:                                  ; preds = %407
  %411 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1437, !tbaa !775
  br label %.preheader.i.i, !dbg !1443

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader1.i.i
  %indvars.iv11.i.i = phi i64 [ 2, %.preheader1.i.i ], [ %indvars.iv.next12.i.i, %._crit_edge.i.i ], !dbg !1368
  %412 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv11.i.i, !dbg !1444
  %413 = load i32* %412, align 4, !dbg !1444, !tbaa !914
  %414 = icmp sgt i32 %413, 0, !dbg !1445
  br i1 %414, label %.lr.ph.i4.i, label %._crit_edge.i.i, !dbg !1446

.lr.ph.i4.i:                                      ; preds = %.preheader.i.i
  %415 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv11.i.i, !dbg !1447
  %416 = load %struct.storable_picture*** %415, align 8, !dbg !1447, !tbaa !775
  %417 = sext i32 %413 to i64, !dbg !978
  %418 = add nsw i64 %417, -1, !dbg !1446
  br label %419, !dbg !1446

; <label>:419                                     ; preds = %419, %.lr.ph.i4.i
  %indvars.iv.i5.i = phi i64 [ 0, %.lr.ph.i4.i ], [ %indvars.iv.next.i6.i, %419 ], !dbg !1368
  %420 = getelementptr inbounds %struct.storable_picture** %416, i64 %indvars.iv.i5.i, !dbg !1447
  %421 = load %struct.storable_picture** %420, align 8, !dbg !1447, !tbaa !775
  %422 = getelementptr inbounds %struct.storable_picture* %421, i64 0, i32 1, !dbg !1448
  %423 = load i32* %422, align 4, !dbg !1448, !tbaa !1370
  %424 = shl nsw i32 %423, 1, !dbg !1449
  %425 = getelementptr inbounds %struct.storable_picture* %421, i64 0, i32 0, !dbg !1450
  %426 = load i32* %425, align 4, !dbg !1450, !tbaa !1374
  %427 = icmp eq i32 %426, 2, !dbg !1451
  %428 = zext i1 %427 to i32, !dbg !1452
  %429 = or i32 %428, %424, !dbg !1453
  %430 = sext i32 %429 to i64, !dbg !1447
  %431 = getelementptr inbounds %struct.storable_picture* %411, i64 0, i32 6, i64 %indvars.iv11.i.i, i64 %indvars.iv.i5.i, !dbg !1437
  store i64 %430, i64* %431, align 8, !dbg !1454, !tbaa !1379
  %432 = getelementptr inbounds %struct.storable_picture* %421, i64 0, i32 4, !dbg !1455
  %433 = load i32* %432, align 4, !dbg !1455, !tbaa !1382
  %434 = shl nsw i32 %433, 1, !dbg !1456
  %435 = sext i32 %434 to i64, !dbg !1457
  %436 = getelementptr inbounds %struct.storable_picture* %411, i64 0, i32 7, i64 %indvars.iv11.i.i, i64 %indvars.iv.i5.i, !dbg !1458
  store i64 %435, i64* %436, align 8, !dbg !1459, !tbaa !1379
  %437 = getelementptr inbounds %struct.storable_picture* %421, i64 0, i32 2, !dbg !1460
  %438 = load i32* %437, align 4, !dbg !1460, !tbaa !1388
  %439 = shl nsw i32 %438, 1, !dbg !1461
  %440 = sext i32 %439 to i64, !dbg !1462
  %441 = getelementptr inbounds %struct.storable_picture* %411, i64 0, i32 8, i64 %indvars.iv11.i.i, i64 %indvars.iv.i5.i, !dbg !1463
  store i64 %440, i64* %441, align 8, !dbg !1464, !tbaa !1379
  %442 = getelementptr inbounds %struct.storable_picture* %421, i64 0, i32 3, !dbg !1465
  %443 = load i32* %442, align 4, !dbg !1465, !tbaa !1394
  %444 = shl nsw i32 %443, 1, !dbg !1466
  %445 = or i32 %444, 1, !dbg !1467
  %446 = sext i32 %445 to i64, !dbg !1468
  %447 = getelementptr inbounds %struct.storable_picture* %411, i64 0, i32 9, i64 %indvars.iv11.i.i, i64 %indvars.iv.i5.i, !dbg !1469
  store i64 %446, i64* %447, align 8, !dbg !1470, !tbaa !1379
  %indvars.iv.next.i6.i = add nuw nsw i64 %indvars.iv.i5.i, 1, !dbg !1446
  %exitcond.i = icmp eq i64 %indvars.iv.i5.i, %418, !dbg !1446
  br i1 %exitcond.i, label %._crit_edge.i.i, label %419, !dbg !1446

._crit_edge.i.i:                                  ; preds = %419, %.preheader.i.i
  %indvars.iv.next12.i.i = add nuw nsw i64 %indvars.iv11.i.i, 1, !dbg !1443
  %exitcond.i.i = icmp eq i64 %indvars.iv.next12.i.i, 6, !dbg !1443
  br i1 %exitcond.i.i, label %set_ref_pic_num.exit.i, label %.preheader.i.i, !dbg !1443

set_ref_pic_num.exit.i:                           ; preds = %._crit_edge.i.i, %._crit_edge7.i.i, %407
  %448 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 6, !dbg !1471
  %449 = load i32* %448, align 4, !dbg !1471, !tbaa !859
  %450 = icmp eq i32 %449, 1, !dbg !1473
  br i1 %450, label %451, label %init_slice.exit, !dbg !1474

; <label>:451                                     ; preds = %set_ref_pic_num.exit.i
  %452 = load %struct.colocated_params** @Co_located, align 8, !dbg !1475, !tbaa !775
  tail call void @compute_colocated(%struct.colocated_params* %452, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0)) #6, !dbg !1476
  %.pre35 = load %struct.ImageParameters** @img, align 8, !dbg !1477, !tbaa !775
  br label %init_slice.exit, !dbg !1476

init_slice.exit:                                  ; preds = %set_ref_pic_num.exit.i, %451
  %453 = phi %struct.ImageParameters* [ %406, %set_ref_pic_num.exit.i ], [ %.pre35, %451 ]
  %454 = getelementptr inbounds %struct.ImageParameters* %453, i64 0, i32 50, !dbg !1478
  %455 = load %struct.Slice** %454, align 8, !dbg !1478, !tbaa !780
  %456 = getelementptr inbounds %struct.Slice* %455, i64 0, i32 6, !dbg !1479
  %457 = load %struct.datapartition** %456, align 8, !dbg !1479, !tbaa !821
  %458 = getelementptr inbounds %struct.datapartition* %457, i64 0, i32 0, !dbg !1480
  %459 = load %struct.Bitstream** %458, align 8, !dbg !1480, !tbaa !823
  %460 = getelementptr inbounds %struct.Bitstream* %459, i64 0, i32 0, !dbg !1481
  %461 = load i32* %460, align 4, !dbg !1481, !tbaa !902
  store i32 %461, i32* @Bytes_After_Header, align 4, !dbg !1482, !tbaa !914
  %462 = load %struct.InputParameters** @input, align 8, !dbg !1483, !tbaa !775
  %463 = getelementptr inbounds %struct.InputParameters* %462, i64 0, i32 59, !dbg !1485
  %464 = load i32* %463, align 4, !dbg !1485, !tbaa !841
  %465 = icmp eq i32 %464, 1, !dbg !1486
  br i1 %465, label %466, label %467, !dbg !1487

; <label>:466                                     ; preds = %init_slice.exit
  tail call void (...)* @SetCtxModelNumber() #6, !dbg !1488
  br label %467, !dbg !1490

; <label>:467                                     ; preds = %466, %init_slice.exit
  %468 = tail call i32 @start_slice() #8, !dbg !1491
  tail call void @llvm.dbg.value(metadata i32 %468, i64 0, metadata !264, metadata !785), !dbg !1492
  %469 = load %struct.ImageParameters** @img, align 8, !dbg !1493, !tbaa !775
  %470 = getelementptr inbounds %struct.ImageParameters* %469, i64 0, i32 119, !dbg !1494
  %471 = load i32* %470, align 4, !dbg !1495, !tbaa !1496
  %472 = add nsw i32 %471, %468, !dbg !1495
  store i32 %472, i32* %470, align 4, !dbg !1495, !tbaa !1496
  %473 = getelementptr inbounds %struct.ImageParameters* %469, i64 0, i32 139, !dbg !1497
  %474 = load i32* %473, align 4, !dbg !1497, !tbaa !1499
  %475 = getelementptr inbounds %struct.ImageParameters* %469, i64 0, i32 136, !dbg !1500
  %476 = load i32* %475, align 4, !dbg !1500, !tbaa !1501
  %477 = icmp slt i32 %474, %476, !dbg !1502
  br i1 %477, label %478, label %482, !dbg !1503

; <label>:478                                     ; preds = %467
  %479 = getelementptr inbounds %struct.ImageParameters* %469, i64 0, i32 121, !dbg !1504
  %480 = load i32* %479, align 4, !dbg !1505, !tbaa !1506
  %481 = add nsw i32 %480, %468, !dbg !1505
  store i32 %481, i32* %479, align 4, !dbg !1505, !tbaa !1506
  br label %482, !dbg !1507

; <label>:482                                     ; preds = %478, %467
  %483 = load %struct.StatParameters** @stats, align 8, !dbg !1508, !tbaa !775
  %484 = getelementptr inbounds %struct.StatParameters* %483, i64 0, i32 6, !dbg !1509
  %485 = load i32* %484, align 4, !dbg !1510, !tbaa !1511
  %486 = add nsw i32 %485, %468, !dbg !1510
  store i32 %486, i32* %484, align 4, !dbg !1510, !tbaa !1511
  %487 = getelementptr inbounds %struct.ImageParameters* %469, i64 0, i32 6, !dbg !1512
  %488 = load i32* %487, align 4, !dbg !1512, !tbaa !859
  %489 = sext i32 %488 to i64, !dbg !1513
  %490 = getelementptr inbounds %struct.StatParameters* %483, i64 0, i32 24, i64 %489, !dbg !1513
  %491 = load i32* %490, align 4, !dbg !1514, !tbaa !914
  %492 = add nsw i32 %491, %468, !dbg !1514
  store i32 %492, i32* %490, align 4, !dbg !1514, !tbaa !914
  %.pr15 = load i32* %end_of_slice, align 4, !dbg !1515, !tbaa !951
  call void @llvm.dbg.value(metadata i32* %end_of_slice, i64 0, metadata !262, metadata !785), !dbg !950
  %493 = icmp eq i32 %.pr15, 0, !dbg !1516
  br i1 %493, label %.lr.ph, label %thread-pre-split._crit_edge, !dbg !1517

.lr.ph:                                           ; preds = %482, %thread-pre-split.backedge
  %FieldRDCost.0.ph19 = phi double [ %FieldRDCost.0.ph.be, %thread-pre-split.backedge ], [ undef, %482 ]
  %FrameRDCost.0.ph18 = phi double [ %FrameRDCost.0.ph.be, %thread-pre-split.backedge ], [ undef, %482 ]
  %CurrentMbAddr.0.ph17 = phi i32 [ %CurrentMbAddr.0.ph.be, %thread-pre-split.backedge ], [ %3, %482 ]
  %NumberOfCodedMBs.0.ph16 = phi i32 [ %NumberOfCodedMBs.0.ph.be, %thread-pre-split.backedge ], [ 0, %482 ]
  %494 = load %struct.ImageParameters** @img, align 8, !dbg !1518, !tbaa !775
  %495 = getelementptr inbounds %struct.ImageParameters* %494, i64 0, i32 90, !dbg !1521
  %496 = load i32* %495, align 4, !dbg !1521, !tbaa !1522
  %497 = icmp eq i32 %496, 0, !dbg !1518
  br i1 %497, label %498, label %518, !dbg !1523

; <label>:498                                     ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !263, metadata !785), !dbg !1524
  store i32 0, i32* %recode_macroblock, align 4, !dbg !1525, !tbaa !951
  store %struct.RD_DATA* @rddata_top_frame_mb, %struct.RD_DATA** @rdopt, align 8, !dbg !1527, !tbaa !775
  call void @start_macroblock(i32 %CurrentMbAddr.0.ph17, i32 0) #6, !dbg !1528
  call void @encode_one_macroblock() #6, !dbg !1529
  call void @write_one_macroblock(i32 1) #6, !dbg !1530
  call void @llvm.dbg.value(metadata i32* %end_of_slice, i64 0, metadata !262, metadata !785), !dbg !950
  call void @llvm.dbg.value(metadata i32* %recode_macroblock, i64 0, metadata !263, metadata !785), !dbg !1524
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock) #6, !dbg !1531
  call void @llvm.dbg.value(metadata i32* %recode_macroblock, i64 0, metadata !263, metadata !785), !dbg !1524
  %499 = load i32* %recode_macroblock, align 4, !dbg !1532, !tbaa !951
  %500 = icmp eq i32 %499, 0, !dbg !1534
  br i1 %500, label %501, label %507, !dbg !1535

; <label>:501                                     ; preds = %498
  %502 = call i32 @FmoGetNextMBNr(i32 %CurrentMbAddr.0.ph17) #6, !dbg !1536
  call void @llvm.dbg.value(metadata i32 %502, i64 0, metadata !266, metadata !785), !dbg !958
  %503 = icmp eq i32 %502, -1, !dbg !1538
  br i1 %503, label %504, label %505, !dbg !1540

; <label>:504                                     ; preds = %501
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !262, metadata !785), !dbg !950
  store i32 1, i32* %end_of_slice, align 4, !dbg !1541, !tbaa !951
  br label %505, !dbg !1543

; <label>:505                                     ; preds = %504, %501
  %506 = add nsw i32 %NumberOfCodedMBs.0.ph16, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i32 %506, i64 0, metadata !265, metadata !785), !dbg !952
  call void (i32, ...)* bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %502) #6, !dbg !1545
  br label %thread-pre-split.backedge, !dbg !1546

; <label>:507                                     ; preds = %498
  %508 = load %struct.ImageParameters** @img, align 8, !dbg !1547, !tbaa !775
  %509 = getelementptr inbounds %struct.ImageParameters* %508, i64 0, i32 3, !dbg !1549
  %510 = load i32* %509, align 4, !dbg !1549, !tbaa !966
  %511 = call i32 @FmoGetPreviousMBNr(i32 %510) #6, !dbg !1550
  %512 = load %struct.ImageParameters** @img, align 8, !dbg !1551, !tbaa !775
  %513 = getelementptr inbounds %struct.ImageParameters* %512, i64 0, i32 3, !dbg !1552
  store i32 %511, i32* %513, align 4, !dbg !1553, !tbaa !966
  %514 = icmp eq i32 %511, -1, !dbg !1554
  br i1 %514, label %516, label %thread-pre-split.backedge, !dbg !1556

thread-pre-split.backedge:                        ; preds = %._crit_edge42, %507, %516, %505
  %NumberOfCodedMBs.0.ph.be = phi i32 [ %NumberOfCodedMBs.0.ph16, %507 ], [ %NumberOfCodedMBs.0.ph16, %516 ], [ %506, %505 ], [ %610, %._crit_edge42 ]
  %CurrentMbAddr.0.ph.be = phi i32 [ %CurrentMbAddr.0.ph17, %507 ], [ %CurrentMbAddr.0.ph17, %516 ], [ %502, %505 ], [ %628, %._crit_edge42 ]
  %FrameRDCost.0.ph.be = phi double [ %FrameRDCost.0.ph18, %507 ], [ %FrameRDCost.0.ph18, %516 ], [ %FrameRDCost.0.ph18, %505 ], [ %FrameRDCost.1, %._crit_edge42 ]
  %FieldRDCost.0.ph.be = phi double [ %FieldRDCost.0.ph19, %507 ], [ %FieldRDCost.0.ph19, %516 ], [ %FieldRDCost.0.ph19, %505 ], [ %FieldRDCost.1, %._crit_edge42 ]
  %.pr = load i32* %end_of_slice, align 4, !dbg !1515, !tbaa !951
  call void @llvm.dbg.value(metadata i32* %end_of_slice, i64 0, metadata !262, metadata !785), !dbg !950
  %515 = icmp eq i32 %.pr, 0, !dbg !1516
  br i1 %515, label %.lr.ph, label %thread-pre-split._crit_edge, !dbg !1517

; <label>:516                                     ; preds = %507
  %517 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1557
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #6, !dbg !1559
  br label %thread-pre-split.backedge, !dbg !1560

; <label>:518                                     ; preds = %.lr.ph
  %519 = load %struct.InputParameters** @input, align 8, !dbg !1561, !tbaa !775
  %520 = getelementptr inbounds %struct.InputParameters* %519, i64 0, i32 92, !dbg !1564
  %521 = load i32* %520, align 4, !dbg !1564, !tbaa !1565
  %522 = icmp eq i32 %521, 2, !dbg !1566
  br i1 %522, label %523, label %539, !dbg !1567

; <label>:523                                     ; preds = %518
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !263, metadata !785), !dbg !1524
  store i32 0, i32* %recode_macroblock, align 4, !dbg !1568, !tbaa !951
  %524 = getelementptr inbounds %struct.ImageParameters* %494, i64 0, i32 81, !dbg !1570
  store i32 0, i32* %524, align 4, !dbg !1571, !tbaa !1572
  %525 = getelementptr inbounds %struct.ImageParameters* %494, i64 0, i32 82, !dbg !1573
  store i32 0, i32* %525, align 4, !dbg !1574, !tbaa !1575
  %526 = getelementptr inbounds %struct.ImageParameters* %494, i64 0, i32 140, !dbg !1576
  store i32 0, i32* %526, align 4, !dbg !1577, !tbaa !1578
  %527 = getelementptr inbounds %struct.ImageParameters* %494, i64 0, i32 141, !dbg !1579
  store i32 0, i32* %527, align 4, !dbg !1580, !tbaa !1581
  call void @start_macroblock(i32 %CurrentMbAddr.0.ph17, i32 0) #6, !dbg !1582
  store %struct.RD_DATA* @rddata_top_frame_mb, %struct.RD_DATA** @rdopt, align 8, !dbg !1583, !tbaa !775
  call void @encode_one_macroblock() #6, !dbg !1584
  %528 = load %struct.RD_DATA** @rdopt, align 8, !dbg !1585, !tbaa !775
  %529 = getelementptr inbounds %struct.RD_DATA* %528, i64 0, i32 0, !dbg !1586
  %530 = load double* %529, align 8, !dbg !1586, !tbaa !1587
  call void @llvm.dbg.value(metadata double %530, i64 0, metadata !267, metadata !785), !dbg !1589
  %531 = load %struct.ImageParameters** @img, align 8, !dbg !1590, !tbaa !775
  %532 = getelementptr inbounds %struct.ImageParameters* %531, i64 0, i32 141, !dbg !1591
  store i32 1, i32* %532, align 4, !dbg !1592, !tbaa !1581
  %533 = getelementptr inbounds %struct.ImageParameters* %531, i64 0, i32 81, !dbg !1593
  store i32 0, i32* %533, align 4, !dbg !1594, !tbaa !1572
  %534 = add nsw i32 %CurrentMbAddr.0.ph17, 1, !dbg !1595
  call void @start_macroblock(i32 %534, i32 0) #6, !dbg !1596
  store %struct.RD_DATA* @rddata_bot_frame_mb, %struct.RD_DATA** @rdopt, align 8, !dbg !1597, !tbaa !775
  call void @encode_one_macroblock() #6, !dbg !1598
  %535 = load %struct.RD_DATA** @rdopt, align 8, !dbg !1599, !tbaa !775
  %536 = getelementptr inbounds %struct.RD_DATA* %535, i64 0, i32 0, !dbg !1600
  %537 = load double* %536, align 8, !dbg !1600, !tbaa !1587
  %538 = fadd double %530, %537, !dbg !1601
  call void @llvm.dbg.value(metadata double %538, i64 0, metadata !267, metadata !785), !dbg !1589
  %.pre36 = load %struct.InputParameters** @input, align 8, !dbg !1602, !tbaa !775
  %.phi.trans.insert37 = getelementptr inbounds %struct.InputParameters* %.pre36, i64 0, i32 92
  %.pre38 = load i32* %.phi.trans.insert37, align 4, !dbg !1604, !tbaa !1565
  br label %539, !dbg !1605

; <label>:539                                     ; preds = %523, %518
  %540 = phi i32 [ %.pre38, %523 ], [ %521, %518 ]
  %541 = phi %struct.InputParameters* [ %.pre36, %523 ], [ %519, %518 ]
  %FrameRDCost.1 = phi double [ %538, %523 ], [ %FrameRDCost.0.ph18, %518 ]
  %.off = add i32 %540, -1, !dbg !1606
  %switch = icmp ult i32 %.off, 2, !dbg !1606
  br i1 %switch, label %542, label %568, !dbg !1606

; <label>:542                                     ; preds = %539
  %543 = load %struct.ImageParameters** @img, align 8, !dbg !1607, !tbaa !775
  %544 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 141, !dbg !1609
  store i32 0, i32* %544, align 4, !dbg !1610, !tbaa !1581
  %545 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 81, !dbg !1611
  store i32 1, i32* %545, align 4, !dbg !1612, !tbaa !1572
  %546 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 82, !dbg !1613
  store i32 1, i32* %546, align 4, !dbg !1614, !tbaa !1575
  %547 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 84, !dbg !1615
  %548 = load i32* %547, align 4, !dbg !1616, !tbaa !1617
  %549 = shl i32 %548, 1, !dbg !1616
  store i32 %549, i32* %547, align 4, !dbg !1616, !tbaa !1617
  %550 = getelementptr inbounds %struct.InputParameters* %541, i64 0, i32 9, !dbg !1618
  %551 = load i32* %550, align 4, !dbg !1619, !tbaa !1620
  %552 = shl i32 %551, 1, !dbg !1619
  store i32 %552, i32* %550, align 4, !dbg !1619, !tbaa !1620
  %553 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 79, !dbg !1621
  %554 = load i32* %553, align 4, !dbg !1622, !tbaa !1117
  %555 = shl i32 %554, 1, !dbg !1622
  %556 = or i32 %555, 1, !dbg !1623
  store i32 %556, i32* %553, align 4, !dbg !1623, !tbaa !1117
  call void @start_macroblock(i32 %CurrentMbAddr.0.ph17, i32 1) #6, !dbg !1624
  store %struct.RD_DATA* @rddata_top_field_mb, %struct.RD_DATA** @rdopt, align 8, !dbg !1625, !tbaa !775
  call void @encode_one_macroblock() #6, !dbg !1626
  %557 = load %struct.RD_DATA** @rdopt, align 8, !dbg !1627, !tbaa !775
  %558 = getelementptr inbounds %struct.RD_DATA* %557, i64 0, i32 0, !dbg !1628
  %559 = load double* %558, align 8, !dbg !1628, !tbaa !1587
  call void @llvm.dbg.value(metadata double %559, i64 0, metadata !269, metadata !785), !dbg !1629
  %560 = load %struct.ImageParameters** @img, align 8, !dbg !1630, !tbaa !775
  %561 = getelementptr inbounds %struct.ImageParameters* %560, i64 0, i32 141, !dbg !1631
  store i32 1, i32* %561, align 4, !dbg !1632, !tbaa !1581
  %562 = getelementptr inbounds %struct.ImageParameters* %560, i64 0, i32 82, !dbg !1633
  store i32 0, i32* %562, align 4, !dbg !1634, !tbaa !1575
  %563 = add nsw i32 %CurrentMbAddr.0.ph17, 1, !dbg !1635
  call void @start_macroblock(i32 %563, i32 1) #6, !dbg !1636
  store %struct.RD_DATA* @rddata_bot_field_mb, %struct.RD_DATA** @rdopt, align 8, !dbg !1637, !tbaa !775
  call void @encode_one_macroblock() #6, !dbg !1638
  %564 = load %struct.RD_DATA** @rdopt, align 8, !dbg !1639, !tbaa !775
  %565 = getelementptr inbounds %struct.RD_DATA* %564, i64 0, i32 0, !dbg !1640
  %566 = load double* %565, align 8, !dbg !1640, !tbaa !1587
  %567 = fadd double %559, %566, !dbg !1641
  call void @llvm.dbg.value(metadata double %567, i64 0, metadata !269, metadata !785), !dbg !1629
  %.pre39 = load %struct.InputParameters** @input, align 8, !dbg !1642, !tbaa !775
  %.phi.trans.insert40 = getelementptr inbounds %struct.InputParameters* %.pre39, i64 0, i32 92
  %.pre41 = load i32* %.phi.trans.insert40, align 4, !dbg !1644, !tbaa !1565
  br label %568, !dbg !1645

; <label>:568                                     ; preds = %539, %542
  %569 = phi i32 [ %.pre41, %542 ], [ %540, %539 ]
  %570 = phi %struct.InputParameters* [ %.pre39, %542 ], [ %541, %539 ]
  %FieldRDCost.1 = phi double [ %567, %542 ], [ %FieldRDCost.0.ph19, %539 ]
  %571 = load %struct.ImageParameters** @img, align 8, !dbg !1646, !tbaa !775
  %572 = getelementptr inbounds %struct.ImageParameters* %571, i64 0, i32 142, !dbg !1647
  store i32 0, i32* %572, align 4, !dbg !1648, !tbaa !1649
  %573 = icmp eq i32 %569, 2, !dbg !1650
  %574 = fcmp olt double %FrameRDCost.1, %FieldRDCost.1, !dbg !1651
  %or.cond = and i1 %574, %573, !dbg !1652
  %575 = getelementptr inbounds %struct.ImageParameters* %571, i64 0, i32 81, !dbg !1653
  br i1 %or.cond, label %576, label %587, !dbg !1652

; <label>:576                                     ; preds = %568
  store i32 0, i32* %575, align 4, !dbg !1655, !tbaa !1572
  %577 = getelementptr inbounds %struct.ImageParameters* %571, i64 0, i32 84, !dbg !1656
  %578 = load i32* %577, align 4, !dbg !1657, !tbaa !1617
  %579 = ashr i32 %578, 1, !dbg !1657
  store i32 %579, i32* %577, align 4, !dbg !1657, !tbaa !1617
  %580 = getelementptr inbounds %struct.InputParameters* %570, i64 0, i32 9, !dbg !1658
  %581 = load i32* %580, align 4, !dbg !1659, !tbaa !1620
  %582 = ashr i32 %581, 1, !dbg !1659
  store i32 %582, i32* %580, align 4, !dbg !1659, !tbaa !1620
  store i32 0, i32* @MBPairIsField, align 4, !dbg !1660, !tbaa !914
  %583 = getelementptr inbounds %struct.ImageParameters* %571, i64 0, i32 79, !dbg !1661
  %584 = load i32* %583, align 4, !dbg !1662, !tbaa !1117
  %585 = add nsw i32 %584, -1, !dbg !1662
  %586 = ashr i32 %585, 1, !dbg !1663
  store i32 %586, i32* %583, align 4, !dbg !1663, !tbaa !1117
  store i32 1, i32* %572, align 4, !dbg !1664, !tbaa !1649
  br label %588, !dbg !1665

; <label>:587                                     ; preds = %568
  store i32 1, i32* %575, align 4, !dbg !1666, !tbaa !1572
  store i32 1, i32* @MBPairIsField, align 4, !dbg !1668, !tbaa !914
  br label %588

; <label>:588                                     ; preds = %587, %576
  %589 = getelementptr inbounds %struct.ImageParameters* %571, i64 0, i32 140, !dbg !1669
  store i32 1, i32* %589, align 4, !dbg !1670, !tbaa !1578
  %590 = load i32* @MBPairIsField, align 4, !dbg !1671, !tbaa !914
  %591 = getelementptr inbounds %struct.ImageParameters* %571, i64 0, i32 82, !dbg !1673
  %not. = icmp ne i32 %590, 0
  %. = zext i1 %not. to i32
  store i32 %., i32* %591, align 4, !dbg !1674, !tbaa !1575
  %592 = getelementptr inbounds %struct.ImageParameters* %571, i64 0, i32 141, !dbg !1675
  store i32 0, i32* %592, align 4, !dbg !1676, !tbaa !1581
  %593 = load i32* %575, align 4, !dbg !1677, !tbaa !1572
  call void @start_macroblock(i32 %CurrentMbAddr.0.ph17, i32 %593) #6, !dbg !1678
  %594 = load %struct.ImageParameters** @img, align 8, !dbg !1679, !tbaa !775
  %595 = getelementptr inbounds %struct.ImageParameters* %594, i64 0, i32 81, !dbg !1680
  %596 = load i32* %595, align 4, !dbg !1680, !tbaa !1572
  %597 = icmp ne i32 %596, 0, !dbg !1679
  %598 = select i1 %597, %struct.RD_DATA* @rddata_top_field_mb, %struct.RD_DATA* @rddata_top_frame_mb, !dbg !1679
  store %struct.RD_DATA* %598, %struct.RD_DATA** @rdopt, align 8, !dbg !1681, !tbaa !775
  call void @copy_rdopt_data(i32 0) #6, !dbg !1682
  call void @write_one_macroblock(i32 1) #6, !dbg !1683
  call void @llvm.dbg.value(metadata i32* %end_of_slice, i64 0, metadata !262, metadata !785), !dbg !950
  call void @llvm.dbg.value(metadata i32* %recode_macroblock, i64 0, metadata !263, metadata !785), !dbg !1524
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock) #6, !dbg !1684
  call void (i32, ...)* bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %CurrentMbAddr.0.ph17) #6, !dbg !1685
  %599 = load %struct.ImageParameters** @img, align 8, !dbg !1686, !tbaa !775
  %600 = getelementptr inbounds %struct.ImageParameters* %599, i64 0, i32 141, !dbg !1687
  store i32 1, i32* %600, align 4, !dbg !1688, !tbaa !1581
  %601 = getelementptr inbounds %struct.ImageParameters* %599, i64 0, i32 82, !dbg !1689
  store i32 0, i32* %601, align 4, !dbg !1690, !tbaa !1575
  %602 = add nsw i32 %CurrentMbAddr.0.ph17, 1, !dbg !1691
  %603 = getelementptr inbounds %struct.ImageParameters* %599, i64 0, i32 81, !dbg !1692
  %604 = load i32* %603, align 4, !dbg !1692, !tbaa !1572
  call void @start_macroblock(i32 %602, i32 %604) #6, !dbg !1693
  %605 = load %struct.ImageParameters** @img, align 8, !dbg !1694, !tbaa !775
  %606 = getelementptr inbounds %struct.ImageParameters* %605, i64 0, i32 81, !dbg !1695
  %607 = load i32* %606, align 4, !dbg !1695, !tbaa !1572
  %608 = icmp ne i32 %607, 0, !dbg !1694
  %609 = select i1 %608, %struct.RD_DATA* @rddata_bot_field_mb, %struct.RD_DATA* @rddata_bot_frame_mb, !dbg !1694
  store %struct.RD_DATA* %609, %struct.RD_DATA** @rdopt, align 8, !dbg !1696, !tbaa !775
  call void @copy_rdopt_data(i32 1) #6, !dbg !1697
  call void @write_one_macroblock(i32 0) #6, !dbg !1698
  %610 = add nsw i32 %NumberOfCodedMBs.0.ph16, 2, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %610, i64 0, metadata !265, metadata !785), !dbg !952
  call void @llvm.dbg.value(metadata i32* %end_of_slice, i64 0, metadata !262, metadata !785), !dbg !950
  call void @llvm.dbg.value(metadata i32* %recode_macroblock, i64 0, metadata !263, metadata !785), !dbg !1524
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock) #6, !dbg !1700
  call void (i32, ...)* bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %CurrentMbAddr.0.ph17) #6, !dbg !1701
  %611 = load i32* @MBPairIsField, align 4, !dbg !1702, !tbaa !914
  %612 = icmp eq i32 %611, 0, !dbg !1702
  %.pre43 = load %struct.ImageParameters** @img, align 8, !dbg !1704, !tbaa !775
  br i1 %612, label %._crit_edge42, label %613, !dbg !1705

; <label>:613                                     ; preds = %588
  %614 = getelementptr inbounds %struct.ImageParameters* %.pre43, i64 0, i32 84, !dbg !1706
  %615 = load i32* %614, align 4, !dbg !1708, !tbaa !1617
  %616 = ashr i32 %615, 1, !dbg !1708
  store i32 %616, i32* %614, align 4, !dbg !1708, !tbaa !1617
  %617 = load %struct.InputParameters** @input, align 8, !dbg !1709, !tbaa !775
  %618 = getelementptr inbounds %struct.InputParameters* %617, i64 0, i32 9, !dbg !1710
  %619 = load i32* %618, align 4, !dbg !1711, !tbaa !1620
  %620 = ashr i32 %619, 1, !dbg !1711
  store i32 %620, i32* %618, align 4, !dbg !1711, !tbaa !1620
  %621 = getelementptr inbounds %struct.ImageParameters* %.pre43, i64 0, i32 79, !dbg !1712
  %622 = load i32* %621, align 4, !dbg !1713, !tbaa !1117
  %623 = add nsw i32 %622, -1, !dbg !1713
  %624 = ashr i32 %623, 1, !dbg !1714
  store i32 %624, i32* %621, align 4, !dbg !1714, !tbaa !1117
  br label %._crit_edge42, !dbg !1715

._crit_edge42:                                    ; preds = %588, %613
  %625 = getelementptr inbounds %struct.ImageParameters* %.pre43, i64 0, i32 82, !dbg !1716
  store i32 0, i32* %625, align 4, !dbg !1717, !tbaa !1575
  %626 = getelementptr inbounds %struct.ImageParameters* %.pre43, i64 0, i32 81, !dbg !1718
  store i32 0, i32* %626, align 4, !dbg !1719, !tbaa !1572
  %627 = call i32 @FmoGetNextMBNr(i32 %CurrentMbAddr.0.ph17) #6, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %627, i64 0, metadata !266, metadata !785), !dbg !958
  %628 = call i32 @FmoGetNextMBNr(i32 %627) #6, !dbg !1721
  call void @llvm.dbg.value(metadata i32 %628, i64 0, metadata !266, metadata !785), !dbg !958
  %629 = call i32 @FmoMB2SliceGroup(i32 %628) #6, !dbg !1722
  %630 = call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %629) #6, !dbg !1724
  %631 = icmp eq i32 %628, %630, !dbg !1725
  br i1 %631, label %._crit_edge, label %thread-pre-split.backedge, !dbg !1726

._crit_edge:                                      ; preds = %._crit_edge42
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !262, metadata !785), !dbg !950
  store i32 1, i32* %end_of_slice, align 4, !dbg !1727, !tbaa !951
  call void @llvm.dbg.value(metadata i32* %end_of_slice, i64 0, metadata !262, metadata !785), !dbg !950
  br label %thread-pre-split._crit_edge, !dbg !1517

thread-pre-split._crit_edge:                      ; preds = %thread-pre-split.backedge, %482, %._crit_edge
  %NumberOfCodedMBs.0.lcssa = phi i32 [ %610, %._crit_edge ], [ 0, %482 ], [ %NumberOfCodedMBs.0.ph.be, %thread-pre-split.backedge ]
  %632 = call i32 @terminate_slice() #8, !dbg !1728
  ret i32 %NumberOfCodedMBs.0.lcssa, !dbg !1729
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

; Function Attrs: optsize
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: optsize
declare void @copy_rdopt_data(i32) #2

; Function Attrs: optsize
declare i32 @FmoGetLastCodedMBOfSliceGroup(i32) #2

; Function Attrs: optsize
declare i32 @FmoMB2SliceGroup(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @free_slice_list(%struct.Picture* nocapture %currPic) #0 {
  tail call void @llvm.dbg.value(metadata %struct.Picture* %currPic, i64 0, metadata !274, metadata !785), !dbg !1730
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !275, metadata !785), !dbg !1731
  %1 = getelementptr inbounds %struct.Picture* %currPic, i64 0, i32 0, !dbg !1732
  %2 = load i32* %1, align 4, !dbg !1732, !tbaa !971
  %3 = icmp sgt i32 %2, 0, !dbg !1735
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !1736

.lr.ph:                                           ; preds = %0, %free_slice.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %free_slice.exit ], [ 0, %0 ]
  %4 = getelementptr inbounds %struct.Picture* %currPic, i64 0, i32 2, i64 %indvars.iv, !dbg !1737
  %5 = load %struct.Slice** %4, align 8, !dbg !1737, !tbaa !775
  tail call void @llvm.dbg.value(metadata %struct.Slice* %5, i64 0, metadata !420, metadata !785) #3, !dbg !1739
  %6 = icmp eq %struct.Slice* %5, null, !dbg !1741
  br i1 %6, label %free_slice.exit, label %.preheader.i, !dbg !1743

.preheader.i:                                     ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.Slice* %5, i64 0, i32 4, !dbg !1744
  %8 = load i32* %7, align 4, !dbg !1744, !tbaa !887
  %9 = icmp sgt i32 %8, 0, !dbg !1748
  %10 = getelementptr inbounds %struct.Slice* %5, i64 0, i32 6, !dbg !1749
  br i1 %9, label %.lr.ph.i, label %._crit_edge.i, !dbg !1751

.lr.ph.i:                                         ; preds = %.preheader.i, %26
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %26 ], [ 0, %.preheader.i ], !dbg !1752
  %11 = load %struct.datapartition** %10, align 8, !dbg !1749, !tbaa !821
  %12 = getelementptr inbounds %struct.datapartition* %11, i64 %indvars.iv.i, !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %12, i64 0, metadata !422, metadata !785) #3, !dbg !1754
  %13 = icmp eq %struct.datapartition* %12, null, !dbg !1755
  br i1 %13, label %26, label %14, !dbg !1757

; <label>:14                                      ; preds = %.lr.ph.i
  %15 = getelementptr inbounds %struct.datapartition* %12, i64 0, i32 0, !dbg !1758
  %16 = load %struct.Bitstream** %15, align 8, !dbg !1758, !tbaa !823
  %17 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 9, !dbg !1761
  %18 = load i8** %17, align 8, !dbg !1761, !tbaa !855
  %19 = icmp eq i8* %18, null, !dbg !1762
  br i1 %19, label %21, label %20, !dbg !1763

; <label>:20                                      ; preds = %14
  tail call void @free(i8* %18) #6, !dbg !1764
  %.pr.i = load %struct.Bitstream** %15, align 8, !dbg !1765, !tbaa !823
  br label %21, !dbg !1764

; <label>:21                                      ; preds = %20, %14
  %22 = phi %struct.Bitstream* [ %16, %14 ], [ %.pr.i, %20 ], !dbg !1765
  %23 = icmp eq %struct.Bitstream* %22, null, !dbg !1767
  br i1 %23, label %26, label %24, !dbg !1768

; <label>:24                                      ; preds = %21
  %25 = bitcast %struct.Bitstream* %22 to i8*, !dbg !1769
  tail call void @free(i8* %25) #6, !dbg !1770
  br label %26, !dbg !1770

; <label>:26                                      ; preds = %24, %21, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1751
  %27 = load i32* %7, align 4, !dbg !1744, !tbaa !887
  %28 = sext i32 %27 to i64, !dbg !1748
  %29 = icmp slt i64 %indvars.iv.next.i, %28, !dbg !1748
  br i1 %29, label %.lr.ph.i, label %._crit_edge.i, !dbg !1751

._crit_edge.i:                                    ; preds = %26, %.preheader.i
  %30 = load %struct.datapartition** %10, align 8, !dbg !1771, !tbaa !821
  %31 = icmp eq %struct.datapartition* %30, null, !dbg !1773
  br i1 %31, label %34, label %32, !dbg !1774

; <label>:32                                      ; preds = %._crit_edge.i
  %33 = bitcast %struct.datapartition* %30 to i8*, !dbg !1775
  tail call void @free(i8* %33) #6, !dbg !1776
  br label %34, !dbg !1776

; <label>:34                                      ; preds = %32, %._crit_edge.i
  %35 = load %struct.InputParameters** @input, align 8, !dbg !1777, !tbaa !775
  %36 = getelementptr inbounds %struct.InputParameters* %35, i64 0, i32 59, !dbg !1779
  %37 = load i32* %36, align 4, !dbg !1779, !tbaa !841
  %38 = icmp eq i32 %37, 1, !dbg !1780
  br i1 %38, label %39, label %44, !dbg !1781

; <label>:39                                      ; preds = %34
  %40 = getelementptr inbounds %struct.Slice* %5, i64 0, i32 7, !dbg !1782
  %41 = load %struct.MotionInfoContexts** %40, align 8, !dbg !1782, !tbaa !1000
  tail call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %41) #6, !dbg !1784
  %42 = getelementptr inbounds %struct.Slice* %5, i64 0, i32 8, !dbg !1785
  %43 = load %struct.TextureInfoContexts** %42, align 8, !dbg !1785, !tbaa !1004
  tail call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %43) #6, !dbg !1786
  br label %44, !dbg !1787

; <label>:44                                      ; preds = %39, %34
  %45 = bitcast %struct.Slice* %5 to i8*, !dbg !1788
  tail call void @free(i8* %45) #6, !dbg !1789
  br label %free_slice.exit, !dbg !1790

free_slice.exit:                                  ; preds = %.lr.ph, %44
  store %struct.Slice* null, %struct.Slice** %4, align 8, !dbg !1791, !tbaa !775
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1736
  %46 = load i32* %1, align 4, !dbg !1732, !tbaa !971
  %47 = sext i32 %46 to i64, !dbg !1735
  %48 = icmp slt i64 %indvars.iv.next, %47, !dbg !1735
  br i1 %48, label %.lr.ph, label %._crit_edge, !dbg !1736

._crit_edge:                                      ; preds = %free_slice.exit, %0
  ret void, !dbg !1792
}

; Function Attrs: nounwind optsize ssp uwtable
define void @modify_redundant_pic_cnt(i8* nocapture %buffer) #0 {
  tail call void @llvm.dbg.value(metadata i8* %buffer, i64 0, metadata !281, metadata !785), !dbg !1793
  %1 = load i32* @rpc_bits_to_go, align 4, !dbg !1794, !tbaa !914
  %2 = add nsw i32 %1, -1, !dbg !1795
  %3 = shl i32 1, %2, !dbg !1796
  %4 = load i32* @rpc_bytes_to_go, align 4, !dbg !1797, !tbaa !914
  %5 = sext i32 %4 to i64, !dbg !1798
  %6 = getelementptr inbounds i8* %buffer, i64 %5, !dbg !1798
  %7 = load i8* %6, align 1, !dbg !1799, !tbaa !951
  %8 = zext i8 %7 to i32, !dbg !1799
  %9 = or i32 %8, %3, !dbg !1799
  %10 = trunc i32 %9 to i8, !dbg !1799
  store i8 %10, i8* %6, align 1, !dbg !1799, !tbaa !951
  ret void, !dbg !1800
}

; Function Attrs: nounwind optsize ssp uwtable
define void @poc_ref_pic_reorder(%struct.storable_picture** nocapture readonly %list, i32 %num_ref_idx_lX_active, i32* nocapture %remapping_of_pic_nums_idc, i32* nocapture %abs_diff_pic_num_minus1, i32* nocapture readnone %long_term_pic_idx, i32 %weighted_prediction, i32 %list_no) #0 {
  %default_order = alloca [32 x i32], align 16
  %1 = bitcast [32 x i32]* %default_order to i8*
  %re_order = alloca [32 x i32], align 16
  %tmp_reorder = alloca [32 x i32], align 16
  %2 = bitcast [32 x i32]* %tmp_reorder to i8*
  %list_sign = alloca [32 x i32], align 16
  %poc_diff = alloca [32 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct.storable_picture** %list, i64 0, metadata !362, metadata !785), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 %num_ref_idx_lX_active, i64 0, metadata !363, metadata !785), !dbg !1802
  tail call void @llvm.dbg.value(metadata i32* %remapping_of_pic_nums_idc, i64 0, metadata !364, metadata !785), !dbg !1803
  tail call void @llvm.dbg.value(metadata i32* %abs_diff_pic_num_minus1, i64 0, metadata !365, metadata !785), !dbg !1804
  tail call void @llvm.dbg.value(metadata i32* %long_term_pic_idx, i64 0, metadata !366, metadata !785), !dbg !1805
  tail call void @llvm.dbg.value(metadata i32 %weighted_prediction, i64 0, metadata !367, metadata !785), !dbg !1806
  tail call void @llvm.dbg.value(metadata i32 %list_no, i64 0, metadata !368, metadata !785), !dbg !1807
  call void @llvm.lifetime.start(i64 128, i8* %1) #3, !dbg !1808
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %default_order, metadata !374, metadata !785), !dbg !1809
  %3 = bitcast [32 x i32]* %re_order to i8*, !dbg !1810
  call void @llvm.lifetime.start(i64 128, i8* %3) #3, !dbg !1810
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %re_order, metadata !378, metadata !785), !dbg !1811
  call void @llvm.lifetime.start(i64 128, i8* %2) #3, !dbg !1812
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %tmp_reorder, metadata !379, metadata !785), !dbg !1813
  %4 = bitcast [32 x i32]* %list_sign to i8*, !dbg !1814
  call void @llvm.lifetime.start(i64 128, i8* %4) #3, !dbg !1814
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %list_sign, metadata !380, metadata !785), !dbg !1815
  %5 = bitcast [32 x i32]* %poc_diff to i8*, !dbg !1816
  call void @llvm.lifetime.start(i64 128, i8* %5) #3, !dbg !1816
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %poc_diff, metadata !383, metadata !785), !dbg !1817
  %6 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !1818, !tbaa !914
  %7 = add i32 %6, 4, !dbg !1819
  %8 = shl i32 1, %7, !dbg !1820
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !388, metadata !785), !dbg !1821
  %9 = load %struct.ImageParameters** @img, align 8, !dbg !1822, !tbaa !775
  %10 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 7, !dbg !1824
  %11 = load i32* %10, align 4, !dbg !1824, !tbaa !1126
  %12 = icmp eq i32 %11, 0, !dbg !1825
  %13 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 105
  %14 = load i32* %13, align 4
  br i1 %12, label %19, label %15, !dbg !1826

; <label>:15                                      ; preds = %0
  %16 = shl nsw i32 %8, 1, !dbg !1827
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !387, metadata !785), !dbg !1829
  %17 = shl i32 %14, 1, !dbg !1830
  %18 = or i32 %17, 1, !dbg !1831
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !372, metadata !785), !dbg !1832
  br label %19

; <label>:19                                      ; preds = %0, %15
  %currPicNum.0 = phi i32 [ %18, %15 ], [ %14, %0 ]
  %maxPicNum.0 = phi i32 [ %16, %15 ], [ %8, %0 ]
  tail call void @llvm.dbg.value(metadata i32 %currPicNum.0, i64 0, metadata !373, metadata !785), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !369, metadata !785), !dbg !1834
  %20 = icmp eq i32 %num_ref_idx_lX_active, 0, !dbg !1835
  br i1 %20, label %.preheader10, label %.lr.ph43, !dbg !1838

.lr.ph43:                                         ; preds = %19
  %21 = add i32 %num_ref_idx_lX_active, -1, !dbg !1838
  br label %29, !dbg !1838

.preheader10:                                     ; preds = %29, %19
  %22 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !dbg !1839, !tbaa !1842
  %23 = icmp eq i32 %22, 0, !dbg !1843
  br i1 %23, label %.lr.ph38, label %.lr.ph40, !dbg !1844

.lr.ph40:                                         ; preds = %.preheader10
  %24 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !dbg !1845, !tbaa !1847
  %25 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1848, !tbaa !775
  %26 = getelementptr inbounds %struct.storable_picture* %25, i64 0, i32 1, !dbg !1851
  %27 = icmp eq i32 %list_no, 0, !dbg !1852
  %28 = zext i32 %22 to i64, !dbg !1844
  br label %39, !dbg !1844

; <label>:29                                      ; preds = %29, %.lr.ph43
  %indvars.iv66 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next67, %29 ]
  %30 = getelementptr inbounds %struct.storable_picture** %list, i64 %indvars.iv66, !dbg !1854
  %31 = load %struct.storable_picture** %30, align 8, !dbg !1854, !tbaa !775
  %32 = getelementptr inbounds %struct.storable_picture* %31, i64 0, i32 11, !dbg !1856
  %33 = load i32* %32, align 4, !dbg !1856, !tbaa !1857
  %34 = getelementptr inbounds [32 x i32]* %default_order, i64 0, i64 %indvars.iv66, !dbg !1858
  store i32 %33, i32* %34, align 4, !dbg !1859, !tbaa !914
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1, !dbg !1838
  %lftr.wideiv68 = trunc i64 %indvars.iv66 to i32, !dbg !1838
  %exitcond69 = icmp eq i32 %lftr.wideiv68, %21, !dbg !1838
  br i1 %exitcond69, label %.preheader10, label %29, !dbg !1838

.preheader9:                                      ; preds = %75
  %35 = icmp eq i32 %22, 1, !dbg !1860
  br i1 %35, label %.preheader7, label %.lr.ph38, !dbg !1863

.lr.ph38:                                         ; preds = %.preheader10, %.preheader9
  %36 = add i32 %22, -1, !dbg !1864
  %37 = zext i32 %22 to i64, !dbg !1863
  %38 = zext i32 %36 to i64, !dbg !1863
  br label %79, !dbg !1863

; <label>:39                                      ; preds = %.lr.ph40, %75
  %indvars.iv64 = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next65, %75 ]
  %40 = getelementptr inbounds %struct.frame_store** %24, i64 %indvars.iv64, !dbg !1865
  %41 = load %struct.frame_store** %40, align 8, !dbg !1865, !tbaa !775
  %42 = getelementptr inbounds %struct.frame_store* %41, i64 0, i32 10, !dbg !1866
  %43 = load %struct.storable_picture** %42, align 8, !dbg !1866, !tbaa !1867
  %44 = getelementptr inbounds %struct.storable_picture* %43, i64 0, i32 11, !dbg !1869
  %45 = load i32* %44, align 4, !dbg !1869, !tbaa !1857
  %46 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv64, !dbg !1870
  store i32 %45, i32* %46, align 4, !dbg !1871, !tbaa !914
  %47 = getelementptr inbounds %struct.frame_store* %41, i64 0, i32 0, !dbg !1872
  %48 = load i32* %47, align 4, !dbg !1872, !tbaa !1873
  %49 = icmp eq i32 %48, 3, !dbg !1874
  br i1 %49, label %50, label %75, !dbg !1875

; <label>:50                                      ; preds = %39
  %51 = getelementptr inbounds %struct.storable_picture* %43, i64 0, i32 15, !dbg !1876
  %52 = load i32* %51, align 4, !dbg !1876, !tbaa !1877
  %53 = icmp eq i32 %52, 0, !dbg !1878
  br i1 %53, label %75, label %54, !dbg !1879

; <label>:54                                      ; preds = %50
  %55 = getelementptr inbounds %struct.storable_picture* %43, i64 0, i32 14, !dbg !1880
  %56 = load i32* %55, align 4, !dbg !1880, !tbaa !1881
  %57 = icmp eq i32 %56, 0, !dbg !1882
  br i1 %57, label %58, label %75, !dbg !1883

; <label>:58                                      ; preds = %54
  %59 = getelementptr inbounds %struct.storable_picture* %43, i64 0, i32 1, !dbg !1884
  %60 = load i32* %59, align 4, !dbg !1884, !tbaa !1370
  %61 = load i32* %26, align 4, !dbg !1851, !tbaa !1370
  %62 = sub nsw i32 %60, %61, !dbg !1885
  %ispos3 = icmp sgt i32 %62, -1, !dbg !1886
  %neg4 = sub i32 0, %62, !dbg !1886
  %63 = select i1 %ispos3, i32 %62, i32 %neg4, !dbg !1886
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !386, metadata !785), !dbg !1887
  %64 = getelementptr inbounds [32 x i32]* %poc_diff, i64 0, i64 %indvars.iv64, !dbg !1888
  store i32 %63, i32* %64, align 4, !dbg !1889, !tbaa !914
  br i1 %27, label %65, label %70, !dbg !1890

; <label>:65                                      ; preds = %58
  %66 = icmp sgt i32 %60, %61, !dbg !1891
  %67 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv64, !dbg !1894
  br i1 %66, label %68, label %69, !dbg !1896

; <label>:68                                      ; preds = %65
  store i32 1, i32* %67, align 4, !dbg !1897, !tbaa !914
  br label %75, !dbg !1898

; <label>:69                                      ; preds = %65
  store i32 -1, i32* %67, align 4, !dbg !1899, !tbaa !914
  br label %75

; <label>:70                                      ; preds = %58
  %71 = icmp slt i32 %60, %61, !dbg !1901
  %72 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv64, !dbg !1904
  br i1 %71, label %73, label %74, !dbg !1906

; <label>:73                                      ; preds = %70
  store i32 1, i32* %72, align 4, !dbg !1907, !tbaa !914
  br label %75, !dbg !1908

; <label>:74                                      ; preds = %70
  store i32 -1, i32* %72, align 4, !dbg !1909, !tbaa !914
  br label %75

; <label>:75                                      ; preds = %54, %50, %39, %73, %74, %68, %69
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1, !dbg !1844
  %76 = icmp ult i64 %indvars.iv.next65, %28, !dbg !1843
  br i1 %76, label %39, label %.preheader9, !dbg !1844

.loopexit8:                                       ; preds = %102, %79
  %77 = icmp ult i64 %indvars.iv.next63, %38, !dbg !1860
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1, !dbg !1863
  br i1 %77, label %79, label %.preheader7, !dbg !1863

.preheader7:                                      ; preds = %.loopexit8, %.preheader9
  br i1 %20, label %.thread, label %.lr.ph31, !dbg !1911

.lr.ph31:                                         ; preds = %.preheader7
  %78 = add i32 %num_ref_idx_lX_active, -1, !dbg !1911
  br label %103, !dbg !1911

; <label>:79                                      ; preds = %.lr.ph38, %.loopexit8
  %indvars.iv62 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next63, %.loopexit8 ]
  %indvars.iv56 = phi i64 [ 1, %.lr.ph38 ], [ %indvars.iv.next57, %.loopexit8 ]
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1, !dbg !1863
  %80 = icmp ult i64 %indvars.iv.next63, %37, !dbg !1913
  br i1 %80, label %.lr.ph36, label %.loopexit8, !dbg !1917

.lr.ph36:                                         ; preds = %79
  %81 = getelementptr inbounds [32 x i32]* %poc_diff, i64 0, i64 %indvars.iv62, !dbg !1918
  %82 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv62, !dbg !1921
  %83 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv62, !dbg !1923
  br label %84, !dbg !1917

; <label>:84                                      ; preds = %102, %.lr.ph36
  %indvars.iv58 = phi i64 [ %indvars.iv56, %.lr.ph36 ], [ %indvars.iv.next59, %102 ]
  %85 = load i32* %81, align 4, !dbg !1918, !tbaa !914
  %86 = getelementptr inbounds [32 x i32]* %poc_diff, i64 0, i64 %indvars.iv58, !dbg !1924
  %87 = load i32* %86, align 4, !dbg !1924, !tbaa !914
  %88 = icmp sgt i32 %85, %87, !dbg !1925
  br i1 %88, label %._crit_edge, label %89, !dbg !1926

._crit_edge:                                      ; preds = %84
  %.pre = load i32* %83, align 4, !dbg !1923, !tbaa !914
  %.phi.trans.insert = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv58
  %.pre70 = load i32* %.phi.trans.insert, align 4, !dbg !1927, !tbaa !914
  br label %96, !dbg !1926

; <label>:89                                      ; preds = %84
  %90 = icmp eq i32 %85, %87, !dbg !1928
  br i1 %90, label %91, label %102, !dbg !1929

; <label>:91                                      ; preds = %89
  %92 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv58, !dbg !1930
  %93 = load i32* %92, align 4, !dbg !1930, !tbaa !914
  %94 = load i32* %83, align 4, !dbg !1931, !tbaa !914
  %95 = icmp sgt i32 %93, %94, !dbg !1932
  br i1 %95, label %96, label %102, !dbg !1933

; <label>:96                                      ; preds = %._crit_edge, %91
  %.pre-phi = phi i32* [ %.phi.trans.insert, %._crit_edge ], [ %92, %91 ], !dbg !1927
  %97 = phi i32 [ %.pre70, %._crit_edge ], [ %93, %91 ]
  %98 = phi i32 [ %.pre, %._crit_edge ], [ %94, %91 ]
  tail call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !384, metadata !785), !dbg !1934
  store i32 %87, i32* %81, align 4, !dbg !1935, !tbaa !914
  store i32 %85, i32* %86, align 4, !dbg !1936, !tbaa !914
  %99 = load i32* %82, align 4, !dbg !1921, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !384, metadata !785), !dbg !1934
  %100 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv58, !dbg !1937
  %101 = load i32* %100, align 4, !dbg !1937, !tbaa !914
  store i32 %101, i32* %82, align 4, !dbg !1938, !tbaa !914
  store i32 %99, i32* %100, align 4, !dbg !1939, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !384, metadata !785), !dbg !1934
  store i32 %97, i32* %83, align 4, !dbg !1940, !tbaa !914
  store i32 %98, i32* %.pre-phi, align 4, !dbg !1941, !tbaa !914
  br label %102, !dbg !1942

; <label>:102                                     ; preds = %89, %91, %96
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1, !dbg !1917
  %lftr.wideiv60 = trunc i64 %indvars.iv58 to i32, !dbg !1917
  %exitcond61 = icmp eq i32 %lftr.wideiv60, %36, !dbg !1917
  br i1 %exitcond61, label %.loopexit8, label %84, !dbg !1917

; <label>:103                                     ; preds = %103, %.lr.ph31
  %indvars.iv = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next, %103 ]
  %no_reorder.029 = phi i32 [ 1, %.lr.ph31 ], [ %no_reorder.0., %103 ]
  %104 = getelementptr inbounds [32 x i32]* %default_order, i64 0, i64 %indvars.iv, !dbg !1943
  %105 = load i32* %104, align 4, !dbg !1943, !tbaa !914
  %106 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv, !dbg !1947
  %107 = load i32* %106, align 4, !dbg !1947, !tbaa !914
  %108 = icmp eq i32 %105, %107, !dbg !1948
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !382, metadata !785), !dbg !1949
  %no_reorder.0. = select i1 %108, i32 %no_reorder.029, i32 0, !dbg !1950
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1911
  %lftr.wideiv54 = trunc i64 %indvars.iv to i32, !dbg !1911
  %exitcond55 = icmp eq i32 %lftr.wideiv54, %78, !dbg !1911
  br i1 %exitcond55, label %109, label %103, !dbg !1911

; <label>:109                                     ; preds = %103
  %phitmp = icmp eq i32 %no_reorder.0., 0, !dbg !1911
  br i1 %phitmp, label %.preheader5, label %.thread, !dbg !1951

.preheader5:                                      ; preds = %109
  br i1 %20, label %.critedge.thread, label %.lr.ph27, !dbg !1952

.critedge.thread:                                 ; preds = %.preheader5
  store i32 3, i32* %remapping_of_pic_nums_idc, align 4, !dbg !1956, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !370, metadata !785), !dbg !1957
  br label %156, !dbg !1958

.lr.ph27:                                         ; preds = %.preheader5
  %110 = add i32 %num_ref_idx_lX_active, -1, !dbg !1952
  %111 = zext i32 %110 to i64
  %112 = shl nuw nsw i64 %111, 2, !dbg !1952
  %113 = add nuw nsw i64 %112, 4, !dbg !1952
  %114 = zext i32 %num_ref_idx_lX_active to i64, !dbg !1952
  br label %115, !dbg !1952

.loopexit:                                        ; preds = %143
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 %113, i32 16, i1 false), !dbg !1960
  br label %115, !dbg !1952

; <label>:115                                     ; preds = %.loopexit, %.lr.ph27
  %indvars.iv52 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next53, %.loopexit ]
  %picNumLXPred.025 = phi i32 [ %currPicNum.0, %.lr.ph27 ], [ %117, %.loopexit ]
  %116 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv52, !dbg !1966
  %117 = load i32* %116, align 4, !dbg !1966, !tbaa !914
  %118 = sub nsw i32 %117, %picNumLXPred.025, !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !385, metadata !785), !dbg !1968
  %119 = icmp slt i32 %118, 1, !dbg !1969
  %120 = getelementptr inbounds i32* %remapping_of_pic_nums_idc, i64 %indvars.iv52, !dbg !1971
  br i1 %119, label %121, label %125, !dbg !1973

; <label>:121                                     ; preds = %115
  store i32 0, i32* %120, align 4, !dbg !1974, !tbaa !914
  %ispos1 = icmp sgt i32 %118, -1, !dbg !1975
  %neg2 = sub i32 0, %118, !dbg !1975
  %122 = select i1 %ispos1, i32 %118, i32 %neg2, !dbg !1975
  %123 = getelementptr inbounds i32* %abs_diff_pic_num_minus1, i64 %indvars.iv52, !dbg !1976
  %124 = icmp slt i32 %122, 1, !dbg !1977
  %..v = select i1 %124, i32 %maxPicNum.0, i32 %122, !dbg !1979
  %. = add i32 %..v, -1, !dbg !1979
  store i32 %., i32* %123, align 4, !dbg !1980, !tbaa !914
  br label %.lr.ph16, !dbg !1979

; <label>:125                                     ; preds = %115
  store i32 1, i32* %120, align 4, !dbg !1981, !tbaa !914
  %126 = add nsw i32 %118, -1, !dbg !1983
  %127 = getelementptr inbounds i32* %abs_diff_pic_num_minus1, i64 %indvars.iv52, !dbg !1984
  store i32 %126, i32* %127, align 4, !dbg !1985, !tbaa !914
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %121, %125
  tail call void @llvm.dbg.value(metadata i32 %117, i64 0, metadata !373, metadata !785), !dbg !1833
  %128 = getelementptr inbounds [32 x i32]* %tmp_reorder, i64 0, i64 %indvars.iv52, !dbg !1986
  store i32 %117, i32* %128, align 4, !dbg !1987, !tbaa !914
  %129 = trunc i64 %indvars.iv52 to i32, !dbg !1988
  br label %130, !dbg !1988

; <label>:130                                     ; preds = %138, %.lr.ph16
  %indvars.iv46 = phi i64 [ %indvars.iv52, %.lr.ph16 ], [ %indvars.iv.next47, %138 ]
  %k.013 = phi i32 [ %129, %.lr.ph16 ], [ %k.1, %138 ]
  %131 = getelementptr inbounds [32 x i32]* %default_order, i64 0, i64 %indvars.iv46, !dbg !1990
  %132 = load i32* %131, align 4, !dbg !1990, !tbaa !914
  %133 = icmp eq i32 %132, %117, !dbg !1994
  br i1 %133, label %138, label %134, !dbg !1995

; <label>:134                                     ; preds = %130
  %135 = add i32 %k.013, 1, !dbg !1996
  tail call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !371, metadata !785), !dbg !1998
  %136 = zext i32 %135 to i64, !dbg !1999
  %137 = getelementptr inbounds [32 x i32]* %tmp_reorder, i64 0, i64 %136, !dbg !1999
  store i32 %132, i32* %137, align 4, !dbg !2000, !tbaa !914
  br label %138, !dbg !2001

; <label>:138                                     ; preds = %130, %134
  %k.1 = phi i32 [ %135, %134 ], [ %k.013, %130 ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !1988
  %lftr.wideiv = trunc i64 %indvars.iv46 to i32, !dbg !1988
  %exitcond = icmp eq i32 %lftr.wideiv, %110, !dbg !1988
  br i1 %exitcond, label %._crit_edge17, label %130, !dbg !1988

._crit_edge17:                                    ; preds = %138
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !381, metadata !785), !dbg !2002
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1, !dbg !1952
  %139 = icmp ult i64 %indvars.iv.next53, %114, !dbg !2003
  br i1 %139, label %.lr.ph20, label %.critedge, !dbg !2006

.lr.ph20:                                         ; preds = %._crit_edge17
  %140 = trunc i64 %indvars.iv.next53 to i32, !dbg !2006
  br label %143, !dbg !2006

; <label>:141                                     ; preds = %143
  %142 = icmp ult i32 %150, %num_ref_idx_lX_active, !dbg !2003
  br i1 %142, label %143, label %.critedge, !dbg !2006

; <label>:143                                     ; preds = %.lr.ph20, %141
  %j.218 = phi i32 [ %140, %.lr.ph20 ], [ %150, %141 ]
  %144 = zext i32 %j.218 to i64, !dbg !2007
  %145 = getelementptr inbounds [32 x i32]* %tmp_reorder, i64 0, i64 %144, !dbg !2007
  %146 = load i32* %145, align 4, !dbg !2007, !tbaa !914
  %147 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %144, !dbg !2010
  %148 = load i32* %147, align 4, !dbg !2010, !tbaa !914
  %149 = icmp eq i32 %146, %148, !dbg !2011
  %150 = add nuw i32 %j.218, 1, !dbg !2012
  tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !370, metadata !785), !dbg !1957
  br i1 %149, label %141, label %.loopexit, !dbg !2013

.critedge:                                        ; preds = %._crit_edge17, %141
  %phitmp72 = and i64 %indvars.iv.next53, 4294967295
  %151 = getelementptr inbounds i32* %remapping_of_pic_nums_idc, i64 %phitmp72, !dbg !2014
  store i32 3, i32* %151, align 4, !dbg !1956, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !370, metadata !785), !dbg !1957
  br i1 %20, label %156, label %.lr.ph, !dbg !1958

.lr.ph:                                           ; preds = %.critedge
  %152 = add i32 %num_ref_idx_lX_active, -1, !dbg !1958
  %153 = zext i32 %152 to i64
  %154 = shl nuw nsw i64 %153, 2, !dbg !1958
  %155 = add nuw nsw i64 %154, 4, !dbg !1958
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 %155, i32 16, i1 false), !dbg !2015
  br label %156, !dbg !1958

; <label>:156                                     ; preds = %.critedge.thread, %.critedge, %.lr.ph
  %157 = icmp eq i32 %list_no, 0, !dbg !2018
  %158 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 50, !dbg !2020
  %159 = load %struct.Slice** %158, align 8, !dbg !2020, !tbaa !780
  br i1 %157, label %160, label %162, !dbg !2022

; <label>:160                                     ; preds = %156
  %161 = getelementptr inbounds %struct.Slice* %159, i64 0, i32 10, !dbg !2023
  store i32 1, i32* %161, align 4, !dbg !2024, !tbaa !789
  br label %.thread, !dbg !2025

; <label>:162                                     ; preds = %156
  %163 = getelementptr inbounds %struct.Slice* %159, i64 0, i32 14, !dbg !2026
  store i32 1, i32* %163, align 4, !dbg !2028, !tbaa !793
  br label %.thread

.thread:                                          ; preds = %.preheader7, %160, %162, %109
  call void @llvm.lifetime.end(i64 128, i8* %5) #3, !dbg !2029
  call void @llvm.lifetime.end(i64 128, i8* %4) #3, !dbg !2029
  call void @llvm.lifetime.end(i64 128, i8* %2) #3, !dbg !2029
  call void @llvm.lifetime.end(i64 128, i8* %3) #3, !dbg !2029
  call void @llvm.lifetime.end(i64 128, i8* %1) #3, !dbg !2029
  ret void, !dbg !2029
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #4

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
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: optsize
declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #2

; Function Attrs: optsize
declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: optsize
declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #2

; Function Attrs: optsize
declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!770, !771, !772}
!llvm.ident = !{!773}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !34, subprograms: !217, globals: !423, imports: !769)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/slice.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !8, !13, !17, !22, !27}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 96, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "PAR_DP_1", value: 0)
!12 = !DIEnumerator(name: "PAR_DP_3", value: 1)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 178, size: 32, align: 32, elements: !14)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "UVLC", value: 0)
!16 = !DIEnumerator(name: "CABAC", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 111, size: 32, align: 32, elements: !18)
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "FRAME_CODING", value: 0)
!20 = !DIEnumerator(name: "FIELD_CODING", value: 1)
!21 = !DIEnumerator(name: "ADAPTIVE_CODING", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 185, size: 32, align: 32, elements: !23)
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "FRAME", value: 0)
!25 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!26 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 192, size: 32, align: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "P_SLICE", value: 0)
!30 = !DIEnumerator(name: "B_SLICE", value: 1)
!31 = !DIEnumerator(name: "I_SLICE", value: 2)
!32 = !DIEnumerator(name: "SP_SLICE", value: 3)
!33 = !DIEnumerator(name: "SI_SLICE", value: 4)
!34 = !{!35, !36, !48, !53, !70}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !9, line: 471, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 443, size: 1216, align: 64, elements: !39)
!39 = !{!40, !42, !43, !44, !45, !46, !47, !126, !165, !192, !201, !202, !203, !204, !205, !206, !207, !208, !209, !214}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !38, file: !9, line: 445, baseType: !41, size: 32, align: 32)
!41 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !38, file: !9, line: 446, baseType: !41, size: 32, align: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !38, file: !9, line: 447, baseType: !41, size: 32, align: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !38, file: !9, line: 448, baseType: !41, size: 32, align: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !38, file: !9, line: 449, baseType: !41, size: 32, align: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !38, file: !9, line: 450, baseType: !41, size: 32, align: 32, offset: 160)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !38, file: !9, line: 451, baseType: !48, size: 64, align: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !9, line: 440, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !9, line: 430, size: 960, align: 64, elements: !51)
!51 = !{!52, !72, !98}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !50, file: !9, line: 433, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !9, line: 427, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 411, size: 384, align: 64, elements: !56)
!56 = !{!57, !58, !59, !63, !64, !65, !66, !67, !68, !69, !71}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !55, file: !9, line: 413, baseType: !41, size: 32, align: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !55, file: !9, line: 414, baseType: !41, size: 32, align: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !55, file: !9, line: 415, baseType: !60, size: 8, align: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !61, line: 30, baseType: !62)
!61 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!62 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !55, file: !9, line: 416, baseType: !41, size: 32, align: 32, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !55, file: !9, line: 417, baseType: !41, size: 32, align: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !55, file: !9, line: 418, baseType: !60, size: 8, align: 8, offset: 160)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !55, file: !9, line: 420, baseType: !60, size: 8, align: 8, offset: 168)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !55, file: !9, line: 421, baseType: !41, size: 32, align: 32, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !55, file: !9, line: 422, baseType: !41, size: 32, align: 32, offset: 224)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !55, file: !9, line: 424, baseType: !70, size: 64, align: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !55, file: !9, line: 425, baseType: !41, size: 32, align: 32, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !50, file: !9, line: 434, baseType: !73, size: 832, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !9, line: 226, baseType: !74)
!74 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 207, size: 832, align: 64, elements: !75)
!75 = !{!76, !78, !79, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !74, file: !9, line: 209, baseType: !77, size: 32, align: 32)
!77 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !74, file: !9, line: 209, baseType: !77, size: 32, align: 32, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !74, file: !9, line: 210, baseType: !77, size: 32, align: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !74, file: !9, line: 211, baseType: !77, size: 32, align: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !74, file: !9, line: 212, baseType: !77, size: 32, align: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !74, file: !9, line: 213, baseType: !70, size: 64, align: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !74, file: !9, line: 214, baseType: !84, size: 64, align: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !74, file: !9, line: 217, baseType: !77, size: 32, align: 32, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !74, file: !9, line: 217, baseType: !77, size: 32, align: 32, offset: 352)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !74, file: !9, line: 218, baseType: !77, size: 32, align: 32, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !74, file: !9, line: 219, baseType: !77, size: 32, align: 32, offset: 416)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !74, file: !9, line: 220, baseType: !77, size: 32, align: 32, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !74, file: !9, line: 221, baseType: !70, size: 64, align: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !74, file: !9, line: 222, baseType: !84, size: 64, align: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !74, file: !9, line: 223, baseType: !41, size: 32, align: 32, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !74, file: !9, line: 223, baseType: !41, size: 32, align: 32, offset: 672)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !74, file: !9, line: 224, baseType: !41, size: 32, align: 32, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !74, file: !9, line: 224, baseType: !41, size: 32, align: 32, offset: 736)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !74, file: !9, line: 225, baseType: !41, size: 32, align: 32, offset: 768)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !74, file: !9, line: 225, baseType: !41, size: 32, align: 32, offset: 800)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !50, file: !9, line: 436, baseType: !99, size: 64, align: 64, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!41, !102, !125}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !9, line: 348, baseType: !104)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !9, line: 327, size: 384, align: 64, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !118}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !9, line: 329, baseType: !41, size: 32, align: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !104, file: !9, line: 330, baseType: !41, size: 32, align: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !104, file: !9, line: 331, baseType: !41, size: 32, align: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !104, file: !9, line: 332, baseType: !41, size: 32, align: 32, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !104, file: !9, line: 333, baseType: !41, size: 32, align: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !104, file: !9, line: 334, baseType: !77, size: 32, align: 32, offset: 160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !104, file: !9, line: 335, baseType: !41, size: 32, align: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !104, file: !9, line: 336, baseType: !41, size: 32, align: 32, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !104, file: !9, line: 344, baseType: !115, size: 64, align: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !41, !41, !84, !84}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !104, file: !9, line: 346, baseType: !119, size: 64, align: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122, !123}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !9, line: 228, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !38, file: !9, line: 452, baseType: !127, size: 64, align: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !9, line: 268, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 258, size: 12032, align: 64, elements: !130)
!130 = !{!131, !144, !149, !153, !157, !161, !162}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !129, file: !9, line: 260, baseType: !132, size: 4224, align: 64)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 4224, align: 64, elements: !141)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !9, line: 238, baseType: !134)
!134 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 231, size: 128, align: 64, elements: !135)
!135 = !{!136, !138, !139}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !134, file: !9, line: 233, baseType: !137, size: 16, align: 16)
!137 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !134, file: !9, line: 234, baseType: !62, size: 8, align: 8, offset: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !134, file: !9, line: 236, baseType: !140, size: 64, align: 64, offset: 64)
!140 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!141 = !{!142, !143}
!142 = !DISubrange(count: 3)
!143 = !DISubrange(count: 11)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !129, file: !9, line: 261, baseType: !145, size: 2304, align: 64, offset: 4224)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2304, align: 64, elements: !146)
!146 = !{!147, !148}
!147 = !DISubrange(count: 2)
!148 = !DISubrange(count: 9)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !129, file: !9, line: 262, baseType: !150, size: 2560, align: 64, offset: 6528)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2560, align: 64, elements: !151)
!151 = !{!147, !152}
!152 = !DISubrange(count: 10)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !129, file: !9, line: 263, baseType: !154, size: 1536, align: 64, offset: 9088)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1536, align: 64, elements: !155)
!155 = !{!147, !156}
!156 = !DISubrange(count: 6)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !129, file: !9, line: 264, baseType: !158, size: 512, align: 64, offset: 10624)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 512, align: 64, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 4)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !129, file: !9, line: 265, baseType: !158, size: 512, align: 64, offset: 11136)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !129, file: !9, line: 266, baseType: !163, size: 384, align: 64, offset: 11648)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 384, align: 64, elements: !164)
!164 = !{!142}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !38, file: !9, line: 453, baseType: !166, size: 64, align: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !9, line: 293, baseType: !168)
!168 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 281, size: 97024, align: 64, elements: !169)
!169 = !{!170, !173, !174, !177, !180, !184, !185, !189, !190, !191}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !168, file: !9, line: 283, baseType: !171, size: 256, align: 64)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, align: 64, elements: !172)
!172 = !{!147}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !168, file: !9, line: 284, baseType: !158, size: 512, align: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !168, file: !9, line: 285, baseType: !175, size: 1536, align: 64, offset: 768)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1536, align: 64, elements: !176)
!176 = !{!142, !160}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !168, file: !9, line: 286, baseType: !178, size: 5120, align: 64, offset: 2304)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 5120, align: 64, elements: !179)
!179 = !{!152, !160}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !168, file: !9, line: 287, baseType: !181, size: 19200, align: 64, offset: 7424)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 19200, align: 64, elements: !182)
!182 = !{!152, !183}
!183 = !DISubrange(count: 15)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !168, file: !9, line: 288, baseType: !181, size: 19200, align: 64, offset: 26624)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !168, file: !9, line: 289, baseType: !186, size: 6400, align: 64, offset: 45824)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 6400, align: 64, elements: !187)
!187 = !{!152, !188}
!188 = !DISubrange(count: 5)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !168, file: !9, line: 290, baseType: !186, size: 6400, align: 64, offset: 52224)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !168, file: !9, line: 291, baseType: !181, size: 19200, align: 64, offset: 58624)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !168, file: !9, line: 292, baseType: !181, size: 19200, align: 64, offset: 77824)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !38, file: !9, line: 456, baseType: !193, size: 64, align: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !9, line: 313, baseType: !195)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !9, line: 308, size: 128, align: 64, elements: !196)
!196 = !{!197, !198, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !195, file: !9, line: 310, baseType: !41, size: 32, align: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !195, file: !9, line: 311, baseType: !41, size: 32, align: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !195, file: !9, line: 312, baseType: !200, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !38, file: !9, line: 458, baseType: !41, size: 32, align: 32, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !38, file: !9, line: 459, baseType: !84, size: 64, align: 64, offset: 512)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !38, file: !9, line: 460, baseType: !84, size: 64, align: 64, offset: 576)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !38, file: !9, line: 461, baseType: !84, size: 64, align: 64, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !38, file: !9, line: 462, baseType: !41, size: 32, align: 32, offset: 704)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !38, file: !9, line: 463, baseType: !84, size: 64, align: 64, offset: 768)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !38, file: !9, line: 464, baseType: !84, size: 64, align: 64, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !38, file: !9, line: 465, baseType: !84, size: 64, align: 64, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !38, file: !9, line: 467, baseType: !210, size: 64, align: 64, offset: 960)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !41}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !38, file: !9, line: 469, baseType: !215, size: 192, align: 32, offset: 1024)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 192, align: 32, elements: !216)
!216 = !{!142, !147}
!217 = !{!218, !223, !233, !241, !270, !276, !283, !389, !403, !412, !416}
!218 = !DISubprogram(name: "init_ref_pic_list_reordering", scope: !1, file: !1, line: 50, type: !219, isLocal: false, isDefinition: true, scopeLine: 51, isOptimized: true, function: void ()* @init_ref_pic_list_reordering, variables: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{null}
!221 = !{!222}
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currSlice", scope: !218, file: !1, line: 52, type: !36)
!223 = !DISubprogram(name: "start_slice", scope: !1, file: !1, line: 72, type: !224, isLocal: false, isDefinition: true, scopeLine: 73, isOptimized: true, function: i32 ()* @start_slice, variables: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{!41}
!226 = !{!227, !228, !229, !230, !231, !232}
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eep", scope: !223, file: !1, line: 74, type: !123)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currSlice", scope: !223, file: !1, line: 75, type: !36)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currStream", scope: !223, file: !1, line: 76, type: !53)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header_len", scope: !223, file: !1, line: 77, type: !41)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !223, file: !1, line: 78, type: !41)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "NumberOfPartitions", scope: !223, file: !1, line: 79, type: !41)
!233 = !DISubprogram(name: "terminate_slice", scope: !1, file: !1, line: 134, type: !224, isLocal: false, isDefinition: true, scopeLine: 135, isOptimized: true, function: i32 ()* @terminate_slice, variables: !234)
!234 = !{!235, !236, !237, !238, !239, !240}
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes_written", scope: !233, file: !1, line: 136, type: !41)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currStream", scope: !233, file: !1, line: 137, type: !53)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currSlice", scope: !233, file: !1, line: 138, type: !36)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eep", scope: !233, file: !1, line: 139, type: !123)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !233, file: !1, line: 140, type: !41)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byte_pos_before_startcode_emu_prevention", scope: !233, file: !1, line: 141, type: !41)
!241 = !DISubprogram(name: "encode_one_slice", scope: !1, file: !1, line: 185, type: !242, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.Picture*)* @encode_one_slice, variables: !259)
!242 = !DISubroutineType(types: !243)
!243 = !{!41, !41, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !9, line: 484, baseType: !246)
!246 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 475, size: 6592, align: 64, elements: !247)
!247 = !{!248, !249, !250, !254, !255, !257, !258}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !246, file: !9, line: 477, baseType: !41, size: 32, align: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !246, file: !9, line: 478, baseType: !41, size: 32, align: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !246, file: !9, line: 479, baseType: !251, size: 6400, align: 64, offset: 64)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 6400, align: 64, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 100)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !246, file: !9, line: 480, baseType: !41, size: 32, align: 32, offset: 6464)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !246, file: !9, line: 481, baseType: !256, size: 32, align: 32, offset: 6496)
!256 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !246, file: !9, line: 482, baseType: !256, size: 32, align: 32, offset: 6528)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !246, file: !9, line: 483, baseType: !256, size: 32, align: 32, offset: 6560)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !269}
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SliceGroupId", arg: 1, scope: !241, file: !1, line: 185, type: !41)
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pic", arg: 2, scope: !241, file: !1, line: 185, type: !244)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end_of_slice", scope: !241, file: !1, line: 187, type: !213)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recode_macroblock", scope: !241, file: !1, line: 188, type: !213)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !241, file: !1, line: 189, type: !41)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "NumberOfCodedMBs", scope: !241, file: !1, line: 190, type: !41)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "CurrentMbAddr", scope: !241, file: !1, line: 191, type: !41)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FrameRDCost", scope: !241, file: !1, line: 192, type: !268)
!268 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FieldRDCost", scope: !241, file: !1, line: 192, type: !268)
!270 = !DISubprogram(name: "free_slice_list", scope: !1, file: !1, line: 731, type: !271, isLocal: false, isDefinition: true, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.Picture*)* @free_slice_list, variables: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !244}
!273 = !{!274, !275}
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "currPic", arg: 1, scope: !270, file: !1, line: 731, type: !244)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !270, file: !1, line: 733, type: !41)
!276 = !DISubprogram(name: "modify_redundant_pic_cnt", scope: !1, file: !1, line: 789, type: !277, isLocal: false, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @modify_redundant_pic_cnt, variables: !280)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!280 = !{!281, !282}
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffer", arg: 1, scope: !276, file: !1, line: 789, type: !279)
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !276, file: !1, line: 791, type: !62)
!283 = !DISubprogram(name: "poc_ref_pic_reorder", scope: !1, file: !1, line: 838, type: !284, isLocal: false, isDefinition: true, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.storable_picture**, i32, i32*, i32*, i32*, i32, i32)* @poc_ref_pic_reorder, variables: !361)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286, !77, !84, !84, !84, !41, !41}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !289, line: 82, baseType: !290)
!289 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/mbuffer.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !289, line: 21, size: 52672, align: 64, elements: !291)
!291 = !{!292, !294, !295, !296, !297, !298, !299, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !328, !329, !330, !331, !332, !334, !335, !340, !344, !345, !347, !349, !350, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !290, file: !289, line: 23, baseType: !293, size: 32, align: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !9, line: 190, baseType: !22)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !290, file: !289, line: 25, baseType: !41, size: 32, align: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !290, file: !289, line: 26, baseType: !41, size: 32, align: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !290, file: !289, line: 27, baseType: !41, size: 32, align: 32, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !290, file: !289, line: 28, baseType: !41, size: 32, align: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "order_num", scope: !290, file: !289, line: 29, baseType: !41, size: 32, align: 32, offset: 160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_num", scope: !290, file: !289, line: 30, baseType: !300, size: 12672, align: 64, offset: 192)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 12672, align: 64, elements: !305)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !9, line: 62, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !303, line: 30, baseType: !304)
!303 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!304 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!305 = !{!156, !306}
!306 = !DISubrange(count: 33)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "frm_ref_pic_num", scope: !290, file: !289, line: 31, baseType: !300, size: 12672, align: 64, offset: 12864)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "top_ref_pic_num", scope: !290, file: !289, line: 32, baseType: !300, size: 12672, align: 64, offset: 25536)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_ref_pic_num", scope: !290, file: !289, line: 33, baseType: !300, size: 12672, align: 64, offset: 38208)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !290, file: !289, line: 34, baseType: !77, size: 32, align: 32, offset: 50880)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !290, file: !289, line: 35, baseType: !41, size: 32, align: 32, offset: 50912)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !290, file: !289, line: 36, baseType: !41, size: 32, align: 32, offset: 50944)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !290, file: !289, line: 37, baseType: !41, size: 32, align: 32, offset: 50976)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !290, file: !289, line: 39, baseType: !41, size: 32, align: 32, offset: 51008)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !290, file: !289, line: 40, baseType: !41, size: 32, align: 32, offset: 51040)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !290, file: !289, line: 41, baseType: !41, size: 32, align: 32, offset: 51072)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !290, file: !289, line: 42, baseType: !41, size: 32, align: 32, offset: 51104)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !290, file: !289, line: 44, baseType: !41, size: 32, align: 32, offset: 51136)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !290, file: !289, line: 44, baseType: !41, size: 32, align: 32, offset: 51168)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !290, file: !289, line: 44, baseType: !41, size: 32, align: 32, offset: 51200)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !290, file: !289, line: 44, baseType: !41, size: 32, align: 32, offset: 51232)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !290, file: !289, line: 45, baseType: !41, size: 32, align: 32, offset: 51264)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !290, file: !289, line: 46, baseType: !41, size: 32, align: 32, offset: 51296)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "MbaffFrameFlag", scope: !290, file: !289, line: 47, baseType: !41, size: 32, align: 32, offset: 51328)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !290, file: !289, line: 49, baseType: !326, size: 64, align: 64, offset: 51392)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_11", scope: !290, file: !289, line: 50, baseType: !327, size: 64, align: 64, offset: 51456)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_11_w", scope: !290, file: !289, line: 51, baseType: !327, size: 64, align: 64, offset: 51520)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ups", scope: !290, file: !289, line: 52, baseType: !326, size: 64, align: 64, offset: 51584)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ups_w", scope: !290, file: !289, line: 53, baseType: !326, size: 64, align: 64, offset: 51648)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !290, file: !289, line: 54, baseType: !333, size: 64, align: 64, offset: 51712)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !290, file: !289, line: 56, baseType: !70, size: 64, align: 64, offset: 51776)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !290, file: !289, line: 58, baseType: !336, size: 64, align: 64, offset: 51840)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_id", scope: !290, file: !289, line: 60, baseType: !341, size: 64, align: 64, offset: 51904)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ref_id", scope: !290, file: !289, line: 63, baseType: !341, size: 64, align: 64, offset: 51968)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !290, file: !289, line: 66, baseType: !346, size: 64, align: 64, offset: 52032)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "moving_block", scope: !290, file: !289, line: 68, baseType: !348, size: 64, align: 64, offset: 52096)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "field_frame", scope: !290, file: !289, line: 69, baseType: !348, size: 64, align: 64, offset: 52160)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !290, file: !289, line: 71, baseType: !351, size: 64, align: 64, offset: 52224)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !290, file: !289, line: 72, baseType: !351, size: 64, align: 64, offset: 52288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !290, file: !289, line: 73, baseType: !351, size: 64, align: 64, offset: 52352)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !290, file: !289, line: 75, baseType: !41, size: 32, align: 32, offset: 52416)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !290, file: !289, line: 76, baseType: !41, size: 32, align: 32, offset: 52448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !290, file: !289, line: 77, baseType: !41, size: 32, align: 32, offset: 52480)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !290, file: !289, line: 78, baseType: !41, size: 32, align: 32, offset: 52512)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !290, file: !289, line: 79, baseType: !41, size: 32, align: 32, offset: 52544)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !290, file: !289, line: 80, baseType: !41, size: 32, align: 32, offset: 52576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !290, file: !289, line: 81, baseType: !41, size: 32, align: 32, offset: 52608)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !283, file: !1, line: 838, type: !286)
!363 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_ref_idx_lX_active", arg: 2, scope: !283, file: !1, line: 838, type: !77)
!364 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "remapping_of_pic_nums_idc", arg: 3, scope: !283, file: !1, line: 838, type: !84)
!365 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "abs_diff_pic_num_minus1", arg: 4, scope: !283, file: !1, line: 838, type: !84)
!366 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "long_term_pic_idx", arg: 5, scope: !283, file: !1, line: 838, type: !84)
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "weighted_prediction", arg: 6, scope: !283, file: !1, line: 838, type: !41)
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list_no", arg: 7, scope: !283, file: !1, line: 838, type: !41)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !283, file: !1, line: 840, type: !77)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !283, file: !1, line: 840, type: !77)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !283, file: !1, line: 840, type: !77)
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currPicNum", scope: !283, file: !1, line: 842, type: !41)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "picNumLXPred", scope: !283, file: !1, line: 842, type: !41)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "default_order", scope: !283, file: !1, line: 844, type: !375)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1024, align: 32, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 32)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re_order", scope: !283, file: !1, line: 845, type: !375)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_reorder", scope: !283, file: !1, line: 846, type: !375)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list_sign", scope: !283, file: !1, line: 847, type: !375)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reorder_stop", scope: !283, file: !1, line: 848, type: !41)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_reorder", scope: !283, file: !1, line: 848, type: !41)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "poc_diff", scope: !283, file: !1, line: 849, type: !375)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_value", scope: !283, file: !1, line: 850, type: !41)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diff", scope: !283, file: !1, line: 850, type: !41)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "abs_poc_dist", scope: !283, file: !1, line: 852, type: !41)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxPicNum", scope: !283, file: !1, line: 853, type: !41)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "MaxFrameNum", scope: !283, file: !1, line: 853, type: !41)
!389 = !DISubprogram(name: "init_slice", scope: !1, file: !1, line: 485, type: !390, isLocal: true, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, variables: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !41}
!392 = !{!393, !394, !395, !396, !397, !398, !399, !402}
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start_mb_addr", arg: 1, scope: !389, file: !1, line: 485, type: !41)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !389, file: !1, line: 487, type: !41)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currPic", scope: !389, file: !1, line: 488, type: !244)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dataPart", scope: !389, file: !1, line: 489, type: !48)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currStream", scope: !389, file: !1, line: 490, type: !53)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currSlice", scope: !389, file: !1, line: 491, type: !36)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !400, file: !1, line: 574, type: !41)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 572, column: 3)
!401 = distinct !DILexicalBlock(scope: !389, file: !1, line: 571, column: 7)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_ref", scope: !400, file: !1, line: 574, type: !41)
!403 = !DISubprogram(name: "malloc_slice", scope: !1, file: !1, line: 674, type: !404, isLocal: true, isDefinition: true, scopeLine: 675, isOptimized: true, variables: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!36}
!406 = !{!407, !408, !409, !410}
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !403, file: !1, line: 676, type: !41)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dataPart", scope: !403, file: !1, line: 677, type: !48)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slice", scope: !403, file: !1, line: 678, type: !36)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer_size", scope: !403, file: !1, line: 679, type: !411)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!412 = !DISubprogram(name: "set_ref_pic_num", scope: !1, file: !1, line: 795, type: !219, isLocal: true, isDefinition: true, scopeLine: 796, isOptimized: true, variables: !413)
!413 = !{!414, !415}
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !412, file: !1, line: 797, type: !41)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !412, file: !1, line: 797, type: !41)
!416 = !DISubprogram(name: "free_slice", scope: !1, file: !1, line: 752, type: !417, isLocal: true, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: true, variables: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !36}
!419 = !{!420, !421, !422}
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "slice", arg: 1, scope: !416, file: !1, line: 752, type: !36)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !416, file: !1, line: 754, type: !41)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dataPart", scope: !416, file: !1, line: 755, type: !48)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !433, !434, !435, !436, !437, !476, !569, !570, !571, !573, !574, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !605, !609, !610, !611, !612, !613, !614, !617, !620, !621, !622, !623, !626, !629, !640, !676, !677, !678, !679, !680, !736, !737, !738, !739, !740, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!424 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !9, line: 558, type: !244, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!425 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !9, line: 559, type: !244, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!426 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !9, line: 560, type: !244, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!427 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !9, line: 561, type: !244, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!428 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !9, line: 562, type: !244, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!429 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !9, line: 565, type: !326, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!430 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !9, line: 566, type: !333, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!431 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !9, line: 567, type: !432, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!433 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !9, line: 569, type: !77, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!434 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !9, line: 570, type: !77, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!435 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !9, line: 572, type: !41, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!436 = !DIGlobalVariable(name: "me_time", scope: !0, file: !9, line: 572, type: !41, isLocal: false, isDefinition: true, variable: i32* @me_time)
!437 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !9, line: 573, type: !438, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !440)
!440 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !452, !453, !454, !455, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !440, file: !4, line: 105, baseType: !213, size: 32, align: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !440, file: !4, line: 106, baseType: !77, size: 32, align: 32, offset: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !440, file: !4, line: 107, baseType: !77, size: 32, align: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !440, file: !4, line: 108, baseType: !213, size: 32, align: 32, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !440, file: !4, line: 110, baseType: !213, size: 32, align: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !440, file: !4, line: 111, baseType: !213, size: 32, align: 32, offset: 160)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !440, file: !4, line: 112, baseType: !449, size: 256, align: 32, offset: 192)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, align: 32, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 8)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !440, file: !4, line: 115, baseType: !213, size: 32, align: 32, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !440, file: !4, line: 116, baseType: !77, size: 32, align: 32, offset: 480)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !440, file: !4, line: 117, baseType: !77, size: 32, align: 32, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !440, file: !4, line: 119, baseType: !456, size: 256, align: 32, offset: 544)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, align: 32, elements: !450)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !440, file: !4, line: 121, baseType: !456, size: 256, align: 32, offset: 800)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !440, file: !4, line: 122, baseType: !456, size: 256, align: 32, offset: 1056)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !440, file: !4, line: 124, baseType: !213, size: 32, align: 32, offset: 1312)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !440, file: !4, line: 125, baseType: !77, size: 32, align: 32, offset: 1344)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !440, file: !4, line: 127, baseType: !77, size: 32, align: 32, offset: 1376)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !440, file: !4, line: 128, baseType: !70, size: 64, align: 64, offset: 1408)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !440, file: !4, line: 130, baseType: !41, size: 32, align: 32, offset: 1472)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !440, file: !4, line: 131, baseType: !41, size: 32, align: 32, offset: 1504)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !440, file: !4, line: 132, baseType: !213, size: 32, align: 32, offset: 1536)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !440, file: !4, line: 133, baseType: !77, size: 32, align: 32, offset: 1568)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !440, file: !4, line: 134, baseType: !41, size: 32, align: 32, offset: 1600)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !440, file: !4, line: 135, baseType: !41, size: 32, align: 32, offset: 1632)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !440, file: !4, line: 136, baseType: !41, size: 32, align: 32, offset: 1664)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !440, file: !4, line: 138, baseType: !41, size: 32, align: 32, offset: 1696)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !440, file: !4, line: 139, baseType: !41, size: 32, align: 32, offset: 1728)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !440, file: !4, line: 141, baseType: !213, size: 32, align: 32, offset: 1760)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !440, file: !4, line: 142, baseType: !213, size: 32, align: 32, offset: 1792)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !440, file: !4, line: 143, baseType: !213, size: 32, align: 32, offset: 1824)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !440, file: !4, line: 144, baseType: !213, size: 32, align: 32, offset: 1856)
!476 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !9, line: 574, type: !477, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !479)
!479 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !479, file: !4, line: 151, baseType: !213, size: 32, align: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !479, file: !4, line: 153, baseType: !77, size: 32, align: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !479, file: !4, line: 154, baseType: !213, size: 32, align: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !479, file: !4, line: 155, baseType: !213, size: 32, align: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !479, file: !4, line: 156, baseType: !213, size: 32, align: 32, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !479, file: !4, line: 157, baseType: !213, size: 32, align: 32, offset: 160)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !479, file: !4, line: 158, baseType: !77, size: 32, align: 32, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !479, file: !4, line: 159, baseType: !77, size: 32, align: 32, offset: 224)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !479, file: !4, line: 160, baseType: !77, size: 32, align: 32, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !479, file: !4, line: 162, baseType: !213, size: 32, align: 32, offset: 288)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !479, file: !4, line: 163, baseType: !449, size: 256, align: 32, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !479, file: !4, line: 165, baseType: !77, size: 32, align: 32, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !479, file: !4, line: 166, baseType: !77, size: 32, align: 32, offset: 608)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !479, file: !4, line: 167, baseType: !77, size: 32, align: 32, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !479, file: !4, line: 168, baseType: !77, size: 32, align: 32, offset: 672)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !479, file: !4, line: 170, baseType: !77, size: 32, align: 32, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !479, file: !4, line: 172, baseType: !213, size: 32, align: 32, offset: 736)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !479, file: !4, line: 173, baseType: !41, size: 32, align: 32, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !479, file: !4, line: 174, baseType: !41, size: 32, align: 32, offset: 800)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !479, file: !4, line: 175, baseType: !77, size: 32, align: 32, offset: 832)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !479, file: !4, line: 177, baseType: !502, size: 8192, align: 32, offset: 864)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8192, align: 32, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !479, file: !4, line: 178, baseType: !77, size: 32, align: 32, offset: 9056)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !479, file: !4, line: 179, baseType: !213, size: 32, align: 32, offset: 9088)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !479, file: !4, line: 180, baseType: !77, size: 32, align: 32, offset: 9120)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !479, file: !4, line: 181, baseType: !77, size: 32, align: 32, offset: 9152)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !479, file: !4, line: 182, baseType: !213, size: 32, align: 32, offset: 9184)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !479, file: !4, line: 184, baseType: !213, size: 32, align: 32, offset: 9216)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !479, file: !4, line: 185, baseType: !213, size: 32, align: 32, offset: 9248)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !479, file: !4, line: 186, baseType: !213, size: 32, align: 32, offset: 9280)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !479, file: !4, line: 187, baseType: !77, size: 32, align: 32, offset: 9312)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !479, file: !4, line: 188, baseType: !77, size: 32, align: 32, offset: 9344)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !479, file: !4, line: 189, baseType: !77, size: 32, align: 32, offset: 9376)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !479, file: !4, line: 190, baseType: !77, size: 32, align: 32, offset: 9408)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !479, file: !4, line: 191, baseType: !213, size: 32, align: 32, offset: 9440)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !479, file: !4, line: 192, baseType: !519, size: 7584, align: 32, offset: 9472)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !520)
!520 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !520, file: !4, line: 65, baseType: !213, size: 32, align: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !520, file: !4, line: 66, baseType: !77, size: 32, align: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !520, file: !4, line: 67, baseType: !77, size: 32, align: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !520, file: !4, line: 68, baseType: !77, size: 32, align: 32, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !520, file: !4, line: 69, baseType: !213, size: 32, align: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !520, file: !4, line: 70, baseType: !213, size: 32, align: 32, offset: 160)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !520, file: !4, line: 71, baseType: !213, size: 32, align: 32, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !520, file: !4, line: 72, baseType: !77, size: 32, align: 32, offset: 224)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !520, file: !4, line: 73, baseType: !213, size: 32, align: 32, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !520, file: !4, line: 74, baseType: !213, size: 32, align: 32, offset: 288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !520, file: !4, line: 75, baseType: !77, size: 32, align: 32, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !520, file: !4, line: 76, baseType: !77, size: 32, align: 32, offset: 352)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !520, file: !4, line: 77, baseType: !77, size: 32, align: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !520, file: !4, line: 78, baseType: !213, size: 32, align: 32, offset: 416)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !520, file: !4, line: 79, baseType: !77, size: 32, align: 32, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !520, file: !4, line: 80, baseType: !77, size: 32, align: 32, offset: 480)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !520, file: !4, line: 81, baseType: !213, size: 32, align: 32, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !520, file: !4, line: 82, baseType: !77, size: 32, align: 32, offset: 544)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !520, file: !4, line: 83, baseType: !77, size: 32, align: 32, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !520, file: !4, line: 84, baseType: !213, size: 32, align: 32, offset: 608)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !520, file: !4, line: 85, baseType: !213, size: 32, align: 32, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !520, file: !4, line: 86, baseType: !544, size: 3296, align: 32, offset: 672)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !546)
!546 = !{!547, !548, !549, !550, !552, !553, !554, !555, !556, !557}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !545, file: !4, line: 50, baseType: !77, size: 32, align: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !545, file: !4, line: 51, baseType: !77, size: 32, align: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !545, file: !4, line: 52, baseType: !77, size: 32, align: 32, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !545, file: !4, line: 53, baseType: !551, size: 1024, align: 32, offset: 96)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 1024, align: 32, elements: !376)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !545, file: !4, line: 54, baseType: !551, size: 1024, align: 32, offset: 1120)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !545, file: !4, line: 55, baseType: !551, size: 1024, align: 32, offset: 2144)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !545, file: !4, line: 56, baseType: !77, size: 32, align: 32, offset: 3168)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !545, file: !4, line: 57, baseType: !77, size: 32, align: 32, offset: 3200)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !545, file: !4, line: 58, baseType: !77, size: 32, align: 32, offset: 3232)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !545, file: !4, line: 59, baseType: !77, size: 32, align: 32, offset: 3264)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !520, file: !4, line: 87, baseType: !213, size: 32, align: 32, offset: 3968)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !520, file: !4, line: 88, baseType: !544, size: 3296, align: 32, offset: 4000)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !520, file: !4, line: 90, baseType: !213, size: 32, align: 32, offset: 7296)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !520, file: !4, line: 91, baseType: !213, size: 32, align: 32, offset: 7328)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !520, file: !4, line: 92, baseType: !213, size: 32, align: 32, offset: 7360)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !520, file: !4, line: 93, baseType: !77, size: 32, align: 32, offset: 7392)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !520, file: !4, line: 94, baseType: !77, size: 32, align: 32, offset: 7424)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !520, file: !4, line: 95, baseType: !77, size: 32, align: 32, offset: 7456)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !520, file: !4, line: 96, baseType: !77, size: 32, align: 32, offset: 7488)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !520, file: !4, line: 97, baseType: !77, size: 32, align: 32, offset: 7520)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !520, file: !4, line: 98, baseType: !77, size: 32, align: 32, offset: 7552)
!569 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !9, line: 578, type: !41, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!570 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !9, line: 579, type: !41, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!571 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !9, line: 583, type: !572, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!573 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !9, line: 584, type: !572, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!574 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !9, line: 585, type: !575, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!576 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !9, line: 586, type: !41, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!577 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !9, line: 587, type: !41, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!578 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !9, line: 588, type: !41, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!579 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !9, line: 589, type: !41, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!580 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !9, line: 592, type: !326, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!581 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !9, line: 593, type: !326, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!582 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !9, line: 595, type: !333, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!583 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !9, line: 596, type: !333, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!584 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !9, line: 598, type: !326, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!585 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !9, line: 599, type: !333, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!586 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !9, line: 601, type: !326, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!587 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !9, line: 602, type: !333, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!588 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !9, line: 604, type: !336, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!589 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !9, line: 605, type: !337, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!590 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !9, line: 608, type: !348, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!591 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !9, line: 609, type: !348, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!592 = !DIGlobalVariable(name: "intras", scope: !0, file: !9, line: 610, type: !41, isLocal: false, isDefinition: true, variable: i32* @intras)
!593 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !9, line: 612, type: !41, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!594 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !9, line: 612, type: !41, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!595 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !9, line: 612, type: !41, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!596 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !9, line: 613, type: !41, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!597 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !9, line: 613, type: !41, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!598 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !9, line: 613, type: !41, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!599 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !9, line: 614, type: !41, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!600 = !DIGlobalVariable(name: "errortext", scope: !0, file: !9, line: 617, type: !601, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 2400, align: 8, elements: !603)
!602 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!603 = !{!604}
!604 = !DISubrange(count: 300)
!605 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !9, line: 620, type: !606, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8192, align: 32, elements: !607)
!607 = !{!608, !608}
!608 = !DISubrange(count: 16)
!609 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !9, line: 620, type: !606, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!610 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !9, line: 620, type: !606, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!611 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !9, line: 621, type: !606, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!612 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !9, line: 621, type: !606, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!613 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !9, line: 621, type: !606, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!614 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !9, line: 622, type: !615, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 24576, align: 32, elements: !616)
!616 = !{!142, !608, !608}
!617 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !9, line: 623, type: !618, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1024, align: 32, elements: !619)
!619 = !{!147, !160, !160}
!620 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !9, line: 623, type: !618, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!621 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !9, line: 624, type: !618, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!622 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !9, line: 624, type: !618, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!623 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !9, line: 625, type: !624, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, align: 32, elements: !625)
!625 = !{!160, !160}
!626 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !9, line: 625, type: !627, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, align: 32, elements: !628)
!628 = !{!608}
!629 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !9, line: 1201, type: !630, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !9, line: 1190, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 1182, size: 192, align: 32, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !632, file: !9, line: 1184, baseType: !41, size: 32, align: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !632, file: !9, line: 1185, baseType: !41, size: 32, align: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !632, file: !9, line: 1186, baseType: !41, size: 32, align: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !632, file: !9, line: 1187, baseType: !41, size: 32, align: 32, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !632, file: !9, line: 1188, baseType: !41, size: 32, align: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !632, file: !9, line: 1189, baseType: !41, size: 32, align: 32, offset: 160)
!640 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !9, line: 1202, type: !641, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !9, line: 1177, baseType: !643)
!643 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 1145, size: 26880, align: 64, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !655, !656, !657, !658, !659, !660, !661, !664, !665, !666, !667, !669, !670, !671, !672, !673, !674, !675}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !643, file: !9, line: 1147, baseType: !268, size: 64, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !643, file: !9, line: 1149, baseType: !606, size: 8192, align: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !643, file: !9, line: 1150, baseType: !606, size: 8192, align: 32, offset: 8256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !643, file: !9, line: 1150, baseType: !606, size: 8192, align: 32, offset: 16448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !643, file: !9, line: 1151, baseType: !575, size: 64, align: 64, offset: 24640)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !643, file: !9, line: 1152, baseType: !572, size: 64, align: 64, offset: 24704)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !643, file: !9, line: 1153, baseType: !41, size: 32, align: 32, offset: 24768)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !643, file: !9, line: 1155, baseType: !41, size: 32, align: 32, offset: 24800)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !643, file: !9, line: 1157, baseType: !654, size: 128, align: 32, offset: 24832)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, align: 32, elements: !159)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !643, file: !9, line: 1157, baseType: !654, size: 128, align: 32, offset: 24960)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !643, file: !9, line: 1158, baseType: !432, size: 64, align: 64, offset: 25088)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !643, file: !9, line: 1159, baseType: !627, size: 512, align: 32, offset: 25152)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !643, file: !9, line: 1160, baseType: !41, size: 32, align: 32, offset: 25664)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !643, file: !9, line: 1161, baseType: !301, size: 64, align: 64, offset: 25728)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !643, file: !9, line: 1162, baseType: !41, size: 32, align: 32, offset: 25792)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !643, file: !9, line: 1163, baseType: !662, size: 64, align: 64, offset: 25856)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !643, file: !9, line: 1164, baseType: !662, size: 64, align: 64, offset: 25920)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !643, file: !9, line: 1165, baseType: !662, size: 64, align: 64, offset: 25984)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !643, file: !9, line: 1166, baseType: !662, size: 64, align: 64, offset: 26048)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !643, file: !9, line: 1167, baseType: !668, size: 512, align: 16, offset: 26112)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 512, align: 16, elements: !619)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !643, file: !9, line: 1168, baseType: !41, size: 32, align: 32, offset: 26624)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !643, file: !9, line: 1169, baseType: !41, size: 32, align: 32, offset: 26656)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !643, file: !9, line: 1171, baseType: !41, size: 32, align: 32, offset: 26688)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !643, file: !9, line: 1172, baseType: !41, size: 32, align: 32, offset: 26720)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !643, file: !9, line: 1174, baseType: !41, size: 32, align: 32, offset: 26752)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !643, file: !9, line: 1175, baseType: !41, size: 32, align: 32, offset: 26784)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !643, file: !9, line: 1176, baseType: !41, size: 32, align: 32, offset: 26816)
!676 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !9, line: 1203, type: !642, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!677 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !9, line: 1203, type: !642, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!678 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !9, line: 1204, type: !642, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!679 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !9, line: 1204, type: !642, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!680 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !9, line: 1230, type: !681, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !683, line: 153, baseType: !684)
!683 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !683, line: 122, size: 1216, align: 64, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !696, !697, !698, !702, !707, !716, !722, !723, !726, !727, !729, !733, !734, !735}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !684, file: !683, line: 123, baseType: !279, size: 64, align: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !684, file: !683, line: 124, baseType: !41, size: 32, align: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !684, file: !683, line: 125, baseType: !41, size: 32, align: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !684, file: !683, line: 126, baseType: !339, size: 16, align: 16, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !684, file: !683, line: 127, baseType: !339, size: 16, align: 16, offset: 144)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !684, file: !683, line: 128, baseType: !692, size: 128, align: 64, offset: 192)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !683, line: 88, size: 128, align: 64, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !692, file: !683, line: 89, baseType: !279, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !692, file: !683, line: 90, baseType: !41, size: 32, align: 32, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !684, file: !683, line: 129, baseType: !41, size: 32, align: 32, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !684, file: !683, line: 132, baseType: !35, size: 64, align: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !684, file: !683, line: 133, baseType: !699, size: 64, align: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!41, !35}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !684, file: !683, line: 134, baseType: !703, size: 64, align: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!41, !35, !706, !41}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !684, file: !683, line: 135, baseType: !708, size: 64, align: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64, align: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!711, !35, !711, !41}
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !683, line: 77, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !713, line: 71, baseType: !714)
!713 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !715, line: 46, baseType: !304)
!715 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !684, file: !683, line: 136, baseType: !717, size: 64, align: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64, align: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!41, !35, !720, !41}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64, align: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !684, file: !683, line: 139, baseType: !692, size: 128, align: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !684, file: !683, line: 140, baseType: !724, size: 64, align: 64, offset: 832)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !683, line: 94, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !684, file: !683, line: 141, baseType: !41, size: 32, align: 32, offset: 896)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !684, file: !683, line: 144, baseType: !728, size: 24, align: 8, offset: 928)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 24, align: 8, elements: !164)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !684, file: !683, line: 145, baseType: !730, size: 8, align: 8, offset: 952)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 8, align: 8, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 1)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !684, file: !683, line: 148, baseType: !692, size: 128, align: 64, offset: 960)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !684, file: !683, line: 151, baseType: !41, size: 32, align: 32, offset: 1088)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !684, file: !683, line: 152, baseType: !711, size: 64, align: 64, offset: 1152)
!736 = !DIGlobalVariable(name: "p_log", scope: !0, file: !9, line: 1231, type: !681, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!737 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !9, line: 1232, type: !681, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!738 = !DIGlobalVariable(name: "p_in", scope: !0, file: !9, line: 1233, type: !41, isLocal: false, isDefinition: true, variable: i32* @p_in)
!739 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !9, line: 1234, type: !41, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!740 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !9, line: 1237, type: !741, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, align: 32, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 20)
!744 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !9, line: 1238, type: !741, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!745 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !9, line: 1239, type: !741, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!746 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !9, line: 1240, type: !741, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!747 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !9, line: 1241, type: !741, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!748 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !9, line: 1242, type: !741, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!749 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !9, line: 1456, type: !41, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!750 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !9, line: 1465, type: !41, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!751 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !9, line: 1466, type: !41, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!752 = !DIGlobalVariable(name: "WriteNALU", scope: !0, file: !753, line: 28, type: !754, isLocal: false, isDefinition: true, variable: i32 (%struct.NALU_t*)** @WriteNALU)
!753 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalu.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64, align: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!41, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !759, line: 49, baseType: !760)
!759 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalucommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!760 = !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 40, size: 256, align: 64, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !760, file: !759, line: 42, baseType: !41, size: 32, align: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !760, file: !759, line: 43, baseType: !77, size: 32, align: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !760, file: !759, line: 44, baseType: !77, size: 32, align: 32, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !760, file: !759, line: 45, baseType: !41, size: 32, align: 32, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !760, file: !759, line: 46, baseType: !41, size: 32, align: 32, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !760, file: !759, line: 47, baseType: !41, size: 32, align: 32, offset: 160)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !760, file: !759, line: 48, baseType: !70, size: 64, align: 64, offset: 192)
!769 = !{}
!770 = !{i32 2, !"Dwarf Version", i32 2}
!771 = !{i32 2, !"Debug Info Version", i32 700000003}
!772 = !{i32 1, !"PIC Level", i32 2}
!773 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!774 = !DILocation(line: 52, column: 22, scope: !218)
!775 = !{!776, !776, i64 0}
!776 = !{!"any pointer", !777, i64 0}
!777 = !{!"omnipotent char", !778, i64 0}
!778 = !{!"Simple C/C++ TBAA"}
!779 = !DILocation(line: 52, column: 27, scope: !218)
!780 = !{!781, !776, i64 14160}
!781 = !{!"", !782, i64 0, !782, i64 4, !782, i64 8, !782, i64 12, !782, i64 16, !782, i64 20, !782, i64 24, !782, i64 28, !782, i64 32, !782, i64 36, !782, i64 40, !782, i64 44, !783, i64 48, !782, i64 52, !782, i64 56, !782, i64 60, !782, i64 64, !782, i64 68, !782, i64 72, !782, i64 76, !782, i64 80, !782, i64 84, !782, i64 88, !782, i64 92, !782, i64 96, !776, i64 104, !776, i64 112, !782, i64 120, !776, i64 128, !782, i64 136, !782, i64 140, !782, i64 144, !782, i64 148, !782, i64 152, !782, i64 156, !782, i64 160, !782, i64 164, !782, i64 168, !782, i64 172, !782, i64 176, !782, i64 180, !777, i64 184, !777, i64 4792, !777, i64 7352, !777, i64 8504, !777, i64 12600, !777, i64 13112, !776, i64 14136, !776, i64 14144, !776, i64 14152, !776, i64 14160, !776, i64 14168, !777, i64 14176, !776, i64 71776, !776, i64 71784, !782, i64 71792, !782, i64 71796, !782, i64 71800, !782, i64 71804, !777, i64 71808, !782, i64 71872, !782, i64 71876, !782, i64 71880, !782, i64 71884, !782, i64 71888, !784, i64 71896, !782, i64 71904, !782, i64 71908, !782, i64 71912, !782, i64 71916, !776, i64 71920, !776, i64 71928, !776, i64 71936, !776, i64 71944, !777, i64 71952, !782, i64 71984, !782, i64 71988, !782, i64 71992, !782, i64 71996, !782, i64 72000, !782, i64 72004, !782, i64 72008, !782, i64 72012, !777, i64 72016, !782, i64 72376, !782, i64 72380, !782, i64 72384, !782, i64 72388, !782, i64 72392, !782, i64 72396, !782, i64 72400, !782, i64 72404, !782, i64 72408, !782, i64 72412, !782, i64 72416, !782, i64 72420, !777, i64 72424, !782, i64 72428, !782, i64 72432, !777, i64 72436, !782, i64 72444, !782, i64 72448, !782, i64 72452, !782, i64 72456, !782, i64 72460, !782, i64 72464, !782, i64 72468, !782, i64 72472, !782, i64 72476, !782, i64 72480, !782, i64 72484, !782, i64 72488, !782, i64 72492, !782, i64 72496, !782, i64 72500, !782, i64 72504, !782, i64 72508, !776, i64 72512, !782, i64 72520, !782, i64 72524, !782, i64 72528, !782, i64 72532, !782, i64 72536, !784, i64 72544, !782, i64 72552, !782, i64 72556, !782, i64 72560, !782, i64 72564, !782, i64 72568, !782, i64 72572, !782, i64 72576, !776, i64 72584, !782, i64 72592, !782, i64 72596, !782, i64 72600, !782, i64 72604, !782, i64 72608, !782, i64 72612, !782, i64 72616, !782, i64 72620, !782, i64 72624, !782, i64 72628, !782, i64 72632, !782, i64 72636, !782, i64 72640, !782, i64 72644, !782, i64 72648, !782, i64 72652, !782, i64 72656, !782, i64 72660, !782, i64 72664, !782, i64 72668, !782, i64 72672, !782, i64 72676, !782, i64 72680, !782, i64 72684, !782, i64 72688, !782, i64 72692, !782, i64 72696, !782, i64 72700, !782, i64 72704, !782, i64 72708, !782, i64 72712, !777, i64 72716, !782, i64 72724, !782, i64 72728, !782, i64 72732}
!782 = !{!"int", !777, i64 0}
!783 = !{!"float", !777, i64 0}
!784 = !{!"double", !777, i64 0}
!785 = !DIExpression()
!786 = !DILocation(line: 52, column: 10, scope: !218)
!787 = !DILocation(line: 54, column: 14, scope: !218)
!788 = !DILocation(line: 54, column: 46, scope: !218)
!789 = !{!790, !782, i64 56}
!790 = !{!"", !782, i64 0, !782, i64 4, !782, i64 8, !782, i64 12, !782, i64 16, !782, i64 20, !776, i64 24, !776, i64 32, !776, i64 40, !776, i64 48, !782, i64 56, !776, i64 64, !776, i64 72, !776, i64 80, !782, i64 88, !776, i64 96, !776, i64 104, !776, i64 112, !776, i64 120, !777, i64 128}
!791 = !DILocation(line: 55, column: 14, scope: !218)
!792 = !DILocation(line: 55, column: 46, scope: !218)
!793 = !{!790, !782, i64 88}
!794 = !DILocation(line: 56, column: 1, scope: !218)
!795 = !DILocation(line: 75, column: 22, scope: !223)
!796 = !DILocation(line: 75, column: 27, scope: !223)
!797 = !DILocation(line: 75, column: 10, scope: !223)
!798 = !DILocation(line: 77, column: 7, scope: !223)
!799 = !DILocation(line: 79, column: 29, scope: !223)
!800 = !DILocation(line: 79, column: 36, scope: !223)
!801 = !{!802, !782, i64 2364}
!802 = !{!"", !782, i64 0, !782, i64 4, !782, i64 8, !782, i64 12, !782, i64 16, !782, i64 20, !782, i64 24, !782, i64 28, !782, i64 32, !782, i64 36, !782, i64 40, !782, i64 44, !782, i64 48, !782, i64 52, !782, i64 56, !782, i64 60, !782, i64 64, !782, i64 68, !782, i64 72, !782, i64 76, !777, i64 80, !777, i64 144, !782, i64 208, !782, i64 212, !782, i64 216, !782, i64 220, !777, i64 224, !777, i64 424, !777, i64 624, !777, i64 824, !777, i64 1024, !782, i64 1224, !782, i64 1228, !782, i64 1232, !782, i64 1236, !782, i64 1240, !782, i64 1244, !782, i64 1248, !782, i64 1252, !782, i64 1256, !782, i64 1260, !782, i64 1264, !782, i64 1268, !782, i64 1272, !782, i64 1276, !782, i64 1280, !782, i64 1284, !782, i64 1288, !782, i64 1292, !782, i64 1296, !782, i64 1300, !782, i64 1304, !782, i64 1308, !782, i64 1312, !782, i64 1316, !782, i64 1320, !777, i64 1324, !782, i64 2348, !782, i64 2352, !782, i64 2356, !782, i64 2360, !782, i64 2364, !782, i64 2368, !782, i64 2372, !782, i64 2376, !782, i64 2380, !782, i64 2384, !782, i64 2388, !782, i64 2392, !782, i64 2396, !782, i64 2400, !782, i64 2404, !782, i64 2408, !782, i64 2412, !782, i64 2416, !782, i64 2420, !784, i64 2424, !782, i64 2432, !782, i64 2436, !782, i64 2440, !782, i64 2444, !782, i64 2448, !782, i64 2452, !782, i64 2456, !782, i64 2460, !782, i64 2464, !782, i64 2468, !782, i64 2472, !782, i64 2476, !777, i64 2480, !777, i64 2680, !782, i64 2880, !782, i64 2884, !782, i64 2888, !782, i64 2892, !782, i64 2896, !782, i64 2900, !782, i64 2904, !782, i64 2908, !782, i64 2912, !782, i64 2916, !782, i64 2920, !782, i64 2924, !782, i64 2928, !782, i64 2932, !782, i64 2936, !782, i64 2940, !782, i64 2944, !782, i64 2948, !777, i64 2952, !782, i64 3152, !782, i64 3156, !776, i64 3160, !776, i64 3168, !776, i64 3176, !776, i64 3184, !782, i64 3192, !782, i64 3196, !782, i64 3200, !782, i64 3204, !782, i64 3208, !782, i64 3212, !782, i64 3216, !782, i64 3220, !782, i64 3224, !782, i64 3228, !782, i64 3232, !782, i64 3236, !782, i64 3240, !782, i64 3244, !782, i64 3248, !782, i64 3252, !782, i64 3256, !777, i64 3260, !782, i64 3292, !782, i64 3296, !782, i64 3300, !782, i64 3304, !782, i64 3308, !782, i64 3312, !782, i64 3316, !782, i64 3320, !782, i64 3324, !782, i64 3328, !782, i64 3332, !777, i64 3336, !777, i64 3384, !782, i64 3584}
!803 = !DILocation(line: 79, column: 51, scope: !223)
!804 = !DILocation(line: 82, column: 11, scope: !805)
!805 = distinct !DILexicalBlock(scope: !223, file: !1, line: 82, column: 6)
!806 = !{!781, !776, i64 14152}
!807 = !DILocation(line: 82, column: 27, scope: !805)
!808 = !{!809, !782, i64 4}
!809 = !{!"", !782, i64 0, !782, i64 4, !777, i64 8, !782, i64 808, !783, i64 812, !783, i64 816, !783, i64 820}
!810 = !DILocation(line: 82, column: 6, scope: !805)
!811 = !DILocation(line: 82, column: 6, scope: !223)
!812 = !DILocation(line: 87, column: 28, scope: !223)
!813 = !{!781, !782, i64 71792}
!814 = !DILocation(line: 87, column: 3, scope: !223)
!815 = !DILocation(line: 78, column: 7, scope: !223)
!816 = !DILocation(line: 91, column: 30, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !1, line: 90, column: 3)
!818 = distinct !DILexicalBlock(scope: !819, file: !1, line: 89, column: 3)
!819 = distinct !DILexicalBlock(scope: !223, file: !1, line: 89, column: 3)
!820 = !DILocation(line: 89, column: 3, scope: !819)
!821 = !{!790, !776, i64 24}
!822 = !DILocation(line: 91, column: 42, scope: !817)
!823 = !{!824, !776, i64 0}
!824 = !{!"datapartition", !776, i64 0, !825, i64 8, !776, i64 112}
!825 = !{!"", !782, i64 0, !782, i64 4, !782, i64 8, !782, i64 12, !782, i64 16, !776, i64 24, !776, i64 32, !782, i64 40, !782, i64 44, !782, i64 48, !782, i64 52, !782, i64 56, !776, i64 64, !776, i64 72, !782, i64 80, !782, i64 84, !782, i64 88, !782, i64 92, !782, i64 96, !782, i64 100}
!826 = !DILocation(line: 76, column: 14, scope: !223)
!827 = !DILocation(line: 93, column: 17, scope: !817)
!828 = !DILocation(line: 93, column: 28, scope: !817)
!829 = !{!830, !782, i64 40}
!830 = !{!"", !782, i64 0, !782, i64 4, !777, i64 8, !782, i64 12, !782, i64 16, !777, i64 20, !777, i64 21, !782, i64 24, !782, i64 28, !776, i64 32, !782, i64 40}
!831 = !DILocation(line: 94, column: 10, scope: !832)
!832 = distinct !DILexicalBlock(scope: !817, file: !1, line: 94, column: 9)
!833 = !DILocation(line: 94, column: 9, scope: !817)
!834 = !DILocation(line: 95, column: 21, scope: !832)
!835 = !DILocation(line: 95, column: 7, scope: !832)
!836 = !DILocation(line: 97, column: 21, scope: !832)
!837 = !DILocation(line: 95, column: 18, scope: !832)
!838 = !DILocation(line: 100, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !817, file: !1, line: 100, column: 9)
!840 = !DILocation(line: 100, column: 16, scope: !839)
!841 = !{!802, !782, i64 2356}
!842 = !DILocation(line: 100, column: 28, scope: !839)
!843 = !DILocation(line: 100, column: 9, scope: !817)
!844 = !DILocation(line: 102, column: 27, scope: !845)
!845 = distinct !DILexicalBlock(scope: !839, file: !1, line: 101, column: 5)
!846 = !DILocation(line: 102, column: 39, scope: !845)
!847 = !DILocation(line: 74, column: 26, scope: !223)
!848 = !DILocation(line: 103, column: 23, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !1, line: 103, column: 11)
!850 = !{!830, !782, i64 4}
!851 = !DILocation(line: 103, column: 34, scope: !849)
!852 = !DILocation(line: 103, column: 11, scope: !845)
!853 = !DILocation(line: 105, column: 7, scope: !845)
!854 = !DILocation(line: 106, column: 47, scope: !845)
!855 = !{!830, !776, i64 32}
!856 = !DILocation(line: 106, column: 75, scope: !845)
!857 = !DILocation(line: 106, column: 120, scope: !845)
!858 = !DILocation(line: 106, column: 125, scope: !845)
!859 = !{!781, !782, i64 24}
!860 = !DILocation(line: 106, column: 7, scope: !845)
!861 = !DILocation(line: 107, column: 7, scope: !845)
!862 = !DILocation(line: 108, column: 5, scope: !845)
!863 = !DILocation(line: 111, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !839, file: !1, line: 109, column: 5)
!865 = !DILocation(line: 89, column: 14, scope: !818)
!866 = !DILocation(line: 114, column: 6, scope: !867)
!867 = distinct !DILexicalBlock(scope: !223, file: !1, line: 114, column: 6)
!868 = !DILocation(line: 114, column: 13, scope: !867)
!869 = !DILocation(line: 114, column: 25, scope: !867)
!870 = !DILocation(line: 114, column: 6, scope: !223)
!871 = !DILocation(line: 116, column: 5, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !1, line: 115, column: 3)
!873 = !DILocation(line: 117, column: 3, scope: !872)
!874 = !DILocation(line: 118, column: 3, scope: !223)
!875 = !DILocation(line: 138, column: 22, scope: !233)
!876 = !DILocation(line: 138, column: 27, scope: !233)
!877 = !DILocation(line: 138, column: 10, scope: !233)
!878 = !DILocation(line: 143, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !233, file: !1, line: 143, column: 7)
!880 = !DILocation(line: 143, column: 14, scope: !879)
!881 = !DILocation(line: 143, column: 26, scope: !879)
!882 = !DILocation(line: 143, column: 7, scope: !233)
!883 = !DILocation(line: 144, column: 5, scope: !879)
!884 = !DILocation(line: 146, column: 26, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !1, line: 146, column: 3)
!886 = distinct !DILexicalBlock(scope: !233, file: !1, line: 146, column: 3)
!887 = !{!790, !782, i64 16}
!888 = !DILocation(line: 146, column: 14, scope: !885)
!889 = !DILocation(line: 146, column: 3, scope: !886)
!890 = !DILocation(line: 148, column: 30, scope: !891)
!891 = distinct !DILexicalBlock(scope: !885, file: !1, line: 147, column: 3)
!892 = !DILocation(line: 148, column: 42, scope: !891)
!893 = !DILocation(line: 137, column: 14, scope: !233)
!894 = !DILocation(line: 149, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !891, file: !1, line: 149, column: 9)
!896 = !DILocation(line: 149, column: 16, scope: !895)
!897 = !DILocation(line: 149, column: 28, scope: !895)
!898 = !DILocation(line: 149, column: 9, scope: !891)
!899 = !DILocation(line: 151, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !1, line: 150, column: 5)
!901 = !DILocation(line: 152, column: 62, scope: !900)
!902 = !{!830, !782, i64 0}
!903 = !DILocation(line: 141, column: 7, scope: !233)
!904 = !DILocation(line: 153, column: 53, scope: !900)
!905 = !DILocation(line: 153, column: 30, scope: !900)
!906 = !DILocation(line: 153, column: 28, scope: !900)
!907 = !DILocation(line: 154, column: 55, scope: !900)
!908 = !DILocation(line: 154, column: 99, scope: !900)
!909 = !DILocation(line: 154, column: 9, scope: !900)
!910 = !DILocation(line: 154, column: 16, scope: !900)
!911 = !{!912, !776, i64 1480}
!912 = !{!"", !782, i64 0, !782, i64 4, !783, i64 8, !783, i64 12, !782, i64 16, !782, i64 20, !782, i64 24, !782, i64 28, !777, i64 32, !777, i64 72, !777, i64 372, !777, i64 672, !776, i64 688, !776, i64 696, !782, i64 704, !782, i64 708, !782, i64 712, !783, i64 716, !783, i64 720, !783, i64 724, !777, i64 728, !777, i64 1028, !777, i64 1328, !777, i64 1348, !777, i64 1368, !777, i64 1388, !777, i64 1408, !777, i64 1428, !777, i64 1448, !782, i64 1468, !782, i64 1472, !776, i64 1480, !782, i64 1488, !782, i64 1492}
!913 = !DILocation(line: 154, column: 30, scope: !900)
!914 = !{!782, !782, i64 0}
!915 = !DILocation(line: 155, column: 5, scope: !900)
!916 = !DILocation(line: 158, column: 39, scope: !917)
!917 = distinct !DILexicalBlock(scope: !895, file: !1, line: 157, column: 5)
!918 = !DILocation(line: 139, column: 26, scope: !233)
!919 = !DILocation(line: 160, column: 7, scope: !917)
!920 = !DILocation(line: 161, column: 37, scope: !917)
!921 = !{!825, !782, i64 12}
!922 = !DILocation(line: 161, column: 19, scope: !917)
!923 = !DILocation(line: 161, column: 30, scope: !917)
!924 = !DILocation(line: 162, column: 19, scope: !917)
!925 = !DILocation(line: 162, column: 28, scope: !917)
!926 = !{!830, !777, i64 8}
!927 = !DILocation(line: 163, column: 35, scope: !917)
!928 = !DILocation(line: 164, column: 61, scope: !917)
!929 = !DILocation(line: 165, column: 53, scope: !917)
!930 = !DILocation(line: 165, column: 97, scope: !917)
!931 = !{!825, !782, i64 88}
!932 = !DILocation(line: 165, column: 30, scope: !917)
!933 = !DILocation(line: 165, column: 28, scope: !917)
!934 = !DILocation(line: 166, column: 55, scope: !917)
!935 = !DILocation(line: 166, column: 99, scope: !917)
!936 = !DILocation(line: 166, column: 9, scope: !917)
!937 = !DILocation(line: 166, column: 16, scope: !917)
!938 = !DILocation(line: 166, column: 30, scope: !917)
!939 = !DILocation(line: 169, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !233, file: !1, line: 169, column: 7)
!941 = !DILocation(line: 169, column: 14, scope: !940)
!942 = !DILocation(line: 169, column: 26, scope: !940)
!943 = !DILocation(line: 169, column: 7, scope: !233)
!944 = !DILocation(line: 171, column: 5, scope: !945)
!945 = distinct !DILexicalBlock(scope: !940, file: !1, line: 170, column: 3)
!946 = !DILocation(line: 172, column: 3, scope: !945)
!947 = !DILocation(line: 174, column: 3, scope: !233)
!948 = !DILocation(line: 185, column: 27, scope: !241)
!949 = !DILocation(line: 185, column: 50, scope: !241)
!950 = !DILocation(line: 187, column: 11, scope: !241)
!951 = !{!777, !777, i64 0}
!952 = !DILocation(line: 190, column: 7, scope: !241)
!953 = !DILocation(line: 194, column: 3, scope: !241)
!954 = !DILocation(line: 194, column: 8, scope: !241)
!955 = !DILocation(line: 194, column: 20, scope: !241)
!956 = !{!781, !782, i64 120}
!957 = !DILocation(line: 196, column: 19, scope: !241)
!958 = !DILocation(line: 191, column: 7, scope: !241)
!959 = !DILocation(line: 485, column: 29, scope: !389, inlinedAt: !960)
!960 = distinct !DILocation(line: 199, column: 3, scope: !241)
!961 = !DILocation(line: 488, column: 22, scope: !389, inlinedAt: !960)
!962 = !DILocation(line: 488, column: 27, scope: !389, inlinedAt: !960)
!963 = !DILocation(line: 488, column: 12, scope: !389, inlinedAt: !960)
!964 = !DILocation(line: 493, column: 8, scope: !389, inlinedAt: !960)
!965 = !DILocation(line: 493, column: 22, scope: !389, inlinedAt: !960)
!966 = !{!781, !782, i64 12}
!967 = !DILocation(line: 496, column: 3, scope: !389, inlinedAt: !960)
!968 = !{!"branch_weights", i32 4, i32 64}
!969 = !DILocation(line: 497, column: 12, scope: !389, inlinedAt: !960)
!970 = !DILocation(line: 497, column: 21, scope: !389, inlinedAt: !960)
!971 = !{!809, !782, i64 0}
!972 = !DILocation(line: 498, column: 26, scope: !973, inlinedAt: !960)
!973 = distinct !DILexicalBlock(scope: !389, file: !1, line: 498, column: 7)
!974 = !DILocation(line: 498, column: 7, scope: !389, inlinedAt: !960)
!975 = !DILocation(line: 499, column: 5, scope: !973, inlinedAt: !960)
!976 = !DILocation(line: 679, column: 28, scope: !403, inlinedAt: !977)
!977 = distinct !DILocation(line: 501, column: 43, scope: !389, inlinedAt: !960)
!978 = !DILocation(line: 199, column: 3, scope: !241)
!979 = !DILocation(line: 679, column: 33, scope: !403, inlinedAt: !977)
!980 = !{!781, !782, i64 52}
!981 = !DILocation(line: 679, column: 46, scope: !403, inlinedAt: !977)
!982 = !{!781, !782, i64 60}
!983 = !DILocation(line: 679, column: 39, scope: !403, inlinedAt: !977)
!984 = !DILocation(line: 679, column: 53, scope: !403, inlinedAt: !977)
!985 = !DILocation(line: 679, column: 13, scope: !403, inlinedAt: !977)
!986 = !DILocation(line: 683, column: 26, scope: !987, inlinedAt: !977)
!987 = distinct !DILexicalBlock(scope: !403, file: !1, line: 683, column: 7)
!988 = !DILocation(line: 683, column: 52, scope: !987, inlinedAt: !977)
!989 = !DILocation(line: 683, column: 7, scope: !403, inlinedAt: !977)
!990 = !DILocation(line: 683, column: 61, scope: !987, inlinedAt: !977)
!991 = !DILocation(line: 685, column: 7, scope: !992, inlinedAt: !977)
!992 = distinct !DILexicalBlock(scope: !403, file: !1, line: 685, column: 7)
!993 = !DILocation(line: 685, column: 14, scope: !992, inlinedAt: !977)
!994 = !DILocation(line: 685, column: 26, scope: !992, inlinedAt: !977)
!995 = !DILocation(line: 685, column: 7, scope: !403, inlinedAt: !977)
!996 = !DILocation(line: 688, column: 24, scope: !997, inlinedAt: !977)
!997 = distinct !DILexicalBlock(scope: !992, file: !1, line: 686, column: 5)
!998 = !DILocation(line: 688, column: 14, scope: !997, inlinedAt: !977)
!999 = !DILocation(line: 688, column: 22, scope: !997, inlinedAt: !977)
!1000 = !{!790, !776, i64 32}
!1001 = !DILocation(line: 689, column: 24, scope: !997, inlinedAt: !977)
!1002 = !DILocation(line: 689, column: 14, scope: !997, inlinedAt: !977)
!1003 = !DILocation(line: 689, column: 22, scope: !997, inlinedAt: !977)
!1004 = !{!790, !776, i64 40}
!1005 = !DILocation(line: 692, column: 24, scope: !403, inlinedAt: !977)
!1006 = !DILocation(line: 690, column: 5, scope: !997, inlinedAt: !977)
!1007 = !DILocation(line: 501, column: 43, scope: !389, inlinedAt: !960)
!1008 = !DILocation(line: 692, column: 31, scope: !403, inlinedAt: !977)
!1009 = !DILocation(line: 692, column: 45, scope: !403, inlinedAt: !977)
!1010 = !DILocation(line: 692, column: 10, scope: !403, inlinedAt: !977)
!1011 = !DILocation(line: 695, column: 6, scope: !1012, inlinedAt: !977)
!1012 = distinct !DILexicalBlock(scope: !403, file: !1, line: 695, column: 6)
!1013 = !DILocation(line: 695, column: 11, scope: !1012, inlinedAt: !977)
!1014 = !DILocation(line: 695, column: 27, scope: !1012, inlinedAt: !977)
!1015 = !DILocation(line: 695, column: 6, scope: !403, inlinedAt: !977)
!1016 = !DILocation(line: 696, column: 24, scope: !1012, inlinedAt: !977)
!1017 = !DILocation(line: 698, column: 25, scope: !403, inlinedAt: !977)
!1018 = !DILocation(line: 701, column: 12, scope: !1019, inlinedAt: !977)
!1019 = distinct !DILexicalBlock(scope: !403, file: !1, line: 701, column: 6)
!1020 = !DILocation(line: 701, column: 28, scope: !1019, inlinedAt: !977)
!1021 = !DILocation(line: 701, column: 7, scope: !1019, inlinedAt: !977)
!1022 = !DILocation(line: 701, column: 59, scope: !1019, inlinedAt: !977)
!1023 = !DILocation(line: 701, column: 36, scope: !1019, inlinedAt: !977)
!1024 = !DILocation(line: 702, column: 27, scope: !1019, inlinedAt: !977)
!1025 = !DILocation(line: 708, column: 10, scope: !403, inlinedAt: !977)
!1026 = !DILocation(line: 708, column: 17, scope: !403, inlinedAt: !977)
!1027 = !{!790, !782, i64 20}
!1028 = !DILocation(line: 710, column: 50, scope: !1029, inlinedAt: !977)
!1029 = distinct !DILexicalBlock(scope: !403, file: !1, line: 710, column: 7)
!1030 = !DILocation(line: 710, column: 43, scope: !1029, inlinedAt: !977)
!1031 = !DILocation(line: 710, column: 15, scope: !1029, inlinedAt: !977)
!1032 = !DILocation(line: 710, column: 23, scope: !1029, inlinedAt: !977)
!1033 = !DILocation(line: 710, column: 94, scope: !1029, inlinedAt: !977)
!1034 = !DILocation(line: 710, column: 7, scope: !403, inlinedAt: !977)
!1035 = !DILocation(line: 710, column: 103, scope: !1029, inlinedAt: !977)
!1036 = !DILocation(line: 715, column: 62, scope: !1037, inlinedAt: !977)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 715, column: 9)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 712, column: 3)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 711, column: 3)
!1040 = distinct !DILexicalBlock(scope: !403, file: !1, line: 711, column: 3)
!1041 = !DILocation(line: 711, column: 3, scope: !1040, inlinedAt: !977)
!1042 = !DILocation(line: 714, column: 46, scope: !1043, inlinedAt: !977)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 714, column: 9)
!1044 = !DILocation(line: 714, column: 20, scope: !1043, inlinedAt: !977)
!1045 = !DILocation(line: 714, column: 30, scope: !1043, inlinedAt: !977)
!1046 = !DILocation(line: 714, column: 76, scope: !1043, inlinedAt: !977)
!1047 = !DILocation(line: 714, column: 9, scope: !1038, inlinedAt: !977)
!1048 = !DILocation(line: 714, column: 85, scope: !1043, inlinedAt: !977)
!1049 = !DILocation(line: 715, column: 20, scope: !1037, inlinedAt: !977)
!1050 = !DILocation(line: 715, column: 55, scope: !1037, inlinedAt: !977)
!1051 = !DILocation(line: 715, column: 31, scope: !1037, inlinedAt: !977)
!1052 = !DILocation(line: 715, column: 44, scope: !1037, inlinedAt: !977)
!1053 = !DILocation(line: 715, column: 90, scope: !1037, inlinedAt: !977)
!1054 = !DILocation(line: 715, column: 9, scope: !1038, inlinedAt: !977)
!1055 = !DILocation(line: 715, column: 99, scope: !1037, inlinedAt: !977)
!1056 = !DILocation(line: 711, column: 14, scope: !1039, inlinedAt: !977)
!1057 = !DILocation(line: 501, column: 28, scope: !389, inlinedAt: !960)
!1058 = !DILocation(line: 501, column: 37, scope: !389, inlinedAt: !960)
!1059 = !DILocation(line: 501, column: 3, scope: !389, inlinedAt: !960)
!1060 = !DILocation(line: 501, column: 41, scope: !389, inlinedAt: !960)
!1061 = !DILocation(line: 502, column: 40, scope: !389, inlinedAt: !960)
!1062 = !DILocation(line: 502, column: 49, scope: !389, inlinedAt: !960)
!1063 = !DILocation(line: 502, column: 15, scope: !389, inlinedAt: !960)
!1064 = !DILocation(line: 491, column: 10, scope: !389, inlinedAt: !960)
!1065 = !DILocation(line: 504, column: 3, scope: !389, inlinedAt: !960)
!1066 = !DILocation(line: 504, column: 8, scope: !389, inlinedAt: !960)
!1067 = !DILocation(line: 504, column: 21, scope: !389, inlinedAt: !960)
!1068 = !DILocation(line: 506, column: 27, scope: !389, inlinedAt: !960)
!1069 = !DILocation(line: 506, column: 32, scope: !389, inlinedAt: !960)
!1070 = !DILocation(line: 506, column: 35, scope: !389, inlinedAt: !960)
!1071 = !DILocation(line: 506, column: 14, scope: !389, inlinedAt: !960)
!1072 = !DILocation(line: 506, column: 25, scope: !389, inlinedAt: !960)
!1073 = !{!790, !782, i64 0}
!1074 = !DILocation(line: 507, column: 24, scope: !389, inlinedAt: !960)
!1075 = !{!781, !782, i64 40}
!1076 = !DILocation(line: 507, column: 14, scope: !389, inlinedAt: !960)
!1077 = !DILocation(line: 507, column: 17, scope: !389, inlinedAt: !960)
!1078 = !{!790, !782, i64 4}
!1079 = !DILocation(line: 508, column: 14, scope: !389, inlinedAt: !960)
!1080 = !DILocation(line: 508, column: 26, scope: !389, inlinedAt: !960)
!1081 = !{!790, !782, i64 12}
!1082 = !DILocation(line: 509, column: 14, scope: !389, inlinedAt: !960)
!1083 = !DILocation(line: 509, column: 28, scope: !389, inlinedAt: !960)
!1084 = !{!790, !776, i64 120}
!1085 = !DILocation(line: 487, column: 7, scope: !389, inlinedAt: !960)
!1086 = !DILocation(line: 511, column: 30, scope: !1087, inlinedAt: !960)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 511, column: 3)
!1088 = distinct !DILexicalBlock(scope: !389, file: !1, line: 511, column: 3)
!1089 = !DILocation(line: 511, column: 17, scope: !1087, inlinedAt: !960)
!1090 = !DILocation(line: 511, column: 3, scope: !1088, inlinedAt: !960)
!1091 = !DILocation(line: 513, column: 29, scope: !1092, inlinedAt: !960)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 512, column: 3)
!1093 = !DILocation(line: 514, column: 9, scope: !1094, inlinedAt: !960)
!1094 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 514, column: 9)
!1095 = !DILocation(line: 514, column: 16, scope: !1094, inlinedAt: !960)
!1096 = !DILocation(line: 514, column: 28, scope: !1094, inlinedAt: !960)
!1097 = !DILocation(line: 515, column: 17, scope: !1094, inlinedAt: !960)
!1098 = !DILocation(line: 515, column: 7, scope: !1094, inlinedAt: !960)
!1099 = !DILocation(line: 515, column: 36, scope: !1094, inlinedAt: !960)
!1100 = !{!824, !776, i64 112}
!1101 = !DILocation(line: 519, column: 28, scope: !1092, inlinedAt: !960)
!1102 = !DILocation(line: 490, column: 14, scope: !389, inlinedAt: !960)
!1103 = !DILocation(line: 520, column: 17, scope: !1092, inlinedAt: !960)
!1104 = !DILocation(line: 520, column: 28, scope: !1092, inlinedAt: !960)
!1105 = !DILocation(line: 521, column: 17, scope: !1092, inlinedAt: !960)
!1106 = !DILocation(line: 521, column: 26, scope: !1092, inlinedAt: !960)
!1107 = !DILocation(line: 522, column: 17, scope: !1092, inlinedAt: !960)
!1108 = !DILocation(line: 522, column: 26, scope: !1092, inlinedAt: !960)
!1109 = !DILocation(line: 528, column: 32, scope: !389, inlinedAt: !960)
!1110 = !DILocation(line: 528, column: 44, scope: !389, inlinedAt: !960)
!1111 = !{!1112, !782, i64 184}
!1112 = !{!"", !777, i64 0, !782, i64 4, !782, i64 8, !777, i64 12, !777, i64 16, !777, i64 20, !777, i64 24, !777, i64 56, !782, i64 60, !782, i64 64, !777, i64 68, !777, i64 100, !777, i64 132, !777, i64 164, !782, i64 168, !782, i64 172, !776, i64 176, !782, i64 184, !782, i64 188, !777, i64 192, !782, i64 196, !782, i64 200, !782, i64 204, !782, i64 208, !782, i64 212, !782, i64 216, !777, i64 220, !777, i64 224, !777, i64 228, !777, i64 232}
!1113 = !DILocation(line: 528, column: 73, scope: !389, inlinedAt: !960)
!1114 = !DILocation(line: 528, column: 3, scope: !389, inlinedAt: !960)
!1115 = !DILocation(line: 528, column: 8, scope: !389, inlinedAt: !960)
!1116 = !DILocation(line: 528, column: 30, scope: !389, inlinedAt: !960)
!1117 = !{!781, !782, i64 72000}
!1118 = !DILocation(line: 529, column: 44, scope: !389, inlinedAt: !960)
!1119 = !{!1112, !782, i64 188}
!1120 = !DILocation(line: 529, column: 73, scope: !389, inlinedAt: !960)
!1121 = !DILocation(line: 529, column: 8, scope: !389, inlinedAt: !960)
!1122 = !DILocation(line: 529, column: 30, scope: !389, inlinedAt: !960)
!1123 = !{!781, !782, i64 72004}
!1124 = !DILocation(line: 532, column: 19, scope: !389, inlinedAt: !960)
!1125 = !DILocation(line: 532, column: 30, scope: !389, inlinedAt: !960)
!1126 = !{!781, !782, i64 28}
!1127 = !DILocation(line: 532, column: 3, scope: !389, inlinedAt: !960)
!1128 = !DILocation(line: 535, column: 32, scope: !389, inlinedAt: !960)
!1129 = !DILocation(line: 535, column: 3, scope: !389, inlinedAt: !960)
!1130 = !DILocation(line: 535, column: 8, scope: !389, inlinedAt: !960)
!1131 = !DILocation(line: 535, column: 30, scope: !389, inlinedAt: !960)
!1132 = !DILocation(line: 536, column: 32, scope: !389, inlinedAt: !960)
!1133 = !DILocation(line: 536, column: 8, scope: !389, inlinedAt: !960)
!1134 = !DILocation(line: 536, column: 30, scope: !389, inlinedAt: !960)
!1135 = !DILocation(line: 540, column: 15, scope: !1136, inlinedAt: !960)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 540, column: 9)
!1137 = distinct !DILexicalBlock(scope: !389, file: !1, line: 539, column: 3)
!1138 = !DILocation(line: 540, column: 31, scope: !1136, inlinedAt: !960)
!1139 = !DILocation(line: 540, column: 60, scope: !1136, inlinedAt: !960)
!1140 = !DILocation(line: 540, column: 67, scope: !1136, inlinedAt: !960)
!1141 = !{!802, !782, i64 40}
!1142 = !DILocation(line: 540, column: 9, scope: !1137, inlinedAt: !960)
!1143 = !DILocation(line: 542, column: 36, scope: !1144, inlinedAt: !960)
!1144 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 541, column: 5)
!1145 = !DILocation(line: 542, column: 34, scope: !1144, inlinedAt: !960)
!1146 = !DILocation(line: 543, column: 22, scope: !1144, inlinedAt: !960)
!1147 = !DILocation(line: 543, column: 20, scope: !1144, inlinedAt: !960)
!1148 = !DILocation(line: 545, column: 14, scope: !1149, inlinedAt: !960)
!1149 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 545, column: 9)
!1150 = !DILocation(line: 544, column: 5, scope: !1144, inlinedAt: !960)
!1151 = !DILocation(line: 545, column: 19, scope: !1149, inlinedAt: !960)
!1152 = !DILocation(line: 545, column: 9, scope: !1137, inlinedAt: !960)
!1153 = !DILocation(line: 548, column: 11, scope: !1154, inlinedAt: !960)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 548, column: 11)
!1155 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 546, column: 5)
!1156 = !DILocation(line: 548, column: 18, scope: !1154, inlinedAt: !960)
!1157 = !{!802, !782, i64 44}
!1158 = !DILocation(line: 548, column: 11, scope: !1155, inlinedAt: !960)
!1159 = !DILocation(line: 550, column: 38, scope: !1160, inlinedAt: !960)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 549, column: 7)
!1161 = !DILocation(line: 550, column: 36, scope: !1160, inlinedAt: !960)
!1162 = !DILocation(line: 551, column: 24, scope: !1160, inlinedAt: !960)
!1163 = !DILocation(line: 551, column: 22, scope: !1160, inlinedAt: !960)
!1164 = !DILocation(line: 552, column: 7, scope: !1160, inlinedAt: !960)
!1165 = !DILocation(line: 553, column: 18, scope: !1166, inlinedAt: !960)
!1166 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 553, column: 11)
!1167 = !{!802, !782, i64 48}
!1168 = !DILocation(line: 553, column: 11, scope: !1166, inlinedAt: !960)
!1169 = !DILocation(line: 553, column: 11, scope: !1155, inlinedAt: !960)
!1170 = !DILocation(line: 556, column: 38, scope: !1171, inlinedAt: !960)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 554, column: 7)
!1172 = !DILocation(line: 556, column: 36, scope: !1171, inlinedAt: !960)
!1173 = !DILocation(line: 557, column: 24, scope: !1171, inlinedAt: !960)
!1174 = !DILocation(line: 557, column: 22, scope: !1171, inlinedAt: !960)
!1175 = !DILocation(line: 558, column: 7, scope: !1171, inlinedAt: !960)
!1176 = !DILocation(line: 563, column: 12, scope: !1177, inlinedAt: !960)
!1177 = distinct !DILexicalBlock(scope: !389, file: !1, line: 563, column: 7)
!1178 = !{!781, !782, i64 72496}
!1179 = !DILocation(line: 563, column: 7, scope: !1177, inlinedAt: !960)
!1180 = !DILocation(line: 563, column: 31, scope: !1177, inlinedAt: !960)
!1181 = !DILocation(line: 563, column: 34, scope: !1177, inlinedAt: !960)
!1182 = !DILocation(line: 563, column: 41, scope: !1177, inlinedAt: !960)
!1183 = !{!802, !782, i64 1320}
!1184 = !DILocation(line: 563, column: 55, scope: !1177, inlinedAt: !960)
!1185 = !DILocation(line: 563, column: 65, scope: !1177, inlinedAt: !960)
!1186 = !{!802, !782, i64 2352}
!1187 = !DILocation(line: 563, column: 58, scope: !1177, inlinedAt: !960)
!1188 = !DILocation(line: 563, column: 85, scope: !1177, inlinedAt: !960)
!1189 = !DILocation(line: 563, column: 92, scope: !1177, inlinedAt: !960)
!1190 = !{!1191, !782, i64 28}
!1191 = !{!"decoded_picture_buffer", !776, i64 0, !776, i64 8, !776, i64 16, !782, i64 24, !782, i64 28, !782, i64 32, !782, i64 36, !782, i64 40, !782, i64 44, !782, i64 48, !776, i64 56}
!1192 = !DILocation(line: 563, column: 109, scope: !1177, inlinedAt: !960)
!1193 = !{!1191, !782, i64 24}
!1194 = !DILocation(line: 563, column: 102, scope: !1177, inlinedAt: !960)
!1195 = !DILocation(line: 563, column: 7, scope: !389, inlinedAt: !960)
!1196 = !DILocation(line: 565, column: 35, scope: !1197, inlinedAt: !960)
!1197 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 564, column: 3)
!1198 = !{!781, !782, i64 72464}
!1199 = !DILocation(line: 565, column: 5, scope: !1197, inlinedAt: !960)
!1200 = !DILocation(line: 52, column: 22, scope: !218, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 568, column: 3, scope: !389, inlinedAt: !960)
!1202 = !DILocation(line: 566, column: 3, scope: !1197, inlinedAt: !960)
!1203 = !DILocation(line: 52, column: 27, scope: !218, inlinedAt: !1201)
!1204 = !DILocation(line: 52, column: 10, scope: !218, inlinedAt: !1201)
!1205 = !DILocation(line: 54, column: 14, scope: !218, inlinedAt: !1201)
!1206 = !DILocation(line: 54, column: 46, scope: !218, inlinedAt: !1201)
!1207 = !DILocation(line: 55, column: 14, scope: !218, inlinedAt: !1201)
!1208 = !DILocation(line: 55, column: 46, scope: !218, inlinedAt: !1201)
!1209 = !DILocation(line: 571, column: 12, scope: !401, inlinedAt: !960)
!1210 = !DILocation(line: 571, column: 16, scope: !401, inlinedAt: !960)
!1211 = !DILocation(line: 571, column: 26, scope: !401, inlinedAt: !960)
!1212 = !DILocation(line: 571, column: 29, scope: !401, inlinedAt: !960)
!1213 = !DILocation(line: 571, column: 36, scope: !401, inlinedAt: !960)
!1214 = !DILocation(line: 571, column: 50, scope: !401, inlinedAt: !960)
!1215 = !DILocation(line: 571, column: 60, scope: !401, inlinedAt: !960)
!1216 = !{!802, !782, i64 2348}
!1217 = !DILocation(line: 571, column: 53, scope: !401, inlinedAt: !960)
!1218 = !DILocation(line: 571, column: 7, scope: !389, inlinedAt: !960)
!1219 = !DILocation(line: 576, column: 5, scope: !400, inlinedAt: !960)
!1220 = !DILocation(line: 578, column: 10, scope: !1221, inlinedAt: !960)
!1221 = distinct !DILexicalBlock(scope: !400, file: !1, line: 578, column: 9)
!1222 = !DILocation(line: 578, column: 15, scope: !1221, inlinedAt: !960)
!1223 = !DILocation(line: 578, column: 32, scope: !1221, inlinedAt: !960)
!1224 = !DILocation(line: 580, column: 24, scope: !1225, inlinedAt: !960)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 580, column: 7)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 580, column: 7)
!1227 = distinct !DILexicalBlock(scope: !1221, file: !1, line: 579, column: 5)
!1228 = !DILocation(line: 580, column: 18, scope: !1225, inlinedAt: !960)
!1229 = !DILocation(line: 580, column: 7, scope: !1226, inlinedAt: !960)
!1230 = !DILocation(line: 582, column: 20, scope: !1231, inlinedAt: !960)
!1231 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 581, column: 7)
!1232 = !{!790, !776, i64 64}
!1233 = !DILocation(line: 583, column: 20, scope: !1231, inlinedAt: !960)
!1234 = !{!790, !776, i64 72}
!1235 = !DILocation(line: 584, column: 20, scope: !1231, inlinedAt: !960)
!1236 = !{!790, !776, i64 80}
!1237 = !DILocation(line: 582, column: 9, scope: !1231, inlinedAt: !960)
!1238 = !DILocation(line: 582, column: 52, scope: !1231, inlinedAt: !960)
!1239 = !DILocation(line: 583, column: 9, scope: !1231, inlinedAt: !960)
!1240 = !DILocation(line: 583, column: 50, scope: !1231, inlinedAt: !960)
!1241 = !DILocation(line: 584, column: 9, scope: !1231, inlinedAt: !960)
!1242 = !DILocation(line: 584, column: 44, scope: !1231, inlinedAt: !960)
!1243 = !DILocation(line: 587, column: 16, scope: !1244, inlinedAt: !960)
!1244 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 587, column: 11)
!1245 = !DILocation(line: 587, column: 21, scope: !1244, inlinedAt: !960)
!1246 = !DILocation(line: 587, column: 11, scope: !1227, inlinedAt: !960)
!1247 = !DILocation(line: 589, column: 26, scope: !1248, inlinedAt: !960)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 589, column: 9)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 589, column: 9)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 588, column: 7)
!1251 = !DILocation(line: 589, column: 20, scope: !1248, inlinedAt: !960)
!1252 = !DILocation(line: 589, column: 9, scope: !1249, inlinedAt: !960)
!1253 = !DILocation(line: 591, column: 22, scope: !1254, inlinedAt: !960)
!1254 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 590, column: 9)
!1255 = !{!790, !776, i64 96}
!1256 = !DILocation(line: 592, column: 22, scope: !1254, inlinedAt: !960)
!1257 = !{!790, !776, i64 104}
!1258 = !DILocation(line: 593, column: 22, scope: !1254, inlinedAt: !960)
!1259 = !{!790, !776, i64 112}
!1260 = !DILocation(line: 591, column: 11, scope: !1254, inlinedAt: !960)
!1261 = !DILocation(line: 591, column: 54, scope: !1254, inlinedAt: !960)
!1262 = !DILocation(line: 592, column: 11, scope: !1254, inlinedAt: !960)
!1263 = !DILocation(line: 592, column: 52, scope: !1254, inlinedAt: !960)
!1264 = !DILocation(line: 593, column: 11, scope: !1254, inlinedAt: !960)
!1265 = !DILocation(line: 593, column: 46, scope: !1254, inlinedAt: !960)
!1266 = !DILocation(line: 598, column: 15, scope: !1267, inlinedAt: !960)
!1267 = distinct !DILexicalBlock(scope: !400, file: !1, line: 598, column: 9)
!1268 = !DILocation(line: 598, column: 32, scope: !1267, inlinedAt: !960)
!1269 = !DILocation(line: 600, column: 22, scope: !1270, inlinedAt: !960)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 599, column: 5)
!1271 = !DILocation(line: 574, column: 12, scope: !400, inlinedAt: !960)
!1272 = !DILocation(line: 601, column: 27, scope: !1270, inlinedAt: !960)
!1273 = !DILocation(line: 603, column: 38, scope: !1270, inlinedAt: !960)
!1274 = !DILocation(line: 604, column: 38, scope: !1270, inlinedAt: !960)
!1275 = !DILocation(line: 605, column: 38, scope: !1270, inlinedAt: !960)
!1276 = !DILocation(line: 601, column: 7, scope: !1270, inlinedAt: !960)
!1277 = !DILocation(line: 608, column: 28, scope: !1270, inlinedAt: !960)
!1278 = !DILocation(line: 609, column: 28, scope: !1270, inlinedAt: !960)
!1279 = !DILocation(line: 609, column: 33, scope: !1270, inlinedAt: !960)
!1280 = !DILocation(line: 609, column: 55, scope: !1270, inlinedAt: !960)
!1281 = !DILocation(line: 610, column: 39, scope: !1270, inlinedAt: !960)
!1282 = !DILocation(line: 611, column: 39, scope: !1270, inlinedAt: !960)
!1283 = !DILocation(line: 612, column: 39, scope: !1270, inlinedAt: !960)
!1284 = !DILocation(line: 608, column: 7, scope: !1270, inlinedAt: !960)
!1285 = !DILocation(line: 615, column: 11, scope: !1286, inlinedAt: !960)
!1286 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 615, column: 11)
!1287 = !DILocation(line: 615, column: 16, scope: !1286, inlinedAt: !960)
!1288 = !DILocation(line: 615, column: 21, scope: !1286, inlinedAt: !960)
!1289 = !DILocation(line: 615, column: 11, scope: !1270, inlinedAt: !960)
!1290 = !DILocation(line: 617, column: 24, scope: !1291, inlinedAt: !960)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 616, column: 7)
!1292 = !DILocation(line: 618, column: 29, scope: !1291, inlinedAt: !960)
!1293 = !DILocation(line: 620, column: 40, scope: !1291, inlinedAt: !960)
!1294 = !DILocation(line: 621, column: 40, scope: !1291, inlinedAt: !960)
!1295 = !DILocation(line: 622, column: 40, scope: !1291, inlinedAt: !960)
!1296 = !DILocation(line: 618, column: 9, scope: !1291, inlinedAt: !960)
!1297 = !DILocation(line: 625, column: 30, scope: !1291, inlinedAt: !960)
!1298 = !DILocation(line: 626, column: 30, scope: !1291, inlinedAt: !960)
!1299 = !DILocation(line: 626, column: 35, scope: !1291, inlinedAt: !960)
!1300 = !DILocation(line: 626, column: 57, scope: !1291, inlinedAt: !960)
!1301 = !DILocation(line: 627, column: 41, scope: !1291, inlinedAt: !960)
!1302 = !DILocation(line: 628, column: 41, scope: !1291, inlinedAt: !960)
!1303 = !DILocation(line: 629, column: 41, scope: !1291, inlinedAt: !960)
!1304 = !DILocation(line: 625, column: 9, scope: !1291, inlinedAt: !960)
!1305 = !DILocation(line: 636, column: 7, scope: !1306, inlinedAt: !960)
!1306 = distinct !DILexicalBlock(scope: !389, file: !1, line: 636, column: 7)
!1307 = !DILocation(line: 630, column: 7, scope: !1291, inlinedAt: !960)
!1308 = !DILocation(line: 636, column: 12, scope: !1306, inlinedAt: !960)
!1309 = !DILocation(line: 636, column: 21, scope: !1306, inlinedAt: !960)
!1310 = !DILocation(line: 636, column: 7, scope: !389, inlinedAt: !960)
!1311 = !DILocation(line: 637, column: 5, scope: !1306, inlinedAt: !960)
!1312 = !DILocation(line: 639, column: 7, scope: !1313, inlinedAt: !960)
!1313 = distinct !DILexicalBlock(scope: !389, file: !1, line: 639, column: 7)
!1314 = !DILocation(line: 639, column: 12, scope: !1313, inlinedAt: !960)
!1315 = !DILocation(line: 639, column: 17, scope: !1313, inlinedAt: !960)
!1316 = !DILocation(line: 639, column: 28, scope: !1313, inlinedAt: !960)
!1317 = !DILocation(line: 639, column: 32, scope: !1313, inlinedAt: !960)
!1318 = !DILocation(line: 639, column: 44, scope: !1313, inlinedAt: !960)
!1319 = !{!1112, !777, i64 192}
!1320 = !DILocation(line: 639, column: 63, scope: !1313, inlinedAt: !960)
!1321 = !DILocation(line: 639, column: 68, scope: !1313, inlinedAt: !960)
!1322 = !DILocation(line: 639, column: 84, scope: !1313, inlinedAt: !960)
!1323 = !{!1112, !782, i64 196}
!1324 = !DILocation(line: 639, column: 104, scope: !1313, inlinedAt: !960)
!1325 = !DILocation(line: 639, column: 122, scope: !1313, inlinedAt: !960)
!1326 = !DILocation(line: 639, column: 108, scope: !1313, inlinedAt: !960)
!1327 = !DILocation(line: 641, column: 27, scope: !1328, inlinedAt: !960)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 641, column: 8)
!1329 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 640, column: 3)
!1330 = !DILocation(line: 643, column: 11, scope: !1331, inlinedAt: !960)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 643, column: 11)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 642, column: 5)
!1333 = !DILocation(line: 643, column: 18, scope: !1331, inlinedAt: !960)
!1334 = !{!802, !782, i64 60}
!1335 = !DILocation(line: 643, column: 38, scope: !1331, inlinedAt: !960)
!1336 = !DILocation(line: 643, column: 48, scope: !1331, inlinedAt: !960)
!1337 = !{!802, !782, i64 1296}
!1338 = !DILocation(line: 643, column: 41, scope: !1331, inlinedAt: !960)
!1339 = !DILocation(line: 643, column: 11, scope: !1332, inlinedAt: !960)
!1340 = !DILocation(line: 645, column: 13, scope: !1341, inlinedAt: !960)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 645, column: 13)
!1342 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 644, column: 7)
!1343 = !DILocation(line: 645, column: 26, scope: !1341, inlinedAt: !960)
!1344 = !DILocation(line: 645, column: 24, scope: !1341, inlinedAt: !960)
!1345 = !DILocation(line: 645, column: 13, scope: !1342, inlinedAt: !960)
!1346 = !DILocation(line: 646, column: 11, scope: !1341, inlinedAt: !960)
!1347 = !DILocation(line: 648, column: 11, scope: !1341, inlinedAt: !960)
!1348 = !DILocation(line: 651, column: 9, scope: !1331, inlinedAt: !960)
!1349 = !DILocation(line: 655, column: 8, scope: !1328, inlinedAt: !960)
!1350 = !DILocation(line: 797, column: 7, scope: !412, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 658, column: 3, scope: !389, inlinedAt: !960)
!1352 = !DILocation(line: 801, column: 14, scope: !1353, inlinedAt: !1351)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 801, column: 3)
!1354 = distinct !DILexicalBlock(scope: !412, file: !1, line: 801, column: 3)
!1355 = !DILocation(line: 801, column: 13, scope: !1353, inlinedAt: !1351)
!1356 = !DILocation(line: 801, column: 3, scope: !1354, inlinedAt: !1351)
!1357 = !DILocation(line: 803, column: 49, scope: !1358, inlinedAt: !1351)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 802, column: 3)
!1359 = !DILocation(line: 803, column: 5, scope: !1358, inlinedAt: !1351)
!1360 = !DILocation(line: 809, column: 14, scope: !1361, inlinedAt: !1351)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 809, column: 3)
!1362 = distinct !DILexicalBlock(scope: !412, file: !1, line: 809, column: 3)
!1363 = !DILocation(line: 809, column: 13, scope: !1361, inlinedAt: !1351)
!1364 = !DILocation(line: 809, column: 3, scope: !1362, inlinedAt: !1351)
!1365 = !DILocation(line: 811, column: 49, scope: !1366, inlinedAt: !1351)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 810, column: 3)
!1367 = !DILocation(line: 811, column: 5, scope: !1366, inlinedAt: !1351)
!1368 = !DILocation(line: 658, column: 3, scope: !389, inlinedAt: !960)
!1369 = !DILocation(line: 803, column: 67, scope: !1358, inlinedAt: !1351)
!1370 = !{!1371, !782, i64 4}
!1371 = !{!"storable_picture", !777, i64 0, !782, i64 4, !782, i64 8, !782, i64 12, !782, i64 16, !782, i64 20, !777, i64 24, !777, i64 1608, !777, i64 3192, !777, i64 4776, !782, i64 6360, !782, i64 6364, !782, i64 6368, !782, i64 6372, !782, i64 6376, !782, i64 6380, !782, i64 6384, !782, i64 6388, !782, i64 6392, !782, i64 6396, !782, i64 6400, !782, i64 6404, !782, i64 6408, !782, i64 6412, !782, i64 6416, !776, i64 6424, !776, i64 6432, !776, i64 6440, !776, i64 6448, !776, i64 6456, !776, i64 6464, !776, i64 6472, !776, i64 6480, !776, i64 6488, !776, i64 6496, !776, i64 6504, !776, i64 6512, !776, i64 6520, !776, i64 6528, !776, i64 6536, !776, i64 6544, !782, i64 6552, !782, i64 6556, !782, i64 6560, !782, i64 6564, !782, i64 6568, !782, i64 6572, !782, i64 6576}
!1372 = !DILocation(line: 803, column: 71, scope: !1358, inlinedAt: !1351)
!1373 = !DILocation(line: 803, column: 97, scope: !1358, inlinedAt: !1351)
!1374 = !{!1371, !777, i64 0}
!1375 = !DILocation(line: 803, column: 106, scope: !1358, inlinedAt: !1351)
!1376 = !DILocation(line: 803, column: 78, scope: !1358, inlinedAt: !1351)
!1377 = !DILocation(line: 803, column: 75, scope: !1358, inlinedAt: !1351)
!1378 = !DILocation(line: 803, column: 48, scope: !1358, inlinedAt: !1351)
!1379 = !{!1380, !1380, i64 0}
!1380 = !{!"long long", !777, i64 0}
!1381 = !DILocation(line: 804, column: 67, scope: !1358, inlinedAt: !1351)
!1382 = !{!1371, !782, i64 16}
!1383 = !DILocation(line: 804, column: 77, scope: !1358, inlinedAt: !1351)
!1384 = !DILocation(line: 804, column: 49, scope: !1358, inlinedAt: !1351)
!1385 = !DILocation(line: 804, column: 5, scope: !1358, inlinedAt: !1351)
!1386 = !DILocation(line: 804, column: 48, scope: !1358, inlinedAt: !1351)
!1387 = !DILocation(line: 805, column: 67, scope: !1358, inlinedAt: !1351)
!1388 = !{!1371, !782, i64 8}
!1389 = !DILocation(line: 805, column: 75, scope: !1358, inlinedAt: !1351)
!1390 = !DILocation(line: 805, column: 49, scope: !1358, inlinedAt: !1351)
!1391 = !DILocation(line: 805, column: 5, scope: !1358, inlinedAt: !1351)
!1392 = !DILocation(line: 805, column: 48, scope: !1358, inlinedAt: !1351)
!1393 = !DILocation(line: 806, column: 67, scope: !1358, inlinedAt: !1351)
!1394 = !{!1371, !782, i64 12}
!1395 = !DILocation(line: 806, column: 78, scope: !1358, inlinedAt: !1351)
!1396 = !DILocation(line: 806, column: 82, scope: !1358, inlinedAt: !1351)
!1397 = !DILocation(line: 806, column: 49, scope: !1358, inlinedAt: !1351)
!1398 = !DILocation(line: 806, column: 5, scope: !1358, inlinedAt: !1351)
!1399 = !DILocation(line: 806, column: 48, scope: !1358, inlinedAt: !1351)
!1400 = !DILocation(line: 811, column: 67, scope: !1366, inlinedAt: !1351)
!1401 = !DILocation(line: 811, column: 72, scope: !1366, inlinedAt: !1351)
!1402 = !DILocation(line: 811, column: 97, scope: !1366, inlinedAt: !1351)
!1403 = !DILocation(line: 811, column: 106, scope: !1366, inlinedAt: !1351)
!1404 = !DILocation(line: 811, column: 78, scope: !1366, inlinedAt: !1351)
!1405 = !DILocation(line: 811, column: 75, scope: !1366, inlinedAt: !1351)
!1406 = !DILocation(line: 811, column: 48, scope: !1366, inlinedAt: !1351)
!1407 = !DILocation(line: 812, column: 67, scope: !1366, inlinedAt: !1351)
!1408 = !DILocation(line: 812, column: 77, scope: !1366, inlinedAt: !1351)
!1409 = !DILocation(line: 812, column: 49, scope: !1366, inlinedAt: !1351)
!1410 = !DILocation(line: 812, column: 5, scope: !1366, inlinedAt: !1351)
!1411 = !DILocation(line: 812, column: 48, scope: !1366, inlinedAt: !1351)
!1412 = !DILocation(line: 813, column: 67, scope: !1366, inlinedAt: !1351)
!1413 = !DILocation(line: 813, column: 75, scope: !1366, inlinedAt: !1351)
!1414 = !DILocation(line: 813, column: 49, scope: !1366, inlinedAt: !1351)
!1415 = !DILocation(line: 813, column: 5, scope: !1366, inlinedAt: !1351)
!1416 = !DILocation(line: 813, column: 48, scope: !1366, inlinedAt: !1351)
!1417 = !DILocation(line: 814, column: 67, scope: !1366, inlinedAt: !1351)
!1418 = !DILocation(line: 814, column: 78, scope: !1366, inlinedAt: !1351)
!1419 = !DILocation(line: 814, column: 82, scope: !1366, inlinedAt: !1351)
!1420 = !DILocation(line: 814, column: 49, scope: !1366, inlinedAt: !1351)
!1421 = !DILocation(line: 814, column: 5, scope: !1366, inlinedAt: !1351)
!1422 = !DILocation(line: 814, column: 48, scope: !1366, inlinedAt: !1351)
!1423 = !DILocation(line: 817, column: 8, scope: !1424, inlinedAt: !1351)
!1424 = distinct !DILexicalBlock(scope: !412, file: !1, line: 817, column: 7)
!1425 = !DILocation(line: 817, column: 20, scope: !1424, inlinedAt: !1351)
!1426 = !{!1427, !777, i64 1148}
!1427 = !{!"", !777, i64 0, !782, i64 4, !777, i64 8, !777, i64 12, !777, i64 16, !777, i64 20, !782, i64 24, !782, i64 28, !782, i64 32, !777, i64 36, !777, i64 40, !782, i64 72, !782, i64 76, !782, i64 80, !782, i64 84, !782, i64 88, !777, i64 92, !782, i64 96, !782, i64 100, !782, i64 104, !777, i64 108, !782, i64 1132, !777, i64 1136, !782, i64 1140, !782, i64 1144, !777, i64 1148, !777, i64 1152, !777, i64 1156, !777, i64 1160, !782, i64 1164, !782, i64 1168, !782, i64 1172, !782, i64 1176, !777, i64 1180, !1428, i64 1184}
!1428 = !{!"", !777, i64 0, !782, i64 4, !782, i64 8, !782, i64 12, !777, i64 16, !777, i64 20, !777, i64 24, !782, i64 28, !777, i64 32, !777, i64 36, !782, i64 40, !782, i64 44, !782, i64 48, !777, i64 52, !782, i64 56, !782, i64 60, !777, i64 64, !782, i64 68, !782, i64 72, !777, i64 76, !777, i64 80, !1429, i64 84, !777, i64 496, !1429, i64 500, !777, i64 912, !777, i64 916, !777, i64 920, !782, i64 924, !782, i64 928, !782, i64 932, !782, i64 936, !782, i64 940, !782, i64 944}
!1429 = !{!"", !782, i64 0, !782, i64 4, !782, i64 8, !777, i64 12, !777, i64 140, !777, i64 268, !782, i64 396, !782, i64 400, !782, i64 404, !782, i64 408}
!1430 = !DILocation(line: 819, column: 9, scope: !1431, inlinedAt: !1351)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 819, column: 9)
!1432 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 818, column: 3)
!1433 = !DILocation(line: 817, column: 7, scope: !412, inlinedAt: !1351)
!1434 = !DILocation(line: 819, column: 14, scope: !1431, inlinedAt: !1351)
!1435 = !DILocation(line: 819, column: 23, scope: !1431, inlinedAt: !1351)
!1436 = !DILocation(line: 819, column: 9, scope: !1432, inlinedAt: !1351)
!1437 = !DILocation(line: 823, column: 11, scope: !1438, inlinedAt: !1351)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !1, line: 822, column: 9)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !1, line: 821, column: 9)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !1, line: 821, column: 9)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 820, column: 7)
!1442 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 820, column: 7)
!1443 = !DILocation(line: 820, column: 7, scope: !1442, inlinedAt: !1351)
!1444 = !DILocation(line: 821, column: 20, scope: !1439, inlinedAt: !1351)
!1445 = !DILocation(line: 821, column: 19, scope: !1439, inlinedAt: !1351)
!1446 = !DILocation(line: 821, column: 9, scope: !1440, inlinedAt: !1351)
!1447 = !DILocation(line: 823, column: 44, scope: !1438, inlinedAt: !1351)
!1448 = !DILocation(line: 823, column: 57, scope: !1438, inlinedAt: !1351)
!1449 = !DILocation(line: 823, column: 61, scope: !1438, inlinedAt: !1351)
!1450 = !DILocation(line: 823, column: 82, scope: !1438, inlinedAt: !1351)
!1451 = !DILocation(line: 823, column: 91, scope: !1438, inlinedAt: !1351)
!1452 = !DILocation(line: 823, column: 68, scope: !1438, inlinedAt: !1351)
!1453 = !DILocation(line: 823, column: 65, scope: !1438, inlinedAt: !1351)
!1454 = !DILocation(line: 823, column: 42, scope: !1438, inlinedAt: !1351)
!1455 = !DILocation(line: 824, column: 61, scope: !1438, inlinedAt: !1351)
!1456 = !DILocation(line: 824, column: 71, scope: !1438, inlinedAt: !1351)
!1457 = !DILocation(line: 824, column: 48, scope: !1438, inlinedAt: !1351)
!1458 = !DILocation(line: 824, column: 11, scope: !1438, inlinedAt: !1351)
!1459 = !DILocation(line: 824, column: 46, scope: !1438, inlinedAt: !1351)
!1460 = !DILocation(line: 825, column: 61, scope: !1438, inlinedAt: !1351)
!1461 = !DILocation(line: 825, column: 69, scope: !1438, inlinedAt: !1351)
!1462 = !DILocation(line: 825, column: 48, scope: !1438, inlinedAt: !1351)
!1463 = !DILocation(line: 825, column: 11, scope: !1438, inlinedAt: !1351)
!1464 = !DILocation(line: 825, column: 46, scope: !1438, inlinedAt: !1351)
!1465 = !DILocation(line: 826, column: 64, scope: !1438, inlinedAt: !1351)
!1466 = !DILocation(line: 826, column: 75, scope: !1438, inlinedAt: !1351)
!1467 = !DILocation(line: 826, column: 79, scope: !1438, inlinedAt: !1351)
!1468 = !DILocation(line: 826, column: 51, scope: !1438, inlinedAt: !1351)
!1469 = !DILocation(line: 826, column: 11, scope: !1438, inlinedAt: !1351)
!1470 = !DILocation(line: 826, column: 49, scope: !1438, inlinedAt: !1351)
!1471 = !DILocation(line: 660, column: 12, scope: !1472, inlinedAt: !960)
!1472 = distinct !DILexicalBlock(scope: !389, file: !1, line: 660, column: 7)
!1473 = !DILocation(line: 660, column: 17, scope: !1472, inlinedAt: !960)
!1474 = !DILocation(line: 660, column: 7, scope: !389, inlinedAt: !960)
!1475 = !DILocation(line: 661, column: 23, scope: !1472, inlinedAt: !960)
!1476 = !DILocation(line: 661, column: 5, scope: !1472, inlinedAt: !960)
!1477 = !DILocation(line: 200, column: 24, scope: !241)
!1478 = !DILocation(line: 200, column: 29, scope: !241)
!1479 = !DILocation(line: 200, column: 43, scope: !241)
!1480 = !DILocation(line: 200, column: 54, scope: !241)
!1481 = !DILocation(line: 200, column: 65, scope: !241)
!1482 = !DILocation(line: 200, column: 22, scope: !241)
!1483 = !DILocation(line: 202, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !241, file: !1, line: 202, column: 7)
!1485 = !DILocation(line: 202, column: 14, scope: !1484)
!1486 = !DILocation(line: 202, column: 25, scope: !1484)
!1487 = !DILocation(line: 202, column: 7, scope: !241)
!1488 = !DILocation(line: 204, column: 5, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !1, line: 203, column: 3)
!1490 = !DILocation(line: 205, column: 3, scope: !1489)
!1491 = !DILocation(line: 220, column: 9, scope: !241)
!1492 = !DILocation(line: 189, column: 7, scope: !241)
!1493 = !DILocation(line: 223, column: 3, scope: !241)
!1494 = !DILocation(line: 223, column: 8, scope: !241)
!1495 = !DILocation(line: 223, column: 27, scope: !241)
!1496 = !{!781, !782, i64 72524}
!1497 = !DILocation(line: 226, column: 11, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !241, file: !1, line: 226, column: 6)
!1499 = !{!781, !782, i64 72620}
!1500 = !DILocation(line: 226, column: 26, scope: !1498)
!1501 = !{!781, !782, i64 72608}
!1502 = !DILocation(line: 226, column: 20, scope: !1498)
!1503 = !DILocation(line: 226, column: 6, scope: !241)
!1504 = !DILocation(line: 227, column: 10, scope: !1498)
!1505 = !DILocation(line: 227, column: 38, scope: !1498)
!1506 = !{!781, !782, i64 72532}
!1507 = !DILocation(line: 227, column: 5, scope: !1498)
!1508 = !DILocation(line: 240, column: 3, scope: !241)
!1509 = !DILocation(line: 240, column: 10, scope: !241)
!1510 = !DILocation(line: 240, column: 20, scope: !241)
!1511 = !{!912, !782, i64 24}
!1512 = !DILocation(line: 241, column: 30, scope: !241)
!1513 = !DILocation(line: 241, column: 3, scope: !241)
!1514 = !DILocation(line: 241, column: 36, scope: !241)
!1515 = !DILocation(line: 244, column: 10, scope: !241)
!1516 = !DILocation(line: 244, column: 23, scope: !241)
!1517 = !DILocation(line: 244, column: 3, scope: !241)
!1518 = !DILocation(line: 247, column: 10, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !1, line: 247, column: 9)
!1520 = distinct !DILexicalBlock(scope: !241, file: !1, line: 245, column: 3)
!1521 = !DILocation(line: 247, column: 15, scope: !1519)
!1522 = !{!781, !782, i64 72400}
!1523 = !DILocation(line: 247, column: 9, scope: !1520)
!1524 = !DILocation(line: 188, column: 11, scope: !241)
!1525 = !DILocation(line: 249, column: 25, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 248, column: 5)
!1527 = !DILocation(line: 250, column: 13, scope: !1526)
!1528 = !DILocation(line: 252, column: 7, scope: !1526)
!1529 = !DILocation(line: 253, column: 7, scope: !1526)
!1530 = !DILocation(line: 254, column: 7, scope: !1526)
!1531 = !DILocation(line: 256, column: 7, scope: !1526)
!1532 = !DILocation(line: 262, column: 11, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 262, column: 11)
!1534 = !DILocation(line: 262, column: 29, scope: !1533)
!1535 = !DILocation(line: 262, column: 11, scope: !1526)
!1536 = !DILocation(line: 264, column: 25, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 263, column: 7)
!1538 = !DILocation(line: 265, column: 27, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 265, column: 13)
!1540 = !DILocation(line: 265, column: 13, scope: !1537)
!1541 = !DILocation(line: 268, column: 24, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !1, line: 266, column: 9)
!1543 = !DILocation(line: 269, column: 9, scope: !1542)
!1544 = !DILocation(line: 270, column: 25, scope: !1537)
!1545 = !DILocation(line: 271, column: 9, scope: !1537)
!1546 = !DILocation(line: 272, column: 7, scope: !1537)
!1547 = !DILocation(line: 276, column: 49, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 274, column: 7)
!1549 = !DILocation(line: 276, column: 54, scope: !1548)
!1550 = !DILocation(line: 276, column: 30, scope: !1548)
!1551 = !DILocation(line: 276, column: 9, scope: !1548)
!1552 = !DILocation(line: 276, column: 14, scope: !1548)
!1553 = !DILocation(line: 276, column: 28, scope: !1548)
!1554 = !DILocation(line: 277, column: 31, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1548, file: !1, line: 277, column: 12)
!1556 = !DILocation(line: 277, column: 12, scope: !1548)
!1557 = !DILocation(line: 280, column: 11, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 279, column: 9)
!1559 = !DILocation(line: 281, column: 11, scope: !1558)
!1560 = !DILocation(line: 282, column: 9, scope: !1558)
!1561 = !DILocation(line: 316, column: 11, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 316, column: 11)
!1563 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 286, column: 5)
!1564 = !DILocation(line: 316, column: 18, scope: !1562)
!1565 = !{!802, !782, i64 2884}
!1566 = !DILocation(line: 316, column: 30, scope: !1562)
!1567 = !DILocation(line: 316, column: 11, scope: !1563)
!1568 = !DILocation(line: 320, column: 27, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 317, column: 7)
!1570 = !DILocation(line: 323, column: 14, scope: !1569)
!1571 = !DILocation(line: 323, column: 25, scope: !1569)
!1572 = !{!781, !782, i64 72008}
!1573 = !DILocation(line: 324, column: 14, scope: !1569)
!1574 = !DILocation(line: 324, column: 24, scope: !1569)
!1575 = !{!781, !782, i64 72012}
!1576 = !DILocation(line: 327, column: 14, scope: !1569)
!1577 = !DILocation(line: 327, column: 31, scope: !1569)
!1578 = !{!781, !782, i64 72624}
!1579 = !DILocation(line: 328, column: 14, scope: !1569)
!1580 = !DILocation(line: 328, column: 21, scope: !1569)
!1581 = !{!781, !782, i64 72628}
!1582 = !DILocation(line: 330, column: 9, scope: !1569)
!1583 = !DILocation(line: 332, column: 15, scope: !1569)
!1584 = !DILocation(line: 333, column: 9, scope: !1569)
!1585 = !DILocation(line: 334, column: 23, scope: !1569)
!1586 = !DILocation(line: 334, column: 30, scope: !1569)
!1587 = !{!1588, !784, i64 0}
!1588 = !{!"", !784, i64 0, !777, i64 8, !777, i64 1032, !777, i64 2056, !776, i64 3080, !776, i64 3088, !782, i64 3096, !782, i64 3100, !777, i64 3104, !777, i64 3120, !776, i64 3136, !777, i64 3144, !782, i64 3208, !1380, i64 3216, !782, i64 3224, !776, i64 3232, !776, i64 3240, !776, i64 3248, !776, i64 3256, !777, i64 3264, !782, i64 3328, !782, i64 3332, !782, i64 3336, !782, i64 3340, !782, i64 3344, !782, i64 3348, !782, i64 3352}
!1589 = !DILocation(line: 192, column: 10, scope: !241)
!1590 = !DILocation(line: 338, column: 9, scope: !1569)
!1591 = !DILocation(line: 338, column: 14, scope: !1569)
!1592 = !DILocation(line: 338, column: 21, scope: !1569)
!1593 = !DILocation(line: 341, column: 14, scope: !1569)
!1594 = !DILocation(line: 341, column: 25, scope: !1569)
!1595 = !DILocation(line: 343, column: 40, scope: !1569)
!1596 = !DILocation(line: 343, column: 9, scope: !1569)
!1597 = !DILocation(line: 344, column: 15, scope: !1569)
!1598 = !DILocation(line: 345, column: 9, scope: !1569)
!1599 = !DILocation(line: 346, column: 24, scope: !1569)
!1600 = !DILocation(line: 346, column: 31, scope: !1569)
!1601 = !DILocation(line: 346, column: 21, scope: !1569)
!1602 = !DILocation(line: 351, column: 12, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 351, column: 11)
!1604 = !DILocation(line: 351, column: 19, scope: !1603)
!1605 = !DILocation(line: 349, column: 7, scope: !1569)
!1606 = !DILocation(line: 351, column: 51, scope: !1603)
!1607 = !DILocation(line: 354, column: 9, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 352, column: 7)
!1609 = !DILocation(line: 354, column: 14, scope: !1608)
!1610 = !DILocation(line: 354, column: 21, scope: !1608)
!1611 = !DILocation(line: 358, column: 14, scope: !1608)
!1612 = !DILocation(line: 358, column: 25, scope: !1608)
!1613 = !DILocation(line: 359, column: 14, scope: !1608)
!1614 = !DILocation(line: 359, column: 24, scope: !1608)
!1615 = !DILocation(line: 360, column: 14, scope: !1608)
!1616 = !DILocation(line: 360, column: 24, scope: !1608)
!1617 = !{!781, !782, i64 72376}
!1618 = !DILocation(line: 361, column: 16, scope: !1608)
!1619 = !DILocation(line: 361, column: 31, scope: !1608)
!1620 = !{!802, !782, i64 36}
!1621 = !DILocation(line: 362, column: 14, scope: !1608)
!1622 = !DILocation(line: 362, column: 36, scope: !1608)
!1623 = !DILocation(line: 363, column: 36, scope: !1608)
!1624 = !DILocation(line: 364, column: 9, scope: !1608)
!1625 = !DILocation(line: 367, column: 15, scope: !1608)
!1626 = !DILocation(line: 369, column: 9, scope: !1608)
!1627 = !DILocation(line: 370, column: 23, scope: !1608)
!1628 = !DILocation(line: 370, column: 30, scope: !1608)
!1629 = !DILocation(line: 192, column: 23, scope: !241)
!1630 = !DILocation(line: 373, column: 9, scope: !1608)
!1631 = !DILocation(line: 373, column: 14, scope: !1608)
!1632 = !DILocation(line: 373, column: 21, scope: !1608)
!1633 = !DILocation(line: 375, column: 14, scope: !1608)
!1634 = !DILocation(line: 375, column: 24, scope: !1608)
!1635 = !DILocation(line: 376, column: 40, scope: !1608)
!1636 = !DILocation(line: 376, column: 9, scope: !1608)
!1637 = !DILocation(line: 377, column: 15, scope: !1608)
!1638 = !DILocation(line: 378, column: 9, scope: !1608)
!1639 = !DILocation(line: 379, column: 24, scope: !1608)
!1640 = !DILocation(line: 379, column: 31, scope: !1608)
!1641 = !DILocation(line: 379, column: 21, scope: !1608)
!1642 = !DILocation(line: 388, column: 12, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 388, column: 11)
!1644 = !DILocation(line: 388, column: 19, scope: !1643)
!1645 = !DILocation(line: 381, column: 7, scope: !1608)
!1646 = !DILocation(line: 384, column: 7, scope: !1563)
!1647 = !DILocation(line: 384, column: 12, scope: !1563)
!1648 = !DILocation(line: 384, column: 35, scope: !1563)
!1649 = !{!781, !782, i64 72632}
!1650 = !DILocation(line: 388, column: 31, scope: !1643)
!1651 = !DILocation(line: 388, column: 67, scope: !1643)
!1652 = !DILocation(line: 388, column: 51, scope: !1643)
!1653 = !DILocation(line: 390, column: 14, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 389, column: 7)
!1655 = !DILocation(line: 390, column: 25, scope: !1654)
!1656 = !DILocation(line: 391, column: 14, scope: !1654)
!1657 = !DILocation(line: 391, column: 24, scope: !1654)
!1658 = !DILocation(line: 392, column: 16, scope: !1654)
!1659 = !DILocation(line: 392, column: 31, scope: !1654)
!1660 = !DILocation(line: 393, column: 23, scope: !1654)
!1661 = !DILocation(line: 394, column: 14, scope: !1654)
!1662 = !DILocation(line: 394, column: 36, scope: !1654)
!1663 = !DILocation(line: 395, column: 36, scope: !1654)
!1664 = !DILocation(line: 398, column: 37, scope: !1654)
!1665 = !DILocation(line: 399, column: 7, scope: !1654)
!1666 = !DILocation(line: 402, column: 25, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 401, column: 7)
!1668 = !DILocation(line: 403, column: 23, scope: !1667)
!1669 = !DILocation(line: 407, column: 12, scope: !1563)
!1670 = !DILocation(line: 407, column: 29, scope: !1563)
!1671 = !DILocation(line: 409, column: 11, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 409, column: 11)
!1673 = !DILocation(line: 410, column: 14, scope: !1672)
!1674 = !DILocation(line: 410, column: 24, scope: !1672)
!1675 = !DILocation(line: 415, column: 12, scope: !1563)
!1676 = !DILocation(line: 415, column: 19, scope: !1563)
!1677 = !DILocation(line: 418, column: 45, scope: !1563)
!1678 = !DILocation(line: 418, column: 7, scope: !1563)
!1679 = !DILocation(line: 420, column: 16, scope: !1563)
!1680 = !DILocation(line: 420, column: 21, scope: !1563)
!1681 = !DILocation(line: 420, column: 13, scope: !1563)
!1682 = !DILocation(line: 421, column: 7, scope: !1563)
!1683 = !DILocation(line: 422, column: 7, scope: !1563)
!1684 = !DILocation(line: 424, column: 7, scope: !1563)
!1685 = !DILocation(line: 425, column: 7, scope: !1563)
!1686 = !DILocation(line: 428, column: 7, scope: !1563)
!1687 = !DILocation(line: 428, column: 12, scope: !1563)
!1688 = !DILocation(line: 428, column: 19, scope: !1563)
!1689 = !DILocation(line: 430, column: 12, scope: !1563)
!1690 = !DILocation(line: 430, column: 22, scope: !1563)
!1691 = !DILocation(line: 431, column: 38, scope: !1563)
!1692 = !DILocation(line: 431, column: 47, scope: !1563)
!1693 = !DILocation(line: 431, column: 7, scope: !1563)
!1694 = !DILocation(line: 433, column: 15, scope: !1563)
!1695 = !DILocation(line: 433, column: 20, scope: !1563)
!1696 = !DILocation(line: 433, column: 13, scope: !1563)
!1697 = !DILocation(line: 434, column: 7, scope: !1563)
!1698 = !DILocation(line: 436, column: 7, scope: !1563)
!1699 = !DILocation(line: 437, column: 23, scope: !1563)
!1700 = !DILocation(line: 438, column: 7, scope: !1563)
!1701 = !DILocation(line: 439, column: 7, scope: !1563)
!1702 = !DILocation(line: 441, column: 11, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 441, column: 11)
!1704 = !DILocation(line: 448, column: 25, scope: !1563)
!1705 = !DILocation(line: 441, column: 11, scope: !1563)
!1706 = !DILocation(line: 443, column: 14, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 442, column: 7)
!1708 = !DILocation(line: 443, column: 24, scope: !1707)
!1709 = !DILocation(line: 444, column: 9, scope: !1707)
!1710 = !DILocation(line: 444, column: 16, scope: !1707)
!1711 = !DILocation(line: 444, column: 31, scope: !1707)
!1712 = !DILocation(line: 445, column: 14, scope: !1707)
!1713 = !DILocation(line: 445, column: 36, scope: !1707)
!1714 = !DILocation(line: 446, column: 36, scope: !1707)
!1715 = !DILocation(line: 447, column: 7, scope: !1707)
!1716 = !DILocation(line: 448, column: 30, scope: !1563)
!1717 = !DILocation(line: 448, column: 40, scope: !1563)
!1718 = !DILocation(line: 448, column: 12, scope: !1563)
!1719 = !DILocation(line: 448, column: 23, scope: !1563)
!1720 = !DILocation(line: 452, column: 23, scope: !1563)
!1721 = !DILocation(line: 453, column: 23, scope: !1563)
!1722 = !DILocation(line: 455, column: 59, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 455, column: 11)
!1724 = !DILocation(line: 455, column: 28, scope: !1723)
!1725 = !DILocation(line: 455, column: 25, scope: !1723)
!1726 = !DILocation(line: 455, column: 11, scope: !1563)
!1727 = !DILocation(line: 456, column: 22, scope: !1723)
!1728 = !DILocation(line: 468, column: 3, scope: !241)
!1729 = !DILocation(line: 469, column: 3, scope: !241)
!1730 = !DILocation(line: 731, column: 31, scope: !270)
!1731 = !DILocation(line: 733, column: 7, scope: !270)
!1732 = !DILocation(line: 735, column: 24, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !1, line: 735, column: 3)
!1734 = distinct !DILexicalBlock(scope: !270, file: !1, line: 735, column: 3)
!1735 = !DILocation(line: 735, column: 14, scope: !1733)
!1736 = !DILocation(line: 735, column: 3, scope: !1734)
!1737 = !DILocation(line: 737, column: 17, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1733, file: !1, line: 736, column: 3)
!1739 = !DILocation(line: 752, column: 31, scope: !416, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 737, column: 5, scope: !1738)
!1741 = !DILocation(line: 757, column: 13, scope: !1742, inlinedAt: !1740)
!1742 = distinct !DILexicalBlock(scope: !416, file: !1, line: 757, column: 7)
!1743 = !DILocation(line: 757, column: 7, scope: !416, inlinedAt: !1740)
!1744 = !DILocation(line: 759, column: 24, scope: !1745, inlinedAt: !1740)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !1, line: 759, column: 5)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 759, column: 5)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 758, column: 3)
!1748 = !DILocation(line: 759, column: 16, scope: !1745, inlinedAt: !1740)
!1749 = !DILocation(line: 761, column: 27, scope: !1750, inlinedAt: !1740)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 760, column: 5)
!1751 = !DILocation(line: 759, column: 5, scope: !1746, inlinedAt: !1740)
!1752 = !DILocation(line: 737, column: 5, scope: !1738)
!1753 = !DILocation(line: 761, column: 20, scope: !1750, inlinedAt: !1740)
!1754 = !DILocation(line: 755, column: 18, scope: !416, inlinedAt: !1740)
!1755 = !DILocation(line: 762, column: 20, scope: !1756, inlinedAt: !1740)
!1756 = distinct !DILexicalBlock(scope: !1750, file: !1, line: 762, column: 11)
!1757 = !DILocation(line: 762, column: 11, scope: !1750, inlinedAt: !1740)
!1758 = !DILocation(line: 764, column: 23, scope: !1759, inlinedAt: !1740)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 764, column: 13)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 763, column: 7)
!1761 = !DILocation(line: 764, column: 34, scope: !1759, inlinedAt: !1740)
!1762 = !DILocation(line: 764, column: 47, scope: !1759, inlinedAt: !1740)
!1763 = !DILocation(line: 764, column: 13, scope: !1760, inlinedAt: !1740)
!1764 = !DILocation(line: 765, column: 11, scope: !1759, inlinedAt: !1740)
!1765 = !DILocation(line: 766, column: 23, scope: !1766, inlinedAt: !1740)
!1766 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 766, column: 13)
!1767 = !DILocation(line: 766, column: 33, scope: !1766, inlinedAt: !1740)
!1768 = !DILocation(line: 766, column: 13, scope: !1760, inlinedAt: !1740)
!1769 = !DILocation(line: 767, column: 16, scope: !1766, inlinedAt: !1740)
!1770 = !DILocation(line: 767, column: 11, scope: !1766, inlinedAt: !1740)
!1771 = !DILocation(line: 770, column: 16, scope: !1772, inlinedAt: !1740)
!1772 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 770, column: 9)
!1773 = !DILocation(line: 770, column: 24, scope: !1772, inlinedAt: !1740)
!1774 = !DILocation(line: 770, column: 9, scope: !1747, inlinedAt: !1740)
!1775 = !DILocation(line: 771, column: 12, scope: !1772, inlinedAt: !1740)
!1776 = !DILocation(line: 771, column: 7, scope: !1772, inlinedAt: !1740)
!1777 = !DILocation(line: 772, column: 9, scope: !1778, inlinedAt: !1740)
!1778 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 772, column: 9)
!1779 = !DILocation(line: 772, column: 16, scope: !1778, inlinedAt: !1740)
!1780 = !DILocation(line: 772, column: 28, scope: !1778, inlinedAt: !1740)
!1781 = !DILocation(line: 772, column: 9, scope: !1747, inlinedAt: !1740)
!1782 = !DILocation(line: 774, column: 41, scope: !1783, inlinedAt: !1740)
!1783 = distinct !DILexicalBlock(scope: !1778, file: !1, line: 773, column: 5)
!1784 = !DILocation(line: 774, column: 7, scope: !1783, inlinedAt: !1740)
!1785 = !DILocation(line: 775, column: 42, scope: !1783, inlinedAt: !1740)
!1786 = !DILocation(line: 775, column: 7, scope: !1783, inlinedAt: !1740)
!1787 = !DILocation(line: 776, column: 5, scope: !1783, inlinedAt: !1740)
!1788 = !DILocation(line: 778, column: 10, scope: !1747, inlinedAt: !1740)
!1789 = !DILocation(line: 778, column: 5, scope: !1747, inlinedAt: !1740)
!1790 = !DILocation(line: 779, column: 3, scope: !1747, inlinedAt: !1740)
!1791 = !DILocation(line: 738, column: 23, scope: !1738)
!1792 = !DILocation(line: 740, column: 1, scope: !270)
!1793 = !DILocation(line: 789, column: 46, scope: !276)
!1794 = !DILocation(line: 791, column: 29, scope: !276)
!1795 = !DILocation(line: 791, column: 43, scope: !276)
!1796 = !DILocation(line: 791, column: 25, scope: !276)
!1797 = !DILocation(line: 792, column: 10, scope: !276)
!1798 = !DILocation(line: 792, column: 3, scope: !276)
!1799 = !DILocation(line: 792, column: 27, scope: !276)
!1800 = !DILocation(line: 793, column: 1, scope: !276)
!1801 = !DILocation(line: 838, column: 44, scope: !283)
!1802 = !DILocation(line: 838, column: 59, scope: !283)
!1803 = !DILocation(line: 838, column: 87, scope: !283)
!1804 = !DILocation(line: 838, column: 119, scope: !283)
!1805 = !DILocation(line: 838, column: 149, scope: !283)
!1806 = !DILocation(line: 838, column: 172, scope: !283)
!1807 = !DILocation(line: 838, column: 197, scope: !283)
!1808 = !DILocation(line: 844, column: 3, scope: !283)
!1809 = !DILocation(line: 844, column: 7, scope: !283)
!1810 = !DILocation(line: 845, column: 3, scope: !283)
!1811 = !DILocation(line: 845, column: 7, scope: !283)
!1812 = !DILocation(line: 846, column: 3, scope: !283)
!1813 = !DILocation(line: 846, column: 7, scope: !283)
!1814 = !DILocation(line: 847, column: 3, scope: !283)
!1815 = !DILocation(line: 847, column: 7, scope: !283)
!1816 = !DILocation(line: 849, column: 3, scope: !283)
!1817 = !DILocation(line: 849, column: 7, scope: !283)
!1818 = !DILocation(line: 853, column: 38, scope: !283)
!1819 = !DILocation(line: 853, column: 64, scope: !283)
!1820 = !DILocation(line: 853, column: 34, scope: !283)
!1821 = !DILocation(line: 853, column: 18, scope: !283)
!1822 = !DILocation(line: 855, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !283, file: !1, line: 855, column: 7)
!1824 = !DILocation(line: 855, column: 12, scope: !1823)
!1825 = !DILocation(line: 855, column: 21, scope: !1823)
!1826 = !DILocation(line: 855, column: 7, scope: !283)
!1827 = !DILocation(line: 862, column: 20, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 861, column: 3)
!1829 = !DILocation(line: 853, column: 7, scope: !283)
!1830 = !DILocation(line: 863, column: 20, scope: !1828)
!1831 = !DILocation(line: 863, column: 37, scope: !1828)
!1832 = !DILocation(line: 842, column: 7, scope: !283)
!1833 = !DILocation(line: 842, column: 19, scope: !283)
!1834 = !DILocation(line: 840, column: 12, scope: !283)
!1835 = !DILocation(line: 869, column: 14, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !1, line: 869, column: 3)
!1837 = distinct !DILexicalBlock(scope: !283, file: !1, line: 869, column: 3)
!1838 = !DILocation(line: 869, column: 3, scope: !1837)
!1839 = !DILocation(line: 878, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !1, line: 878, column: 3)
!1841 = distinct !DILexicalBlock(scope: !283, file: !1, line: 878, column: 3)
!1842 = !{!1191, !782, i64 32}
!1843 = !DILocation(line: 878, column: 14, scope: !1840)
!1844 = !DILocation(line: 878, column: 3, scope: !1841)
!1845 = !DILocation(line: 880, column: 23, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1840, file: !1, line: 879, column: 3)
!1847 = !{!1191, !776, i64 8}
!1848 = !DILocation(line: 884, column: 54, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 883, column: 5)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 882, column: 9)
!1851 = !DILocation(line: 884, column: 67, scope: !1849)
!1852 = !DILocation(line: 886, column: 19, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !1, line: 886, column: 11)
!1854 = !DILocation(line: 871, column: 24, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1836, file: !1, line: 870, column: 3)
!1856 = !DILocation(line: 871, column: 33, scope: !1855)
!1857 = !{!1371, !782, i64 6364}
!1858 = !DILocation(line: 871, column: 5, scope: !1855)
!1859 = !DILocation(line: 871, column: 22, scope: !1855)
!1860 = !DILocation(line: 913, column: 14, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 913, column: 3)
!1862 = distinct !DILexicalBlock(scope: !283, file: !1, line: 913, column: 3)
!1863 = !DILocation(line: 913, column: 3, scope: !1862)
!1864 = !DILocation(line: 913, column: 40, scope: !1861)
!1865 = !DILocation(line: 880, column: 19, scope: !1846)
!1866 = !DILocation(line: 880, column: 34, scope: !1846)
!1867 = !{!1868, !776, i64 40}
!1868 = !{!"frame_store", !782, i64 0, !782, i64 4, !782, i64 8, !782, i64 12, !782, i64 16, !782, i64 20, !782, i64 24, !782, i64 28, !782, i64 32, !782, i64 36, !776, i64 40, !776, i64 48, !776, i64 56}
!1869 = !DILocation(line: 880, column: 41, scope: !1846)
!1870 = !DILocation(line: 880, column: 5, scope: !1846)
!1871 = !DILocation(line: 880, column: 17, scope: !1846)
!1872 = !DILocation(line: 882, column: 24, scope: !1850)
!1873 = !{!1868, !782, i64 0}
!1874 = !DILocation(line: 882, column: 31, scope: !1850)
!1875 = !DILocation(line: 882, column: 35, scope: !1850)
!1876 = !DILocation(line: 882, column: 61, scope: !1850)
!1877 = !{!1371, !782, i64 6380}
!1878 = !DILocation(line: 882, column: 38, scope: !1850)
!1879 = !DILocation(line: 882, column: 80, scope: !1850)
!1880 = !DILocation(line: 882, column: 106, scope: !1850)
!1881 = !{!1371, !782, i64 6376}
!1882 = !DILocation(line: 882, column: 84, scope: !1850)
!1883 = !DILocation(line: 882, column: 9, scope: !1846)
!1884 = !DILocation(line: 884, column: 48, scope: !1849)
!1885 = !DILocation(line: 884, column: 52, scope: !1849)
!1886 = !DILocation(line: 884, column: 22, scope: !1849)
!1887 = !DILocation(line: 852, column: 7, scope: !283)
!1888 = !DILocation(line: 885, column: 7, scope: !1849)
!1889 = !DILocation(line: 885, column: 19, scope: !1849)
!1890 = !DILocation(line: 886, column: 11, scope: !1849)
!1891 = !DILocation(line: 888, column: 31, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !1, line: 888, column: 14)
!1893 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 887, column: 7)
!1894 = !DILocation(line: 890, column: 11, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !1, line: 889, column: 9)
!1896 = !DILocation(line: 888, column: 14, scope: !1893)
!1897 = !DILocation(line: 890, column: 24, scope: !1895)
!1898 = !DILocation(line: 891, column: 9, scope: !1895)
!1899 = !DILocation(line: 894, column: 24, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1892, file: !1, line: 893, column: 9)
!1901 = !DILocation(line: 899, column: 30, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !1, line: 899, column: 13)
!1903 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 898, column: 7)
!1904 = !DILocation(line: 901, column: 11, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !1, line: 900, column: 9)
!1906 = !DILocation(line: 899, column: 13, scope: !1903)
!1907 = !DILocation(line: 901, column: 24, scope: !1905)
!1908 = !DILocation(line: 902, column: 9, scope: !1905)
!1909 = !DILocation(line: 905, column: 24, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1902, file: !1, line: 904, column: 9)
!1911 = !DILocation(line: 937, column: 3, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !283, file: !1, line: 937, column: 3)
!1913 = !DILocation(line: 915, column: 18, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 915, column: 5)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !1, line: 915, column: 5)
!1916 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 914, column: 3)
!1917 = !DILocation(line: 915, column: 5, scope: !1915)
!1918 = !DILocation(line: 918, column: 11, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !1, line: 918, column: 11)
!1920 = distinct !DILexicalBlock(scope: !1914, file: !1, line: 916, column: 5)
!1921 = !DILocation(line: 924, column: 22, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 919, column: 7)
!1923 = !DILocation(line: 927, column: 22, scope: !1922)
!1924 = !DILocation(line: 918, column: 23, scope: !1919)
!1925 = !DILocation(line: 918, column: 22, scope: !1919)
!1926 = !DILocation(line: 918, column: 35, scope: !1919)
!1927 = !DILocation(line: 928, column: 24, scope: !1922)
!1928 = !DILocation(line: 918, column: 51, scope: !1919)
!1929 = !DILocation(line: 918, column: 66, scope: !1919)
!1930 = !DILocation(line: 918, column: 69, scope: !1919)
!1931 = !DILocation(line: 918, column: 84, scope: !1919)
!1932 = !DILocation(line: 918, column: 82, scope: !1919)
!1933 = !DILocation(line: 918, column: 11, scope: !1920)
!1934 = !DILocation(line: 850, column: 7, scope: !283)
!1935 = !DILocation(line: 922, column: 21, scope: !1922)
!1936 = !DILocation(line: 923, column: 21, scope: !1922)
!1937 = !DILocation(line: 925, column: 23, scope: !1922)
!1938 = !DILocation(line: 925, column: 21, scope: !1922)
!1939 = !DILocation(line: 926, column: 21, scope: !1922)
!1940 = !DILocation(line: 928, column: 22, scope: !1922)
!1941 = !DILocation(line: 929, column: 22, scope: !1922)
!1942 = !DILocation(line: 930, column: 7, scope: !1922)
!1943 = !DILocation(line: 939, column: 9, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !1, line: 939, column: 9)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !1, line: 938, column: 3)
!1946 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 937, column: 3)
!1947 = !DILocation(line: 939, column: 29, scope: !1944)
!1948 = !DILocation(line: 939, column: 26, scope: !1944)
!1949 = !DILocation(line: 848, column: 21, scope: !283)
!1950 = !DILocation(line: 939, column: 9, scope: !1945)
!1951 = !DILocation(line: 946, column: 7, scope: !283)
!1952 = !DILocation(line: 948, column: 5, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !1, line: 948, column: 5)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 947, column: 3)
!1955 = distinct !DILexicalBlock(scope: !283, file: !1, line: 946, column: 7)
!1956 = !DILocation(line: 999, column: 34, scope: !1954)
!1957 = !DILocation(line: 840, column: 14, scope: !283)
!1958 = !DILocation(line: 1001, column: 5, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1954, file: !1, line: 1001, column: 5)
!1960 = !DILocation(line: 995, column: 26, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !1, line: 994, column: 7)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !1, line: 993, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 993, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 949, column: 5)
!1965 = distinct !DILexicalBlock(scope: !1953, file: !1, line: 948, column: 5)
!1966 = !DILocation(line: 950, column: 14, scope: !1964)
!1967 = !DILocation(line: 950, column: 25, scope: !1964)
!1968 = !DILocation(line: 850, column: 18, scope: !283)
!1969 = !DILocation(line: 951, column: 16, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 951, column: 11)
!1971 = !DILocation(line: 953, column: 9, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1970, file: !1, line: 952, column: 7)
!1973 = !DILocation(line: 951, column: 11, scope: !1964)
!1974 = !DILocation(line: 953, column: 38, scope: !1972)
!1975 = !DILocation(line: 954, column: 38, scope: !1972)
!1976 = !DILocation(line: 954, column: 9, scope: !1972)
!1977 = !DILocation(line: 955, column: 40, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1972, file: !1, line: 955, column: 13)
!1979 = !DILocation(line: 955, column: 13, scope: !1972)
!1980 = !DILocation(line: 956, column: 38, scope: !1978)
!1981 = !DILocation(line: 960, column: 38, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1970, file: !1, line: 959, column: 7)
!1983 = !DILocation(line: 961, column: 47, scope: !1982)
!1984 = !DILocation(line: 961, column: 9, scope: !1982)
!1985 = !DILocation(line: 961, column: 36, scope: !1982)
!1986 = !DILocation(line: 965, column: 7, scope: !1964)
!1987 = !DILocation(line: 965, column: 22, scope: !1964)
!1988 = !DILocation(line: 968, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 968, column: 7)
!1990 = !DILocation(line: 970, column: 13, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !1, line: 970, column: 13)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !1, line: 969, column: 7)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !1, line: 968, column: 7)
!1994 = !DILocation(line: 970, column: 30, scope: !1991)
!1995 = !DILocation(line: 970, column: 13, scope: !1992)
!1996 = !DILocation(line: 972, column: 11, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1991, file: !1, line: 971, column: 9)
!1998 = !DILocation(line: 840, column: 16, scope: !283)
!1999 = !DILocation(line: 973, column: 11, scope: !1997)
!2000 = !DILocation(line: 973, column: 26, scope: !1997)
!2001 = !DILocation(line: 974, column: 9, scope: !1997)
!2002 = !DILocation(line: 848, column: 7, scope: !283)
!2003 = !DILocation(line: 977, column: 19, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !1, line: 977, column: 7)
!2005 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 977, column: 7)
!2006 = !DILocation(line: 977, column: 7, scope: !2005)
!2007 = !DILocation(line: 979, column: 13, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !1, line: 979, column: 13)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !1, line: 978, column: 7)
!2010 = !DILocation(line: 979, column: 31, scope: !2008)
!2011 = !DILocation(line: 979, column: 28, scope: !2008)
!2012 = !DILocation(line: 977, column: 44, scope: !2004)
!2013 = !DILocation(line: 979, column: 13, scope: !2009)
!2014 = !DILocation(line: 999, column: 5, scope: !1954)
!2015 = !DILocation(line: 1003, column: 24, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !1, line: 1002, column: 5)
!2017 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 1001, column: 5)
!2018 = !DILocation(line: 1006, column: 16, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1954, file: !1, line: 1006, column: 9)
!2020 = !DILocation(line: 1008, column: 12, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2019, file: !1, line: 1007, column: 5)
!2022 = !DILocation(line: 1006, column: 9, scope: !1954)
!2023 = !DILocation(line: 1008, column: 26, scope: !2021)
!2024 = !DILocation(line: 1008, column: 57, scope: !2021)
!2025 = !DILocation(line: 1009, column: 5, scope: !2021)
!2026 = !DILocation(line: 1012, column: 26, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2019, file: !1, line: 1011, column: 5)
!2028 = !DILocation(line: 1012, column: 57, scope: !2027)
!2029 = !DILocation(line: 1015, column: 1, scope: !283)
