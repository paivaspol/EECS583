; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c'
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
define void @delete_coding_state(%struct.CSobj* %cs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.CSobj* %cs}, i64 0, metadata !161), !dbg !667
  %cmp = icmp eq %struct.CSobj* %cs, null, !dbg !668
  br i1 %cmp, label %if.end8, label %if.then, !dbg !668

if.then:                                          ; preds = %entry
  %encenv = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 1, !dbg !669
  %0 = load %struct.EncodingEnvironment** %encenv, align 8, !dbg !669, !tbaa !671
  %cmp1 = icmp eq %struct.EncodingEnvironment* %0, null, !dbg !669
  br i1 %cmp1, label %if.end, label %if.then2, !dbg !669

if.then2:                                         ; preds = %if.then
  %1 = bitcast %struct.EncodingEnvironment* %0 to i8*, !dbg !669
  tail call void @free(i8* %1) #5, !dbg !669
  br label %if.end, !dbg !669

if.end:                                           ; preds = %if.then, %if.then2
  %bitstream = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2, !dbg !674
  %2 = load %struct.Bitstream** %bitstream, align 8, !dbg !674, !tbaa !671
  %cmp4 = icmp eq %struct.Bitstream* %2, null, !dbg !674
  br i1 %cmp4, label %if.end7, label %if.then5, !dbg !674

if.then5:                                         ; preds = %if.end
  %3 = bitcast %struct.Bitstream* %2 to i8*, !dbg !674
  tail call void @free(i8* %3) #5, !dbg !674
  br label %if.end7, !dbg !674

if.end7:                                          ; preds = %if.end, %if.then5
  %mot_ctx = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 4, !dbg !675
  %4 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !675, !tbaa !671
  tail call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %4) #5, !dbg !675
  %tex_ctx = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 5, !dbg !676
  %5 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !dbg !676, !tbaa !671
  tail call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %5) #5, !dbg !676
  %6 = bitcast %struct.CSobj* %cs to i8*, !dbg !677
  tail call void @free(i8* %6) #5, !dbg !677
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !161), !dbg !679
  br label %if.end8, !dbg !680

if.end8:                                          ; preds = %entry, %if.end7
  ret void, !dbg !681
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #2

; Function Attrs: optsize
declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #2

; Function Attrs: nounwind optsize uwtable
define noalias %struct.CSobj* @create_coding_state() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 352) #5, !dbg !682
  %0 = bitcast i8* %call to %struct.CSobj*, !dbg !682
  tail call void @llvm.dbg.value(metadata !{%struct.CSobj* %0}, i64 0, metadata !166), !dbg !682
  %cmp = icmp eq i8* %call, null, !dbg !682
  br i1 %cmp, label %if.then, label %if.end, !dbg !682

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0)) #5, !dbg !683
  br label %if.end, !dbg !683

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.InputParameters** @input, align 8, !dbg !684, !tbaa !671
  %partition_mode = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 61, !dbg !684
  %2 = load i32* %partition_mode, align 4, !dbg !684, !tbaa !685
  %cmp1 = icmp eq i32 %2, 0, !dbg !684
  %cond = select i1 %cmp1, i32 1, i32 3, !dbg !684
  %no_part = bitcast i8* %call to i32*, !dbg !684
  store i32 %cond, i32* %no_part, align 4, !dbg !684, !tbaa !685
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 59, !dbg !686
  %3 = load i32* %symbol_mode, align 4, !dbg !686, !tbaa !685
  %cmp2 = icmp eq i32 %3, 1, !dbg !686
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !686

if.then3:                                         ; preds = %if.end
  %conv42 = zext i32 %cond to i64, !dbg !687
  %call5 = tail call noalias i8* @calloc(i64 %conv42, i64 104) #5, !dbg !687
  %4 = bitcast i8* %call5 to %struct.EncodingEnvironment*, !dbg !687
  %encenv = getelementptr inbounds i8* %call, i64 8, !dbg !687
  %5 = bitcast i8* %encenv to %struct.EncodingEnvironment**, !dbg !687
  store %struct.EncodingEnvironment* %4, %struct.EncodingEnvironment** %5, align 8, !dbg !687, !tbaa !671
  %cmp6 = icmp eq i8* %call5, null, !dbg !687
  br i1 %cmp6, label %if.then8, label %if.end11, !dbg !687

if.then8:                                         ; preds = %if.then3
  tail call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !689
  br label %if.end11, !dbg !689

if.else:                                          ; preds = %if.end
  %encenv10 = getelementptr inbounds i8* %call, i64 8, !dbg !690
  %6 = bitcast i8* %encenv10 to %struct.EncodingEnvironment**, !dbg !690
  store %struct.EncodingEnvironment* null, %struct.EncodingEnvironment** %6, align 8, !dbg !690, !tbaa !671
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.then8, %if.else
  %conv1343 = zext i32 %cond to i64, !dbg !692
  %call14 = tail call noalias i8* @calloc(i64 %conv1343, i64 48) #5, !dbg !692
  %7 = bitcast i8* %call14 to %struct.Bitstream*, !dbg !692
  %bitstream = getelementptr inbounds i8* %call, i64 16, !dbg !692
  %8 = bitcast i8* %bitstream to %struct.Bitstream**, !dbg !692
  store %struct.Bitstream* %7, %struct.Bitstream** %8, align 8, !dbg !692, !tbaa !671
  %cmp15 = icmp eq i8* %call14, null, !dbg !692
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !692

if.then17:                                        ; preds = %if.end11
  tail call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !693
  br label %if.end18, !dbg !693

if.end18:                                         ; preds = %if.end11, %if.then17
  %9 = load %struct.InputParameters** @input, align 8, !dbg !694, !tbaa !671
  %symbol_mode19 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 59, !dbg !694
  %10 = load i32* %symbol_mode19, align 4, !dbg !694, !tbaa !685
  %symbol_mode20 = getelementptr inbounds i8* %call, i64 24, !dbg !694
  %11 = bitcast i8* %symbol_mode20 to i32*, !dbg !694
  store i32 %10, i32* %11, align 4, !dbg !694, !tbaa !685
  %cmp22 = icmp eq i32 %10, 1, !dbg !695
  br i1 %cmp22, label %if.then24, label %if.else27, !dbg !695

if.then24:                                        ; preds = %if.end18
  %call25 = tail call %struct.MotionInfoContexts* @create_contexts_MotionInfo() #5, !dbg !696
  %mot_ctx = getelementptr inbounds i8* %call, i64 32, !dbg !696
  %12 = bitcast i8* %mot_ctx to %struct.MotionInfoContexts**, !dbg !696
  store %struct.MotionInfoContexts* %call25, %struct.MotionInfoContexts** %12, align 8, !dbg !696, !tbaa !671
  %call26 = tail call %struct.TextureInfoContexts* @create_contexts_TextureInfo() #5, !dbg !698
  %tex_ctx = getelementptr inbounds i8* %call, i64 40, !dbg !698
  %13 = bitcast i8* %tex_ctx to %struct.TextureInfoContexts**, !dbg !698
  store %struct.TextureInfoContexts* %call26, %struct.TextureInfoContexts** %13, align 8, !dbg !698, !tbaa !671
  br label %if.end30, !dbg !699

if.else27:                                        ; preds = %if.end18
  %mot_ctx28 = getelementptr inbounds i8* %call, i64 32, !dbg !700
  call void @llvm.memset.p0i8.i64(i8* %mot_ctx28, i8 0, i64 16, i32 8, i1 false), !dbg !702
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then24
  ret %struct.CSobj* %0, !dbg !703
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: optsize
declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #2

; Function Attrs: optsize
declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #2

; Function Attrs: nounwind optsize uwtable
define void @store_coding_state(%struct.CSobj* nocapture %cs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.CSobj* %cs}, i64 0, metadata !169), !dbg !704
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !705, !tbaa !671
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !705
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !705, !tbaa !671
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7, !dbg !705
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !705, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %2}, i64 0, metadata !175), !dbg !705
  %tex_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8, !dbg !706
  %3 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !dbg !706, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.TextureInfoContexts* %3}, i64 0, metadata !176), !dbg !706
  %mot_ctx2 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 4, !dbg !707
  %4 = load %struct.MotionInfoContexts** %mot_ctx2, align 8, !dbg !707, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %4}, i64 0, metadata !177), !dbg !707
  %tex_ctx3 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 5, !dbg !708
  %5 = load %struct.TextureInfoContexts** %tex_ctx3, align 8, !dbg !708, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.TextureInfoContexts* %5}, i64 0, metadata !178), !dbg !708
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !709
  %6 = load i32* %current_mb_nr, align 4, !dbg !709, !tbaa !685
  %idxprom = sext i32 %6 to i64, !dbg !709
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !709
  %7 = load %struct.macroblock** %mb_data, align 8, !dbg !709, !tbaa !671
  %8 = load %struct.InputParameters** @input, align 8, !dbg !710, !tbaa !671
  %rdopt = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 85, !dbg !710
  %9 = load i32* %rdopt, align 4, !dbg !710, !tbaa !685
  %tobool = icmp eq i32 %9, 0, !dbg !710
  br i1 %tobool, label %return, label %if.end, !dbg !710

