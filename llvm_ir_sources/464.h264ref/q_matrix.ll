; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/q_matrix.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@matrix4x4_check = global [6 x i32] zeroinitializer, align 16
@matrix8x8_check = global [2 x i32] zeroinitializer, align 4
@MatrixType4x4 = internal constant [6 x [20 x i8]] [[20 x i8] c"INTRA4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAV\00\00\00\00", [20 x i8] c"INTER4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAV\00\00\00\00"], align 16
@MatrixType8x8 = internal constant [2 x [20 x i8]] [[20 x i8] c"INTRA8X8_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER8X8_LUMA\00\00\00\00\00\00\00"], align 16
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@ScalingList4x4input = common global [6 x [16 x i16]] zeroinitializer, align 16
@ScalingList8x8input = common global [2 x [64 x i16]] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@input = external global %struct.InputParameters*
@.str6 = private unnamed_addr constant [50 x i8] c"\0A%s value exceed range. (Value must be 1 to 255)\0A\00", align 1
@.str7 = private unnamed_addr constant [40 x i8] c"Setting default values for this matrix.\00", align 1
@Quant_inter_default = internal constant [16 x i16] [i16 10, i16 14, i16 20, i16 24, i16 14, i16 20, i16 24, i16 27, i16 20, i16 24, i16 27, i16 30, i16 24, i16 27, i16 30, i16 34], align 16
@Quant_intra_default = internal constant [16 x i16] [i16 6, i16 13, i16 20, i16 28, i16 13, i16 20, i16 28, i16 32, i16 20, i16 28, i16 32, i16 37, i16 28, i16 32, i16 37, i16 42], align 16
@.str8 = private unnamed_addr constant [57 x i8] c"\0A%s matrix definition not found. Setting default values.\00", align 1
@Quant8_inter_default = internal constant [64 x i16] [i16 9, i16 13, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 13, i16 13, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 35], align 16
@Quant8_intra_default = internal constant [64 x i16] [i16 6, i16 10, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 10, i16 11, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 42], align 16
@.str9 = private unnamed_addr constant [25 x i8] c"Parsing QMatrix file %s \00", align 1
@.str10 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@UseDefaultScalingMatrix4x4Flag = common global [6 x i16] zeroinitializer, align 2
@UseDefaultScalingMatrix8x8Flag = common global [2 x i16] zeroinitializer, align 2
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@quant_coef = external constant [6 x [4 x [4 x i32]]]
@LevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@dequant_coef = external constant [6 x [4 x [4 x i32]]]
@InvLevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@LevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@ScalingList4x4 = common global [6 x [16 x i16]] zeroinitializer, align 16
@quant_coef8 = external constant [6 x [8 x [8 x i32]]]
@LevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@dequant_coef8 = external constant [6 x [8 x [8 x i32]]]
@InvLevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@LevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@ScalingList8x8 = common global [2 x [64 x i16]] zeroinitializer, align 16
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
define i32 @CheckParameterName(i8* nocapture readonly %s, i32* nocapture %type) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !20, metadata !666), !dbg !667
  tail call void @llvm.dbg.value(metadata i32* %type, i64 0, metadata !21, metadata !666), !dbg !668
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !22, metadata !666), !dbg !669
  store i32 0, i32* %type, align 4, !dbg !670, !tbaa !671
  br label %1, !dbg !675

; <label>:1                                       ; preds = %0, %5
  %indvars.iv10 = phi i64 [ 0, %0 ], [ %indvars.iv.next11, %5 ]
  %2 = phi i8* [ getelementptr inbounds ([6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 0, i64 0), %0 ], [ %6, %5 ]
  %3 = tail call i32 @strcmp(i8* %2, i8* %s) #6, !dbg !676
  %4 = icmp eq i32 %3, 0, !dbg !679
  br i1 %4, label %.critedge1.loopexit5, label %5, !dbg !680

; <label>:5                                       ; preds = %1
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !675
  %6 = getelementptr inbounds [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %indvars.iv.next11, i64 0, !dbg !681
  %7 = icmp ne i8* %6, null, !dbg !682
  %8 = icmp slt i64 %indvars.iv.next11, 6, !dbg !683
  %or.cond = and i1 %8, %7, !dbg !675
  br i1 %or.cond, label %1, label %.critedge, !dbg !675

.critedge:                                        ; preds = %5
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !22, metadata !666), !dbg !669
  store i32 1, i32* %type, align 4, !dbg !684, !tbaa !671
  br label %9, !dbg !685

; <label>:9                                       ; preds = %.critedge, %14
  %indvars.iv = phi i64 [ 0, %.critedge ], [ %indvars.iv.next, %14 ]
  %10 = phi i8* [ getelementptr inbounds ([2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 0, i64 0), %.critedge ], [ %15, %14 ]
  %11 = tail call i32 @strcmp(i8* %10, i8* %s) #6, !dbg !686
  %12 = icmp eq i32 %11, 0, !dbg !689
  %13 = trunc i64 %indvars.iv to i32, !dbg !690
  br i1 %12, label %.critedge1, label %14, !dbg !690

; <label>:14                                      ; preds = %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !685
  %15 = getelementptr inbounds [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %indvars.iv.next, i64 0, !dbg !691
  %16 = icmp ne i8* %15, null, !dbg !692
  %17 = icmp slt i64 %indvars.iv.next, 2, !dbg !693
  %or.cond4 = and i1 %17, %16, !dbg !685
  br i1 %or.cond4, label %9, label %.critedge1, !dbg !685

.critedge1.loopexit5:                             ; preds = %1
  %18 = trunc i64 %indvars.iv10 to i32
  br label %.critedge1

.critedge1:                                       ; preds = %14, %9, %.critedge1.loopexit5
  %.0 = phi i32 [ %18, %.critedge1.loopexit5 ], [ %13, %9 ], [ -1, %14 ]
  ret i32 %.0, !dbg !694
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @ParseMatrix(i8* %buf, i32 %bufsize) #0 {
  %items = alloca [1000 x i8*], align 16
  %IntContent = alloca i32, align 4
  %type = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !27, metadata !666), !dbg !695
  tail call void @llvm.dbg.value(metadata i32 %bufsize, i64 0, metadata !28, metadata !666), !dbg !696
  %1 = bitcast [1000 x i8*]* %items to i8*, !dbg !697
  call void @llvm.lifetime.start(i64 8000, i8* %1) #3, !dbg !697
  tail call void @llvm.dbg.declare(metadata [1000 x i8*]* %items, metadata !29, metadata !666), !dbg !698
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !34, metadata !666), !dbg !699
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !35, metadata !666), !dbg !700
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !36, metadata !666), !dbg !701
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !37, metadata !666), !dbg !702
  %2 = sext i32 %bufsize to i64, !dbg !703
  %3 = getelementptr inbounds i8* %buf, i64 %2, !dbg !703
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !38, metadata !666), !dbg !704
  %4 = icmp sgt i32 %bufsize, 0, !dbg !705
  br i1 %4, label %.lr.ph8, label %._crit_edge, !dbg !706

.lr.ph8:                                          ; preds = %0, %.critedge.backedge
  %item.06 = phi i32 [ %item.0.be, %.critedge.backedge ], [ 0, %0 ]
  %p.05 = phi i8* [ %p.0.be, %.critedge.backedge ], [ %buf, %0 ]
  %InItem.04 = phi i32 [ %InItem.0.be, %.critedge.backedge ], [ 0, %0 ]
  %InString.03 = phi i32 [ %InString.0.be, %.critedge.backedge ], [ 0, %0 ]
  %5 = load i8* %p.05, align 1, !dbg !707, !tbaa !709
  %6 = sext i8 %5 to i32, !dbg !707
  switch i32 %6, label %33 [
    i32 13, label %7
    i32 35, label %9
    i32 10, label %14
    i32 32, label %16
    i32 9, label %16
    i32 34, label %21
    i32 44, label %31
  ], !dbg !710

; <label>:7                                       ; preds = %.lr.ph8
  %8 = getelementptr inbounds i8* %p.05, i64 1, !dbg !711
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !37, metadata !666), !dbg !702
  br label %.critedge.backedge, !dbg !713

; <label>:9                                       ; preds = %.lr.ph8
  store i8 0, i8* %p.05, align 1, !dbg !714, !tbaa !709
  %10 = icmp ult i8* %p.05, %3, !dbg !715
  br i1 %10, label %._crit_edge9, label %.critedge.backedge, !dbg !716

._crit_edge9:                                     ; preds = %9, %._crit_edge9
  %p.05.pn = phi i8* [ %11, %._crit_edge9 ], [ %p.05, %9 ]
  %11 = getelementptr inbounds i8* %p.05.pn, i64 1, !dbg !717
  %.pre = load i8* %11, align 1, !dbg !718, !tbaa !709
  %12 = icmp ne i8 %.pre, 10, !dbg !719
  %13 = icmp ult i8* %11, %3, !dbg !715
  %or.cond = and i1 %13, %12, !dbg !716
  br i1 %or.cond, label %._crit_edge9, label %.critedge.backedge, !dbg !716

; <label>:14                                      ; preds = %.lr.ph8
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !36, metadata !666), !dbg !701
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !35, metadata !666), !dbg !700
  %15 = getelementptr inbounds i8* %p.05, i64 1, !dbg !720
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !37, metadata !666), !dbg !702
  store i8 0, i8* %p.05, align 1, !dbg !721, !tbaa !709
  br label %.critedge.backedge, !dbg !722

; <label>:16                                      ; preds = %.lr.ph8, %.lr.ph8
  %17 = icmp eq i32 %InString.03, 0, !dbg !723
  %18 = getelementptr inbounds i8* %p.05, i64 1, !dbg !725
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !37, metadata !666), !dbg !702
  br i1 %17, label %19, label %.critedge.backedge, !dbg !726

; <label>:19                                      ; preds = %16
  store i8 0, i8* %p.05, align 1, !dbg !727, !tbaa !709
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !36, metadata !666), !dbg !701
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %9, %._crit_edge9, %19, %39, %31, %29, %14, %7, %16
  %InString.0.be = phi i32 [ %InString.03, %39 ], [ %InString.03, %31 ], [ %30, %29 ], [ %InString.03, %16 ], [ 0, %19 ], [ 0, %14 ], [ %InString.03, %7 ], [ 0, %._crit_edge9 ], [ 0, %9 ]
  %InItem.0.be = phi i32 [ %InItem.2, %39 ], [ 0, %31 ], [ %InItem.1, %29 ], [ %InItem.04, %16 ], [ 0, %19 ], [ 0, %14 ], [ %InItem.04, %7 ], [ 0, %._crit_edge9 ], [ 0, %9 ]
  %p.0.be = phi i8* [ %40, %39 ], [ %32, %31 ], [ %22, %29 ], [ %18, %16 ], [ %18, %19 ], [ %15, %14 ], [ %8, %7 ], [ %11, %._crit_edge9 ], [ %p.05, %9 ]
  %item.0.be = phi i32 [ %item.2, %39 ], [ %item.06, %31 ], [ %item.1, %29 ], [ %item.06, %16 ], [ %item.06, %19 ], [ %item.06, %14 ], [ %item.06, %7 ], [ %item.06, %._crit_edge9 ], [ %item.06, %9 ]
  %20 = icmp ult i8* %p.0.be, %3, !dbg !705
  br i1 %20, label %.lr.ph8, label %.critedge._crit_edge, !dbg !706

; <label>:21                                      ; preds = %.lr.ph8
  %22 = getelementptr inbounds i8* %p.05, i64 1, !dbg !729
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !37, metadata !666), !dbg !702
  store i8 0, i8* %p.05, align 1, !dbg !730, !tbaa !709
  %23 = icmp eq i32 %InString.03, 0, !dbg !731
  br i1 %23, label %24, label %29, !dbg !733

; <label>:24                                      ; preds = %21
  %25 = add nsw i32 %item.06, 1, !dbg !734
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !34, metadata !666), !dbg !699
  %26 = sext i32 %item.06 to i64, !dbg !736
  %27 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %26, !dbg !736
  store i8* %22, i8** %27, align 8, !dbg !737, !tbaa !738
  %28 = xor i32 %InItem.04, -1, !dbg !740
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !36, metadata !666), !dbg !701
  br label %29, !dbg !741

; <label>:29                                      ; preds = %21, %24
  %InItem.1 = phi i32 [ %28, %24 ], [ 0, %21 ]
  %item.1 = phi i32 [ %25, %24 ], [ %item.06, %21 ]
  %30 = xor i32 %InString.03, -1, !dbg !742
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !35, metadata !666), !dbg !700
  br label %.critedge.backedge, !dbg !743

; <label>:31                                      ; preds = %.lr.ph8
  %32 = getelementptr inbounds i8* %p.05, i64 1, !dbg !744
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !37, metadata !666), !dbg !702
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !36, metadata !666), !dbg !701
  br label %.critedge.backedge, !dbg !745

; <label>:33                                      ; preds = %.lr.ph8
  %34 = icmp eq i32 %InItem.04, 0, !dbg !746
  br i1 %34, label %35, label %39, !dbg !748

; <label>:35                                      ; preds = %33
  %36 = add nsw i32 %item.06, 1, !dbg !749
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !34, metadata !666), !dbg !699
  %37 = sext i32 %item.06 to i64, !dbg !751
  %38 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %37, !dbg !751
  store i8* %p.05, i8** %38, align 8, !dbg !752, !tbaa !738
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !36, metadata !666), !dbg !701
  br label %39, !dbg !753

; <label>:39                                      ; preds = %33, %35
  %InItem.2 = phi i32 [ %InItem.04, %33 ], [ -1, %35 ]
  %item.2 = phi i32 [ %item.06, %33 ], [ %36, %35 ]
  %40 = getelementptr inbounds i8* %p.05, i64 1, !dbg !754
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !37, metadata !666), !dbg !702
  br label %.critedge.backedge, !dbg !755

.critedge._crit_edge:                             ; preds = %.critedge.backedge
  %41 = add nsw i32 %item.0.be, -1, !dbg !756
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !34, metadata !666), !dbg !699
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !40, metadata !666), !dbg !757
  %42 = icmp sgt i32 %item.0.be, 1, !dbg !758
  br i1 %42, label %.lr.ph, label %._crit_edge, !dbg !761

.lr.ph:                                           ; preds = %.critedge._crit_edge, %86
  %i.02 = phi i32 [ %87, %86 ], [ 0, %.critedge._crit_edge ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !44, metadata !666), !dbg !762
  %43 = sext i32 %i.02 to i64, !dbg !763
  %44 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %43, !dbg !763
  %45 = load i8** %44, align 8, !dbg !763, !tbaa !738
  call void @llvm.dbg.value(metadata i32* %type, i64 0, metadata !43, metadata !666), !dbg !766
  %46 = call i32 @CheckParameterName(i8* %45, i32* %type) #7, !dbg !767
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !33, metadata !666), !dbg !768
  %47 = icmp slt i32 %46, 0, !dbg !769
  br i1 %47, label %48, label %50, !dbg !770

; <label>:48                                      ; preds = %.lr.ph
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), i8* %45) #6, !dbg !771
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #6, !dbg !773
  br label %50, !dbg !774

; <label>:50                                      ; preds = %48, %.lr.ph
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !44, metadata !666), !dbg !762
  %51 = add nsw i32 %i.02, 1, !dbg !775
  %52 = sext i32 %51 to i64, !dbg !777
  %53 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %52, !dbg !777
  %54 = load i8** %53, align 8, !dbg !777, !tbaa !738
  %55 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i8* %54) #6, !dbg !778
  %56 = icmp eq i32 %55, 0, !dbg !778
  br i1 %56, label %59, label %57, !dbg !779

; <label>:57                                      ; preds = %50
  %58 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([78 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !780
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #6, !dbg !782
  br label %59, !dbg !783

; <label>:59                                      ; preds = %50, %57
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !44, metadata !666), !dbg !762
  call void @llvm.dbg.value(metadata i32* %type, i64 0, metadata !43, metadata !666), !dbg !766
  %60 = load i32* %type, align 4, !dbg !784, !tbaa !671
  %61 = icmp eq i32 %60, 0, !dbg !784
  %62 = sext i32 %46 to i64, !dbg !786
  br i1 %61, label %63, label %66, !dbg !788

; <label>:63                                      ; preds = %59
  call void @llvm.dbg.value(metadata i32 16, i64 0, metadata !42, metadata !666), !dbg !789
  %64 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %62, i64 0, !dbg !786
  call void @llvm.dbg.value(metadata i16* %64, i64 0, metadata !45, metadata !666), !dbg !790
  %65 = getelementptr inbounds [6 x i32]* @matrix4x4_check, i64 0, i64 %62, !dbg !791
  store i32 1, i32* %65, align 4, !dbg !792, !tbaa !671
  br label %69, !dbg !793

; <label>:66                                      ; preds = %59
  call void @llvm.dbg.value(metadata i32 64, i64 0, metadata !42, metadata !666), !dbg !789
  %67 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %62, i64 0, !dbg !794
  call void @llvm.dbg.value(metadata i16* %67, i64 0, metadata !45, metadata !666), !dbg !790
  %68 = getelementptr inbounds [2 x i32]* @matrix8x8_check, i64 0, i64 %62, !dbg !796
  store i32 1, i32* %68, align 4, !dbg !797, !tbaa !671
  br label %69

; <label>:69                                      ; preds = %66, %63
  %range.0 = phi i32 [ 64, %66 ], [ 16, %63 ]
  %ScalingList.0 = phi i16* [ %67, %66 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !41, metadata !666), !dbg !798
  %70 = add i32 %i.02, 2, !dbg !799
  %71 = zext i32 %range.0 to i64, !dbg !804
  %72 = sext i32 %70 to i64, !dbg !804
  br label %73, !dbg !804

; <label>:73                                      ; preds = %69, %81
  %indvars.iv = phi i64 [ 0, %69 ], [ %indvars.iv.next, %81 ]
  %74 = add nsw i64 %72, %indvars.iv, !dbg !805
  %75 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %74, !dbg !806
  %76 = load i8** %75, align 8, !dbg !806, !tbaa !738
  call void @llvm.dbg.value(metadata i32* %IntContent, i64 0, metadata !39, metadata !666), !dbg !807
  %77 = call i32 (i8*, i8*, ...)* @sscanf(i8* %76, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i32* %IntContent) #6, !dbg !808
  %78 = icmp eq i32 %77, 1, !dbg !809
  br i1 %78, label %81, label %79, !dbg !810

; <label>:79                                      ; preds = %73
  %80 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([74 x i8]* @.str4, i64 0, i64 0), i8* %45, i8* %76) #6, !dbg !811
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #6, !dbg !813
  br label %81, !dbg !814

