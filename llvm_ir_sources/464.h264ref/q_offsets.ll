; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@offset4x4_check = global [6 x i32] zeroinitializer, align 16
@offset8x8_check = global [2 x i32] zeroinitializer, align 4
@OffsetType4x4 = internal constant [9 x [24 x i8]] [[24 x i8] c"INTRA4X4_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTRA\00\00", [24 x i8] c"INTRA4X4_CHROMAV_INTRA\00\00", [24 x i8] c"INTRA4X4_LUMA_INTER\00\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTER\00\00", [24 x i8] c"INTRA4X4_CHROMAV_INTER\00\00", [24 x i8] c"INTER4X4_LUMA\00\00\00\00\00\00\00\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU\00\00\00\00\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAV\00\00\00\00\00\00\00\00"], align 16
@OffsetType8x8 = internal constant [3 x [24 x i8]] [[24 x i8] c"INTRA8X8_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTER\00\00\00\00\00", [24 x i8] c"INTER8X8_LUMA\00\00\00\00\00\00\00\00\00\00\00"], align 16
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@OffsetList4x4input = common global [9 x [16 x i16]] zeroinitializer, align 16
@OffsetList8x8input = common global [3 x [64 x i16]] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@input = external global %struct.InputParameters*
@.str6 = private unnamed_addr constant [44 x i8] c"Parsing Quantization Offset Matrix file %s \00", align 1
@.str7 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@img = external global %struct.ImageParameters*
@LevelOffset4x4Luma_Intra = common global [13 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelOffset4x4Chroma_Intra = common global [2 x [13 x [4 x [4 x i32]]]] zeroinitializer, align 16
@LevelOffset4x4Luma_Inter = common global [13 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelOffset4x4Chroma_Inter = common global [2 x [13 x [4 x [4 x i32]]]] zeroinitializer, align 16
@Offset_intra_default_intra = internal unnamed_addr constant [16 x i16] [i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341], align 16
@Offset_inter_default = internal unnamed_addr constant [16 x i16] [i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171], align 16
@LevelOffset8x8Luma_Intra = common global [13 x [8 x [8 x i32]]] zeroinitializer, align 16
@LevelOffset8x8Luma_Inter = common global [13 x [8 x [8 x i32]]] zeroinitializer, align 16
@Offset8_intra_default_intra = internal unnamed_addr constant [64 x i16] [i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341], align 16
@Offset8_inter_default = internal unnamed_addr constant [64 x i16] [i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171], align 16
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
@OffsetList4x4 = common global [9 x [16 x i16]] zeroinitializer, align 16
@OffsetList8x8 = common global [3 x [64 x i16]] zeroinitializer, align 16

; Function Attrs: nounwind optsize uwtable
define i32 @CheckOffsetParameterName(i8* nocapture %s, i32* nocapture %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !27), !dbg !649
  tail call void @llvm.dbg.value(metadata !{i32* %type}, i64 0, metadata !28), !dbg !649
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !29), !dbg !650
  store i32 0, i32* %type, align 4, !dbg !651, !tbaa !652
  br label %while.body, !dbg !655

while.cond:                                       ; preds = %while.body
  %inc = add nsw i32 %i.039, 1, !dbg !656
  %arraydecay = getelementptr inbounds [9 x [24 x i8]]* @OffsetType4x4, i64 0, i64 %indvars.iv.next43, i64 0, !dbg !655
  %cmp = icmp ne i8* %arraydecay, null, !dbg !655
  %0 = trunc i64 %indvars.iv.next43 to i32, !dbg !655
  %cmp1 = icmp slt i32 %0, 9, !dbg !655
  %or.cond = and i1 %cmp, %cmp1, !dbg !655
  br i1 %or.cond, label %while.body, label %while.end, !dbg !655

while.body:                                       ; preds = %entry, %while.cond
  %indvars.iv42 = phi i64 [ 0, %entry ], [ %indvars.iv.next43, %while.cond ]
  %arraydecay40 = phi i8* [ getelementptr inbounds ([9 x [24 x i8]]* @OffsetType4x4, i64 0, i64 0, i64 0), %entry ], [ %arraydecay, %while.cond ]
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %while.cond ]
  %call = tail call i32 @strcmp(i8* %arraydecay40, i8* %s) #6, !dbg !658
  %cmp5 = icmp eq i32 %call, 0, !dbg !658
  %indvars.iv.next43 = add i64 %indvars.iv42, 1, !dbg !655
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !29), !dbg !656
  br i1 %cmp5, label %return, label %while.cond, !dbg !658

while.end:                                        ; preds = %while.cond
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !29), !dbg !659
  store i32 1, i32* %type, align 4, !dbg !660, !tbaa !652
  br label %while.body14, !dbg !661

while.cond6:                                      ; preds = %while.body14
  %inc22 = add nsw i32 %i.135, 1, !dbg !662
  %arraydecay9 = getelementptr inbounds [3 x [24 x i8]]* @OffsetType8x8, i64 0, i64 %indvars.iv.next, i64 0, !dbg !661
  %cmp10 = icmp ne i8* %arraydecay9, null, !dbg !661
  %1 = trunc i64 %indvars.iv.next to i32, !dbg !661
  %cmp12 = icmp slt i32 %1, 3, !dbg !661
  %or.cond34 = and i1 %cmp10, %cmp12, !dbg !661
  br i1 %or.cond34, label %while.body14, label %return, !dbg !661

while.body14:                                     ; preds = %while.end, %while.cond6
  %indvars.iv = phi i64 [ 0, %while.end ], [ %indvars.iv.next, %while.cond6 ]
  %arraydecay936 = phi i8* [ getelementptr inbounds ([3 x [24 x i8]]* @OffsetType8x8, i64 0, i64 0, i64 0), %while.end ], [ %arraydecay9, %while.cond6 ]
  %i.135 = phi i32 [ 0, %while.end ], [ %inc22, %while.cond6 ]
  %call18 = tail call i32 @strcmp(i8* %arraydecay936, i8* %s) #6, !dbg !664
  %cmp19 = icmp eq i32 %call18, 0, !dbg !664
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %inc22}, i64 0, metadata !29), !dbg !662
  br i1 %cmp19, label %return, label %while.cond6, !dbg !664

return:                                           ; preds = %while.body, %while.cond6, %while.body14
  %retval.0 = phi i32 [ -1, %while.cond6 ], [ %i.135, %while.body14 ], [ %i.039, %while.body ]
  ret i32 %retval.0, !dbg !665
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @ParseQOffsetMatrix(i8* %buf, i32 %bufsize) #0 {
entry:
  %items = alloca [1000 x i8*], align 16
  %IntContent = alloca i32, align 4
  %type = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !34), !dbg !666
  call void @llvm.dbg.value(metadata !{i32 %bufsize}, i64 0, metadata !35), !dbg !666
  %0 = bitcast [1000 x i8*]* %items to i8*, !dbg !667
  call void @llvm.lifetime.start(i64 8000, i8* %0) #3, !dbg !667
  call void @llvm.dbg.declare(metadata !{[1000 x i8*]* %items}, metadata !36), !dbg !667
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !41), !dbg !668
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !42), !dbg !669
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !43), !dbg !669
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !44), !dbg !670
  %idxprom = sext i32 %bufsize to i64, !dbg !671
  %arrayidx = getelementptr inbounds i8* %buf, i64 %idxprom, !dbg !671
  call void @llvm.dbg.value(metadata !{i8* %arrayidx}, i64 0, metadata !45), !dbg !671
  call void @llvm.dbg.declare(metadata !{i32* %IntContent}, metadata !46), !dbg !672
  call void @llvm.dbg.declare(metadata !{i32* %type}, metadata !50), !dbg !673
  %cmp147 = icmp sgt i32 %bufsize, 0, !dbg !674
  br i1 %cmp147, label %while.body, label %for.end98, !dbg !674

while.body:                                       ; preds = %while.cond.backedge, %entry
  %item.0151 = phi i32 [ 0, %entry ], [ %item.0.be, %while.cond.backedge ]
  %p.0150 = phi i8* [ %buf, %entry ], [ %p.0.be, %while.cond.backedge ]
  %InItem.0149 = phi i32 [ 0, %entry ], [ %InItem.0.be, %while.cond.backedge ]
  %InString.0148 = phi i32 [ 0, %entry ], [ %InString.0.be, %while.cond.backedge ]
  %1 = load i8* %p.0150, align 1, !dbg !675, !tbaa !653
  %conv = sext i8 %1 to i32, !dbg !675
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 35, label %sw.bb1
    i32 10, label %sw.bb10
    i32 32, label %sw.bb12
    i32 9, label %sw.bb12
    i32 34, label %sw.bb15
    i32 44, label %sw.bb24
  ], !dbg !675

sw.bb:                                            ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %p.0150, i64 1, !dbg !677
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !44), !dbg !677
  br label %while.cond.backedge, !dbg !679

sw.bb1:                                           ; preds = %while.body
  store i8 0, i8* %p.0150, align 1, !dbg !680, !tbaa !653
  br label %while.cond2, !dbg !681

while.cond2:                                      ; preds = %while.cond2.while.cond2_crit_edge, %sw.bb1
  %2 = phi i1 [ true, %sw.bb1 ], [ %phitmp, %while.cond2.while.cond2_crit_edge ]
  %p.1 = phi i8* [ %p.0150, %sw.bb1 ], [ %incdec.ptr9, %while.cond2.while.cond2_crit_edge ]
  %cmp6 = icmp ult i8* %p.1, %arrayidx, !dbg !681
  %or.cond = and i1 %2, %cmp6, !dbg !681
  %incdec.ptr9 = getelementptr inbounds i8* %p.1, i64 1, !dbg !682
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr9}, i64 0, metadata !44), !dbg !682
  br i1 %or.cond, label %while.cond2.while.cond2_crit_edge, label %while.cond.backedge, !dbg !681

while.cond2.while.cond2_crit_edge:                ; preds = %while.cond2
  %.pre = load i8* %incdec.ptr9, align 1, !dbg !681, !tbaa !653
  %phitmp = icmp ne i8 %.pre, 10, !dbg !681
  br label %while.cond2, !dbg !681

sw.bb10:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !43), !dbg !683
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !42), !dbg !684
  %incdec.ptr11 = getelementptr inbounds i8* %p.0150, i64 1, !dbg !685
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr11}, i64 0, metadata !44), !dbg !685
  store i8 0, i8* %p.0150, align 1, !dbg !685, !tbaa !653
  br label %while.cond.backedge, !dbg !686

sw.bb12:                                          ; preds = %while.body, %while.body
  %tobool = icmp eq i32 %InString.0148, 0, !dbg !687
  %incdec.ptr13 = getelementptr inbounds i8* %p.0150, i64 1, !dbg !688
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr13}, i64 0, metadata !44), !dbg !688
  br i1 %tobool, label %if.else, label %while.cond.backedge, !dbg !687

