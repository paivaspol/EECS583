; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

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
@Quant_inter_default = internal unnamed_addr constant [16 x i16] [i16 10, i16 14, i16 20, i16 24, i16 14, i16 20, i16 24, i16 27, i16 20, i16 24, i16 27, i16 30, i16 24, i16 27, i16 30, i16 34], align 16
@Quant_intra_default = internal unnamed_addr constant [16 x i16] [i16 6, i16 13, i16 20, i16 28, i16 13, i16 20, i16 28, i16 32, i16 20, i16 28, i16 32, i16 37, i16 28, i16 32, i16 37, i16 42], align 16
@.str8 = private unnamed_addr constant [57 x i8] c"\0A%s matrix definition not found. Setting default values.\00", align 1
@Quant8_inter_default = internal unnamed_addr constant [64 x i16] [i16 9, i16 13, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 13, i16 13, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 35], align 16
@Quant8_intra_default = internal unnamed_addr constant [64 x i16] [i16 6, i16 10, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 10, i16 11, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 42], align 16
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
define i32 @CheckParameterName(i8* nocapture %s, i32* nocapture %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !19), !dbg !656
  tail call void @llvm.dbg.value(metadata !{i32* %type}, i64 0, metadata !20), !dbg !656
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !21), !dbg !657
  store i32 0, i32* %type, align 4, !dbg !658, !tbaa !659
  br label %while.body, !dbg !662

while.cond:                                       ; preds = %while.body
  %inc = add nsw i32 %i.039, 1, !dbg !663
  %arraydecay = getelementptr inbounds [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %indvars.iv.next43, i64 0, !dbg !662
  %cmp = icmp ne i8* %arraydecay, null, !dbg !662
  %0 = trunc i64 %indvars.iv.next43 to i32, !dbg !662
  %cmp1 = icmp slt i32 %0, 6, !dbg !662
  %or.cond = and i1 %cmp, %cmp1, !dbg !662
  br i1 %or.cond, label %while.body, label %while.end, !dbg !662

while.body:                                       ; preds = %entry, %while.cond
  %indvars.iv42 = phi i64 [ 0, %entry ], [ %indvars.iv.next43, %while.cond ]
  %arraydecay40 = phi i8* [ getelementptr inbounds ([6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 0, i64 0), %entry ], [ %arraydecay, %while.cond ]
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %while.cond ]
  %call = tail call i32 @strcmp(i8* %arraydecay40, i8* %s) #6, !dbg !665
  %cmp5 = icmp eq i32 %call, 0, !dbg !665
  %indvars.iv.next43 = add i64 %indvars.iv42, 1, !dbg !662
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !21), !dbg !663
  br i1 %cmp5, label %return, label %while.cond, !dbg !665

while.end:                                        ; preds = %while.cond
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !21), !dbg !666
  store i32 1, i32* %type, align 4, !dbg !667, !tbaa !659
  br label %while.body14, !dbg !668

while.cond6:                                      ; preds = %while.body14
  %inc22 = add nsw i32 %i.135, 1, !dbg !669
  %arraydecay9 = getelementptr inbounds [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %indvars.iv.next, i64 0, !dbg !668
  %cmp10 = icmp ne i8* %arraydecay9, null, !dbg !668
  %1 = trunc i64 %indvars.iv.next to i32, !dbg !668
  %cmp12 = icmp slt i32 %1, 2, !dbg !668
  %or.cond34 = and i1 %cmp10, %cmp12, !dbg !668
  br i1 %or.cond34, label %while.body14, label %return, !dbg !668

while.body14:                                     ; preds = %while.end, %while.cond6
  %indvars.iv = phi i64 [ 0, %while.end ], [ %indvars.iv.next, %while.cond6 ]
  %arraydecay936 = phi i8* [ getelementptr inbounds ([2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 0, i64 0), %while.end ], [ %arraydecay9, %while.cond6 ]
  %i.135 = phi i32 [ 0, %while.end ], [ %inc22, %while.cond6 ]
  %call18 = tail call i32 @strcmp(i8* %arraydecay936, i8* %s) #6, !dbg !671
  %cmp19 = icmp eq i32 %call18, 0, !dbg !671
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !668
  tail call void @llvm.dbg.value(metadata !{i32 %inc22}, i64 0, metadata !21), !dbg !669
  br i1 %cmp19, label %return, label %while.cond6, !dbg !671

return:                                           ; preds = %while.body, %while.cond6, %while.body14
  %retval.0 = phi i32 [ -1, %while.cond6 ], [ %i.135, %while.body14 ], [ %i.039, %while.body ]
  ret i32 %retval.0, !dbg !672
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @ParseMatrix(i8* %buf, i32 %bufsize) #0 {
entry:
  %items = alloca [1000 x i8*], align 16
  %IntContent = alloca i32, align 4
  %type = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !26), !dbg !673
  call void @llvm.dbg.value(metadata !{i32 %bufsize}, i64 0, metadata !27), !dbg !673
  %0 = bitcast [1000 x i8*]* %items to i8*, !dbg !674
  call void @llvm.lifetime.start(i64 8000, i8* %0) #3, !dbg !674
  call void @llvm.dbg.declare(metadata !{[1000 x i8*]* %items}, metadata !28), !dbg !674
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !33), !dbg !675
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !34), !dbg !676
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !35), !dbg !676
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !36), !dbg !677
  %idxprom = sext i32 %bufsize to i64, !dbg !678
  %arrayidx = getelementptr inbounds i8* %buf, i64 %idxprom, !dbg !678
  call void @llvm.dbg.value(metadata !{i8* %arrayidx}, i64 0, metadata !37), !dbg !678
  call void @llvm.dbg.declare(metadata !{i32* %IntContent}, metadata !38), !dbg !679
  call void @llvm.dbg.declare(metadata !{i32* %type}, metadata !42), !dbg !680
  %cmp147 = icmp sgt i32 %bufsize, 0, !dbg !681
  br i1 %cmp147, label %while.body, label %for.end98, !dbg !681

while.body:                                       ; preds = %while.cond.backedge, %entry
  %item.0151 = phi i32 [ 0, %entry ], [ %item.0.be, %while.cond.backedge ]
  %p.0150 = phi i8* [ %buf, %entry ], [ %p.0.be, %while.cond.backedge ]
  %InItem.0149 = phi i32 [ 0, %entry ], [ %InItem.0.be, %while.cond.backedge ]
  %InString.0148 = phi i32 [ 0, %entry ], [ %InString.0.be, %while.cond.backedge ]
  %1 = load i8* %p.0150, align 1, !dbg !682, !tbaa !660
  %conv = sext i8 %1 to i32, !dbg !682
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 35, label %sw.bb1
    i32 10, label %sw.bb10
    i32 32, label %sw.bb12
    i32 9, label %sw.bb12
    i32 34, label %sw.bb15
    i32 44, label %sw.bb24
  ], !dbg !682

sw.bb:                                            ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %p.0150, i64 1, !dbg !684
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !36), !dbg !684
  br label %while.cond.backedge, !dbg !686

sw.bb1:                                           ; preds = %while.body
  store i8 0, i8* %p.0150, align 1, !dbg !687, !tbaa !660
  br label %while.cond2, !dbg !688

while.cond2:                                      ; preds = %while.cond2.while.cond2_crit_edge, %sw.bb1
  %2 = phi i1 [ true, %sw.bb1 ], [ %phitmp, %while.cond2.while.cond2_crit_edge ]
  %p.1 = phi i8* [ %p.0150, %sw.bb1 ], [ %incdec.ptr9, %while.cond2.while.cond2_crit_edge ]
  %cmp6 = icmp ult i8* %p.1, %arrayidx, !dbg !688
  %or.cond = and i1 %2, %cmp6, !dbg !688
  %incdec.ptr9 = getelementptr inbounds i8* %p.1, i64 1, !dbg !689
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr9}, i64 0, metadata !36), !dbg !689
  br i1 %or.cond, label %while.cond2.while.cond2_crit_edge, label %while.cond.backedge, !dbg !688

while.cond2.while.cond2_crit_edge:                ; preds = %while.cond2
  %.pre = load i8* %incdec.ptr9, align 1, !dbg !688, !tbaa !660
  %phitmp = icmp ne i8 %.pre, 10, !dbg !688
  br label %while.cond2, !dbg !688

sw.bb10:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !35), !dbg !690
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !34), !dbg !691
  %incdec.ptr11 = getelementptr inbounds i8* %p.0150, i64 1, !dbg !692
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr11}, i64 0, metadata !36), !dbg !692
  store i8 0, i8* %p.0150, align 1, !dbg !692, !tbaa !660
  br label %while.cond.backedge, !dbg !693

sw.bb12:                                          ; preds = %while.body, %while.body
  %tobool = icmp eq i32 %InString.0148, 0, !dbg !694
  %incdec.ptr13 = getelementptr inbounds i8* %p.0150, i64 1, !dbg !695
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr13}, i64 0, metadata !36), !dbg !695
  br i1 %tobool, label %if.else, label %while.cond.backedge, !dbg !694

if.else:                                          ; preds = %sw.bb12
  store i8 0, i8* %p.0150, align 1, !dbg !696, !tbaa !660
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !35), !dbg !698
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond2, %if.else, %if.end32, %sw.bb24, %if.end22, %sw.bb10, %sw.bb, %sw.bb12
  %InString.0.be = phi i32 [ %InString.0148, %if.end32 ], [ %InString.0148, %sw.bb24 ], [ %neg23, %if.end22 ], [ %InString.0148, %sw.bb12 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ %InString.0148, %sw.bb ], [ 0, %while.cond2 ]
  %InItem.0.be = phi i32 [ %InItem.2, %if.end32 ], [ 0, %sw.bb24 ], [ %InItem.1, %if.end22 ], [ %InItem.0149, %sw.bb12 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ %InItem.0149, %sw.bb ], [ 0, %while.cond2 ]
  %p.0.be = phi i8* [ %incdec.ptr33, %if.end32 ], [ %incdec.ptr25, %sw.bb24 ], [ %incdec.ptr16, %if.end22 ], [ %incdec.ptr13, %sw.bb12 ], [ %incdec.ptr13, %if.else ], [ %incdec.ptr11, %sw.bb10 ], [ %incdec.ptr, %sw.bb ], [ %p.1, %while.cond2 ]
  %item.0.be = phi i32 [ %item.2, %if.end32 ], [ %item.0151, %sw.bb24 ], [ %item.1, %if.end22 ], [ %item.0151, %sw.bb12 ], [ %item.0151, %if.else ], [ %item.0151, %sw.bb10 ], [ %item.0151, %sw.bb ], [ %item.0151, %while.cond2 ]
  %cmp = icmp ult i8* %p.0.be, %arrayidx, !dbg !681
  br i1 %cmp, label %while.body, label %while.end34, !dbg !681

sw.bb15:                                          ; preds = %while.body
  %incdec.ptr16 = getelementptr inbounds i8* %p.0150, i64 1, !dbg !699
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr16}, i64 0, metadata !36), !dbg !699
  store i8 0, i8* %p.0150, align 1, !dbg !699, !tbaa !660
  %tobool17 = icmp eq i32 %InString.0148, 0, !dbg !700
  br i1 %tobool17, label %if.then18, label %if.end22, !dbg !700

if.then18:                                        ; preds = %sw.bb15
  %inc = add nsw i32 %item.0151, 1, !dbg !701
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !33), !dbg !701
  %idxprom19 = sext i32 %item.0151 to i64, !dbg !701
  %arrayidx20 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom19, !dbg !701
  store i8* %incdec.ptr16, i8** %arrayidx20, align 8, !dbg !701, !tbaa !703
  %neg = xor i32 %InItem.0149, -1, !dbg !704
  call void @llvm.dbg.value(metadata !{i32 %neg}, i64 0, metadata !35), !dbg !704
  br label %if.end22, !dbg !705

if.end22:                                         ; preds = %sw.bb15, %if.then18
  %InItem.1 = phi i32 [ %neg, %if.then18 ], [ 0, %sw.bb15 ]
  %item.1 = phi i32 [ %inc, %if.then18 ], [ %item.0151, %sw.bb15 ]
  %neg23 = xor i32 %InString.0148, -1, !dbg !706
  call void @llvm.dbg.value(metadata !{i32 %neg23}, i64 0, metadata !34), !dbg !706
  br label %while.cond.backedge, !dbg !707

sw.bb24:                                          ; preds = %while.body
  %incdec.ptr25 = getelementptr inbounds i8* %p.0150, i64 1, !dbg !708
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr25}, i64 0, metadata !36), !dbg !708
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !35), !dbg !709
  br label %while.cond.backedge, !dbg !710

sw.default:                                       ; preds = %while.body
  %tobool26 = icmp eq i32 %InItem.0149, 0, !dbg !711
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !711

if.then27:                                        ; preds = %sw.default
  %inc28 = add nsw i32 %item.0151, 1, !dbg !712
  call void @llvm.dbg.value(metadata !{i32 %inc28}, i64 0, metadata !33), !dbg !712
  %idxprom29 = sext i32 %item.0151 to i64, !dbg !712
  %arrayidx30 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom29, !dbg !712
  store i8* %p.0150, i8** %arrayidx30, align 8, !dbg !712, !tbaa !703
  call void @llvm.dbg.value(metadata !714, i64 0, metadata !35), !dbg !715
  br label %if.end32, !dbg !716

if.end32:                                         ; preds = %sw.default, %if.then27
  %InItem.2 = phi i32 [ %InItem.0149, %sw.default ], [ -1, %if.then27 ]
  %item.2 = phi i32 [ %item.0151, %sw.default ], [ %inc28, %if.then27 ]
  %incdec.ptr33 = getelementptr inbounds i8* %p.0150, i64 1, !dbg !717
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr33}, i64 0, metadata !36), !dbg !717
  br label %while.cond.backedge, !dbg !718

while.end34:                                      ; preds = %while.cond.backedge
  %dec = add nsw i32 %item.0.be, -1, !dbg !719
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !33), !dbg !719
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !39), !dbg !720
  %cmp35145 = icmp sgt i32 %dec, 0, !dbg !720
  br i1 %cmp35145, label %for.body, label %for.end98, !dbg !720

for.body:                                         ; preds = %while.end34, %for.end
  %i.0146 = phi i32 [ %add97, %for.end ], [ 0, %while.end34 ]
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !43), !dbg !722
  %idxprom37 = sext i32 %i.0146 to i64, !dbg !724
  %arrayidx38 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom37, !dbg !724
  %3 = load i8** %arrayidx38, align 8, !dbg !724, !tbaa !703
  %call = call i32 @CheckParameterName(i8* %3, i32* %type) #7, !dbg !724
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !32), !dbg !724
  %cmp39 = icmp slt i32 %call, 0, !dbg !724
  br i1 %cmp39, label %if.then41, label %if.end46, !dbg !724

if.then41:                                        ; preds = %for.body
  %call45 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), i8* %3) #8, !dbg !725
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #8, !dbg !727
  br label %if.end46, !dbg !728

if.end46:                                         ; preds = %if.then41, %for.body
  call void @llvm.dbg.value(metadata !729, i64 0, metadata !43), !dbg !730
  %add48 = add nsw i32 %i.0146, 1, !dbg !731
  %idxprom49 = sext i32 %add48 to i64, !dbg !731
  %arrayidx50 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom49, !dbg !731
  %4 = load i8** %arrayidx50, align 8, !dbg !731, !tbaa !703
  %call51 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i8* %4) #6, !dbg !731
  %tobool52 = icmp eq i32 %call51, 0, !dbg !731
  br i1 %tobool52, label %if.end55, label %if.then53, !dbg !731