; <label>:81                                      ; preds = %73, %79
  call void @llvm.dbg.value(metadata i32* %IntContent, i64 0, metadata !39, metadata !666), !dbg !807
  %82 = load i32* %IntContent, align 4, !dbg !815, !tbaa !671
  %83 = trunc i32 %82 to i16, !dbg !816
  %84 = getelementptr inbounds i16* %ScalingList.0, i64 %indvars.iv, !dbg !817
  store i16 %83, i16* %84, align 2, !dbg !818, !tbaa !819
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !804
  %85 = icmp slt i64 %indvars.iv.next, %71, !dbg !821
  br i1 %85, label %73, label %86, !dbg !804

; <label>:86                                      ; preds = %81
  call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !44, metadata !666), !dbg !762
  %putchar = call i32 @putchar(i32 46) #3, !dbg !822
  %87 = add i32 %70, %range.0, !dbg !823
  call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !40, metadata !666), !dbg !757
  %88 = icmp slt i32 %87, %41, !dbg !758
  br i1 %88, label %.lr.ph, label %._crit_edge, !dbg !761

._crit_edge:                                      ; preds = %86, %0, %.critedge._crit_edge
  call void @llvm.lifetime.end(i64 8000, i8* %1) #3, !dbg !824
  ret void, !dbg !824
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) #4

; Function Attrs: optsize
declare void @error(i8*, i32) #4

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PatchMatrix() #0 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !52, metadata !666), !dbg !825
  br label %1, !dbg !826

; <label>:1                                       ; preds = %.critedge2, %0
  %indvars.iv10 = phi i64 [ 0, %0 ], [ %indvars.iv.next11, %.critedge2 ]
  %2 = load %struct.InputParameters** @input, align 8, !dbg !828, !tbaa !738
  %3 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 133, i64 %indvars.iv10, !dbg !828
  %4 = load i32* %3, align 4, !dbg !828, !tbaa !671
  %5 = icmp eq i32 %4, 0, !dbg !828
  br i1 %5, label %.critedge, label %6, !dbg !832

; <label>:6                                       ; preds = %1
  %7 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %indvars.iv10, i64 0, !dbg !833
  tail call void @llvm.dbg.value(metadata i16* %7, i64 0, metadata !51, metadata !666), !dbg !835
  %8 = getelementptr inbounds [6 x i32]* @matrix4x4_check, i64 0, i64 %indvars.iv10, !dbg !836
  %9 = load i32* %8, align 4, !dbg !836, !tbaa !671
  %10 = icmp eq i32 %9, 0, !dbg !836
  br i1 %10, label %27, label %.preheader3, !dbg !838

; <label>:11                                      ; preds = %.preheader3
  %12 = icmp slt i64 %indvars.iv.next, 16, !dbg !839
  br i1 %12, label %.preheader3, label %.critedge, !dbg !843

.preheader3:                                      ; preds = %6, %11
  %indvars.iv = phi i64 [ %indvars.iv.next, %11 ], [ 0, %6 ]
  %13 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %indvars.iv10, i64 %indvars.iv, !dbg !844
  %14 = load i16* %13, align 2, !dbg !844, !tbaa !819
  %15 = icmp ugt i16 %14, 255, !dbg !847
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !843
  br i1 %15, label %16, label %11, !dbg !847

; <label>:16                                      ; preds = %.preheader3
  %17 = getelementptr inbounds [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %indvars.iv10, i64 0, !dbg !848
  %18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i8* %17) #6, !dbg !851
  %19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !852
  %20 = icmp sgt i64 %indvars.iv10, 2, !dbg !853
  %21 = bitcast i16* %7 to i8*, !dbg !855
  %22 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %21, i1 false), !dbg !855
  br i1 %20, label %23, label %25, !dbg !856

; <label>:23                                      ; preds = %16
  %24 = tail call i8* @__memcpy_chk(i8* %21, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i64 %22) #6, !dbg !855
  br label %.critedge2, !dbg !855

; <label>:25                                      ; preds = %16
  %26 = tail call i8* @__memcpy_chk(i8* %21, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i64 %22) #6, !dbg !857
  br label %.critedge

; <label>:27                                      ; preds = %6
  %28 = getelementptr inbounds [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %indvars.iv10, i64 0, !dbg !858
  %29 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), i8* %28) #6, !dbg !860
  %30 = icmp sgt i64 %indvars.iv10, 2, !dbg !861
  %31 = bitcast i16* %7 to i8*, !dbg !863
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %31, i1 false), !dbg !863
  br i1 %30, label %33, label %35, !dbg !864

; <label>:33                                      ; preds = %27
  %34 = tail call i8* @__memcpy_chk(i8* %31, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i64 %32) #6, !dbg !863
  br label %.critedge2, !dbg !863

; <label>:35                                      ; preds = %27
  %36 = tail call i8* @__memcpy_chk(i8* %31, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i64 %32) #6, !dbg !865
  br label %.critedge

.critedge:                                        ; preds = %11, %1, %25, %35
  %37 = icmp slt i64 %indvars.iv10, 2, !dbg !866
  br i1 %37, label %38, label %.critedge2, !dbg !868

; <label>:38                                      ; preds = %.critedge
  %39 = add nuw nsw i64 %indvars.iv10, 6, !dbg !869
  %40 = load %struct.InputParameters** @input, align 8, !dbg !870, !tbaa !738
  %41 = getelementptr inbounds %struct.InputParameters* %40, i64 0, i32 133, i64 %39, !dbg !870
  %42 = load i32* %41, align 4, !dbg !870, !tbaa !671
  %43 = icmp eq i32 %42, 0, !dbg !870
  br i1 %43, label %.critedge2, label %44, !dbg !871

; <label>:44                                      ; preds = %38
  %45 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %indvars.iv10, i64 0, !dbg !872
  tail call void @llvm.dbg.value(metadata i16* %45, i64 0, metadata !51, metadata !666), !dbg !835
  %46 = getelementptr inbounds [2 x i32]* @matrix8x8_check, i64 0, i64 %indvars.iv10, !dbg !874
  %47 = load i32* %46, align 4, !dbg !874, !tbaa !671
  %48 = icmp eq i32 %47, 0, !dbg !874
  br i1 %48, label %61, label %.preheader, !dbg !876

; <label>:49                                      ; preds = %.preheader
  %50 = icmp slt i64 %indvars.iv.next9, 64, !dbg !877
  br i1 %50, label %.preheader, label %.critedge2, !dbg !881

.preheader:                                       ; preds = %44, %49
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %49 ], [ 0, %44 ]
  %51 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %indvars.iv10, i64 %indvars.iv8, !dbg !882
  %52 = load i16* %51, align 2, !dbg !882, !tbaa !819
  %53 = icmp ugt i16 %52, 255, !dbg !885
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !881
  br i1 %53, label %54, label %49, !dbg !885

; <label>:54                                      ; preds = %.preheader
  %55 = getelementptr inbounds [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %indvars.iv10, i64 0, !dbg !886
  %56 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i8* %55) #6, !dbg !889
  %57 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !890
  %58 = bitcast i16* %45 to i8*, !dbg !891
  %59 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %58, i1 false), !dbg !891
  %60 = tail call i8* @__memcpy_chk(i8* %58, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i64 %59) #6, !dbg !893
  br label %.critedge2

; <label>:61                                      ; preds = %44
  %62 = getelementptr inbounds [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %indvars.iv10, i64 0, !dbg !894
  %63 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), i8* %62) #6, !dbg !896
  %64 = bitcast i16* %45 to i8*, !dbg !897
  %65 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %64, i1 false), !dbg !897
  %66 = tail call i8* @__memcpy_chk(i8* %64, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i64 %65) #6, !dbg !899
  br label %.critedge2

.critedge2:                                       ; preds = %49, %33, %23, %38, %.critedge, %61, %54
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !826
  %exitcond = icmp eq i64 %indvars.iv.next11, 6, !dbg !826
  br i1 %exitcond, label %67, label %1, !dbg !826

; <label>:67                                      ; preds = %.critedge2
  ret void, !dbg !900
}

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @Init_QMatrix() #0 {
  %1 = load %struct.InputParameters** @input, align 8, !dbg !901, !tbaa !738
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 132, !dbg !903
  %3 = load i32* %2, align 4, !dbg !903, !tbaa !904
  %4 = icmp eq i32 %3, 0, !dbg !901
  br i1 %4, label %18, label %5, !dbg !907

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 30, i64 0, !dbg !908
  %7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0), i8* %6) #6, !dbg !910
  %8 = load %struct.InputParameters** @input, align 8, !dbg !911, !tbaa !738
  %9 = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 30, i64 0, !dbg !911
  %10 = tail call i8* @GetConfigFileContent(i8* %9, i32 0) #6, !dbg !912
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !57, metadata !666), !dbg !913
  %11 = icmp eq i8* %10, null, !dbg !914
  br i1 %11, label %15, label %12, !dbg !916

; <label>:12                                      ; preds = %5
  %13 = tail call i64 @strlen(i8* %10) #6, !dbg !917
  %14 = trunc i64 %13 to i32, !dbg !917
  tail call void @ParseMatrix(i8* %10, i32 %14) #7, !dbg !918
  br label %17, !dbg !918

; <label>:15                                      ; preds = %5
  %16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0)) #6, !dbg !919
  br label %17

; <label>:17                                      ; preds = %15, %12
  tail call void @PatchMatrix() #7, !dbg !920
  %putchar = tail call i32 @putchar(i32 10) #3, !dbg !921
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i16]* @UseDefaultScalingMatrix4x4Flag to i8*), i8 0, i64 12, i32 2, i1 false), !dbg !922
  store i16 0, i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 1), align 2, !dbg !923, !tbaa !819
  store i16 0, i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 0), align 2, !dbg !924, !tbaa !819
  tail call void @free(i8* %10) #7, !dbg !925
  br label %18, !dbg !926

; <label>:18                                      ; preds = %0, %17
  ret void, !dbg !927
}

; Function Attrs: optsize
declare i8* @GetConfigFileContent(i8*, i32) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @CalculateQuantParam() #0 {
  %present = alloca [6 x i32], align 16
  %1 = bitcast [6 x i32]* %present to i8*
  tail call void @llvm.dbg.declare(metadata [6 x i32]* %present, metadata !64, metadata !666), !dbg !928
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !68, metadata !666), !dbg !929
  %2 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !930, !tbaa !738
  %3 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %2, i64 0, i32 9, !dbg !932
  %4 = load i32* %3, align 4, !dbg !932, !tbaa !933
  %5 = icmp eq i32 %4, 0, !dbg !930
  br i1 %5, label %6, label %.preheader19, !dbg !937

; <label>:6                                       ; preds = %0
  %7 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !938, !tbaa !738
  %8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %7, i64 0, i32 5, !dbg !939
  %9 = load i32* %8, align 4, !dbg !939, !tbaa !940
  %10 = icmp eq i32 %9, 0, !dbg !938
  br i1 %10, label %.preheader13, label %.thread, !dbg !942

.thread:                                          ; preds = %6
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 16, i1 false), !dbg !943
  br label %11, !dbg !945

.preheader19:                                     ; preds = %0
  %scevgep67 = getelementptr %struct.seq_parameter_set_rbsp_t* %2, i64 0, i32 10, i64 0
  %scevgep6768 = bitcast i32* %scevgep67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %scevgep6768, i64 24, i32 4, i1 false), !dbg !946
  br label %11

; <label>:11                                      ; preds = %.thread, %.preheader19
  %12 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !950, !tbaa !738
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %12, i64 0, i32 5, !dbg !952
  %14 = load i32* %13, align 4, !dbg !952, !tbaa !940
  %15 = icmp eq i32 %14, 0, !dbg !950
  br i1 %15, label %.critedge.preheader, label %.preheader18, !dbg !953

.critedge.preheader:                              ; preds = %52, %11
  %16 = bitcast [6 x i32]* %present to i64*, !dbg !954
  %17 = load i64* %16, align 16, !dbg !954
  %18 = trunc i64 %17 to i32, !dbg !954
  %19 = icmp ne i32 %18, 0, !dbg !954
  %20 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 0), align 2
  %21 = icmp eq i16 %20, 0, !dbg !965
  %or.cond = and i1 %19, %21, !dbg !966
  %22 = icmp ult i64 %17, 4294967296, !dbg !967
  %23 = getelementptr inbounds [6 x i32]* %present, i64 0, i64 2, !dbg !969
  %24 = bitcast i32* %23 to i64*, !dbg !969
  %25 = load i64* %24, align 8, !dbg !969
  %26 = trunc i64 %25 to i32, !dbg !969
  %27 = icmp eq i32 %26, 0, !dbg !969
  %28 = icmp ugt i64 %25, 4294967295, !dbg !971
  %29 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 3), align 2
  %30 = icmp eq i16 %29, 0, !dbg !973
  %or.cond12 = and i1 %28, %30, !dbg !974
  %31 = getelementptr inbounds [6 x i32]* %present, i64 0, i64 4, !dbg !975
  %32 = bitcast i32* %31 to i64*, !dbg !975
  %33 = load i64* %32, align 16, !dbg !975
  %34 = trunc i64 %33 to i32, !dbg !975
  %35 = icmp eq i32 %34, 0, !dbg !975
  %36 = icmp ult i64 %33, 4294967296, !dbg !977
  %37 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 5), align 2, !dbg !979, !tbaa !819
  %38 = icmp eq i16 %37, 0, !dbg !979
  %39 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 4), align 2, !dbg !981, !tbaa !819
  %40 = icmp eq i16 %39, 0, !dbg !981
  %41 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 2), align 2, !dbg !983, !tbaa !819
  %42 = icmp eq i16 %41, 0, !dbg !983
  %43 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 1), align 2, !dbg !985, !tbaa !819
  %44 = icmp eq i16 %43, 0, !dbg !985
  br label %.preheader16, !dbg !987

.preheader18:                                     ; preds = %11, %52
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %52 ], [ 0, %11 ]
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %12, i64 0, i32 6, i64 %indvars.iv61, !dbg !988
  %46 = load i32* %45, align 4, !dbg !988, !tbaa !671
  %47 = getelementptr inbounds [6 x i32]* %present, i64 0, i64 %indvars.iv61, !dbg !993
  %48 = trunc i64 %indvars.iv61 to i32, !dbg !994
  switch i32 %48, label %52 [
    i32 3, label %49
    i32 0, label %49
  ], !dbg !994

; <label>:49                                      ; preds = %.preheader18, %.preheader18
  %50 = load i32* %47, align 4, !dbg !995, !tbaa !671
  %51 = or i32 %50, %46, !dbg !995
  br label %52, !dbg !993

; <label>:52                                      ; preds = %.preheader18, %49
  %storemerge = phi i32 [ %51, %49 ], [ %46, %.preheader18 ]
  store i32 %storemerge, i32* %47, align 4, !dbg !995, !tbaa !671
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !dbg !996
  %exitcond63 = icmp eq i64 %indvars.iv.next62, 6, !dbg !996
  br i1 %exitcond63, label %.critedge.preheader, label %.preheader18, !dbg !996

.preheader13:                                     ; preds = %6, %70
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %70 ], [ 0, %6 ]
  br label %.preheader, !dbg !997