if.else:                                          ; preds = %sw.bb12
  store i8 0, i8* %p.0150, align 1, !dbg !689, !tbaa !653
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !43), !dbg !691
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond2, %if.else, %if.end32, %sw.bb24, %if.end22, %sw.bb10, %sw.bb, %sw.bb12
  %InString.0.be = phi i32 [ %InString.0148, %if.end32 ], [ %InString.0148, %sw.bb24 ], [ %neg23, %if.end22 ], [ %InString.0148, %sw.bb12 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ %InString.0148, %sw.bb ], [ 0, %while.cond2 ]
  %InItem.0.be = phi i32 [ %InItem.2, %if.end32 ], [ 0, %sw.bb24 ], [ %InItem.1, %if.end22 ], [ %InItem.0149, %sw.bb12 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ %InItem.0149, %sw.bb ], [ 0, %while.cond2 ]
  %p.0.be = phi i8* [ %incdec.ptr33, %if.end32 ], [ %incdec.ptr25, %sw.bb24 ], [ %incdec.ptr16, %if.end22 ], [ %incdec.ptr13, %sw.bb12 ], [ %incdec.ptr13, %if.else ], [ %incdec.ptr11, %sw.bb10 ], [ %incdec.ptr, %sw.bb ], [ %p.1, %while.cond2 ]
  %item.0.be = phi i32 [ %item.2, %if.end32 ], [ %item.0151, %sw.bb24 ], [ %item.1, %if.end22 ], [ %item.0151, %sw.bb12 ], [ %item.0151, %if.else ], [ %item.0151, %sw.bb10 ], [ %item.0151, %sw.bb ], [ %item.0151, %while.cond2 ]
  %cmp = icmp ult i8* %p.0.be, %arrayidx, !dbg !674
  br i1 %cmp, label %while.body, label %while.end34, !dbg !674

sw.bb15:                                          ; preds = %while.body
  %incdec.ptr16 = getelementptr inbounds i8* %p.0150, i64 1, !dbg !692
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr16}, i64 0, metadata !44), !dbg !692
  store i8 0, i8* %p.0150, align 1, !dbg !692, !tbaa !653
  %tobool17 = icmp eq i32 %InString.0148, 0, !dbg !693
  br i1 %tobool17, label %if.then18, label %if.end22, !dbg !693

if.then18:                                        ; preds = %sw.bb15
  %inc = add nsw i32 %item.0151, 1, !dbg !694
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !41), !dbg !694
  %idxprom19 = sext i32 %item.0151 to i64, !dbg !694
  %arrayidx20 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom19, !dbg !694
  store i8* %incdec.ptr16, i8** %arrayidx20, align 8, !dbg !694, !tbaa !696
  %neg = xor i32 %InItem.0149, -1, !dbg !697
  call void @llvm.dbg.value(metadata !{i32 %neg}, i64 0, metadata !43), !dbg !697
  br label %if.end22, !dbg !698

if.end22:                                         ; preds = %sw.bb15, %if.then18
  %InItem.1 = phi i32 [ %neg, %if.then18 ], [ 0, %sw.bb15 ]
  %item.1 = phi i32 [ %inc, %if.then18 ], [ %item.0151, %sw.bb15 ]
  %neg23 = xor i32 %InString.0148, -1, !dbg !699
  call void @llvm.dbg.value(metadata !{i32 %neg23}, i64 0, metadata !42), !dbg !699
  br label %while.cond.backedge, !dbg !700

sw.bb24:                                          ; preds = %while.body
  %incdec.ptr25 = getelementptr inbounds i8* %p.0150, i64 1, !dbg !701
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr25}, i64 0, metadata !44), !dbg !701
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !43), !dbg !702
  br label %while.cond.backedge, !dbg !703

sw.default:                                       ; preds = %while.body
  %tobool26 = icmp eq i32 %InItem.0149, 0, !dbg !704
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !704

if.then27:                                        ; preds = %sw.default
  %inc28 = add nsw i32 %item.0151, 1, !dbg !705
  call void @llvm.dbg.value(metadata !{i32 %inc28}, i64 0, metadata !41), !dbg !705
  %idxprom29 = sext i32 %item.0151 to i64, !dbg !705
  %arrayidx30 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom29, !dbg !705
  store i8* %p.0150, i8** %arrayidx30, align 8, !dbg !705, !tbaa !696
  call void @llvm.dbg.value(metadata !707, i64 0, metadata !43), !dbg !708
  br label %if.end32, !dbg !709

if.end32:                                         ; preds = %sw.default, %if.then27
  %InItem.2 = phi i32 [ %InItem.0149, %sw.default ], [ -1, %if.then27 ]
  %item.2 = phi i32 [ %item.0151, %sw.default ], [ %inc28, %if.then27 ]
  %incdec.ptr33 = getelementptr inbounds i8* %p.0150, i64 1, !dbg !710
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr33}, i64 0, metadata !44), !dbg !710
  br label %while.cond.backedge, !dbg !711

while.end34:                                      ; preds = %while.cond.backedge
  %dec = add nsw i32 %item.0.be, -1, !dbg !712
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !41), !dbg !712
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !47), !dbg !713
  %cmp35145 = icmp sgt i32 %dec, 0, !dbg !713
  br i1 %cmp35145, label %for.body, label %for.end98, !dbg !713

for.body:                                         ; preds = %while.end34, %for.end
  %i.0146 = phi i32 [ %add97, %for.end ], [ 0, %while.end34 ]
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !51), !dbg !715
  %idxprom37 = sext i32 %i.0146 to i64, !dbg !717
  %arrayidx38 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom37, !dbg !717
  %3 = load i8** %arrayidx38, align 8, !dbg !717, !tbaa !696
  %call = call i32 @CheckOffsetParameterName(i8* %3, i32* %type) #7, !dbg !717
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !40), !dbg !717
  %cmp39 = icmp slt i32 %call, 0, !dbg !717
  br i1 %cmp39, label %if.then41, label %if.end46, !dbg !717

if.then41:                                        ; preds = %for.body
  %call45 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), i8* %3) #8, !dbg !718
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #8, !dbg !720
  br label %if.end46, !dbg !721

if.end46:                                         ; preds = %if.then41, %for.body
  call void @llvm.dbg.value(metadata !722, i64 0, metadata !51), !dbg !723
  %add48 = add nsw i32 %i.0146, 1, !dbg !724
  %idxprom49 = sext i32 %add48 to i64, !dbg !724
  %arrayidx50 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom49, !dbg !724
  %4 = load i8** %arrayidx50, align 8, !dbg !724, !tbaa !696
  %call51 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i8* %4) #6, !dbg !724
  %tobool52 = icmp eq i32 %call51, 0, !dbg !724
  br i1 %tobool52, label %if.end55, label %if.then53, !dbg !724

if.then53:                                        ; preds = %if.end46
  %call54 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([78 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !725
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #8, !dbg !727
  br label %if.end55, !dbg !728

if.end55:                                         ; preds = %if.end46, %if.then53
  call void @llvm.dbg.value(metadata !729, i64 0, metadata !51), !dbg !730
  call void @llvm.dbg.value(metadata !{i32* %type}, i64 0, metadata !50), !dbg !731
  %5 = load i32* %type, align 4, !dbg !731, !tbaa !652
  %tobool57 = icmp eq i32 %5, 0, !dbg !731
  %idxprom59 = sext i32 %call to i64, !dbg !732
  br i1 %tobool57, label %if.then58, label %if.else63, !dbg !731

if.then58:                                        ; preds = %if.end55
  call void @llvm.dbg.value(metadata !734, i64 0, metadata !49), !dbg !735
  %arraydecay = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 %idxprom59, i64 0, !dbg !732
  call void @llvm.dbg.value(metadata !{i16* %arraydecay}, i64 0, metadata !52), !dbg !732
  %arrayidx62 = getelementptr inbounds [6 x i32]* @offset4x4_check, i64 0, i64 %idxprom59, !dbg !736
  store i32 1, i32* %arrayidx62, align 4, !dbg !736, !tbaa !652
  br label %if.end69, !dbg !737

if.else63:                                        ; preds = %if.end55
  call void @llvm.dbg.value(metadata !738, i64 0, metadata !49), !dbg !739
  %arraydecay66 = getelementptr inbounds [3 x [64 x i16]]* @OffsetList8x8input, i64 0, i64 %idxprom59, i64 0, !dbg !741
  call void @llvm.dbg.value(metadata !{i16* %arraydecay66}, i64 0, metadata !52), !dbg !741
  %arrayidx68 = getelementptr inbounds [2 x i32]* @offset8x8_check, i64 0, i64 %idxprom59, !dbg !742
  store i32 1, i32* %arrayidx68, align 4, !dbg !742, !tbaa !652
  br label %if.end69

if.end69:                                         ; preds = %if.else63, %if.then58
  %range.0 = phi i32 [ 64, %if.else63 ], [ 16, %if.then58 ]
  %OffsetList.0 = phi i16* [ %arraydecay66, %if.else63 ], [ %arraydecay, %if.then58 ]
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !48), !dbg !743
  %add74 = add i32 %i.0146, 2, !dbg !745
  %6 = sext i32 %add74 to i64, !dbg !743
  br label %for.body73, !dbg !743

for.body73:                                       ; preds = %if.end69, %if.end89
  %indvars.iv = phi i64 [ 0, %if.end69 ], [ %indvars.iv.next, %if.end89 ]
  %7 = add nsw i64 %6, %indvars.iv, !dbg !745
  %arrayidx77 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %7, !dbg !745
  %8 = load i8** %arrayidx77, align 8, !dbg !745, !tbaa !696
  %call78 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i32* %IntContent) #8, !dbg !745
  %cmp79 = icmp eq i32 %call78, 1, !dbg !745
  br i1 %cmp79, label %if.end89, label %if.then81, !dbg !745

if.then81:                                        ; preds = %for.body73
  %call88 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([74 x i8]* @.str4, i64 0, i64 0), i8* %3, i8* %8) #8, !dbg !747
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #8, !dbg !749
  br label %if.end89, !dbg !750

if.end89:                                         ; preds = %for.body73, %if.then81
  call void @llvm.dbg.value(metadata !{i32* %IntContent}, i64 0, metadata !46), !dbg !751
  %9 = load i32* %IntContent, align 4, !dbg !751, !tbaa !652
  %conv90 = trunc i32 %9 to i16, !dbg !751
  %arrayidx92 = getelementptr inbounds i16* %OffsetList.0, i64 %indvars.iv, !dbg !751
  store i16 %conv90, i16* %arrayidx92, align 2, !dbg !751, !tbaa !752
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !743
  call void @llvm.dbg.value(metadata !{i32 %range.0}, i64 0, metadata !48), !dbg !743
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !743
  %cmp71 = icmp slt i32 %10, %range.0, !dbg !743
  br i1 %cmp71, label %for.body73, label %for.end, !dbg !743

for.end:                                          ; preds = %if.end89
  call void @llvm.dbg.value(metadata !{i32 %add74}, i64 0, metadata !51), !dbg !753
  %putchar = call i32 @putchar(i32 46) #3, !dbg !754
  %add97 = add i32 %add74, %range.0, !dbg !713
  call void @llvm.dbg.value(metadata !{i32 %add97}, i64 0, metadata !47), !dbg !713
  %cmp35 = icmp slt i32 %add97, %dec, !dbg !713
  br i1 %cmp35, label %for.body, label %for.end98, !dbg !713

