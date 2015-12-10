; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.CSobj = type { i32, %struct.EncodingEnvironment*, %struct.Bitstream*, i32, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, [8 x i32], [2 x [4 x [4 x [2 x i32]]]], i64 }

@.str = private unnamed_addr constant [22 x i8] c"init_coding_state: cs\00", align 1
@input = external global %struct.InputParameters*
@.str1 = private unnamed_addr constant [30 x i8] c"init_coding_state: cs->encenv\00", align 1
@.str2 = private unnamed_addr constant [33 x i8] c"init_coding_state: cs->bitstream\00", align 1
@img = external global %struct.ImageParameters*
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
define void @delete_coding_state(%struct.CSobj* %cs) #0 {
  tail call void @llvm.dbg.value(metadata %struct.CSobj* %cs, i64 0, metadata !162, metadata !678), !dbg !679
  %1 = icmp eq %struct.CSobj* %cs, null, !dbg !680
  br i1 %1, label %20, label %2, !dbg !682

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 1, !dbg !683
  %4 = load %struct.EncodingEnvironment** %3, align 8, !dbg !683, !tbaa !686
  %5 = icmp eq %struct.EncodingEnvironment* %4, null, !dbg !693
  br i1 %5, label %8, label %6, !dbg !694

; <label>:6                                       ; preds = %2
  %7 = bitcast %struct.EncodingEnvironment* %4 to i8*, !dbg !695
  tail call void @free(i8* %7) #5, !dbg !696
  br label %8, !dbg !696

; <label>:8                                       ; preds = %2, %6
  %9 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2, !dbg !697
  %10 = load %struct.Bitstream** %9, align 8, !dbg !697, !tbaa !699
  %11 = icmp eq %struct.Bitstream* %10, null, !dbg !700
  br i1 %11, label %14, label %12, !dbg !701

; <label>:12                                      ; preds = %8
  %13 = bitcast %struct.Bitstream* %10 to i8*, !dbg !702
  tail call void @free(i8* %13) #5, !dbg !703
  br label %14, !dbg !703

; <label>:14                                      ; preds = %8, %12
  %15 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 4, !dbg !704
  %16 = load %struct.MotionInfoContexts** %15, align 8, !dbg !704, !tbaa !705
  tail call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %16) #6, !dbg !706
  %17 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 5, !dbg !707
  %18 = load %struct.TextureInfoContexts** %17, align 8, !dbg !707, !tbaa !708
  tail call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %18) #6, !dbg !709
  %19 = bitcast %struct.CSobj* %cs to i8*, !dbg !710
  tail call void @free(i8* %19) #5, !dbg !711
  tail call void @llvm.dbg.value(metadata %struct.CSobj* null, i64 0, metadata !162, metadata !678), !dbg !679
  br label %20, !dbg !712

; <label>:20                                      ; preds = %0, %14
  ret void, !dbg !713
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #2

; Function Attrs: optsize
declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #2

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.CSobj* @create_coding_state() #0 {
  %1 = tail call i8* @calloc(i64 1, i64 352) #6, !dbg !714
  %2 = bitcast i8* %1 to %struct.CSobj*, !dbg !716
  tail call void @llvm.dbg.value(metadata %struct.CSobj* %2, i64 0, metadata !167, metadata !678), !dbg !717
  %3 = icmp eq i8* %1, null, !dbg !718
  br i1 %3, label %4, label %5, !dbg !719

; <label>:4                                       ; preds = %0
  tail call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0)) #6, !dbg !720
  br label %5, !dbg !720

; <label>:5                                       ; preds = %4, %0
  %6 = load %struct.InputParameters** @input, align 8, !dbg !721, !tbaa !722
  %7 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 61, !dbg !723
  %8 = load i32* %7, align 4, !dbg !723, !tbaa !724
  %9 = icmp eq i32 %8, 0, !dbg !727
  %10 = select i1 %9, i32 1, i32 3, !dbg !721
  %11 = bitcast i8* %1 to i32*, !dbg !728
  store i32 %10, i32* %11, align 4, !dbg !729, !tbaa !730
  %12 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 59, !dbg !731
  %13 = load i32* %12, align 4, !dbg !731, !tbaa !733
  %14 = icmp eq i32 %13, 1, !dbg !734
  br i1 %14, label %15, label %22, !dbg !735

; <label>:15                                      ; preds = %5
  %16 = zext i32 %10 to i64, !dbg !736
  %17 = tail call i8* @calloc(i64 %16, i64 104) #6, !dbg !739
  %18 = getelementptr inbounds i8* %1, i64 8, !dbg !740
  %19 = bitcast i8* %18 to i8**, !dbg !741
  store i8* %17, i8** %19, align 8, !dbg !741, !tbaa !686
  %20 = icmp eq i8* %17, null, !dbg !742
  br i1 %20, label %21, label %25, !dbg !743

; <label>:21                                      ; preds = %15
  tail call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !744
  br label %25, !dbg !744

; <label>:22                                      ; preds = %5
  %23 = getelementptr inbounds i8* %1, i64 8, !dbg !745
  %24 = bitcast i8* %23 to %struct.EncodingEnvironment**, !dbg !745
  store %struct.EncodingEnvironment* null, %struct.EncodingEnvironment** %24, align 8, !dbg !747, !tbaa !686
  br label %25

; <label>:25                                      ; preds = %15, %21, %22
  %26 = zext i32 %10 to i64, !dbg !748
  %27 = tail call i8* @calloc(i64 %26, i64 48) #6, !dbg !750
  %28 = getelementptr inbounds i8* %1, i64 16, !dbg !751
  %29 = bitcast i8* %28 to i8**, !dbg !752
  store i8* %27, i8** %29, align 8, !dbg !752, !tbaa !699
  %30 = icmp eq i8* %27, null, !dbg !753
  br i1 %30, label %31, label %32, !dbg !754

; <label>:31                                      ; preds = %25
  tail call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !755
  br label %32, !dbg !755

; <label>:32                                      ; preds = %31, %25
  %33 = load %struct.InputParameters** @input, align 8, !dbg !756, !tbaa !722
  %34 = getelementptr inbounds %struct.InputParameters* %33, i64 0, i32 59, !dbg !757
  %35 = load i32* %34, align 4, !dbg !757, !tbaa !733
  %36 = getelementptr inbounds i8* %1, i64 24, !dbg !758
  %37 = bitcast i8* %36 to i32*, !dbg !758
  store i32 %35, i32* %37, align 4, !dbg !759, !tbaa !760
  %38 = icmp eq i32 %35, 1, !dbg !761
  br i1 %38, label %39, label %46, !dbg !763

; <label>:39                                      ; preds = %32
  %40 = tail call %struct.MotionInfoContexts* @create_contexts_MotionInfo() #6, !dbg !764
  %41 = getelementptr inbounds i8* %1, i64 32, !dbg !766
  %42 = bitcast i8* %41 to %struct.MotionInfoContexts**, !dbg !766
  store %struct.MotionInfoContexts* %40, %struct.MotionInfoContexts** %42, align 8, !dbg !767, !tbaa !705
  %43 = tail call %struct.TextureInfoContexts* @create_contexts_TextureInfo() #6, !dbg !768
  %44 = getelementptr inbounds i8* %1, i64 40, !dbg !769
  %45 = bitcast i8* %44 to %struct.TextureInfoContexts**, !dbg !769
  store %struct.TextureInfoContexts* %43, %struct.TextureInfoContexts** %45, align 8, !dbg !770, !tbaa !708
  br label %48, !dbg !771

; <label>:46                                      ; preds = %32
  %47 = getelementptr inbounds i8* %1, i64 32, !dbg !772
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 16, i32 8, i1 false), !dbg !774
  br label %48

; <label>:48                                      ; preds = %46, %39
  ret %struct.CSobj* %2, !dbg !775
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: optsize
declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #2

; Function Attrs: optsize
declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #2

; Function Attrs: nounwind optsize ssp uwtable
define void @store_coding_state(%struct.CSobj* %cs) #0 {
  tail call void @llvm.dbg.value(metadata %struct.CSobj* %cs, i64 0, metadata !170, metadata !678), !dbg !776
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !777, !tbaa !722
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !778
  %3 = load %struct.Slice** %2, align 8, !dbg !778, !tbaa !779
  %4 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 7, !dbg !782
  %5 = bitcast %struct.MotionInfoContexts** %4 to i8**, !dbg !782
  %6 = load i8** %5, align 8, !dbg !782, !tbaa !783
  %7 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 8, !dbg !785
  %8 = bitcast %struct.TextureInfoContexts** %7 to i8**, !dbg !785
  %9 = load i8** %8, align 8, !dbg !785, !tbaa !786
  %10 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 4, !dbg !787
  %11 = bitcast %struct.MotionInfoContexts** %10 to i8**, !dbg !787
  %12 = load i8** %11, align 8, !dbg !787, !tbaa !705
  %13 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 5, !dbg !788
  %14 = bitcast %struct.TextureInfoContexts** %13 to i8**, !dbg !788
  %15 = load i8** %14, align 8, !dbg !788, !tbaa !708
  %16 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !789
  %17 = load i32* %16, align 4, !dbg !789, !tbaa !790
  %18 = sext i32 %17 to i64, !dbg !791
  %19 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !792
  %20 = load %struct.macroblock** %19, align 8, !dbg !792, !tbaa !793
  %21 = load %struct.InputParameters** @input, align 8, !dbg !794, !tbaa !722
  %22 = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 85, !dbg !796
  %23 = load i32* %22, align 4, !dbg !796, !tbaa !797
  %24 = icmp eq i32 %23, 0, !dbg !794
  br i1 %24, label %115, label %25, !dbg !798

; <label>:25                                      ; preds = %0
  %26 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 3, !dbg !799
  %27 = load i32* %26, align 4, !dbg !799, !tbaa !760
  %28 = icmp eq i32 %27, 1, !dbg !801
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !171, metadata !678), !dbg !802
  %29 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 0, !dbg !803
  br i1 %28, label %.preheader, label %.preheader1, !dbg !807

.preheader1:                                      ; preds = %25
  %30 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2, !dbg !808
  br label %71, !dbg !813

.preheader:                                       ; preds = %25
  %31 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 1, !dbg !814
  %32 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2, !dbg !816
  br label %33, !dbg !817

; <label>:33                                      ; preds = %.preheader, %46
  %34 = phi %struct.ImageParameters* [ %1, %.preheader ], [ %.pre4, %46 ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %46 ]
  %35 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 49, !dbg !818
  %36 = load %struct.Picture** %35, align 8, !dbg !818, !tbaa !819
  %37 = getelementptr inbounds %struct.Picture* %36, i64 0, i32 1, !dbg !820
  %38 = load i32* %37, align 4, !dbg !820, !tbaa !821
  %39 = icmp eq i32 %38, 0, !dbg !817
  br i1 %39, label %40, label %42, !dbg !817

; <label>:40                                      ; preds = %33
  %41 = load i32* %29, align 4, !dbg !803, !tbaa !730
  br label %42, !dbg !817

; <label>:42                                      ; preds = %33, %40
  %43 = phi i32 [ %41, %40 ], [ 1, %33 ], !dbg !817
  %44 = sext i32 %43 to i64, !dbg !823
  %45 = icmp slt i64 %indvars.iv, %44, !dbg !823
  br i1 %45, label %46, label %66, !dbg !824