if.end:                                           ; preds = %entry
  %symbol_mode = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 3, !dbg !711
  %10 = load i32* %symbol_mode, align 4, !dbg !711, !tbaa !685
  %cmp = icmp eq i32 %10, 1, !dbg !711
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !170), !dbg !712
  %no_part = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 0, !dbg !712
  br i1 %cmp, label %for.cond.preheader, label %for.cond19.preheader, !dbg !711

for.cond19.preheader:                             ; preds = %if.end
  %bitstream36 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2, !dbg !715
  br label %for.cond19, !dbg !719

for.cond.preheader:                               ; preds = %if.end
  %encenv = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 1, !dbg !720
  %bitstream17 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2, !dbg !722
  br label %for.cond, !dbg !712

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %11 = phi %struct.ImageParameters* [ %0, %for.cond.preheader ], [ %.pre, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 49, !dbg !712
  %12 = load %struct.Picture** %currentPicture, align 8, !dbg !712, !tbaa !671
  %idr_flag = getelementptr inbounds %struct.Picture* %12, i64 0, i32 1, !dbg !712
  %13 = load i32* %idr_flag, align 4, !dbg !712, !tbaa !685
  %tobool5 = icmp eq i32 %13, 0, !dbg !712
  br i1 %tobool5, label %cond.false, label %cond.end, !dbg !712

cond.false:                                       ; preds = %for.cond
  %14 = load i32* %no_part, align 4, !dbg !712, !tbaa !685
  br label %cond.end, !dbg !712

cond.end:                                         ; preds = %for.cond, %cond.false
  %cond = phi i32 [ %14, %cond.false ], [ 1, %for.cond ], !dbg !712
  %15 = trunc i64 %indvars.iv to i32, !dbg !712
  %cmp6 = icmp slt i32 %15, %cond, !dbg !712
  br i1 %cmp6, label %for.body, label %for.end, !dbg !712

for.body:                                         ; preds = %cond.end
  %currentSlice8 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 50, !dbg !723
  %16 = load %struct.Slice** %currentSlice8, align 8, !dbg !723, !tbaa !671
  %partArr = getelementptr inbounds %struct.Slice* %16, i64 0, i32 6, !dbg !723
  %17 = load %struct.datapartition** %partArr, align 8, !dbg !723, !tbaa !671
  %ee_cabac = getelementptr inbounds %struct.datapartition* %17, i64 %indvars.iv, i32 1, !dbg !723
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %ee_cabac}, i64 0, metadata !171), !dbg !723
  %bitstream = getelementptr inbounds %struct.datapartition* %17, i64 %indvars.iv, i32 0, !dbg !724
  %18 = load %struct.Bitstream** %bitstream, align 8, !dbg !724, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %18}, i64 0, metadata !173), !dbg !724
  %19 = load %struct.EncodingEnvironment** %encenv, align 8, !dbg !720, !tbaa !671
  %arrayidx15 = getelementptr inbounds %struct.EncodingEnvironment* %19, i64 %indvars.iv, !dbg !720
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %arrayidx15}, i64 0, metadata !172), !dbg !720
  %20 = load %struct.Bitstream** %bitstream17, align 8, !dbg !722, !tbaa !671
  %arrayidx18 = getelementptr inbounds %struct.Bitstream* %20, i64 %indvars.iv, !dbg !722
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %arrayidx18}, i64 0, metadata !174), !dbg !722
  %21 = bitcast %struct.EncodingEnvironment* %arrayidx15 to i8*, !dbg !725
  %22 = bitcast %struct.EncodingEnvironment* %ee_cabac to i8*, !dbg !725
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 104, i32 8, i1 false), !dbg !725
  %23 = bitcast %struct.Bitstream* %arrayidx18 to i8*, !dbg !726
  %24 = bitcast %struct.Bitstream* %18 to i8*, !dbg !726
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 48, i32 8, i1 false), !dbg !726
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !712
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !712, !tbaa !671
  br label %for.cond, !dbg !712

for.end:                                          ; preds = %cond.end
  %25 = bitcast %struct.MotionInfoContexts* %4 to i8*, !dbg !727
  %26 = bitcast %struct.MotionInfoContexts* %2 to i8*, !dbg !727
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 1504, i32 8, i1 false), !dbg !727
  %27 = bitcast %struct.TextureInfoContexts* %5 to i8*, !dbg !728
  %28 = bitcast %struct.TextureInfoContexts* %3 to i8*, !dbg !728
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 12128, i32 8, i1 false), !dbg !728
  br label %if.end41, !dbg !729

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body29
  %29 = phi %struct.ImageParameters* [ %0, %for.cond19.preheader ], [ %.pre73, %for.body29 ]
  %indvars.iv71 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next72, %for.body29 ]
  %currentPicture20 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 49, !dbg !719
  %30 = load %struct.Picture** %currentPicture20, align 8, !dbg !719, !tbaa !671
  %idr_flag21 = getelementptr inbounds %struct.Picture* %30, i64 0, i32 1, !dbg !719
  %31 = load i32* %idr_flag21, align 4, !dbg !719, !tbaa !685
  %tobool22 = icmp eq i32 %31, 0, !dbg !719
  br i1 %tobool22, label %cond.false24, label %cond.end26, !dbg !719

cond.false24:                                     ; preds = %for.cond19
  %32 = load i32* %no_part, align 4, !dbg !719, !tbaa !685
  br label %cond.end26, !dbg !719

cond.end26:                                       ; preds = %for.cond19, %cond.false24
  %cond27 = phi i32 [ %32, %cond.false24 ], [ 1, %for.cond19 ], !dbg !719
  %33 = trunc i64 %indvars.iv71 to i32, !dbg !719
  %cmp28 = icmp slt i32 %33, %cond27, !dbg !719
  br i1 %cmp28, label %for.body29, label %if.end41, !dbg !719

for.body29:                                       ; preds = %cond.end26
  %currentSlice31 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 50, !dbg !730
  %34 = load %struct.Slice** %currentSlice31, align 8, !dbg !730, !tbaa !671
  %partArr32 = getelementptr inbounds %struct.Slice* %34, i64 0, i32 6, !dbg !730
  %35 = load %struct.datapartition** %partArr32, align 8, !dbg !730, !tbaa !671
  %bitstream34 = getelementptr inbounds %struct.datapartition* %35, i64 %indvars.iv71, i32 0, !dbg !730
  %36 = load %struct.Bitstream** %bitstream34, align 8, !dbg !730, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %36}, i64 0, metadata !173), !dbg !730
  %37 = load %struct.Bitstream** %bitstream36, align 8, !dbg !715, !tbaa !671
  %arrayidx37 = getelementptr inbounds %struct.Bitstream* %37, i64 %indvars.iv71, !dbg !715
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %arrayidx37}, i64 0, metadata !174), !dbg !715
  %38 = bitcast %struct.Bitstream* %arrayidx37 to i8*, !dbg !731
  %39 = bitcast %struct.Bitstream* %36 to i8*, !dbg !731
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 48, i32 8, i1 false), !dbg !731
  %indvars.iv.next72 = add i64 %indvars.iv71, 1, !dbg !719
  %.pre73 = load %struct.ImageParameters** @img, align 8, !dbg !719, !tbaa !671
  br label %for.cond19, !dbg !719

if.end41:                                         ; preds = %cond.end26, %for.end
  %currSEnr = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 0, !dbg !732
  %40 = load i32* %currSEnr, align 4, !dbg !732, !tbaa !685
  %currSEnr42 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 6, !dbg !732
  store i32 %40, i32* %currSEnr42, align 4, !dbg !732, !tbaa !685
  %bitcounter = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 7, !dbg !733
  %41 = bitcast [8 x i32]* %bitcounter to i8*, !dbg !733
  %bitcounter43 = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 5, !dbg !733
  %42 = bitcast [8 x i32]* %bitcounter43 to i8*, !dbg !733
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 4, i1 false), !dbg !733
  %mvd = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 8, !dbg !734
  %43 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd to i8*, !dbg !734
  %mvd44 = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 9, !dbg !734
  %44 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd44 to i8*, !dbg !734
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 256, i32 4, i1 false), !dbg !734
  %cbp_bits = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 16, !dbg !735
  %45 = load i64* %cbp_bits, align 8, !dbg !735, !tbaa !736
  %cbp_bits45 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 9, !dbg !735
  store i64 %45, i64* %cbp_bits45, align 8, !dbg !735, !tbaa !736
  br label %return, !dbg !735