for.end98:                                        ; preds = %entry, %for.end, %while.end34
  call void @llvm.lifetime.end(i64 8000, i8* %0) #3, !dbg !755
  ret void, !dbg !755
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
define void @Init_QOffsetMatrix() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !756, !tbaa !696
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 147, !dbg !756
  %1 = load i32* %OffsetMatrixPresentFlag, align 4, !dbg !756, !tbaa !652
  %tobool = icmp eq i32 %1, 0, !dbg !756
  br i1 %tobool, label %if.end9, label %if.then, !dbg !756

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 146, i64 0, !dbg !757
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0), i8* %arraydecay) #8, !dbg !757
  %2 = load %struct.InputParameters** @input, align 8, !dbg !759, !tbaa !696
  %arraydecay2 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 146, i64 0, !dbg !759
  %call3 = tail call i8* @GetConfigFileContent(i8* %arraydecay2, i32 0) #8, !dbg !759
  tail call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !59), !dbg !759
  %cmp = icmp eq i8* %call3, null, !dbg !760
  br i1 %cmp, label %if.else, label %if.then4, !dbg !760

if.then4:                                         ; preds = %if.then
  %call5 = tail call i64 @strlen(i8* %call3) #6, !dbg !761
  %conv = trunc i64 %call5 to i32, !dbg !761
  tail call void @ParseQOffsetMatrix(i8* %call3, i32 %conv) #7, !dbg !761
  br label %if.end, !dbg !761

if.else:                                          ; preds = %if.then
  %call6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0)) #8, !dbg !762
  %3 = load %struct.InputParameters** @input, align 8, !dbg !764, !tbaa !696
  %OffsetMatrixPresentFlag7 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 147, !dbg !764
  store i32 0, i32* %OffsetMatrixPresentFlag7, align 4, !dbg !764, !tbaa !652
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %putchar = tail call i32 @putchar(i32 10) #3, !dbg !765
  tail call void @free(i8* %call3) #8, !dbg !766
  br label %if.end9, !dbg !767

if.end9:                                          ; preds = %entry, %if.end
  ret void, !dbg !768
}

; Function Attrs: optsize
declare i8* @GetConfigFileContent(i8*, i32) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @CalculateOffsetParam() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !769, !tbaa !696
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 147, !dbg !769
  %1 = load i32* %OffsetMatrixPresentFlag, align 4, !dbg !769, !tbaa !652
  %tobool = icmp eq i32 %1, 0, !dbg !769
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !64), !dbg !770
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !773, !tbaa !696
  %type120 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6, !dbg !773
  br i1 %tobool, label %for.body107, label %for.body, !dbg !769

for.body:                                         ; preds = %entry, %for.inc100
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %for.inc100 ], [ 0, %entry ]
  %3 = add nsw i64 %indvars.iv355, 5, !dbg !781
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !63), !dbg !783
  br label %for.cond4.preheader, !dbg !783

for.cond4.preheader:                              ; preds = %for.inc97, %for.body
  %indvars.iv351 = phi i64 [ 0, %for.body ], [ %indvars.iv.next352, %for.inc97 ]
  br label %for.body6, !dbg !785

for.body6:                                        ; preds = %if.end, %for.cond4.preheader
  %indvars.iv345 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next346, %if.end ]
  %4 = shl i64 %indvars.iv345, 2, !dbg !788
  %5 = add nsw i64 %4, %indvars.iv351, !dbg !788
  %6 = load i32* %type120, align 4, !dbg !790, !tbaa !652
  %cmp8 = icmp eq i32 %6, 2, !dbg !790
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !790

if.then9:                                         ; preds = %for.body6
  %arrayidx = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 0, i64 %5, !dbg !791
  %7 = load i16* %arrayidx, align 2, !dbg !791, !tbaa !752
  %conv = sext i16 %7 to i32, !dbg !791
  %8 = trunc i64 %3 to i32, !dbg !791
  %shl10 = shl i32 %conv, %8, !dbg !791
  %arrayidx16 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345, !dbg !791
  store i32 %shl10, i32* %arrayidx16, align 4, !dbg !791, !tbaa !652
  %arrayidx18 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 1, i64 %5, !dbg !793
  %9 = load i16* %arrayidx18, align 2, !dbg !793, !tbaa !752
  %conv19 = sext i16 %9 to i32, !dbg !793
  %shl20 = shl i32 %conv19, %8, !dbg !793
  %arrayidx26 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345, !dbg !793
  store i32 %shl20, i32* %arrayidx26, align 4, !dbg !793, !tbaa !652
  %arrayidx28 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 2, i64 %5, !dbg !794
  %10 = load i16* %arrayidx28, align 2, !dbg !794, !tbaa !752
  %conv29 = sext i16 %10 to i32, !dbg !794
  %shl30 = shl i32 %conv29, %8, !dbg !794
  %arrayidx36 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345, !dbg !794
  store i32 %shl30, i32* %arrayidx36, align 4, !dbg !794, !tbaa !652
  br label %if.end, !dbg !795

if.else:                                          ; preds = %for.body6
  %arrayidx38 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 3, i64 %5, !dbg !796
  %11 = load i16* %arrayidx38, align 2, !dbg !796, !tbaa !752
  %conv39 = sext i16 %11 to i32, !dbg !796
  %12 = trunc i64 %3 to i32, !dbg !796
  %shl40 = shl i32 %conv39, %12, !dbg !796
  %arrayidx46 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345, !dbg !796
  store i32 %shl40, i32* %arrayidx46, align 4, !dbg !796, !tbaa !652
  %arrayidx48 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 4, i64 %5, !dbg !798
  %13 = load i16* %arrayidx48, align 2, !dbg !798, !tbaa !752
  %conv49 = sext i16 %13 to i32, !dbg !798
  %shl50 = shl i32 %conv49, %12, !dbg !798
  %arrayidx56 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345, !dbg !798
  store i32 %shl50, i32* %arrayidx56, align 4, !dbg !798, !tbaa !652
  %arrayidx58 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 5, i64 %5, !dbg !799
  %14 = load i16* %arrayidx58, align 2, !dbg !799, !tbaa !752
  %conv59 = sext i16 %14 to i32, !dbg !799
  %shl60 = shl i32 %conv59, %12, !dbg !799
  %arrayidx66 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345, !dbg !799
  store i32 %shl60, i32* %arrayidx66, align 4, !dbg !799, !tbaa !652
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %arrayidx68 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 6, i64 %5, !dbg !800
  %15 = load i16* %arrayidx68, align 2, !dbg !800, !tbaa !752
  %conv69 = sext i16 %15 to i32, !dbg !800
  %16 = trunc i64 %3 to i32, !dbg !800
  %shl70 = shl i32 %conv69, %16, !dbg !800
  %arrayidx76 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Inter, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345, !dbg !800
  store i32 %shl70, i32* %arrayidx76, align 4, !dbg !800, !tbaa !652
  %arrayidx78 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 7, i64 %5, !dbg !801
  %17 = load i16* %arrayidx78, align 2, !dbg !801, !tbaa !752
  %conv79 = sext i16 %17 to i32, !dbg !801
  %shl80 = shl i32 %conv79, %16, !dbg !801
  %arrayidx86 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345, !dbg !801
  store i32 %shl80, i32* %arrayidx86, align 4, !dbg !801, !tbaa !652
  %arrayidx88 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 8, i64 %5, !dbg !802
  %18 = load i16* %arrayidx88, align 2, !dbg !802, !tbaa !752
  %conv89 = sext i16 %18 to i32, !dbg !802
  %shl90 = shl i32 %conv89, %16, !dbg !802
  %arrayidx96 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345, !dbg !802
  store i32 %shl90, i32* %arrayidx96, align 4, !dbg !802, !tbaa !652
  %indvars.iv.next346 = add i64 %indvars.iv345, 1, !dbg !785
  %lftr.wideiv349 = trunc i64 %indvars.iv.next346 to i32, !dbg !785
  %exitcond350 = icmp eq i32 %lftr.wideiv349, 4, !dbg !785
  br i1 %exitcond350, label %for.inc97, label %for.body6, !dbg !785

for.inc97:                                        ; preds = %if.end
  %indvars.iv.next352 = add i64 %indvars.iv351, 1, !dbg !783
  %lftr.wideiv353 = trunc i64 %indvars.iv.next352 to i32, !dbg !783
  %exitcond354 = icmp eq i32 %lftr.wideiv353, 4, !dbg !783
  br i1 %exitcond354, label %for.inc100, label %for.cond4.preheader, !dbg !783

for.inc100:                                       ; preds = %for.inc97
  %indvars.iv.next356 = add i64 %indvars.iv355, 1, !dbg !770
  %lftr.wideiv358 = trunc i64 %indvars.iv.next356 to i32, !dbg !770
  %exitcond359 = icmp eq i32 %lftr.wideiv358, 13, !dbg !770
  br i1 %exitcond359, label %if.end225, label %for.body, !dbg !770

for.body107:                                      ; preds = %entry, %for.inc222
  %indvars.iv340 = phi i64 [ %indvars.iv.next341, %for.inc222 ], [ 0, %entry ]
  %19 = add nsw i64 %indvars.iv340, 5, !dbg !803
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !63), !dbg !804
  br label %for.cond114.preheader, !dbg !804

for.cond114.preheader:                            ; preds = %for.inc219, %for.body107
  %indvars.iv336 = phi i64 [ 0, %for.body107 ], [ %indvars.iv.next337, %for.inc219 ]
  br label %for.body117, !dbg !805

for.body117:                                      ; preds = %if.end185, %for.cond114.preheader
  %indvars.iv = phi i64 [ 0, %for.cond114.preheader ], [ %indvars.iv.next, %if.end185 ]
  %20 = shl i64 %indvars.iv, 2, !dbg !806
  %21 = add nsw i64 %20, %indvars.iv336, !dbg !806
  %22 = load i32* %type120, align 4, !dbg !773, !tbaa !652
  %cmp121 = icmp eq i32 %22, 2, !dbg !773
  br i1 %cmp121, label %if.then123, label %if.else154, !dbg !773

if.then123:                                       ; preds = %for.body117
  %arrayidx125 = getelementptr inbounds [16 x i16]* @Offset_intra_default_intra, i64 0, i64 %21, !dbg !807
  %23 = load i16* %arrayidx125, align 2, !dbg !807, !tbaa !752
  %conv126 = sext i16 %23 to i32, !dbg !807
  %24 = trunc i64 %19 to i32, !dbg !807
  %shl127 = shl i32 %conv126, %24, !dbg !807
  %arrayidx133 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv, !dbg !807
  store i32 %shl127, i32* %arrayidx133, align 4, !dbg !807, !tbaa !652
  %arrayidx143 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv, !dbg !809
  store i32 %shl127, i32* %arrayidx143, align 4, !dbg !809, !tbaa !652
  %arrayidx153 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv, !dbg !810
  store i32 %shl127, i32* %arrayidx153, align 4, !dbg !810, !tbaa !652
  br label %if.end185, !dbg !811