if.then53:                                        ; preds = %if.end46
  %call54 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([78 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !732
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #8, !dbg !734
  br label %if.end55, !dbg !735

if.end55:                                         ; preds = %if.end46, %if.then53
  call void @llvm.dbg.value(metadata !736, i64 0, metadata !43), !dbg !737
  call void @llvm.dbg.value(metadata !{i32* %type}, i64 0, metadata !42), !dbg !738
  %5 = load i32* %type, align 4, !dbg !738, !tbaa !659
  %tobool57 = icmp eq i32 %5, 0, !dbg !738
  %idxprom59 = sext i32 %call to i64, !dbg !739
  br i1 %tobool57, label %if.then58, label %if.else63, !dbg !738

if.then58:                                        ; preds = %if.end55
  call void @llvm.dbg.value(metadata !741, i64 0, metadata !41), !dbg !742
  %arraydecay = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %idxprom59, i64 0, !dbg !739
  call void @llvm.dbg.value(metadata !{i16* %arraydecay}, i64 0, metadata !44), !dbg !739
  %arrayidx62 = getelementptr inbounds [6 x i32]* @matrix4x4_check, i64 0, i64 %idxprom59, !dbg !743
  store i32 1, i32* %arrayidx62, align 4, !dbg !743, !tbaa !659
  br label %if.end69, !dbg !744

if.else63:                                        ; preds = %if.end55
  call void @llvm.dbg.value(metadata !745, i64 0, metadata !41), !dbg !746
  %arraydecay66 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %idxprom59, i64 0, !dbg !748
  call void @llvm.dbg.value(metadata !{i16* %arraydecay66}, i64 0, metadata !44), !dbg !748
  %arrayidx68 = getelementptr inbounds [2 x i32]* @matrix8x8_check, i64 0, i64 %idxprom59, !dbg !749
  store i32 1, i32* %arrayidx68, align 4, !dbg !749, !tbaa !659
  br label %if.end69

if.end69:                                         ; preds = %if.else63, %if.then58
  %range.0 = phi i32 [ 64, %if.else63 ], [ 16, %if.then58 ]
  %ScalingList.0 = phi i16* [ %arraydecay66, %if.else63 ], [ %arraydecay, %if.then58 ]
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !40), !dbg !750
  %add74 = add i32 %i.0146, 2, !dbg !752
  %6 = sext i32 %add74 to i64, !dbg !750
  br label %for.body73, !dbg !750

for.body73:                                       ; preds = %if.end69, %if.end89
  %indvars.iv = phi i64 [ 0, %if.end69 ], [ %indvars.iv.next, %if.end89 ]
  %7 = add nsw i64 %6, %indvars.iv, !dbg !752
  %arrayidx77 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %7, !dbg !752
  %8 = load i8** %arrayidx77, align 8, !dbg !752, !tbaa !703
  %call78 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i32* %IntContent) #8, !dbg !752
  %cmp79 = icmp eq i32 %call78, 1, !dbg !752
  br i1 %cmp79, label %if.end89, label %if.then81, !dbg !752

if.then81:                                        ; preds = %for.body73
  %call88 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([74 x i8]* @.str4, i64 0, i64 0), i8* %3, i8* %8) #8, !dbg !754
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #8, !dbg !756
  br label %if.end89, !dbg !757

if.end89:                                         ; preds = %for.body73, %if.then81
  call void @llvm.dbg.value(metadata !{i32* %IntContent}, i64 0, metadata !38), !dbg !758
  %9 = load i32* %IntContent, align 4, !dbg !758, !tbaa !659
  %conv90 = trunc i32 %9 to i16, !dbg !758
  %arrayidx92 = getelementptr inbounds i16* %ScalingList.0, i64 %indvars.iv, !dbg !758
  store i16 %conv90, i16* %arrayidx92, align 2, !dbg !758, !tbaa !759
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !750
  call void @llvm.dbg.value(metadata !{i32 %range.0}, i64 0, metadata !40), !dbg !750
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !750
  %cmp71 = icmp slt i32 %10, %range.0, !dbg !750
  br i1 %cmp71, label %for.body73, label %for.end, !dbg !750

for.end:                                          ; preds = %if.end89
  call void @llvm.dbg.value(metadata !{i32 %add74}, i64 0, metadata !43), !dbg !760
  %putchar = call i32 @putchar(i32 46) #3, !dbg !761
  %add97 = add i32 %add74, %range.0, !dbg !720
  call void @llvm.dbg.value(metadata !{i32 %add97}, i64 0, metadata !39), !dbg !720
  %cmp35 = icmp slt i32 %add97, %dec, !dbg !720
  br i1 %cmp35, label %for.body, label %for.end98, !dbg !720

for.end98:                                        ; preds = %entry, %for.end, %while.end34
  call void @llvm.lifetime.end(i64 8000, i8* %0) #3, !dbg !762
  ret void, !dbg !762
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @error(i8*, i32) #5

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @PatchMatrix() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !52), !dbg !763
  br label %for.body, !dbg !763

for.body:                                         ; preds = %for.inc102, %entry
  %indvars.iv144 = phi i64 [ 0, %entry ], [ %indvars.iv.next145, %for.inc102 ]
  %0 = load %struct.InputParameters** @input, align 8, !dbg !765, !tbaa !703
  %arrayidx = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 133, i64 %indvars.iv144, !dbg !765
  %1 = load i32* %arrayidx, align 4, !dbg !765, !tbaa !659
  %tobool = icmp eq i32 %1, 0, !dbg !765
  br i1 %tobool, label %if.end42, label %if.then, !dbg !765

if.then:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %indvars.iv144, i64 0, !dbg !767
  tail call void @llvm.dbg.value(metadata !{i16* %arraydecay}, i64 0, metadata !51), !dbg !767
  %arrayidx4 = getelementptr inbounds [6 x i32]* @matrix4x4_check, i64 0, i64 %indvars.iv144, !dbg !769
  %2 = load i32* %arrayidx4, align 4, !dbg !769, !tbaa !659
  %tobool5 = icmp eq i32 %2, 0, !dbg !769
  br i1 %tobool5, label %if.else31, label %for.body9, !dbg !769

for.cond7:                                        ; preds = %for.body9
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !770
  %cmp8 = icmp slt i32 %3, 16, !dbg !770
  br i1 %cmp8, label %for.body9, label %if.end42, !dbg !770

for.body9:                                        ; preds = %if.then, %for.cond7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond7 ], [ 0, %if.then ]
  %arrayidx11 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %indvars.iv144, i64 %indvars.iv, !dbg !773
  %4 = load i16* %arrayidx11, align 2, !dbg !773, !tbaa !759
  %5 = icmp ugt i16 %4, 255, !dbg !773
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !770
  br i1 %5, label %if.then21, label %for.cond7, !dbg !773

if.then21:                                        ; preds = %for.body9
  %arraydecay24 = getelementptr inbounds [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %indvars.iv144, i64 0, !dbg !775
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i8* %arraydecay24) #8, !dbg !775
  %call25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0)) #8, !dbg !777
  %6 = trunc i64 %indvars.iv144 to i32, !dbg !778
  %cmp26 = icmp sgt i32 %6, 2, !dbg !778
  %7 = bitcast i16* %arraydecay to i8*, !dbg !779
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !778

if.then28:                                        ; preds = %if.then21
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i32 16, i1 false), !dbg !779
  br label %if.end42, !dbg !779

if.else:                                          ; preds = %if.then21
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i32 16, i1 false), !dbg !780
  br label %if.end42

if.else31:                                        ; preds = %if.then
  %arraydecay34 = getelementptr inbounds [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %indvars.iv144, i64 0, !dbg !781
  %call35 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), i8* %arraydecay34) #8, !dbg !781
  %8 = trunc i64 %indvars.iv144 to i32, !dbg !783
  %cmp36 = icmp sgt i32 %8, 2, !dbg !783
  %9 = bitcast i16* %arraydecay to i8*, !dbg !784
  br i1 %cmp36, label %if.end42.thread, label %if.else39, !dbg !783

if.end42.thread:                                  ; preds = %if.else31
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i32 16, i1 false), !dbg !784
  br label %for.inc102, !dbg !785

if.else39:                                        ; preds = %if.else31
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i32 16, i1 false), !dbg !786
  br label %if.end42

if.end42:                                         ; preds = %for.cond7, %for.body, %if.then28, %if.else, %if.else39
  %10 = trunc i64 %indvars.iv144 to i32, !dbg !785
  %cmp43 = icmp slt i32 %10, 2, !dbg !785
  br i1 %cmp43, label %land.lhs.true, label %for.inc102, !dbg !785

land.lhs.true:                                    ; preds = %if.end42
  %11 = add nsw i64 %indvars.iv144, 6, !dbg !785
  %12 = load %struct.InputParameters** @input, align 8, !dbg !785, !tbaa !703
  %arrayidx47 = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 133, i64 %11, !dbg !785
  %13 = load i32* %arrayidx47, align 4, !dbg !785, !tbaa !659
  %tobool48 = icmp eq i32 %13, 0, !dbg !785
  br i1 %tobool48, label %for.inc102, label %if.then49, !dbg !785

if.then49:                                        ; preds = %land.lhs.true
  %arraydecay52 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %indvars.iv144, i64 0, !dbg !787
  tail call void @llvm.dbg.value(metadata !{i16* %arraydecay52}, i64 0, metadata !51), !dbg !787
  %arrayidx54 = getelementptr inbounds [2 x i32]* @matrix8x8_check, i64 0, i64 %indvars.iv144, !dbg !789
  %14 = load i32* %arrayidx54, align 4, !dbg !789, !tbaa !659
  %tobool55 = icmp eq i32 %14, 0, !dbg !789
  br i1 %tobool55, label %if.else98, label %for.body60, !dbg !789

for.cond57:                                       ; preds = %for.body60
  %15 = trunc i64 %indvars.iv.next143 to i32, !dbg !790
  %cmp58 = icmp slt i32 %15, 64, !dbg !790
  br i1 %cmp58, label %for.body60, label %for.inc102, !dbg !790

for.body60:                                       ; preds = %if.then49, %for.cond57
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.cond57 ], [ 0, %if.then49 ]
  %arrayidx62 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %indvars.iv144, i64 %indvars.iv142, !dbg !793
  %16 = load i16* %arrayidx62, align 2, !dbg !793, !tbaa !759
  %17 = icmp ugt i16 %16, 255, !dbg !793
  %indvars.iv.next143 = add i64 %indvars.iv142, 1, !dbg !790
  br i1 %17, label %if.else87, label %for.cond57, !dbg !793

if.else87:                                        ; preds = %for.body60
  %arraydecay81 = getelementptr inbounds [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %indvars.iv144, i64 0, !dbg !795
  %call82 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i8* %arraydecay81) #8, !dbg !795
  %call83 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0)) #8, !dbg !797
  %18 = bitcast i16* %arraydecay52 to i8*, !dbg !798
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i32 16, i1 false), !dbg !799
  br label %for.inc102

if.else98:                                        ; preds = %if.then49
  %arraydecay93 = getelementptr inbounds [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %indvars.iv144, i64 0, !dbg !800
  %call94 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), i8* %arraydecay93) #8, !dbg !800
  %19 = bitcast i16* %arraydecay52 to i8*, !dbg !802
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i32 16, i1 false), !dbg !803
  br label %for.inc102

for.inc102:                                       ; preds = %for.cond57, %if.end42.thread, %land.lhs.true, %if.end42, %if.else98, %if.else87
  %indvars.iv.next145 = add i64 %indvars.iv144, 1, !dbg !763
  %lftr.wideiv = trunc i64 %indvars.iv.next145 to i32, !dbg !763
  %exitcond = icmp eq i32 %lftr.wideiv, 6, !dbg !763
  br i1 %exitcond, label %for.end104, label %for.body, !dbg !763

for.end104:                                       ; preds = %for.inc102
  ret void, !dbg !804
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define void @Init_QMatrix() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !805, !tbaa !703
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 132, !dbg !805
  %1 = load i32* %ScalingMatrixPresentFlag, align 4, !dbg !805, !tbaa !659
  %tobool = icmp eq i32 %1, 0, !dbg !805
  br i1 %tobool, label %if.end8, label %if.then, !dbg !805

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 30, i64 0, !dbg !806
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0), i8* %arraydecay) #8, !dbg !806
  %2 = load %struct.InputParameters** @input, align 8, !dbg !808, !tbaa !703
  %arraydecay2 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 30, i64 0, !dbg !808
  %call3 = tail call i8* @GetConfigFileContent(i8* %arraydecay2, i32 0) #8, !dbg !808
  tail call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !57), !dbg !808
  %cmp = icmp eq i8* %call3, null, !dbg !809
  br i1 %cmp, label %if.else, label %if.then4, !dbg !809

if.then4:                                         ; preds = %if.then
  %call5 = tail call i64 @strlen(i8* %call3) #6, !dbg !810
  %conv = trunc i64 %call5 to i32, !dbg !810
  tail call void @ParseMatrix(i8* %call3, i32 %conv) #7, !dbg !810
  br label %if.end, !dbg !810

if.else:                                          ; preds = %if.then
  %call6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0)) #8, !dbg !811
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  tail call void @PatchMatrix() #7, !dbg !812
  %putchar = tail call i32 @putchar(i32 10) #3, !dbg !813
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i16]* @UseDefaultScalingMatrix4x4Flag to i8*), i8 0, i64 12, i32 2, i1 false), !dbg !814
  store i16 0, i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 1), align 2, !dbg !815, !tbaa !759
  store i16 0, i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 0), align 2, !dbg !815, !tbaa !759
  tail call void @free(i8* %call3) #8, !dbg !816
  br label %if.end8, !dbg !817

if.end8:                                          ; preds = %entry, %if.end
  ret void, !dbg !818
}

; Function Attrs: optsize
declare i8* @GetConfigFileContent(i8*, i32) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @CalculateQuantParam() #0 {
entry:
  %present = alloca [6 x i32], align 16
  %0 = bitcast [6 x i32]* %present to i8*
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %present}, metadata !64), !dbg !819
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !68), !dbg !820
  %1 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !821, !tbaa !703
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %1, i64 0, i32 9, !dbg !821
  %2 = load i32* %seq_scaling_matrix_present_flag, align 4, !dbg !821, !tbaa !660
  %tobool = icmp eq i32 %2, 0, !dbg !821
  br i1 %tobool, label %land.lhs.true, label %for.cond.preheader, !dbg !821

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !821, !tbaa !703
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %3, i64 0, i32 5, !dbg !821
  %4 = load i32* %pic_scaling_matrix_present_flag, align 4, !dbg !821, !tbaa !660
  %tobool1 = icmp eq i32 %4, 0, !dbg !821
  br i1 %tobool1, label %for.cond37.preheader, label %if.else.if.end_crit_edge, !dbg !821

if.else.if.end_crit_edge:                         ; preds = %land.lhs.true
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 16, i1 false), !dbg !822
  br label %if.end, !dbg !824