; <label>:46                                      ; preds = %42
  %47 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 50, !dbg !825
  %48 = load %struct.Slice** %47, align 8, !dbg !825, !tbaa !779
  %49 = getelementptr inbounds %struct.Slice* %48, i64 0, i32 6, !dbg !826
  %50 = load %struct.datapartition** %49, align 8, !dbg !826, !tbaa !827
  %51 = getelementptr inbounds %struct.datapartition* %50, i64 %indvars.iv, i32 1, !dbg !828
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %51, i64 0, metadata !172, metadata !678), !dbg !829
  %52 = getelementptr inbounds %struct.datapartition* %50, i64 %indvars.iv, i32 0, !dbg !830
  %53 = bitcast %struct.Bitstream** %52 to i8**, !dbg !830
  %54 = load i8** %53, align 8, !dbg !830, !tbaa !831
  %55 = load %struct.EncodingEnvironment** %31, align 8, !dbg !814, !tbaa !686
  %56 = getelementptr inbounds %struct.EncodingEnvironment* %55, i64 %indvars.iv, !dbg !834
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %56, i64 0, metadata !173, metadata !678), !dbg !835
  %57 = load %struct.Bitstream** %32, align 8, !dbg !816, !tbaa !699
  %58 = getelementptr inbounds %struct.Bitstream* %57, i64 %indvars.iv, !dbg !836
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %58, i64 0, metadata !175, metadata !678), !dbg !837
  %59 = bitcast %struct.EncodingEnvironment* %56 to i8*, !dbg !838
  %60 = bitcast %struct.EncodingEnvironment* %51 to i8*, !dbg !838
  %61 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %59, i1 false), !dbg !838
  %62 = tail call i8* @__memcpy_chk(i8* %59, i8* %60, i64 104, i64 %61) #6, !dbg !838
  %63 = bitcast %struct.Bitstream* %58 to i8*, !dbg !839
  %64 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %63, i1 false), !dbg !839
  %65 = tail call i8* @__memcpy_chk(i8* %63, i8* %54, i64 48, i64 %64) #6, !dbg !839
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !840
  %.pre4 = load %struct.ImageParameters** @img, align 8, !dbg !817, !tbaa !722
  br label %33, !dbg !840

; <label>:66                                      ; preds = %42
  %67 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %12, i1 false), !dbg !841
  %68 = tail call i8* @__memcpy_chk(i8* %12, i8* %6, i64 1504, i64 %67) #6, !dbg !841
  %69 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %15, i1 false), !dbg !842
  %70 = tail call i8* @__memcpy_chk(i8* %15, i8* %9, i64 12128, i64 %69) #6, !dbg !842
  br label %.loopexit, !dbg !843

; <label>:71                                      ; preds = %.preheader1, %84
  %72 = phi %struct.ImageParameters* [ %1, %.preheader1 ], [ %.pre, %84 ]
  %indvars.iv2 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next3, %84 ]
  %73 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 49, !dbg !844
  %74 = load %struct.Picture** %73, align 8, !dbg !844, !tbaa !819
  %75 = getelementptr inbounds %struct.Picture* %74, i64 0, i32 1, !dbg !845
  %76 = load i32* %75, align 4, !dbg !845, !tbaa !821
  %77 = icmp eq i32 %76, 0, !dbg !813
  br i1 %77, label %78, label %80, !dbg !813

; <label>:78                                      ; preds = %71
  %79 = load i32* %29, align 4, !dbg !846, !tbaa !730
  br label %80, !dbg !813

; <label>:80                                      ; preds = %71, %78
  %81 = phi i32 [ %79, %78 ], [ 1, %71 ], !dbg !813
  %82 = sext i32 %81 to i64, !dbg !847
  %83 = icmp slt i64 %indvars.iv2, %82, !dbg !847
  br i1 %83, label %84, label %.loopexit, !dbg !848

; <label>:84                                      ; preds = %80
  %85 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 50, !dbg !849
  %86 = load %struct.Slice** %85, align 8, !dbg !849, !tbaa !779
  %87 = getelementptr inbounds %struct.Slice* %86, i64 0, i32 6, !dbg !850
  %88 = load %struct.datapartition** %87, align 8, !dbg !850, !tbaa !827
  %89 = getelementptr inbounds %struct.datapartition* %88, i64 %indvars.iv2, i32 0, !dbg !851
  %90 = bitcast %struct.Bitstream** %89 to i8**, !dbg !851
  %91 = load i8** %90, align 8, !dbg !851, !tbaa !831
  %92 = load %struct.Bitstream** %30, align 8, !dbg !808, !tbaa !699
  %93 = getelementptr inbounds %struct.Bitstream* %92, i64 %indvars.iv2, !dbg !852
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %93, i64 0, metadata !175, metadata !678), !dbg !837
  %94 = bitcast %struct.Bitstream* %93 to i8*, !dbg !853
  %95 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %94, i1 false), !dbg !853
  %96 = tail call i8* @__memcpy_chk(i8* %94, i8* %91, i64 48, i64 %95) #6, !dbg !853
  %indvars.iv.next3 = add nuw i64 %indvars.iv2, 1, !dbg !854
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !813, !tbaa !722
  br label %71, !dbg !854

.loopexit:                                        ; preds = %80, %66
  %97 = getelementptr inbounds %struct.macroblock* %20, i64 %18, i32 0, !dbg !855
  %98 = load i32* %97, align 4, !dbg !855, !tbaa !856
  %99 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 6, !dbg !859
  store i32 %98, i32* %99, align 4, !dbg !860, !tbaa !861
  %100 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 7, i64 0, !dbg !862
  %101 = bitcast i32* %100 to i8*, !dbg !862
  %102 = getelementptr inbounds %struct.macroblock* %20, i64 %18, i32 5, i64 0, !dbg !862
  %103 = bitcast i32* %102 to i8*, !dbg !862
  %104 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %101, i1 false), !dbg !862
  %105 = tail call i8* @__memcpy_chk(i8* %101, i8* %103, i64 32, i64 %104) #6, !dbg !862
  %106 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 8, i64 0, !dbg !863
  %107 = bitcast [4 x [4 x [2 x i32]]]* %106 to i8*, !dbg !863
  %108 = getelementptr inbounds %struct.macroblock* %20, i64 %18, i32 9, i64 0, !dbg !863
  %109 = bitcast [4 x [4 x [2 x i32]]]* %108 to i8*, !dbg !863
  %110 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %107, i1 false), !dbg !863
  %111 = tail call i8* @__memcpy_chk(i8* %107, i8* %109, i64 256, i64 %110) #6, !dbg !863
  %112 = getelementptr inbounds %struct.macroblock* %20, i64 %18, i32 16, !dbg !864
  %113 = load i64* %112, align 8, !dbg !864, !tbaa !865
  %114 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 9, !dbg !866
  store i64 %113, i64* %114, align 8, !dbg !867, !tbaa !868
  br label %115, !dbg !869

; <label>:115                                     ; preds = %0, %.loopexit
  ret void, !dbg !869
}

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @reset_coding_state(%struct.CSobj* %cs) #0 {
  tail call void @llvm.dbg.value(metadata %struct.CSobj* %cs, i64 0, metadata !242, metadata !678), !dbg !870
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !871, !tbaa !722
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !872
  %3 = load %struct.Slice** %2, align 8, !dbg !872, !tbaa !779
  %4 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 7, !dbg !873
  %5 = bitcast %struct.MotionInfoContexts** %4 to i8**, !dbg !873
  %6 = load i8** %5, align 8, !dbg !873, !tbaa !783
  %7 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 8, !dbg !874
  %8 = bitcast %struct.TextureInfoContexts** %7 to i8**, !dbg !874
  %9 = load i8** %8, align 8, !dbg !874, !tbaa !786
  %10 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 4, !dbg !875
  %11 = bitcast %struct.MotionInfoContexts** %10 to i8**, !dbg !875
  %12 = load i8** %11, align 8, !dbg !875, !tbaa !705
  %13 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 5, !dbg !876
  %14 = bitcast %struct.TextureInfoContexts** %13 to i8**, !dbg !876
  %15 = load i8** %14, align 8, !dbg !876, !tbaa !708
  %16 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !877
  %17 = load i32* %16, align 4, !dbg !877, !tbaa !790
  %18 = sext i32 %17 to i64, !dbg !878
  %19 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !879
  %20 = load %struct.macroblock** %19, align 8, !dbg !879, !tbaa !793
  %21 = load %struct.InputParameters** @input, align 8, !dbg !880, !tbaa !722
  %22 = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 85, !dbg !882
  %23 = load i32* %22, align 4, !dbg !882, !tbaa !797
  %24 = icmp eq i32 %23, 0, !dbg !880
  br i1 %24, label %115, label %25, !dbg !883

; <label>:25                                      ; preds = %0
  %26 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 3, !dbg !884
  %27 = load i32* %26, align 4, !dbg !884, !tbaa !760
  %28 = icmp eq i32 %27, 1, !dbg !886
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !243, metadata !678), !dbg !887
  %29 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 0, !dbg !888
  br i1 %28, label %.preheader, label %.preheader1, !dbg !892

.preheader1:                                      ; preds = %25
  %30 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2, !dbg !893
  br label %71, !dbg !898

.preheader:                                       ; preds = %25
  %31 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 1, !dbg !899
  %32 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2, !dbg !901
  br label %33, !dbg !902

; <label>:33                                      ; preds = %.preheader, %46
  %34 = phi %struct.ImageParameters* [ %1, %.preheader ], [ %.pre4, %46 ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %46 ]
  %35 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 49, !dbg !903
  %36 = load %struct.Picture** %35, align 8, !dbg !903, !tbaa !819
  %37 = getelementptr inbounds %struct.Picture* %36, i64 0, i32 1, !dbg !904
  %38 = load i32* %37, align 4, !dbg !904, !tbaa !821
  %39 = icmp eq i32 %38, 0, !dbg !902
  br i1 %39, label %40, label %42, !dbg !902

; <label>:40                                      ; preds = %33
  %41 = load i32* %29, align 4, !dbg !888, !tbaa !730
  br label %42, !dbg !902

; <label>:42                                      ; preds = %33, %40
  %43 = phi i32 [ %41, %40 ], [ 1, %33 ], !dbg !902
  %44 = sext i32 %43 to i64, !dbg !905
  %45 = icmp slt i64 %indvars.iv, %44, !dbg !905
  br i1 %45, label %46, label %66, !dbg !906

; <label>:46                                      ; preds = %42
  %47 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 50, !dbg !907
  %48 = load %struct.Slice** %47, align 8, !dbg !907, !tbaa !779
  %49 = getelementptr inbounds %struct.Slice* %48, i64 0, i32 6, !dbg !908
  %50 = load %struct.datapartition** %49, align 8, !dbg !908, !tbaa !827
  %51 = getelementptr inbounds %struct.datapartition* %50, i64 %indvars.iv, i32 1, !dbg !909
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %51, i64 0, metadata !245, metadata !678), !dbg !910
  %52 = getelementptr inbounds %struct.datapartition* %50, i64 %indvars.iv, i32 0, !dbg !911
  %53 = bitcast %struct.Bitstream** %52 to i8**, !dbg !911
  %54 = load i8** %53, align 8, !dbg !911, !tbaa !831
  %55 = load %struct.EncodingEnvironment** %31, align 8, !dbg !899, !tbaa !686
  %56 = getelementptr inbounds %struct.EncodingEnvironment* %55, i64 %indvars.iv, !dbg !912
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %56, i64 0, metadata !244, metadata !678), !dbg !913
  %57 = load %struct.Bitstream** %32, align 8, !dbg !901, !tbaa !699
  %58 = getelementptr inbounds %struct.Bitstream* %57, i64 %indvars.iv, !dbg !914
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %58, i64 0, metadata !246, metadata !678), !dbg !915
  %59 = bitcast %struct.EncodingEnvironment* %51 to i8*, !dbg !916
  %60 = bitcast %struct.EncodingEnvironment* %56 to i8*, !dbg !916
  %61 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %59, i1 false), !dbg !916
  %62 = tail call i8* @__memcpy_chk(i8* %59, i8* %60, i64 104, i64 %61) #6, !dbg !916
  %63 = bitcast %struct.Bitstream* %58 to i8*, !dbg !917
  %64 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %54, i1 false), !dbg !917
  %65 = tail call i8* @__memcpy_chk(i8* %54, i8* %63, i64 48, i64 %64) #6, !dbg !917
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !918
  %.pre4 = load %struct.ImageParameters** @img, align 8, !dbg !902, !tbaa !722
  br label %33, !dbg !918