if.else154:                                       ; preds = %for.body117
  %arrayidx156 = getelementptr inbounds [16 x i16]* @Offset_inter_default, i64 0, i64 %21, !dbg !812
  %25 = load i16* %arrayidx156, align 2, !dbg !812, !tbaa !752
  %conv157 = sext i16 %25 to i32, !dbg !812
  %26 = trunc i64 %19 to i32, !dbg !812
  %shl158 = shl i32 %conv157, %26, !dbg !812
  %arrayidx164 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv, !dbg !812
  store i32 %shl158, i32* %arrayidx164, align 4, !dbg !812, !tbaa !652
  %arrayidx174 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv, !dbg !814
  store i32 %shl158, i32* %arrayidx174, align 4, !dbg !814, !tbaa !652
  %arrayidx184 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv, !dbg !815
  store i32 %shl158, i32* %arrayidx184, align 4, !dbg !815, !tbaa !652
  br label %if.end185

if.end185:                                        ; preds = %if.else154, %if.then123
  %arrayidx187 = getelementptr inbounds [16 x i16]* @Offset_inter_default, i64 0, i64 %21, !dbg !816
  %27 = load i16* %arrayidx187, align 2, !dbg !816, !tbaa !752
  %conv188 = sext i16 %27 to i32, !dbg !816
  %28 = trunc i64 %19 to i32, !dbg !816
  %shl189 = shl i32 %conv188, %28, !dbg !816
  %arrayidx195 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Inter, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv, !dbg !816
  store i32 %shl189, i32* %arrayidx195, align 4, !dbg !816, !tbaa !652
  %arrayidx205 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv, !dbg !817
  store i32 %shl189, i32* %arrayidx205, align 4, !dbg !817, !tbaa !652
  %arrayidx215 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv, !dbg !818
  store i32 %shl189, i32* %arrayidx215, align 4, !dbg !818, !tbaa !652
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !805
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !805
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !805
  br i1 %exitcond, label %for.inc219, label %for.body117, !dbg !805

for.inc219:                                       ; preds = %if.end185
  %indvars.iv.next337 = add i64 %indvars.iv336, 1, !dbg !804
  %lftr.wideiv338 = trunc i64 %indvars.iv.next337 to i32, !dbg !804
  %exitcond339 = icmp eq i32 %lftr.wideiv338, 4, !dbg !804
  br i1 %exitcond339, label %for.inc222, label %for.cond114.preheader, !dbg !804

for.inc222:                                       ; preds = %for.inc219
  %indvars.iv.next341 = add i64 %indvars.iv340, 1, !dbg !819
  %lftr.wideiv343 = trunc i64 %indvars.iv.next341 to i32, !dbg !819
  %exitcond344 = icmp eq i32 %lftr.wideiv343, 13, !dbg !819
  br i1 %exitcond344, label %if.end225, label %for.body107, !dbg !819

if.end225:                                        ; preds = %for.inc100, %for.inc222
  ret void, !dbg !820
}

; Function Attrs: nounwind optsize uwtable
define void @CalculateOffset8Param() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !821, !tbaa !696
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 147, !dbg !821
  %1 = load i32* %OffsetMatrixPresentFlag, align 4, !dbg !821, !tbaa !652
  %tobool = icmp eq i32 %1, 0, !dbg !821
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !71), !dbg !822
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !825, !tbaa !696
  %type60 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6, !dbg !825
  br i1 %tobool, label %for.body47, label %for.body, !dbg !821

for.body:                                         ; preds = %entry, %for.inc40
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %for.inc40 ], [ 0, %entry ]
  %3 = add nsw i64 %indvars.iv175, 6, !dbg !833
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !70), !dbg !835
  br label %for.cond4.preheader, !dbg !835

for.cond4.preheader:                              ; preds = %for.inc37, %for.body
  %indvars.iv171 = phi i64 [ 0, %for.body ], [ %indvars.iv.next172, %for.inc37 ]
  br label %for.body6, !dbg !837

for.body6:                                        ; preds = %if.end, %for.cond4.preheader
  %indvars.iv165 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next166, %if.end ]
  %4 = shl i64 %indvars.iv165, 3, !dbg !840
  %5 = add nsw i64 %4, %indvars.iv171, !dbg !840
  %6 = load i32* %type60, align 4, !dbg !842, !tbaa !652
  %cmp8 = icmp eq i32 %6, 2, !dbg !842
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !842

if.then9:                                         ; preds = %for.body6
  %arrayidx = getelementptr inbounds [3 x [64 x i16]]* @OffsetList8x8input, i64 0, i64 0, i64 %5, !dbg !843
  %7 = load i16* %arrayidx, align 2, !dbg !843, !tbaa !752
  %conv = sext i16 %7 to i32, !dbg !843
  %8 = trunc i64 %3 to i32, !dbg !843
  %shl10 = shl i32 %conv, %8, !dbg !843
  %arrayidx16 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i64 0, i64 %indvars.iv175, i64 %indvars.iv171, i64 %indvars.iv165, !dbg !843
  store i32 %shl10, i32* %arrayidx16, align 4, !dbg !843, !tbaa !652
  br label %if.end, !dbg !843

if.else:                                          ; preds = %for.body6
  %arrayidx18 = getelementptr inbounds [3 x [64 x i16]]* @OffsetList8x8input, i64 0, i64 1, i64 %5, !dbg !844
  %9 = load i16* %arrayidx18, align 2, !dbg !844, !tbaa !752
  %conv19 = sext i16 %9 to i32, !dbg !844
  %10 = trunc i64 %3 to i32, !dbg !844
  %shl20 = shl i32 %conv19, %10, !dbg !844
  %arrayidx26 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i64 0, i64 %indvars.iv175, i64 %indvars.iv171, i64 %indvars.iv165, !dbg !844
  store i32 %shl20, i32* %arrayidx26, align 4, !dbg !844, !tbaa !652
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %arrayidx28 = getelementptr inbounds [3 x [64 x i16]]* @OffsetList8x8input, i64 0, i64 2, i64 %5, !dbg !845
  %11 = load i16* %arrayidx28, align 2, !dbg !845, !tbaa !752
  %conv29 = sext i16 %11 to i32, !dbg !845
  %12 = trunc i64 %3 to i32, !dbg !845
  %shl30 = shl i32 %conv29, %12, !dbg !845
  %arrayidx36 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Inter, i64 0, i64 %indvars.iv175, i64 %indvars.iv171, i64 %indvars.iv165, !dbg !845
  store i32 %shl30, i32* %arrayidx36, align 4, !dbg !845, !tbaa !652
  %indvars.iv.next166 = add i64 %indvars.iv165, 1, !dbg !837
  %lftr.wideiv169 = trunc i64 %indvars.iv.next166 to i32, !dbg !837
  %exitcond170 = icmp eq i32 %lftr.wideiv169, 8, !dbg !837
  br i1 %exitcond170, label %for.inc37, label %for.body6, !dbg !837

for.inc37:                                        ; preds = %if.end
  %indvars.iv.next172 = add i64 %indvars.iv171, 1, !dbg !835
  %lftr.wideiv173 = trunc i64 %indvars.iv.next172 to i32, !dbg !835
  %exitcond174 = icmp eq i32 %lftr.wideiv173, 8, !dbg !835
  br i1 %exitcond174, label %for.inc40, label %for.cond4.preheader, !dbg !835

for.inc40:                                        ; preds = %for.inc37
  %indvars.iv.next176 = add i64 %indvars.iv175, 1, !dbg !822
  %lftr.wideiv178 = trunc i64 %indvars.iv.next176 to i32, !dbg !822
  %exitcond179 = icmp eq i32 %lftr.wideiv178, 13, !dbg !822
  br i1 %exitcond179, label %if.end105, label %for.body, !dbg !822

for.body47:                                       ; preds = %entry, %for.inc102
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %for.inc102 ], [ 0, %entry ]
  %13 = add nsw i64 %indvars.iv160, 6, !dbg !846
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !70), !dbg !847
  br label %for.cond54.preheader, !dbg !847

for.cond54.preheader:                             ; preds = %for.inc99, %for.body47
  %indvars.iv156 = phi i64 [ 0, %for.body47 ], [ %indvars.iv.next157, %for.inc99 ]
  br label %for.body57, !dbg !848

for.body57:                                       ; preds = %if.end85, %for.cond54.preheader
  %indvars.iv = phi i64 [ 0, %for.cond54.preheader ], [ %indvars.iv.next, %if.end85 ]
  %14 = shl i64 %indvars.iv, 3, !dbg !849
  %15 = add nsw i64 %14, %indvars.iv156, !dbg !849
  %16 = load i32* %type60, align 4, !dbg !825, !tbaa !652
  %cmp61 = icmp eq i32 %16, 2, !dbg !825
  br i1 %cmp61, label %if.then63, label %if.else74, !dbg !825

if.then63:                                        ; preds = %for.body57
  %arrayidx65 = getelementptr inbounds [64 x i16]* @Offset8_intra_default_intra, i64 0, i64 %15, !dbg !850
  %17 = load i16* %arrayidx65, align 2, !dbg !850, !tbaa !752
  %conv66 = sext i16 %17 to i32, !dbg !850
  %18 = trunc i64 %13 to i32, !dbg !850
  %shl67 = shl i32 %conv66, %18, !dbg !850
  %arrayidx73 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i64 0, i64 %indvars.iv160, i64 %indvars.iv156, i64 %indvars.iv, !dbg !850
  store i32 %shl67, i32* %arrayidx73, align 4, !dbg !850, !tbaa !652
  br label %if.end85, !dbg !850

if.else74:                                        ; preds = %for.body57
  %arrayidx76 = getelementptr inbounds [64 x i16]* @Offset8_inter_default, i64 0, i64 %15, !dbg !851
  %19 = load i16* %arrayidx76, align 2, !dbg !851, !tbaa !752
  %conv77 = sext i16 %19 to i32, !dbg !851
  %20 = trunc i64 %13 to i32, !dbg !851
  %shl78 = shl i32 %conv77, %20, !dbg !851
  %arrayidx84 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i64 0, i64 %indvars.iv160, i64 %indvars.iv156, i64 %indvars.iv, !dbg !851
  store i32 %shl78, i32* %arrayidx84, align 4, !dbg !851, !tbaa !652
  br label %if.end85

if.end85:                                         ; preds = %if.else74, %if.then63
  %arrayidx87 = getelementptr inbounds [64 x i16]* @Offset8_inter_default, i64 0, i64 %15, !dbg !852
  %21 = load i16* %arrayidx87, align 2, !dbg !852, !tbaa !752
  %conv88 = sext i16 %21 to i32, !dbg !852
  %22 = trunc i64 %13 to i32, !dbg !852
  %shl89 = shl i32 %conv88, %22, !dbg !852
  %arrayidx95 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Inter, i64 0, i64 %indvars.iv160, i64 %indvars.iv156, i64 %indvars.iv, !dbg !852
  store i32 %shl89, i32* %arrayidx95, align 4, !dbg !852, !tbaa !652
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !848
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !848
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !848
  br i1 %exitcond, label %for.inc99, label %for.body57, !dbg !848

for.inc99:                                        ; preds = %if.end85
  %indvars.iv.next157 = add i64 %indvars.iv156, 1, !dbg !847
  %lftr.wideiv158 = trunc i64 %indvars.iv.next157 to i32, !dbg !847
  %exitcond159 = icmp eq i32 %lftr.wideiv158, 8, !dbg !847
  br i1 %exitcond159, label %for.inc102, label %for.cond54.preheader, !dbg !847