for.cond.preheader:                               ; preds = %entry
  %scevgep988 = getelementptr %struct.seq_parameter_set_rbsp_t* %1, i64 0, i32 10, i64 0
  %scevgep988989 = bitcast i32* %scevgep988 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %scevgep988989, i64 24, i32 4, i1 false), !dbg !825
  br label %if.end

if.end:                                           ; preds = %if.else.if.end_crit_edge, %for.cond.preheader
  %5 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !827, !tbaa !703
  %pic_scaling_matrix_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %5, i64 0, i32 5, !dbg !827
  %6 = load i32* %pic_scaling_matrix_present_flag7, align 4, !dbg !827, !tbaa !660
  %tobool8 = icmp eq i32 %6, 0, !dbg !827
  br i1 %tobool8, label %for.cond202.preheader, label %for.body12, !dbg !827

for.cond202.preheader:                            ; preds = %for.inc27, %if.end
  %7 = bitcast [6 x i32]* %present to i64*, !dbg !828
  %8 = load i64* %7, align 16, !dbg !828
  %9 = trunc i64 %8 to i32, !dbg !828
  %tobool213 = icmp ne i32 %9, 0, !dbg !828
  %10 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 0), align 2, !dbg !828, !tbaa !759
  %tobool215 = icmp eq i16 %10, 0, !dbg !828
  %or.cond = and i1 %tobool213, %tobool215, !dbg !828
  %tobool284 = icmp ult i64 %8, 4294967296, !dbg !834
  %arrayidx359 = getelementptr inbounds [6 x i32]* %present, i64 0, i64 2, !dbg !835
  %11 = bitcast i32* %arrayidx359 to i64*, !dbg !835
  %12 = load i64* %11, align 8, !dbg !835
  %13 = trunc i64 %12 to i32, !dbg !835
  %tobool360 = icmp eq i32 %13, 0, !dbg !835
  %tobool440 = icmp ugt i64 %12, 4294967295, !dbg !836
  %14 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 3), align 2, !dbg !836, !tbaa !759
  %tobool443 = icmp eq i16 %14, 0, !dbg !836
  %or.cond931 = and i1 %tobool440, %tobool443, !dbg !836
  %arrayidx513 = getelementptr inbounds [6 x i32]* %present, i64 0, i64 4, !dbg !837
  %15 = bitcast i32* %arrayidx513 to i64*, !dbg !837
  %16 = load i64* %15, align 16, !dbg !837
  %17 = trunc i64 %16 to i32, !dbg !837
  %tobool514 = icmp eq i32 %17, 0, !dbg !837
  %tobool594 = icmp ult i64 %16, 4294967296, !dbg !838
  %18 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 5), align 2, !dbg !839, !tbaa !759
  %tobool629 = icmp eq i16 %18, 0, !dbg !839
  %19 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 4), align 2, !dbg !841, !tbaa !759
  %tobool549 = icmp eq i16 %19, 0, !dbg !841
  %20 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 2), align 2, !dbg !843, !tbaa !759
  %tobool395 = icmp eq i16 %20, 0, !dbg !843
  %21 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 1), align 2, !dbg !845, !tbaa !759
  %tobool319 = icmp eq i16 %21, 0, !dbg !845
  br label %for.cond205.preheader, !dbg !847

for.body12:                                       ; preds = %if.end, %for.inc27
  %indvars.iv980 = phi i64 [ %indvars.iv.next981, %for.inc27 ], [ 0, %if.end ]
  %arrayidx17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %5, i64 0, i32 6, i64 %indvars.iv980, !dbg !848
  %22 = load i32* %arrayidx17, align 4, !dbg !848, !tbaa !659
  %arrayidx19 = getelementptr inbounds [6 x i32]* %present, i64 0, i64 %indvars.iv980, !dbg !848
  %23 = trunc i64 %indvars.iv980 to i32, !dbg !851
  switch i32 %23, label %for.inc27 [
    i32 3, label %if.then15
    i32 0, label %if.then15
  ], !dbg !851

if.then15:                                        ; preds = %for.body12, %for.body12
  %24 = load i32* %arrayidx19, align 4, !dbg !848, !tbaa !659
  %or = or i32 %24, %22, !dbg !848
  br label %for.inc27, !dbg !848

for.inc27:                                        ; preds = %for.body12, %if.then15
  %storemerge = phi i32 [ %or, %if.then15 ], [ %22, %for.body12 ]
  store i32 %storemerge, i32* %arrayidx19, align 4, !dbg !848, !tbaa !659
  %indvars.iv.next981 = add i64 %indvars.iv980, 1, !dbg !852
  %lftr.wideiv982 = trunc i64 %indvars.iv.next981 to i32, !dbg !852
  %exitcond983 = icmp eq i32 %lftr.wideiv982, 6, !dbg !852
  br i1 %exitcond983, label %for.cond202.preheader, label %for.body12, !dbg !852

for.cond37.preheader:                             ; preds = %land.lhs.true, %for.inc198
  %indvars.iv962 = phi i64 [ %indvars.iv.next963, %for.inc198 ], [ 0, %land.lhs.true ]
  br label %for.cond40.preheader, !dbg !853

for.cond40.preheader:                             ; preds = %for.inc195, %for.cond37.preheader
  %indvars.iv958 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next959, %for.inc195 ]
  %scevgep950 = getelementptr [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 0
  %scevgep950951 = bitcast i32* %scevgep950 to i8*
  %scevgep952 = getelementptr [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 0
  %scevgep952953 = bitcast i32* %scevgep952 to i8*
  %scevgep = getelementptr [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 0
  %scevgep943 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep943, i8* %scevgep952953, i64 16, i32 4, i1 false), !dbg !857
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep950951, i8* %scevgep952953, i64 16, i32 4, i1 false), !dbg !860
  br label %for.body42, !dbg !861

for.body42:                                       ; preds = %for.body42, %for.cond40.preheader
  %indvars.iv = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next, %for.body42 ]
  %arrayidx48 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !857
  %arrayidx60 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !862
  %25 = load i32* %arrayidx60, align 4, !dbg !862, !tbaa !659
  %shl = shl i32 %25, 4, !dbg !862
  %arrayidx66 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !862
  store i32 %shl, i32* %arrayidx66, align 4, !dbg !862, !tbaa !659
  %26 = load i32* %arrayidx48, align 4, !dbg !863, !tbaa !659
  %arrayidx78 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !863
  store i32 %26, i32* %arrayidx78, align 4, !dbg !863, !tbaa !659
  %arrayidx91 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !864
  store i32 %shl, i32* %arrayidx91, align 4, !dbg !864, !tbaa !659
  %arrayidx103 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !865
  store i32 %26, i32* %arrayidx103, align 4, !dbg !865, !tbaa !659
  %arrayidx116 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !866
  store i32 %shl, i32* %arrayidx116, align 4, !dbg !866, !tbaa !659
  %arrayidx141 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !867
  store i32 %shl, i32* %arrayidx141, align 4, !dbg !867, !tbaa !659
  %arrayidx153 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !868
  store i32 %26, i32* %arrayidx153, align 4, !dbg !868, !tbaa !659
  %arrayidx166 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !869
  store i32 %shl, i32* %arrayidx166, align 4, !dbg !869, !tbaa !659
  %arrayidx178 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !870
  store i32 %26, i32* %arrayidx178, align 4, !dbg !870, !tbaa !659
  %arrayidx191 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv, !dbg !871
  store i32 %shl, i32* %arrayidx191, align 4, !dbg !871, !tbaa !659
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !861
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !861
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !861
  br i1 %exitcond, label %for.inc195, label %for.body42, !dbg !861

for.inc195:                                       ; preds = %for.body42
  %indvars.iv.next959 = add i64 %indvars.iv958, 1, !dbg !853
  %lftr.wideiv960 = trunc i64 %indvars.iv.next959 to i32, !dbg !853
  %exitcond961 = icmp eq i32 %lftr.wideiv960, 4, !dbg !853
  br i1 %exitcond961, label %for.inc198, label %for.cond40.preheader, !dbg !853

for.inc198:                                       ; preds = %for.inc195
  %indvars.iv.next963 = add i64 %indvars.iv962, 1, !dbg !872
  %lftr.wideiv964 = trunc i64 %indvars.iv.next963 to i32, !dbg !872
  %exitcond965 = icmp eq i32 %lftr.wideiv964, 6, !dbg !872
  br i1 %exitcond965, label %if.end682, label %for.cond37.preheader, !dbg !872

for.cond205.preheader:                            ; preds = %for.inc679, %for.cond202.preheader
  %indvars.iv976 = phi i64 [ 0, %for.cond202.preheader ], [ %indvars.iv.next977, %for.inc679 ]
  br label %for.cond208.preheader, !dbg !873

for.cond208.preheader:                            ; preds = %for.inc676, %for.cond205.preheader
  %indvars.iv972 = phi i64 [ 0, %for.cond205.preheader ], [ %indvars.iv.next973, %for.inc676 ]
  br label %for.body210, !dbg !874

for.body210:                                      ; preds = %for.inc673, %for.cond208.preheader
  %indvars.iv966 = phi i64 [ 0, %for.cond208.preheader ], [ %indvars.iv.next967, %for.inc673 ]
  %27 = shl i64 %indvars.iv966, 2, !dbg !875
  %28 = add nsw i64 %27, %indvars.iv972, !dbg !875
  %arrayidx254 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !876
  %29 = load i32* %arrayidx254, align 4, !dbg !876, !tbaa !659
  %shl255 = shl i32 %29, 4, !dbg !876
  br i1 %or.cond, label %if.else248, label %if.then216, !dbg !828

if.then216:                                       ; preds = %for.body210
  %arrayidx225 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %28, !dbg !878
  %30 = load i16* %arrayidx225, align 2, !dbg !878, !tbaa !759
  %conv226 = sext i16 %30 to i32, !dbg !878
  %div = sdiv i32 %shl255, %conv226, !dbg !878
  %arrayidx232 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !878
  store i32 %div, i32* %arrayidx232, align 4, !dbg !878, !tbaa !659
  %arrayidx238 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !880
  %31 = load i32* %arrayidx238, align 4, !dbg !880, !tbaa !659
  %mul = mul nsw i32 %conv226, %31, !dbg !880
  %arrayidx247 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !880
  store i32 %mul, i32* %arrayidx247, align 4, !dbg !880, !tbaa !659
  br label %if.end282, !dbg !881

if.else248:                                       ; preds = %for.body210
  %arrayidx257 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 0, i64 %28, !dbg !876
  %32 = load i16* %arrayidx257, align 2, !dbg !876, !tbaa !759
  %conv258 = sext i16 %32 to i32, !dbg !876
  %div259 = sdiv i32 %shl255, %conv258, !dbg !876
  %arrayidx265 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !876
  store i32 %div259, i32* %arrayidx265, align 4, !dbg !876, !tbaa !659
  %arrayidx271 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !882
  %33 = load i32* %arrayidx271, align 4, !dbg !882, !tbaa !659
  %mul275 = mul nsw i32 %conv258, %33, !dbg !882
  %arrayidx281 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !882
  store i32 %mul275, i32* %arrayidx281, align 4, !dbg !882, !tbaa !659
  br label %if.end282

if.end282:                                        ; preds = %if.else248, %if.then216
  %34 = phi i32 [ %33, %if.else248 ], [ %31, %if.then216 ]
  %35 = phi i32 [ %mul275, %if.else248 ], [ %mul, %if.then216 ]
  %36 = phi i32 [ %div259, %if.else248 ], [ %div, %if.then216 ]
  br i1 %tobool284, label %if.then285, label %if.else310, !dbg !834

if.then285:                                       ; preds = %if.end282
  %arrayidx297 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !883
  store i32 %36, i32* %arrayidx297, align 4, !dbg !883, !tbaa !659
  %arrayidx309 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !885
  store i32 %35, i32* %arrayidx309, align 4, !dbg !885, !tbaa !659
  br label %if.end358, !dbg !886

if.else310:                                       ; preds = %if.end282
  br i1 %tobool319, label %cond.false345, label %cond.true341, !dbg !845

cond.true341:                                     ; preds = %if.else310
  %arrayidx321 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %28, !dbg !845
  %.sink = load i16* %arrayidx321, align 2, !dbg !845
  %conv322 = sext i16 %.sink to i32, !dbg !845
  %div326 = sdiv i32 %shl255, %conv322, !dbg !845
  %arrayidx332 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !845
  store i32 %div326, i32* %arrayidx332, align 4, !dbg !845, !tbaa !659
  %arrayidx343 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %28, !dbg !887
  br label %cond.end349, !dbg !887

cond.false345:                                    ; preds = %if.else310
  %arrayidx324 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 1, i64 %28, !dbg !845
  %.sink991 = load i16* %arrayidx324, align 2, !dbg !845
  %conv322992 = sext i16 %.sink991 to i32, !dbg !845
  %div326993 = sdiv i32 %shl255, %conv322992, !dbg !845
  %arrayidx332994 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !845
  store i32 %div326993, i32* %arrayidx332994, align 4, !dbg !845, !tbaa !659
  %arrayidx347 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 1, i64 %28, !dbg !887
  br label %cond.end349, !dbg !887

cond.end349:                                      ; preds = %cond.false345, %cond.true341
  %div326995 = phi i32 [ %div326, %cond.true341 ], [ %div326993, %cond.false345 ]
  %.sink683.in = phi i16* [ %arrayidx343, %cond.true341 ], [ %arrayidx347, %cond.false345 ]
  %.sink683 = load i16* %.sink683.in, align 2, !dbg !887
  %conv344 = sext i16 %.sink683 to i32, !dbg !887
  %mul351 = mul nsw i32 %conv344, %34, !dbg !887
  %arrayidx357 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !887
  store i32 %mul351, i32* %arrayidx357, align 4, !dbg !887, !tbaa !659
  br label %if.end358

if.end358:                                        ; preds = %cond.end349, %if.then285
  %37 = phi i32 [ %mul351, %cond.end349 ], [ %35, %if.then285 ]
  %38 = phi i32 [ %div326995, %cond.end349 ], [ %36, %if.then285 ]
  br i1 %tobool360, label %if.then361, label %if.else386, !dbg !835

if.then361:                                       ; preds = %if.end358
  %arrayidx373 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !888
  store i32 %38, i32* %arrayidx373, align 4, !dbg !888, !tbaa !659
  %arrayidx385 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !890
  store i32 %37, i32* %arrayidx385, align 4, !dbg !890, !tbaa !659
  br label %if.end438, !dbg !891

if.else386:                                       ; preds = %if.end358
  br i1 %tobool395, label %cond.false425, label %cond.true421, !dbg !843

cond.true421:                                     ; preds = %if.else386
  %arrayidx398 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %28, !dbg !843
  %.sink684 = load i16* %arrayidx398, align 2, !dbg !843
  %conv399 = sext i16 %.sink684 to i32, !dbg !843
  %div406 = sdiv i32 %shl255, %conv399, !dbg !843
  %arrayidx412 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !843
  store i32 %div406, i32* %arrayidx412, align 4, !dbg !843, !tbaa !659
  %arrayidx423 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %28, !dbg !892
  br label %cond.end429, !dbg !892