; <label>:66                                      ; preds = %42
  %67 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %6, i1 false), !dbg !919
  %68 = tail call i8* @__memcpy_chk(i8* %6, i8* %12, i64 1504, i64 %67) #6, !dbg !919
  %69 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %9, i1 false), !dbg !920
  %70 = tail call i8* @__memcpy_chk(i8* %9, i8* %15, i64 12128, i64 %69) #6, !dbg !920
  br label %.loopexit, !dbg !921

; <label>:71                                      ; preds = %.preheader1, %84
  %72 = phi %struct.ImageParameters* [ %1, %.preheader1 ], [ %.pre, %84 ]
  %indvars.iv2 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next3, %84 ]
  %73 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 49, !dbg !922
  %74 = load %struct.Picture** %73, align 8, !dbg !922, !tbaa !819
  %75 = getelementptr inbounds %struct.Picture* %74, i64 0, i32 1, !dbg !923
  %76 = load i32* %75, align 4, !dbg !923, !tbaa !821
  %77 = icmp eq i32 %76, 0, !dbg !898
  br i1 %77, label %78, label %80, !dbg !898

; <label>:78                                      ; preds = %71
  %79 = load i32* %29, align 4, !dbg !924, !tbaa !730
  br label %80, !dbg !898

; <label>:80                                      ; preds = %71, %78
  %81 = phi i32 [ %79, %78 ], [ 1, %71 ], !dbg !898
  %82 = sext i32 %81 to i64, !dbg !925
  %83 = icmp slt i64 %indvars.iv2, %82, !dbg !925
  br i1 %83, label %84, label %.loopexit, !dbg !926

; <label>:84                                      ; preds = %80
  %85 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 50, !dbg !927
  %86 = load %struct.Slice** %85, align 8, !dbg !927, !tbaa !779
  %87 = getelementptr inbounds %struct.Slice* %86, i64 0, i32 6, !dbg !928
  %88 = load %struct.datapartition** %87, align 8, !dbg !928, !tbaa !827
  %89 = getelementptr inbounds %struct.datapartition* %88, i64 %indvars.iv2, i32 0, !dbg !929
  %90 = bitcast %struct.Bitstream** %89 to i8**, !dbg !929
  %91 = load i8** %90, align 8, !dbg !929, !tbaa !831
  %92 = load %struct.Bitstream** %30, align 8, !dbg !893, !tbaa !699
  %93 = getelementptr inbounds %struct.Bitstream* %92, i64 %indvars.iv2, !dbg !930
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %93, i64 0, metadata !246, metadata !678), !dbg !915
  %94 = bitcast %struct.Bitstream* %93 to i8*, !dbg !931
  %95 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %91, i1 false), !dbg !931
  %96 = tail call i8* @__memcpy_chk(i8* %91, i8* %94, i64 48, i64 %95) #6, !dbg !931
  %indvars.iv.next3 = add nuw i64 %indvars.iv2, 1, !dbg !932
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !898, !tbaa !722
  br label %71, !dbg !932

.loopexit:                                        ; preds = %80, %66
  %97 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 6, !dbg !933
  %98 = load i32* %97, align 4, !dbg !933, !tbaa !861
  %99 = getelementptr inbounds %struct.macroblock* %20, i64 %18, i32 0, !dbg !934
  store i32 %98, i32* %99, align 4, !dbg !935, !tbaa !856
  %100 = getelementptr inbounds %struct.macroblock* %20, i64 %18, i32 5, i64 0, !dbg !936
  %101 = bitcast i32* %100 to i8*, !dbg !936
  %102 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 7, i64 0, !dbg !936
  %103 = bitcast i32* %102 to i8*, !dbg !936
  %104 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %101, i1 false), !dbg !936
  %105 = tail call i8* @__memcpy_chk(i8* %101, i8* %103, i64 32, i64 %104) #6, !dbg !936
  %106 = getelementptr inbounds %struct.macroblock* %20, i64 %18, i32 9, i64 0, !dbg !937
  %107 = bitcast [4 x [4 x [2 x i32]]]* %106 to i8*, !dbg !937
  %108 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 8, i64 0, !dbg !937
  %109 = bitcast [4 x [4 x [2 x i32]]]* %108 to i8*, !dbg !937
  %110 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %107, i1 false), !dbg !937
  %111 = tail call i8* @__memcpy_chk(i8* %107, i8* %109, i64 256, i64 %110) #6, !dbg !937
  %112 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 9, !dbg !938
  %113 = load i64* %112, align 8, !dbg !938, !tbaa !868
  %114 = getelementptr inbounds %struct.macroblock* %20, i64 %18, i32 16, !dbg !939
  store i64 %113, i64* %114, align 8, !dbg !940, !tbaa !865
  br label %115, !dbg !941