return:                                           ; preds = %entry, %if.end41
  ret void, !dbg !735
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define void @reset_coding_state(%struct.CSobj* nocapture %cs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.CSobj* %cs}, i64 0, metadata !240), !dbg !737
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !738, !tbaa !671
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !738
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !738, !tbaa !671
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7, !dbg !738
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !738, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %2}, i64 0, metadata !246), !dbg !738
  %tex_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8, !dbg !739
  %3 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !dbg !739, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.TextureInfoContexts* %3}, i64 0, metadata !247), !dbg !739
  %mot_ctx2 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 4, !dbg !740
  %4 = load %struct.MotionInfoContexts** %mot_ctx2, align 8, !dbg !740, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %4}, i64 0, metadata !248), !dbg !740
  %tex_ctx3 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 5, !dbg !741
  %5 = load %struct.TextureInfoContexts** %tex_ctx3, align 8, !dbg !741, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.TextureInfoContexts* %5}, i64 0, metadata !249), !dbg !741
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !742
  %6 = load i32* %current_mb_nr, align 4, !dbg !742, !tbaa !685
  %idxprom = sext i32 %6 to i64, !dbg !742
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !742
  %7 = load %struct.macroblock** %mb_data, align 8, !dbg !742, !tbaa !671
  %8 = load %struct.InputParameters** @input, align 8, !dbg !743, !tbaa !671
  %rdopt = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 85, !dbg !743
  %9 = load i32* %rdopt, align 4, !dbg !743, !tbaa !685
  %tobool = icmp eq i32 %9, 0, !dbg !743
  br i1 %tobool, label %return, label %if.end, !dbg !743

if.end:                                           ; preds = %entry
  %symbol_mode = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 3, !dbg !744
  %10 = load i32* %symbol_mode, align 4, !dbg !744, !tbaa !685
  %cmp = icmp eq i32 %10, 1, !dbg !744
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !241), !dbg !745
  %no_part = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 0, !dbg !745
  br i1 %cmp, label %for.cond.preheader, label %for.cond19.preheader, !dbg !744

for.cond19.preheader:                             ; preds = %if.end
  %bitstream36 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2, !dbg !748
  br label %for.cond19, !dbg !752

for.cond.preheader:                               ; preds = %if.end
  %encenv = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 1, !dbg !753
  %bitstream17 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2, !dbg !755
  br label %for.cond, !dbg !745

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %11 = phi %struct.ImageParameters* [ %0, %for.cond.preheader ], [ %.pre, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 49, !dbg !745
  %12 = load %struct.Picture** %currentPicture, align 8, !dbg !745, !tbaa !671
  %idr_flag = getelementptr inbounds %struct.Picture* %12, i64 0, i32 1, !dbg !745
  %13 = load i32* %idr_flag, align 4, !dbg !745, !tbaa !685
  %tobool5 = icmp eq i32 %13, 0, !dbg !745
  br i1 %tobool5, label %cond.false, label %cond.end, !dbg !745

cond.false:                                       ; preds = %for.cond
  %14 = load i32* %no_part, align 4, !dbg !745, !tbaa !685
  br label %cond.end, !dbg !745

cond.end:                                         ; preds = %for.cond, %cond.false
  %cond = phi i32 [ %14, %cond.false ], [ 1, %for.cond ], !dbg !745
  %15 = trunc i64 %indvars.iv to i32, !dbg !745
  %cmp6 = icmp slt i32 %15, %cond, !dbg !745
  br i1 %cmp6, label %for.body, label %for.end, !dbg !745

for.body:                                         ; preds = %cond.end
  %currentSlice8 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 50, !dbg !756
  %16 = load %struct.Slice** %currentSlice8, align 8, !dbg !756, !tbaa !671
  %partArr = getelementptr inbounds %struct.Slice* %16, i64 0, i32 6, !dbg !756
  %17 = load %struct.datapartition** %partArr, align 8, !dbg !756, !tbaa !671
  %ee_cabac = getelementptr inbounds %struct.datapartition* %17, i64 %indvars.iv, i32 1, !dbg !756
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %ee_cabac}, i64 0, metadata !243), !dbg !756
  %bitstream = getelementptr inbounds %struct.datapartition* %17, i64 %indvars.iv, i32 0, !dbg !757
  %18 = load %struct.Bitstream** %bitstream, align 8, !dbg !757, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %18}, i64 0, metadata !245), !dbg !757
  %19 = load %struct.EncodingEnvironment** %encenv, align 8, !dbg !753, !tbaa !671
  %arrayidx15 = getelementptr inbounds %struct.EncodingEnvironment* %19, i64 %indvars.iv, !dbg !753
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %arrayidx15}, i64 0, metadata !242), !dbg !753
  %20 = load %struct.Bitstream** %bitstream17, align 8, !dbg !755, !tbaa !671
  %arrayidx18 = getelementptr inbounds %struct.Bitstream* %20, i64 %indvars.iv, !dbg !755
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %arrayidx18}, i64 0, metadata !244), !dbg !755
  %21 = bitcast %struct.EncodingEnvironment* %ee_cabac to i8*, !dbg !758
  %22 = bitcast %struct.EncodingEnvironment* %arrayidx15 to i8*, !dbg !758
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 104, i32 8, i1 false), !dbg !758
  %23 = bitcast %struct.Bitstream* %18 to i8*, !dbg !759
  %24 = bitcast %struct.Bitstream* %arrayidx18 to i8*, !dbg !759
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 48, i32 8, i1 false), !dbg !759
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !745
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !745, !tbaa !671
  br label %for.cond, !dbg !745

for.end:                                          ; preds = %cond.end
  %25 = bitcast %struct.MotionInfoContexts* %2 to i8*, !dbg !760
  %26 = bitcast %struct.MotionInfoContexts* %4 to i8*, !dbg !760
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 1504, i32 8, i1 false), !dbg !760
  %27 = bitcast %struct.TextureInfoContexts* %3 to i8*, !dbg !761
  %28 = bitcast %struct.TextureInfoContexts* %5 to i8*, !dbg !761
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 12128, i32 8, i1 false), !dbg !761
  br label %if.end41, !dbg !762

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body29
  %29 = phi %struct.ImageParameters* [ %0, %for.cond19.preheader ], [ %.pre73, %for.body29 ]
  %indvars.iv71 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next72, %for.body29 ]
  %currentPicture20 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 49, !dbg !752
  %30 = load %struct.Picture** %currentPicture20, align 8, !dbg !752, !tbaa !671
  %idr_flag21 = getelementptr inbounds %struct.Picture* %30, i64 0, i32 1, !dbg !752
  %31 = load i32* %idr_flag21, align 4, !dbg !752, !tbaa !685
  %tobool22 = icmp eq i32 %31, 0, !dbg !752
  br i1 %tobool22, label %cond.false24, label %cond.end26, !dbg !752

cond.false24:                                     ; preds = %for.cond19
  %32 = load i32* %no_part, align 4, !dbg !752, !tbaa !685
  br label %cond.end26, !dbg !752

cond.end26:                                       ; preds = %for.cond19, %cond.false24
  %cond27 = phi i32 [ %32, %cond.false24 ], [ 1, %for.cond19 ], !dbg !752
  %33 = trunc i64 %indvars.iv71 to i32, !dbg !752
  %cmp28 = icmp slt i32 %33, %cond27, !dbg !752
  br i1 %cmp28, label %for.body29, label %if.end41, !dbg !752

for.body29:                                       ; preds = %cond.end26
  %currentSlice31 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 50, !dbg !763
  %34 = load %struct.Slice** %currentSlice31, align 8, !dbg !763, !tbaa !671
  %partArr32 = getelementptr inbounds %struct.Slice* %34, i64 0, i32 6, !dbg !763
  %35 = load %struct.datapartition** %partArr32, align 8, !dbg !763, !tbaa !671
  %bitstream34 = getelementptr inbounds %struct.datapartition* %35, i64 %indvars.iv71, i32 0, !dbg !763
  %36 = load %struct.Bitstream** %bitstream34, align 8, !dbg !763, !tbaa !671
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %36}, i64 0, metadata !245), !dbg !763
  %37 = load %struct.Bitstream** %bitstream36, align 8, !dbg !748, !tbaa !671
  %arrayidx37 = getelementptr inbounds %struct.Bitstream* %37, i64 %indvars.iv71, !dbg !748
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %arrayidx37}, i64 0, metadata !244), !dbg !748
  %38 = bitcast %struct.Bitstream* %36 to i8*, !dbg !764
  %39 = bitcast %struct.Bitstream* %arrayidx37 to i8*, !dbg !764
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 48, i32 8, i1 false), !dbg !764
  %indvars.iv.next72 = add i64 %indvars.iv71, 1, !dbg !752
  %.pre73 = load %struct.ImageParameters** @img, align 8, !dbg !752, !tbaa !671
  br label %for.cond19, !dbg !752

if.end41:                                         ; preds = %cond.end26, %for.end
  %currSEnr = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 6, !dbg !765
  %40 = load i32* %currSEnr, align 4, !dbg !765, !tbaa !685
  %currSEnr42 = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 0, !dbg !765
  store i32 %40, i32* %currSEnr42, align 4, !dbg !765, !tbaa !685
  %bitcounter = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 5, !dbg !766
  %41 = bitcast [8 x i32]* %bitcounter to i8*, !dbg !766
  %bitcounter43 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 7, !dbg !766
  %42 = bitcast [8 x i32]* %bitcounter43 to i8*, !dbg !766
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 4, i1 false), !dbg !766
  %mvd = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 9, !dbg !767
  %43 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd to i8*, !dbg !767
  %mvd44 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 8, !dbg !767
  %44 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd44 to i8*, !dbg !767
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 256, i32 4, i1 false), !dbg !767
  %cbp_bits = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 9, !dbg !768
  %45 = load i64* %cbp_bits, align 8, !dbg !768, !tbaa !736
  %cbp_bits45 = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 16, !dbg !768
  store i64 %45, i64* %cbp_bits45, align 8, !dbg !768, !tbaa !736
  br label %return, !dbg !768