.preheader:                                       ; preds = %69, %.preheader13
  %indvars.iv46 = phi i64 [ 0, %.preheader13 ], [ %indvars.iv.next47, %69 ]
  %scevgep38 = getelementptr [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 0
  %scevgep3839 = bitcast i32* %scevgep38 to i8*
  %scevgep40 = getelementptr [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 0
  %scevgep4041 = bitcast i32* %scevgep40 to i8*
  %scevgep = getelementptr [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 0
  %scevgep31 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep31, i8* %scevgep4041, i64 16, i32 4, i1 false), !dbg !1002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep3839, i8* %scevgep4041, i64 16, i32 4, i1 false), !dbg !1007
  br label %53, !dbg !1008

; <label>:53                                      ; preds = %53, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %53 ]
  %54 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1009
  %55 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1010
  %56 = load i32* %55, align 4, !dbg !1010, !tbaa !671
  %57 = shl i32 %56, 4, !dbg !1011
  %58 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1012
  store i32 %57, i32* %58, align 4, !dbg !1013, !tbaa !671
  %59 = load i32* %54, align 4, !dbg !1014, !tbaa !671
  %60 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1015
  store i32 %59, i32* %60, align 4, !dbg !1016, !tbaa !671
  %61 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1017
  store i32 %57, i32* %61, align 4, !dbg !1018, !tbaa !671
  %62 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1019
  store i32 %59, i32* %62, align 4, !dbg !1020, !tbaa !671
  %63 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1021
  store i32 %57, i32* %63, align 4, !dbg !1022, !tbaa !671
  %64 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1023
  store i32 %57, i32* %64, align 4, !dbg !1024, !tbaa !671
  %65 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1025
  store i32 %59, i32* %65, align 4, !dbg !1026, !tbaa !671
  %66 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1027
  store i32 %57, i32* %66, align 4, !dbg !1028, !tbaa !671
  %67 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1029
  store i32 %59, i32* %67, align 4, !dbg !1030, !tbaa !671
  %68 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv49, i64 %indvars.iv46, i64 %indvars.iv, !dbg !1031
  store i32 %57, i32* %68, align 4, !dbg !1032, !tbaa !671
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1008
  %exitcond = icmp eq i64 %indvars.iv.next, 4, !dbg !1008
  br i1 %exitcond, label %69, label %53, !dbg !1008

; <label>:69                                      ; preds = %53
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !997
  %exitcond48 = icmp eq i64 %indvars.iv.next47, 4, !dbg !997
  br i1 %exitcond48, label %70, label %.preheader, !dbg !997

; <label>:70                                      ; preds = %69
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !dbg !1033
  %exitcond51 = icmp eq i64 %indvars.iv.next50, 6, !dbg !1033
  br i1 %exitcond51, label %.loopexit, label %.preheader13, !dbg !1033

.preheader16:                                     ; preds = %.critedge, %.critedge.preheader
  %indvars.iv58 = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next59, %.critedge ]
  br label %.preheader15, !dbg !1034

.preheader15:                                     ; preds = %189, %.preheader16
  %indvars.iv55 = phi i64 [ 0, %.preheader16 ], [ %indvars.iv.next56, %189 ]
  br label %71, !dbg !1035

; <label>:71                                      ; preds = %188, %.preheader15
  %indvars.iv52 = phi i64 [ 0, %.preheader15 ], [ %indvars.iv.next53, %188 ]
  %72 = shl i64 %indvars.iv52, 2, !dbg !1036
  %73 = add nuw nsw i64 %72, %indvars.iv55, !dbg !1037
  %74 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1038
  %75 = load i32* %74, align 4, !dbg !1038, !tbaa !671
  %76 = shl i32 %75, 4, !dbg !1040
  %77 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52
  %78 = load i32* %77, align 4
  br i1 %or.cond, label %81, label %79, !dbg !966

; <label>:79                                      ; preds = %71
  %80 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %73, !dbg !1041
  br label %83, !dbg !1043

; <label>:81                                      ; preds = %71
  %82 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 0, i64 %73, !dbg !1044
  br label %83

; <label>:83                                      ; preds = %81, %79
  %.sink84.in = phi i16* [ %80, %79 ], [ %82, %81 ]
  %.sink84 = load i16* %.sink84.in, align 2, !dbg !1041
  %84 = sext i16 %.sink84 to i32, !dbg !1041
  %85 = mul nsw i32 %84, %78, !dbg !1045
  %86 = sdiv i32 %76, %84, !dbg !1046
  %87 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1047
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1048
  store i32 %85, i32* %88, align 4
  br i1 %22, label %89, label %92, !dbg !1049

; <label>:89                                      ; preds = %83
  %90 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1050
  store i32 %86, i32* %90, align 4, !dbg !1052, !tbaa !671
  %91 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1053
  store i32 %85, i32* %91, align 4, !dbg !1054, !tbaa !671
  br label %110, !dbg !1055

; <label>:92                                      ; preds = %83
  br i1 %44, label %99, label %93, !dbg !985

; <label>:93                                      ; preds = %92
  %94 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %73, !dbg !1056
  %.sink = load i16* %94, align 2, !dbg !1056
  %95 = sext i16 %.sink to i32, !dbg !1056
  %96 = sdiv i32 %76, %95, !dbg !1057
  %97 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1058
  store i32 %96, i32* %97, align 4, !dbg !1059, !tbaa !671
  %98 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %73, !dbg !1060
  br label %105, !dbg !1061

; <label>:99                                      ; preds = %92
  %100 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 1, i64 %73, !dbg !1062
  %.sink77 = load i16* %100, align 2, !dbg !1056
  %101 = sext i16 %.sink77 to i32, !dbg !1056
  %102 = sdiv i32 %76, %101, !dbg !1057
  %103 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1058
  store i32 %102, i32* %103, align 4, !dbg !1059, !tbaa !671
  %104 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 1, i64 %73, !dbg !1063
  br label %105, !dbg !1061

; <label>:105                                     ; preds = %99, %93
  %106 = phi i32 [ %96, %93 ], [ %102, %99 ]
  %.sink2.in = phi i16* [ %98, %93 ], [ %104, %99 ]
  %.sink2 = load i16* %.sink2.in, align 2, !dbg !1060
  %107 = sext i16 %.sink2 to i32, !dbg !1060
  %108 = mul nsw i32 %107, %78, !dbg !1064
  %109 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1065
  store i32 %108, i32* %109, align 4, !dbg !1066, !tbaa !671
  br label %110

; <label>:110                                     ; preds = %105, %89
  %111 = phi i32 [ %108, %105 ], [ %85, %89 ]
  %112 = phi i32 [ %106, %105 ], [ %86, %89 ]
  br i1 %27, label %113, label %116, !dbg !1067

; <label>:113                                     ; preds = %110
  %114 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1068
  store i32 %112, i32* %114, align 4, !dbg !1070, !tbaa !671
  %115 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1071
  store i32 %111, i32* %115, align 4, !dbg !1072, !tbaa !671
  br label %133, !dbg !1073

; <label>:116                                     ; preds = %110
  br i1 %42, label %123, label %117, !dbg !983

; <label>:117                                     ; preds = %116
  %118 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %73, !dbg !1074
  %.sink3 = load i16* %118, align 2, !dbg !1074
  %119 = sext i16 %.sink3 to i32, !dbg !1074
  %120 = sdiv i32 %76, %119, !dbg !1075
  %121 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1076
  store i32 %120, i32* %121, align 4, !dbg !1077, !tbaa !671
  %122 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %73, !dbg !1078
  br label %129, !dbg !1079

; <label>:123                                     ; preds = %116
  %124 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 2, i64 %73, !dbg !1080
  %.sink379 = load i16* %124, align 2, !dbg !1074
  %125 = sext i16 %.sink379 to i32, !dbg !1074
  %126 = sdiv i32 %76, %125, !dbg !1075
  %127 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1076
  store i32 %126, i32* %127, align 4, !dbg !1077, !tbaa !671
  %128 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 2, i64 %73, !dbg !1081
  br label %129, !dbg !1079

; <label>:129                                     ; preds = %123, %117
  %.sink4.in = phi i16* [ %122, %117 ], [ %128, %123 ]
  %.sink4 = load i16* %.sink4.in, align 2, !dbg !1078
  %130 = sext i16 %.sink4 to i32, !dbg !1078
  %131 = mul nsw i32 %130, %78, !dbg !1082
  %132 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1083
  store i32 %131, i32* %132, align 4, !dbg !1084, !tbaa !671
  br label %133

; <label>:133                                     ; preds = %129, %113
  br i1 %or.cond12, label %136, label %134, !dbg !974

; <label>:134                                     ; preds = %133
  %135 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %73, !dbg !1085
  br label %138, !dbg !1087

; <label>:136                                     ; preds = %133
  %137 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 3, i64 %73, !dbg !1088
  br label %138

; <label>:138                                     ; preds = %136, %134
  %.sink85.in = phi i16* [ %135, %134 ], [ %137, %136 ]
  %.sink85 = load i16* %.sink85.in, align 2, !dbg !1085
  %139 = sext i16 %.sink85 to i32, !dbg !1085
  %140 = mul nsw i32 %139, %78, !dbg !1090
  %141 = sdiv i32 %76, %139, !dbg !1091
  %142 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1092
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1093
  store i32 %140, i32* %143, align 4
  br i1 %35, label %144, label %147, !dbg !1094

; <label>:144                                     ; preds = %138
  %145 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1095
  store i32 %141, i32* %145, align 4, !dbg !1097, !tbaa !671
  %146 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1098
  store i32 %140, i32* %146, align 4, !dbg !1099, !tbaa !671
  br label %165, !dbg !1100

; <label>:147                                     ; preds = %138
  br i1 %40, label %154, label %148, !dbg !981

; <label>:148                                     ; preds = %147
  %149 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %73, !dbg !1101
  %.sink5 = load i16* %149, align 2, !dbg !1101
  %150 = sext i16 %.sink5 to i32, !dbg !1101
  %151 = sdiv i32 %76, %150, !dbg !1102
  %152 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1103
  store i32 %151, i32* %152, align 4, !dbg !1104, !tbaa !671
  %153 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %73, !dbg !1105
  br label %160, !dbg !1106

; <label>:154                                     ; preds = %147
  %155 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 4, i64 %73, !dbg !1107
  %.sink581 = load i16* %155, align 2, !dbg !1101
  %156 = sext i16 %.sink581 to i32, !dbg !1101
  %157 = sdiv i32 %76, %156, !dbg !1102
  %158 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1103
  store i32 %157, i32* %158, align 4, !dbg !1104, !tbaa !671
  %159 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 4, i64 %73, !dbg !1108
  br label %160, !dbg !1106

; <label>:160                                     ; preds = %154, %148
  %161 = phi i32 [ %151, %148 ], [ %157, %154 ]
  %.sink6.in = phi i16* [ %153, %148 ], [ %159, %154 ]
  %.sink6 = load i16* %.sink6.in, align 2, !dbg !1105
  %162 = sext i16 %.sink6 to i32, !dbg !1105
  %163 = mul nsw i32 %162, %78, !dbg !1109
  %164 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1110
  store i32 %163, i32* %164, align 4, !dbg !1111, !tbaa !671
  br label %165

; <label>:165                                     ; preds = %160, %144
  %166 = phi i32 [ %163, %160 ], [ %140, %144 ]
  %167 = phi i32 [ %161, %160 ], [ %141, %144 ]
  br i1 %36, label %168, label %171, !dbg !1112

; <label>:168                                     ; preds = %165
  %169 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1113
  store i32 %167, i32* %169, align 4, !dbg !1115, !tbaa !671
  %170 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1116
  store i32 %166, i32* %170, align 4, !dbg !1117, !tbaa !671
  br label %188, !dbg !1118

; <label>:171                                     ; preds = %165
  br i1 %38, label %178, label %172, !dbg !979

; <label>:172                                     ; preds = %171
  %173 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %73, !dbg !1119
  %.sink7 = load i16* %173, align 2, !dbg !1119
  %174 = sext i16 %.sink7 to i32, !dbg !1119
  %175 = sdiv i32 %76, %174, !dbg !1120
  %176 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1121
  store i32 %175, i32* %176, align 4, !dbg !1122, !tbaa !671
  %177 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %73, !dbg !1123
  br label %184, !dbg !1124

; <label>:178                                     ; preds = %171
  %179 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 5, i64 %73, !dbg !1125
  %.sink783 = load i16* %179, align 2, !dbg !1119
  %180 = sext i16 %.sink783 to i32, !dbg !1119
  %181 = sdiv i32 %76, %180, !dbg !1120
  %182 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1121
  store i32 %181, i32* %182, align 4, !dbg !1122, !tbaa !671
  %183 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 5, i64 %73, !dbg !1126
  br label %184, !dbg !1124

; <label>:184                                     ; preds = %178, %172
  %.sink8.in = phi i16* [ %177, %172 ], [ %183, %178 ]
  %.sink8 = load i16* %.sink8.in, align 2, !dbg !1123
  %185 = sext i16 %.sink8 to i32, !dbg !1123
  %186 = mul nsw i32 %185, %78, !dbg !1127
  %187 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv58, i64 %indvars.iv55, i64 %indvars.iv52, !dbg !1128
  store i32 %186, i32* %187, align 4, !dbg !1129, !tbaa !671
  br label %188

; <label>:188                                     ; preds = %168, %184
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1, !dbg !1035
  %exitcond54 = icmp eq i64 %indvars.iv.next53, 4, !dbg !1035
  br i1 %exitcond54, label %189, label %71, !dbg !1035

; <label>:189                                     ; preds = %188
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1, !dbg !1034
  %exitcond57 = icmp eq i64 %indvars.iv.next56, 4, !dbg !1034
  br i1 %exitcond57, label %.critedge, label %.preheader15, !dbg !1034

.critedge:                                        ; preds = %189
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1, !dbg !987
  %exitcond60 = icmp eq i64 %indvars.iv.next59, 6, !dbg !987
  br i1 %exitcond60, label %.loopexit, label %.preheader16, !dbg !987

.loopexit:                                        ; preds = %.critedge, %70
  ret void, !dbg !1130
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CalculateQuant8Param() #0 {
  %present = alloca i64, align 8, !dbg !1131
  %tmpcast = bitcast i64* %present to [2 x i32]*, !dbg !1131
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %tmpcast, metadata !75, metadata !666), !dbg !1134
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !79, metadata !666), !dbg !1135
  %1 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1136, !tbaa !738
  %2 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %1, i64 0, i32 9, !dbg !1137
  %3 = load i32* %2, align 4, !dbg !1137, !tbaa !933
  %4 = icmp eq i32 %3, 0, !dbg !1136
  br i1 %4, label %5, label %.preheader11, !dbg !1138

; <label>:5                                       ; preds = %0
  %6 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1139, !tbaa !738
  %7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %6, i64 0, i32 5, !dbg !1140
  %8 = load i32* %7, align 4, !dbg !1140, !tbaa !940
  %9 = icmp eq i32 %8, 0, !dbg !1139
  br i1 %9, label %.preheader5, label %.thread, !dbg !1141

.preheader11:                                     ; preds = %0
  %scevgep52 = getelementptr %struct.seq_parameter_set_rbsp_t* %1, i64 0, i32 10, i64 6
  %10 = bitcast i32* %scevgep52 to i64*, !dbg !1142
  %11 = load i64* %10, align 4, !dbg !1142
  br label %.thread

.thread:                                          ; preds = %5, %.preheader11
  %storemerge = phi i64 [ %11, %.preheader11 ], [ 0, %5 ]
  store i64 %storemerge, i64* %present, align 8, !dbg !1131
  %12 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1146, !tbaa !738
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %12, i64 0, i32 5, !dbg !1148
  %14 = load i32* %13, align 4, !dbg !1148, !tbaa !940
  %15 = icmp eq i32 %14, 0, !dbg !1146
  br i1 %15, label %.critedge.preheader, label %.preheader10, !dbg !1149

.critedge.preheader:                              ; preds = %.preheader10, %.thread
  %16 = load i64* %present, align 8, !dbg !1150
  %17 = trunc i64 %16 to i32, !dbg !1150
  %18 = icmp ne i32 %17, 0, !dbg !1150
  %19 = load i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 0), align 2
  %20 = icmp eq i16 %19, 0, !dbg !1161
  %or.cond = and i1 %18, %20, !dbg !1162
  %21 = icmp ugt i64 %16, 4294967295, !dbg !1163
  %22 = load i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 1), align 2
  %23 = icmp eq i16 %22, 0, !dbg !1165
  %or.cond4 = and i1 %21, %23, !dbg !1166
  br label %.preheader8, !dbg !1167

.preheader10:                                     ; preds = %.thread, %.preheader10
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.preheader10 ], [ 0, %.thread ]
  %24 = add nuw nsw i64 %indvars.iv45, 6, !dbg !1168
  %25 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %12, i64 0, i32 6, i64 %24, !dbg !1171
  %26 = load i32* %25, align 4, !dbg !1171, !tbaa !671
  %27 = getelementptr inbounds [2 x i32]* %tmpcast, i64 0, i64 %indvars.iv45, !dbg !1172
  %28 = load i32* %27, align 4, !dbg !1173, !tbaa !671
  %29 = or i32 %28, %26, !dbg !1173
  store i32 %29, i32* %27, align 4, !dbg !1173, !tbaa !671
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !dbg !1174
  %exitcond47 = icmp eq i64 %indvars.iv.next46, 2, !dbg !1174
  br i1 %exitcond47, label %.critedge.preheader, label %.preheader10, !dbg !1174

.preheader5:                                      ; preds = %5, %37
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %37 ], [ 0, %5 ]
  br label %.preheader, !dbg !1175