; <label>:115                                     ; preds = %0, %.loopexit
  ret void, !dbg !941
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!674, !675, !676}
!llvm.ident = !{!677}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !24, subprograms: !157, globals: !253, imports: !673)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !8, !19}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 178, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "UVLC", value: 0)
!7 = !DIEnumerator(name: "CABAC", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 154, size: 32, align: 32, elements: !9)
!9 = !{!10, !11, !12, !13, !14, !15, !16, !17, !18}
!10 = !DIEnumerator(name: "BITS_HEADER", value: 0)
!11 = !DIEnumerator(name: "BITS_TOTAL_MB", value: 1)
!12 = !DIEnumerator(name: "BITS_MB_MODE", value: 2)
!13 = !DIEnumerator(name: "BITS_INTER_MB", value: 3)
!14 = !DIEnumerator(name: "BITS_CBP_MB", value: 4)
!15 = !DIEnumerator(name: "BITS_COEFF_Y_MB", value: 5)
!16 = !DIEnumerator(name: "BITS_COEFF_UV_MB", value: 6)
!17 = !DIEnumerator(name: "BITS_DELTA_QUANT_MB", value: 7)
!18 = !DIEnumerator(name: "MAX_BITCOUNTER_MB", value: 8)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 42, size: 32, align: 32, elements: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FALSE", value: 0)
!23 = !DIEnumerator(name: "TRUE", value: 1)
!24 = !{!25, !26, !35, !66}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "CSptr", file: !27, line: 42, baseType: !28)
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "CSobj", file: !27, line: 41, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 22, size: 2816, align: 64, elements: !31)
!31 = !{!32, !34, !65, !81, !82, !121, !148, !149, !153, !156}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "no_part", scope: !30, file: !27, line: 25, baseType: !33, size: 32, align: 32)
!33 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "encenv", scope: !30, file: !27, line: 26, baseType: !35, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !4, line: 226, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 207, size: 832, align: 64, elements: !38)
!38 = !{!39, !41, !42, !43, !44, !45, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !37, file: !4, line: 209, baseType: !40, size: 32, align: 32)
!40 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !37, file: !4, line: 209, baseType: !40, size: 32, align: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !37, file: !4, line: 210, baseType: !40, size: 32, align: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !37, file: !4, line: 211, baseType: !40, size: 32, align: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !37, file: !4, line: 212, baseType: !40, size: 32, align: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !37, file: !4, line: 213, baseType: !46, size: 64, align: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !48, line: 30, baseType: !49)
!48 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !37, file: !4, line: 214, baseType: !51, size: 64, align: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !37, file: !4, line: 217, baseType: !40, size: 32, align: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !37, file: !4, line: 217, baseType: !40, size: 32, align: 32, offset: 352)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !37, file: !4, line: 218, baseType: !40, size: 32, align: 32, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !37, file: !4, line: 219, baseType: !40, size: 32, align: 32, offset: 416)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !37, file: !4, line: 220, baseType: !40, size: 32, align: 32, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !37, file: !4, line: 221, baseType: !46, size: 64, align: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !37, file: !4, line: 222, baseType: !51, size: 64, align: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !37, file: !4, line: 223, baseType: !33, size: 32, align: 32, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !37, file: !4, line: 223, baseType: !33, size: 32, align: 32, offset: 672)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !37, file: !4, line: 224, baseType: !33, size: 32, align: 32, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !37, file: !4, line: 224, baseType: !33, size: 32, align: 32, offset: 736)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !37, file: !4, line: 225, baseType: !33, size: 32, align: 32, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !37, file: !4, line: 225, baseType: !33, size: 32, align: 32, offset: 800)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !30, file: !27, line: 27, baseType: !66, size: 64, align: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !4, line: 427, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 411, size: 384, align: 64, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !68, file: !4, line: 413, baseType: !33, size: 32, align: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !68, file: !4, line: 414, baseType: !33, size: 32, align: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !68, file: !4, line: 415, baseType: !47, size: 8, align: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !68, file: !4, line: 416, baseType: !33, size: 32, align: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !68, file: !4, line: 417, baseType: !33, size: 32, align: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !68, file: !4, line: 418, baseType: !47, size: 8, align: 8, offset: 160)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !68, file: !4, line: 420, baseType: !47, size: 8, align: 8, offset: 168)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !68, file: !4, line: 421, baseType: !33, size: 32, align: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !68, file: !4, line: 422, baseType: !33, size: 32, align: 32, offset: 224)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !68, file: !4, line: 424, baseType: !46, size: 64, align: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !68, file: !4, line: 425, baseType: !33, size: 32, align: 32, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_mode", scope: !30, file: !27, line: 30, baseType: !33, size: 32, align: 32, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !30, file: !27, line: 31, baseType: !83, size: 64, align: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !4, line: 268, baseType: !85)
!85 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 258, size: 12032, align: 64, elements: !86)
!86 = !{!87, !100, !105, !109, !113, !117, !118}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !85, file: !4, line: 260, baseType: !88, size: 4224, align: 64)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 4224, align: 64, elements: !97)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !4, line: 238, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 231, size: 128, align: 64, elements: !91)
!91 = !{!92, !94, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !90, file: !4, line: 233, baseType: !93, size: 16, align: 16)
!93 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !90, file: !4, line: 234, baseType: !49, size: 8, align: 8, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !90, file: !4, line: 236, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !{!98, !99}
!98 = !DISubrange(count: 3)
!99 = !DISubrange(count: 11)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !85, file: !4, line: 261, baseType: !101, size: 2304, align: 64, offset: 4224)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2304, align: 64, elements: !102)
!102 = !{!103, !104}
!103 = !DISubrange(count: 2)
!104 = !DISubrange(count: 9)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !85, file: !4, line: 262, baseType: !106, size: 2560, align: 64, offset: 6528)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2560, align: 64, elements: !107)
!107 = !{!103, !108}
!108 = !DISubrange(count: 10)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !85, file: !4, line: 263, baseType: !110, size: 1536, align: 64, offset: 9088)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 1536, align: 64, elements: !111)
!111 = !{!103, !112}
!112 = !DISubrange(count: 6)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !85, file: !4, line: 264, baseType: !114, size: 512, align: 64, offset: 10624)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 512, align: 64, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !85, file: !4, line: 265, baseType: !114, size: 512, align: 64, offset: 11136)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !85, file: !4, line: 266, baseType: !119, size: 384, align: 64, offset: 11648)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 384, align: 64, elements: !120)
!120 = !{!98}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !30, file: !27, line: 32, baseType: !122, size: 64, align: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !4, line: 293, baseType: !124)
!124 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 281, size: 97024, align: 64, elements: !125)
!125 = !{!126, !129, !130, !133, !136, !140, !141, !145, !146, !147}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !124, file: !4, line: 283, baseType: !127, size: 256, align: 64)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, align: 64, elements: !128)
!128 = !{!103}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !124, file: !4, line: 284, baseType: !114, size: 512, align: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !124, file: !4, line: 285, baseType: !131, size: 1536, align: 64, offset: 768)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 1536, align: 64, elements: !132)
!132 = !{!98, !116}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !124, file: !4, line: 286, baseType: !134, size: 5120, align: 64, offset: 2304)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 5120, align: 64, elements: !135)
!135 = !{!108, !116}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !124, file: !4, line: 287, baseType: !137, size: 19200, align: 64, offset: 7424)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 19200, align: 64, elements: !138)
!138 = !{!108, !139}
!139 = !DISubrange(count: 15)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !124, file: !4, line: 288, baseType: !137, size: 19200, align: 64, offset: 26624)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !124, file: !4, line: 289, baseType: !142, size: 6400, align: 64, offset: 45824)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 6400, align: 64, elements: !143)
!143 = !{!108, !144}
!144 = !DISubrange(count: 5)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !124, file: !4, line: 290, baseType: !142, size: 6400, align: 64, offset: 52224)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !124, file: !4, line: 291, baseType: !137, size: 19200, align: 64, offset: 58624)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !124, file: !4, line: 292, baseType: !137, size: 19200, align: 64, offset: 77824)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "currSEnr", scope: !30, file: !27, line: 35, baseType: !33, size: 32, align: 32, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "bitcounter", scope: !30, file: !27, line: 36, baseType: !150, size: 256, align: 32, offset: 416)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, align: 32, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !30, file: !27, line: 39, baseType: !154, size: 2048, align: 32, offset: 672)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, align: 32, elements: !155)
!155 = !{!103, !116, !116, !103}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !30, file: !27, line: 40, baseType: !96, size: 64, align: 64, offset: 2752)
!157 = !{!158, !163, !168, !240}
!158 = !DISubprogram(name: "delete_coding_state", scope: !1, file: !1, line: 34, type: !159, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CSobj*)* @delete_coding_state, variables: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !26}
!161 = !{!162}
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cs", arg: 1, scope: !158, file: !1, line: 34, type: !26)
!163 = !DISubprogram(name: "create_coding_state", scope: !1, file: !1, line: 60, type: !164, isLocal: false, isDefinition: true, scopeLine: 61, isOptimized: true, function: %struct.CSobj* ()* @create_coding_state, variables: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{!26}
!166 = !{!167}
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cs", scope: !163, file: !1, line: 62, type: !26)
!168 = !DISubprogram(name: "store_coding_state", scope: !1, file: !1, line: 106, type: !159, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CSobj*)* @store_coding_state, variables: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cs", arg: 1, scope: !168, file: !1, line: 106, type: !26)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !168, file: !1, line: 108, type: !33)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ee_src", scope: !168, file: !1, line: 110, type: !35)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ee_dest", scope: !168, file: !1, line: 110, type: !35)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bs_src", scope: !168, file: !1, line: 111, type: !66)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bs_dest", scope: !168, file: !1, line: 111, type: !66)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mc_src", scope: !168, file: !1, line: 113, type: !83)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tc_src", scope: !168, file: !1, line: 114, type: !122)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mc_dest", scope: !168, file: !1, line: 115, type: !83)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tc_dest", scope: !168, file: !1, line: 116, type: !122)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !168, file: !1, line: 117, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !4, line: 406, baseType: !183)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !4, line: 351, size: 5056, align: 64, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !193, !194, !195, !196, !200, !201, !202, !207, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "currSEnr", scope: !183, file: !4, line: 353, baseType: !33, size: 32, align: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !183, file: !4, line: 354, baseType: !33, size: 32, align: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp", scope: !183, file: !4, line: 355, baseType: !33, size: 32, align: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !183, file: !4, line: 356, baseType: !33, size: 32, align: 32, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "qpsp", scope: !183, file: !4, line: 357, baseType: !33, size: 32, align: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bitcounter", scope: !183, file: !4, line: 358, baseType: !150, size: 256, align: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mb_available_up", scope: !183, file: !4, line: 360, baseType: !192, size: 64, align: 64, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "mb_available_left", scope: !183, file: !4, line: 361, baseType: !192, size: 64, align: 64, offset: 512)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !183, file: !4, line: 363, baseType: !33, size: 32, align: 32, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !183, file: !4, line: 364, baseType: !154, size: 2048, align: 32, offset: 608)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !183, file: !4, line: 365, baseType: !197, size: 512, align: 32, offset: 2656)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 512, align: 32, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes8x8", scope: !183, file: !4, line: 366, baseType: !197, size: 512, align: 32, offset: 3168)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !183, file: !4, line: 367, baseType: !33, size: 32, align: 32, offset: 3680)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !183, file: !4, line: 368, baseType: !203, size: 64, align: 64, offset: 3712)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !4, line: 62, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !205, line: 30, baseType: !206)
!205 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!206 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !183, file: !4, line: 369, baseType: !208, size: 128, align: 32, offset: 3776)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, align: 32, elements: !115)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !183, file: !4, line: 370, baseType: !208, size: 128, align: 32, offset: 3904)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !183, file: !4, line: 371, baseType: !96, size: 64, align: 64, offset: 4032)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "lf_disable", scope: !183, file: !4, line: 373, baseType: !33, size: 32, align: 32, offset: 4096)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "lf_alpha_c0_offset", scope: !183, file: !4, line: 374, baseType: !33, size: 32, align: 32, offset: 4128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lf_beta_offset", scope: !183, file: !4, line: 375, baseType: !33, size: 32, align: 32, offset: 4160)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !183, file: !4, line: 377, baseType: !33, size: 32, align: 32, offset: 4192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "IntraChromaPredModeFlag", scope: !183, file: !4, line: 378, baseType: !33, size: 32, align: 32, offset: 4224)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !183, file: !4, line: 380, baseType: !33, size: 32, align: 32, offset: 4256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !183, file: !4, line: 382, baseType: !33, size: 32, align: 32, offset: 4288)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !183, file: !4, line: 382, baseType: !33, size: 32, align: 32, offset: 4320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !183, file: !4, line: 382, baseType: !33, size: 32, align: 32, offset: 4352)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !183, file: !4, line: 382, baseType: !33, size: 32, align: 32, offset: 4384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !183, file: !4, line: 383, baseType: !33, size: 32, align: 32, offset: 4416)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !183, file: !4, line: 383, baseType: !33, size: 32, align: 32, offset: 4448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !183, file: !4, line: 383, baseType: !33, size: 32, align: 32, offset: 4480)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !183, file: !4, line: 383, baseType: !33, size: 32, align: 32, offset: 4512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "all_blk_8x8", scope: !183, file: !4, line: 385, baseType: !33, size: 32, align: 32, offset: 4544)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !183, file: !4, line: 386, baseType: !33, size: 32, align: 32, offset: 4576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !183, file: !4, line: 387, baseType: !33, size: 32, align: 32, offset: 4608)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !183, file: !4, line: 390, baseType: !33, size: 32, align: 32, offset: 4640)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "actj", scope: !183, file: !4, line: 394, baseType: !230, size: 64, align: 64, offset: 4672)
!230 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !183, file: !4, line: 395, baseType: !33, size: 32, align: 32, offset: 4736)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !183, file: !4, line: 396, baseType: !33, size: 32, align: 32, offset: 4768)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cbp", scope: !183, file: !4, line: 397, baseType: !33, size: 32, align: 32, offset: 4800)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "predict_qp", scope: !183, file: !4, line: 398, baseType: !33, size: 32, align: 32, offset: 4832)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "predict_error", scope: !183, file: !4, line: 399, baseType: !33, size: 32, align: 32, offset: 4864)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "LFDisableIdc", scope: !183, file: !4, line: 401, baseType: !33, size: 32, align: 32, offset: 4896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "LFAlphaC0Offset", scope: !183, file: !4, line: 402, baseType: !33, size: 32, align: 32, offset: 4928)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "LFBetaOffset", scope: !183, file: !4, line: 403, baseType: !33, size: 32, align: 32, offset: 4960)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !183, file: !4, line: 405, baseType: !33, size: 32, align: 32, offset: 4992)
!240 = !DISubprogram(name: "reset_coding_state", scope: !1, file: !1, line: 169, type: !159, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CSobj*)* @reset_coding_state, variables: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cs", arg: 1, scope: !240, file: !1, line: 169, type: !26)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !240, file: !1, line: 171, type: !33)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ee_src", scope: !240, file: !1, line: 173, type: !35)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ee_dest", scope: !240, file: !1, line: 173, type: !35)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bs_src", scope: !240, file: !1, line: 174, type: !66)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bs_dest", scope: !240, file: !1, line: 174, type: !66)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mc_dest", scope: !240, file: !1, line: 176, type: !83)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tc_dest", scope: !240, file: !1, line: 177, type: !122)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mc_src", scope: !240, file: !1, line: 178, type: !83)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tc_src", scope: !240, file: !1, line: 179, type: !122)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !240, file: !1, line: 180, type: !181)
!253 = !{!254, !341, !342, !343, !344, !345, !348, !350, !352, !353, !354, !355, !356, !392, !487, !488, !489, !491, !492, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !511, !512, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !528, !531, !532, !533, !534, !535, !536, !539, !542, !543, !544, !545, !548, !549, !560, !596, !597, !598, !599, !600, !657, !658, !659, !660, !661, !665, !666, !667, !668, !669, !670, !671, !672}
!254 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !4, line: 558, type: !255, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !4, line: 484, baseType: !257)
!257 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 475, size: 6592, align: 64, elements: !258)
!258 = !{!259, !260, !261, !336, !337, !339, !340}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !257, file: !4, line: 477, baseType: !33, size: 32, align: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !257, file: !4, line: 478, baseType: !33, size: 32, align: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !257, file: !4, line: 479, baseType: !262, size: 6400, align: 64, offset: 64)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 6400, align: 64, elements: !334)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !4, line: 471, baseType: !265)
!265 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 443, size: 1216, align: 64, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !307, !308, !309, !318, !319, !320, !321, !322, !323, !324, !325, !326, !331}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !265, file: !4, line: 445, baseType: !33, size: 32, align: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !265, file: !4, line: 446, baseType: !33, size: 32, align: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !265, file: !4, line: 447, baseType: !33, size: 32, align: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !265, file: !4, line: 448, baseType: !33, size: 32, align: 32, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !265, file: !4, line: 449, baseType: !33, size: 32, align: 32, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !265, file: !4, line: 450, baseType: !33, size: 32, align: 32, offset: 160)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !265, file: !4, line: 451, baseType: !274, size: 64, align: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !4, line: 440, baseType: !276)
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !4, line: 430, size: 960, align: 64, elements: !277)
!277 = !{!278, !279, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !276, file: !4, line: 433, baseType: !66, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !276, file: !4, line: 434, baseType: !36, size: 832, align: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !276, file: !4, line: 436, baseType: !281, size: 64, align: 64, offset: 896)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!33, !284, !306}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !4, line: 348, baseType: !286)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !4, line: 327, size: 384, align: 64, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !300}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !286, file: !4, line: 329, baseType: !33, size: 32, align: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !286, file: !4, line: 330, baseType: !33, size: 32, align: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !286, file: !4, line: 331, baseType: !33, size: 32, align: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !286, file: !4, line: 332, baseType: !33, size: 32, align: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !286, file: !4, line: 333, baseType: !33, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !286, file: !4, line: 334, baseType: !40, size: 32, align: 32, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !286, file: !4, line: 335, baseType: !33, size: 32, align: 32, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !286, file: !4, line: 336, baseType: !33, size: 32, align: 32, offset: 224)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !286, file: !4, line: 344, baseType: !297, size: 64, align: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !33, !33, !51, !51}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !286, file: !4, line: 346, baseType: !301, size: 64, align: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !304, !305}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !4, line: 228, baseType: !35)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !265, file: !4, line: 452, baseType: !83, size: 64, align: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !265, file: !4, line: 453, baseType: !122, size: 64, align: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !265, file: !4, line: 456, baseType: !310, size: 64, align: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !4, line: 313, baseType: !312)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !4, line: 308, size: 128, align: 64, elements: !313)
!313 = !{!314, !315, !316}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !312, file: !4, line: 310, baseType: !33, size: 32, align: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !312, file: !4, line: 311, baseType: !33, size: 32, align: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !312, file: !4, line: 312, baseType: !317, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !265, file: !4, line: 458, baseType: !33, size: 32, align: 32, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !265, file: !4, line: 459, baseType: !51, size: 64, align: 64, offset: 512)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !265, file: !4, line: 460, baseType: !51, size: 64, align: 64, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !265, file: !4, line: 461, baseType: !51, size: 64, align: 64, offset: 640)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !265, file: !4, line: 462, baseType: !33, size: 32, align: 32, offset: 704)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !265, file: !4, line: 463, baseType: !51, size: 64, align: 64, offset: 768)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !265, file: !4, line: 464, baseType: !51, size: 64, align: 64, offset: 832)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !265, file: !4, line: 465, baseType: !51, size: 64, align: 64, offset: 896)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !265, file: !4, line: 467, baseType: !327, size: 64, align: 64, offset: 960)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !33}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !20, line: 45, baseType: !19)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !265, file: !4, line: 469, baseType: !332, size: 192, align: 32, offset: 1024)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 192, align: 32, elements: !333)
!333 = !{!98, !103}
!334 = !{!335}
!335 = !DISubrange(count: 100)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !257, file: !4, line: 480, baseType: !33, size: 32, align: 32, offset: 6464)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !257, file: !4, line: 481, baseType: !338, size: 32, align: 32, offset: 6496)
!338 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !257, file: !4, line: 482, baseType: !338, size: 32, align: 32, offset: 6528)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !257, file: !4, line: 483, baseType: !338, size: 32, align: 32, offset: 6560)
!341 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !4, line: 559, type: !255, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!342 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !4, line: 560, type: !255, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!343 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !4, line: 561, type: !255, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!344 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !4, line: 562, type: !255, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!345 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !4, line: 565, type: !346, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!348 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !4, line: 566, type: !349, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!350 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !4, line: 567, type: !351, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!352 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !4, line: 569, type: !40, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!353 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !4, line: 570, type: !40, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!354 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !4, line: 572, type: !33, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!355 = !DIGlobalVariable(name: "me_time", scope: !0, file: !4, line: 572, type: !33, isLocal: false, isDefinition: true, variable: i32* @me_time)
!356 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !4, line: 573, type: !357, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !20, line: 145, baseType: !359)
!359 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 103, size: 1920, align: 64, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !359, file: !20, line: 105, baseType: !330, size: 32, align: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !359, file: !20, line: 106, baseType: !40, size: 32, align: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !359, file: !20, line: 107, baseType: !40, size: 32, align: 32, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !359, file: !20, line: 108, baseType: !330, size: 32, align: 32, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !359, file: !20, line: 110, baseType: !330, size: 32, align: 32, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !359, file: !20, line: 111, baseType: !330, size: 32, align: 32, offset: 160)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !359, file: !20, line: 112, baseType: !150, size: 256, align: 32, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !359, file: !20, line: 115, baseType: !330, size: 32, align: 32, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !359, file: !20, line: 116, baseType: !40, size: 32, align: 32, offset: 480)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !359, file: !20, line: 117, baseType: !40, size: 32, align: 32, offset: 512)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !359, file: !20, line: 119, baseType: !372, size: 256, align: 32, offset: 544)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, align: 32, elements: !151)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !359, file: !20, line: 121, baseType: !372, size: 256, align: 32, offset: 800)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !359, file: !20, line: 122, baseType: !372, size: 256, align: 32, offset: 1056)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !359, file: !20, line: 124, baseType: !330, size: 32, align: 32, offset: 1312)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !359, file: !20, line: 125, baseType: !40, size: 32, align: 32, offset: 1344)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !359, file: !20, line: 127, baseType: !40, size: 32, align: 32, offset: 1376)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !359, file: !20, line: 128, baseType: !46, size: 64, align: 64, offset: 1408)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !359, file: !20, line: 130, baseType: !33, size: 32, align: 32, offset: 1472)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !359, file: !20, line: 131, baseType: !33, size: 32, align: 32, offset: 1504)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !359, file: !20, line: 132, baseType: !330, size: 32, align: 32, offset: 1536)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !359, file: !20, line: 133, baseType: !40, size: 32, align: 32, offset: 1568)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !359, file: !20, line: 134, baseType: !33, size: 32, align: 32, offset: 1600)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !359, file: !20, line: 135, baseType: !33, size: 32, align: 32, offset: 1632)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !359, file: !20, line: 136, baseType: !33, size: 32, align: 32, offset: 1664)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !359, file: !20, line: 138, baseType: !33, size: 32, align: 32, offset: 1696)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !359, file: !20, line: 139, baseType: !33, size: 32, align: 32, offset: 1728)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !359, file: !20, line: 141, baseType: !330, size: 32, align: 32, offset: 1760)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !359, file: !20, line: 142, baseType: !330, size: 32, align: 32, offset: 1792)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !359, file: !20, line: 143, baseType: !330, size: 32, align: 32, offset: 1824)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !359, file: !20, line: 144, baseType: !330, size: 32, align: 32, offset: 1856)
!392 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !4, line: 574, type: !393, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !20, line: 193, baseType: !395)
!395 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 149, size: 17056, align: 32, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !395, file: !20, line: 151, baseType: !330, size: 32, align: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !395, file: !20, line: 153, baseType: !40, size: 32, align: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !395, file: !20, line: 154, baseType: !330, size: 32, align: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !395, file: !20, line: 155, baseType: !330, size: 32, align: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !395, file: !20, line: 156, baseType: !330, size: 32, align: 32, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !395, file: !20, line: 157, baseType: !330, size: 32, align: 32, offset: 160)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !395, file: !20, line: 158, baseType: !40, size: 32, align: 32, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !395, file: !20, line: 159, baseType: !40, size: 32, align: 32, offset: 224)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !395, file: !20, line: 160, baseType: !40, size: 32, align: 32, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !395, file: !20, line: 162, baseType: !330, size: 32, align: 32, offset: 288)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !395, file: !20, line: 163, baseType: !150, size: 256, align: 32, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !395, file: !20, line: 165, baseType: !40, size: 32, align: 32, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !395, file: !20, line: 166, baseType: !40, size: 32, align: 32, offset: 608)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !395, file: !20, line: 167, baseType: !40, size: 32, align: 32, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !395, file: !20, line: 168, baseType: !40, size: 32, align: 32, offset: 672)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !395, file: !20, line: 170, baseType: !40, size: 32, align: 32, offset: 704)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !395, file: !20, line: 172, baseType: !330, size: 32, align: 32, offset: 736)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !395, file: !20, line: 173, baseType: !33, size: 32, align: 32, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !395, file: !20, line: 174, baseType: !33, size: 32, align: 32, offset: 800)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !395, file: !20, line: 175, baseType: !40, size: 32, align: 32, offset: 832)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !395, file: !20, line: 177, baseType: !418, size: 8192, align: 32, offset: 864)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8192, align: 32, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !395, file: !20, line: 178, baseType: !40, size: 32, align: 32, offset: 9056)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !395, file: !20, line: 179, baseType: !330, size: 32, align: 32, offset: 9088)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !395, file: !20, line: 180, baseType: !40, size: 32, align: 32, offset: 9120)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !395, file: !20, line: 181, baseType: !40, size: 32, align: 32, offset: 9152)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !395, file: !20, line: 182, baseType: !330, size: 32, align: 32, offset: 9184)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !395, file: !20, line: 184, baseType: !330, size: 32, align: 32, offset: 9216)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !395, file: !20, line: 185, baseType: !330, size: 32, align: 32, offset: 9248)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !395, file: !20, line: 186, baseType: !330, size: 32, align: 32, offset: 9280)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !395, file: !20, line: 187, baseType: !40, size: 32, align: 32, offset: 9312)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !395, file: !20, line: 188, baseType: !40, size: 32, align: 32, offset: 9344)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !395, file: !20, line: 189, baseType: !40, size: 32, align: 32, offset: 9376)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !395, file: !20, line: 190, baseType: !40, size: 32, align: 32, offset: 9408)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !395, file: !20, line: 191, baseType: !330, size: 32, align: 32, offset: 9440)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !395, file: !20, line: 192, baseType: !435, size: 7584, align: 32, offset: 9472)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !20, line: 99, baseType: !436)
!436 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 63, size: 7584, align: 32, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !436, file: !20, line: 65, baseType: !330, size: 32, align: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !436, file: !20, line: 66, baseType: !40, size: 32, align: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !436, file: !20, line: 67, baseType: !40, size: 32, align: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !436, file: !20, line: 68, baseType: !40, size: 32, align: 32, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !436, file: !20, line: 69, baseType: !330, size: 32, align: 32, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !436, file: !20, line: 70, baseType: !330, size: 32, align: 32, offset: 160)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !436, file: !20, line: 71, baseType: !330, size: 32, align: 32, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !436, file: !20, line: 72, baseType: !40, size: 32, align: 32, offset: 224)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !436, file: !20, line: 73, baseType: !330, size: 32, align: 32, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !436, file: !20, line: 74, baseType: !330, size: 32, align: 32, offset: 288)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !436, file: !20, line: 75, baseType: !40, size: 32, align: 32, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !436, file: !20, line: 76, baseType: !40, size: 32, align: 32, offset: 352)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !436, file: !20, line: 77, baseType: !40, size: 32, align: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !436, file: !20, line: 78, baseType: !330, size: 32, align: 32, offset: 416)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !436, file: !20, line: 79, baseType: !40, size: 32, align: 32, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !436, file: !20, line: 80, baseType: !40, size: 32, align: 32, offset: 480)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !436, file: !20, line: 81, baseType: !330, size: 32, align: 32, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !436, file: !20, line: 82, baseType: !40, size: 32, align: 32, offset: 544)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !436, file: !20, line: 83, baseType: !40, size: 32, align: 32, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !436, file: !20, line: 84, baseType: !330, size: 32, align: 32, offset: 608)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !436, file: !20, line: 85, baseType: !330, size: 32, align: 32, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !436, file: !20, line: 86, baseType: !460, size: 3296, align: 32, offset: 672)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !20, line: 60, baseType: !461)
!461 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 48, size: 3296, align: 32, elements: !462)
!462 = !{!463, !464, !465, !466, !470, !471, !472, !473, !474, !475}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !461, file: !20, line: 50, baseType: !40, size: 32, align: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !461, file: !20, line: 51, baseType: !40, size: 32, align: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !461, file: !20, line: 52, baseType: !40, size: 32, align: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !461, file: !20, line: 53, baseType: !467, size: 1024, align: 32, offset: 96)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1024, align: 32, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !461, file: !20, line: 54, baseType: !467, size: 1024, align: 32, offset: 1120)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !461, file: !20, line: 55, baseType: !467, size: 1024, align: 32, offset: 2144)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !461, file: !20, line: 56, baseType: !40, size: 32, align: 32, offset: 3168)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !461, file: !20, line: 57, baseType: !40, size: 32, align: 32, offset: 3200)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !461, file: !20, line: 58, baseType: !40, size: 32, align: 32, offset: 3232)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !461, file: !20, line: 59, baseType: !40, size: 32, align: 32, offset: 3264)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !436, file: !20, line: 87, baseType: !330, size: 32, align: 32, offset: 3968)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !436, file: !20, line: 88, baseType: !460, size: 3296, align: 32, offset: 4000)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !436, file: !20, line: 90, baseType: !330, size: 32, align: 32, offset: 7296)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !436, file: !20, line: 91, baseType: !330, size: 32, align: 32, offset: 7328)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !436, file: !20, line: 92, baseType: !330, size: 32, align: 32, offset: 7360)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !436, file: !20, line: 93, baseType: !40, size: 32, align: 32, offset: 7392)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !436, file: !20, line: 94, baseType: !40, size: 32, align: 32, offset: 7424)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !436, file: !20, line: 95, baseType: !40, size: 32, align: 32, offset: 7456)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !436, file: !20, line: 96, baseType: !40, size: 32, align: 32, offset: 7488)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !436, file: !20, line: 97, baseType: !40, size: 32, align: 32, offset: 7520)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !436, file: !20, line: 98, baseType: !40, size: 32, align: 32, offset: 7552)
!487 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !4, line: 578, type: !33, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!488 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !4, line: 579, type: !33, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!489 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !4, line: 583, type: !490, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!491 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !4, line: 584, type: !490, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!492 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !4, line: 585, type: !493, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!494 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !4, line: 586, type: !33, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!495 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !4, line: 587, type: !33, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!496 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !4, line: 588, type: !33, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!497 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !4, line: 589, type: !33, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!498 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !4, line: 592, type: !346, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!499 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !4, line: 593, type: !346, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!500 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !4, line: 595, type: !349, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!501 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !4, line: 596, type: !349, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!502 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !4, line: 598, type: !346, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!503 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !4, line: 599, type: !349, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!504 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !4, line: 601, type: !346, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!505 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !4, line: 602, type: !349, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!506 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !4, line: 604, type: !507, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!511 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !4, line: 605, type: !508, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!512 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !4, line: 608, type: !513, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!514 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !4, line: 609, type: !513, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!515 = !DIGlobalVariable(name: "intras", scope: !0, file: !4, line: 610, type: !33, isLocal: false, isDefinition: true, variable: i32* @intras)
!516 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !4, line: 612, type: !33, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!517 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !4, line: 612, type: !33, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!518 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !4, line: 612, type: !33, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!519 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !4, line: 613, type: !33, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!520 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !4, line: 613, type: !33, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!521 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !4, line: 613, type: !33, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!522 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !4, line: 614, type: !33, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!523 = !DIGlobalVariable(name: "errortext", scope: !0, file: !4, line: 617, type: !524, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 2400, align: 8, elements: !526)
!525 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!526 = !{!527}
!527 = !DISubrange(count: 300)
!528 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !4, line: 620, type: !529, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8192, align: 32, elements: !530)
!530 = !{!199, !199}
!531 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !4, line: 620, type: !529, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!532 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !4, line: 620, type: !529, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!533 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !4, line: 621, type: !529, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!534 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !4, line: 621, type: !529, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!535 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !4, line: 621, type: !529, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!536 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !4, line: 622, type: !537, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24576, align: 32, elements: !538)
!538 = !{!98, !199, !199}
!539 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !4, line: 623, type: !540, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1024, align: 32, elements: !541)
!541 = !{!103, !116, !116}
!542 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !4, line: 623, type: !540, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!543 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !4, line: 624, type: !540, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!544 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !4, line: 624, type: !540, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!545 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !4, line: 625, type: !546, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 512, align: 32, elements: !547)
!547 = !{!116, !116}
!548 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !4, line: 625, type: !197, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!549 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !4, line: 1201, type: !550, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !4, line: 1190, baseType: !552)
!552 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1182, size: 192, align: 32, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !552, file: !4, line: 1184, baseType: !33, size: 32, align: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !552, file: !4, line: 1185, baseType: !33, size: 32, align: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !552, file: !4, line: 1186, baseType: !33, size: 32, align: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !552, file: !4, line: 1187, baseType: !33, size: 32, align: 32, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !552, file: !4, line: 1188, baseType: !33, size: 32, align: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !552, file: !4, line: 1189, baseType: !33, size: 32, align: 32, offset: 160)
!560 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !4, line: 1202, type: !561, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !4, line: 1177, baseType: !563)
!563 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1145, size: 26880, align: 64, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !584, !585, !586, !587, !589, !590, !591, !592, !593, !594, !595}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !563, file: !4, line: 1147, baseType: !230, size: 64, align: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !563, file: !4, line: 1149, baseType: !529, size: 8192, align: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !563, file: !4, line: 1150, baseType: !529, size: 8192, align: 32, offset: 8256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !563, file: !4, line: 1150, baseType: !529, size: 8192, align: 32, offset: 16448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !563, file: !4, line: 1151, baseType: !493, size: 64, align: 64, offset: 24640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !563, file: !4, line: 1152, baseType: !490, size: 64, align: 64, offset: 24704)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !563, file: !4, line: 1153, baseType: !33, size: 32, align: 32, offset: 24768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !563, file: !4, line: 1155, baseType: !33, size: 32, align: 32, offset: 24800)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !563, file: !4, line: 1157, baseType: !208, size: 128, align: 32, offset: 24832)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !563, file: !4, line: 1157, baseType: !208, size: 128, align: 32, offset: 24960)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !563, file: !4, line: 1158, baseType: !351, size: 64, align: 64, offset: 25088)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !563, file: !4, line: 1159, baseType: !197, size: 512, align: 32, offset: 25152)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !563, file: !4, line: 1160, baseType: !33, size: 32, align: 32, offset: 25664)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !563, file: !4, line: 1161, baseType: !203, size: 64, align: 64, offset: 25728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !563, file: !4, line: 1162, baseType: !33, size: 32, align: 32, offset: 25792)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !563, file: !4, line: 1163, baseType: !581, size: 64, align: 64, offset: 25856)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !563, file: !4, line: 1164, baseType: !581, size: 64, align: 64, offset: 25920)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !563, file: !4, line: 1165, baseType: !581, size: 64, align: 64, offset: 25984)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !563, file: !4, line: 1166, baseType: !581, size: 64, align: 64, offset: 26048)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !563, file: !4, line: 1167, baseType: !588, size: 512, align: 16, offset: 26112)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 512, align: 16, elements: !541)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !563, file: !4, line: 1168, baseType: !33, size: 32, align: 32, offset: 26624)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !563, file: !4, line: 1169, baseType: !33, size: 32, align: 32, offset: 26656)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !563, file: !4, line: 1171, baseType: !33, size: 32, align: 32, offset: 26688)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !563, file: !4, line: 1172, baseType: !33, size: 32, align: 32, offset: 26720)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !563, file: !4, line: 1174, baseType: !33, size: 32, align: 32, offset: 26752)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !563, file: !4, line: 1175, baseType: !33, size: 32, align: 32, offset: 26784)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !563, file: !4, line: 1176, baseType: !33, size: 32, align: 32, offset: 26816)
!596 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !4, line: 1203, type: !562, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!597 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !4, line: 1203, type: !562, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!598 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !4, line: 1204, type: !562, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!599 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !4, line: 1204, type: !562, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!600 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !4, line: 1230, type: !601, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64, align: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !603, line: 153, baseType: !604)
!603 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !603, line: 122, size: 1216, align: 64, elements: !605)
!605 = !{!606, !608, !609, !610, !611, !612, !617, !618, !619, !623, !628, !637, !643, !644, !647, !648, !650, !654, !655, !656}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !604, file: !603, line: 123, baseType: !607, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !604, file: !603, line: 124, baseType: !33, size: 32, align: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !604, file: !603, line: 125, baseType: !33, size: 32, align: 32, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !604, file: !603, line: 126, baseType: !510, size: 16, align: 16, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !604, file: !603, line: 127, baseType: !510, size: 16, align: 16, offset: 144)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !604, file: !603, line: 128, baseType: !613, size: 128, align: 64, offset: 192)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !603, line: 88, size: 128, align: 64, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !613, file: !603, line: 89, baseType: !607, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !613, file: !603, line: 90, baseType: !33, size: 32, align: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !604, file: !603, line: 129, baseType: !33, size: 32, align: 32, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !604, file: !603, line: 132, baseType: !25, size: 64, align: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !604, file: !603, line: 133, baseType: !620, size: 64, align: 64, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!33, !25}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !604, file: !603, line: 134, baseType: !624, size: 64, align: 64, offset: 512)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64, align: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!33, !25, !627, !33}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !604, file: !603, line: 135, baseType: !629, size: 64, align: 64, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, align: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!632, !25, !632, !33}
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !603, line: 77, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !634, line: 71, baseType: !635)
!634 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !636, line: 46, baseType: !206)
!636 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !604, file: !603, line: 136, baseType: !638, size: 64, align: 64, offset: 640)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!33, !25, !641, !33}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !604, file: !603, line: 139, baseType: !613, size: 128, align: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !604, file: !603, line: 140, baseType: !645, size: 64, align: 64, offset: 832)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !603, line: 94, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !604, file: !603, line: 141, baseType: !33, size: 32, align: 32, offset: 896)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !604, file: !603, line: 144, baseType: !649, size: 24, align: 8, offset: 928)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 24, align: 8, elements: !120)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !604, file: !603, line: 145, baseType: !651, size: 8, align: 8, offset: 952)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, align: 8, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 1)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !604, file: !603, line: 148, baseType: !613, size: 128, align: 64, offset: 960)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !604, file: !603, line: 151, baseType: !33, size: 32, align: 32, offset: 1088)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !604, file: !603, line: 152, baseType: !632, size: 64, align: 64, offset: 1152)
!657 = !DIGlobalVariable(name: "p_log", scope: !0, file: !4, line: 1231, type: !601, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!658 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !4, line: 1232, type: !601, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!659 = !DIGlobalVariable(name: "p_in", scope: !0, file: !4, line: 1233, type: !33, isLocal: false, isDefinition: true, variable: i32* @p_in)
!660 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !4, line: 1234, type: !33, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!661 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !4, line: 1237, type: !662, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 640, align: 32, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 20)
!665 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !4, line: 1238, type: !662, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!666 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !4, line: 1239, type: !662, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!667 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !4, line: 1240, type: !662, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!668 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !4, line: 1241, type: !662, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!669 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !4, line: 1242, type: !662, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!670 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !4, line: 1456, type: !33, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!671 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !4, line: 1465, type: !33, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!672 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !4, line: 1466, type: !33, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!673 = !{}
!674 = !{i32 2, !"Dwarf Version", i32 2}
!675 = !{i32 2, !"Debug Info Version", i32 700000003}
!676 = !{i32 1, !"PIC Level", i32 2}
!677 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!678 = !DIExpression()
!679 = !DILocation(line: 34, column: 28, scope: !158)
!680 = !DILocation(line: 36, column: 10, scope: !681)
!681 = distinct !DILexicalBlock(scope: !158, file: !1, line: 36, column: 7)
!682 = !DILocation(line: 36, column: 7, scope: !158)
!683 = !DILocation(line: 39, column: 13, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !1, line: 39, column: 9)
!685 = distinct !DILexicalBlock(scope: !681, file: !1, line: 37, column: 3)
!686 = !{!687, !691, i64 8}
!687 = !{!"", !688, i64 0, !691, i64 8, !691, i64 16, !688, i64 24, !691, i64 32, !691, i64 40, !688, i64 48, !689, i64 52, !689, i64 84, !692, i64 344}
!688 = !{!"int", !689, i64 0}
!689 = !{!"omnipotent char", !690, i64 0}
!690 = !{!"Simple C/C++ TBAA"}
!691 = !{!"any pointer", !689, i64 0}
!692 = !{!"long", !689, i64 0}
!693 = !DILocation(line: 39, column: 23, scope: !684)
!694 = !DILocation(line: 39, column: 9, scope: !685)
!695 = !DILocation(line: 39, column: 40, scope: !684)
!696 = !DILocation(line: 39, column: 34, scope: !684)
!697 = !DILocation(line: 40, column: 13, scope: !698)
!698 = distinct !DILexicalBlock(scope: !685, file: !1, line: 40, column: 9)
!699 = !{!687, !691, i64 16}
!700 = !DILocation(line: 40, column: 23, scope: !698)
!701 = !DILocation(line: 40, column: 9, scope: !685)
!702 = !DILocation(line: 40, column: 40, scope: !698)
!703 = !DILocation(line: 40, column: 34, scope: !698)
!704 = !DILocation(line: 43, column: 38, scope: !685)
!705 = !{!687, !691, i64 32}
!706 = !DILocation(line: 43, column: 5, scope: !685)
!707 = !DILocation(line: 44, column: 38, scope: !685)
!708 = !{!687, !691, i64 40}
!709 = !DILocation(line: 44, column: 5, scope: !685)
!710 = !DILocation(line: 47, column: 11, scope: !685)
!711 = !DILocation(line: 47, column: 5, scope: !685)
!712 = !DILocation(line: 49, column: 3, scope: !685)
!713 = !DILocation(line: 50, column: 1, scope: !158)
!714 = !DILocation(line: 65, column: 21, scope: !715)
!715 = distinct !DILexicalBlock(scope: !163, file: !1, line: 65, column: 7)
!716 = !DILocation(line: 65, column: 13, scope: !715)
!717 = !DILocation(line: 62, column: 9, scope: !163)
!718 = !DILocation(line: 65, column: 48, scope: !715)
!719 = !DILocation(line: 65, column: 7, scope: !163)
!720 = !DILocation(line: 66, column: 5, scope: !715)
!721 = !DILocation(line: 69, column: 17, scope: !163)
!722 = !{!691, !691, i64 0}
!723 = !DILocation(line: 69, column: 24, scope: !163)
!724 = !{!725, !688, i64 2364}
!725 = !{!"", !688, i64 0, !688, i64 4, !688, i64 8, !688, i64 12, !688, i64 16, !688, i64 20, !688, i64 24, !688, i64 28, !688, i64 32, !688, i64 36, !688, i64 40, !688, i64 44, !688, i64 48, !688, i64 52, !688, i64 56, !688, i64 60, !688, i64 64, !688, i64 68, !688, i64 72, !688, i64 76, !689, i64 80, !689, i64 144, !688, i64 208, !688, i64 212, !688, i64 216, !688, i64 220, !689, i64 224, !689, i64 424, !689, i64 624, !689, i64 824, !689, i64 1024, !688, i64 1224, !688, i64 1228, !688, i64 1232, !688, i64 1236, !688, i64 1240, !688, i64 1244, !688, i64 1248, !688, i64 1252, !688, i64 1256, !688, i64 1260, !688, i64 1264, !688, i64 1268, !688, i64 1272, !688, i64 1276, !688, i64 1280, !688, i64 1284, !688, i64 1288, !688, i64 1292, !688, i64 1296, !688, i64 1300, !688, i64 1304, !688, i64 1308, !688, i64 1312, !688, i64 1316, !688, i64 1320, !689, i64 1324, !688, i64 2348, !688, i64 2352, !688, i64 2356, !688, i64 2360, !688, i64 2364, !688, i64 2368, !688, i64 2372, !688, i64 2376, !688, i64 2380, !688, i64 2384, !688, i64 2388, !688, i64 2392, !688, i64 2396, !688, i64 2400, !688, i64 2404, !688, i64 2408, !688, i64 2412, !688, i64 2416, !688, i64 2420, !726, i64 2424, !688, i64 2432, !688, i64 2436, !688, i64 2440, !688, i64 2444, !688, i64 2448, !688, i64 2452, !688, i64 2456, !688, i64 2460, !688, i64 2464, !688, i64 2468, !688, i64 2472, !688, i64 2476, !689, i64 2480, !689, i64 2680, !688, i64 2880, !688, i64 2884, !688, i64 2888, !688, i64 2892, !688, i64 2896, !688, i64 2900, !688, i64 2904, !688, i64 2908, !688, i64 2912, !688, i64 2916, !688, i64 2920, !688, i64 2924, !688, i64 2928, !688, i64 2932, !688, i64 2936, !688, i64 2940, !688, i64 2944, !688, i64 2948, !689, i64 2952, !688, i64 3152, !688, i64 3156, !691, i64 3160, !691, i64 3168, !691, i64 3176, !691, i64 3184, !688, i64 3192, !688, i64 3196, !688, i64 3200, !688, i64 3204, !688, i64 3208, !688, i64 3212, !688, i64 3216, !688, i64 3220, !688, i64 3224, !688, i64 3228, !688, i64 3232, !688, i64 3236, !688, i64 3240, !688, i64 3244, !688, i64 3248, !688, i64 3252, !688, i64 3256, !689, i64 3260, !688, i64 3292, !688, i64 3296, !688, i64 3300, !688, i64 3304, !688, i64 3308, !688, i64 3312, !688, i64 3316, !688, i64 3320, !688, i64 3324, !688, i64 3328, !688, i64 3332, !689, i64 3336, !689, i64 3384, !688, i64 3584}
!726 = !{!"double", !689, i64 0}
!727 = !DILocation(line: 69, column: 38, scope: !163)
!728 = !DILocation(line: 69, column: 7, scope: !163)
!729 = !DILocation(line: 69, column: 15, scope: !163)
!730 = !{!687, !688, i64 0}
!731 = !DILocation(line: 70, column: 14, scope: !732)
!732 = distinct !DILexicalBlock(scope: !163, file: !1, line: 70, column: 7)
!733 = !{!725, !688, i64 2356}
!734 = !DILocation(line: 70, column: 26, scope: !732)
!735 = !DILocation(line: 70, column: 7, scope: !163)
!736 = !DILocation(line: 72, column: 54, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !1, line: 72, column: 9)
!738 = distinct !DILexicalBlock(scope: !732, file: !1, line: 71, column: 3)
!739 = !DILocation(line: 72, column: 46, scope: !737)
!740 = !DILocation(line: 72, column: 14, scope: !737)
!741 = !DILocation(line: 72, column: 21, scope: !737)
!742 = !DILocation(line: 72, column: 97, scope: !737)
!743 = !DILocation(line: 72, column: 9, scope: !738)
!744 = !DILocation(line: 73, column: 7, scope: !737)
!745 = !DILocation(line: 77, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !732, file: !1, line: 76, column: 3)
!747 = !DILocation(line: 77, column: 16, scope: !746)
!748 = !DILocation(line: 79, column: 45, scope: !749)
!749 = distinct !DILexicalBlock(scope: !163, file: !1, line: 79, column: 7)
!750 = !DILocation(line: 79, column: 37, scope: !749)
!751 = !DILocation(line: 79, column: 12, scope: !749)
!752 = !DILocation(line: 79, column: 22, scope: !749)
!753 = !DILocation(line: 79, column: 78, scope: !749)
!754 = !DILocation(line: 79, column: 7, scope: !163)
!755 = !DILocation(line: 80, column: 5, scope: !749)
!756 = !DILocation(line: 83, column: 21, scope: !163)
!757 = !DILocation(line: 83, column: 28, scope: !163)
!758 = !DILocation(line: 83, column: 7, scope: !163)
!759 = !DILocation(line: 83, column: 19, scope: !163)
!760 = !{!687, !688, i64 24}
!761 = !DILocation(line: 84, column: 23, scope: !762)
!762 = distinct !DILexicalBlock(scope: !163, file: !1, line: 84, column: 7)
!763 = !DILocation(line: 84, column: 7, scope: !163)
!764 = !DILocation(line: 86, column: 19, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !1, line: 85, column: 3)
!766 = !DILocation(line: 86, column: 9, scope: !765)
!767 = !DILocation(line: 86, column: 17, scope: !765)
!768 = !DILocation(line: 87, column: 19, scope: !765)
!769 = !DILocation(line: 87, column: 9, scope: !765)
!770 = !DILocation(line: 87, column: 17, scope: !765)
!771 = !DILocation(line: 88, column: 3, scope: !765)
!772 = !DILocation(line: 91, column: 9, scope: !773)
!773 = distinct !DILexicalBlock(scope: !762, file: !1, line: 90, column: 3)
!774 = !DILocation(line: 92, column: 17, scope: !773)
!775 = !DILocation(line: 95, column: 3, scope: !163)
!776 = !DILocation(line: 106, column: 27, scope: !168)
!777 = !DILocation(line: 113, column: 35, scope: !168)
!778 = !DILocation(line: 113, column: 40, scope: !168)
!779 = !{!780, !691, i64 14160}
!780 = !{!"", !688, i64 0, !688, i64 4, !688, i64 8, !688, i64 12, !688, i64 16, !688, i64 20, !688, i64 24, !688, i64 28, !688, i64 32, !688, i64 36, !688, i64 40, !688, i64 44, !781, i64 48, !688, i64 52, !688, i64 56, !688, i64 60, !688, i64 64, !688, i64 68, !688, i64 72, !688, i64 76, !688, i64 80, !688, i64 84, !688, i64 88, !688, i64 92, !688, i64 96, !691, i64 104, !691, i64 112, !688, i64 120, !691, i64 128, !688, i64 136, !688, i64 140, !688, i64 144, !688, i64 148, !688, i64 152, !688, i64 156, !688, i64 160, !688, i64 164, !688, i64 168, !688, i64 172, !688, i64 176, !688, i64 180, !689, i64 184, !689, i64 4792, !689, i64 7352, !689, i64 8504, !689, i64 12600, !689, i64 13112, !691, i64 14136, !691, i64 14144, !691, i64 14152, !691, i64 14160, !691, i64 14168, !689, i64 14176, !691, i64 71776, !691, i64 71784, !688, i64 71792, !688, i64 71796, !688, i64 71800, !688, i64 71804, !689, i64 71808, !688, i64 71872, !688, i64 71876, !688, i64 71880, !688, i64 71884, !688, i64 71888, !726, i64 71896, !688, i64 71904, !688, i64 71908, !688, i64 71912, !688, i64 71916, !691, i64 71920, !691, i64 71928, !691, i64 71936, !691, i64 71944, !689, i64 71952, !688, i64 71984, !688, i64 71988, !688, i64 71992, !688, i64 71996, !688, i64 72000, !688, i64 72004, !688, i64 72008, !688, i64 72012, !689, i64 72016, !688, i64 72376, !688, i64 72380, !688, i64 72384, !688, i64 72388, !688, i64 72392, !688, i64 72396, !688, i64 72400, !688, i64 72404, !688, i64 72408, !688, i64 72412, !688, i64 72416, !688, i64 72420, !689, i64 72424, !688, i64 72428, !688, i64 72432, !689, i64 72436, !688, i64 72444, !688, i64 72448, !688, i64 72452, !688, i64 72456, !688, i64 72460, !688, i64 72464, !688, i64 72468, !688, i64 72472, !688, i64 72476, !688, i64 72480, !688, i64 72484, !688, i64 72488, !688, i64 72492, !688, i64 72496, !688, i64 72500, !688, i64 72504, !688, i64 72508, !691, i64 72512, !688, i64 72520, !688, i64 72524, !688, i64 72528, !688, i64 72532, !688, i64 72536, !726, i64 72544, !688, i64 72552, !688, i64 72556, !688, i64 72560, !688, i64 72564, !688, i64 72568, !688, i64 72572, !688, i64 72576, !691, i64 72584, !688, i64 72592, !688, i64 72596, !688, i64 72600, !688, i64 72604, !688, i64 72608, !688, i64 72612, !688, i64 72616, !688, i64 72620, !688, i64 72624, !688, i64 72628, !688, i64 72632, !688, i64 72636, !688, i64 72640, !688, i64 72644, !688, i64 72648, !688, i64 72652, !688, i64 72656, !688, i64 72660, !688, i64 72664, !688, i64 72668, !688, i64 72672, !688, i64 72676, !688, i64 72680, !688, i64 72684, !688, i64 72688, !688, i64 72692, !688, i64 72696, !688, i64 72700, !688, i64 72704, !688, i64 72708, !688, i64 72712, !689, i64 72716, !688, i64 72724, !688, i64 72728, !688, i64 72732}
!781 = !{!"float", !689, i64 0}
!782 = !DILocation(line: 113, column: 54, scope: !168)
!783 = !{!784, !691, i64 32}
!784 = !{!"", !688, i64 0, !688, i64 4, !688, i64 8, !688, i64 12, !688, i64 16, !688, i64 20, !691, i64 24, !691, i64 32, !691, i64 40, !691, i64 48, !688, i64 56, !691, i64 64, !691, i64 72, !691, i64 80, !688, i64 88, !691, i64 96, !691, i64 104, !691, i64 112, !691, i64 120, !689, i64 128}
!785 = !DILocation(line: 114, column: 54, scope: !168)
!786 = !{!784, !691, i64 40}
!787 = !DILocation(line: 115, column: 39, scope: !168)
!788 = !DILocation(line: 116, column: 39, scope: !168)
!789 = !DILocation(line: 117, column: 56, scope: !168)
!790 = !{!780, !688, i64 12}
!791 = !DILocation(line: 117, column: 37, scope: !168)
!792 = !DILocation(line: 117, column: 42, scope: !168)
!793 = !{!780, !691, i64 14168}
!794 = !DILocation(line: 120, column: 8, scope: !795)
!795 = distinct !DILexicalBlock(scope: !168, file: !1, line: 120, column: 7)
!796 = !DILocation(line: 120, column: 15, scope: !795)
!797 = !{!725, !688, i64 2464}
!798 = !DILocation(line: 120, column: 7, scope: !168)
!799 = !DILocation(line: 122, column: 11, scope: !800)
!800 = distinct !DILexicalBlock(scope: !168, file: !1, line: 122, column: 7)
!801 = !DILocation(line: 122, column: 22, scope: !800)
!802 = !DILocation(line: 108, column: 8, scope: !168)
!803 = !DILocation(line: 126, column: 56, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !1, line: 126, column: 3)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 126, column: 3)
!806 = distinct !DILexicalBlock(scope: !800, file: !1, line: 123, column: 3)
!807 = !DILocation(line: 122, column: 7, scope: !168)
!808 = !DILocation(line: 148, column: 21, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 146, column: 3)
!810 = distinct !DILexicalBlock(scope: !811, file: !1, line: 145, column: 3)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 145, column: 3)
!812 = distinct !DILexicalBlock(scope: !800, file: !1, line: 143, column: 3)
!813 = !DILocation(line: 145, column: 19, scope: !810)
!814 = !DILocation(line: 130, column: 21, scope: !815)
!815 = distinct !DILexicalBlock(scope: !804, file: !1, line: 127, column: 3)
!816 = !DILocation(line: 131, column: 21, scope: !815)
!817 = !DILocation(line: 126, column: 19, scope: !804)
!818 = !DILocation(line: 126, column: 24, scope: !804)
!819 = !{!780, !691, i64 14152}
!820 = !DILocation(line: 126, column: 40, scope: !804)
!821 = !{!822, !688, i64 4}
!822 = !{!"", !688, i64 0, !688, i64 4, !689, i64 8, !688, i64 808, !781, i64 812, !781, i64 816, !781, i64 820}
!823 = !DILocation(line: 126, column: 17, scope: !804)
!824 = !DILocation(line: 126, column: 3, scope: !805)
!825 = !DILocation(line: 128, column: 22, scope: !815)
!826 = !DILocation(line: 128, column: 36, scope: !815)
!827 = !{!784, !691, i64 24}
!828 = !DILocation(line: 128, column: 47, scope: !815)
!829 = !DILocation(line: 110, column: 25, scope: !168)
!830 = !DILocation(line: 129, column: 47, scope: !815)
!831 = !{!832, !691, i64 0}
!832 = !{!"datapartition", !691, i64 0, !833, i64 8, !691, i64 112}
!833 = !{!"", !688, i64 0, !688, i64 4, !688, i64 8, !688, i64 12, !688, i64 16, !691, i64 24, !691, i64 32, !688, i64 40, !688, i64 44, !688, i64 48, !688, i64 52, !688, i64 56, !691, i64 64, !691, i64 72, !688, i64 80, !688, i64 84, !688, i64 88, !688, i64 92, !688, i64 96, !688, i64 100}
!834 = !DILocation(line: 130, column: 17, scope: !815)
!835 = !DILocation(line: 110, column: 34, scope: !168)
!836 = !DILocation(line: 131, column: 17, scope: !815)
!837 = !DILocation(line: 111, column: 34, scope: !168)
!838 = !DILocation(line: 133, column: 5, scope: !815)
!839 = !DILocation(line: 134, column: 5, scope: !815)
!840 = !DILocation(line: 126, column: 3, scope: !804)
!841 = !DILocation(line: 138, column: 5, scope: !806)
!842 = !DILocation(line: 139, column: 5, scope: !806)
!843 = !DILocation(line: 141, column: 3, scope: !806)
!844 = !DILocation(line: 145, column: 24, scope: !810)
!845 = !DILocation(line: 145, column: 40, scope: !810)
!846 = !DILocation(line: 145, column: 56, scope: !810)
!847 = !DILocation(line: 145, column: 17, scope: !810)
!848 = !DILocation(line: 145, column: 3, scope: !811)
!849 = !DILocation(line: 147, column: 22, scope: !809)
!850 = !DILocation(line: 147, column: 36, scope: !809)
!851 = !DILocation(line: 147, column: 47, scope: !809)
!852 = !DILocation(line: 148, column: 17, scope: !809)
!853 = !DILocation(line: 149, column: 7, scope: !809)
!854 = !DILocation(line: 145, column: 3, scope: !810)
!855 = !DILocation(line: 153, column: 26, scope: !168)
!856 = !{!857, !688, i64 0}
!857 = !{!"macroblock", !688, i64 0, !688, i64 4, !688, i64 8, !688, i64 12, !688, i64 16, !689, i64 20, !691, i64 56, !691, i64 64, !688, i64 72, !689, i64 76, !689, i64 332, !689, i64 396, !688, i64 460, !858, i64 464, !689, i64 472, !689, i64 488, !692, i64 504, !688, i64 512, !688, i64 516, !688, i64 520, !688, i64 524, !688, i64 528, !688, i64 532, !688, i64 536, !688, i64 540, !688, i64 544, !688, i64 548, !688, i64 552, !688, i64 556, !688, i64 560, !688, i64 564, !688, i64 568, !688, i64 572, !688, i64 576, !688, i64 580, !726, i64 584, !688, i64 592, !688, i64 596, !688, i64 600, !688, i64 604, !688, i64 608, !688, i64 612, !688, i64 616, !688, i64 620, !688, i64 624}
!858 = !{!"long long", !689, i64 0}
!859 = !DILocation(line: 153, column: 7, scope: !168)
!860 = !DILocation(line: 153, column: 16, scope: !168)
!861 = !{!687, !688, i64 48}
!862 = !DILocation(line: 154, column: 3, scope: !168)
!863 = !DILocation(line: 157, column: 3, scope: !168)
!864 = !DILocation(line: 158, column: 26, scope: !168)
!865 = !{!857, !692, i64 504}
!866 = !DILocation(line: 158, column: 7, scope: !168)
!867 = !DILocation(line: 158, column: 16, scope: !168)
!868 = !{!687, !692, i64 344}
!869 = !DILocation(line: 159, column: 1, scope: !168)
!870 = !DILocation(line: 169, column: 27, scope: !240)
!871 = !DILocation(line: 176, column: 35, scope: !240)
!872 = !DILocation(line: 176, column: 40, scope: !240)
!873 = !DILocation(line: 176, column: 54, scope: !240)
!874 = !DILocation(line: 177, column: 54, scope: !240)
!875 = !DILocation(line: 178, column: 39, scope: !240)
!876 = !DILocation(line: 179, column: 39, scope: !240)
!877 = !DILocation(line: 180, column: 56, scope: !240)
!878 = !DILocation(line: 180, column: 37, scope: !240)
!879 = !DILocation(line: 180, column: 42, scope: !240)
!880 = !DILocation(line: 183, column: 8, scope: !881)
!881 = distinct !DILexicalBlock(scope: !240, file: !1, line: 183, column: 7)
!882 = !DILocation(line: 183, column: 15, scope: !881)
!883 = !DILocation(line: 183, column: 7, scope: !240)
!884 = !DILocation(line: 185, column: 11, scope: !885)
!885 = distinct !DILexicalBlock(scope: !240, file: !1, line: 185, column: 7)
!886 = !DILocation(line: 185, column: 22, scope: !885)
!887 = !DILocation(line: 171, column: 8, scope: !240)
!888 = !DILocation(line: 189, column: 56, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 189, column: 3)
!890 = distinct !DILexicalBlock(scope: !891, file: !1, line: 189, column: 3)
!891 = distinct !DILexicalBlock(scope: !885, file: !1, line: 186, column: 3)
!892 = !DILocation(line: 185, column: 7, scope: !240)
!893 = !DILocation(line: 215, column: 23, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !1, line: 213, column: 5)
!895 = distinct !DILexicalBlock(scope: !896, file: !1, line: 211, column: 3)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 211, column: 3)
!897 = distinct !DILexicalBlock(scope: !885, file: !1, line: 208, column: 3)
!898 = !DILocation(line: 211, column: 19, scope: !895)
!899 = !DILocation(line: 193, column: 21, scope: !900)
!900 = distinct !DILexicalBlock(scope: !889, file: !1, line: 190, column: 3)
!901 = !DILocation(line: 194, column: 21, scope: !900)
!902 = !DILocation(line: 189, column: 19, scope: !889)
!903 = !DILocation(line: 189, column: 24, scope: !889)
!904 = !DILocation(line: 189, column: 40, scope: !889)
!905 = !DILocation(line: 189, column: 17, scope: !889)
!906 = !DILocation(line: 189, column: 3, scope: !890)
!907 = !DILocation(line: 191, column: 22, scope: !900)
!908 = !DILocation(line: 191, column: 36, scope: !900)
!909 = !DILocation(line: 191, column: 47, scope: !900)
!910 = !DILocation(line: 173, column: 34, scope: !240)
!911 = !DILocation(line: 192, column: 47, scope: !900)
!912 = !DILocation(line: 193, column: 17, scope: !900)
!913 = !DILocation(line: 173, column: 25, scope: !240)
!914 = !DILocation(line: 194, column: 17, scope: !900)
!915 = !DILocation(line: 174, column: 25, scope: !240)
!916 = !DILocation(line: 197, column: 5, scope: !900)
!917 = !DILocation(line: 198, column: 5, scope: !900)
!918 = !DILocation(line: 189, column: 3, scope: !889)
!919 = !DILocation(line: 203, column: 5, scope: !891)
!920 = !DILocation(line: 204, column: 5, scope: !891)
!921 = !DILocation(line: 206, column: 3, scope: !891)
!922 = !DILocation(line: 211, column: 24, scope: !895)
!923 = !DILocation(line: 211, column: 40, scope: !895)
!924 = !DILocation(line: 211, column: 56, scope: !895)
!925 = !DILocation(line: 211, column: 17, scope: !895)
!926 = !DILocation(line: 211, column: 3, scope: !896)
!927 = !DILocation(line: 214, column: 24, scope: !894)
!928 = !DILocation(line: 214, column: 38, scope: !894)
!929 = !DILocation(line: 214, column: 49, scope: !894)
!930 = !DILocation(line: 215, column: 19, scope: !894)
!931 = !DILocation(line: 218, column: 7, scope: !894)
!932 = !DILocation(line: 211, column: 3, scope: !895)
!933 = !DILocation(line: 223, column: 26, scope: !240)
!934 = !DILocation(line: 223, column: 11, scope: !240)
!935 = !DILocation(line: 223, column: 20, scope: !240)
!936 = !DILocation(line: 224, column: 3, scope: !240)
!937 = !DILocation(line: 227, column: 3, scope: !240)
!938 = !DILocation(line: 228, column: 26, scope: !240)
!939 = !DILocation(line: 228, column: 11, scope: !240)
!940 = !DILocation(line: 228, column: 20, scope: !240)
!941 = !DILocation(line: 229, column: 1, scope: !240)