for.inc102:                                       ; preds = %for.inc99
  %indvars.iv.next161 = add i64 %indvars.iv160, 1, !dbg !853
  %lftr.wideiv163 = trunc i64 %indvars.iv.next161 to i32, !dbg !853
  %exitcond164 = icmp eq i32 %lftr.wideiv163, 13, !dbg !853
  br i1 %exitcond164, label %if.end105, label %for.body47, !dbg !853

if.end105:                                        ; preds = %for.inc40, %for.inc102
  ret void, !dbg !854
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !16, metadata !17, metadata !74, metadata !16, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8}
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
!16 = metadata !{i32 0}
!17 = metadata !{metadata !18, metadata !30, metadata !55, metadata !60, metadata !67}
!18 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"CheckOffsetParameterName", metadata !"CheckOffsetParameterName", metadata !"", i32 136, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @CheckOffsetParameterName, null, null, metadata !26, i32 137} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 137] [CheckOffsetParameterName]
!19 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !22, metadata !23, metadata !25}
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!24 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{metadata !27, metadata !28, metadata !29}
!27 = metadata !{i32 786689, metadata !18, metadata !"s", metadata !19, i32 16777352, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 136]
!28 = metadata !{i32 786689, metadata !18, metadata !"type", metadata !19, i32 33554568, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 136]
!29 = metadata !{i32 786688, metadata !18, metadata !"i", metadata !19, i32 138, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 138]
!30 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"ParseQOffsetMatrix", metadata !"ParseQOffsetMatrix", metadata !"", i32 172, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @ParseQOffsetMatrix, null, null, metadata !33, i32 173} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 173] [ParseQOffsetMatrix]
!31 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{null, metadata !23, metadata !22}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!34 = metadata !{i32 786689, metadata !30, metadata !"buf", metadata !19, i32 16777388, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 172]
!35 = metadata !{i32 786689, metadata !30, metadata !"bufsize", metadata !19, i32 33554604, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufsize] [line 172]
!36 = metadata !{i32 786688, metadata !30, metadata !"items", metadata !19, i32 174, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [items] [line 174]
!37 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64000, i64 64, i32 0, i32 0, metadata !23, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64000, align 64, offset 0] [from ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786465, i64 0, i64 1000}     ; [ DW_TAG_subrange_type ] [0, 999]
!40 = metadata !{i32 786688, metadata !30, metadata !"MapIdx", metadata !19, i32 175, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MapIdx] [line 175]
!41 = metadata !{i32 786688, metadata !30, metadata !"item", metadata !19, i32 176, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [item] [line 176]
!42 = metadata !{i32 786688, metadata !30, metadata !"InString", metadata !19, i32 177, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [InString] [line 177]
!43 = metadata !{i32 786688, metadata !30, metadata !"InItem", metadata !19, i32 177, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [InItem] [line 177]
!44 = metadata !{i32 786688, metadata !30, metadata !"p", metadata !19, i32 178, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 178]
!45 = metadata !{i32 786688, metadata !30, metadata !"bufend", metadata !19, i32 179, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufend] [line 179]
!46 = metadata !{i32 786688, metadata !30, metadata !"IntContent", metadata !19, i32 180, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [IntContent] [line 180]
!47 = metadata !{i32 786688, metadata !30, metadata !"i", metadata !19, i32 181, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 181]
!48 = metadata !{i32 786688, metadata !30, metadata !"j", metadata !19, i32 181, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 181]
!49 = metadata !{i32 786688, metadata !30, metadata !"range", metadata !19, i32 181, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 181]
!50 = metadata !{i32 786688, metadata !30, metadata !"type", metadata !19, i32 181, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 181]
!51 = metadata !{i32 786688, metadata !30, metadata !"cnt", metadata !19, i32 181, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cnt] [line 181]
!52 = metadata !{i32 786688, metadata !30, metadata !"OffsetList", metadata !19, i32 182, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [OffsetList] [line 182]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!54 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!55 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"Init_QOffsetMatrix", metadata !"Init_QOffsetMatrix", metadata !"", i32 294, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @Init_QOffsetMatrix, null, null, metadata !58, i32 295} ; [ DW_TAG_subprogram ] [line 294] [def] [scope 295] [Init_QOffsetMatrix]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{null}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786688, metadata !55, metadata !"content", metadata !19, i32 296, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [content] [line 296]
!60 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"CalculateOffsetParam", metadata !"CalculateOffsetParam", metadata !"", i32 330, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CalculateOffsetParam, null, null, metadata !61, i32 331} ; [ DW_TAG_subprogram ] [line 330] [def] [scope 331] [CalculateOffsetParam]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!62 = metadata !{i32 786688, metadata !60, metadata !"i", metadata !19, i32 332, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 332]
!63 = metadata !{i32 786688, metadata !60, metadata !"j", metadata !19, i32 332, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 332]
!64 = metadata !{i32 786688, metadata !60, metadata !"k", metadata !19, i32 332, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 332]
!65 = metadata !{i32 786688, metadata !60, metadata !"temp", metadata !19, i32 332, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 332]
!66 = metadata !{i32 786688, metadata !60, metadata !"qp_per", metadata !19, i32 333, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per] [line 333]
!67 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"CalculateOffset8Param", metadata !"CalculateOffset8Param", metadata !"", i32 403, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CalculateOffset8Param, null, null, metadata !68, i32 404} ; [ DW_TAG_subprogram ] [line 403] [def] [scope 404] [CalculateOffset8Param]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!69 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !19, i32 406, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 406]
!70 = metadata !{i32 786688, metadata !67, metadata !"j", metadata !19, i32 406, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 406]
!71 = metadata !{i32 786688, metadata !67, metadata !"k", metadata !19, i32 406, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 406]
!72 = metadata !{i32 786688, metadata !67, metadata !"temp", metadata !19, i32 406, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 406]
!73 = metadata !{i32 786688, metadata !67, metadata !"q_bits", metadata !19, i32 407, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits] [line 407]
!74 = metadata !{metadata !75, metadata !79, metadata !83, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !282, metadata !284, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !329, metadata !424, metadata !425, metadata !426, metadata !428, metadata !429, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !446, metadata !447, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !462, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !474, metadata !477, metadata !478, metadata !479, metadata !480, metadata !483, metadata !486, metadata !497, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !613, metadata !616, metadata !617, metadata !618, metadata !621, metadata !622, metadata !625, metadata !629, metadata !630, metadata !631, metadata !635, metadata !636, metadata !637, metadata !639, metadata !640, metadata !641, metadata !646}
!75 = metadata !{i32 786484, i32 0, null, metadata !"offset4x4_check", metadata !"offset4x4_check", metadata !"", metadata !19, i32 20, metadata !76, i32 0, i32 1, [6 x i32]* @offset4x4_check, null} ; [ DW_TAG_variable ] [offset4x4_check] [line 20] [def]
!76 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !22, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!79 = metadata !{i32 786484, i32 0, null, metadata !"offset8x8_check", metadata !"offset8x8_check", metadata !"", metadata !19, i32 21, metadata !80, i32 0, i32 1, [2 x i32]* @offset8x8_check, null} ; [ DW_TAG_variable ] [offset8x8_check] [line 21] [def]
!80 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !22, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!83 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !84, i32 558, metadata !85, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!84 = metadata !{i32 786473, metadata !9}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!86 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!87 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !88, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !270, metadata !271, metadata !273, metadata !274}
!89 = metadata !{i32 786445, metadata !9, metadata !87, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!90 = metadata !{i32 786445, metadata !9, metadata !87, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!91 = metadata !{i32 786445, metadata !9, metadata !87, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!92 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !93, metadata !268, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!94 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!95 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !96, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !180, metadata !217, metadata !243, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !265}
!97 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!98 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!99 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!100 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!101 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!102 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!103 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !104} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!105 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!106 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !107, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!107 = metadata !{metadata !108, metadata !127, metadata !152}
!108 = metadata !{i32 786445, metadata !9, metadata !106, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!110 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!111 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !112, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!112 = metadata !{metadata !113, metadata !114, metadata !115, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !126}
!113 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!114 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!115 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !116} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!116 = metadata !{i32 786454, metadata !9, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!117 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!118 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!119 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!120 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !116} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!121 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !116} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!122 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!123 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!124 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !125} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!126 = metadata !{i32 786445, metadata !9, metadata !111, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!127 = metadata !{i32 786445, metadata !9, metadata !106, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !128} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!128 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!129 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !130, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!130 = metadata !{metadata !131, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151}
!131 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!132 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!133 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !132} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!134 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !132} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!135 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !132} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!136 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !132} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!137 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !125} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!138 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !25} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!139 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !132} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!140 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !132} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!141 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !132} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!142 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !132} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!143 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !132} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!144 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !125} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!145 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!146 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!147 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !22} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!148 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!149 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !22} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!150 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !22} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!151 = metadata !{i32 786445, metadata !9, metadata !129, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !22} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!152 = metadata !{i32 786445, metadata !9, metadata !106, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !153} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!153 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !154} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!154 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{metadata !22, metadata !156, metadata !179}
!156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!157 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!158 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !159, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!159 = metadata !{metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !172}
!160 = metadata !{i32 786445, metadata !9, metadata !158, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!161 = metadata !{i32 786445, metadata !9, metadata !158, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!162 = metadata !{i32 786445, metadata !9, metadata !158, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!163 = metadata !{i32 786445, metadata !9, metadata !158, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!164 = metadata !{i32 786445, metadata !9, metadata !158, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!165 = metadata !{i32 786445, metadata !9, metadata !158, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !132} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!166 = metadata !{i32 786445, metadata !9, metadata !158, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!167 = metadata !{i32 786445, metadata !9, metadata !158, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!168 = metadata !{i32 786445, metadata !9, metadata !158, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !169} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!169 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{null, metadata !22, metadata !22, metadata !25, metadata !25}
!172 = metadata !{i32 786445, metadata !9, metadata !158, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !173} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!173 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !174} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!174 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!175 = metadata !{null, metadata !176, metadata !177}
!176 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!177 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!178 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!180 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !181} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!182 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!183 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !184, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!184 = metadata !{metadata !185, metadata !198, metadata !202, metadata !206, metadata !209, metadata !213, metadata !214}
!185 = metadata !{i32 786445, metadata !9, metadata !183, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !186} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!186 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !187, metadata !195, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!187 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!188 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !189, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!189 = metadata !{metadata !190, metadata !192, metadata !193}
!190 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !191} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!191 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!192 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !117} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!193 = metadata !{i32 786445, metadata !9, metadata !188, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !194} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!194 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!195 = metadata !{metadata !196, metadata !197}
!196 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!197 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!198 = metadata !{i32 786445, metadata !9, metadata !183, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !199} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!199 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !187, metadata !200, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!200 = metadata !{metadata !82, metadata !201}
!201 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!202 = metadata !{i32 786445, metadata !9, metadata !183, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !203} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!203 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !187, metadata !204, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!204 = metadata !{metadata !82, metadata !205}
!205 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!206 = metadata !{i32 786445, metadata !9, metadata !183, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !207} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !187, metadata !208, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!208 = metadata !{metadata !82, metadata !78}
!209 = metadata !{i32 786445, metadata !9, metadata !183, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !210} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!210 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !187, metadata !211, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!211 = metadata !{metadata !212}
!212 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!213 = metadata !{i32 786445, metadata !9, metadata !183, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !210} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!214 = metadata !{i32 786445, metadata !9, metadata !183, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !215} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!215 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !187, metadata !216, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!216 = metadata !{metadata !196}
!217 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !218} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!218 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!219 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !220} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!220 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !221, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!221 = metadata !{metadata !222, metadata !224, metadata !225, metadata !228, metadata !231, metadata !235, metadata !236, metadata !240, metadata !241, metadata !242}
!222 = metadata !{i32 786445, metadata !9, metadata !220, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !223} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!223 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !187, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!224 = metadata !{i32 786445, metadata !9, metadata !220, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !210} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!225 = metadata !{i32 786445, metadata !9, metadata !220, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !226} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!226 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !187, metadata !227, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!227 = metadata !{metadata !196, metadata !212}
!228 = metadata !{i32 786445, metadata !9, metadata !220, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !229} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!229 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !187, metadata !230, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!230 = metadata !{metadata !205, metadata !212}
!231 = metadata !{i32 786445, metadata !9, metadata !220, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !232} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!232 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !187, metadata !233, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!233 = metadata !{metadata !205, metadata !234}
!234 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!235 = metadata !{i32 786445, metadata !9, metadata !220, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !232} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!236 = metadata !{i32 786445, metadata !9, metadata !220, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !237} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!237 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !187, metadata !238, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!238 = metadata !{metadata !205, metadata !239}
!239 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!240 = metadata !{i32 786445, metadata !9, metadata !220, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !237} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!241 = metadata !{i32 786445, metadata !9, metadata !220, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !232} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!242 = metadata !{i32 786445, metadata !9, metadata !220, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !232} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!243 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !244} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!244 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!245 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!246 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !247, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!247 = metadata !{metadata !248, metadata !249, metadata !250}
!248 = metadata !{i32 786445, metadata !9, metadata !246, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!249 = metadata !{i32 786445, metadata !9, metadata !246, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!250 = metadata !{i32 786445, metadata !9, metadata !246, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !251} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!251 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !246} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!252 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!253 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !25} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!254 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!255 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !25} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!256 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!257 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !25} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!258 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !25} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!259 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !25} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!260 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !261} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!261 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !262} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!262 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!263 = metadata !{metadata !264, metadata !22}
!264 = metadata !{i32 786454, metadata !9, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!265 = metadata !{i32 786445, metadata !9, metadata !95, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !266} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!266 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !22, metadata !267, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!267 = metadata !{metadata !196, metadata !82}
!268 = metadata !{metadata !269}
!269 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!270 = metadata !{i32 786445, metadata !9, metadata !87, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !22} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!271 = metadata !{i32 786445, metadata !9, metadata !87, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !272} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!272 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!273 = metadata !{i32 786445, metadata !9, metadata !87, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !272} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!274 = metadata !{i32 786445, metadata !9, metadata !87, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !272} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!275 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !84, i32 559, metadata !85, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!276 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !84, i32 560, metadata !85, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!277 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !84, i32 561, metadata !85, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!278 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !84, i32 562, metadata !85, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!279 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !84, i32 565, metadata !280, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!280 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!281 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!282 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !84, i32 566, metadata !283, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!283 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !280} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!284 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !84, i32 567, metadata !285, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!285 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!286 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !84, i32 569, metadata !132, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!287 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !84, i32 570, metadata !132, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!288 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !84, i32 572, metadata !22, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!289 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !84, i32 572, metadata !22, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!290 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !84, i32 573, metadata !291, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!291 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !292} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!292 = metadata !{i32 786454, metadata !9, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !293} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!293 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !294, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!294 = metadata !{metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !305, metadata !306, metadata !307, metadata !308, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328}
!295 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !264} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!296 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !132} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!297 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !132} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!298 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !264} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!299 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !264} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!300 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !264} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!301 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !302} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!302 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !22, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!303 = metadata !{metadata !304}
!304 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!305 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !264} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!306 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !132} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!307 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !132} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!308 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !309} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!309 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !132, metadata !303, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!310 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !309} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!311 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !309} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!312 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !264} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!313 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !132} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!314 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !132} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!315 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !125} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!316 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !22} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!317 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !22} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!318 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !264} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!319 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !132} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!320 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !22} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!321 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !22} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!322 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !22} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!323 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !22} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!324 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !22} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!325 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !264} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!326 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !264} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!327 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !264} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!328 = metadata !{i32 786445, metadata !4, metadata !293, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !264} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!329 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !84, i32 574, metadata !330, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!330 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !331} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!331 = metadata !{i32 786454, metadata !9, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !332} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!332 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !333, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!333 = metadata !{metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371}
!334 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !264} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!335 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !132} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!336 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !264} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!337 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !264} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!338 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !264} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!339 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !264} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!340 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !132} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!341 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !132} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!342 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !132} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!343 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !264} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!344 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !302} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!345 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !132} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!346 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !132} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!347 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !132} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!348 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !132} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!349 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !132} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!350 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !264} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!351 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !22} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!352 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !22} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!353 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !132} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!354 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !355} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!355 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !22, metadata !356, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!356 = metadata !{metadata !357}
!357 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!358 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !132} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!359 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !264} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!360 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !132} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!361 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !132} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!362 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !264} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!363 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !264} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!364 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !264} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!365 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !264} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!366 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !132} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!367 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !132} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!368 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !132} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!369 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !132} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!370 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !264} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!371 = metadata !{i32 786445, metadata !4, metadata !332, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !372} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!372 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !373} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!373 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !374, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!374 = metadata !{metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423}
!375 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !264} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!376 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !132} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!377 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !132} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!378 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !132} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!379 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !264} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!380 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !264} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!381 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !264} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!382 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !132} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!383 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !264} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!384 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !264} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!385 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !132} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!386 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !132} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!387 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !132} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!388 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !264} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!389 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !132} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!390 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !132} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!391 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !264} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!392 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !132} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!393 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !132} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!394 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !264} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!395 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !264} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!396 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !397} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!397 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !398} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!398 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !399, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!399 = metadata !{metadata !400, metadata !401, metadata !402, metadata !403, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412}
!400 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!401 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !132} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!402 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !132} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!403 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !404} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!404 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !132, metadata !405, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!405 = metadata !{metadata !406}
!406 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!407 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !404} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!408 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !404} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!409 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !132} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!410 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !132} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!411 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !132} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!412 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !132} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!413 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !264} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!414 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !397} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!415 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !264} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!416 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !264} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!417 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !264} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!418 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !132} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!419 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !132} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!420 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !132} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!421 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !132} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!422 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !132} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!423 = metadata !{i32 786445, metadata !4, metadata !373, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !132} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!424 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !84, i32 578, metadata !22, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!425 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !84, i32 579, metadata !22, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!426 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !84, i32 583, metadata !427, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!427 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !285} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!428 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !84, i32 584, metadata !427, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!429 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !84, i32 585, metadata !430, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!430 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !427} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!431 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !84, i32 586, metadata !22, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!432 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !84, i32 587, metadata !22, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!433 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !84, i32 588, metadata !22, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!434 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !84, i32 589, metadata !22, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!435 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !84, i32 592, metadata !280, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!436 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !84, i32 593, metadata !280, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!437 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !84, i32 595, metadata !283, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!438 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !84, i32 596, metadata !283, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!439 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !84, i32 598, metadata !280, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!440 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !84, i32 599, metadata !283, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!441 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !84, i32 601, metadata !280, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!442 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !84, i32 602, metadata !283, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!443 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !84, i32 604, metadata !444, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!444 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !445} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!445 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!446 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !84, i32 605, metadata !445, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!447 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !84, i32 608, metadata !448, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!448 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!449 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !84, i32 609, metadata !448, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!450 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !84, i32 610, metadata !22, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!451 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !84, i32 612, metadata !22, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!452 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !84, i32 612, metadata !22, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!453 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !84, i32 612, metadata !22, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!454 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !84, i32 613, metadata !22, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!455 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !84, i32 613, metadata !22, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!456 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !84, i32 613, metadata !22, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!457 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !84, i32 614, metadata !22, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!458 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !84, i32 617, metadata !459, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!459 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !24, metadata !460, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!460 = metadata !{metadata !461}
!461 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!462 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !84, i32 620, metadata !463, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!463 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !22, metadata !464, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!464 = metadata !{metadata !465, metadata !465}
!465 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!466 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !84, i32 620, metadata !463, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!467 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !84, i32 620, metadata !463, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!468 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !84, i32 621, metadata !463, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!469 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !84, i32 621, metadata !463, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!470 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !84, i32 621, metadata !463, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!471 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !84, i32 622, metadata !472, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!472 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !22, metadata !473, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!473 = metadata !{metadata !196, metadata !465, metadata !465}
!474 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !84, i32 623, metadata !475, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!475 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !22, metadata !476, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!476 = metadata !{metadata !82, metadata !212, metadata !212}
!477 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !84, i32 623, metadata !475, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!478 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !84, i32 624, metadata !475, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!479 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !84, i32 624, metadata !475, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!480 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !84, i32 625, metadata !481, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!481 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !22, metadata !482, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!482 = metadata !{metadata !212, metadata !212}
!483 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !84, i32 625, metadata !484, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!484 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !22, metadata !485, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!485 = metadata !{metadata !465}
!486 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !84, i32 1201, metadata !487, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!487 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !488} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!488 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !489} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!489 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !490, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!490 = metadata !{metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496}
!491 = metadata !{i32 786445, metadata !9, metadata !489, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!492 = metadata !{i32 786445, metadata !9, metadata !489, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!493 = metadata !{i32 786445, metadata !9, metadata !489, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!494 = metadata !{i32 786445, metadata !9, metadata !489, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!495 = metadata !{i32 786445, metadata !9, metadata !489, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!496 = metadata !{i32 786445, metadata !9, metadata !489, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!497 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !84, i32 1202, metadata !498, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!498 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !499} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!499 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !500} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!500 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !501, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!501 = metadata !{metadata !502, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !521, metadata !522, metadata !526, metadata !527, metadata !528, metadata !529, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537}
!502 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !503} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!503 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!504 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !463} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!505 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !463} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!506 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !463} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!507 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !430} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!508 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !427} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!509 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !22} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!510 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !22} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!511 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !512} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!512 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !22, metadata !211, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!513 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !512} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!514 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !285} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!515 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !484} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!516 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !22} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!517 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !518} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!518 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !519} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!519 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !520} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!520 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!521 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !22} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!522 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !523} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!523 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !524} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!524 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !525} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!525 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !444} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!526 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !523} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!527 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !523} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!528 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !523} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!529 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !530} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!530 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !54, metadata !476, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!531 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !22} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!532 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !22} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!533 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !22} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!534 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !22} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!535 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !22} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!536 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !22} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!537 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !22} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!538 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !84, i32 1203, metadata !499, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!539 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !84, i32 1203, metadata !499, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!540 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !84, i32 1204, metadata !499, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!541 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !84, i32 1204, metadata !499, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!542 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !84, i32 1230, metadata !543, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!543 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !544} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!544 = metadata !{i32 786454, metadata !9, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !545} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!545 = metadata !{i32 786451, metadata !546, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !547, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!546 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!547 = metadata !{metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !568, metadata !569, metadata !570, metadata !571, metadata !573, metadata !574, metadata !576, metadata !580, metadata !582, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !590, metadata !591}
!548 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!549 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!550 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!551 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!552 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!553 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!554 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!555 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!556 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!557 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!558 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!559 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!560 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !561} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!561 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !562} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!562 = metadata !{i32 786451, metadata !546, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !563, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!563 = metadata !{metadata !564, metadata !565, metadata !567}
!564 = metadata !{i32 786445, metadata !546, metadata !562, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !561} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!565 = metadata !{i32 786445, metadata !546, metadata !562, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !566} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!566 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !545} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!567 = metadata !{i32 786445, metadata !546, metadata !562, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!568 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !566} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!569 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!570 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!571 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !572} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!572 = metadata !{i32 786454, metadata !546, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !520} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!573 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !191} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!574 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !575} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!575 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!576 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !577} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!577 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !24, metadata !578, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!578 = metadata !{metadata !579}
!579 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!580 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !581} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!581 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!582 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !583} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!583 = metadata !{i32 786454, metadata !546, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !520} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!584 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !581} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!585 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !581} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!586 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !581} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!587 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !581} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!588 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !589} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!589 = metadata !{i32 786454, metadata !546, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!590 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !22} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!591 = metadata !{i32 786445, metadata !546, metadata !545, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !592} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!592 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !24, metadata !593, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!593 = metadata !{metadata !594}
!594 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!595 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !84, i32 1231, metadata !543, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!596 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !84, i32 1232, metadata !543, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!597 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !84, i32 1233, metadata !22, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!598 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !84, i32 1234, metadata !22, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!599 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !84, i32 1237, metadata !600, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!600 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !22, metadata !593, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!601 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !84, i32 1238, metadata !600, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!602 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !84, i32 1239, metadata !600, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!603 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !84, i32 1240, metadata !600, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!604 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !84, i32 1241, metadata !600, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!605 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !84, i32 1242, metadata !600, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!606 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !84, i32 1456, metadata !22, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!607 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !84, i32 1465, metadata !22, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!608 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !84, i32 1466, metadata !22, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!609 = metadata !{i32 786484, i32 0, null, metadata !"LevelOffset4x4Luma_Intra", metadata !"LevelOffset4x4Luma_Intra", metadata !"", metadata !19, i32 44, metadata !610, i32 0, i32 1, [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, null} ; [ DW_TAG_variable ] [LevelOffset4x4Luma_Intra] [line 44] [def]
!610 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6656, i64 32, i32 0, i32 0, metadata !22, metadata !611, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6656, align 32, offset 0] [from int]
!611 = metadata !{metadata !612, metadata !212, metadata !212}
!612 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 12]
!613 = metadata !{i32 786484, i32 0, null, metadata !"LevelOffset4x4Chroma_Intra", metadata !"LevelOffset4x4Chroma_Intra", metadata !"", metadata !19, i32 45, metadata !614, i32 0, i32 1, [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, null} ; [ DW_TAG_variable ] [LevelOffset4x4Chroma_Intra] [line 45] [def]
!614 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 13312, i64 32, i32 0, i32 0, metadata !22, metadata !615, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 13312, align 32, offset 0] [from int]
!615 = metadata !{metadata !82, metadata !612, metadata !212, metadata !212}
!616 = metadata !{i32 786484, i32 0, null, metadata !"LevelOffset4x4Luma_Inter", metadata !"LevelOffset4x4Luma_Inter", metadata !"", metadata !19, i32 47, metadata !610, i32 0, i32 1, [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Inter, null} ; [ DW_TAG_variable ] [LevelOffset4x4Luma_Inter] [line 47] [def]
!617 = metadata !{i32 786484, i32 0, null, metadata !"LevelOffset4x4Chroma_Inter", metadata !"LevelOffset4x4Chroma_Inter", metadata !"", metadata !19, i32 48, metadata !614, i32 0, i32 1, [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, null} ; [ DW_TAG_variable ] [LevelOffset4x4Chroma_Inter] [line 48] [def]
!618 = metadata !{i32 786484, i32 0, null, metadata !"LevelOffset8x8Luma_Intra", metadata !"LevelOffset8x8Luma_Intra", metadata !"", metadata !19, i32 50, metadata !619, i32 0, i32 1, [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, null} ; [ DW_TAG_variable ] [LevelOffset8x8Luma_Intra] [line 50] [def]
!619 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 26624, i64 32, i32 0, i32 0, metadata !22, metadata !620, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 26624, align 32, offset 0] [from int]
!620 = metadata !{metadata !612, metadata !304, metadata !304}
!621 = metadata !{i32 786484, i32 0, null, metadata !"LevelOffset8x8Luma_Inter", metadata !"LevelOffset8x8Luma_Inter", metadata !"", metadata !19, i32 51, metadata !619, i32 0, i32 1, [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Inter, null} ; [ DW_TAG_variable ] [LevelOffset8x8Luma_Inter] [line 51] [def]
!622 = metadata !{i32 786484, i32 0, null, metadata !"OffsetList4x4input", metadata !"OffsetList4x4input", metadata !"", metadata !19, i32 53, metadata !623, i32 0, i32 1, [9 x [16 x i16]]* @OffsetList4x4input, null} ; [ DW_TAG_variable ] [OffsetList4x4input] [line 53] [def]
!623 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 16, i32 0, i32 0, metadata !54, metadata !624, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 16, offset 0] [from short]
!624 = metadata !{metadata !201, metadata !465}
!625 = metadata !{i32 786484, i32 0, null, metadata !"OffsetList8x8input", metadata !"OffsetList8x8input", metadata !"", metadata !19, i32 54, metadata !626, i32 0, i32 1, [3 x [64 x i16]]* @OffsetList8x8input, null} ; [ DW_TAG_variable ] [OffsetList8x8input] [line 54] [def]
!626 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3072, i64 16, i32 0, i32 0, metadata !54, metadata !627, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3072, align 16, offset 0] [from short]
!627 = metadata !{metadata !196, metadata !628}
!628 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!629 = metadata !{i32 786484, i32 0, null, metadata !"OffsetList4x4", metadata !"OffsetList4x4", metadata !"", metadata !19, i32 55, metadata !623, i32 0, i32 1, [9 x [16 x i16]]* @OffsetList4x4, null} ; [ DW_TAG_variable ] [OffsetList4x4] [line 55] [def]
!630 = metadata !{i32 786484, i32 0, null, metadata !"OffsetList8x8", metadata !"OffsetList8x8", metadata !"", metadata !19, i32 56, metadata !626, i32 0, i32 1, [3 x [64 x i16]]* @OffsetList8x8, null} ; [ DW_TAG_variable ] [OffsetList8x8] [line 56] [def]
!631 = metadata !{i32 786484, i32 0, null, metadata !"Offset8_inter_default", metadata !"Offset8_inter_default", metadata !"", metadata !19, i32 109, metadata !632, i32 1, i32 1, [64 x i16]* @Offset8_inter_default, null} ; [ DW_TAG_variable ] [Offset8_inter_default] [line 109] [local] [def]
!632 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !633, metadata !634, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 16, offset 0] [from ]
!633 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from short]
!634 = metadata !{metadata !628}
!635 = metadata !{i32 786484, i32 0, null, metadata !"Offset8_intra_default_inter", metadata !"Offset8_intra_default_inter", metadata !"", metadata !19, i32 97, metadata !632, i32 1, i32 1, [64 x i16]* @Offset8_inter_default, null} ; [ DW_TAG_variable ] [Offset8_intra_default_inter] [line 97] [local] [def]
!636 = metadata !{i32 786484, i32 0, null, metadata !"Offset8_intra_default_intra", metadata !"Offset8_intra_default_intra", metadata !"", metadata !19, i32 85, metadata !632, i32 1, i32 1, [64 x i16]* @Offset8_intra_default_intra, null} ; [ DW_TAG_variable ] [Offset8_intra_default_intra] [line 85] [local] [def]
!637 = metadata !{i32 786484, i32 0, null, metadata !"Offset_inter_default", metadata !"Offset_inter_default", metadata !"", metadata !19, i32 77, metadata !638, i32 1, i32 1, [16 x i16]* @Offset_inter_default, null} ; [ DW_TAG_variable ] [Offset_inter_default] [line 77] [local] [def]
!638 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 16, i32 0, i32 0, metadata !633, metadata !485, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 16, offset 0] [from ]
!639 = metadata !{i32 786484, i32 0, null, metadata !"Offset_intra_default_inter", metadata !"Offset_intra_default_inter", metadata !"", metadata !19, i32 69, metadata !638, i32 1, i32 1, [16 x i16]* @Offset_inter_default, null} ; [ DW_TAG_variable ] [Offset_intra_default_inter] [line 69] [local] [def]
!640 = metadata !{i32 786484, i32 0, null, metadata !"Offset_intra_default_intra", metadata !"Offset_intra_default_intra", metadata !"", metadata !19, i32 61, metadata !638, i32 1, i32 1, [16 x i16]* @Offset_intra_default_intra, null} ; [ DW_TAG_variable ] [Offset_intra_default_intra] [line 61] [local] [def]
!641 = metadata !{i32 786484, i32 0, null, metadata !"OffsetType8x8", metadata !"OffsetType8x8", metadata !"", metadata !19, i32 36, metadata !642, i32 1, i32 1, [3 x [24 x i8]]* @OffsetType8x8, null} ; [ DW_TAG_variable ] [OffsetType8x8] [line 36] [local] [def]
!642 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 8, i32 0, i32 0, metadata !643, metadata !644, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 8, offset 0] [from ]
!643 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!644 = metadata !{metadata !196, metadata !645}
!645 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!646 = metadata !{i32 786484, i32 0, null, metadata !"OffsetType4x4", metadata !"OffsetType4x4", metadata !"", metadata !19, i32 23, metadata !647, i32 1, i32 1, [9 x [24 x i8]]* @OffsetType4x4, null} ; [ DW_TAG_variable ] [OffsetType4x4] [line 23] [local] [def]
!647 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1728, i64 8, i32 0, i32 0, metadata !643, metadata !648, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1728, align 8, offset 0] [from ]
!648 = metadata !{metadata !201, metadata !645}
!649 = metadata !{i32 136, i32 0, metadata !18, null}
!650 = metadata !{i32 138, i32 0, metadata !18, null}
!651 = metadata !{i32 140, i32 0, metadata !18, null}
!652 = metadata !{metadata !"int", metadata !653}
!653 = metadata !{metadata !"omnipotent char", metadata !654}
!654 = metadata !{metadata !"Simple C/C++ TBAA"}
!655 = metadata !{i32 141, i32 0, metadata !18, null}
!656 = metadata !{i32 146, i32 0, metadata !657, null}
!657 = metadata !{i32 786443, metadata !1, metadata !18, i32 142, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!658 = metadata !{i32 143, i32 0, metadata !657, null}
!659 = metadata !{i32 149, i32 0, metadata !18, null}
!660 = metadata !{i32 150, i32 0, metadata !18, null}
!661 = metadata !{i32 151, i32 0, metadata !18, null}
!662 = metadata !{i32 156, i32 0, metadata !663, null}
!663 = metadata !{i32 786443, metadata !1, metadata !18, i32 152, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!664 = metadata !{i32 153, i32 0, metadata !663, null}
!665 = metadata !{i32 160, i32 0, metadata !18, null}
!666 = metadata !{i32 172, i32 0, metadata !30, null}
!667 = metadata !{i32 174, i32 0, metadata !30, null}
!668 = metadata !{i32 176, i32 0, metadata !30, null}
!669 = metadata !{i32 177, i32 0, metadata !30, null}
!670 = metadata !{i32 178, i32 0, metadata !30, null}
!671 = metadata !{i32 179, i32 0, metadata !30, null}
!672 = metadata !{i32 180, i32 0, metadata !30, null}
!673 = metadata !{i32 181, i32 0, metadata !30, null}
!674 = metadata !{i32 184, i32 0, metadata !30, null}
!675 = metadata !{i32 186, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !30, i32 185, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!677 = metadata !{i32 189, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !676, i32 187, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!679 = metadata !{i32 190, i32 0, metadata !678, null}
!680 = metadata !{i32 192, i32 0, metadata !678, null}
!681 = metadata !{i32 193, i32 0, metadata !678, null}
!682 = metadata !{i32 194, i32 0, metadata !678, null}
!683 = metadata !{i32 199, i32 0, metadata !678, null}
!684 = metadata !{i32 200, i32 0, metadata !678, null}
!685 = metadata !{i32 201, i32 0, metadata !678, null}
!686 = metadata !{i32 202, i32 0, metadata !678, null}
!687 = metadata !{i32 205, i32 0, metadata !678, null}
!688 = metadata !{i32 206, i32 0, metadata !678, null}
!689 = metadata !{i32 209, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !678, i32 208, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!691 = metadata !{i32 210, i32 0, metadata !690, null}
!692 = metadata !{i32 215, i32 0, metadata !678, null}
!693 = metadata !{i32 216, i32 0, metadata !678, null}
!694 = metadata !{i32 218, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !678, i32 217, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!696 = metadata !{metadata !"any pointer", metadata !653}
!697 = metadata !{i32 219, i32 0, metadata !695, null}
!698 = metadata !{i32 220, i32 0, metadata !695, null}
!699 = metadata !{i32 223, i32 0, metadata !678, null}
!700 = metadata !{i32 224, i32 0, metadata !678, null}
!701 = metadata !{i32 227, i32 0, metadata !678, null}
!702 = metadata !{i32 228, i32 0, metadata !678, null}
!703 = metadata !{i32 229, i32 0, metadata !678, null}
!704 = metadata !{i32 232, i32 0, metadata !678, null}
!705 = metadata !{i32 234, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !1, metadata !678, i32 233, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!707 = metadata !{i32 -1}
!708 = metadata !{i32 235, i32 0, metadata !706, null}
!709 = metadata !{i32 236, i32 0, metadata !706, null}
!710 = metadata !{i32 237, i32 0, metadata !678, null}
!711 = metadata !{i32 238, i32 0, metadata !678, null}
!712 = metadata !{i32 241, i32 0, metadata !30, null}
!713 = metadata !{i32 243, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !30, i32 243, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!715 = metadata !{i32 245, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !714, i32 244, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!717 = metadata !{i32 246, i32 0, metadata !716, null}
!718 = metadata !{i32 248, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !716, i32 247, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!720 = metadata !{i32 249, i32 0, metadata !719, null}
!721 = metadata !{i32 250, i32 0, metadata !719, null}
!722 = metadata !{i32 1}
!723 = metadata !{i32 251, i32 0, metadata !716, null}
!724 = metadata !{i32 252, i32 0, metadata !716, null}
!725 = metadata !{i32 254, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !716, i32 253, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!727 = metadata !{i32 255, i32 0, metadata !726, null}
!728 = metadata !{i32 256, i32 0, metadata !726, null}
!729 = metadata !{i32 2}
!730 = metadata !{i32 257, i32 0, metadata !716, null}
!731 = metadata !{i32 259, i32 0, metadata !716, null}
!732 = metadata !{i32 262, i32 0, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !716, i32 260, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!734 = metadata !{i32 16}
!735 = metadata !{i32 261, i32 0, metadata !733, null}
!736 = metadata !{i32 263, i32 0, metadata !733, null}
!737 = metadata !{i32 264, i32 0, metadata !733, null}
!738 = metadata !{i32 64}
!739 = metadata !{i32 267, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !716, i32 266, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!741 = metadata !{i32 268, i32 0, metadata !740, null}
!742 = metadata !{i32 269, i32 0, metadata !740, null}
!743 = metadata !{i32 272, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !716, i32 272, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!745 = metadata !{i32 274, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !744, i32 273, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!747 = metadata !{i32 276, i32 0, metadata !748, null}
!748 = metadata !{i32 786443, metadata !1, metadata !746, i32 275, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!749 = metadata !{i32 277, i32 0, metadata !748, null}
!750 = metadata !{i32 278, i32 0, metadata !748, null}
!751 = metadata !{i32 280, i32 0, metadata !746, null}
!752 = metadata !{metadata !"short", metadata !653}
!753 = metadata !{i32 282, i32 0, metadata !716, null}
!754 = metadata !{i32 283, i32 0, metadata !716, null}
!755 = metadata !{i32 285, i32 0, metadata !30, null}
!756 = metadata !{i32 298, i32 0, metadata !55, null}
!757 = metadata !{i32 300, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !55, i32 299, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!759 = metadata !{i32 301, i32 0, metadata !758, null}
!760 = metadata !{i32 302, i32 0, metadata !758, null}
!761 = metadata !{i32 303, i32 0, metadata !758, null}
!762 = metadata !{i32 306, i32 0, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !758, i32 305, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!764 = metadata !{i32 307, i32 0, metadata !763, null}
!765 = metadata !{i32 310, i32 0, metadata !758, null}
!766 = metadata !{i32 313, i32 0, metadata !758, null}
!767 = metadata !{i32 314, i32 0, metadata !758, null}
!768 = metadata !{i32 315, i32 0, metadata !55, null}
!769 = metadata !{i32 335, i32 0, metadata !60, null}
!770 = metadata !{i32 337, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !772, i32 337, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!772 = metadata !{i32 786443, metadata !1, metadata !60, i32 336, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!773 = metadata !{i32 375, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !775, i32 373, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!775 = metadata !{i32 786443, metadata !1, metadata !776, i32 372, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!776 = metadata !{i32 786443, metadata !1, metadata !777, i32 371, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!777 = metadata !{i32 786443, metadata !1, metadata !778, i32 370, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!778 = metadata !{i32 786443, metadata !1, metadata !779, i32 368, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!779 = metadata !{i32 786443, metadata !1, metadata !780, i32 367, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!780 = metadata !{i32 786443, metadata !1, metadata !60, i32 366, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!781 = metadata !{i32 339, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !771, i32 338, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!783 = metadata !{i32 340, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !782, i32 340, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!785 = metadata !{i32 342, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !787, i32 342, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!787 = metadata !{i32 786443, metadata !1, metadata !784, i32 341, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!788 = metadata !{i32 344, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !786, i32 343, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!790 = metadata !{i32 345, i32 0, metadata !789, null}
!791 = metadata !{i32 347, i32 0, metadata !792, null}
!792 = metadata !{i32 786443, metadata !1, metadata !789, i32 346, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!793 = metadata !{i32 348, i32 0, metadata !792, null}
!794 = metadata !{i32 349, i32 0, metadata !792, null}
!795 = metadata !{i32 350, i32 0, metadata !792, null}
!796 = metadata !{i32 353, i32 0, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !789, i32 352, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!798 = metadata !{i32 354, i32 0, metadata !797, null}
!799 = metadata !{i32 355, i32 0, metadata !797, null}
!800 = metadata !{i32 358, i32 0, metadata !789, null}
!801 = metadata !{i32 359, i32 0, metadata !789, null}
!802 = metadata !{i32 360, i32 0, metadata !789, null}
!803 = metadata !{i32 369, i32 0, metadata !778, null}
!804 = metadata !{i32 370, i32 0, metadata !777, null}
!805 = metadata !{i32 372, i32 0, metadata !775, null}
!806 = metadata !{i32 374, i32 0, metadata !774, null}
!807 = metadata !{i32 377, i32 0, metadata !808, null}
!808 = metadata !{i32 786443, metadata !1, metadata !774, i32 376, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!809 = metadata !{i32 378, i32 0, metadata !808, null}
!810 = metadata !{i32 379, i32 0, metadata !808, null}
!811 = metadata !{i32 380, i32 0, metadata !808, null}
!812 = metadata !{i32 383, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !774, i32 382, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!814 = metadata !{i32 384, i32 0, metadata !813, null}
!815 = metadata !{i32 385, i32 0, metadata !813, null}
!816 = metadata !{i32 387, i32 0, metadata !774, null}
!817 = metadata !{i32 388, i32 0, metadata !774, null}
!818 = metadata !{i32 389, i32 0, metadata !774, null}
!819 = metadata !{i32 367, i32 0, metadata !779, null}
!820 = metadata !{i32 394, i32 0, metadata !60, null}
!821 = metadata !{i32 409, i32 0, metadata !67, null}
!822 = metadata !{i32 411, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !824, i32 411, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!824 = metadata !{i32 786443, metadata !1, metadata !67, i32 410, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!825 = metadata !{i32 439, i32 0, metadata !826, null}
!826 = metadata !{i32 786443, metadata !1, metadata !827, i32 437, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!827 = metadata !{i32 786443, metadata !1, metadata !828, i32 436, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!828 = metadata !{i32 786443, metadata !1, metadata !829, i32 435, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!829 = metadata !{i32 786443, metadata !1, metadata !830, i32 434, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!830 = metadata !{i32 786443, metadata !1, metadata !831, i32 432, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!831 = metadata !{i32 786443, metadata !1, metadata !832, i32 431, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!832 = metadata !{i32 786443, metadata !1, metadata !67, i32 430, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!833 = metadata !{i32 413, i32 0, metadata !834, null}
!834 = metadata !{i32 786443, metadata !1, metadata !823, i32 412, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!835 = metadata !{i32 414, i32 0, metadata !836, null}
!836 = metadata !{i32 786443, metadata !1, metadata !834, i32 414, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!837 = metadata !{i32 416, i32 0, metadata !838, null}
!838 = metadata !{i32 786443, metadata !1, metadata !839, i32 416, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!839 = metadata !{i32 786443, metadata !1, metadata !836, i32 415, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!840 = metadata !{i32 418, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !838, i32 417, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c]
!842 = metadata !{i32 419, i32 0, metadata !841, null}
!843 = metadata !{i32 420, i32 0, metadata !841, null}
!844 = metadata !{i32 422, i32 0, metadata !841, null}
!845 = metadata !{i32 424, i32 0, metadata !841, null}
!846 = metadata !{i32 433, i32 0, metadata !830, null}
!847 = metadata !{i32 434, i32 0, metadata !829, null}
!848 = metadata !{i32 436, i32 0, metadata !827, null}
!849 = metadata !{i32 438, i32 0, metadata !826, null}
!850 = metadata !{i32 440, i32 0, metadata !826, null}
!851 = metadata !{i32 442, i32 0, metadata !826, null}
!852 = metadata !{i32 443, i32 0, metadata !826, null}
!853 = metadata !{i32 431, i32 0, metadata !831, null}
!854 = metadata !{i32 448, i32 0, metadata !67, null}