cond.false425:                                    ; preds = %if.else386
  %arrayidx402 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 2, i64 %28, !dbg !843
  %.sink684997 = load i16* %arrayidx402, align 2, !dbg !843
  %conv399998 = sext i16 %.sink684997 to i32, !dbg !843
  %div406999 = sdiv i32 %shl255, %conv399998, !dbg !843
  %arrayidx4121000 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !843
  store i32 %div406999, i32* %arrayidx4121000, align 4, !dbg !843, !tbaa !659
  %arrayidx427 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 2, i64 %28, !dbg !892
  br label %cond.end429, !dbg !892

cond.end429:                                      ; preds = %cond.false425, %cond.true421
  %.sink685.in = phi i16* [ %arrayidx423, %cond.true421 ], [ %arrayidx427, %cond.false425 ]
  %.sink685 = load i16* %.sink685.in, align 2, !dbg !892
  %conv424 = sext i16 %.sink685 to i32, !dbg !892
  %mul431 = mul nsw i32 %conv424, %34, !dbg !892
  %arrayidx437 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !892
  store i32 %mul431, i32* %arrayidx437, align 4, !dbg !892, !tbaa !659
  br label %if.end438

if.end438:                                        ; preds = %cond.end429, %if.then361
  br i1 %or.cond931, label %if.else478, label %if.then444, !dbg !836

if.then444:                                       ; preds = %if.end438
  %arrayidx453 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %28, !dbg !893
  %39 = load i16* %arrayidx453, align 2, !dbg !893, !tbaa !759
  %conv454 = sext i16 %39 to i32, !dbg !893
  %div455 = sdiv i32 %shl255, %conv454, !dbg !893
  %arrayidx461 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !893
  store i32 %div455, i32* %arrayidx461, align 4, !dbg !893, !tbaa !659
  %mul471 = mul nsw i32 %conv454, %34, !dbg !895
  %arrayidx477 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !895
  store i32 %mul471, i32* %arrayidx477, align 4, !dbg !895, !tbaa !659
  br label %if.end512, !dbg !896

if.else478:                                       ; preds = %if.end438
  %arrayidx487 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 3, i64 %28, !dbg !897
  %40 = load i16* %arrayidx487, align 2, !dbg !897, !tbaa !759
  %conv488 = sext i16 %40 to i32, !dbg !897
  %div489 = sdiv i32 %shl255, %conv488, !dbg !897
  %arrayidx495 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !897
  store i32 %div489, i32* %arrayidx495, align 4, !dbg !897, !tbaa !659
  %mul505 = mul nsw i32 %conv488, %34, !dbg !899
  %arrayidx511 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !899
  store i32 %mul505, i32* %arrayidx511, align 4, !dbg !899, !tbaa !659
  br label %if.end512

if.end512:                                        ; preds = %if.else478, %if.then444
  %41 = phi i32 [ %mul505, %if.else478 ], [ %mul471, %if.then444 ]
  %42 = phi i32 [ %div489, %if.else478 ], [ %div455, %if.then444 ]
  br i1 %tobool514, label %if.then515, label %if.else540, !dbg !837

if.then515:                                       ; preds = %if.end512
  %arrayidx527 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !900
  store i32 %42, i32* %arrayidx527, align 4, !dbg !900, !tbaa !659
  %arrayidx539 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !902
  store i32 %41, i32* %arrayidx539, align 4, !dbg !902, !tbaa !659
  br label %if.end592, !dbg !903

if.else540:                                       ; preds = %if.end512
  br i1 %tobool549, label %cond.false579, label %cond.true575, !dbg !841

cond.true575:                                     ; preds = %if.else540
  %arrayidx552 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %28, !dbg !841
  %.sink686 = load i16* %arrayidx552, align 2, !dbg !841
  %conv553 = sext i16 %.sink686 to i32, !dbg !841
  %div560 = sdiv i32 %shl255, %conv553, !dbg !841
  %arrayidx566 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !841
  store i32 %div560, i32* %arrayidx566, align 4, !dbg !841, !tbaa !659
  %arrayidx577 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %28, !dbg !904
  br label %cond.end583, !dbg !904

cond.false579:                                    ; preds = %if.else540
  %arrayidx556 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 4, i64 %28, !dbg !841
  %.sink6861001 = load i16* %arrayidx556, align 2, !dbg !841
  %conv5531002 = sext i16 %.sink6861001 to i32, !dbg !841
  %div5601003 = sdiv i32 %shl255, %conv5531002, !dbg !841
  %arrayidx5661004 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !841
  store i32 %div5601003, i32* %arrayidx5661004, align 4, !dbg !841, !tbaa !659
  %arrayidx581 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 4, i64 %28, !dbg !904
  br label %cond.end583, !dbg !904

cond.end583:                                      ; preds = %cond.false579, %cond.true575
  %div5601005 = phi i32 [ %div560, %cond.true575 ], [ %div5601003, %cond.false579 ]
  %.sink687.in = phi i16* [ %arrayidx577, %cond.true575 ], [ %arrayidx581, %cond.false579 ]
  %.sink687 = load i16* %.sink687.in, align 2, !dbg !904
  %conv578 = sext i16 %.sink687 to i32, !dbg !904
  %mul585 = mul nsw i32 %conv578, %34, !dbg !904
  %arrayidx591 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !904
  store i32 %mul585, i32* %arrayidx591, align 4, !dbg !904, !tbaa !659
  br label %if.end592

if.end592:                                        ; preds = %cond.end583, %if.then515
  %43 = phi i32 [ %mul585, %cond.end583 ], [ %41, %if.then515 ]
  %44 = phi i32 [ %div5601005, %cond.end583 ], [ %42, %if.then515 ]
  br i1 %tobool594, label %if.then595, label %if.else620, !dbg !838

if.then595:                                       ; preds = %if.end592
  %arrayidx607 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !905
  store i32 %44, i32* %arrayidx607, align 4, !dbg !905, !tbaa !659
  %arrayidx619 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !907
  store i32 %43, i32* %arrayidx619, align 4, !dbg !907, !tbaa !659
  br label %for.inc673, !dbg !908

if.else620:                                       ; preds = %if.end592
  br i1 %tobool629, label %cond.false659, label %cond.true655, !dbg !839

cond.true655:                                     ; preds = %if.else620
  %arrayidx632 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %28, !dbg !839
  %.sink688 = load i16* %arrayidx632, align 2, !dbg !839
  %conv633 = sext i16 %.sink688 to i32, !dbg !839
  %div640 = sdiv i32 %shl255, %conv633, !dbg !839
  %arrayidx646 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !839
  store i32 %div640, i32* %arrayidx646, align 4, !dbg !839, !tbaa !659
  %arrayidx657 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %28, !dbg !909
  br label %cond.end663, !dbg !909

cond.false659:                                    ; preds = %if.else620
  %arrayidx636 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 5, i64 %28, !dbg !839
  %.sink6881007 = load i16* %arrayidx636, align 2, !dbg !839
  %conv6331008 = sext i16 %.sink6881007 to i32, !dbg !839
  %div6401009 = sdiv i32 %shl255, %conv6331008, !dbg !839
  %arrayidx6461010 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !839
  store i32 %div6401009, i32* %arrayidx6461010, align 4, !dbg !839, !tbaa !659
  %arrayidx661 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 5, i64 %28, !dbg !909
  br label %cond.end663, !dbg !909

cond.end663:                                      ; preds = %cond.false659, %cond.true655
  %.sink689.in = phi i16* [ %arrayidx657, %cond.true655 ], [ %arrayidx661, %cond.false659 ]
  %.sink689 = load i16* %.sink689.in, align 2, !dbg !909
  %conv658 = sext i16 %.sink689 to i32, !dbg !909
  %mul665 = mul nsw i32 %conv658, %34, !dbg !909
  %arrayidx671 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966, !dbg !909
  store i32 %mul665, i32* %arrayidx671, align 4, !dbg !909, !tbaa !659
  br label %for.inc673

for.inc673:                                       ; preds = %if.then595, %cond.end663
  %indvars.iv.next967 = add i64 %indvars.iv966, 1, !dbg !874
  %lftr.wideiv970 = trunc i64 %indvars.iv.next967 to i32, !dbg !874
  %exitcond971 = icmp eq i32 %lftr.wideiv970, 4, !dbg !874
  br i1 %exitcond971, label %for.inc676, label %for.body210, !dbg !874

for.inc676:                                       ; preds = %for.inc673
  %indvars.iv.next973 = add i64 %indvars.iv972, 1, !dbg !873
  %lftr.wideiv974 = trunc i64 %indvars.iv.next973 to i32, !dbg !873
  %exitcond975 = icmp eq i32 %lftr.wideiv974, 4, !dbg !873
  br i1 %exitcond975, label %for.inc679, label %for.cond208.preheader, !dbg !873

for.inc679:                                       ; preds = %for.inc676
  %indvars.iv.next977 = add i64 %indvars.iv976, 1, !dbg !847
  %lftr.wideiv978 = trunc i64 %indvars.iv.next977 to i32, !dbg !847
  %exitcond979 = icmp eq i32 %lftr.wideiv978, 6, !dbg !847
  br i1 %exitcond979, label %if.end682, label %for.cond205.preheader, !dbg !847

if.end682:                                        ; preds = %for.inc679, %for.inc198
  ret void, !dbg !910
}

; Function Attrs: nounwind optsize uwtable
define void @CalculateQuant8Param() #0 {
entry:
  %present = alloca i64, align 8, !dbg !911
  %tmpcast = bitcast i64* %present to [2 x i32]*, !dbg !911
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %tmpcast}, metadata !75), !dbg !913
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !79), !dbg !914
  %0 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !915, !tbaa !703
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 9, !dbg !915
  %1 = load i32* %seq_scaling_matrix_present_flag, align 4, !dbg !915, !tbaa !660
  %tobool = icmp eq i32 %1, 0, !dbg !915
  br i1 %tobool, label %land.lhs.true, label %for.cond.preheader, !dbg !915

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !915, !tbaa !703
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %2, i64 0, i32 5, !dbg !915
  %3 = load i32* %pic_scaling_matrix_present_flag, align 4, !dbg !915, !tbaa !660
  %tobool1 = icmp eq i32 %3, 0, !dbg !915
  br i1 %tobool1, label %for.cond28.preheader, label %if.else.if.end_crit_edge, !dbg !915

if.else.if.end_crit_edge:                         ; preds = %land.lhs.true
  br label %if.end, !dbg !916

for.cond.preheader:                               ; preds = %entry
  %scevgep409 = getelementptr %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 10, i64 6
  %4 = bitcast i32* %scevgep409 to i64*, !dbg !917
  %5 = load i64* %4, align 4, !dbg !917
  br label %if.end

if.end:                                           ; preds = %if.else.if.end_crit_edge, %for.cond.preheader
  %storemerge = phi i64 [ %5, %for.cond.preheader ], [ 0, %if.else.if.end_crit_edge ]
  store i64 %storemerge, i64* %present, align 8, !dbg !911
  %6 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !919, !tbaa !703
  %pic_scaling_matrix_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %6, i64 0, i32 5, !dbg !919
  %7 = load i32* %pic_scaling_matrix_present_flag7, align 4, !dbg !919, !tbaa !660
  %tobool8 = icmp eq i32 %7, 0, !dbg !919
  br i1 %tobool8, label %for.cond93.preheader, label %for.body12, !dbg !919

for.cond93.preheader:                             ; preds = %for.body12, %if.end
  %8 = load i64* %present, align 8, !dbg !920
  %9 = trunc i64 %8 to i32, !dbg !920
  %tobool105 = icmp ne i32 %9, 0, !dbg !920
  %10 = load i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 0), align 2, !dbg !920, !tbaa !759
  %tobool106 = icmp eq i16 %10, 0, !dbg !920
  %or.cond = and i1 %tobool105, %tobool106, !dbg !920
  %tobool175 = icmp ugt i64 %8, 4294967295, !dbg !926
  %11 = load i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 1), align 2, !dbg !926, !tbaa !759
  %tobool178 = icmp eq i16 %11, 0, !dbg !926
  %or.cond357 = and i1 %tobool175, %tobool178, !dbg !926
  br label %for.cond96.preheader, !dbg !927

for.body12:                                       ; preds = %if.end, %for.body12
  %indvars.iv398 = phi i64 [ %indvars.iv.next399, %for.body12 ], [ 0, %if.end ]
  %12 = add nsw i64 %indvars.iv398, 6, !dbg !928
  %arrayidx15 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %6, i64 0, i32 6, i64 %12, !dbg !928
  %13 = load i32* %arrayidx15, align 4, !dbg !928, !tbaa !659
  %arrayidx17 = getelementptr inbounds [2 x i32]* %tmpcast, i64 0, i64 %indvars.iv398, !dbg !928
  %14 = load i32* %arrayidx17, align 4, !dbg !928, !tbaa !659
  %or = or i32 %14, %13, !dbg !928
  store i32 %or, i32* %arrayidx17, align 4, !dbg !928, !tbaa !659
  %indvars.iv.next399 = add i64 %indvars.iv398, 1, !dbg !930
  %lftr.wideiv401 = trunc i64 %indvars.iv.next399 to i32, !dbg !930
  %exitcond402 = icmp eq i32 %lftr.wideiv401, 2, !dbg !930
  br i1 %exitcond402, label %for.cond93.preheader, label %for.body12, !dbg !930

for.cond28.preheader:                             ; preds = %land.lhs.true, %for.inc89
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %for.inc89 ], [ 0, %land.lhs.true ]
  br label %for.cond31.preheader, !dbg !931

for.cond31.preheader:                             ; preds = %for.inc86, %for.cond28.preheader
  %indvars.iv376 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next377, %for.inc86 ]
  %scevgep372 = getelementptr [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 0
  %scevgep372373 = bitcast i32* %scevgep372 to i8*
  %scevgep374 = getelementptr [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 0
  %scevgep374375 = bitcast i32* %scevgep374 to i8*
  %scevgep = getelementptr [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 0
  %scevgep369 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep369, i8* %scevgep374375, i64 32, i32 4, i1 false), !dbg !935
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep372373, i8* %scevgep374375, i64 32, i32 4, i1 false), !dbg !938
  br label %for.body33, !dbg !939

for.body33:                                       ; preds = %for.body33, %for.cond31.preheader
  %indvars.iv = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next, %for.body33 ]
  %arrayidx51 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 %indvars.iv, !dbg !940
  %15 = load i32* %arrayidx51, align 4, !dbg !940, !tbaa !659
  %shl = shl i32 %15, 4, !dbg !940
  %arrayidx57 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 %indvars.iv, !dbg !940
  store i32 %shl, i32* %arrayidx57, align 4, !dbg !940, !tbaa !659
  %arrayidx82 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 %indvars.iv, !dbg !941
  store i32 %shl, i32* %arrayidx82, align 4, !dbg !941, !tbaa !659
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !939
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !939
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !939
  br i1 %exitcond, label %for.inc86, label %for.body33, !dbg !939

for.inc86:                                        ; preds = %for.body33
  %indvars.iv.next377 = add i64 %indvars.iv376, 1, !dbg !931
  %lftr.wideiv378 = trunc i64 %indvars.iv.next377 to i32, !dbg !931
  %exitcond379 = icmp eq i32 %lftr.wideiv378, 8, !dbg !931
  br i1 %exitcond379, label %for.inc89, label %for.cond31.preheader, !dbg !931