.preheader:                                       ; preds = %36, %.preheader5
  %indvars.iv30 = phi i64 [ 0, %.preheader5 ], [ %indvars.iv.next31, %36 ]
  %scevgep26 = getelementptr [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv33, i64 %indvars.iv30, i64 0
  %scevgep2627 = bitcast i32* %scevgep26 to i8*
  %scevgep28 = getelementptr [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %indvars.iv33, i64 %indvars.iv30, i64 0
  %scevgep2829 = bitcast i32* %scevgep28 to i8*
  %scevgep = getelementptr [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv33, i64 %indvars.iv30, i64 0
  %scevgep23 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep23, i8* %scevgep2829, i64 32, i32 4, i1 false), !dbg !1180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep2627, i8* %scevgep2829, i64 32, i32 4, i1 false), !dbg !1185
  br label %30, !dbg !1186

; <label>:30                                      ; preds = %30, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %30 ]
  %31 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %indvars.iv33, i64 %indvars.iv30, i64 %indvars.iv, !dbg !1187
  %32 = load i32* %31, align 4, !dbg !1187, !tbaa !671
  %33 = shl i32 %32, 4, !dbg !1188
  %34 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv33, i64 %indvars.iv30, i64 %indvars.iv, !dbg !1189
  store i32 %33, i32* %34, align 4, !dbg !1190, !tbaa !671
  %35 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv33, i64 %indvars.iv30, i64 %indvars.iv, !dbg !1191
  store i32 %33, i32* %35, align 4, !dbg !1192, !tbaa !671
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1186
  %exitcond = icmp eq i64 %indvars.iv.next, 8, !dbg !1186
  br i1 %exitcond, label %36, label %30, !dbg !1186

; <label>:36                                      ; preds = %30
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !dbg !1175
  %exitcond32 = icmp eq i64 %indvars.iv.next31, 8, !dbg !1175
  br i1 %exitcond32, label %37, label %.preheader, !dbg !1175

; <label>:37                                      ; preds = %36
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !dbg !1193
  %exitcond35 = icmp eq i64 %indvars.iv.next34, 6, !dbg !1193
  br i1 %exitcond35, label %.loopexit, label %.preheader5, !dbg !1193

.preheader8:                                      ; preds = %.critedge, %.critedge.preheader
  %indvars.iv42 = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next43, %.critedge ]
  br label %.preheader7, !dbg !1194

.preheader7:                                      ; preds = %62, %.preheader8
  %indvars.iv39 = phi i64 [ 0, %.preheader8 ], [ %indvars.iv.next40, %62 ]
  br label %38, !dbg !1195

; <label>:38                                      ; preds = %58, %.preheader7
  %indvars.iv36 = phi i64 [ 0, %.preheader7 ], [ %indvars.iv.next37, %58 ]
  %39 = shl i64 %indvars.iv36, 3, !dbg !1196
  %40 = add nuw nsw i64 %39, %indvars.iv39, !dbg !1197
  %41 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %indvars.iv42, i64 %indvars.iv39, i64 %indvars.iv36, !dbg !1198
  %42 = load i32* %41, align 4, !dbg !1198, !tbaa !671
  %43 = shl i32 %42, 4, !dbg !1200
  %44 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %indvars.iv42, i64 %indvars.iv39, i64 %indvars.iv36
  %45 = load i32* %44, align 4
  br i1 %or.cond, label %48, label %46, !dbg !1162

; <label>:46                                      ; preds = %38
  %47 = getelementptr inbounds [64 x i16]* @Quant8_intra_default, i64 0, i64 %40, !dbg !1201
  br label %50, !dbg !1203

; <label>:48                                      ; preds = %38
  %49 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 0, i64 %40, !dbg !1204
  br label %50

; <label>:50                                      ; preds = %48, %46
  %.sink60.in = phi i16* [ %47, %46 ], [ %49, %48 ]
  %.sink60 = load i16* %.sink60.in, align 2, !dbg !1201
  %51 = sext i16 %.sink60 to i32, !dbg !1201
  %.sink = mul nsw i32 %51, %45, !dbg !1205
  %.sink54 = sdiv i32 %43, %51, !dbg !1206
  %52 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv42, i64 %indvars.iv39, i64 %indvars.iv36, !dbg !1207
  store i32 %.sink54, i32* %52, align 4
  %53 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv42, i64 %indvars.iv39, i64 %indvars.iv36, !dbg !1208
  store i32 %.sink, i32* %53, align 4
  br i1 %or.cond4, label %56, label %54, !dbg !1166

; <label>:54                                      ; preds = %50
  %55 = getelementptr inbounds [64 x i16]* @Quant8_inter_default, i64 0, i64 %40, !dbg !1209
  br label %58, !dbg !1211

; <label>:56                                      ; preds = %50
  %57 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 1, i64 %40, !dbg !1212
  br label %58

; <label>:58                                      ; preds = %54, %56
  %.sink61.in = phi i16* [ %55, %54 ], [ %57, %56 ]
  %.sink61 = load i16* %.sink61.in, align 2, !dbg !1209
  %59 = sext i16 %.sink61 to i32, !dbg !1209
  %.sink55 = mul nsw i32 %59, %45, !dbg !1214
  %.sink56 = sdiv i32 %43, %59, !dbg !1215
  %60 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv42, i64 %indvars.iv39, i64 %indvars.iv36, !dbg !1216
  store i32 %.sink56, i32* %60, align 4
  %61 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv42, i64 %indvars.iv39, i64 %indvars.iv36, !dbg !1217
  store i32 %.sink55, i32* %61, align 4
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1, !dbg !1195
  %exitcond38 = icmp eq i64 %indvars.iv.next37, 8, !dbg !1195
  br i1 %exitcond38, label %62, label %38, !dbg !1195

; <label>:62                                      ; preds = %58
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !dbg !1194
  %exitcond41 = icmp eq i64 %indvars.iv.next40, 8, !dbg !1194
  br i1 %exitcond41, label %.critedge, label %.preheader7, !dbg !1194

.critedge:                                        ; preds = %62
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1, !dbg !1167
  %exitcond44 = icmp eq i64 %indvars.iv.next43, 6, !dbg !1167
  br i1 %exitcond44, label %.loopexit, label %.preheader8, !dbg !1167