return:                                           ; preds = %entry, %if.end41
  ret void, !dbg !768
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !24, metadata !25, metadata !251, metadata !24, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8, metadata !13}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 178, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 178, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"UVLC", i64 0} ; [ DW_TAG_enumerator ] [UVLC :: 0]
!7 = metadata !{i32 786472, metadata !"CABAC", i64 1} ; [ DW_TAG_enumerator ] [CABAC :: 1]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!9 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!10 = metadata !{metadata !11, metadata !12}
!11 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!12 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!13 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 154, i64 32, i64 32, i32 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 154, size 32, align 32, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23}
!15 = metadata !{i32 786472, metadata !"BITS_HEADER", i64 0} ; [ DW_TAG_enumerator ] [BITS_HEADER :: 0]
!16 = metadata !{i32 786472, metadata !"BITS_TOTAL_MB", i64 1} ; [ DW_TAG_enumerator ] [BITS_TOTAL_MB :: 1]
!17 = metadata !{i32 786472, metadata !"BITS_MB_MODE", i64 2} ; [ DW_TAG_enumerator ] [BITS_MB_MODE :: 2]
!18 = metadata !{i32 786472, metadata !"BITS_INTER_MB", i64 3} ; [ DW_TAG_enumerator ] [BITS_INTER_MB :: 3]
!19 = metadata !{i32 786472, metadata !"BITS_CBP_MB", i64 4} ; [ DW_TAG_enumerator ] [BITS_CBP_MB :: 4]
!20 = metadata !{i32 786472, metadata !"BITS_COEFF_Y_MB", i64 5} ; [ DW_TAG_enumerator ] [BITS_COEFF_Y_MB :: 5]
!21 = metadata !{i32 786472, metadata !"BITS_COEFF_UV_MB", i64 6} ; [ DW_TAG_enumerator ] [BITS_COEFF_UV_MB :: 6]
!22 = metadata !{i32 786472, metadata !"BITS_DELTA_QUANT_MB", i64 7} ; [ DW_TAG_enumerator ] [BITS_DELTA_QUANT_MB :: 7]
!23 = metadata !{i32 786472, metadata !"MAX_BITCOUNTER_MB", i64 8} ; [ DW_TAG_enumerator ] [MAX_BITCOUNTER_MB :: 8]
!24 = metadata !{i32 0}
!25 = metadata !{metadata !26, metadata !162, metadata !167, metadata !238}
!26 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"delete_coding_state", metadata !"delete_coding_state", metadata !"", i32 34, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CSobj*)* @delete_coding_state, null, null, metadata !160, i32 35} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 35] [delete_coding_state]
!27 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{null, metadata !30}
!30 = metadata !{i32 786454, metadata !1, null, metadata !"CSptr", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [CSptr] [line 42, size 0, align 0, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CSobj]
!32 = metadata !{i32 786454, metadata !1, null, metadata !"CSobj", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [CSobj] [line 41, size 0, align 0, offset 0] [from ]
!33 = metadata !{i32 786451, metadata !34, null, metadata !"", i32 22, i64 2816, i64 64, i32 0, i32 0, null, metadata !35, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 22, size 2816, align 64, offset 0] [from ]
!34 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!35 = metadata !{metadata !36, metadata !38, metadata !68, metadata !84, metadata !85, metadata !124, metadata !151, metadata !152, metadata !156, metadata !159}
!36 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"no_part", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [no_part] [line 25, size 32, align 32, offset 0] [from int]
!37 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!38 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"encenv", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [encenv] [line 26, size 64, align 64, offset 64] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!40 = metadata !{i32 786454, metadata !34, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!41 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !42, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!42 = metadata !{metadata !43, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !53, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67}
!43 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!44 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!45 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!46 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !44} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!47 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!48 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!49 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !50} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!51 = metadata !{i32 786454, metadata !4, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!52 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!53 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !54} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!55 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!56 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !44} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!57 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !44} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!58 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !44} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!59 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !44} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!60 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !50} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!61 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !54} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!62 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !37} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!63 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !37} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!64 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !37} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!65 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !37} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!66 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !37} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!67 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !37} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!68 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"bitstream", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [bitstream] [line 27, size 64, align 64, offset 128] [from ]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!70 = metadata !{i32 786454, metadata !34, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!71 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !72, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83}
!73 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!74 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!75 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !51} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!76 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !37} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!77 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!78 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !51} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!79 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !51} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!80 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !37} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!81 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !37} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!82 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !50} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!83 = metadata !{i32 786445, metadata !4, metadata !71, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !37} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!84 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"symbol_mode", i32 30, i64 32, i64 32, i64 192, i32 0, metadata !37} ; [ DW_TAG_member ] [symbol_mode] [line 30, size 32, align 32, offset 192] [from int]
!85 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"mot_ctx", i32 31, i64 64, i64 64, i64 256, i32 0, metadata !86} ; [ DW_TAG_member ] [mot_ctx] [line 31, size 64, align 64, offset 256] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!87 = metadata !{i32 786454, metadata !34, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!88 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !89, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!89 = metadata !{metadata !90, metadata !103, metadata !108, metadata !112, metadata !116, metadata !120, metadata !121}
!90 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!91 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !92, metadata !100, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!92 = metadata !{i32 786454, metadata !4, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!93 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!94 = metadata !{metadata !95, metadata !97, metadata !98}
!95 = metadata !{i32 786445, metadata !4, metadata !93, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!96 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!97 = metadata !{i32 786445, metadata !4, metadata !93, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !52} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!98 = metadata !{i32 786445, metadata !4, metadata !93, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !99} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!99 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!100 = metadata !{metadata !101, metadata !102}
!101 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!102 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!103 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !104} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!104 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !92, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!105 = metadata !{metadata !106, metadata !107}
!106 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!107 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!108 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !109} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!109 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !92, metadata !110, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!110 = metadata !{metadata !106, metadata !111}
!111 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!112 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !113} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!113 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !92, metadata !114, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!114 = metadata !{metadata !106, metadata !115}
!115 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!116 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !117} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!117 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !92, metadata !118, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!118 = metadata !{metadata !119}
!119 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!120 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !117} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!121 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !122} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!122 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !92, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!123 = metadata !{metadata !101}
!124 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"tex_ctx", i32 32, i64 64, i64 64, i64 320, i32 0, metadata !125} ; [ DW_TAG_member ] [tex_ctx] [line 32, size 64, align 64, offset 320] [from ]
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!126 = metadata !{i32 786454, metadata !34, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!127 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !128, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!128 = metadata !{metadata !129, metadata !132, metadata !133, metadata !136, metadata !139, metadata !143, metadata !144, metadata !148, metadata !149, metadata !150}
!129 = metadata !{i32 786445, metadata !4, metadata !127, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!130 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !92, metadata !131, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!131 = metadata !{metadata !106}
!132 = metadata !{i32 786445, metadata !4, metadata !127, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !117} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!133 = metadata !{i32 786445, metadata !4, metadata !127, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !134} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!134 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !92, metadata !135, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!135 = metadata !{metadata !101, metadata !119}
!136 = metadata !{i32 786445, metadata !4, metadata !127, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !137} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!137 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !92, metadata !138, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!138 = metadata !{metadata !111, metadata !119}
!139 = metadata !{i32 786445, metadata !4, metadata !127, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !140} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!140 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !92, metadata !141, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!141 = metadata !{metadata !111, metadata !142}
!142 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!143 = metadata !{i32 786445, metadata !4, metadata !127, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !140} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!144 = metadata !{i32 786445, metadata !4, metadata !127, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !145} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!145 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !92, metadata !146, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!146 = metadata !{metadata !111, metadata !147}
!147 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!148 = metadata !{i32 786445, metadata !4, metadata !127, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !145} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!149 = metadata !{i32 786445, metadata !4, metadata !127, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !140} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!150 = metadata !{i32 786445, metadata !4, metadata !127, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !140} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!151 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"currSEnr", i32 35, i64 32, i64 32, i64 384, i32 0, metadata !37} ; [ DW_TAG_member ] [currSEnr] [line 35, size 32, align 32, offset 384] [from int]
!152 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"bitcounter", i32 36, i64 256, i64 32, i64 416, i32 0, metadata !153} ; [ DW_TAG_member ] [bitcounter] [line 36, size 256, align 32, offset 416] [from ]
!153 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !37, metadata !154, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!154 = metadata !{metadata !155}
!155 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!156 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"mvd", i32 39, i64 2048, i64 32, i64 672, i32 0, metadata !157} ; [ DW_TAG_member ] [mvd] [line 39, size 2048, align 32, offset 672] [from ]
!157 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !37, metadata !158, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!158 = metadata !{metadata !106, metadata !119, metadata !119, metadata !106}
!159 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"cbp_bits", i32 40, i64 64, i64 64, i64 2752, i32 0, metadata !99} ; [ DW_TAG_member ] [cbp_bits] [line 40, size 64, align 64, offset 2752] [from long unsigned int]
!160 = metadata !{metadata !161}
!161 = metadata !{i32 786689, metadata !26, metadata !"cs", metadata !27, i32 16777250, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cs] [line 34]
!162 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"create_coding_state", metadata !"create_coding_state", metadata !"", i32 60, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, %struct.CSobj* ()* @create_coding_state, null, null, metadata !165, i32 61} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 61] [create_coding_state]
!163 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !30}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 786688, metadata !162, metadata !"cs", metadata !27, i32 62, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cs] [line 62]
!167 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"store_coding_state", metadata !"store_coding_state", metadata !"", i32 106, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CSobj*)* @store_coding_state, null, null, metadata !168, i32 107} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 107] [store_coding_state]
!168 = metadata !{metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179}
!169 = metadata !{i32 786689, metadata !167, metadata !"cs", metadata !27, i32 16777322, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cs] [line 106]
!170 = metadata !{i32 786688, metadata !167, metadata !"i", metadata !27, i32 108, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 108]
!171 = metadata !{i32 786688, metadata !167, metadata !"ee_src", metadata !27, i32 110, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ee_src] [line 110]
!172 = metadata !{i32 786688, metadata !167, metadata !"ee_dest", metadata !27, i32 110, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ee_dest] [line 110]
!173 = metadata !{i32 786688, metadata !167, metadata !"bs_src", metadata !27, i32 111, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bs_src] [line 111]
!174 = metadata !{i32 786688, metadata !167, metadata !"bs_dest", metadata !27, i32 111, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bs_dest] [line 111]
!175 = metadata !{i32 786688, metadata !167, metadata !"mc_src", metadata !27, i32 113, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mc_src] [line 113]
!176 = metadata !{i32 786688, metadata !167, metadata !"tc_src", metadata !27, i32 114, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tc_src] [line 114]
!177 = metadata !{i32 786688, metadata !167, metadata !"mc_dest", metadata !27, i32 115, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mc_dest] [line 115]
!178 = metadata !{i32 786688, metadata !167, metadata !"tc_dest", metadata !27, i32 116, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tc_dest] [line 116]
!179 = metadata !{i32 786688, metadata !167, metadata !"currMB", metadata !27, i32 117, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 117]
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Macroblock]
!181 = metadata !{i32 786454, metadata !4, null, metadata !"Macroblock", i32 406, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ] [Macroblock] [line 406, size 0, align 0, offset 0] [from macroblock]
!182 = metadata !{i32 786451, metadata !4, null, metadata !"macroblock", i32 351, i64 5056, i64 64, i32 0, i32 0, null, metadata !183, i32 0, null, null} ; [ DW_TAG_structure_type ] [macroblock] [line 351, size 5056, align 64, offset 0] [from ]
!183 = metadata !{metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !192, metadata !193, metadata !194, metadata !195, metadata !199, metadata !200, metadata !201, metadata !205, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237}
!184 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"currSEnr", i32 353, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [currSEnr] [line 353, size 32, align 32, offset 0] [from int]
!185 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"slice_nr", i32 354, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [slice_nr] [line 354, size 32, align 32, offset 32] [from int]
!186 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"delta_qp", i32 355, i64 32, i64 32, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [delta_qp] [line 355, size 32, align 32, offset 64] [from int]
!187 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"qp", i32 356, i64 32, i64 32, i64 96, i32 0, metadata !37} ; [ DW_TAG_member ] [qp] [line 356, size 32, align 32, offset 96] [from int]
!188 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"qpsp", i32 357, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [qpsp] [line 357, size 32, align 32, offset 128] [from int]
!189 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"bitcounter", i32 358, i64 256, i64 32, i64 160, i32 0, metadata !153} ; [ DW_TAG_member ] [bitcounter] [line 358, size 256, align 32, offset 160] [from ]
!190 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mb_available_up", i32 360, i64 64, i64 64, i64 448, i32 0, metadata !191} ; [ DW_TAG_member ] [mb_available_up] [line 360, size 64, align 64, offset 448] [from ]
!191 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macroblock]
!192 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mb_available_left", i32 361, i64 64, i64 64, i64 512, i32 0, metadata !191} ; [ DW_TAG_member ] [mb_available_left] [line 361, size 64, align 64, offset 512] [from ]
!193 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mb_type", i32 363, i64 32, i64 32, i64 576, i32 0, metadata !37} ; [ DW_TAG_member ] [mb_type] [line 363, size 32, align 32, offset 576] [from int]
!194 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mvd", i32 364, i64 2048, i64 32, i64 608, i32 0, metadata !157} ; [ DW_TAG_member ] [mvd] [line 364, size 2048, align 32, offset 608] [from ]
!195 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"intra_pred_modes", i32 365, i64 512, i64 32, i64 2656, i32 0, metadata !196} ; [ DW_TAG_member ] [intra_pred_modes] [line 365, size 512, align 32, offset 2656] [from ]
!196 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !37, metadata !197, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!197 = metadata !{metadata !198}
!198 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!199 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"intra_pred_modes8x8", i32 366, i64 512, i64 32, i64 3168, i32 0, metadata !196} ; [ DW_TAG_member ] [intra_pred_modes8x8] [line 366, size 512, align 32, offset 3168] [from ]
!200 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"cbp", i32 367, i64 32, i64 32, i64 3680, i32 0, metadata !37} ; [ DW_TAG_member ] [cbp] [line 367, size 32, align 32, offset 3680] [from int]
!201 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"cbp_blk", i32 368, i64 64, i64 64, i64 3712, i32 0, metadata !202} ; [ DW_TAG_member ] [cbp_blk] [line 368, size 64, align 64, offset 3712] [from int64]
!202 = metadata !{i32 786454, metadata !4, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!203 = metadata !{i32 786454, metadata !4, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!204 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!205 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"b8mode", i32 369, i64 128, i64 32, i64 3776, i32 0, metadata !206} ; [ DW_TAG_member ] [b8mode] [line 369, size 128, align 32, offset 3776] [from ]
!206 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !37, metadata !118, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!207 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"b8pdir", i32 370, i64 128, i64 32, i64 3904, i32 0, metadata !206} ; [ DW_TAG_member ] [b8pdir] [line 370, size 128, align 32, offset 3904] [from ]
!208 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"cbp_bits", i32 371, i64 64, i64 64, i64 4032, i32 0, metadata !99} ; [ DW_TAG_member ] [cbp_bits] [line 371, size 64, align 64, offset 4032] [from long unsigned int]
!209 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"lf_disable", i32 373, i64 32, i64 32, i64 4096, i32 0, metadata !37} ; [ DW_TAG_member ] [lf_disable] [line 373, size 32, align 32, offset 4096] [from int]
!210 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"lf_alpha_c0_offset", i32 374, i64 32, i64 32, i64 4128, i32 0, metadata !37} ; [ DW_TAG_member ] [lf_alpha_c0_offset] [line 374, size 32, align 32, offset 4128] [from int]
!211 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"lf_beta_offset", i32 375, i64 32, i64 32, i64 4160, i32 0, metadata !37} ; [ DW_TAG_member ] [lf_beta_offset] [line 375, size 32, align 32, offset 4160] [from int]
!212 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"c_ipred_mode", i32 377, i64 32, i64 32, i64 4192, i32 0, metadata !37} ; [ DW_TAG_member ] [c_ipred_mode] [line 377, size 32, align 32, offset 4192] [from int]
!213 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"IntraChromaPredModeFlag", i32 378, i64 32, i64 32, i64 4224, i32 0, metadata !37} ; [ DW_TAG_member ] [IntraChromaPredModeFlag] [line 378, size 32, align 32, offset 4224] [from int]
!214 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mb_field", i32 380, i64 32, i64 32, i64 4256, i32 0, metadata !37} ; [ DW_TAG_member ] [mb_field] [line 380, size 32, align 32, offset 4256] [from int]
!215 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mbAddrA", i32 382, i64 32, i64 32, i64 4288, i32 0, metadata !37} ; [ DW_TAG_member ] [mbAddrA] [line 382, size 32, align 32, offset 4288] [from int]
!216 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mbAddrB", i32 382, i64 32, i64 32, i64 4320, i32 0, metadata !37} ; [ DW_TAG_member ] [mbAddrB] [line 382, size 32, align 32, offset 4320] [from int]
!217 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mbAddrC", i32 382, i64 32, i64 32, i64 4352, i32 0, metadata !37} ; [ DW_TAG_member ] [mbAddrC] [line 382, size 32, align 32, offset 4352] [from int]
!218 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mbAddrD", i32 382, i64 32, i64 32, i64 4384, i32 0, metadata !37} ; [ DW_TAG_member ] [mbAddrD] [line 382, size 32, align 32, offset 4384] [from int]
!219 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mbAvailA", i32 383, i64 32, i64 32, i64 4416, i32 0, metadata !37} ; [ DW_TAG_member ] [mbAvailA] [line 383, size 32, align 32, offset 4416] [from int]
!220 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mbAvailB", i32 383, i64 32, i64 32, i64 4448, i32 0, metadata !37} ; [ DW_TAG_member ] [mbAvailB] [line 383, size 32, align 32, offset 4448] [from int]
!221 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mbAvailC", i32 383, i64 32, i64 32, i64 4480, i32 0, metadata !37} ; [ DW_TAG_member ] [mbAvailC] [line 383, size 32, align 32, offset 4480] [from int]
!222 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"mbAvailD", i32 383, i64 32, i64 32, i64 4512, i32 0, metadata !37} ; [ DW_TAG_member ] [mbAvailD] [line 383, size 32, align 32, offset 4512] [from int]
!223 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"all_blk_8x8", i32 385, i64 32, i64 32, i64 4544, i32 0, metadata !37} ; [ DW_TAG_member ] [all_blk_8x8] [line 385, size 32, align 32, offset 4544] [from int]
!224 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"luma_transform_size_8x8_flag", i32 386, i64 32, i64 32, i64 4576, i32 0, metadata !37} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 386, size 32, align 32, offset 4576] [from int]
!225 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"NoMbPartLessThan8x8Flag", i32 387, i64 32, i64 32, i64 4608, i32 0, metadata !37} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 387, size 32, align 32, offset 4608] [from int]
!226 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"bi_pred_me", i32 390, i64 32, i64 32, i64 4640, i32 0, metadata !37} ; [ DW_TAG_member ] [bi_pred_me] [line 390, size 32, align 32, offset 4640] [from int]
!227 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"actj", i32 394, i64 64, i64 64, i64 4672, i32 0, metadata !228} ; [ DW_TAG_member ] [actj] [line 394, size 64, align 64, offset 4672] [from double]
!228 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!229 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"prev_qp", i32 395, i64 32, i64 32, i64 4736, i32 0, metadata !37} ; [ DW_TAG_member ] [prev_qp] [line 395, size 32, align 32, offset 4736] [from int]
!230 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"prev_delta_qp", i32 396, i64 32, i64 32, i64 4768, i32 0, metadata !37} ; [ DW_TAG_member ] [prev_delta_qp] [line 396, size 32, align 32, offset 4768] [from int]
!231 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"prev_cbp", i32 397, i64 32, i64 32, i64 4800, i32 0, metadata !37} ; [ DW_TAG_member ] [prev_cbp] [line 397, size 32, align 32, offset 4800] [from int]
!232 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"predict_qp", i32 398, i64 32, i64 32, i64 4832, i32 0, metadata !37} ; [ DW_TAG_member ] [predict_qp] [line 398, size 32, align 32, offset 4832] [from int]
!233 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"predict_error", i32 399, i64 32, i64 32, i64 4864, i32 0, metadata !37} ; [ DW_TAG_member ] [predict_error] [line 399, size 32, align 32, offset 4864] [from int]
!234 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"LFDisableIdc", i32 401, i64 32, i64 32, i64 4896, i32 0, metadata !37} ; [ DW_TAG_member ] [LFDisableIdc] [line 401, size 32, align 32, offset 4896] [from int]
!235 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"LFAlphaC0Offset", i32 402, i64 32, i64 32, i64 4928, i32 0, metadata !37} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 402, size 32, align 32, offset 4928] [from int]
!236 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"LFBetaOffset", i32 403, i64 32, i64 32, i64 4960, i32 0, metadata !37} ; [ DW_TAG_member ] [LFBetaOffset] [line 403, size 32, align 32, offset 4960] [from int]
!237 = metadata !{i32 786445, metadata !4, metadata !182, metadata !"skip_flag", i32 405, i64 32, i64 32, i64 4992, i32 0, metadata !37} ; [ DW_TAG_member ] [skip_flag] [line 405, size 32, align 32, offset 4992] [from int]
!238 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"reset_coding_state", metadata !"reset_coding_state", metadata !"", i32 169, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CSobj*)* @reset_coding_state, null, null, metadata !239, i32 170} ; [ DW_TAG_subprogram ] [line 169] [def] [scope 170] [reset_coding_state]
!239 = metadata !{metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250}
!240 = metadata !{i32 786689, metadata !238, metadata !"cs", metadata !27, i32 16777385, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cs] [line 169]
!241 = metadata !{i32 786688, metadata !238, metadata !"i", metadata !27, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 171]
!242 = metadata !{i32 786688, metadata !238, metadata !"ee_src", metadata !27, i32 173, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ee_src] [line 173]
!243 = metadata !{i32 786688, metadata !238, metadata !"ee_dest", metadata !27, i32 173, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ee_dest] [line 173]
!244 = metadata !{i32 786688, metadata !238, metadata !"bs_src", metadata !27, i32 174, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bs_src] [line 174]
!245 = metadata !{i32 786688, metadata !238, metadata !"bs_dest", metadata !27, i32 174, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bs_dest] [line 174]
!246 = metadata !{i32 786688, metadata !238, metadata !"mc_dest", metadata !27, i32 176, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mc_dest] [line 176]
!247 = metadata !{i32 786688, metadata !238, metadata !"tc_dest", metadata !27, i32 177, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tc_dest] [line 177]
!248 = metadata !{i32 786688, metadata !238, metadata !"mc_src", metadata !27, i32 178, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mc_src] [line 178]
!249 = metadata !{i32 786688, metadata !238, metadata !"tc_src", metadata !27, i32 179, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tc_src] [line 179]
!250 = metadata !{i32 786688, metadata !238, metadata !"currMB", metadata !27, i32 180, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 180]
!251 = metadata !{metadata !252, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !347, metadata !349, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !391, metadata !486, metadata !487, metadata !488, metadata !490, metadata !491, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !510, metadata !511, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !527, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !538, metadata !541, metadata !542, metadata !543, metadata !544, metadata !547, metadata !548, metadata !559, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666}
!252 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !253, i32 558, metadata !254, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!253 = metadata !{i32 786473, metadata !4}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!254 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !255} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!255 = metadata !{i32 786454, metadata !4, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !256} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!256 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !257, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!257 = metadata !{metadata !258, metadata !259, metadata !260, metadata !335, metadata !336, metadata !338, metadata !339}
!258 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!259 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!260 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !261} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!261 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !262, metadata !333, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!262 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !263} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!263 = metadata !{i32 786454, metadata !4, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!264 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !265, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!265 = metadata !{metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !306, metadata !307, metadata !308, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !330}
!266 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!267 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!268 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!269 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !37} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!270 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!271 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !37} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!272 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !273} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!273 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!274 = metadata !{i32 786454, metadata !4, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!275 = metadata !{i32 786451, metadata !4, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !276, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!276 = metadata !{metadata !277, metadata !278, metadata !279}
!277 = metadata !{i32 786445, metadata !4, metadata !275, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!278 = metadata !{i32 786445, metadata !4, metadata !275, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!279 = metadata !{i32 786445, metadata !4, metadata !275, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !280} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!280 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!281 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!282 = metadata !{metadata !37, metadata !283, metadata !305}
!283 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !284} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!284 = metadata !{i32 786454, metadata !4, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !285} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!285 = metadata !{i32 786451, metadata !4, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !286, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!286 = metadata !{metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !299}
!287 = metadata !{i32 786445, metadata !4, metadata !285, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!288 = metadata !{i32 786445, metadata !4, metadata !285, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!289 = metadata !{i32 786445, metadata !4, metadata !285, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!290 = metadata !{i32 786445, metadata !4, metadata !285, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !37} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!291 = metadata !{i32 786445, metadata !4, metadata !285, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!292 = metadata !{i32 786445, metadata !4, metadata !285, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!293 = metadata !{i32 786445, metadata !4, metadata !285, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !37} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!294 = metadata !{i32 786445, metadata !4, metadata !285, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !37} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!295 = metadata !{i32 786445, metadata !4, metadata !285, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !296} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!296 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!297 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!298 = metadata !{null, metadata !37, metadata !37, metadata !54, metadata !54}
!299 = metadata !{i32 786445, metadata !4, metadata !285, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !300} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!300 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !301} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!301 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!302 = metadata !{null, metadata !303, metadata !304}
!303 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !285} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!304 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!305 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!306 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !86} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!307 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !125} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!308 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !309} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!309 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !310} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!310 = metadata !{i32 786454, metadata !4, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !311} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!311 = metadata !{i32 786451, metadata !4, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !312, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!312 = metadata !{metadata !313, metadata !314, metadata !315}
!313 = metadata !{i32 786445, metadata !4, metadata !311, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!314 = metadata !{i32 786445, metadata !4, metadata !311, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!315 = metadata !{i32 786445, metadata !4, metadata !311, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !316} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!316 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !311} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!317 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !37} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!318 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !54} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!319 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !54} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!320 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !54} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!321 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !37} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!322 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !54} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!323 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !54} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!324 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !54} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!325 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !326} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!326 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !327} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!327 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!328 = metadata !{metadata !329, metadata !37}
!329 = metadata !{i32 786454, metadata !4, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!330 = metadata !{i32 786445, metadata !4, metadata !264, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !331} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!331 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !37, metadata !332, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!332 = metadata !{metadata !101, metadata !106}
!333 = metadata !{metadata !334}
!334 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!335 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !37} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!336 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !337} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!337 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!338 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !337} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!339 = metadata !{i32 786445, metadata !4, metadata !256, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !337} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!340 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !253, i32 559, metadata !254, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!341 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !253, i32 560, metadata !254, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!342 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !253, i32 561, metadata !254, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!343 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !253, i32 562, metadata !254, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!344 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !253, i32 565, metadata !345, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!345 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !346} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!346 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!347 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !253, i32 566, metadata !348, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!348 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !345} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!349 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !253, i32 567, metadata !350, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!350 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!351 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !253, i32 569, metadata !44, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!352 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !253, i32 570, metadata !44, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!353 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !253, i32 572, metadata !37, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!354 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !253, i32 572, metadata !37, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!355 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !253, i32 573, metadata !356, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!356 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !357} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!357 = metadata !{i32 786454, metadata !4, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !358} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!358 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !359, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!359 = metadata !{metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390}
!360 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !329} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!361 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!362 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !44} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!363 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !329} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!364 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !329} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!365 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !329} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!366 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !153} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!367 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !329} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!368 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !44} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!369 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !44} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!370 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !371} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!371 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !44, metadata !154, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!372 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !371} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!373 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !371} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!374 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !329} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!375 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !44} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!376 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !44} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!377 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !50} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!378 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !37} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!379 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !37} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!380 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !329} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!381 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !44} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!382 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !37} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!383 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !37} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!384 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !37} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!385 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !37} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!386 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !37} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!387 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !329} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!388 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !329} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!389 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !329} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!390 = metadata !{i32 786445, metadata !9, metadata !358, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !329} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!391 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !253, i32 574, metadata !392, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!392 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !393} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!393 = metadata !{i32 786454, metadata !4, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !394} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!394 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !395, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!395 = metadata !{metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433}
!396 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !329} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!397 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!398 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !329} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!399 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !329} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!400 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !329} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!401 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !329} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!402 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!403 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !44} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!404 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!405 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !329} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!406 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !153} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!407 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!408 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !44} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!409 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !44} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!410 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !44} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!411 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !44} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!412 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !329} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!413 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !37} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!414 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !37} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!415 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !44} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!416 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !417} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!417 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !37, metadata !418, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!418 = metadata !{metadata !419}
!419 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!420 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !44} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!421 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !329} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!422 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !44} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!423 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !44} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!424 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !329} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!425 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !329} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!426 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !329} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!427 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !329} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!428 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !44} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!429 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !44} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!430 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !44} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!431 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !44} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!432 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !329} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!433 = metadata !{i32 786445, metadata !9, metadata !394, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !434} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!434 = metadata !{i32 786454, metadata !9, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !435} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!435 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !436, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!436 = metadata !{metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485}
!437 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !329} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!438 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!439 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !44} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!440 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!441 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !329} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!442 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !329} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!443 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !329} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!444 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !44} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!445 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !329} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!446 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !329} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!447 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!448 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !44} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!449 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !44} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!450 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !329} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!451 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !44} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!452 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !44} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!453 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !329} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!454 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !44} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!455 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!456 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !329} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!457 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !329} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!458 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !459} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!459 = metadata !{i32 786454, metadata !9, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !460} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!460 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !461, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!461 = metadata !{metadata !462, metadata !463, metadata !464, metadata !465, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474}
!462 = metadata !{i32 786445, metadata !9, metadata !460, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!463 = metadata !{i32 786445, metadata !9, metadata !460, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!464 = metadata !{i32 786445, metadata !9, metadata !460, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !44} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!465 = metadata !{i32 786445, metadata !9, metadata !460, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !466} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!466 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !44, metadata !467, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!467 = metadata !{metadata !468}
!468 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!469 = metadata !{i32 786445, metadata !9, metadata !460, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !466} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!470 = metadata !{i32 786445, metadata !9, metadata !460, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !466} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!471 = metadata !{i32 786445, metadata !9, metadata !460, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !44} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!472 = metadata !{i32 786445, metadata !9, metadata !460, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !44} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!473 = metadata !{i32 786445, metadata !9, metadata !460, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !44} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!474 = metadata !{i32 786445, metadata !9, metadata !460, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !44} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!475 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !329} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!476 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !459} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!477 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !329} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!478 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !329} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!479 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !329} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!480 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !44} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!481 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !44} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!482 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !44} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!483 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !44} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!484 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !44} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!485 = metadata !{i32 786445, metadata !9, metadata !435, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !44} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!486 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !253, i32 578, metadata !37, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!487 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !253, i32 579, metadata !37, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!488 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !253, i32 583, metadata !489, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!489 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !350} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!490 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !253, i32 584, metadata !489, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!491 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !253, i32 585, metadata !492, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!492 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !489} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!493 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !253, i32 586, metadata !37, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!494 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !253, i32 587, metadata !37, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!495 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !253, i32 588, metadata !37, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!496 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !253, i32 589, metadata !37, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!497 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !253, i32 592, metadata !345, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!498 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !253, i32 593, metadata !345, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!499 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !253, i32 595, metadata !348, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!500 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !253, i32 596, metadata !348, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!501 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !253, i32 598, metadata !345, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!502 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !253, i32 599, metadata !348, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!503 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !253, i32 601, metadata !345, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!504 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !253, i32 602, metadata !348, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!505 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !253, i32 604, metadata !506, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!506 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !507} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!507 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !508} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!508 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !509} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!509 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!510 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !253, i32 605, metadata !507, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!511 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !253, i32 608, metadata !512, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!512 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!513 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !253, i32 609, metadata !512, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!514 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !253, i32 610, metadata !37, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!515 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !253, i32 612, metadata !37, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!516 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !253, i32 612, metadata !37, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!517 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !253, i32 612, metadata !37, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!518 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !253, i32 613, metadata !37, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!519 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !253, i32 613, metadata !37, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!520 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !253, i32 613, metadata !37, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!521 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !253, i32 614, metadata !37, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!522 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !253, i32 617, metadata !523, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!523 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !524, metadata !525, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!524 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!525 = metadata !{metadata !526}
!526 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!527 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !253, i32 620, metadata !528, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!528 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !37, metadata !529, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!529 = metadata !{metadata !198, metadata !198}
!530 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !253, i32 620, metadata !528, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!531 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !253, i32 620, metadata !528, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!532 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !253, i32 621, metadata !528, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!533 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !253, i32 621, metadata !528, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!534 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !253, i32 621, metadata !528, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!535 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !253, i32 622, metadata !536, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!536 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !37, metadata !537, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!537 = metadata !{metadata !101, metadata !198, metadata !198}
!538 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !253, i32 623, metadata !539, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!539 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !37, metadata !540, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!540 = metadata !{metadata !106, metadata !119, metadata !119}
!541 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !253, i32 623, metadata !539, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!542 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !253, i32 624, metadata !539, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!543 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !253, i32 624, metadata !539, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!544 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !253, i32 625, metadata !545, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!545 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !37, metadata !546, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!546 = metadata !{metadata !119, metadata !119}
!547 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !253, i32 625, metadata !196, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!548 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !253, i32 1201, metadata !549, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!549 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !550} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!550 = metadata !{i32 786454, metadata !4, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !551} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!551 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !552, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!552 = metadata !{metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558}
!553 = metadata !{i32 786445, metadata !4, metadata !551, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!554 = metadata !{i32 786445, metadata !4, metadata !551, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!555 = metadata !{i32 786445, metadata !4, metadata !551, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!556 = metadata !{i32 786445, metadata !4, metadata !551, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !37} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!557 = metadata !{i32 786445, metadata !4, metadata !551, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!558 = metadata !{i32 786445, metadata !4, metadata !551, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !37} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!559 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !253, i32 1202, metadata !560, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!560 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !561} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!561 = metadata !{i32 786454, metadata !4, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !562} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!562 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !563, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!563 = metadata !{metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !583, metadata !584, metadata !585, metadata !586, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594}
!564 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!565 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !528} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!566 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !528} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!567 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !528} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!568 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !492} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!569 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !489} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!570 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !37} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!571 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !37} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!572 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !206} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!573 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !206} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!574 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !350} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!575 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !196} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!576 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !37} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!577 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !202} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!578 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !37} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!579 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !580} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!580 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !581} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!581 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !582} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!582 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !506} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!583 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !580} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!584 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !580} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!585 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !580} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!586 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !587} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!587 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !509, metadata !540, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!588 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !37} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!589 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !37} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!590 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !37} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!591 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !37} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!592 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !37} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!593 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !37} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!594 = metadata !{i32 786445, metadata !4, metadata !562, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !37} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!595 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !253, i32 1203, metadata !561, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!596 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !253, i32 1203, metadata !561, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!597 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !253, i32 1204, metadata !561, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!598 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !253, i32 1204, metadata !561, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!599 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !253, i32 1230, metadata !600, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!600 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !601} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!601 = metadata !{i32 786454, metadata !4, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !602} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!602 = metadata !{i32 786451, metadata !603, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !604, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!603 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!604 = metadata !{metadata !605, metadata !606, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !626, metadata !627, metadata !628, metadata !629, metadata !631, metadata !632, metadata !634, metadata !638, metadata !640, metadata !642, metadata !643, metadata !644, metadata !645, metadata !646, metadata !648, metadata !649}
!605 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!606 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!607 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !524} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!608 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!609 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!610 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!611 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!612 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!613 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!614 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!615 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!616 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!617 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !607} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!618 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !619} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!619 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !620} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!620 = metadata !{i32 786451, metadata !603, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !621, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!621 = metadata !{metadata !622, metadata !623, metadata !625}
!622 = metadata !{i32 786445, metadata !603, metadata !620, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !619} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!623 = metadata !{i32 786445, metadata !603, metadata !620, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !624} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!624 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !602} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!625 = metadata !{i32 786445, metadata !603, metadata !620, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!626 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !624} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!627 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !37} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!628 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!629 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !630} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!630 = metadata !{i32 786454, metadata !603, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!631 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !96} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!632 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !633} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!633 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!634 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !635} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!635 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !524, metadata !636, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!636 = metadata !{metadata !637}
!637 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!638 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !639} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!639 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!640 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !641} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!641 = metadata !{i32 786454, metadata !603, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!642 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !639} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!643 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !639} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!644 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !639} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!645 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !639} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!646 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !647} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!647 = metadata !{i32 786454, metadata !603, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!648 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !37} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!649 = metadata !{i32 786445, metadata !603, metadata !602, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !650} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!650 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !524, metadata !651, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!651 = metadata !{metadata !652}
!652 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!653 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !253, i32 1231, metadata !600, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!654 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !253, i32 1232, metadata !600, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!655 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !253, i32 1233, metadata !37, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!656 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !253, i32 1234, metadata !37, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!657 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !253, i32 1237, metadata !658, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!658 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !37, metadata !651, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!659 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !253, i32 1238, metadata !658, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!660 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !253, i32 1239, metadata !658, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!661 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !253, i32 1240, metadata !658, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!662 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !253, i32 1241, metadata !658, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!663 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !253, i32 1242, metadata !658, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!664 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !253, i32 1456, metadata !37, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!665 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !253, i32 1465, metadata !37, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!666 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !253, i32 1466, metadata !37, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!667 = metadata !{i32 34, i32 0, metadata !26, null}
!668 = metadata !{i32 36, i32 0, metadata !26, null}
!669 = metadata !{i32 39, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !26, i32 37, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!671 = metadata !{metadata !"any pointer", metadata !672}
!672 = metadata !{metadata !"omnipotent char", metadata !673}
!673 = metadata !{metadata !"Simple C/C++ TBAA"}
!674 = metadata !{i32 40, i32 0, metadata !670, null}
!675 = metadata !{i32 43, i32 0, metadata !670, null}
!676 = metadata !{i32 44, i32 0, metadata !670, null}
!677 = metadata !{i32 47, i32 0, metadata !670, null}
!678 = metadata !{%struct.CSobj* null}
!679 = metadata !{i32 48, i32 0, metadata !670, null}
!680 = metadata !{i32 49, i32 0, metadata !670, null}
!681 = metadata !{i32 50, i32 0, metadata !26, null}
!682 = metadata !{i32 65, i32 0, metadata !162, null}
!683 = metadata !{i32 66, i32 0, metadata !162, null}
!684 = metadata !{i32 69, i32 0, metadata !162, null}
!685 = metadata !{metadata !"int", metadata !672}
!686 = metadata !{i32 70, i32 0, metadata !162, null}
!687 = metadata !{i32 72, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !162, i32 71, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!689 = metadata !{i32 73, i32 0, metadata !688, null}
!690 = metadata !{i32 77, i32 0, metadata !691, null}
!691 = metadata !{i32 786443, metadata !1, metadata !162, i32 76, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!692 = metadata !{i32 79, i32 0, metadata !162, null}
!693 = metadata !{i32 80, i32 0, metadata !162, null}
!694 = metadata !{i32 83, i32 0, metadata !162, null}
!695 = metadata !{i32 84, i32 0, metadata !162, null}
!696 = metadata !{i32 86, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !162, i32 85, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!698 = metadata !{i32 87, i32 0, metadata !697, null}
!699 = metadata !{i32 88, i32 0, metadata !697, null}
!700 = metadata !{i32 91, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !162, i32 90, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!702 = metadata !{i32 92, i32 0, metadata !701, null}
!703 = metadata !{i32 95, i32 0, metadata !162, null}
!704 = metadata !{i32 106, i32 0, metadata !167, null}
!705 = metadata !{i32 113, i32 0, metadata !167, null}
!706 = metadata !{i32 114, i32 0, metadata !167, null}
!707 = metadata !{i32 115, i32 0, metadata !167, null}
!708 = metadata !{i32 116, i32 0, metadata !167, null}
!709 = metadata !{i32 117, i32 0, metadata !167, null}
!710 = metadata !{i32 120, i32 0, metadata !167, null}
!711 = metadata !{i32 122, i32 0, metadata !167, null}
!712 = metadata !{i32 126, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !714, i32 126, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!714 = metadata !{i32 786443, metadata !1, metadata !167, i32 123, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!715 = metadata !{i32 148, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !717, i32 146, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!717 = metadata !{i32 786443, metadata !1, metadata !718, i32 145, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!718 = metadata !{i32 786443, metadata !1, metadata !167, i32 143, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!719 = metadata !{i32 145, i32 0, metadata !717, null}
!720 = metadata !{i32 130, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !713, i32 127, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!722 = metadata !{i32 131, i32 0, metadata !721, null}
!723 = metadata !{i32 128, i32 0, metadata !721, null}
!724 = metadata !{i32 129, i32 0, metadata !721, null}
!725 = metadata !{i32 133, i32 0, metadata !721, null}
!726 = metadata !{i32 134, i32 0, metadata !721, null}
!727 = metadata !{i32 138, i32 0, metadata !714, null}
!728 = metadata !{i32 139, i32 0, metadata !714, null}
!729 = metadata !{i32 141, i32 0, metadata !714, null}
!730 = metadata !{i32 147, i32 0, metadata !716, null}
!731 = metadata !{i32 149, i32 0, metadata !716, null}
!732 = metadata !{i32 153, i32 0, metadata !167, null}
!733 = metadata !{i32 154, i32 0, metadata !167, null}
!734 = metadata !{i32 157, i32 0, metadata !167, null}
!735 = metadata !{i32 158, i32 0, metadata !167, null}
!736 = metadata !{metadata !"long", metadata !672}
!737 = metadata !{i32 169, i32 0, metadata !238, null}
!738 = metadata !{i32 176, i32 0, metadata !238, null}
!739 = metadata !{i32 177, i32 0, metadata !238, null}
!740 = metadata !{i32 178, i32 0, metadata !238, null}
!741 = metadata !{i32 179, i32 0, metadata !238, null}
!742 = metadata !{i32 180, i32 0, metadata !238, null}
!743 = metadata !{i32 183, i32 0, metadata !238, null}
!744 = metadata !{i32 185, i32 0, metadata !238, null}
!745 = metadata !{i32 189, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !747, i32 189, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!747 = metadata !{i32 786443, metadata !1, metadata !238, i32 186, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!748 = metadata !{i32 215, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !750, i32 213, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!750 = metadata !{i32 786443, metadata !1, metadata !751, i32 211, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!751 = metadata !{i32 786443, metadata !1, metadata !238, i32 208, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!752 = metadata !{i32 211, i32 0, metadata !750, null}
!753 = metadata !{i32 193, i32 0, metadata !754, null}
!754 = metadata !{i32 786443, metadata !1, metadata !746, i32 190, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c]
!755 = metadata !{i32 194, i32 0, metadata !754, null}
!756 = metadata !{i32 191, i32 0, metadata !754, null}
!757 = metadata !{i32 192, i32 0, metadata !754, null}
!758 = metadata !{i32 197, i32 0, metadata !754, null}
!759 = metadata !{i32 198, i32 0, metadata !754, null}
!760 = metadata !{i32 203, i32 0, metadata !747, null}
!761 = metadata !{i32 204, i32 0, metadata !747, null}
!762 = metadata !{i32 206, i32 0, metadata !747, null}
!763 = metadata !{i32 214, i32 0, metadata !749, null}
!764 = metadata !{i32 218, i32 0, metadata !749, null}
!765 = metadata !{i32 223, i32 0, metadata !238, null}
!766 = metadata !{i32 224, i32 0, metadata !238, null}
!767 = metadata !{i32 227, i32 0, metadata !238, null}
!768 = metadata !{i32 228, i32 0, metadata !238, null}