for.inc89:                                        ; preds = %for.inc86
  %indvars.iv.next381 = add i64 %indvars.iv380, 1, !dbg !942
  %lftr.wideiv382 = trunc i64 %indvars.iv.next381 to i32, !dbg !942
  %exitcond383 = icmp eq i32 %lftr.wideiv382, 6, !dbg !942
  br i1 %exitcond383, label %if.end257, label %for.cond28.preheader, !dbg !942

for.cond96.preheader:                             ; preds = %for.inc254, %for.cond93.preheader
  %indvars.iv394 = phi i64 [ 0, %for.cond93.preheader ], [ %indvars.iv.next395, %for.inc254 ]
  br label %for.cond99.preheader, !dbg !943

for.cond99.preheader:                             ; preds = %for.inc251, %for.cond96.preheader
  %indvars.iv390 = phi i64 [ 0, %for.cond96.preheader ], [ %indvars.iv.next391, %for.inc251 ]
  br label %for.body101, !dbg !944

for.body101:                                      ; preds = %for.inc248, %for.cond99.preheader
  %indvars.iv384 = phi i64 [ 0, %for.cond99.preheader ], [ %indvars.iv.next385, %for.inc248 ]
  %16 = shl i64 %indvars.iv384, 3, !dbg !945
  %17 = add nsw i64 %16, %indvars.iv390, !dbg !945
  %arrayidx145 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !946
  %18 = load i32* %arrayidx145, align 4, !dbg !946, !tbaa !659
  %shl146 = shl i32 %18, 4, !dbg !946
  br i1 %or.cond, label %if.else139, label %if.then107, !dbg !920

if.then107:                                       ; preds = %for.body101
  %arrayidx116 = getelementptr inbounds [64 x i16]* @Quant8_intra_default, i64 0, i64 %17, !dbg !948
  %19 = load i16* %arrayidx116, align 2, !dbg !948, !tbaa !759
  %conv117 = sext i16 %19 to i32, !dbg !948
  %div = sdiv i32 %shl146, %conv117, !dbg !948
  %arrayidx123 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !948
  store i32 %div, i32* %arrayidx123, align 4, !dbg !948, !tbaa !659
  %arrayidx129 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !950
  %20 = load i32* %arrayidx129, align 4, !dbg !950, !tbaa !659
  %mul = mul nsw i32 %conv117, %20, !dbg !950
  %arrayidx138 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !950
  store i32 %mul, i32* %arrayidx138, align 4, !dbg !950, !tbaa !659
  br label %if.end173, !dbg !951

if.else139:                                       ; preds = %for.body101
  %arrayidx148 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 0, i64 %17, !dbg !946
  %21 = load i16* %arrayidx148, align 2, !dbg !946, !tbaa !759
  %conv149 = sext i16 %21 to i32, !dbg !946
  %div150 = sdiv i32 %shl146, %conv149, !dbg !946
  %arrayidx156 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !946
  store i32 %div150, i32* %arrayidx156, align 4, !dbg !946, !tbaa !659
  %arrayidx162 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !952
  %22 = load i32* %arrayidx162, align 4, !dbg !952, !tbaa !659
  %mul166 = mul nsw i32 %conv149, %22, !dbg !952
  %arrayidx172 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !952
  store i32 %mul166, i32* %arrayidx172, align 4, !dbg !952, !tbaa !659
  br label %if.end173

if.end173:                                        ; preds = %if.else139, %if.then107
  %23 = phi i32 [ %22, %if.else139 ], [ %20, %if.then107 ]
  br i1 %or.cond357, label %if.else213, label %if.then179, !dbg !926

if.then179:                                       ; preds = %if.end173
  %arrayidx188 = getelementptr inbounds [64 x i16]* @Quant8_inter_default, i64 0, i64 %17, !dbg !953
  %24 = load i16* %arrayidx188, align 2, !dbg !953, !tbaa !759
  %conv189 = sext i16 %24 to i32, !dbg !953
  %div190 = sdiv i32 %shl146, %conv189, !dbg !953
  %arrayidx196 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !953
  store i32 %div190, i32* %arrayidx196, align 4, !dbg !953, !tbaa !659
  %mul206 = mul nsw i32 %conv189, %23, !dbg !955
  %arrayidx212 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !955
  store i32 %mul206, i32* %arrayidx212, align 4, !dbg !955, !tbaa !659
  br label %for.inc248, !dbg !956

if.else213:                                       ; preds = %if.end173
  %arrayidx222 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 1, i64 %17, !dbg !957
  %25 = load i16* %arrayidx222, align 2, !dbg !957, !tbaa !759
  %conv223 = sext i16 %25 to i32, !dbg !957
  %div224 = sdiv i32 %shl146, %conv223, !dbg !957
  %arrayidx230 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !957
  store i32 %div224, i32* %arrayidx230, align 4, !dbg !957, !tbaa !659
  %mul240 = mul nsw i32 %conv223, %23, !dbg !959
  %arrayidx246 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384, !dbg !959
  store i32 %mul240, i32* %arrayidx246, align 4, !dbg !959, !tbaa !659
  br label %for.inc248

for.inc248:                                       ; preds = %if.then179, %if.else213
  %indvars.iv.next385 = add i64 %indvars.iv384, 1, !dbg !944
  %lftr.wideiv388 = trunc i64 %indvars.iv.next385 to i32, !dbg !944
  %exitcond389 = icmp eq i32 %lftr.wideiv388, 8, !dbg !944
  br i1 %exitcond389, label %for.inc251, label %for.body101, !dbg !944

for.inc251:                                       ; preds = %for.inc248
  %indvars.iv.next391 = add i64 %indvars.iv390, 1, !dbg !943
  %lftr.wideiv392 = trunc i64 %indvars.iv.next391 to i32, !dbg !943
  %exitcond393 = icmp eq i32 %lftr.wideiv392, 8, !dbg !943
  br i1 %exitcond393, label %for.inc254, label %for.cond99.preheader, !dbg !943

for.inc254:                                       ; preds = %for.inc251
  %indvars.iv.next395 = add i64 %indvars.iv394, 1, !dbg !927
  %lftr.wideiv396 = trunc i64 %indvars.iv.next395 to i32, !dbg !927
  %exitcond397 = icmp eq i32 %lftr.wideiv396, 6, !dbg !927
  br i1 %exitcond397, label %if.end257, label %for.cond96.preheader, !dbg !927