.loopexit:                                        ; preds = %.critedge, %37
  ret void, !dbg !1218
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!662, !663, !664}
!llvm.ident = !{!665}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !11, globals: !80, imports: !661)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/q_matrix.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!11 = !{!12, !23, !47, !55, !58, !69}
!12 = !DISubprogram(name: "CheckParameterName", scope: !1, file: !1, line: 126, type: !13, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*)* @CheckParameterName, variables: !19)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16, !18}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !12, file: !1, line: 126, type: !16)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !12, file: !1, line: 126, type: !18)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !12, file: !1, line: 128, type: !15)
!23 = !DISubprogram(name: "ParseMatrix", scope: !1, file: !1, line: 162, type: !24, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @ParseMatrix, variables: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !16, !15}
!26 = !{!27, !28, !29, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !23, file: !1, line: 162, type: !16)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 2, scope: !23, file: !1, line: 162, type: !15)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "items", scope: !23, file: !1, line: 164, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64000, align: 64, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 1000)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "MapIdx", scope: !23, file: !1, line: 165, type: !15)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !23, file: !1, line: 166, type: !15)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "InString", scope: !23, file: !1, line: 167, type: !15)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "InItem", scope: !23, file: !1, line: 167, type: !15)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !23, file: !1, line: 168, type: !16)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufend", scope: !23, file: !1, line: 169, type: !16)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "IntContent", scope: !23, file: !1, line: 170, type: !15)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !23, file: !1, line: 171, type: !15)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !23, file: !1, line: 171, type: !15)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "range", scope: !23, file: !1, line: 171, type: !15)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !23, file: !1, line: 171, type: !15)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cnt", scope: !23, file: !1, line: 171, type: !15)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ScalingList", scope: !23, file: !1, line: 172, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!47 = !DISubprogram(name: "PatchMatrix", scope: !1, file: !1, line: 284, type: !48, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PatchMatrix, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{null}
!50 = !{!51, !52, !53, !54}
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ScalingList", scope: !47, file: !1, line: 286, type: !46)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !47, file: !1, line: 287, type: !15)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cnt", scope: !47, file: !1, line: 287, type: !15)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fail", scope: !47, file: !1, line: 287, type: !15)
!55 = !DISubprogram(name: "Init_QMatrix", scope: !1, file: !1, line: 369, type: !48, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @Init_QMatrix, variables: !56)
!56 = !{!57}
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "content", scope: !55, file: !1, line: 371, type: !16)
!58 = !DISubprogram(name: "CalculateQuantParam", scope: !1, file: !1, line: 404, type: !48, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CalculateQuantParam, variables: !59)
!59 = !{!60, !61, !62, !63, !64, !68}
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !58, file: !1, line: 406, type: !15)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !58, file: !1, line: 406, type: !15)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !58, file: !1, line: 406, type: !15)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !58, file: !1, line: 406, type: !15)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "present", scope: !58, file: !1, line: 407, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, align: 32, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 6)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_q_matrix", scope: !58, file: !1, line: 408, type: !15)
!69 = !DISubprogram(name: "CalculateQuant8Param", scope: !1, file: !1, line: 538, type: !48, isLocal: false, isDefinition: true, scopeLine: 539, isOptimized: true, function: void ()* @CalculateQuant8Param, variables: !70)
!70 = !{!71, !72, !73, !74, !75, !79}
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !69, file: !1, line: 540, type: !15)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !69, file: !1, line: 540, type: !15)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !69, file: !1, line: 540, type: !15)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !69, file: !1, line: 540, type: !15)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "present", scope: !69, file: !1, line: 541, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, align: 32, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 2)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_q_matrix", scope: !69, file: !1, line: 542, type: !15)
!80 = !{!81, !82, !83, !276, !277, !278, !279, !280, !283, !285, !287, !288, !289, !290, !291, !330, !425, !426, !427, !429, !430, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !447, !448, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !463, !467, !468, !469, !470, !471, !472, !475, !478, !479, !480, !481, !484, !487, !498, !540, !541, !542, !543, !544, !600, !601, !602, !603, !604, !608, !609, !610, !611, !612, !613, !614, !615, !616, !619, !622, !623, !624, !627, !628, !629, !630, !631, !632, !633, !634, !637, !641, !642, !643, !645, !647, !650, !653, !656, !657, !660}
!81 = !DIGlobalVariable(name: "matrix4x4_check", scope: !0, file: !1, line: 27, type: !65, isLocal: false, isDefinition: true, variable: [6 x i32]* @matrix4x4_check)
!82 = !DIGlobalVariable(name: "matrix8x8_check", scope: !0, file: !1, line: 28, type: !76, isLocal: false, isDefinition: true, variable: [2 x i32]* @matrix8x8_check)
!83 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !84, line: 558, type: !85, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!84 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !84, line: 484, baseType: !87)
!87 = !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 475, size: 6592, align: 64, elements: !88)
!88 = !{!89, !90, !91, !271, !272, !274, !275}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !87, file: !84, line: 477, baseType: !15, size: 32, align: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !87, file: !84, line: 478, baseType: !15, size: 32, align: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !87, file: !84, line: 479, baseType: !92, size: 6400, align: 64, offset: 64)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 6400, align: 64, elements: !269)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !84, line: 471, baseType: !95)
!95 = !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 443, size: 1216, align: 64, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !181, !218, !244, !253, !254, !255, !256, !257, !258, !259, !260, !261, !266}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !95, file: !84, line: 445, baseType: !15, size: 32, align: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !95, file: !84, line: 446, baseType: !15, size: 32, align: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !95, file: !84, line: 447, baseType: !15, size: 32, align: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !95, file: !84, line: 448, baseType: !15, size: 32, align: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !95, file: !84, line: 449, baseType: !15, size: 32, align: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !95, file: !84, line: 450, baseType: !15, size: 32, align: 32, offset: 160)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !95, file: !84, line: 451, baseType: !104, size: 64, align: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !84, line: 440, baseType: !106)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !84, line: 430, size: 960, align: 64, elements: !107)
!107 = !{!108, !128, !153}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !106, file: !84, line: 433, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !84, line: 427, baseType: !111)
!111 = !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 411, size: 384, align: 64, elements: !112)
!112 = !{!113, !114, !115, !119, !120, !121, !122, !123, !124, !125, !127}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !111, file: !84, line: 413, baseType: !15, size: 32, align: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !111, file: !84, line: 414, baseType: !15, size: 32, align: 32, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !111, file: !84, line: 415, baseType: !116, size: 8, align: 8, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !117, line: 30, baseType: !118)
!117 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!118 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !111, file: !84, line: 416, baseType: !15, size: 32, align: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !111, file: !84, line: 417, baseType: !15, size: 32, align: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !111, file: !84, line: 418, baseType: !116, size: 8, align: 8, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !111, file: !84, line: 420, baseType: !116, size: 8, align: 8, offset: 168)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !111, file: !84, line: 421, baseType: !15, size: 32, align: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !111, file: !84, line: 422, baseType: !15, size: 32, align: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !111, file: !84, line: 424, baseType: !126, size: 64, align: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !111, file: !84, line: 425, baseType: !15, size: 32, align: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !106, file: !84, line: 434, baseType: !129, size: 832, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !84, line: 226, baseType: !130)
!130 = !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 207, size: 832, align: 64, elements: !131)
!131 = !{!132, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !130, file: !84, line: 209, baseType: !133, size: 32, align: 32)
!133 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !130, file: !84, line: 209, baseType: !133, size: 32, align: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !130, file: !84, line: 210, baseType: !133, size: 32, align: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !130, file: !84, line: 211, baseType: !133, size: 32, align: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !130, file: !84, line: 212, baseType: !133, size: 32, align: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !130, file: !84, line: 213, baseType: !126, size: 64, align: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !130, file: !84, line: 214, baseType: !18, size: 64, align: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !130, file: !84, line: 217, baseType: !133, size: 32, align: 32, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !130, file: !84, line: 217, baseType: !133, size: 32, align: 32, offset: 352)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !130, file: !84, line: 218, baseType: !133, size: 32, align: 32, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !130, file: !84, line: 219, baseType: !133, size: 32, align: 32, offset: 416)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !130, file: !84, line: 220, baseType: !133, size: 32, align: 32, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !130, file: !84, line: 221, baseType: !126, size: 64, align: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !130, file: !84, line: 222, baseType: !18, size: 64, align: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !130, file: !84, line: 223, baseType: !15, size: 32, align: 32, offset: 640)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !130, file: !84, line: 223, baseType: !15, size: 32, align: 32, offset: 672)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !130, file: !84, line: 224, baseType: !15, size: 32, align: 32, offset: 704)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !130, file: !84, line: 224, baseType: !15, size: 32, align: 32, offset: 736)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !130, file: !84, line: 225, baseType: !15, size: 32, align: 32, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !130, file: !84, line: 225, baseType: !15, size: 32, align: 32, offset: 800)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !106, file: !84, line: 436, baseType: !154, size: 64, align: 64, offset: 896)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!15, !157, !180}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !84, line: 348, baseType: !159)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !84, line: 327, size: 384, align: 64, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !173}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !159, file: !84, line: 329, baseType: !15, size: 32, align: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !159, file: !84, line: 330, baseType: !15, size: 32, align: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !159, file: !84, line: 331, baseType: !15, size: 32, align: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !159, file: !84, line: 332, baseType: !15, size: 32, align: 32, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !159, file: !84, line: 333, baseType: !15, size: 32, align: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !159, file: !84, line: 334, baseType: !133, size: 32, align: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !159, file: !84, line: 335, baseType: !15, size: 32, align: 32, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !159, file: !84, line: 336, baseType: !15, size: 32, align: 32, offset: 224)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !159, file: !84, line: 344, baseType: !170, size: 64, align: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !15, !15, !18, !18}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !159, file: !84, line: 346, baseType: !174, size: 64, align: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177, !178}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !84, line: 228, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !95, file: !84, line: 452, baseType: !182, size: 64, align: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !84, line: 268, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 258, size: 12032, align: 64, elements: !185)
!185 = !{!186, !199, !203, !207, !210, !214, !215}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !184, file: !84, line: 260, baseType: !187, size: 4224, align: 64)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 4224, align: 64, elements: !196)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !84, line: 238, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 231, size: 128, align: 64, elements: !190)
!190 = !{!191, !193, !194}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !189, file: !84, line: 233, baseType: !192, size: 16, align: 16)
!192 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !189, file: !84, line: 234, baseType: !118, size: 8, align: 8, offset: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !189, file: !84, line: 236, baseType: !195, size: 64, align: 64, offset: 64)
!195 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!196 = !{!197, !198}
!197 = !DISubrange(count: 3)
!198 = !DISubrange(count: 11)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !184, file: !84, line: 261, baseType: !200, size: 2304, align: 64, offset: 4224)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 2304, align: 64, elements: !201)
!201 = !{!78, !202}
!202 = !DISubrange(count: 9)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !184, file: !84, line: 262, baseType: !204, size: 2560, align: 64, offset: 6528)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 2560, align: 64, elements: !205)
!205 = !{!78, !206}
!206 = !DISubrange(count: 10)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !184, file: !84, line: 263, baseType: !208, size: 1536, align: 64, offset: 9088)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 1536, align: 64, elements: !209)
!209 = !{!78, !67}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !184, file: !84, line: 264, baseType: !211, size: 512, align: 64, offset: 10624)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 512, align: 64, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 4)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !184, file: !84, line: 265, baseType: !211, size: 512, align: 64, offset: 11136)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !184, file: !84, line: 266, baseType: !216, size: 384, align: 64, offset: 11648)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 384, align: 64, elements: !217)
!217 = !{!197}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !95, file: !84, line: 453, baseType: !219, size: 64, align: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !84, line: 293, baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 281, size: 97024, align: 64, elements: !222)
!222 = !{!223, !225, !226, !229, !232, !236, !237, !241, !242, !243}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !221, file: !84, line: 283, baseType: !224, size: 256, align: 64)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 256, align: 64, elements: !77)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !221, file: !84, line: 284, baseType: !211, size: 512, align: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !221, file: !84, line: 285, baseType: !227, size: 1536, align: 64, offset: 768)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 1536, align: 64, elements: !228)
!228 = !{!197, !213}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !221, file: !84, line: 286, baseType: !230, size: 5120, align: 64, offset: 2304)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 5120, align: 64, elements: !231)
!231 = !{!206, !213}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !221, file: !84, line: 287, baseType: !233, size: 19200, align: 64, offset: 7424)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 19200, align: 64, elements: !234)
!234 = !{!206, !235}
!235 = !DISubrange(count: 15)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !221, file: !84, line: 288, baseType: !233, size: 19200, align: 64, offset: 26624)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !221, file: !84, line: 289, baseType: !238, size: 6400, align: 64, offset: 45824)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 6400, align: 64, elements: !239)
!239 = !{!206, !240}
!240 = !DISubrange(count: 5)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !221, file: !84, line: 290, baseType: !238, size: 6400, align: 64, offset: 52224)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !221, file: !84, line: 291, baseType: !233, size: 19200, align: 64, offset: 58624)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !221, file: !84, line: 292, baseType: !233, size: 19200, align: 64, offset: 77824)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !95, file: !84, line: 456, baseType: !245, size: 64, align: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !84, line: 313, baseType: !247)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !84, line: 308, size: 128, align: 64, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !247, file: !84, line: 310, baseType: !15, size: 32, align: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !247, file: !84, line: 311, baseType: !15, size: 32, align: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !247, file: !84, line: 312, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !95, file: !84, line: 458, baseType: !15, size: 32, align: 32, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !95, file: !84, line: 459, baseType: !18, size: 64, align: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !95, file: !84, line: 460, baseType: !18, size: 64, align: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !95, file: !84, line: 461, baseType: !18, size: 64, align: 64, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !95, file: !84, line: 462, baseType: !15, size: 32, align: 32, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !95, file: !84, line: 463, baseType: !18, size: 64, align: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !95, file: !84, line: 464, baseType: !18, size: 64, align: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !95, file: !84, line: 465, baseType: !18, size: 64, align: 64, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !95, file: !84, line: 467, baseType: !262, size: 64, align: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !15}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !95, file: !84, line: 469, baseType: !267, size: 192, align: 32, offset: 1024)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, align: 32, elements: !268)
!268 = !{!197, !78}
!269 = !{!270}
!270 = !DISubrange(count: 100)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !87, file: !84, line: 480, baseType: !15, size: 32, align: 32, offset: 6464)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !87, file: !84, line: 481, baseType: !273, size: 32, align: 32, offset: 6496)
!273 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !87, file: !84, line: 482, baseType: !273, size: 32, align: 32, offset: 6528)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !87, file: !84, line: 483, baseType: !273, size: 32, align: 32, offset: 6560)
!276 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !84, line: 559, type: !85, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!277 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !84, line: 560, type: !85, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!278 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !84, line: 561, type: !85, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!279 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !84, line: 562, type: !85, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!280 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !84, line: 565, type: !281, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!283 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !84, line: 566, type: !284, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!285 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !84, line: 567, type: !286, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!287 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !84, line: 569, type: !133, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!288 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !84, line: 570, type: !133, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!289 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !84, line: 572, type: !15, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!290 = !DIGlobalVariable(name: "me_time", scope: !0, file: !84, line: 572, type: !15, isLocal: false, isDefinition: true, variable: i32* @me_time)
!291 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !84, line: 573, type: !292, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !294)
!294 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !306, !307, !308, !309, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !294, file: !4, line: 105, baseType: !265, size: 32, align: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !294, file: !4, line: 106, baseType: !133, size: 32, align: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !294, file: !4, line: 107, baseType: !133, size: 32, align: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !294, file: !4, line: 108, baseType: !265, size: 32, align: 32, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !294, file: !4, line: 110, baseType: !265, size: 32, align: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !294, file: !4, line: 111, baseType: !265, size: 32, align: 32, offset: 160)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !294, file: !4, line: 112, baseType: !303, size: 256, align: 32, offset: 192)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, align: 32, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 8)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !294, file: !4, line: 115, baseType: !265, size: 32, align: 32, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !294, file: !4, line: 116, baseType: !133, size: 32, align: 32, offset: 480)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !294, file: !4, line: 117, baseType: !133, size: 32, align: 32, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !294, file: !4, line: 119, baseType: !310, size: 256, align: 32, offset: 544)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, align: 32, elements: !304)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !294, file: !4, line: 121, baseType: !310, size: 256, align: 32, offset: 800)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !294, file: !4, line: 122, baseType: !310, size: 256, align: 32, offset: 1056)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !294, file: !4, line: 124, baseType: !265, size: 32, align: 32, offset: 1312)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !294, file: !4, line: 125, baseType: !133, size: 32, align: 32, offset: 1344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !294, file: !4, line: 127, baseType: !133, size: 32, align: 32, offset: 1376)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !294, file: !4, line: 128, baseType: !126, size: 64, align: 64, offset: 1408)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !294, file: !4, line: 130, baseType: !15, size: 32, align: 32, offset: 1472)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !294, file: !4, line: 131, baseType: !15, size: 32, align: 32, offset: 1504)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !294, file: !4, line: 132, baseType: !265, size: 32, align: 32, offset: 1536)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !294, file: !4, line: 133, baseType: !133, size: 32, align: 32, offset: 1568)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !294, file: !4, line: 134, baseType: !15, size: 32, align: 32, offset: 1600)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !294, file: !4, line: 135, baseType: !15, size: 32, align: 32, offset: 1632)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !294, file: !4, line: 136, baseType: !15, size: 32, align: 32, offset: 1664)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !294, file: !4, line: 138, baseType: !15, size: 32, align: 32, offset: 1696)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !294, file: !4, line: 139, baseType: !15, size: 32, align: 32, offset: 1728)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !294, file: !4, line: 141, baseType: !265, size: 32, align: 32, offset: 1760)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !294, file: !4, line: 142, baseType: !265, size: 32, align: 32, offset: 1792)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !294, file: !4, line: 143, baseType: !265, size: 32, align: 32, offset: 1824)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !294, file: !4, line: 144, baseType: !265, size: 32, align: 32, offset: 1856)
!330 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !84, line: 574, type: !331, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !333)
!333 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !333, file: !4, line: 151, baseType: !265, size: 32, align: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !333, file: !4, line: 153, baseType: !133, size: 32, align: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !333, file: !4, line: 154, baseType: !265, size: 32, align: 32, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !333, file: !4, line: 155, baseType: !265, size: 32, align: 32, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !333, file: !4, line: 156, baseType: !265, size: 32, align: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !333, file: !4, line: 157, baseType: !265, size: 32, align: 32, offset: 160)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !333, file: !4, line: 158, baseType: !133, size: 32, align: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !333, file: !4, line: 159, baseType: !133, size: 32, align: 32, offset: 224)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !333, file: !4, line: 160, baseType: !133, size: 32, align: 32, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !333, file: !4, line: 162, baseType: !265, size: 32, align: 32, offset: 288)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !333, file: !4, line: 163, baseType: !303, size: 256, align: 32, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !333, file: !4, line: 165, baseType: !133, size: 32, align: 32, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !333, file: !4, line: 166, baseType: !133, size: 32, align: 32, offset: 608)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !333, file: !4, line: 167, baseType: !133, size: 32, align: 32, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !333, file: !4, line: 168, baseType: !133, size: 32, align: 32, offset: 672)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !333, file: !4, line: 170, baseType: !133, size: 32, align: 32, offset: 704)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !333, file: !4, line: 172, baseType: !265, size: 32, align: 32, offset: 736)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !333, file: !4, line: 173, baseType: !15, size: 32, align: 32, offset: 768)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !333, file: !4, line: 174, baseType: !15, size: 32, align: 32, offset: 800)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !333, file: !4, line: 175, baseType: !133, size: 32, align: 32, offset: 832)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !333, file: !4, line: 177, baseType: !356, size: 8192, align: 32, offset: 864)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8192, align: 32, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !333, file: !4, line: 178, baseType: !133, size: 32, align: 32, offset: 9056)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !333, file: !4, line: 179, baseType: !265, size: 32, align: 32, offset: 9088)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !333, file: !4, line: 180, baseType: !133, size: 32, align: 32, offset: 9120)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !333, file: !4, line: 181, baseType: !133, size: 32, align: 32, offset: 9152)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !333, file: !4, line: 182, baseType: !265, size: 32, align: 32, offset: 9184)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !333, file: !4, line: 184, baseType: !265, size: 32, align: 32, offset: 9216)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !333, file: !4, line: 185, baseType: !265, size: 32, align: 32, offset: 9248)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !333, file: !4, line: 186, baseType: !265, size: 32, align: 32, offset: 9280)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !333, file: !4, line: 187, baseType: !133, size: 32, align: 32, offset: 9312)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !333, file: !4, line: 188, baseType: !133, size: 32, align: 32, offset: 9344)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !333, file: !4, line: 189, baseType: !133, size: 32, align: 32, offset: 9376)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !333, file: !4, line: 190, baseType: !133, size: 32, align: 32, offset: 9408)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !333, file: !4, line: 191, baseType: !265, size: 32, align: 32, offset: 9440)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !333, file: !4, line: 192, baseType: !373, size: 7584, align: 32, offset: 9472)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !374)
!374 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !374, file: !4, line: 65, baseType: !265, size: 32, align: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !374, file: !4, line: 66, baseType: !133, size: 32, align: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !374, file: !4, line: 67, baseType: !133, size: 32, align: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !374, file: !4, line: 68, baseType: !133, size: 32, align: 32, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !374, file: !4, line: 69, baseType: !265, size: 32, align: 32, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !374, file: !4, line: 70, baseType: !265, size: 32, align: 32, offset: 160)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !374, file: !4, line: 71, baseType: !265, size: 32, align: 32, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !374, file: !4, line: 72, baseType: !133, size: 32, align: 32, offset: 224)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !374, file: !4, line: 73, baseType: !265, size: 32, align: 32, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !374, file: !4, line: 74, baseType: !265, size: 32, align: 32, offset: 288)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !374, file: !4, line: 75, baseType: !133, size: 32, align: 32, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !374, file: !4, line: 76, baseType: !133, size: 32, align: 32, offset: 352)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !374, file: !4, line: 77, baseType: !133, size: 32, align: 32, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !374, file: !4, line: 78, baseType: !265, size: 32, align: 32, offset: 416)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !374, file: !4, line: 79, baseType: !133, size: 32, align: 32, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !374, file: !4, line: 80, baseType: !133, size: 32, align: 32, offset: 480)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !374, file: !4, line: 81, baseType: !265, size: 32, align: 32, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !374, file: !4, line: 82, baseType: !133, size: 32, align: 32, offset: 544)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !374, file: !4, line: 83, baseType: !133, size: 32, align: 32, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !374, file: !4, line: 84, baseType: !265, size: 32, align: 32, offset: 608)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !374, file: !4, line: 85, baseType: !265, size: 32, align: 32, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !374, file: !4, line: 86, baseType: !398, size: 3296, align: 32, offset: 672)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !400)
!400 = !{!401, !402, !403, !404, !408, !409, !410, !411, !412, !413}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !399, file: !4, line: 50, baseType: !133, size: 32, align: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !399, file: !4, line: 51, baseType: !133, size: 32, align: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !399, file: !4, line: 52, baseType: !133, size: 32, align: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !399, file: !4, line: 53, baseType: !405, size: 1024, align: 32, offset: 96)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1024, align: 32, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !399, file: !4, line: 54, baseType: !405, size: 1024, align: 32, offset: 1120)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !399, file: !4, line: 55, baseType: !405, size: 1024, align: 32, offset: 2144)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !399, file: !4, line: 56, baseType: !133, size: 32, align: 32, offset: 3168)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !399, file: !4, line: 57, baseType: !133, size: 32, align: 32, offset: 3200)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !399, file: !4, line: 58, baseType: !133, size: 32, align: 32, offset: 3232)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !399, file: !4, line: 59, baseType: !133, size: 32, align: 32, offset: 3264)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !374, file: !4, line: 87, baseType: !265, size: 32, align: 32, offset: 3968)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !374, file: !4, line: 88, baseType: !398, size: 3296, align: 32, offset: 4000)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !374, file: !4, line: 90, baseType: !265, size: 32, align: 32, offset: 7296)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !374, file: !4, line: 91, baseType: !265, size: 32, align: 32, offset: 7328)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !374, file: !4, line: 92, baseType: !265, size: 32, align: 32, offset: 7360)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !374, file: !4, line: 93, baseType: !133, size: 32, align: 32, offset: 7392)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !374, file: !4, line: 94, baseType: !133, size: 32, align: 32, offset: 7424)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !374, file: !4, line: 95, baseType: !133, size: 32, align: 32, offset: 7456)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !374, file: !4, line: 96, baseType: !133, size: 32, align: 32, offset: 7488)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !374, file: !4, line: 97, baseType: !133, size: 32, align: 32, offset: 7520)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !374, file: !4, line: 98, baseType: !133, size: 32, align: 32, offset: 7552)
!425 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !84, line: 578, type: !15, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!426 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !84, line: 579, type: !15, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!427 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !84, line: 583, type: !428, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!429 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !84, line: 584, type: !428, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!430 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !84, line: 585, type: !431, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!432 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !84, line: 586, type: !15, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!433 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !84, line: 587, type: !15, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!434 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !84, line: 588, type: !15, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!435 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !84, line: 589, type: !15, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!436 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !84, line: 592, type: !281, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!437 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !84, line: 593, type: !281, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!438 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !84, line: 595, type: !284, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!439 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !84, line: 596, type: !284, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!440 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !84, line: 598, type: !281, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!441 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !84, line: 599, type: !284, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!442 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !84, line: 601, type: !281, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!443 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !84, line: 602, type: !284, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!444 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !84, line: 604, type: !445, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!447 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !84, line: 605, type: !446, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!448 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !84, line: 608, type: !449, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!450 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !84, line: 609, type: !449, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!451 = !DIGlobalVariable(name: "intras", scope: !0, file: !84, line: 610, type: !15, isLocal: false, isDefinition: true, variable: i32* @intras)
!452 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !84, line: 612, type: !15, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!453 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !84, line: 612, type: !15, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!454 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !84, line: 612, type: !15, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!455 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !84, line: 613, type: !15, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!456 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !84, line: 613, type: !15, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!457 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !84, line: 613, type: !15, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!458 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !84, line: 614, type: !15, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!459 = !DIGlobalVariable(name: "errortext", scope: !0, file: !84, line: 617, type: !460, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2400, align: 8, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 300)
!463 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !84, line: 620, type: !464, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8192, align: 32, elements: !465)
!465 = !{!466, !466}
!466 = !DISubrange(count: 16)
!467 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !84, line: 620, type: !464, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!468 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !84, line: 620, type: !464, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!469 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !84, line: 621, type: !464, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!470 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !84, line: 621, type: !464, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!471 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !84, line: 621, type: !464, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!472 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !84, line: 622, type: !473, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 24576, align: 32, elements: !474)
!474 = !{!197, !466, !466}
!475 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !84, line: 623, type: !476, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, align: 32, elements: !477)
!477 = !{!78, !213, !213}
!478 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !84, line: 623, type: !476, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!479 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !84, line: 624, type: !476, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!480 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !84, line: 624, type: !476, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!481 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !84, line: 625, type: !482, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 512, align: 32, elements: !483)
!483 = !{!213, !213}
!484 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !84, line: 625, type: !485, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 512, align: 32, elements: !486)
!486 = !{!466}
!487 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !84, line: 1201, type: !488, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !84, line: 1190, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 1182, size: 192, align: 32, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !490, file: !84, line: 1184, baseType: !15, size: 32, align: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !490, file: !84, line: 1185, baseType: !15, size: 32, align: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !490, file: !84, line: 1186, baseType: !15, size: 32, align: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !490, file: !84, line: 1187, baseType: !15, size: 32, align: 32, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !490, file: !84, line: 1188, baseType: !15, size: 32, align: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !490, file: !84, line: 1189, baseType: !15, size: 32, align: 32, offset: 160)
!498 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !84, line: 1202, type: !499, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !84, line: 1177, baseType: !501)
!501 = !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 1145, size: 26880, align: 64, elements: !502)
!502 = !{!503, !505, !506, !507, !508, !509, !510, !511, !512, !514, !515, !516, !517, !518, !523, !524, !528, !529, !530, !531, !533, !534, !535, !536, !537, !538, !539}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !501, file: !84, line: 1147, baseType: !504, size: 64, align: 64)
!504 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !501, file: !84, line: 1149, baseType: !464, size: 8192, align: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !501, file: !84, line: 1150, baseType: !464, size: 8192, align: 32, offset: 8256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !501, file: !84, line: 1150, baseType: !464, size: 8192, align: 32, offset: 16448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !501, file: !84, line: 1151, baseType: !431, size: 64, align: 64, offset: 24640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !501, file: !84, line: 1152, baseType: !428, size: 64, align: 64, offset: 24704)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !501, file: !84, line: 1153, baseType: !15, size: 32, align: 32, offset: 24768)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !501, file: !84, line: 1155, baseType: !15, size: 32, align: 32, offset: 24800)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !501, file: !84, line: 1157, baseType: !513, size: 128, align: 32, offset: 24832)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, align: 32, elements: !212)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !501, file: !84, line: 1157, baseType: !513, size: 128, align: 32, offset: 24960)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !501, file: !84, line: 1158, baseType: !286, size: 64, align: 64, offset: 25088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !501, file: !84, line: 1159, baseType: !485, size: 512, align: 32, offset: 25152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !501, file: !84, line: 1160, baseType: !15, size: 32, align: 32, offset: 25664)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !501, file: !84, line: 1161, baseType: !519, size: 64, align: 64, offset: 25728)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !84, line: 62, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !521, line: 30, baseType: !522)
!521 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!522 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !501, file: !84, line: 1162, baseType: !15, size: 32, align: 32, offset: 25792)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !501, file: !84, line: 1163, baseType: !525, size: 64, align: 64, offset: 25856)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !501, file: !84, line: 1164, baseType: !525, size: 64, align: 64, offset: 25920)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !501, file: !84, line: 1165, baseType: !525, size: 64, align: 64, offset: 25984)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !501, file: !84, line: 1166, baseType: !525, size: 64, align: 64, offset: 26048)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !501, file: !84, line: 1167, baseType: !532, size: 512, align: 16, offset: 26112)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 512, align: 16, elements: !477)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !501, file: !84, line: 1168, baseType: !15, size: 32, align: 32, offset: 26624)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !501, file: !84, line: 1169, baseType: !15, size: 32, align: 32, offset: 26656)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !501, file: !84, line: 1171, baseType: !15, size: 32, align: 32, offset: 26688)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !501, file: !84, line: 1172, baseType: !15, size: 32, align: 32, offset: 26720)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !501, file: !84, line: 1174, baseType: !15, size: 32, align: 32, offset: 26752)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !501, file: !84, line: 1175, baseType: !15, size: 32, align: 32, offset: 26784)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !501, file: !84, line: 1176, baseType: !15, size: 32, align: 32, offset: 26816)
!540 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !84, line: 1203, type: !500, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!541 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !84, line: 1203, type: !500, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!542 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !84, line: 1204, type: !500, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!543 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !84, line: 1204, type: !500, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!544 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !84, line: 1230, type: !545, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !547, line: 153, baseType: !548)
!547 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !547, line: 122, size: 1216, align: 64, elements: !549)
!549 = !{!550, !552, !553, !554, !555, !556, !561, !562, !563, !567, !571, !580, !586, !587, !590, !591, !593, !597, !598, !599}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !548, file: !547, line: 123, baseType: !551, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !548, file: !547, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !548, file: !547, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !548, file: !547, line: 126, baseType: !10, size: 16, align: 16, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !548, file: !547, line: 127, baseType: !10, size: 16, align: 16, offset: 144)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !548, file: !547, line: 128, baseType: !557, size: 128, align: 64, offset: 192)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !547, line: 88, size: 128, align: 64, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !557, file: !547, line: 89, baseType: !551, size: 64, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !557, file: !547, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !548, file: !547, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !548, file: !547, line: 132, baseType: !9, size: 64, align: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !548, file: !547, line: 133, baseType: !564, size: 64, align: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!15, !9}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !548, file: !547, line: 134, baseType: !568, size: 64, align: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!15, !9, !16, !15}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !548, file: !547, line: 135, baseType: !572, size: 64, align: 64, offset: 576)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!575, !9, !575, !15}
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !547, line: 77, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !577, line: 71, baseType: !578)
!577 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !579, line: 46, baseType: !522)
!579 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !548, file: !547, line: 136, baseType: !581, size: 64, align: 64, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!15, !9, !584, !15}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !548, file: !547, line: 139, baseType: !557, size: 128, align: 64, offset: 704)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !548, file: !547, line: 140, baseType: !588, size: 64, align: 64, offset: 832)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !547, line: 94, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !548, file: !547, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !548, file: !547, line: 144, baseType: !592, size: 24, align: 8, offset: 928)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 24, align: 8, elements: !217)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !548, file: !547, line: 145, baseType: !594, size: 8, align: 8, offset: 952)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 8, align: 8, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 1)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !548, file: !547, line: 148, baseType: !557, size: 128, align: 64, offset: 960)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !548, file: !547, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !548, file: !547, line: 152, baseType: !575, size: 64, align: 64, offset: 1152)
!600 = !DIGlobalVariable(name: "p_log", scope: !0, file: !84, line: 1231, type: !545, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!601 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !84, line: 1232, type: !545, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!602 = !DIGlobalVariable(name: "p_in", scope: !0, file: !84, line: 1233, type: !15, isLocal: false, isDefinition: true, variable: i32* @p_in)
!603 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !84, line: 1234, type: !15, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!604 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !84, line: 1237, type: !605, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 640, align: 32, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 20)
!608 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !84, line: 1238, type: !605, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!609 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !84, line: 1239, type: !605, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!610 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !84, line: 1240, type: !605, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!611 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !84, line: 1241, type: !605, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!612 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !84, line: 1242, type: !605, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!613 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !84, line: 1456, type: !15, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!614 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !84, line: 1465, type: !15, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!615 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !84, line: 1466, type: !15, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!616 = !DIGlobalVariable(name: "LevelScale4x4Luma_Intra", scope: !0, file: !1, line: 46, type: !617, isLocal: false, isDefinition: true, variable: [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 3072, align: 32, elements: !618)
!618 = !{!67, !213, !213}
!619 = !DIGlobalVariable(name: "LevelScale4x4Chroma_Intra", scope: !0, file: !1, line: 47, type: !620, isLocal: false, isDefinition: true, variable: [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 6144, align: 32, elements: !621)
!621 = !{!78, !67, !213, !213}
!622 = !DIGlobalVariable(name: "LevelScale4x4Luma_Inter", scope: !0, file: !1, line: 49, type: !617, isLocal: false, isDefinition: true, variable: [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter)
!623 = !DIGlobalVariable(name: "LevelScale4x4Chroma_Inter", scope: !0, file: !1, line: 50, type: !620, isLocal: false, isDefinition: true, variable: [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter)
!624 = !DIGlobalVariable(name: "LevelScale8x8Luma_Intra", scope: !0, file: !1, line: 52, type: !625, isLocal: false, isDefinition: true, variable: [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 12288, align: 32, elements: !626)
!626 = !{!67, !305, !305}
!627 = !DIGlobalVariable(name: "LevelScale8x8Luma_Inter", scope: !0, file: !1, line: 53, type: !625, isLocal: false, isDefinition: true, variable: [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter)
!628 = !DIGlobalVariable(name: "InvLevelScale4x4Luma_Intra", scope: !0, file: !1, line: 55, type: !617, isLocal: false, isDefinition: true, variable: [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra)
!629 = !DIGlobalVariable(name: "InvLevelScale4x4Chroma_Intra", scope: !0, file: !1, line: 56, type: !620, isLocal: false, isDefinition: true, variable: [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra)
!630 = !DIGlobalVariable(name: "InvLevelScale4x4Luma_Inter", scope: !0, file: !1, line: 58, type: !617, isLocal: false, isDefinition: true, variable: [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter)
!631 = !DIGlobalVariable(name: "InvLevelScale4x4Chroma_Inter", scope: !0, file: !1, line: 59, type: !620, isLocal: false, isDefinition: true, variable: [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter)
!632 = !DIGlobalVariable(name: "InvLevelScale8x8Luma_Intra", scope: !0, file: !1, line: 61, type: !625, isLocal: false, isDefinition: true, variable: [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra)
!633 = !DIGlobalVariable(name: "InvLevelScale8x8Luma_Inter", scope: !0, file: !1, line: 62, type: !625, isLocal: false, isDefinition: true, variable: [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter)
!634 = !DIGlobalVariable(name: "ScalingList4x4input", scope: !0, file: !1, line: 64, type: !635, isLocal: false, isDefinition: true, variable: [6 x [16 x i16]]* @ScalingList4x4input)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1536, align: 16, elements: !636)
!636 = !{!67, !466}
!637 = !DIGlobalVariable(name: "ScalingList8x8input", scope: !0, file: !1, line: 65, type: !638, isLocal: false, isDefinition: true, variable: [2 x [64 x i16]]* @ScalingList8x8input)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, align: 16, elements: !639)
!639 = !{!78, !640}
!640 = !DISubrange(count: 64)
!641 = !DIGlobalVariable(name: "ScalingList4x4", scope: !0, file: !1, line: 66, type: !635, isLocal: false, isDefinition: true, variable: [6 x [16 x i16]]* @ScalingList4x4)
!642 = !DIGlobalVariable(name: "ScalingList8x8", scope: !0, file: !1, line: 67, type: !638, isLocal: false, isDefinition: true, variable: [2 x [64 x i16]]* @ScalingList8x8)
!643 = !DIGlobalVariable(name: "UseDefaultScalingMatrix4x4Flag", scope: !0, file: !1, line: 69, type: !644, isLocal: false, isDefinition: true, variable: [6 x i16]* @UseDefaultScalingMatrix4x4Flag)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, align: 16, elements: !66)
!645 = !DIGlobalVariable(name: "UseDefaultScalingMatrix8x8Flag", scope: !0, file: !1, line: 70, type: !646, isLocal: false, isDefinition: true, variable: [2 x i16]* @UseDefaultScalingMatrix8x8Flag)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, align: 16, elements: !77)
!647 = !DIGlobalVariable(name: "MatrixType4x4", scope: !0, file: !1, line: 30, type: !648, isLocal: true, isDefinition: true, variable: [6 x [20 x i8]]* @MatrixType4x4)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 960, align: 8, elements: !649)
!649 = !{!67, !607}
!650 = !DIGlobalVariable(name: "MatrixType8x8", scope: !0, file: !1, line: 40, type: !651, isLocal: true, isDefinition: true, variable: [2 x [20 x i8]]* @MatrixType8x8)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 320, align: 8, elements: !652)
!652 = !{!78, !607}
!653 = !DIGlobalVariable(name: "Quant_inter_default", scope: !0, file: !1, line: 80, type: !654, isLocal: true, isDefinition: true, variable: [16 x i16]* @Quant_inter_default)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 256, align: 16, elements: !486)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!656 = !DIGlobalVariable(name: "Quant_intra_default", scope: !0, file: !1, line: 72, type: !654, isLocal: true, isDefinition: true, variable: [16 x i16]* @Quant_intra_default)
!657 = !DIGlobalVariable(name: "Quant8_inter_default", scope: !0, file: !1, line: 100, type: !658, isLocal: true, isDefinition: true, variable: [64 x i16]* @Quant8_inter_default)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 1024, align: 16, elements: !659)
!659 = !{!640}
!660 = !DIGlobalVariable(name: "Quant8_intra_default", scope: !0, file: !1, line: 88, type: !658, isLocal: true, isDefinition: true, variable: [64 x i16]* @Quant8_intra_default)
!661 = !{}
!662 = !{i32 2, !"Dwarf Version", i32 2}
!663 = !{i32 2, !"Debug Info Version", i32 700000003}
!664 = !{i32 1, !"PIC Level", i32 2}
!665 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!666 = !DIExpression()
!667 = !DILocation(line: 126, column: 31, scope: !12)
!668 = !DILocation(line: 126, column: 39, scope: !12)
!669 = !DILocation(line: 128, column: 7, scope: !12)
!670 = !DILocation(line: 130, column: 9, scope: !12)
!671 = !{!672, !672, i64 0}
!672 = !{!"int", !673, i64 0}
!673 = !{!"omnipotent char", !674, i64 0}
!674 = !{!"Simple C/C++ TBAA"}
!675 = !DILocation(line: 131, column: 37, scope: !12)
!676 = !DILocation(line: 133, column: 12, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !1, line: 133, column: 9)
!678 = distinct !DILexicalBlock(scope: !12, file: !1, line: 132, column: 3)
!679 = !DILocation(line: 133, column: 10, scope: !677)
!680 = !DILocation(line: 133, column: 9, scope: !678)
!681 = !DILocation(line: 131, column: 11, scope: !12)
!682 = !DILocation(line: 131, column: 28, scope: !12)
!683 = !DILocation(line: 131, column: 42, scope: !12)
!684 = !DILocation(line: 140, column: 9, scope: !12)
!685 = !DILocation(line: 141, column: 37, scope: !12)
!686 = !DILocation(line: 143, column: 12, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !1, line: 143, column: 9)
!688 = distinct !DILexicalBlock(scope: !12, file: !1, line: 142, column: 3)
!689 = !DILocation(line: 143, column: 10, scope: !687)
!690 = !DILocation(line: 143, column: 9, scope: !688)
!691 = !DILocation(line: 141, column: 11, scope: !12)
!692 = !DILocation(line: 141, column: 28, scope: !12)
!693 = !DILocation(line: 141, column: 42, scope: !12)
!694 = !DILocation(line: 150, column: 1, scope: !12)
!695 = !DILocation(line: 162, column: 25, scope: !23)
!696 = !DILocation(line: 162, column: 34, scope: !23)
!697 = !DILocation(line: 164, column: 3, scope: !23)
!698 = !DILocation(line: 164, column: 9, scope: !23)
!699 = !DILocation(line: 166, column: 7, scope: !23)
!700 = !DILocation(line: 167, column: 7, scope: !23)
!701 = !DILocation(line: 167, column: 21, scope: !23)
!702 = !DILocation(line: 168, column: 9, scope: !23)
!703 = !DILocation(line: 169, column: 19, scope: !23)
!704 = !DILocation(line: 169, column: 9, scope: !23)
!705 = !DILocation(line: 174, column: 12, scope: !23)
!706 = !DILocation(line: 174, column: 3, scope: !23)
!707 = !DILocation(line: 176, column: 13, scope: !708)
!708 = distinct !DILexicalBlock(scope: !23, file: !1, line: 175, column: 3)
!709 = !{!673, !673, i64 0}
!710 = !DILocation(line: 176, column: 5, scope: !708)
!711 = !DILocation(line: 179, column: 10, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !1, line: 177, column: 5)
!713 = !DILocation(line: 180, column: 9, scope: !712)
!714 = !DILocation(line: 182, column: 12, scope: !712)
!715 = !DILocation(line: 183, column: 32, scope: !712)
!716 = !DILocation(line: 183, column: 27, scope: !712)
!717 = !DILocation(line: 184, column: 12, scope: !712)
!718 = !DILocation(line: 183, column: 16, scope: !712)
!719 = !DILocation(line: 183, column: 19, scope: !712)
!720 = !DILocation(line: 191, column: 11, scope: !712)
!721 = !DILocation(line: 191, column: 13, scope: !712)
!722 = !DILocation(line: 192, column: 9, scope: !712)
!723 = !DILocation(line: 195, column: 13, scope: !724)
!724 = distinct !DILexicalBlock(scope: !712, file: !1, line: 195, column: 13)
!725 = !DILocation(line: 196, column: 12, scope: !724)
!726 = !DILocation(line: 195, column: 13, scope: !712)
!727 = !DILocation(line: 199, column: 16, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !1, line: 198, column: 9)
!729 = !DILocation(line: 205, column: 11, scope: !712)
!730 = !DILocation(line: 205, column: 14, scope: !712)
!731 = !DILocation(line: 206, column: 14, scope: !732)
!732 = distinct !DILexicalBlock(scope: !712, file: !1, line: 206, column: 13)
!733 = !DILocation(line: 206, column: 13, scope: !712)
!734 = !DILocation(line: 208, column: 21, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !1, line: 207, column: 9)
!736 = !DILocation(line: 208, column: 11, scope: !735)
!737 = !DILocation(line: 208, column: 25, scope: !735)
!738 = !{!739, !739, i64 0}
!739 = !{!"any pointer", !673, i64 0}
!740 = !DILocation(line: 209, column: 20, scope: !735)
!741 = !DILocation(line: 210, column: 9, scope: !735)
!742 = !DILocation(line: 213, column: 20, scope: !712)
!743 = !DILocation(line: 214, column: 9, scope: !712)
!744 = !DILocation(line: 217, column: 10, scope: !712)
!745 = !DILocation(line: 219, column: 9, scope: !712)
!746 = !DILocation(line: 222, column: 14, scope: !747)
!747 = distinct !DILexicalBlock(scope: !712, file: !1, line: 222, column: 13)
!748 = !DILocation(line: 222, column: 13, scope: !712)
!749 = !DILocation(line: 224, column: 21, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !1, line: 223, column: 9)
!751 = !DILocation(line: 224, column: 11, scope: !750)
!752 = !DILocation(line: 224, column: 25, scope: !750)
!753 = !DILocation(line: 226, column: 9, scope: !750)
!754 = !DILocation(line: 227, column: 10, scope: !712)
!755 = !DILocation(line: 228, column: 5, scope: !712)
!756 = !DILocation(line: 231, column: 7, scope: !23)
!757 = !DILocation(line: 171, column: 7, scope: !23)
!758 = !DILocation(line: 233, column: 14, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !1, line: 233, column: 3)
!760 = distinct !DILexicalBlock(scope: !23, file: !1, line: 233, column: 3)
!761 = !DILocation(line: 233, column: 3, scope: !760)
!762 = !DILocation(line: 171, column: 26, scope: !23)
!763 = !DILocation(line: 236, column: 43, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !1, line: 236, column: 9)
!765 = distinct !DILexicalBlock(scope: !759, file: !1, line: 234, column: 3)
!766 = !DILocation(line: 171, column: 20, scope: !23)
!767 = !DILocation(line: 236, column: 23, scope: !764)
!768 = !DILocation(line: 165, column: 7, scope: !23)
!769 = !DILocation(line: 236, column: 11, scope: !764)
!770 = !DILocation(line: 236, column: 9, scope: !765)
!771 = !DILocation(line: 238, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !764, file: !1, line: 237, column: 5)
!773 = !DILocation(line: 239, column: 7, scope: !772)
!774 = !DILocation(line: 240, column: 5, scope: !772)
!775 = !DILocation(line: 242, column: 29, scope: !776)
!776 = distinct !DILexicalBlock(scope: !765, file: !1, line: 242, column: 9)
!777 = !DILocation(line: 242, column: 22, scope: !776)
!778 = !DILocation(line: 242, column: 9, scope: !776)
!779 = !DILocation(line: 242, column: 9, scope: !765)
!780 = !DILocation(line: 244, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !776, file: !1, line: 243, column: 5)
!782 = !DILocation(line: 245, column: 7, scope: !781)
!783 = !DILocation(line: 246, column: 5, scope: !781)
!784 = !DILocation(line: 249, column: 10, scope: !785)
!785 = distinct !DILexicalBlock(scope: !765, file: !1, line: 249, column: 9)
!786 = !DILocation(line: 252, column: 21, scope: !787)
!787 = distinct !DILexicalBlock(scope: !785, file: !1, line: 250, column: 5)
!788 = !DILocation(line: 249, column: 9, scope: !765)
!789 = !DILocation(line: 171, column: 13, scope: !23)
!790 = !DILocation(line: 172, column: 10, scope: !23)
!791 = !DILocation(line: 253, column: 7, scope: !787)
!792 = !DILocation(line: 253, column: 31, scope: !787)
!793 = !DILocation(line: 254, column: 5, scope: !787)
!794 = !DILocation(line: 258, column: 21, scope: !795)
!795 = distinct !DILexicalBlock(scope: !785, file: !1, line: 256, column: 5)
!796 = !DILocation(line: 259, column: 7, scope: !795)
!797 = !DILocation(line: 259, column: 31, scope: !795)
!798 = !DILocation(line: 171, column: 10, scope: !23)
!799 = !DILocation(line: 264, column: 31, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 264, column: 11)
!801 = distinct !DILexicalBlock(scope: !802, file: !1, line: 263, column: 5)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 262, column: 5)
!803 = distinct !DILexicalBlock(scope: !765, file: !1, line: 262, column: 5)
!804 = !DILocation(line: 262, column: 5, scope: !803)
!805 = !DILocation(line: 264, column: 35, scope: !800)
!806 = !DILocation(line: 264, column: 24, scope: !800)
!807 = !DILocation(line: 170, column: 7, scope: !23)
!808 = !DILocation(line: 264, column: 16, scope: !800)
!809 = !DILocation(line: 264, column: 13, scope: !800)
!810 = !DILocation(line: 264, column: 11, scope: !801)
!811 = !DILocation(line: 266, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !800, file: !1, line: 265, column: 7)
!813 = !DILocation(line: 267, column: 9, scope: !812)
!814 = !DILocation(line: 268, column: 7, scope: !812)
!815 = !DILocation(line: 270, column: 31, scope: !801)
!816 = !DILocation(line: 270, column: 24, scope: !801)
!817 = !DILocation(line: 270, column: 7, scope: !801)
!818 = !DILocation(line: 270, column: 22, scope: !801)
!819 = !{!820, !820, i64 0}
!820 = !{!"short", !673, i64 0}
!821 = !DILocation(line: 262, column: 15, scope: !802)
!822 = !DILocation(line: 273, column: 5, scope: !765)
!823 = !DILocation(line: 233, column: 22, scope: !759)
!824 = !DILocation(line: 275, column: 1, scope: !23)
!825 = !DILocation(line: 287, column: 7, scope: !47)
!826 = !DILocation(line: 289, column: 3, scope: !827)
!827 = distinct !DILexicalBlock(scope: !47, file: !1, line: 289, column: 3)
!828 = !DILocation(line: 291, column: 8, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 291, column: 8)
!830 = distinct !DILexicalBlock(scope: !831, file: !1, line: 290, column: 3)
!831 = distinct !DILexicalBlock(scope: !827, file: !1, line: 289, column: 3)
!832 = !DILocation(line: 291, column: 8, scope: !830)
!833 = !DILocation(line: 293, column: 19, scope: !834)
!834 = distinct !DILexicalBlock(scope: !829, file: !1, line: 292, column: 5)
!835 = !DILocation(line: 286, column: 10, scope: !47)
!836 = !DILocation(line: 294, column: 10, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !1, line: 294, column: 10)
!838 = !DILocation(line: 294, column: 10, scope: !834)
!839 = !DILocation(line: 297, column: 23, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 297, column: 9)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 297, column: 9)
!842 = distinct !DILexicalBlock(scope: !837, file: !1, line: 295, column: 7)
!843 = !DILocation(line: 297, column: 9, scope: !841)
!844 = !DILocation(line: 299, column: 14, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 299, column: 14)
!846 = distinct !DILexicalBlock(scope: !840, file: !1, line: 298, column: 9)
!847 = !DILocation(line: 299, column: 33, scope: !845)
!848 = !DILocation(line: 308, column: 73, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !1, line: 307, column: 9)
!850 = distinct !DILexicalBlock(scope: !842, file: !1, line: 306, column: 12)
!851 = !DILocation(line: 308, column: 11, scope: !849)
!852 = !DILocation(line: 309, column: 11, scope: !849)
!853 = !DILocation(line: 310, column: 15, scope: !854)
!854 = distinct !DILexicalBlock(scope: !849, file: !1, line: 310, column: 14)
!855 = !DILocation(line: 311, column: 13, scope: !854)
!856 = !DILocation(line: 310, column: 14, scope: !849)
!857 = !DILocation(line: 313, column: 13, scope: !854)
!858 = !DILocation(line: 318, column: 77, scope: !859)
!859 = distinct !DILexicalBlock(scope: !837, file: !1, line: 317, column: 7)
!860 = !DILocation(line: 318, column: 9, scope: !859)
!861 = !DILocation(line: 319, column: 13, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !1, line: 319, column: 12)
!863 = !DILocation(line: 320, column: 11, scope: !862)
!864 = !DILocation(line: 319, column: 12, scope: !859)
!865 = !DILocation(line: 322, column: 11, scope: !862)
!866 = !DILocation(line: 326, column: 10, scope: !867)
!867 = distinct !DILexicalBlock(scope: !830, file: !1, line: 326, column: 8)
!868 = !DILocation(line: 326, column: 14, scope: !867)
!869 = !DILocation(line: 326, column: 48, scope: !867)
!870 = !DILocation(line: 326, column: 17, scope: !867)
!871 = !DILocation(line: 326, column: 8, scope: !830)
!872 = !DILocation(line: 328, column: 19, scope: !873)
!873 = distinct !DILexicalBlock(scope: !867, file: !1, line: 327, column: 5)
!874 = !DILocation(line: 329, column: 10, scope: !875)
!875 = distinct !DILexicalBlock(scope: !873, file: !1, line: 329, column: 10)
!876 = !DILocation(line: 329, column: 10, scope: !873)
!877 = !DILocation(line: 332, column: 23, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !1, line: 332, column: 9)
!879 = distinct !DILexicalBlock(scope: !880, file: !1, line: 332, column: 9)
!880 = distinct !DILexicalBlock(scope: !875, file: !1, line: 330, column: 7)
!881 = !DILocation(line: 332, column: 9, scope: !879)
!882 = !DILocation(line: 334, column: 14, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !1, line: 334, column: 14)
!884 = distinct !DILexicalBlock(scope: !878, file: !1, line: 333, column: 9)
!885 = !DILocation(line: 334, column: 33, scope: !883)
!886 = !DILocation(line: 343, column: 73, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !1, line: 342, column: 9)
!888 = distinct !DILexicalBlock(scope: !880, file: !1, line: 341, column: 12)
!889 = !DILocation(line: 343, column: 11, scope: !887)
!890 = !DILocation(line: 344, column: 11, scope: !887)
!891 = !DILocation(line: 346, column: 13, scope: !892)
!892 = distinct !DILexicalBlock(scope: !887, file: !1, line: 345, column: 14)
!893 = !DILocation(line: 348, column: 13, scope: !892)
!894 = !DILocation(line: 353, column: 77, scope: !895)
!895 = distinct !DILexicalBlock(scope: !875, file: !1, line: 352, column: 7)
!896 = !DILocation(line: 353, column: 9, scope: !895)
!897 = !DILocation(line: 355, column: 11, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !1, line: 354, column: 12)
!899 = !DILocation(line: 357, column: 11, scope: !898)
!900 = !DILocation(line: 361, column: 1, scope: !47)
!901 = !DILocation(line: 373, column: 6, scope: !902)
!902 = distinct !DILexicalBlock(scope: !55, file: !1, line: 373, column: 6)
!903 = !DILocation(line: 373, column: 13, scope: !902)
!904 = !{!905, !672, i64 3256}
!905 = !{!"", !672, i64 0, !672, i64 4, !672, i64 8, !672, i64 12, !672, i64 16, !672, i64 20, !672, i64 24, !672, i64 28, !672, i64 32, !672, i64 36, !672, i64 40, !672, i64 44, !672, i64 48, !672, i64 52, !672, i64 56, !672, i64 60, !672, i64 64, !672, i64 68, !672, i64 72, !672, i64 76, !673, i64 80, !673, i64 144, !672, i64 208, !672, i64 212, !672, i64 216, !672, i64 220, !673, i64 224, !673, i64 424, !673, i64 624, !673, i64 824, !673, i64 1024, !672, i64 1224, !672, i64 1228, !672, i64 1232, !672, i64 1236, !672, i64 1240, !672, i64 1244, !672, i64 1248, !672, i64 1252, !672, i64 1256, !672, i64 1260, !672, i64 1264, !672, i64 1268, !672, i64 1272, !672, i64 1276, !672, i64 1280, !672, i64 1284, !672, i64 1288, !672, i64 1292, !672, i64 1296, !672, i64 1300, !672, i64 1304, !672, i64 1308, !672, i64 1312, !672, i64 1316, !672, i64 1320, !673, i64 1324, !672, i64 2348, !672, i64 2352, !672, i64 2356, !672, i64 2360, !672, i64 2364, !672, i64 2368, !672, i64 2372, !672, i64 2376, !672, i64 2380, !672, i64 2384, !672, i64 2388, !672, i64 2392, !672, i64 2396, !672, i64 2400, !672, i64 2404, !672, i64 2408, !672, i64 2412, !672, i64 2416, !672, i64 2420, !906, i64 2424, !672, i64 2432, !672, i64 2436, !672, i64 2440, !672, i64 2444, !672, i64 2448, !672, i64 2452, !672, i64 2456, !672, i64 2460, !672, i64 2464, !672, i64 2468, !672, i64 2472, !672, i64 2476, !673, i64 2480, !673, i64 2680, !672, i64 2880, !672, i64 2884, !672, i64 2888, !672, i64 2892, !672, i64 2896, !672, i64 2900, !672, i64 2904, !672, i64 2908, !672, i64 2912, !672, i64 2916, !672, i64 2920, !672, i64 2924, !672, i64 2928, !672, i64 2932, !672, i64 2936, !672, i64 2940, !672, i64 2944, !672, i64 2948, !673, i64 2952, !672, i64 3152, !672, i64 3156, !739, i64 3160, !739, i64 3168, !739, i64 3176, !739, i64 3184, !672, i64 3192, !672, i64 3196, !672, i64 3200, !672, i64 3204, !672, i64 3208, !672, i64 3212, !672, i64 3216, !672, i64 3220, !672, i64 3224, !672, i64 3228, !672, i64 3232, !672, i64 3236, !672, i64 3240, !672, i64 3244, !672, i64 3248, !672, i64 3252, !672, i64 3256, !673, i64 3260, !672, i64 3292, !672, i64 3296, !672, i64 3300, !672, i64 3304, !672, i64 3308, !672, i64 3312, !672, i64 3316, !672, i64 3320, !672, i64 3324, !672, i64 3328, !672, i64 3332, !673, i64 3336, !673, i64 3384, !672, i64 3584}
!906 = !{!"double", !673, i64 0}
!907 = !DILocation(line: 373, column: 6, scope: !55)
!908 = !DILocation(line: 375, column: 41, scope: !909)
!909 = distinct !DILexicalBlock(scope: !902, file: !1, line: 374, column: 3)
!910 = !DILocation(line: 375, column: 5, scope: !909)
!911 = !DILocation(line: 376, column: 36, scope: !909)
!912 = !DILocation(line: 376, column: 15, scope: !909)
!913 = !DILocation(line: 371, column: 9, scope: !55)
!914 = !DILocation(line: 377, column: 15, scope: !915)
!915 = distinct !DILexicalBlock(scope: !909, file: !1, line: 377, column: 8)
!916 = !DILocation(line: 377, column: 8, scope: !909)
!917 = !DILocation(line: 378, column: 28, scope: !915)
!918 = !DILocation(line: 378, column: 7, scope: !915)
!919 = !DILocation(line: 380, column: 7, scope: !915)
!920 = !DILocation(line: 382, column: 5, scope: !909)
!921 = !DILocation(line: 383, column: 5, scope: !909)
!922 = !DILocation(line: 385, column: 5, scope: !909)
!923 = !DILocation(line: 386, column: 72, scope: !909)
!924 = !DILocation(line: 386, column: 38, scope: !909)
!925 = !DILocation(line: 388, column: 5, scope: !909)
!926 = !DILocation(line: 389, column: 3, scope: !909)
!927 = !DILocation(line: 390, column: 1, scope: !55)
!928 = !DILocation(line: 407, column: 7, scope: !58)
!929 = !DILocation(line: 408, column: 7, scope: !58)
!930 = !DILocation(line: 410, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !58, file: !1, line: 410, column: 6)
!932 = !DILocation(line: 410, column: 19, scope: !931)
!933 = !{!934, !673, i64 36}
!934 = !{!"", !673, i64 0, !672, i64 4, !673, i64 8, !673, i64 12, !673, i64 16, !673, i64 20, !672, i64 24, !672, i64 28, !672, i64 32, !673, i64 36, !673, i64 40, !672, i64 72, !672, i64 76, !672, i64 80, !672, i64 84, !672, i64 88, !673, i64 92, !672, i64 96, !672, i64 100, !672, i64 104, !673, i64 108, !672, i64 1132, !673, i64 1136, !672, i64 1140, !672, i64 1144, !673, i64 1148, !673, i64 1152, !673, i64 1156, !673, i64 1160, !672, i64 1164, !672, i64 1168, !672, i64 1172, !672, i64 1176, !673, i64 1180, !935, i64 1184}
!935 = !{!"", !673, i64 0, !672, i64 4, !672, i64 8, !672, i64 12, !673, i64 16, !673, i64 20, !673, i64 24, !672, i64 28, !673, i64 32, !673, i64 36, !672, i64 40, !672, i64 44, !672, i64 48, !673, i64 52, !672, i64 56, !672, i64 60, !673, i64 64, !672, i64 68, !672, i64 72, !673, i64 76, !673, i64 80, !936, i64 84, !673, i64 496, !936, i64 500, !673, i64 912, !673, i64 916, !673, i64 920, !672, i64 924, !672, i64 928, !672, i64 932, !672, i64 936, !672, i64 940, !672, i64 944}
!936 = !{!"", !672, i64 0, !672, i64 4, !672, i64 8, !673, i64 12, !673, i64 140, !673, i64 268, !672, i64 396, !672, i64 400, !672, i64 404, !672, i64 408}
!937 = !DILocation(line: 410, column: 51, scope: !931)
!938 = !DILocation(line: 410, column: 55, scope: !931)
!939 = !DILocation(line: 410, column: 67, scope: !931)
!940 = !{!941, !673, i64 20}
!941 = !{!"", !673, i64 0, !672, i64 4, !672, i64 8, !673, i64 12, !673, i64 16, !673, i64 20, !673, i64 24, !673, i64 56, !672, i64 60, !672, i64 64, !673, i64 68, !673, i64 100, !673, i64 132, !673, i64 164, !672, i64 168, !672, i64 172, !739, i64 176, !672, i64 184, !672, i64 188, !673, i64 192, !672, i64 196, !672, i64 200, !672, i64 204, !672, i64 208, !672, i64 212, !672, i64 216, !673, i64 220, !673, i64 224, !673, i64 228, !673, i64 232}
!942 = !DILocation(line: 410, column: 6, scope: !58)
!943 = !DILocation(line: 414, column: 5, scope: !944)
!944 = distinct !DILexicalBlock(scope: !931, file: !1, line: 413, column: 3)
!945 = !DILocation(line: 416, column: 8, scope: !944)
!946 = !DILocation(line: 418, column: 20, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !1, line: 417, column: 7)
!948 = distinct !DILexicalBlock(scope: !949, file: !1, line: 417, column: 7)
!949 = distinct !DILexicalBlock(scope: !944, file: !1, line: 416, column: 8)
!950 = !DILocation(line: 420, column: 8, scope: !951)
!951 = distinct !DILexicalBlock(scope: !944, file: !1, line: 420, column: 8)
!952 = !DILocation(line: 420, column: 20, scope: !951)
!953 = !DILocation(line: 420, column: 8, scope: !944)
!954 = !DILocation(line: 462, column: 16, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !1, line: 462, column: 14)
!956 = distinct !DILexicalBlock(scope: !957, file: !1, line: 460, column: 9)
!957 = distinct !DILexicalBlock(scope: !958, file: !1, line: 459, column: 9)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 459, column: 9)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 458, column: 7)
!960 = distinct !DILexicalBlock(scope: !961, file: !1, line: 458, column: 7)
!961 = distinct !DILexicalBlock(scope: !962, file: !1, line: 457, column: 5)
!962 = distinct !DILexicalBlock(scope: !963, file: !1, line: 457, column: 5)
!963 = distinct !DILexicalBlock(scope: !964, file: !1, line: 456, column: 3)
!964 = distinct !DILexicalBlock(scope: !58, file: !1, line: 430, column: 6)
!965 = !DILocation(line: 462, column: 31, scope: !955)
!966 = !DILocation(line: 462, column: 28, scope: !955)
!967 = !DILocation(line: 473, column: 15, scope: !968)
!968 = distinct !DILexicalBlock(scope: !956, file: !1, line: 473, column: 14)
!969 = !DILocation(line: 484, column: 15, scope: !970)
!970 = distinct !DILexicalBlock(scope: !956, file: !1, line: 484, column: 14)
!971 = !DILocation(line: 495, column: 16, scope: !972)
!972 = distinct !DILexicalBlock(scope: !956, file: !1, line: 495, column: 14)
!973 = !DILocation(line: 495, column: 31, scope: !972)
!974 = !DILocation(line: 495, column: 28, scope: !972)
!975 = !DILocation(line: 506, column: 15, scope: !976)
!976 = distinct !DILexicalBlock(scope: !956, file: !1, line: 506, column: 14)
!977 = !DILocation(line: 517, column: 15, scope: !978)
!978 = distinct !DILexicalBlock(scope: !956, file: !1, line: 517, column: 14)
!979 = !DILocation(line: 524, column: 82, scope: !980)
!980 = distinct !DILexicalBlock(scope: !978, file: !1, line: 523, column: 11)
!981 = !DILocation(line: 513, column: 82, scope: !982)
!982 = distinct !DILexicalBlock(scope: !976, file: !1, line: 512, column: 11)
!983 = !DILocation(line: 491, column: 82, scope: !984)
!984 = distinct !DILexicalBlock(scope: !970, file: !1, line: 490, column: 11)
!985 = !DILocation(line: 480, column: 82, scope: !986)
!986 = distinct !DILexicalBlock(scope: !968, file: !1, line: 479, column: 11)
!987 = !DILocation(line: 457, column: 5, scope: !962)
!988 = !DILocation(line: 424, column: 25, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !1, line: 423, column: 12)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 422, column: 7)
!991 = distinct !DILexicalBlock(scope: !992, file: !1, line: 421, column: 7)
!992 = distinct !DILexicalBlock(scope: !951, file: !1, line: 421, column: 7)
!993 = !DILocation(line: 424, column: 11, scope: !989)
!994 = !DILocation(line: 423, column: 19, scope: !989)
!995 = !DILocation(line: 424, column: 22, scope: !989)
!996 = !DILocation(line: 421, column: 7, scope: !992)
!997 = !DILocation(line: 433, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !1, line: 433, column: 7)
!999 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 432, column: 5)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 432, column: 5)
!1001 = distinct !DILexicalBlock(scope: !964, file: !1, line: 431, column: 3)
!1002 = !DILocation(line: 436, column: 52, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 435, column: 9)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 434, column: 9)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 434, column: 9)
!1006 = distinct !DILexicalBlock(scope: !998, file: !1, line: 433, column: 7)
!1007 = !DILocation(line: 445, column: 52, scope: !1003)
!1008 = !DILocation(line: 434, column: 9, scope: !1005)
!1009 = !DILocation(line: 436, column: 54, scope: !1003)
!1010 = !DILocation(line: 437, column: 54, scope: !1003)
!1011 = !DILocation(line: 437, column: 75, scope: !1003)
!1012 = !DILocation(line: 437, column: 11, scope: !1003)
!1013 = !DILocation(line: 437, column: 52, scope: !1003)
!1014 = !DILocation(line: 439, column: 54, scope: !1003)
!1015 = !DILocation(line: 439, column: 11, scope: !1003)
!1016 = !DILocation(line: 439, column: 52, scope: !1003)
!1017 = !DILocation(line: 440, column: 11, scope: !1003)
!1018 = !DILocation(line: 440, column: 52, scope: !1003)
!1019 = !DILocation(line: 442, column: 11, scope: !1003)
!1020 = !DILocation(line: 442, column: 52, scope: !1003)
!1021 = !DILocation(line: 443, column: 11, scope: !1003)
!1022 = !DILocation(line: 443, column: 52, scope: !1003)
!1023 = !DILocation(line: 446, column: 11, scope: !1003)
!1024 = !DILocation(line: 446, column: 52, scope: !1003)
!1025 = !DILocation(line: 448, column: 11, scope: !1003)
!1026 = !DILocation(line: 448, column: 52, scope: !1003)
!1027 = !DILocation(line: 449, column: 11, scope: !1003)
!1028 = !DILocation(line: 449, column: 52, scope: !1003)
!1029 = !DILocation(line: 451, column: 11, scope: !1003)
!1030 = !DILocation(line: 451, column: 52, scope: !1003)
!1031 = !DILocation(line: 452, column: 11, scope: !1003)
!1032 = !DILocation(line: 452, column: 52, scope: !1003)
!1033 = !DILocation(line: 432, column: 5, scope: !1000)
!1034 = !DILocation(line: 458, column: 7, scope: !960)
!1035 = !DILocation(line: 459, column: 9, scope: !958)
!1036 = !DILocation(line: 461, column: 20, scope: !956)
!1037 = !DILocation(line: 461, column: 24, scope: !956)
!1038 = !DILocation(line: 469, column: 57, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !955, file: !1, line: 468, column: 11)
!1040 = !DILocation(line: 469, column: 76, scope: !1039)
!1041 = !DILocation(line: 464, column: 81, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !955, file: !1, line: 463, column: 11)
!1043 = !DILocation(line: 466, column: 11, scope: !1042)
!1044 = !DILocation(line: 469, column: 81, scope: !1039)
!1045 = !DILocation(line: 470, column: 77, scope: !1039)
!1046 = !DILocation(line: 469, column: 80, scope: !1039)
!1047 = !DILocation(line: 469, column: 13, scope: !1039)
!1048 = !DILocation(line: 470, column: 13, scope: !1039)
!1049 = !DILocation(line: 473, column: 14, scope: !956)
!1050 = !DILocation(line: 475, column: 13, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !968, file: !1, line: 474, column: 11)
!1052 = !DILocation(line: 475, column: 54, scope: !1051)
!1053 = !DILocation(line: 476, column: 13, scope: !1051)
!1054 = !DILocation(line: 476, column: 54, scope: !1051)
!1055 = !DILocation(line: 477, column: 11, scope: !1051)
!1056 = !DILocation(line: 480, column: 118, scope: !986)
!1057 = !DILocation(line: 480, column: 80, scope: !986)
!1058 = !DILocation(line: 480, column: 13, scope: !986)
!1059 = !DILocation(line: 480, column: 54, scope: !986)
!1060 = !DILocation(line: 481, column: 115, scope: !986)
!1061 = !DILocation(line: 481, column: 79, scope: !986)
!1062 = !DILocation(line: 480, column: 144, scope: !986)
!1063 = !DILocation(line: 481, column: 141, scope: !986)
!1064 = !DILocation(line: 481, column: 77, scope: !986)
!1065 = !DILocation(line: 481, column: 13, scope: !986)
!1066 = !DILocation(line: 481, column: 54, scope: !986)
!1067 = !DILocation(line: 484, column: 14, scope: !956)
!1068 = !DILocation(line: 486, column: 13, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !970, file: !1, line: 485, column: 11)
!1070 = !DILocation(line: 486, column: 54, scope: !1069)
!1071 = !DILocation(line: 487, column: 13, scope: !1069)
!1072 = !DILocation(line: 487, column: 54, scope: !1069)
!1073 = !DILocation(line: 488, column: 11, scope: !1069)
!1074 = !DILocation(line: 491, column: 118, scope: !984)
!1075 = !DILocation(line: 491, column: 80, scope: !984)
!1076 = !DILocation(line: 491, column: 13, scope: !984)
!1077 = !DILocation(line: 491, column: 54, scope: !984)
!1078 = !DILocation(line: 492, column: 115, scope: !984)
!1079 = !DILocation(line: 492, column: 79, scope: !984)
!1080 = !DILocation(line: 491, column: 144, scope: !984)
!1081 = !DILocation(line: 492, column: 141, scope: !984)
!1082 = !DILocation(line: 492, column: 77, scope: !984)
!1083 = !DILocation(line: 492, column: 13, scope: !984)
!1084 = !DILocation(line: 492, column: 54, scope: !984)
!1085 = !DILocation(line: 497, column: 81, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !972, file: !1, line: 496, column: 11)
!1087 = !DILocation(line: 499, column: 11, scope: !1086)
!1088 = !DILocation(line: 502, column: 81, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !972, file: !1, line: 501, column: 11)
!1090 = !DILocation(line: 503, column: 77, scope: !1089)
!1091 = !DILocation(line: 502, column: 80, scope: !1089)
!1092 = !DILocation(line: 502, column: 13, scope: !1089)
!1093 = !DILocation(line: 503, column: 13, scope: !1089)
!1094 = !DILocation(line: 506, column: 14, scope: !956)
!1095 = !DILocation(line: 508, column: 13, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !976, file: !1, line: 507, column: 11)
!1097 = !DILocation(line: 508, column: 54, scope: !1096)
!1098 = !DILocation(line: 509, column: 13, scope: !1096)
!1099 = !DILocation(line: 509, column: 54, scope: !1096)
!1100 = !DILocation(line: 510, column: 11, scope: !1096)
!1101 = !DILocation(line: 513, column: 118, scope: !982)
!1102 = !DILocation(line: 513, column: 80, scope: !982)
!1103 = !DILocation(line: 513, column: 13, scope: !982)
!1104 = !DILocation(line: 513, column: 54, scope: !982)
!1105 = !DILocation(line: 514, column: 115, scope: !982)
!1106 = !DILocation(line: 514, column: 79, scope: !982)
!1107 = !DILocation(line: 513, column: 144, scope: !982)
!1108 = !DILocation(line: 514, column: 141, scope: !982)
!1109 = !DILocation(line: 514, column: 77, scope: !982)
!1110 = !DILocation(line: 514, column: 13, scope: !982)
!1111 = !DILocation(line: 514, column: 54, scope: !982)
!1112 = !DILocation(line: 517, column: 14, scope: !956)
!1113 = !DILocation(line: 519, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !978, file: !1, line: 518, column: 11)
!1115 = !DILocation(line: 519, column: 54, scope: !1114)
!1116 = !DILocation(line: 520, column: 13, scope: !1114)
!1117 = !DILocation(line: 520, column: 54, scope: !1114)
!1118 = !DILocation(line: 521, column: 11, scope: !1114)
!1119 = !DILocation(line: 524, column: 118, scope: !980)
!1120 = !DILocation(line: 524, column: 80, scope: !980)
!1121 = !DILocation(line: 524, column: 13, scope: !980)
!1122 = !DILocation(line: 524, column: 54, scope: !980)
!1123 = !DILocation(line: 525, column: 115, scope: !980)
!1124 = !DILocation(line: 525, column: 79, scope: !980)
!1125 = !DILocation(line: 524, column: 144, scope: !980)
!1126 = !DILocation(line: 525, column: 141, scope: !980)
!1127 = !DILocation(line: 525, column: 77, scope: !980)
!1128 = !DILocation(line: 525, column: 13, scope: !980)
!1129 = !DILocation(line: 525, column: 54, scope: !980)
!1130 = !DILocation(line: 529, column: 1, scope: !58)
!1131 = !DILocation(line: 548, column: 5, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 547, column: 3)
!1133 = distinct !DILexicalBlock(scope: !69, file: !1, line: 544, column: 6)
!1134 = !DILocation(line: 541, column: 7, scope: !69)
!1135 = !DILocation(line: 542, column: 7, scope: !69)
!1136 = !DILocation(line: 544, column: 7, scope: !1133)
!1137 = !DILocation(line: 544, column: 19, scope: !1133)
!1138 = !DILocation(line: 544, column: 51, scope: !1133)
!1139 = !DILocation(line: 544, column: 55, scope: !1133)
!1140 = !DILocation(line: 544, column: 67, scope: !1133)
!1141 = !DILocation(line: 544, column: 6, scope: !69)
!1142 = !DILocation(line: 552, column: 20, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 551, column: 7)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 551, column: 7)
!1145 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 550, column: 8)
!1146 = !DILocation(line: 554, column: 8, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 554, column: 8)
!1148 = !DILocation(line: 554, column: 20, scope: !1147)
!1149 = !DILocation(line: 554, column: 8, scope: !1132)
!1150 = !DILocation(line: 579, column: 16, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 579, column: 14)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 577, column: 9)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 576, column: 9)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 576, column: 9)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 575, column: 7)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 575, column: 7)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 574, column: 5)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 574, column: 5)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 573, column: 3)
!1160 = distinct !DILexicalBlock(scope: !69, file: !1, line: 559, column: 6)
!1161 = !DILocation(line: 579, column: 31, scope: !1151)
!1162 = !DILocation(line: 579, column: 28, scope: !1151)
!1163 = !DILocation(line: 590, column: 16, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 590, column: 14)
!1165 = !DILocation(line: 590, column: 31, scope: !1164)
!1166 = !DILocation(line: 590, column: 28, scope: !1164)
!1167 = !DILocation(line: 574, column: 5, scope: !1158)
!1168 = !DILocation(line: 556, column: 66, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !1, line: 555, column: 7)
!1170 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 555, column: 7)
!1171 = !DILocation(line: 556, column: 23, scope: !1169)
!1172 = !DILocation(line: 556, column: 9, scope: !1169)
!1173 = !DILocation(line: 556, column: 20, scope: !1169)
!1174 = !DILocation(line: 555, column: 7, scope: !1170)
!1175 = !DILocation(line: 562, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 562, column: 7)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 561, column: 5)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 561, column: 5)
!1179 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 560, column: 3)
!1180 = !DILocation(line: 565, column: 52, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 564, column: 9)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 563, column: 9)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 563, column: 9)
!1184 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 562, column: 7)
!1185 = !DILocation(line: 568, column: 52, scope: !1181)
!1186 = !DILocation(line: 563, column: 9, scope: !1183)
!1187 = !DILocation(line: 566, column: 54, scope: !1181)
!1188 = !DILocation(line: 566, column: 76, scope: !1181)
!1189 = !DILocation(line: 566, column: 11, scope: !1181)
!1190 = !DILocation(line: 566, column: 52, scope: !1181)
!1191 = !DILocation(line: 569, column: 11, scope: !1181)
!1192 = !DILocation(line: 569, column: 52, scope: !1181)
!1193 = !DILocation(line: 561, column: 5, scope: !1178)
!1194 = !DILocation(line: 575, column: 7, scope: !1156)
!1195 = !DILocation(line: 576, column: 9, scope: !1154)
!1196 = !DILocation(line: 578, column: 20, scope: !1152)
!1197 = !DILocation(line: 578, column: 24, scope: !1152)
!1198 = !DILocation(line: 586, column: 52, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 585, column: 11)
!1200 = !DILocation(line: 586, column: 72, scope: !1199)
!1201 = !DILocation(line: 581, column: 77, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 580, column: 11)
!1203 = !DILocation(line: 583, column: 11, scope: !1202)
!1204 = !DILocation(line: 586, column: 77, scope: !1199)
!1205 = !DILocation(line: 587, column: 73, scope: !1199)
!1206 = !DILocation(line: 586, column: 76, scope: !1199)
!1207 = !DILocation(line: 586, column: 13, scope: !1199)
!1208 = !DILocation(line: 587, column: 13, scope: !1199)
!1209 = !DILocation(line: 592, column: 77, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 591, column: 11)
!1211 = !DILocation(line: 594, column: 11, scope: !1210)
!1212 = !DILocation(line: 597, column: 77, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 596, column: 11)
!1214 = !DILocation(line: 593, column: 73, scope: !1210)
!1215 = !DILocation(line: 592, column: 76, scope: !1210)
!1216 = !DILocation(line: 592, column: 13, scope: !1210)
!1217 = !DILocation(line: 593, column: 13, scope: !1210)
!1218 = !DILocation(line: 602, column: 1, scope: !69)