if.end257:                                        ; preds = %for.inc254, %for.inc89
  ret void, !dbg !960
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !80, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !22, metadata !47, metadata !55, metadata !58, metadata !69}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"CheckParameterName", metadata !"CheckParameterName", metadata !"", i32 126, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @CheckParameterName, null, null, metadata !18, i32 127} ; [ DW_TAG_subprogram ] [line 126] [def] [scope 127] [CheckParameterName]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !17}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{metadata !19, metadata !20, metadata !21}
!19 = metadata !{i32 786689, metadata !10, metadata !"s", metadata !11, i32 16777342, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 126]
!20 = metadata !{i32 786689, metadata !10, metadata !"type", metadata !11, i32 33554558, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 126]
!21 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !11, i32 128, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 128]
!22 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"ParseMatrix", metadata !"ParseMatrix", metadata !"", i32 162, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @ParseMatrix, null, null, metadata !25, i32 163} ; [ DW_TAG_subprogram ] [line 162] [def] [scope 163] [ParseMatrix]
!23 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{null, metadata !15, metadata !14}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!26 = metadata !{i32 786689, metadata !22, metadata !"buf", metadata !11, i32 16777378, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 162]
!27 = metadata !{i32 786689, metadata !22, metadata !"bufsize", metadata !11, i32 33554594, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufsize] [line 162]
!28 = metadata !{i32 786688, metadata !22, metadata !"items", metadata !11, i32 164, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [items] [line 164]
!29 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64000, i64 64, i32 0, i32 0, metadata !15, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64000, align 64, offset 0] [from ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 1000}     ; [ DW_TAG_subrange_type ] [0, 999]
!32 = metadata !{i32 786688, metadata !22, metadata !"MapIdx", metadata !11, i32 165, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MapIdx] [line 165]
!33 = metadata !{i32 786688, metadata !22, metadata !"item", metadata !11, i32 166, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [item] [line 166]
!34 = metadata !{i32 786688, metadata !22, metadata !"InString", metadata !11, i32 167, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [InString] [line 167]
!35 = metadata !{i32 786688, metadata !22, metadata !"InItem", metadata !11, i32 167, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [InItem] [line 167]
!36 = metadata !{i32 786688, metadata !22, metadata !"p", metadata !11, i32 168, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 168]
!37 = metadata !{i32 786688, metadata !22, metadata !"bufend", metadata !11, i32 169, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufend] [line 169]
!38 = metadata !{i32 786688, metadata !22, metadata !"IntContent", metadata !11, i32 170, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [IntContent] [line 170]
!39 = metadata !{i32 786688, metadata !22, metadata !"i", metadata !11, i32 171, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 171]
!40 = metadata !{i32 786688, metadata !22, metadata !"j", metadata !11, i32 171, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 171]
!41 = metadata !{i32 786688, metadata !22, metadata !"range", metadata !11, i32 171, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 171]
!42 = metadata !{i32 786688, metadata !22, metadata !"type", metadata !11, i32 171, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 171]
!43 = metadata !{i32 786688, metadata !22, metadata !"cnt", metadata !11, i32 171, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cnt] [line 171]
!44 = metadata !{i32 786688, metadata !22, metadata !"ScalingList", metadata !11, i32 172, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ScalingList] [line 172]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!46 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!47 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"PatchMatrix", metadata !"PatchMatrix", metadata !"", i32 284, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @PatchMatrix, null, null, metadata !50, i32 285} ; [ DW_TAG_subprogram ] [line 284] [def] [scope 285] [PatchMatrix]
!48 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{null}
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54}
!51 = metadata !{i32 786688, metadata !47, metadata !"ScalingList", metadata !11, i32 286, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ScalingList] [line 286]
!52 = metadata !{i32 786688, metadata !47, metadata !"i", metadata !11, i32 287, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 287]
!53 = metadata !{i32 786688, metadata !47, metadata !"cnt", metadata !11, i32 287, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cnt] [line 287]
!54 = metadata !{i32 786688, metadata !47, metadata !"fail", metadata !11, i32 287, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fail] [line 287]
!55 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"Init_QMatrix", metadata !"Init_QMatrix", metadata !"", i32 369, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @Init_QMatrix, null, null, metadata !56, i32 370} ; [ DW_TAG_subprogram ] [line 369] [def] [scope 370] [Init_QMatrix]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786688, metadata !55, metadata !"content", metadata !11, i32 371, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [content] [line 371]
!58 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"CalculateQuantParam", metadata !"CalculateQuantParam", metadata !"", i32 404, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CalculateQuantParam, null, null, metadata !59, i32 405} ; [ DW_TAG_subprogram ] [line 404] [def] [scope 405] [CalculateQuantParam]
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !68}
!60 = metadata !{i32 786688, metadata !58, metadata !"i", metadata !11, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 406]
!61 = metadata !{i32 786688, metadata !58, metadata !"j", metadata !11, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 406]
!62 = metadata !{i32 786688, metadata !58, metadata !"k", metadata !11, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 406]
!63 = metadata !{i32 786688, metadata !58, metadata !"temp", metadata !11, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 406]
!64 = metadata !{i32 786688, metadata !58, metadata !"present", metadata !11, i32 407, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [present] [line 407]
!65 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !14, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!68 = metadata !{i32 786688, metadata !58, metadata !"no_q_matrix", metadata !11, i32 408, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_q_matrix] [line 408]
!69 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"CalculateQuant8Param", metadata !"CalculateQuant8Param", metadata !"", i32 538, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CalculateQuant8Param, null, null, metadata !70, i32 539} ; [ DW_TAG_subprogram ] [line 538] [def] [scope 539] [CalculateQuant8Param]
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !79}
!71 = metadata !{i32 786688, metadata !69, metadata !"i", metadata !11, i32 540, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 540]
!72 = metadata !{i32 786688, metadata !69, metadata !"j", metadata !11, i32 540, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 540]
!73 = metadata !{i32 786688, metadata !69, metadata !"k", metadata !11, i32 540, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 540]
!74 = metadata !{i32 786688, metadata !69, metadata !"temp", metadata !11, i32 540, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 540]
!75 = metadata !{i32 786688, metadata !69, metadata !"present", metadata !11, i32 541, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [present] [line 541]
!76 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !14, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!79 = metadata !{i32 786688, metadata !69, metadata !"no_q_matrix", metadata !11, i32 542, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_q_matrix] [line 542]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !283, metadata !285, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !330, metadata !425, metadata !426, metadata !427, metadata !429, metadata !430, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !447, metadata !448, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !463, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !475, metadata !478, metadata !479, metadata !480, metadata !481, metadata !484, metadata !487, metadata !498, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !613, metadata !616, metadata !617, metadata !618, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !631, metadata !635, metadata !636, metadata !637, metadata !639, metadata !641, metadata !645, metadata !646, metadata !648, metadata !649, metadata !653}
!81 = metadata !{i32 786484, i32 0, null, metadata !"matrix4x4_check", metadata !"matrix4x4_check", metadata !"", metadata !11, i32 27, metadata !65, i32 0, i32 1, [6 x i32]* @matrix4x4_check, null} ; [ DW_TAG_variable ] [matrix4x4_check] [line 27] [def]
!82 = metadata !{i32 786484, i32 0, null, metadata !"matrix8x8_check", metadata !"matrix8x8_check", metadata !"", metadata !11, i32 28, metadata !76, i32 0, i32 1, [2 x i32]* @matrix8x8_check, null} ; [ DW_TAG_variable ] [matrix8x8_check] [line 28] [def]
!83 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !84, i32 558, metadata !86, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!84 = metadata !{i32 786473, metadata !85}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!85 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!87 = metadata !{i32 786454, metadata !85, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!88 = metadata !{i32 786451, metadata !85, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !89, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !271, metadata !272, metadata !274, metadata !275}
!90 = metadata !{i32 786445, metadata !85, metadata !88, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!91 = metadata !{i32 786445, metadata !85, metadata !88, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!92 = metadata !{i32 786445, metadata !85, metadata !88, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !93} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!93 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !94, metadata !269, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!94 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!95 = metadata !{i32 786454, metadata !85, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!96 = metadata !{i32 786451, metadata !85, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !97, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !181, metadata !218, metadata !244, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !266}
!98 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!99 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!100 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!101 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!102 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!103 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!104 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !105} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!106 = metadata !{i32 786454, metadata !85, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!107 = metadata !{i32 786451, metadata !85, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !108, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!108 = metadata !{metadata !109, metadata !128, metadata !153}
!109 = metadata !{i32 786445, metadata !85, metadata !107, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!111 = metadata !{i32 786454, metadata !85, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!112 = metadata !{i32 786451, metadata !85, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !113, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !127}
!114 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!115 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!116 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !117} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!117 = metadata !{i32 786454, metadata !85, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!118 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!119 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!120 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!121 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !117} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!122 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !117} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!123 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!124 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!125 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !126} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!127 = metadata !{i32 786445, metadata !85, metadata !112, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!128 = metadata !{i32 786445, metadata !85, metadata !107, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !129} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!129 = metadata !{i32 786454, metadata !85, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!130 = metadata !{i32 786451, metadata !85, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !131, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!131 = metadata !{metadata !132, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152}
!132 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !133} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!133 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!134 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !133} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!135 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !133} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!136 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !133} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!137 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !133} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!138 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !126} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!139 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !17} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!140 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !133} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!141 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !133} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!142 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !133} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!143 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !133} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!144 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !133} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!145 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !126} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!146 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !17} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!147 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!148 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !14} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!149 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!150 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!151 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!152 = metadata !{i32 786445, metadata !85, metadata !130, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!153 = metadata !{i32 786445, metadata !85, metadata !107, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !154} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!154 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!155 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!156 = metadata !{metadata !14, metadata !157, metadata !180}
!157 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!158 = metadata !{i32 786454, metadata !85, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!159 = metadata !{i32 786451, metadata !85, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !160, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!160 = metadata !{metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !173}
!161 = metadata !{i32 786445, metadata !85, metadata !159, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!162 = metadata !{i32 786445, metadata !85, metadata !159, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!163 = metadata !{i32 786445, metadata !85, metadata !159, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!164 = metadata !{i32 786445, metadata !85, metadata !159, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!165 = metadata !{i32 786445, metadata !85, metadata !159, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!166 = metadata !{i32 786445, metadata !85, metadata !159, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !133} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!167 = metadata !{i32 786445, metadata !85, metadata !159, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!168 = metadata !{i32 786445, metadata !85, metadata !159, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!169 = metadata !{i32 786445, metadata !85, metadata !159, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !170} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!170 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!171 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{null, metadata !14, metadata !14, metadata !17, metadata !17}
!173 = metadata !{i32 786445, metadata !85, metadata !159, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !174} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!175 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!176 = metadata !{null, metadata !177, metadata !178}
!177 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!178 = metadata !{i32 786454, metadata !85, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!181 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !182} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!183 = metadata !{i32 786454, metadata !85, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!184 = metadata !{i32 786451, metadata !85, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !185, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!185 = metadata !{metadata !186, metadata !199, metadata !203, metadata !207, metadata !210, metadata !214, metadata !215}
!186 = metadata !{i32 786445, metadata !85, metadata !184, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !187} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!187 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !188, metadata !196, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!188 = metadata !{i32 786454, metadata !85, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!189 = metadata !{i32 786451, metadata !85, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !190, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!190 = metadata !{metadata !191, metadata !193, metadata !194}
!191 = metadata !{i32 786445, metadata !85, metadata !189, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !192} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!192 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!193 = metadata !{i32 786445, metadata !85, metadata !189, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !118} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!194 = metadata !{i32 786445, metadata !85, metadata !189, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !195} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!195 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!196 = metadata !{metadata !197, metadata !198}
!197 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!198 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!199 = metadata !{i32 786445, metadata !85, metadata !184, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !200} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!200 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !188, metadata !201, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!201 = metadata !{metadata !78, metadata !202}
!202 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!203 = metadata !{i32 786445, metadata !85, metadata !184, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !204} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!204 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !188, metadata !205, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!205 = metadata !{metadata !78, metadata !206}
!206 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!207 = metadata !{i32 786445, metadata !85, metadata !184, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !208} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!208 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !188, metadata !209, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!209 = metadata !{metadata !78, metadata !67}
!210 = metadata !{i32 786445, metadata !85, metadata !184, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !211} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!211 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !188, metadata !212, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!212 = metadata !{metadata !213}
!213 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!214 = metadata !{i32 786445, metadata !85, metadata !184, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !211} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!215 = metadata !{i32 786445, metadata !85, metadata !184, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !216} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!216 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !188, metadata !217, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!217 = metadata !{metadata !197}
!218 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !219} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !220} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!220 = metadata !{i32 786454, metadata !85, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !221} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!221 = metadata !{i32 786451, metadata !85, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !222, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!222 = metadata !{metadata !223, metadata !225, metadata !226, metadata !229, metadata !232, metadata !236, metadata !237, metadata !241, metadata !242, metadata !243}
!223 = metadata !{i32 786445, metadata !85, metadata !221, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !224} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!224 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !188, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!225 = metadata !{i32 786445, metadata !85, metadata !221, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!226 = metadata !{i32 786445, metadata !85, metadata !221, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !227} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!227 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !188, metadata !228, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!228 = metadata !{metadata !197, metadata !213}
!229 = metadata !{i32 786445, metadata !85, metadata !221, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !230} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!230 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !188, metadata !231, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!231 = metadata !{metadata !206, metadata !213}
!232 = metadata !{i32 786445, metadata !85, metadata !221, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !233} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!233 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !188, metadata !234, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!234 = metadata !{metadata !206, metadata !235}
!235 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!236 = metadata !{i32 786445, metadata !85, metadata !221, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !233} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!237 = metadata !{i32 786445, metadata !85, metadata !221, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !238} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!238 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !188, metadata !239, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!239 = metadata !{metadata !206, metadata !240}
!240 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!241 = metadata !{i32 786445, metadata !85, metadata !221, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !238} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!242 = metadata !{i32 786445, metadata !85, metadata !221, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !233} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!243 = metadata !{i32 786445, metadata !85, metadata !221, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !233} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!244 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !245} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!245 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !246} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!246 = metadata !{i32 786454, metadata !85, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!247 = metadata !{i32 786451, metadata !85, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !248, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!248 = metadata !{metadata !249, metadata !250, metadata !251}
!249 = metadata !{i32 786445, metadata !85, metadata !247, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!250 = metadata !{i32 786445, metadata !85, metadata !247, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!251 = metadata !{i32 786445, metadata !85, metadata !247, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !252} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!252 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !247} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!253 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!254 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !17} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!255 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !17} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!256 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !17} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!257 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!258 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !17} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!259 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !17} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!260 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !17} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!261 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !262} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!262 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !263} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!263 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!264 = metadata !{metadata !265, metadata !14}
!265 = metadata !{i32 786454, metadata !4, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!266 = metadata !{i32 786445, metadata !85, metadata !96, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !267} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!267 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !14, metadata !268, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!268 = metadata !{metadata !197, metadata !78}
!269 = metadata !{metadata !270}
!270 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!271 = metadata !{i32 786445, metadata !85, metadata !88, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!272 = metadata !{i32 786445, metadata !85, metadata !88, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !273} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!273 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!274 = metadata !{i32 786445, metadata !85, metadata !88, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !273} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!275 = metadata !{i32 786445, metadata !85, metadata !88, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !273} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!276 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !84, i32 559, metadata !86, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!277 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !84, i32 560, metadata !86, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!278 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !84, i32 561, metadata !86, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!279 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !84, i32 562, metadata !86, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!280 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !84, i32 565, metadata !281, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!281 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !282} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!282 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!283 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !84, i32 566, metadata !284, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!284 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!285 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !84, i32 567, metadata !286, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!286 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!287 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !84, i32 569, metadata !133, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!288 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !84, i32 570, metadata !133, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!289 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !84, i32 572, metadata !14, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!290 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !84, i32 572, metadata !14, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!291 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !84, i32 573, metadata !292, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!292 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!293 = metadata !{i32 786454, metadata !4, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!294 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !295, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!295 = metadata !{metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !306, metadata !307, metadata !308, metadata !309, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329}
!296 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !265} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!297 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !133} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!298 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !133} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!299 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !265} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!300 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !265} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!301 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !265} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!302 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !303} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!303 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !14, metadata !304, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!304 = metadata !{metadata !305}
!305 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!306 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !265} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!307 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !133} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!308 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !133} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!309 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !310} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!310 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !133, metadata !304, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!311 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !310} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!312 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !310} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!313 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !265} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!314 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !133} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!315 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !133} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!316 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !126} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!317 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !14} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!318 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !14} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!319 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !265} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!320 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !133} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!321 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !14} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!322 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !14} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!323 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !14} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!324 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !14} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!325 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !14} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!326 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !265} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!327 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !265} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!328 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !265} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!329 = metadata !{i32 786445, metadata !4, metadata !294, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !265} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!330 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !84, i32 574, metadata !331, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!331 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !332} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!332 = metadata !{i32 786454, metadata !4, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !333} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!333 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !334, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!334 = metadata !{metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372}
!335 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !265} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!336 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !133} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!337 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !265} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!338 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !265} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!339 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !265} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!340 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !265} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!341 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !133} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!342 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !133} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!343 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !133} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!344 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !265} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!345 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !303} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!346 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !133} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!347 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !133} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!348 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !133} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!349 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !133} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!350 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !133} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!351 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !265} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!352 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!353 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!354 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !133} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!355 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !356} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!356 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !357, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!357 = metadata !{metadata !358}
!358 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!359 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !133} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!360 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !265} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!361 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !133} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!362 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !133} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!363 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !265} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!364 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !265} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!365 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !265} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!366 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !265} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!367 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !133} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!368 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !133} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!369 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !133} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!370 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !133} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!371 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !265} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!372 = metadata !{i32 786445, metadata !4, metadata !333, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !373} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!373 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !374} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!374 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !375, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!375 = metadata !{metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424}
!376 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !265} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!377 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !133} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!378 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !133} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!379 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !133} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!380 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !265} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!381 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !265} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!382 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !265} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!383 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !133} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!384 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !265} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!385 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !265} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!386 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !133} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!387 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !133} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!388 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !133} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!389 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !265} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!390 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !133} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!391 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !133} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!392 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !265} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!393 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !133} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!394 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !133} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!395 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !265} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!396 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !265} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!397 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !398} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!398 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !399} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!399 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !400, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!400 = metadata !{metadata !401, metadata !402, metadata !403, metadata !404, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413}
!401 = metadata !{i32 786445, metadata !4, metadata !399, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !133} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!402 = metadata !{i32 786445, metadata !4, metadata !399, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !133} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!403 = metadata !{i32 786445, metadata !4, metadata !399, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !133} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!404 = metadata !{i32 786445, metadata !4, metadata !399, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !405} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!405 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !133, metadata !406, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!406 = metadata !{metadata !407}
!407 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!408 = metadata !{i32 786445, metadata !4, metadata !399, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !405} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!409 = metadata !{i32 786445, metadata !4, metadata !399, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !405} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!410 = metadata !{i32 786445, metadata !4, metadata !399, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !133} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!411 = metadata !{i32 786445, metadata !4, metadata !399, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !133} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!412 = metadata !{i32 786445, metadata !4, metadata !399, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !133} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!413 = metadata !{i32 786445, metadata !4, metadata !399, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !133} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!414 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !265} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!415 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !398} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!416 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !265} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!417 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !265} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!418 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !265} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!419 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !133} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!420 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !133} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!421 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !133} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!422 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !133} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!423 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !133} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!424 = metadata !{i32 786445, metadata !4, metadata !374, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !133} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!425 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !84, i32 578, metadata !14, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!426 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !84, i32 579, metadata !14, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!427 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !84, i32 583, metadata !428, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!428 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !286} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!429 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !84, i32 584, metadata !428, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!430 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !84, i32 585, metadata !431, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!431 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !428} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!432 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !84, i32 586, metadata !14, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!433 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !84, i32 587, metadata !14, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!434 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !84, i32 588, metadata !14, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!435 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !84, i32 589, metadata !14, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!436 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !84, i32 592, metadata !281, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!437 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !84, i32 593, metadata !281, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!438 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !84, i32 595, metadata !284, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!439 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !84, i32 596, metadata !284, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!440 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !84, i32 598, metadata !281, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!441 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !84, i32 599, metadata !284, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!442 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !84, i32 601, metadata !281, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!443 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !84, i32 602, metadata !284, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!444 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !84, i32 604, metadata !445, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!445 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !446} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!446 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!447 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !84, i32 605, metadata !446, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!448 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !84, i32 608, metadata !449, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!449 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!450 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !84, i32 609, metadata !449, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!451 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !84, i32 610, metadata !14, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!452 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !84, i32 612, metadata !14, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!453 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !84, i32 612, metadata !14, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!454 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !84, i32 612, metadata !14, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!455 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !84, i32 613, metadata !14, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!456 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !84, i32 613, metadata !14, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!457 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !84, i32 613, metadata !14, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!458 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !84, i32 614, metadata !14, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!459 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !84, i32 617, metadata !460, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!460 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !16, metadata !461, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!461 = metadata !{metadata !462}
!462 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!463 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !84, i32 620, metadata !464, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!464 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !465, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!465 = metadata !{metadata !466, metadata !466}
!466 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!467 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !84, i32 620, metadata !464, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!468 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !84, i32 620, metadata !464, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!469 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !84, i32 621, metadata !464, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!470 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !84, i32 621, metadata !464, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!471 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !84, i32 621, metadata !464, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!472 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !84, i32 622, metadata !473, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!473 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !14, metadata !474, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!474 = metadata !{metadata !197, metadata !466, metadata !466}
!475 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !84, i32 623, metadata !476, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!476 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !14, metadata !477, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!477 = metadata !{metadata !78, metadata !213, metadata !213}
!478 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !84, i32 623, metadata !476, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!479 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !84, i32 624, metadata !476, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!480 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !84, i32 624, metadata !476, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!481 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !84, i32 625, metadata !482, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!482 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !14, metadata !483, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!483 = metadata !{metadata !213, metadata !213}
!484 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !84, i32 625, metadata !485, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!485 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !14, metadata !486, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!486 = metadata !{metadata !466}
!487 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !84, i32 1201, metadata !488, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!488 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !489} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!489 = metadata !{i32 786454, metadata !85, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !490} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!490 = metadata !{i32 786451, metadata !85, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !491, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!491 = metadata !{metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497}
!492 = metadata !{i32 786445, metadata !85, metadata !490, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!493 = metadata !{i32 786445, metadata !85, metadata !490, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!494 = metadata !{i32 786445, metadata !85, metadata !490, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!495 = metadata !{i32 786445, metadata !85, metadata !490, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!496 = metadata !{i32 786445, metadata !85, metadata !490, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!497 = metadata !{i32 786445, metadata !85, metadata !490, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!498 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !84, i32 1202, metadata !499, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!499 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !500} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!500 = metadata !{i32 786454, metadata !85, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !501} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!501 = metadata !{i32 786451, metadata !85, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !502, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!502 = metadata !{metadata !503, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !522, metadata !523, metadata !527, metadata !528, metadata !529, metadata !530, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538}
!503 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !504} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!504 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!505 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !464} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!506 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !464} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!507 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !464} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!508 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !431} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!509 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !428} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!510 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !14} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!511 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !14} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!512 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !513} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!513 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !14, metadata !212, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!514 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !513} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!515 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !286} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!516 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !485} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!517 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !14} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!518 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !519} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!519 = metadata !{i32 786454, metadata !85, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !520} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!520 = metadata !{i32 786454, metadata !85, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !521} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!521 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!522 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!523 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !524} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!524 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !525} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!525 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !526} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!526 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !445} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!527 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !524} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!528 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !524} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!529 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !524} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!530 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !531} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!531 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !46, metadata !477, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!532 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !14} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!533 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !14} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!534 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !14} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!535 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !14} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!536 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!537 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!538 = metadata !{i32 786445, metadata !85, metadata !501, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!539 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !84, i32 1203, metadata !500, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!540 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !84, i32 1203, metadata !500, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!541 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !84, i32 1204, metadata !500, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!542 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !84, i32 1204, metadata !500, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!543 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !84, i32 1230, metadata !544, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!544 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !545} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!545 = metadata !{i32 786454, metadata !85, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !546} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!546 = metadata !{i32 786451, metadata !547, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !548, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!547 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!548 = metadata !{metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !569, metadata !570, metadata !571, metadata !572, metadata !574, metadata !575, metadata !577, metadata !581, metadata !583, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !591, metadata !592}
!549 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!550 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!551 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!552 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!553 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!554 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!555 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!556 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!557 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!558 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!559 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!560 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!561 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !562} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!562 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !563} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!563 = metadata !{i32 786451, metadata !547, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !564, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!564 = metadata !{metadata !565, metadata !566, metadata !568}
!565 = metadata !{i32 786445, metadata !547, metadata !563, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !562} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!566 = metadata !{i32 786445, metadata !547, metadata !563, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !567} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!567 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !546} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!568 = metadata !{i32 786445, metadata !547, metadata !563, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!569 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !567} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!570 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!571 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!572 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !573} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!573 = metadata !{i32 786454, metadata !547, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !521} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!574 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !192} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!575 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !576} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!576 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!577 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !578} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!578 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !16, metadata !579, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!579 = metadata !{metadata !580}
!580 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!581 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !582} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!582 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!583 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !584} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!584 = metadata !{i32 786454, metadata !547, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !521} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!585 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !582} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!586 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !582} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!587 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !582} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!588 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !582} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!589 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !590} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!590 = metadata !{i32 786454, metadata !547, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !195} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!591 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!592 = metadata !{i32 786445, metadata !547, metadata !546, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !593} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!593 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !16, metadata !594, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!594 = metadata !{metadata !595}
!595 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!596 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !84, i32 1231, metadata !544, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!597 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !84, i32 1232, metadata !544, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!598 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !84, i32 1233, metadata !14, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!599 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !84, i32 1234, metadata !14, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!600 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !84, i32 1237, metadata !601, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!601 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !14, metadata !594, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!602 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !84, i32 1238, metadata !601, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!603 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !84, i32 1239, metadata !601, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!604 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !84, i32 1240, metadata !601, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!605 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !84, i32 1241, metadata !601, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!606 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !84, i32 1242, metadata !601, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!607 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !84, i32 1456, metadata !14, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!608 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !84, i32 1465, metadata !14, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!609 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !84, i32 1466, metadata !14, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!610 = metadata !{i32 786484, i32 0, null, metadata !"LevelScale4x4Luma_Intra", metadata !"LevelScale4x4Luma_Intra", metadata !"", metadata !11, i32 46, metadata !611, i32 0, i32 1, [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, null} ; [ DW_TAG_variable ] [LevelScale4x4Luma_Intra] [line 46] [def]
!611 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3072, i64 32, i32 0, i32 0, metadata !14, metadata !612, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3072, align 32, offset 0] [from int]
!612 = metadata !{metadata !67, metadata !213, metadata !213}
!613 = metadata !{i32 786484, i32 0, null, metadata !"LevelScale4x4Chroma_Intra", metadata !"LevelScale4x4Chroma_Intra", metadata !"", metadata !11, i32 47, metadata !614, i32 0, i32 1, [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, null} ; [ DW_TAG_variable ] [LevelScale4x4Chroma_Intra] [line 47] [def]
!614 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6144, i64 32, i32 0, i32 0, metadata !14, metadata !615, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6144, align 32, offset 0] [from int]
!615 = metadata !{metadata !78, metadata !67, metadata !213, metadata !213}
!616 = metadata !{i32 786484, i32 0, null, metadata !"LevelScale4x4Luma_Inter", metadata !"LevelScale4x4Luma_Inter", metadata !"", metadata !11, i32 49, metadata !611, i32 0, i32 1, [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, null} ; [ DW_TAG_variable ] [LevelScale4x4Luma_Inter] [line 49] [def]
!617 = metadata !{i32 786484, i32 0, null, metadata !"LevelScale4x4Chroma_Inter", metadata !"LevelScale4x4Chroma_Inter", metadata !"", metadata !11, i32 50, metadata !614, i32 0, i32 1, [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, null} ; [ DW_TAG_variable ] [LevelScale4x4Chroma_Inter] [line 50] [def]
!618 = metadata !{i32 786484, i32 0, null, metadata !"LevelScale8x8Luma_Intra", metadata !"LevelScale8x8Luma_Intra", metadata !"", metadata !11, i32 52, metadata !619, i32 0, i32 1, [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, null} ; [ DW_TAG_variable ] [LevelScale8x8Luma_Intra] [line 52] [def]
!619 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 12288, i64 32, i32 0, i32 0, metadata !14, metadata !620, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 12288, align 32, offset 0] [from int]
!620 = metadata !{metadata !67, metadata !305, metadata !305}
!621 = metadata !{i32 786484, i32 0, null, metadata !"LevelScale8x8Luma_Inter", metadata !"LevelScale8x8Luma_Inter", metadata !"", metadata !11, i32 53, metadata !619, i32 0, i32 1, [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, null} ; [ DW_TAG_variable ] [LevelScale8x8Luma_Inter] [line 53] [def]
!622 = metadata !{i32 786484, i32 0, null, metadata !"InvLevelScale4x4Luma_Intra", metadata !"InvLevelScale4x4Luma_Intra", metadata !"", metadata !11, i32 55, metadata !611, i32 0, i32 1, [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, null} ; [ DW_TAG_variable ] [InvLevelScale4x4Luma_Intra] [line 55] [def]
!623 = metadata !{i32 786484, i32 0, null, metadata !"InvLevelScale4x4Chroma_Intra", metadata !"InvLevelScale4x4Chroma_Intra", metadata !"", metadata !11, i32 56, metadata !614, i32 0, i32 1, [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, null} ; [ DW_TAG_variable ] [InvLevelScale4x4Chroma_Intra] [line 56] [def]
!624 = metadata !{i32 786484, i32 0, null, metadata !"InvLevelScale4x4Luma_Inter", metadata !"InvLevelScale4x4Luma_Inter", metadata !"", metadata !11, i32 58, metadata !611, i32 0, i32 1, [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, null} ; [ DW_TAG_variable ] [InvLevelScale4x4Luma_Inter] [line 58] [def]
!625 = metadata !{i32 786484, i32 0, null, metadata !"InvLevelScale4x4Chroma_Inter", metadata !"InvLevelScale4x4Chroma_Inter", metadata !"", metadata !11, i32 59, metadata !614, i32 0, i32 1, [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, null} ; [ DW_TAG_variable ] [InvLevelScale4x4Chroma_Inter] [line 59] [def]
!626 = metadata !{i32 786484, i32 0, null, metadata !"InvLevelScale8x8Luma_Intra", metadata !"InvLevelScale8x8Luma_Intra", metadata !"", metadata !11, i32 61, metadata !619, i32 0, i32 1, [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, null} ; [ DW_TAG_variable ] [InvLevelScale8x8Luma_Intra] [line 61] [def]
!627 = metadata !{i32 786484, i32 0, null, metadata !"InvLevelScale8x8Luma_Inter", metadata !"InvLevelScale8x8Luma_Inter", metadata !"", metadata !11, i32 62, metadata !619, i32 0, i32 1, [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, null} ; [ DW_TAG_variable ] [InvLevelScale8x8Luma_Inter] [line 62] [def]
!628 = metadata !{i32 786484, i32 0, null, metadata !"ScalingList4x4input", metadata !"ScalingList4x4input", metadata !"", metadata !11, i32 64, metadata !629, i32 0, i32 1, [6 x [16 x i16]]* @ScalingList4x4input, null} ; [ DW_TAG_variable ] [ScalingList4x4input] [line 64] [def]
!629 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 16, i32 0, i32 0, metadata !46, metadata !630, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 16, offset 0] [from short]
!630 = metadata !{metadata !67, metadata !466}
!631 = metadata !{i32 786484, i32 0, null, metadata !"ScalingList8x8input", metadata !"ScalingList8x8input", metadata !"", metadata !11, i32 65, metadata !632, i32 0, i32 1, [2 x [64 x i16]]* @ScalingList8x8input, null} ; [ DW_TAG_variable ] [ScalingList8x8input] [line 65] [def]
!632 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 16, i32 0, i32 0, metadata !46, metadata !633, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 16, offset 0] [from short]
!633 = metadata !{metadata !78, metadata !634}
!634 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!635 = metadata !{i32 786484, i32 0, null, metadata !"ScalingList4x4", metadata !"ScalingList4x4", metadata !"", metadata !11, i32 66, metadata !629, i32 0, i32 1, [6 x [16 x i16]]* @ScalingList4x4, null} ; [ DW_TAG_variable ] [ScalingList4x4] [line 66] [def]
!636 = metadata !{i32 786484, i32 0, null, metadata !"ScalingList8x8", metadata !"ScalingList8x8", metadata !"", metadata !11, i32 67, metadata !632, i32 0, i32 1, [2 x [64 x i16]]* @ScalingList8x8, null} ; [ DW_TAG_variable ] [ScalingList8x8] [line 67] [def]
!637 = metadata !{i32 786484, i32 0, null, metadata !"UseDefaultScalingMatrix4x4Flag", metadata !"UseDefaultScalingMatrix4x4Flag", metadata !"", metadata !11, i32 69, metadata !638, i32 0, i32 1, [6 x i16]* @UseDefaultScalingMatrix4x4Flag, null} ; [ DW_TAG_variable ] [UseDefaultScalingMatrix4x4Flag] [line 69] [def]
!638 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 16, i32 0, i32 0, metadata !46, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 16, offset 0] [from short]
!639 = metadata !{i32 786484, i32 0, null, metadata !"UseDefaultScalingMatrix8x8Flag", metadata !"UseDefaultScalingMatrix8x8Flag", metadata !"", metadata !11, i32 70, metadata !640, i32 0, i32 1, [2 x i16]* @UseDefaultScalingMatrix8x8Flag, null} ; [ DW_TAG_variable ] [UseDefaultScalingMatrix8x8Flag] [line 70] [def]
!640 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 16, i32 0, i32 0, metadata !46, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 16, offset 0] [from short]
!641 = metadata !{i32 786484, i32 0, null, metadata !"Quant8_intra_default", metadata !"Quant8_intra_default", metadata !"", metadata !11, i32 88, metadata !642, i32 1, i32 1, [64 x i16]* @Quant8_intra_default, null} ; [ DW_TAG_variable ] [Quant8_intra_default] [line 88] [local] [def]
!642 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !643, metadata !644, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 16, offset 0] [from ]
!643 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from short]
!644 = metadata !{metadata !634}
!645 = metadata !{i32 786484, i32 0, null, metadata !"Quant8_inter_default", metadata !"Quant8_inter_default", metadata !"", metadata !11, i32 100, metadata !642, i32 1, i32 1, [64 x i16]* @Quant8_inter_default, null} ; [ DW_TAG_variable ] [Quant8_inter_default] [line 100] [local] [def]
!646 = metadata !{i32 786484, i32 0, null, metadata !"Quant_intra_default", metadata !"Quant_intra_default", metadata !"", metadata !11, i32 72, metadata !647, i32 1, i32 1, [16 x i16]* @Quant_intra_default, null} ; [ DW_TAG_variable ] [Quant_intra_default] [line 72] [local] [def]
!647 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 16, i32 0, i32 0, metadata !643, metadata !486, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 16, offset 0] [from ]
!648 = metadata !{i32 786484, i32 0, null, metadata !"Quant_inter_default", metadata !"Quant_inter_default", metadata !"", metadata !11, i32 80, metadata !647, i32 1, i32 1, [16 x i16]* @Quant_inter_default, null} ; [ DW_TAG_variable ] [Quant_inter_default] [line 80] [local] [def]
!649 = metadata !{i32 786484, i32 0, null, metadata !"MatrixType8x8", metadata !"MatrixType8x8", metadata !"", metadata !11, i32 40, metadata !650, i32 1, i32 1, [2 x [20 x i8]]* @MatrixType8x8, null} ; [ DW_TAG_variable ] [MatrixType8x8] [line 40] [local] [def]
!650 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !651, metadata !652, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from ]
!651 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!652 = metadata !{metadata !78, metadata !595}
!653 = metadata !{i32 786484, i32 0, null, metadata !"MatrixType4x4", metadata !"MatrixType4x4", metadata !"", metadata !11, i32 30, metadata !654, i32 1, i32 1, [6 x [20 x i8]]* @MatrixType4x4, null} ; [ DW_TAG_variable ] [MatrixType4x4] [line 30] [local] [def]
!654 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 960, i64 8, i32 0, i32 0, metadata !651, metadata !655, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 960, align 8, offset 0] [from ]
!655 = metadata !{metadata !67, metadata !595}
!656 = metadata !{i32 126, i32 0, metadata !10, null}
!657 = metadata !{i32 128, i32 0, metadata !10, null}
!658 = metadata !{i32 130, i32 0, metadata !10, null}
!659 = metadata !{metadata !"int", metadata !660}
!660 = metadata !{metadata !"omnipotent char", metadata !661}
!661 = metadata !{metadata !"Simple C/C++ TBAA"}
!662 = metadata !{i32 131, i32 0, metadata !10, null}
!663 = metadata !{i32 136, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !10, i32 132, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!665 = metadata !{i32 133, i32 0, metadata !664, null}
!666 = metadata !{i32 139, i32 0, metadata !10, null}
!667 = metadata !{i32 140, i32 0, metadata !10, null}
!668 = metadata !{i32 141, i32 0, metadata !10, null}
!669 = metadata !{i32 146, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !10, i32 142, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!671 = metadata !{i32 143, i32 0, metadata !670, null}
!672 = metadata !{i32 150, i32 0, metadata !10, null}
!673 = metadata !{i32 162, i32 0, metadata !22, null}
!674 = metadata !{i32 164, i32 0, metadata !22, null}
!675 = metadata !{i32 166, i32 0, metadata !22, null}
!676 = metadata !{i32 167, i32 0, metadata !22, null}
!677 = metadata !{i32 168, i32 0, metadata !22, null}
!678 = metadata !{i32 169, i32 0, metadata !22, null}
!679 = metadata !{i32 170, i32 0, metadata !22, null}
!680 = metadata !{i32 171, i32 0, metadata !22, null}
!681 = metadata !{i32 174, i32 0, metadata !22, null}
!682 = metadata !{i32 176, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !22, i32 175, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!684 = metadata !{i32 179, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !683, i32 177, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!686 = metadata !{i32 180, i32 0, metadata !685, null}
!687 = metadata !{i32 182, i32 0, metadata !685, null}
!688 = metadata !{i32 183, i32 0, metadata !685, null}
!689 = metadata !{i32 184, i32 0, metadata !685, null}
!690 = metadata !{i32 189, i32 0, metadata !685, null}
!691 = metadata !{i32 190, i32 0, metadata !685, null}
!692 = metadata !{i32 191, i32 0, metadata !685, null}
!693 = metadata !{i32 192, i32 0, metadata !685, null}
!694 = metadata !{i32 195, i32 0, metadata !685, null}
!695 = metadata !{i32 196, i32 0, metadata !685, null}
!696 = metadata !{i32 199, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !685, i32 198, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!698 = metadata !{i32 200, i32 0, metadata !697, null}
!699 = metadata !{i32 205, i32 0, metadata !685, null}
!700 = metadata !{i32 206, i32 0, metadata !685, null}
!701 = metadata !{i32 208, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !685, i32 207, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!703 = metadata !{metadata !"any pointer", metadata !660}
!704 = metadata !{i32 209, i32 0, metadata !702, null}
!705 = metadata !{i32 210, i32 0, metadata !702, null}
!706 = metadata !{i32 213, i32 0, metadata !685, null}
!707 = metadata !{i32 214, i32 0, metadata !685, null}
!708 = metadata !{i32 217, i32 0, metadata !685, null}
!709 = metadata !{i32 218, i32 0, metadata !685, null}
!710 = metadata !{i32 219, i32 0, metadata !685, null}
!711 = metadata !{i32 222, i32 0, metadata !685, null}
!712 = metadata !{i32 224, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !685, i32 223, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!714 = metadata !{i32 -1}
!715 = metadata !{i32 225, i32 0, metadata !713, null}
!716 = metadata !{i32 226, i32 0, metadata !713, null}
!717 = metadata !{i32 227, i32 0, metadata !685, null}
!718 = metadata !{i32 228, i32 0, metadata !685, null}
!719 = metadata !{i32 231, i32 0, metadata !22, null}
!720 = metadata !{i32 233, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !22, i32 233, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!722 = metadata !{i32 235, i32 0, metadata !723, null}
!723 = metadata !{i32 786443, metadata !1, metadata !721, i32 234, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!724 = metadata !{i32 236, i32 0, metadata !723, null}
!725 = metadata !{i32 238, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !723, i32 237, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!727 = metadata !{i32 239, i32 0, metadata !726, null}
!728 = metadata !{i32 240, i32 0, metadata !726, null}
!729 = metadata !{i32 1}
!730 = metadata !{i32 241, i32 0, metadata !723, null}
!731 = metadata !{i32 242, i32 0, metadata !723, null}
!732 = metadata !{i32 244, i32 0, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !723, i32 243, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!734 = metadata !{i32 245, i32 0, metadata !733, null}
!735 = metadata !{i32 246, i32 0, metadata !733, null}
!736 = metadata !{i32 2}
!737 = metadata !{i32 247, i32 0, metadata !723, null}
!738 = metadata !{i32 249, i32 0, metadata !723, null}
!739 = metadata !{i32 252, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !723, i32 250, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!741 = metadata !{i32 16}
!742 = metadata !{i32 251, i32 0, metadata !740, null}
!743 = metadata !{i32 253, i32 0, metadata !740, null}
!744 = metadata !{i32 254, i32 0, metadata !740, null}
!745 = metadata !{i32 64}
!746 = metadata !{i32 257, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !723, i32 256, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!748 = metadata !{i32 258, i32 0, metadata !747, null}
!749 = metadata !{i32 259, i32 0, metadata !747, null}
!750 = metadata !{i32 262, i32 0, metadata !751, null}
!751 = metadata !{i32 786443, metadata !1, metadata !723, i32 262, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!752 = metadata !{i32 264, i32 0, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !751, i32 263, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!754 = metadata !{i32 266, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !753, i32 265, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!756 = metadata !{i32 267, i32 0, metadata !755, null}
!757 = metadata !{i32 268, i32 0, metadata !755, null}
!758 = metadata !{i32 270, i32 0, metadata !753, null}
!759 = metadata !{metadata !"short", metadata !660}
!760 = metadata !{i32 272, i32 0, metadata !723, null}
!761 = metadata !{i32 273, i32 0, metadata !723, null}
!762 = metadata !{i32 275, i32 0, metadata !22, null}
!763 = metadata !{i32 289, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !47, i32 289, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!765 = metadata !{i32 291, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !764, i32 290, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!767 = metadata !{i32 293, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !766, i32 292, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!769 = metadata !{i32 294, i32 0, metadata !768, null}
!770 = metadata !{i32 297, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !772, i32 297, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!772 = metadata !{i32 786443, metadata !1, metadata !768, i32 295, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!773 = metadata !{i32 299, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !771, i32 298, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!775 = metadata !{i32 308, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !772, i32 307, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!777 = metadata !{i32 309, i32 0, metadata !776, null}
!778 = metadata !{i32 310, i32 0, metadata !776, null}
!779 = metadata !{i32 311, i32 0, metadata !776, null}
!780 = metadata !{i32 313, i32 0, metadata !776, null}
!781 = metadata !{i32 318, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !768, i32 317, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!783 = metadata !{i32 319, i32 0, metadata !782, null}
!784 = metadata !{i32 320, i32 0, metadata !782, null}
!785 = metadata !{i32 326, i32 0, metadata !766, null}
!786 = metadata !{i32 322, i32 0, metadata !782, null}
!787 = metadata !{i32 328, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !766, i32 327, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!789 = metadata !{i32 329, i32 0, metadata !788, null}
!790 = metadata !{i32 332, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !792, i32 332, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!792 = metadata !{i32 786443, metadata !1, metadata !788, i32 330, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!793 = metadata !{i32 334, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !791, i32 333, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!795 = metadata !{i32 343, i32 0, metadata !796, null}
!796 = metadata !{i32 786443, metadata !1, metadata !792, i32 342, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!797 = metadata !{i32 344, i32 0, metadata !796, null}
!798 = metadata !{i32 346, i32 0, metadata !796, null}
!799 = metadata !{i32 348, i32 0, metadata !796, null}
!800 = metadata !{i32 353, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !788, i32 352, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!802 = metadata !{i32 355, i32 0, metadata !801, null}
!803 = metadata !{i32 357, i32 0, metadata !801, null}
!804 = metadata !{i32 361, i32 0, metadata !47, null}
!805 = metadata !{i32 373, i32 0, metadata !55, null}
!806 = metadata !{i32 375, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !55, i32 374, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!808 = metadata !{i32 376, i32 0, metadata !807, null}
!809 = metadata !{i32 377, i32 0, metadata !807, null}
!810 = metadata !{i32 378, i32 0, metadata !807, null}
!811 = metadata !{i32 380, i32 0, metadata !807, null}
!812 = metadata !{i32 382, i32 0, metadata !807, null}
!813 = metadata !{i32 383, i32 0, metadata !807, null}
!814 = metadata !{i32 385, i32 0, metadata !807, null}
!815 = metadata !{i32 386, i32 0, metadata !807, null}
!816 = metadata !{i32 388, i32 0, metadata !807, null}
!817 = metadata !{i32 389, i32 0, metadata !807, null}
!818 = metadata !{i32 390, i32 0, metadata !55, null}
!819 = metadata !{i32 407, i32 0, metadata !58, null}
!820 = metadata !{i32 408, i32 0, metadata !58, null}
!821 = metadata !{i32 410, i32 0, metadata !58, null}
!822 = metadata !{i32 414, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !58, i32 413, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!824 = metadata !{i32 416, i32 0, metadata !823, null}
!825 = metadata !{i32 418, i32 0, metadata !826, null}
!826 = metadata !{i32 786443, metadata !1, metadata !823, i32 417, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!827 = metadata !{i32 420, i32 0, metadata !823, null}
!828 = metadata !{i32 462, i32 0, metadata !829, null}
!829 = metadata !{i32 786443, metadata !1, metadata !830, i32 460, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!830 = metadata !{i32 786443, metadata !1, metadata !831, i32 459, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!831 = metadata !{i32 786443, metadata !1, metadata !832, i32 458, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!832 = metadata !{i32 786443, metadata !1, metadata !833, i32 457, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!833 = metadata !{i32 786443, metadata !1, metadata !58, i32 456, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!834 = metadata !{i32 473, i32 0, metadata !829, null}
!835 = metadata !{i32 484, i32 0, metadata !829, null}
!836 = metadata !{i32 495, i32 0, metadata !829, null}
!837 = metadata !{i32 506, i32 0, metadata !829, null}
!838 = metadata !{i32 517, i32 0, metadata !829, null}
!839 = metadata !{i32 524, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !1, metadata !829, i32 523, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!841 = metadata !{i32 513, i32 0, metadata !842, null}
!842 = metadata !{i32 786443, metadata !1, metadata !829, i32 512, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!843 = metadata !{i32 491, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !829, i32 490, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!845 = metadata !{i32 480, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !829, i32 479, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!847 = metadata !{i32 457, i32 0, metadata !832, null}
!848 = metadata !{i32 424, i32 0, metadata !849, null}
!849 = metadata !{i32 786443, metadata !1, metadata !850, i32 422, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!850 = metadata !{i32 786443, metadata !1, metadata !823, i32 421, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!851 = metadata !{i32 423, i32 0, metadata !849, null}
!852 = metadata !{i32 421, i32 0, metadata !850, null}
!853 = metadata !{i32 433, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !1, metadata !855, i32 433, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!855 = metadata !{i32 786443, metadata !1, metadata !856, i32 432, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!856 = metadata !{i32 786443, metadata !1, metadata !58, i32 431, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!857 = metadata !{i32 436, i32 0, metadata !858, null}
!858 = metadata !{i32 786443, metadata !1, metadata !859, i32 435, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!859 = metadata !{i32 786443, metadata !1, metadata !854, i32 434, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!860 = metadata !{i32 445, i32 0, metadata !858, null}
!861 = metadata !{i32 434, i32 0, metadata !859, null}
!862 = metadata !{i32 437, i32 0, metadata !858, null}
!863 = metadata !{i32 439, i32 0, metadata !858, null}
!864 = metadata !{i32 440, i32 0, metadata !858, null}
!865 = metadata !{i32 442, i32 0, metadata !858, null}
!866 = metadata !{i32 443, i32 0, metadata !858, null}
!867 = metadata !{i32 446, i32 0, metadata !858, null}
!868 = metadata !{i32 448, i32 0, metadata !858, null}
!869 = metadata !{i32 449, i32 0, metadata !858, null}
!870 = metadata !{i32 451, i32 0, metadata !858, null}
!871 = metadata !{i32 452, i32 0, metadata !858, null}
!872 = metadata !{i32 432, i32 0, metadata !855, null}
!873 = metadata !{i32 458, i32 0, metadata !831, null}
!874 = metadata !{i32 459, i32 0, metadata !830, null}
!875 = metadata !{i32 461, i32 0, metadata !829, null}
!876 = metadata !{i32 469, i32 0, metadata !877, null}
!877 = metadata !{i32 786443, metadata !1, metadata !829, i32 468, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!878 = metadata !{i32 464, i32 0, metadata !879, null}
!879 = metadata !{i32 786443, metadata !1, metadata !829, i32 463, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!880 = metadata !{i32 465, i32 0, metadata !879, null}
!881 = metadata !{i32 466, i32 0, metadata !879, null}
!882 = metadata !{i32 470, i32 0, metadata !877, null}
!883 = metadata !{i32 475, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !1, metadata !829, i32 474, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!885 = metadata !{i32 476, i32 0, metadata !884, null}
!886 = metadata !{i32 477, i32 0, metadata !884, null}
!887 = metadata !{i32 481, i32 0, metadata !846, null}
!888 = metadata !{i32 486, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !1, metadata !829, i32 485, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!890 = metadata !{i32 487, i32 0, metadata !889, null}
!891 = metadata !{i32 488, i32 0, metadata !889, null}
!892 = metadata !{i32 492, i32 0, metadata !844, null}
!893 = metadata !{i32 497, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !829, i32 496, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!895 = metadata !{i32 498, i32 0, metadata !894, null}
!896 = metadata !{i32 499, i32 0, metadata !894, null}
!897 = metadata !{i32 502, i32 0, metadata !898, null}
!898 = metadata !{i32 786443, metadata !1, metadata !829, i32 501, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!899 = metadata !{i32 503, i32 0, metadata !898, null}
!900 = metadata !{i32 508, i32 0, metadata !901, null}
!901 = metadata !{i32 786443, metadata !1, metadata !829, i32 507, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!902 = metadata !{i32 509, i32 0, metadata !901, null}
!903 = metadata !{i32 510, i32 0, metadata !901, null}
!904 = metadata !{i32 514, i32 0, metadata !842, null}
!905 = metadata !{i32 519, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !829, i32 518, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!907 = metadata !{i32 520, i32 0, metadata !906, null}
!908 = metadata !{i32 521, i32 0, metadata !906, null}
!909 = metadata !{i32 525, i32 0, metadata !840, null}
!910 = metadata !{i32 529, i32 0, metadata !58, null}
!911 = metadata !{i32 548, i32 0, metadata !912, null}
!912 = metadata !{i32 786443, metadata !1, metadata !69, i32 547, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!913 = metadata !{i32 541, i32 0, metadata !69, null}
!914 = metadata !{i32 542, i32 0, metadata !69, null}
!915 = metadata !{i32 544, i32 0, metadata !69, null}
!916 = metadata !{i32 550, i32 0, metadata !912, null}
!917 = metadata !{i32 552, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !912, i32 551, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!919 = metadata !{i32 554, i32 0, metadata !912, null}
!920 = metadata !{i32 579, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !922, i32 577, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!922 = metadata !{i32 786443, metadata !1, metadata !923, i32 576, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!923 = metadata !{i32 786443, metadata !1, metadata !924, i32 575, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!924 = metadata !{i32 786443, metadata !1, metadata !925, i32 574, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!925 = metadata !{i32 786443, metadata !1, metadata !69, i32 573, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!926 = metadata !{i32 590, i32 0, metadata !921, null}
!927 = metadata !{i32 574, i32 0, metadata !924, null}
!928 = metadata !{i32 556, i32 0, metadata !929, null}
!929 = metadata !{i32 786443, metadata !1, metadata !912, i32 555, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!930 = metadata !{i32 555, i32 0, metadata !929, null}
!931 = metadata !{i32 562, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !933, i32 562, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!933 = metadata !{i32 786443, metadata !1, metadata !934, i32 561, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!934 = metadata !{i32 786443, metadata !1, metadata !69, i32 560, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!935 = metadata !{i32 565, i32 0, metadata !936, null}
!936 = metadata !{i32 786443, metadata !1, metadata !937, i32 564, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!937 = metadata !{i32 786443, metadata !1, metadata !932, i32 563, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!938 = metadata !{i32 568, i32 0, metadata !936, null}
!939 = metadata !{i32 563, i32 0, metadata !937, null}
!940 = metadata !{i32 566, i32 0, metadata !936, null}
!941 = metadata !{i32 569, i32 0, metadata !936, null}
!942 = metadata !{i32 561, i32 0, metadata !933, null}
!943 = metadata !{i32 575, i32 0, metadata !923, null}
!944 = metadata !{i32 576, i32 0, metadata !922, null}
!945 = metadata !{i32 578, i32 0, metadata !921, null}
!946 = metadata !{i32 586, i32 0, metadata !947, null}
!947 = metadata !{i32 786443, metadata !1, metadata !921, i32 585, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!948 = metadata !{i32 581, i32 0, metadata !949, null}
!949 = metadata !{i32 786443, metadata !1, metadata !921, i32 580, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!950 = metadata !{i32 582, i32 0, metadata !949, null}
!951 = metadata !{i32 583, i32 0, metadata !949, null}
!952 = metadata !{i32 587, i32 0, metadata !947, null}
!953 = metadata !{i32 592, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !921, i32 591, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!955 = metadata !{i32 593, i32 0, metadata !954, null}
!956 = metadata !{i32 594, i32 0, metadata !954, null}
!957 = metadata !{i32 597, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !1, metadata !921, i32 596, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c]
!959 = metadata !{i32 598, i32 0, metadata !958, null}
!960 = metadata !{i32 602, i32 0, metadata !69, null}
