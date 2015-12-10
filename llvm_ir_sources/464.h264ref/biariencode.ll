; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c'
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
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@rLPS_table_64x4 = constant [64 x [4 x i8]] [[4 x i8] c"\80\B0\D0\F0", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"{\96\B2\CD", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"o\87\A0\B9", [4 x i8] c"i\80\98\AF", [4 x i8] c"dz\90\A6", [4 x i8] c"_t\89\9E", [4 x i8] c"Zn\82\96", [4 x i8] c"Uh{\8E", [4 x i8] c"Qcu\87", [4 x i8] c"M^o\80", [4 x i8] c"IYiz", [4 x i8] c"EUdt", [4 x i8] c"BP_n", [4 x i8] c">LZh", [4 x i8] c";HVc", [4 x i8] c"8EQ^", [4 x i8] c"5AMY", [4 x i8] c"3>IU", [4 x i8] c"0;EP", [4 x i8] c".8BL", [4 x i8] c"+5?H", [4 x i8] c")2;E", [4 x i8] c"'08A", [4 x i8] c"%-6>", [4 x i8] c"#+3;", [4 x i8] c"!)08", [4 x i8] c" '.5", [4 x i8] c"\1E%+2", [4 x i8] c"\1D#)0", [4 x i8] c"\1B!'-", [4 x i8] c"\1A\1F%+", [4 x i8] c"\18\1E#)", [4 x i8] c"\17\1C!'", [4 x i8] c"\16\1B %", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\14\18\1D!", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\07\08\09", [4 x i8] c"\02\02\02\02"], align 16
@AC_next_state_MPS_64 = constant [64 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 62, i16 63], align 16
@AC_next_state_LPS_64 = constant [64 x i16] [i16 0, i16 0, i16 1, i16 2, i16 2, i16 4, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 9, i16 11, i16 11, i16 12, i16 13, i16 13, i16 15, i16 15, i16 16, i16 16, i16 18, i16 18, i16 19, i16 19, i16 21, i16 21, i16 22, i16 22, i16 23, i16 24, i16 24, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 29, i16 29, i16 30, i16 30, i16 30, i16 31, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 38, i16 38, i16 63], align 16
@binCount = global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"arienco_create_encoding_environment: eep\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str1 = private unnamed_addr constant [33 x i8] c"Error freeing eep (NULL pointer)\00", align 1
@img = external global %struct.ImageParameters*
@stats = external global %struct.StatParameters*
@cabac_encoding = external global i32
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

; Function Attrs: nounwind optsize uwtable
define noalias %struct.EncodingEnvironment* @arienco_create_encoding_environment() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 104) #5, !dbg !622
  %0 = bitcast i8* %call to %struct.EncodingEnvironment*, !dbg !622
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %0}, i64 0, metadata !48), !dbg !622
  %cmp = icmp eq i8* %call, null, !dbg !622
  br i1 %cmp, label %if.then, label %if.end, !dbg !622

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0)) #5, !dbg !623
  br label %if.end, !dbg !623

if.end:                                           ; preds = %if.then, %entry
  ret %struct.EncodingEnvironment* %0, !dbg !624
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @arienco_delete_encoding_environment(%struct.EncodingEnvironment* %eep) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep}, i64 0, metadata !53), !dbg !625
  %cmp = icmp eq %struct.EncodingEnvironment* %eep, null, !dbg !626
  br i1 %cmp, label %if.then, label %if.else, !dbg !626

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([33 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !627
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 200) #5, !dbg !629
  br label %if.end, !dbg !630

if.else:                                          ; preds = %entry
  %0 = bitcast %struct.EncodingEnvironment* %eep to i8*, !dbg !631
  tail call void @free(i8* %0) #5, !dbg !631
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !632
}

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @arienco_start_encoding(%struct.EncodingEnvironment* nocapture %eep, i8* %code_buffer, i32* %code_len, i32 %slice_type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep}, i64 0, metadata !59), !dbg !633
  tail call void @llvm.dbg.value(metadata !{i8* %code_buffer}, i64 0, metadata !60), !dbg !634
  tail call void @llvm.dbg.value(metadata !{i32* %code_len}, i64 0, metadata !61), !dbg !635
  tail call void @llvm.dbg.value(metadata !{i32 %slice_type}, i64 0, metadata !62), !dbg !635
  %Elow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0, !dbg !636
  store i32 0, i32* %Elow, align 4, !dbg !636, !tbaa !637
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !640
  store i32 0, i32* %Ebits_to_follow, align 4, !dbg !640, !tbaa !637
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !641
  store i32 0, i32* %Ebuffer, align 4, !dbg !641, !tbaa !637
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !642
  store i32 9, i32* %Ebits_to_go, align 4, !dbg !642, !tbaa !637
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !643
  store i8* %code_buffer, i8** %Ecodestrm, align 8, !dbg !643, !tbaa !644
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !645
  store i32* %code_len, i32** %Ecodestrm_len, align 8, !dbg !645, !tbaa !644
  %Erange = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1, !dbg !646
  store i32 510, i32* %Erange, align 4, !dbg !646, !tbaa !637
  %C = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !647
  store i32 0, i32* %C, align 4, !dbg !647, !tbaa !637
  %0 = load i32* %code_len, align 4, !dbg !648, !tbaa !637
  %B = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 18, !dbg !648
  store i32 %0, i32* %B, align 4, !dbg !648, !tbaa !637
  %E = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !649
  store i32 0, i32* %E, align 4, !dbg !649, !tbaa !637
  ret void, !dbg !650
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @arienco_bits_written(%struct.EncodingEnvironment* nocapture %eep) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep}, i64 0, metadata !67), !dbg !651
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !652
  %0 = load i32** %Ecodestrm_len, align 8, !dbg !652, !tbaa !644
  %1 = load i32* %0, align 4, !dbg !652, !tbaa !637
  %mul = shl i32 %1, 3, !dbg !652
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !652
  %2 = load i32* %Ebits_to_follow, align 4, !dbg !652, !tbaa !637
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !652
  %3 = load i32* %Ebits_to_go, align 4, !dbg !652, !tbaa !637
  %add = add i32 %2, 8, !dbg !652
  %add1 = add i32 %add, %mul, !dbg !652
  %sub = sub i32 %add1, %3, !dbg !652
  ret i32 %sub, !dbg !652
}

; Function Attrs: nounwind optsize uwtable
define void @arienco_done_encoding(%struct.EncodingEnvironment* %eep) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep}, i64 0, metadata !70), !dbg !653
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !654
  %0 = load i32* %Ebuffer, align 4, !dbg !654, !tbaa !637
  %shl = shl i32 %0, 1, !dbg !654
  %Elow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0, !dbg !654
  %1 = load i32* %Elow, align 4, !dbg !654, !tbaa !637
  %shr = lshr i32 %1, 9, !dbg !654
  %and = and i32 %shr, 1, !dbg !654
  %or = or i32 %and, %shl, !dbg !654
  store i32 %or, i32* %Ebuffer, align 4, !dbg !654, !tbaa !637
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !654
  %2 = load i32* %Ebits_to_go, align 4, !dbg !654, !tbaa !637
  %dec = add i32 %2, -1, !dbg !654
  store i32 %dec, i32* %Ebits_to_go, align 4, !dbg !654, !tbaa !637
  %cmp = icmp eq i32 %dec, 0, !dbg !654
  br i1 %cmp, label %if.then, label %while.cond8.preheader, !dbg !654

while.cond8.preheader:                            ; preds = %if.then, %while.body.lr.ph, %entry
  %3 = phi i32 [ %dec, %entry ], [ 8, %while.body.lr.ph ], [ 8, %if.then ]
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !657
  %4 = load i32* %Ebits_to_follow, align 4, !dbg !657, !tbaa !637
  %cmp9229 = icmp eq i32 %4, 0, !dbg !657
  br i1 %cmp9229, label %while.end45, label %while.body11.lr.ph, !dbg !657

while.body11.lr.ph:                               ; preds = %while.cond8.preheader
  %Ecodestrm_len28 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !658
  %Ecodestrm31 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !658
  %C35 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !658
  %E41 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !662
  br label %while.body11, !dbg !657

if.then:                                          ; preds = %entry
  %conv = trunc i32 %or to i8, !dbg !664
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !664
  %5 = load i32** %Ecodestrm_len, align 8, !dbg !664, !tbaa !644
  %6 = load i32* %5, align 4, !dbg !664, !tbaa !637
  %inc = add nsw i32 %6, 1, !dbg !664
  store i32 %inc, i32* %5, align 4, !dbg !664, !tbaa !637
  %idxprom = sext i32 %6 to i64, !dbg !664
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !664
  %7 = load i8** %Ecodestrm, align 8, !dbg !664, !tbaa !644
  %arrayidx = getelementptr inbounds i8* %7, i64 %idxprom, !dbg !664
  store i8 %conv, i8* %arrayidx, align 1, !dbg !664, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !664, !tbaa !637
  %C = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !664
  %8 = load i32* %C, align 4, !dbg !664, !tbaa !637
  %cmp4230 = icmp sgt i32 %8, 7, !dbg !664
  br i1 %cmp4230, label %while.body.lr.ph, label %while.cond8.preheader, !dbg !664

while.body.lr.ph:                                 ; preds = %if.then
  %E = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !666
  %E.promoted = load i32* %E, align 4, !dbg !666, !tbaa !637
  %9 = add i32 %8, -8, !dbg !664
  %10 = lshr i32 %9, 3, !dbg !664
  %11 = add i32 %E.promoted, %10, !dbg !664
  %12 = shl nuw i32 %10, 3, !dbg !664
  %13 = add i32 %11, 1, !dbg !664
  %14 = sub i32 %9, %12, !dbg !664
  store i32 %14, i32* %C, align 4, !dbg !666, !tbaa !637
  store i32 %13, i32* %E, align 4, !dbg !666, !tbaa !637
  br label %while.cond8.preheader, !dbg !664

while.cond8.loopexit:                             ; preds = %while.body38.lr.ph, %if.then25
  %.pre233 = load i32* %Ebits_to_follow, align 4, !dbg !657, !tbaa !637
  br label %while.cond8.backedge

while.body11:                                     ; preds = %while.cond8.backedge, %while.body11.lr.ph
  %15 = phi i32 [ %3, %while.body11.lr.ph ], [ %21, %while.cond8.backedge ], !dbg !668
  %16 = phi i32 [ %4, %while.body11.lr.ph ], [ %20, %while.cond8.backedge ]
  %dec13 = add i32 %16, -1, !dbg !668
  store i32 %dec13, i32* %Ebits_to_follow, align 4, !dbg !668, !tbaa !637
  %17 = load i32* %Ebuffer, align 4, !dbg !669, !tbaa !637
  %18 = shl i32 %17, 1, !dbg !669
  %19 = load i32* %Elow, align 4, !dbg !669, !tbaa !637
  %and18 = lshr i32 %19, 9, !dbg !669
  %and18.lobit = and i32 %and18, 1, !dbg !669
  %shl15 = or i32 %and18.lobit, %18, !dbg !669
  %or20 = xor i32 %shl15, 1, !dbg !669
  store i32 %or20, i32* %Ebuffer, align 4, !dbg !669, !tbaa !637
  %dec22 = add i32 %15, -1, !dbg !669
  store i32 %dec22, i32* %Ebits_to_go, align 4, !dbg !669, !tbaa !637
  %cmp23 = icmp eq i32 %dec22, 0, !dbg !669
  br i1 %cmp23, label %if.then25, label %while.cond8.backedge, !dbg !669

while.cond8.backedge:                             ; preds = %while.body11, %while.cond8.loopexit
  %20 = phi i32 [ %dec13, %while.body11 ], [ %.pre233, %while.cond8.loopexit ]
  %21 = phi i32 [ %dec22, %while.body11 ], [ 8, %while.cond8.loopexit ]
  %cmp9 = icmp eq i32 %20, 0, !dbg !657
  br i1 %cmp9, label %while.end45, label %while.body11, !dbg !657

if.then25:                                        ; preds = %while.body11
  %conv27 = trunc i32 %or20 to i8, !dbg !658
  %22 = load i32** %Ecodestrm_len28, align 8, !dbg !658, !tbaa !644
  %23 = load i32* %22, align 4, !dbg !658, !tbaa !637
  %inc29 = add nsw i32 %23, 1, !dbg !658
  store i32 %inc29, i32* %22, align 4, !dbg !658, !tbaa !637
  %idxprom30 = sext i32 %23 to i64, !dbg !658
  %24 = load i8** %Ecodestrm31, align 8, !dbg !658, !tbaa !644
  %arrayidx32 = getelementptr inbounds i8* %24, i64 %idxprom30, !dbg !658
  store i8 %conv27, i8* %arrayidx32, align 1, !dbg !658, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !658, !tbaa !637
  %25 = load i32* %C35, align 4, !dbg !658, !tbaa !637
  %cmp36227 = icmp sgt i32 %25, 7, !dbg !658
  br i1 %cmp36227, label %while.body38.lr.ph, label %while.cond8.loopexit, !dbg !658

while.body38.lr.ph:                               ; preds = %if.then25
  %E41.promoted = load i32* %E41, align 4, !dbg !662, !tbaa !637
  %26 = add i32 %25, -8, !dbg !658
  %27 = lshr i32 %26, 3, !dbg !658
  %28 = shl nuw i32 %27, 3, !dbg !658
  %29 = add i32 %E41.promoted, 1, !dbg !658
  %30 = add i32 %29, %27, !dbg !658
  %31 = sub i32 %26, %28, !dbg !658
  store i32 %31, i32* %C35, align 4, !dbg !662, !tbaa !637
  store i32 %30, i32* %E41, align 4, !dbg !662, !tbaa !637
  br label %while.cond8.loopexit, !dbg !658

while.end45:                                      ; preds = %while.cond8.backedge, %while.cond8.preheader
  %32 = phi i32 [ %3, %while.cond8.preheader ], [ %21, %while.cond8.backedge ]
  %33 = load i32* %Ebuffer, align 4, !dbg !670, !tbaa !637
  %shl47 = shl i32 %33, 1, !dbg !670
  %34 = load i32* %Elow, align 4, !dbg !670, !tbaa !637
  %shr49 = lshr i32 %34, 8, !dbg !670
  %and50 = and i32 %shr49, 1, !dbg !670
  %or52 = or i32 %and50, %shl47, !dbg !670
  store i32 %or52, i32* %Ebuffer, align 4, !dbg !670, !tbaa !637
  %dec54 = add i32 %32, -1, !dbg !670
  store i32 %dec54, i32* %Ebits_to_go, align 4, !dbg !670, !tbaa !637
  %cmp55 = icmp eq i32 %dec54, 0, !dbg !670
  br i1 %cmp55, label %if.then57, label %if.end76, !dbg !670

if.then57:                                        ; preds = %while.end45
  %conv59 = trunc i32 %or52 to i8, !dbg !672
  %Ecodestrm_len60 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !672
  %35 = load i32** %Ecodestrm_len60, align 8, !dbg !672, !tbaa !644
  %36 = load i32* %35, align 4, !dbg !672, !tbaa !637
  %inc61 = add nsw i32 %36, 1, !dbg !672
  store i32 %inc61, i32* %35, align 4, !dbg !672, !tbaa !637
  %idxprom62 = sext i32 %36 to i64, !dbg !672
  %Ecodestrm63 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !672
  %37 = load i8** %Ecodestrm63, align 8, !dbg !672, !tbaa !644
  %arrayidx64 = getelementptr inbounds i8* %37, i64 %idxprom62, !dbg !672
  store i8 %conv59, i8* %arrayidx64, align 1, !dbg !672, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !672, !tbaa !637
  %C67 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !672
  %38 = load i32* %C67, align 4, !dbg !672, !tbaa !637
  %cmp68225 = icmp sgt i32 %38, 7, !dbg !672
  br i1 %cmp68225, label %while.body70.lr.ph, label %if.end76.thread, !dbg !672

while.body70.lr.ph:                               ; preds = %if.then57
  %E73 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !674
  %E73.promoted = load i32* %E73, align 4, !dbg !674, !tbaa !637
  %39 = add i32 %38, -8, !dbg !672
  %40 = lshr i32 %39, 3, !dbg !672
  %41 = add i32 %E73.promoted, %40, !dbg !672
  %42 = shl nuw i32 %40, 3, !dbg !672
  %43 = add i32 %41, 1, !dbg !672
  %44 = sub i32 %39, %42, !dbg !672
  store i32 %44, i32* %C67, align 4, !dbg !674, !tbaa !637
  store i32 %43, i32* %E73, align 4, !dbg !674, !tbaa !637
  br label %if.end76.thread, !dbg !672

if.end76.thread:                                  ; preds = %if.then57, %while.body70.lr.ph
  %.pre = load i32* %Ebuffer, align 4, !dbg !676, !tbaa !637
  %shl78234 = shl i32 %.pre, 1, !dbg !676
  %or80235 = or i32 %shl78234, 1, !dbg !676
  store i32 %or80235, i32* %Ebuffer, align 4, !dbg !676, !tbaa !637
  store i32 7, i32* %Ebits_to_go, align 4, !dbg !676, !tbaa !637
  br label %if.end76.if.end104_crit_edge, !dbg !676

if.end76:                                         ; preds = %while.end45
  %shl78 = shl i32 %or52, 1, !dbg !676
  %or80 = or i32 %shl78, 1, !dbg !676
  store i32 %or80, i32* %Ebuffer, align 4, !dbg !676, !tbaa !637
  %dec82 = add i32 %32, -2, !dbg !676
  store i32 %dec82, i32* %Ebits_to_go, align 4, !dbg !676, !tbaa !637
  %cmp83 = icmp eq i32 %dec82, 0, !dbg !676
  br i1 %cmp83, label %if.then85, label %if.end76.if.end104_crit_edge, !dbg !676

if.end76.if.end104_crit_edge:                     ; preds = %if.end76.thread, %if.end76
  %dec82238 = phi i32 [ 7, %if.end76.thread ], [ %dec82, %if.end76 ]
  %Ecodestrm_len124.pre = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !678
  %Ecodestrm127.pre = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !678
  %C131.pre = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !678
  br label %if.end104, !dbg !676

if.then85:                                        ; preds = %if.end76
  %conv87 = trunc i32 %or80 to i8, !dbg !681
  %Ecodestrm_len88 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !681
  %45 = load i32** %Ecodestrm_len88, align 8, !dbg !681, !tbaa !644
  %46 = load i32* %45, align 4, !dbg !681, !tbaa !637
  %inc89 = add nsw i32 %46, 1, !dbg !681
  store i32 %inc89, i32* %45, align 4, !dbg !681, !tbaa !637
  %idxprom90 = sext i32 %46 to i64, !dbg !681
  %Ecodestrm91 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !681
  %47 = load i8** %Ecodestrm91, align 8, !dbg !681, !tbaa !644
  %arrayidx92 = getelementptr inbounds i8* %47, i64 %idxprom90, !dbg !681
  store i8 %conv87, i8* %arrayidx92, align 1, !dbg !681, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !681, !tbaa !637
  %C95 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !681
  %48 = load i32* %C95, align 4, !dbg !681, !tbaa !637
  %cmp96223 = icmp sgt i32 %48, 7, !dbg !681
  br i1 %cmp96223, label %while.body98.lr.ph, label %if.end104, !dbg !681

while.body98.lr.ph:                               ; preds = %if.then85
  %E101 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !683
  %E101.promoted = load i32* %E101, align 4, !dbg !683, !tbaa !637
  %49 = add i32 %48, -8, !dbg !681
  %50 = lshr i32 %49, 3, !dbg !681
  %51 = add i32 %E101.promoted, %50, !dbg !681
  %52 = shl nuw i32 %50, 3, !dbg !681
  %53 = add i32 %51, 1, !dbg !681
  %54 = sub i32 %49, %52, !dbg !681
  store i32 %54, i32* %C95, align 4, !dbg !683, !tbaa !637
  store i32 %53, i32* %E101, align 4, !dbg !683, !tbaa !637
  br label %if.end104, !dbg !681

if.end104:                                        ; preds = %if.then85, %while.body98.lr.ph, %if.end76.if.end104_crit_edge
  %C131.pre-phi = phi i32* [ %C131.pre, %if.end76.if.end104_crit_edge ], [ %C95, %while.body98.lr.ph ], [ %C95, %if.then85 ], !dbg !678
  %Ecodestrm127.pre-phi = phi i8** [ %Ecodestrm127.pre, %if.end76.if.end104_crit_edge ], [ %Ecodestrm91, %while.body98.lr.ph ], [ %Ecodestrm91, %if.then85 ], !dbg !678
  %Ecodestrm_len124.pre-phi = phi i32** [ %Ecodestrm_len124.pre, %if.end76.if.end104_crit_edge ], [ %Ecodestrm_len88, %while.body98.lr.ph ], [ %Ecodestrm_len88, %if.then85 ], !dbg !678
  %55 = phi i32 [ %dec82238, %if.end76.if.end104_crit_edge ], [ 8, %while.body98.lr.ph ], [ 8, %if.then85 ]
  %sub106 = sub i32 8, %55, !dbg !685
  %56 = load %struct.ImageParameters** @img, align 8, !dbg !685, !tbaa !644
  %type = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 6, !dbg !685
  %57 = load i32* %type, align 4, !dbg !685, !tbaa !637
  %idxprom107 = sext i32 %57 to i64, !dbg !685
  %58 = load %struct.StatParameters** @stats, align 8, !dbg !685, !tbaa !644
  %arrayidx108 = getelementptr inbounds %struct.StatParameters* %58, i64 0, i32 22, i64 %idxprom107, !dbg !685
  %59 = load i32* %arrayidx108, align 4, !dbg !685, !tbaa !637
  %add = add i32 %sub106, %59, !dbg !685
  store i32 %add, i32* %arrayidx108, align 4, !dbg !685, !tbaa !637
  %E137 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !686
  %.pr.pre = load i32* %Ebits_to_go, align 4, !dbg !688, !tbaa !637
  br label %while.cond109, !dbg !688

while.cond109:                                    ; preds = %if.end104, %while.body134.lr.ph, %if.then121, %while.body113
  %60 = phi i32 [ %dec118, %while.body113 ], [ %.pr.pre, %if.end104 ], [ 8, %while.body134.lr.ph ], [ 8, %if.then121 ], !dbg !688
  %cmp111 = icmp eq i32 %60, 8, !dbg !688
  br i1 %cmp111, label %while.end141, label %while.body113, !dbg !688

while.body113:                                    ; preds = %while.cond109
  %61 = load i32* %Ebuffer, align 4, !dbg !689, !tbaa !637
  %shl115 = shl i32 %61, 1, !dbg !689
  store i32 %shl115, i32* %Ebuffer, align 4, !dbg !689, !tbaa !637
  %dec118 = add i32 %60, -1, !dbg !689
  store i32 %dec118, i32* %Ebits_to_go, align 4, !dbg !689, !tbaa !637
  %cmp119 = icmp eq i32 %dec118, 0, !dbg !689
  br i1 %cmp119, label %if.then121, label %while.cond109, !dbg !689

if.then121:                                       ; preds = %while.body113
  %conv123 = trunc i32 %shl115 to i8, !dbg !678
  %62 = load i32** %Ecodestrm_len124.pre-phi, align 8, !dbg !678, !tbaa !644
  %63 = load i32* %62, align 4, !dbg !678, !tbaa !637
  %inc125 = add nsw i32 %63, 1, !dbg !678
  store i32 %inc125, i32* %62, align 4, !dbg !678, !tbaa !637
  %idxprom126 = sext i32 %63 to i64, !dbg !678
  %64 = load i8** %Ecodestrm127.pre-phi, align 8, !dbg !678, !tbaa !644
  %arrayidx128 = getelementptr inbounds i8* %64, i64 %idxprom126, !dbg !678
  store i8 %conv123, i8* %arrayidx128, align 1, !dbg !678, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !678, !tbaa !637
  %65 = load i32* %C131.pre-phi, align 4, !dbg !678, !tbaa !637
  %cmp132221 = icmp sgt i32 %65, 7, !dbg !678
  br i1 %cmp132221, label %while.body134.lr.ph, label %while.cond109, !dbg !678

while.body134.lr.ph:                              ; preds = %if.then121
  %E137.promoted = load i32* %E137, align 4, !dbg !686, !tbaa !637
  %66 = add i32 %65, -8, !dbg !678
  %67 = lshr i32 %66, 3, !dbg !678
  %68 = shl nuw i32 %67, 3, !dbg !678
  %69 = add i32 %E137.promoted, 1, !dbg !678
  %70 = add i32 %69, %67, !dbg !678
  %71 = sub i32 %66, %68, !dbg !678
  store i32 %71, i32* %C131.pre-phi, align 4, !dbg !686, !tbaa !637
  store i32 %70, i32* %E137, align 4, !dbg !686, !tbaa !637
  br label %while.cond109, !dbg !678

while.end141:                                     ; preds = %while.cond109
  %72 = load i32* %E137, align 4, !dbg !690, !tbaa !637
  %mul = shl i32 %72, 3, !dbg !690
  %73 = load i32* %C131.pre-phi, align 4, !dbg !690, !tbaa !637
  %add144 = add nsw i32 %mul, %73, !dbg !690
  store i32 %add144, i32* %E137, align 4, !dbg !690, !tbaa !637
  %74 = load i32** %Ecodestrm_len124.pre-phi, align 8, !dbg !691, !tbaa !644
  %75 = load i32* %74, align 4, !dbg !691, !tbaa !637
  %B = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 18, !dbg !691
  %76 = load i32* %B, align 4, !dbg !691, !tbaa !637
  %sub147 = sub nsw i32 %75, %76, !dbg !691
  store i32 %sub147, i32* %B, align 4, !dbg !691, !tbaa !637
  %77 = load %struct.ImageParameters** @img, align 8, !dbg !692, !tbaa !644
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 3, !dbg !692
  %78 = load i32* %current_mb_nr, align 4, !dbg !692, !tbaa !637
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 50, !dbg !692
  %79 = load %struct.Slice** %currentSlice, align 8, !dbg !692, !tbaa !644
  %start_mb_nr = getelementptr inbounds %struct.Slice* %79, i64 0, i32 3, !dbg !692
  %80 = load i32* %start_mb_nr, align 4, !dbg !692, !tbaa !637
  %sub149219 = sub i32 31, %78, !dbg !692
  %sub151 = add i32 %sub149219, %80, !dbg !692
  %add153 = add i32 %sub151, %add144, !dbg !693
  %shr154 = ashr i32 %add153, 5, !dbg !693
  store i32 %shr154, i32* %E137, align 4, !dbg !693, !tbaa !637
  ret void, !dbg !694
}

; Function Attrs: nounwind optsize uwtable
define void @biari_encode_symbol(%struct.EncodingEnvironment* %eep, i16 signext %symbol, %struct.BiContextType* nocapture %bi_ct) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep}, i64 0, metadata !86), !dbg !695
  tail call void @llvm.dbg.value(metadata !{i16 %symbol}, i64 0, metadata !87), !dbg !695
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %bi_ct}, i64 0, metadata !88), !dbg !695
  %Erange = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1, !dbg !696
  %0 = load i32* %Erange, align 4, !dbg !696, !tbaa !637
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !89), !dbg !696
  %Elow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0, !dbg !697
  %1 = load i32* %Elow, align 4, !dbg !697, !tbaa !637
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !90), !dbg !697
  %shr = lshr i32 %0, 6, !dbg !698
  %and = and i32 %shr, 3, !dbg !698
  %idxprom = zext i32 %and to i64, !dbg !698
  %state = getelementptr inbounds %struct.BiContextType* %bi_ct, i64 0, i32 0, !dbg !698
  %2 = load i16* %state, align 2, !dbg !698, !tbaa !699
  %idxprom1 = zext i16 %2 to i64, !dbg !698
  %arrayidx2 = getelementptr inbounds [64 x [4 x i8]]* @rLPS_table_64x4, i64 0, i64 %idxprom1, i64 %idxprom, !dbg !698
  %3 = load i8* %arrayidx2, align 1, !dbg !698, !tbaa !638
  %conv = zext i8 %3 to i32, !dbg !698
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !91), !dbg !698
  %4 = load i32* @cabac_encoding, align 4, !dbg !700, !tbaa !637
  %tobool = icmp eq i32 %4, 0, !dbg !700
  br i1 %tobool, label %if.end, label %if.then, !dbg !700

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.BiContextType* %bi_ct, i64 0, i32 2, !dbg !701
  %5 = load i64* %count, align 8, !dbg !701, !tbaa !703
  %inc = add i64 %5, 1, !dbg !701
  store i64 %inc, i64* %count, align 8, !dbg !701, !tbaa !703
  br label %if.end, !dbg !704

if.end:                                           ; preds = %entry, %if.then
  tail call void @llvm.dbg.value(metadata !705, i64 0, metadata !87), !dbg !706
  %not.cmp = icmp ne i16 %symbol, 0, !dbg !707
  %sub = sub i32 %0, %conv, !dbg !708
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !89), !dbg !708
  %conv7 = zext i1 %not.cmp to i32, !dbg !709
  %MPS = getelementptr inbounds %struct.BiContextType* %bi_ct, i64 0, i32 1, !dbg !709
  %6 = load i8* %MPS, align 1, !dbg !709, !tbaa !638
  %conv8 = zext i8 %6 to i32, !dbg !709
  %cmp9 = icmp eq i32 %conv7, %conv8, !dbg !709
  br i1 %cmp9, label %while.cond.preheader, label %if.then11, !dbg !709

if.then11:                                        ; preds = %if.end
  %add = add i32 %sub, %1, !dbg !710
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !90), !dbg !710
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !89), !dbg !712
  %tobool13 = icmp eq i16 %2, 0, !dbg !713
  br i1 %tobool13, label %if.then14, label %while.cond.preheader.thread, !dbg !713

if.then14:                                        ; preds = %if.then11
  %xor = xor i8 %6, 1, !dbg !714
  store i8 %xor, i8* %MPS, align 1, !dbg !714, !tbaa !638
  br label %while.cond.preheader.thread, !dbg !714

while.cond.preheader.thread:                      ; preds = %if.then11, %if.then14
  %storemerge.in254 = getelementptr inbounds [64 x i16]* @AC_next_state_LPS_64, i64 0, i64 %idxprom1, !dbg !715
  %storemerge255 = load i16* %storemerge.in254, align 2, !dbg !715
  store i16 %storemerge255, i16* %state, align 2, !dbg !716, !tbaa !699
  br label %while.body.lr.ph, !dbg !717

while.cond.preheader:                             ; preds = %if.end
  %storemerge.in = getelementptr inbounds [64 x i16]* @AC_next_state_MPS_64, i64 0, i64 %idxprom1, !dbg !715
  %storemerge = load i16* %storemerge.in, align 2, !dbg !715
  store i16 %storemerge, i16* %state, align 2, !dbg !716, !tbaa !699
  %cmp29249 = icmp ult i32 %sub, 256, !dbg !717
  br i1 %cmp29249, label %while.body.lr.ph, label %while.cond.preheader.while.end162_crit_edge, !dbg !717

while.cond.preheader.while.end162_crit_edge:      ; preds = %while.cond.preheader
  %C165.pre = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !718
  br label %while.end162, !dbg !717

while.body.lr.ph:                                 ; preds = %while.cond.preheader.thread, %while.cond.preheader
  %low.0.ph258 = phi i32 [ %add, %while.cond.preheader.thread ], [ %1, %while.cond.preheader ]
  %range.0.ph257 = phi i32 [ %conv, %while.cond.preheader.thread ], [ %sub, %while.cond.preheader ]
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !719
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !719
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !724
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !724
  %C = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !724
  %E = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !726
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !728
  br label %while.body, !dbg !717

while.body:                                       ; preds = %while.body.lr.ph, %if.end159
  %low.0251 = phi i32 [ %low.0.ph258, %while.body.lr.ph ], [ %shl160, %if.end159 ]
  %range.0250 = phi i32 [ %range.0.ph257, %while.body.lr.ph ], [ %shl161, %if.end159 ]
  %cmp31 = icmp ugt i32 %low.0251, 511, !dbg !729
  br i1 %cmp31, label %if.then33, label %if.else87, !dbg !729

if.then33:                                        ; preds = %while.body
  %7 = load i32* %Ebuffer, align 4, !dbg !719, !tbaa !637
  %shl = shl i32 %7, 1, !dbg !719
  %or = or i32 %shl, 1, !dbg !719
  store i32 %or, i32* %Ebuffer, align 4, !dbg !719, !tbaa !637
  %8 = load i32* %Ebits_to_go, align 4, !dbg !719, !tbaa !637
  %dec = add i32 %8, -1, !dbg !719
  store i32 %dec, i32* %Ebits_to_go, align 4, !dbg !719, !tbaa !637
  %cmp35 = icmp eq i32 %dec, 0, !dbg !719
  br i1 %cmp35, label %if.then37, label %while.cond52.preheader, !dbg !719

if.then37:                                        ; preds = %if.then33
  %conv39 = trunc i32 %or to i8, !dbg !724
  %9 = load i32** %Ecodestrm_len, align 8, !dbg !724, !tbaa !644
  %10 = load i32* %9, align 4, !dbg !724, !tbaa !637
  %inc40 = add nsw i32 %10, 1, !dbg !724
  store i32 %inc40, i32* %9, align 4, !dbg !724, !tbaa !637
  %idxprom41 = sext i32 %10 to i64, !dbg !724
  %11 = load i8** %Ecodestrm, align 8, !dbg !724, !tbaa !644
  %arrayidx42 = getelementptr inbounds i8* %11, i64 %idxprom41, !dbg !724
  store i8 %conv39, i8* %arrayidx42, align 1, !dbg !724, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !724, !tbaa !637
  %12 = load i32* %C, align 4, !dbg !724, !tbaa !637
  %cmp45243 = icmp sgt i32 %12, 7, !dbg !724
  br i1 %cmp45243, label %while.body47.lr.ph, label %while.cond52.preheader, !dbg !724

while.body47.lr.ph:                               ; preds = %if.then37
  %E.promoted = load i32* %E, align 4, !dbg !726, !tbaa !637
  %13 = add i32 %12, -8, !dbg !724
  %14 = lshr i32 %13, 3, !dbg !724
  %15 = shl nuw i32 %14, 3, !dbg !724
  %16 = add i32 %E.promoted, 1, !dbg !724
  %17 = add i32 %16, %14, !dbg !724
  %18 = sub i32 %13, %15, !dbg !724
  store i32 %18, i32* %C, align 4, !dbg !726, !tbaa !637
  store i32 %17, i32* %E, align 4, !dbg !726, !tbaa !637
  br label %while.cond52.preheader, !dbg !724

while.cond52.preheader:                           ; preds = %if.then37, %while.body47.lr.ph, %if.then33
  %19 = phi i32 [ %dec, %if.then33 ], [ 8, %while.body47.lr.ph ], [ 8, %if.then37 ]
  %20 = load i32* %Ebits_to_follow, align 4, !dbg !728, !tbaa !637
  %cmp53248 = icmp eq i32 %20, 0, !dbg !728
  br i1 %cmp53248, label %while.end85, label %while.body55, !dbg !728

while.cond52.loopexit245:                         ; preds = %while.body78.lr.ph, %if.then65
  %.pre = load i32* %Ebits_to_follow, align 4, !dbg !728, !tbaa !637
  br label %while.cond52.backedge

while.body55:                                     ; preds = %while.cond52.backedge, %while.cond52.preheader
  %21 = phi i32 [ %19, %while.cond52.preheader ], [ %25, %while.cond52.backedge ], !dbg !730
  %22 = phi i32 [ %20, %while.cond52.preheader ], [ %24, %while.cond52.backedge ]
  %dec57 = add i32 %22, -1, !dbg !730
  store i32 %dec57, i32* %Ebits_to_follow, align 4, !dbg !730, !tbaa !637
  %23 = load i32* %Ebuffer, align 4, !dbg !732, !tbaa !637
  %shl59 = shl i32 %23, 1, !dbg !732
  store i32 %shl59, i32* %Ebuffer, align 4, !dbg !732, !tbaa !637
  %dec62 = add i32 %21, -1, !dbg !732
  store i32 %dec62, i32* %Ebits_to_go, align 4, !dbg !732, !tbaa !637
  %cmp63 = icmp eq i32 %dec62, 0, !dbg !732
  br i1 %cmp63, label %if.then65, label %while.cond52.backedge, !dbg !732

while.cond52.backedge:                            ; preds = %while.body55, %while.cond52.loopexit245
  %24 = phi i32 [ %dec57, %while.body55 ], [ %.pre, %while.cond52.loopexit245 ]
  %25 = phi i32 [ %dec62, %while.body55 ], [ 8, %while.cond52.loopexit245 ]
  %cmp53 = icmp eq i32 %24, 0, !dbg !728
  br i1 %cmp53, label %while.end85, label %while.body55, !dbg !728

if.then65:                                        ; preds = %while.body55
  %conv67 = trunc i32 %shl59 to i8, !dbg !734
  %26 = load i32** %Ecodestrm_len, align 8, !dbg !734, !tbaa !644
  %27 = load i32* %26, align 4, !dbg !734, !tbaa !637
  %inc69 = add nsw i32 %27, 1, !dbg !734
  store i32 %inc69, i32* %26, align 4, !dbg !734, !tbaa !637
  %idxprom70 = sext i32 %27 to i64, !dbg !734
  %28 = load i8** %Ecodestrm, align 8, !dbg !734, !tbaa !644
  %arrayidx72 = getelementptr inbounds i8* %28, i64 %idxprom70, !dbg !734
  store i8 %conv67, i8* %arrayidx72, align 1, !dbg !734, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !734, !tbaa !637
  %29 = load i32* %C, align 4, !dbg !734, !tbaa !637
  %cmp76246 = icmp sgt i32 %29, 7, !dbg !734
  br i1 %cmp76246, label %while.body78.lr.ph, label %while.cond52.loopexit245, !dbg !734

while.body78.lr.ph:                               ; preds = %if.then65
  %E81.promoted = load i32* %E, align 4, !dbg !736, !tbaa !637
  %30 = add i32 %29, -8, !dbg !734
  %31 = lshr i32 %30, 3, !dbg !734
  %32 = shl nuw i32 %31, 3, !dbg !734
  %33 = add i32 %E81.promoted, 1, !dbg !734
  %34 = add i32 %33, %31, !dbg !734
  %35 = sub i32 %30, %32, !dbg !734
  store i32 %35, i32* %C, align 4, !dbg !736, !tbaa !637
  store i32 %34, i32* %E, align 4, !dbg !736, !tbaa !637
  br label %while.cond52.loopexit245, !dbg !734

while.end85:                                      ; preds = %while.cond52.backedge, %while.cond52.preheader
  %sub86 = add i32 %low.0251, -512, !dbg !738
  tail call void @llvm.dbg.value(metadata !{i32 %sub86}, i64 0, metadata !90), !dbg !738
  br label %if.end159, !dbg !739

if.else87:                                        ; preds = %while.body
  %cmp88 = icmp ult i32 %low.0251, 256, !dbg !740
  br i1 %cmp88, label %if.then90, label %if.else154, !dbg !740

if.then90:                                        ; preds = %if.else87
  %36 = load i32* %Ebuffer, align 4, !dbg !741, !tbaa !637
  %shl92 = shl i32 %36, 1, !dbg !741
  store i32 %shl92, i32* %Ebuffer, align 4, !dbg !741, !tbaa !637
  %37 = load i32* %Ebits_to_go, align 4, !dbg !741, !tbaa !637
  %dec95 = add i32 %37, -1, !dbg !741
  store i32 %dec95, i32* %Ebits_to_go, align 4, !dbg !741, !tbaa !637
  %cmp96 = icmp eq i32 %dec95, 0, !dbg !741
  br i1 %cmp96, label %if.then98, label %while.cond118.preheader, !dbg !741

if.then98:                                        ; preds = %if.then90
  %conv100 = trunc i32 %shl92 to i8, !dbg !745
  %38 = load i32** %Ecodestrm_len, align 8, !dbg !745, !tbaa !644
  %39 = load i32* %38, align 4, !dbg !745, !tbaa !637
  %inc102 = add nsw i32 %39, 1, !dbg !745
  store i32 %inc102, i32* %38, align 4, !dbg !745, !tbaa !637
  %idxprom103 = sext i32 %39 to i64, !dbg !745
  %40 = load i8** %Ecodestrm, align 8, !dbg !745, !tbaa !644
  %arrayidx105 = getelementptr inbounds i8* %40, i64 %idxprom103, !dbg !745
  store i8 %conv100, i8* %arrayidx105, align 1, !dbg !745, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !745, !tbaa !637
  %41 = load i32* %C, align 4, !dbg !745, !tbaa !637
  %cmp109237 = icmp sgt i32 %41, 7, !dbg !745
  br i1 %cmp109237, label %while.body111.lr.ph, label %while.cond118.preheader, !dbg !745

while.body111.lr.ph:                              ; preds = %if.then98
  %E114.promoted = load i32* %E, align 4, !dbg !747, !tbaa !637
  %42 = add i32 %41, -8, !dbg !745
  %43 = lshr i32 %42, 3, !dbg !745
  %44 = shl nuw i32 %43, 3, !dbg !745
  %45 = add i32 %E114.promoted, 1, !dbg !745
  %46 = add i32 %45, %43, !dbg !745
  %47 = sub i32 %42, %44, !dbg !745
  store i32 %47, i32* %C, align 4, !dbg !747, !tbaa !637
  store i32 %46, i32* %E, align 4, !dbg !747, !tbaa !637
  br label %while.cond118.preheader, !dbg !745

while.cond118.preheader:                          ; preds = %if.then98, %while.body111.lr.ph, %if.then90
  %48 = phi i32 [ %dec95, %if.then90 ], [ 8, %while.body111.lr.ph ], [ 8, %if.then98 ]
  %49 = load i32* %Ebits_to_follow, align 4, !dbg !749, !tbaa !637
  %cmp120242 = icmp eq i32 %49, 0, !dbg !749
  br i1 %cmp120242, label %if.end159, label %while.body122, !dbg !749

while.cond118.loopexit239:                        ; preds = %while.body146.lr.ph, %if.then133
  %.pre253 = load i32* %Ebits_to_follow, align 4, !dbg !749, !tbaa !637
  br label %while.cond118.backedge

while.body122:                                    ; preds = %while.cond118.backedge, %while.cond118.preheader
  %50 = phi i32 [ %48, %while.cond118.preheader ], [ %54, %while.cond118.backedge ], !dbg !750
  %51 = phi i32 [ %49, %while.cond118.preheader ], [ %53, %while.cond118.backedge ]
  %dec124 = add i32 %51, -1, !dbg !750
  store i32 %dec124, i32* %Ebits_to_follow, align 4, !dbg !750, !tbaa !637
  %52 = load i32* %Ebuffer, align 4, !dbg !752, !tbaa !637
  %shl126 = shl i32 %52, 1, !dbg !752
  %or128 = or i32 %shl126, 1, !dbg !752
  store i32 %or128, i32* %Ebuffer, align 4, !dbg !752, !tbaa !637
  %dec130 = add i32 %50, -1, !dbg !752
  store i32 %dec130, i32* %Ebits_to_go, align 4, !dbg !752, !tbaa !637
  %cmp131 = icmp eq i32 %dec130, 0, !dbg !752
  br i1 %cmp131, label %if.then133, label %while.cond118.backedge, !dbg !752

while.cond118.backedge:                           ; preds = %while.body122, %while.cond118.loopexit239
  %53 = phi i32 [ %dec124, %while.body122 ], [ %.pre253, %while.cond118.loopexit239 ]
  %54 = phi i32 [ %dec130, %while.body122 ], [ 8, %while.cond118.loopexit239 ]
  %cmp120 = icmp eq i32 %53, 0, !dbg !749
  br i1 %cmp120, label %if.end159, label %while.body122, !dbg !749

if.then133:                                       ; preds = %while.body122
  %conv135 = trunc i32 %or128 to i8, !dbg !754
  %55 = load i32** %Ecodestrm_len, align 8, !dbg !754, !tbaa !644
  %56 = load i32* %55, align 4, !dbg !754, !tbaa !637
  %inc137 = add nsw i32 %56, 1, !dbg !754
  store i32 %inc137, i32* %55, align 4, !dbg !754, !tbaa !637
  %idxprom138 = sext i32 %56 to i64, !dbg !754
  %57 = load i8** %Ecodestrm, align 8, !dbg !754, !tbaa !644
  %arrayidx140 = getelementptr inbounds i8* %57, i64 %idxprom138, !dbg !754
  store i8 %conv135, i8* %arrayidx140, align 1, !dbg !754, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !754, !tbaa !637
  %58 = load i32* %C, align 4, !dbg !754, !tbaa !637
  %cmp144240 = icmp sgt i32 %58, 7, !dbg !754
  br i1 %cmp144240, label %while.body146.lr.ph, label %while.cond118.loopexit239, !dbg !754

while.body146.lr.ph:                              ; preds = %if.then133
  %E149.promoted = load i32* %E, align 4, !dbg !756, !tbaa !637
  %59 = add i32 %58, -8, !dbg !754
  %60 = lshr i32 %59, 3, !dbg !754
  %61 = shl nuw i32 %60, 3, !dbg !754
  %62 = add i32 %E149.promoted, 1, !dbg !754
  %63 = add i32 %62, %60, !dbg !754
  %64 = sub i32 %59, %61, !dbg !754
  store i32 %64, i32* %C, align 4, !dbg !756, !tbaa !637
  store i32 %63, i32* %E, align 4, !dbg !756, !tbaa !637
  br label %while.cond118.loopexit239, !dbg !754

if.else154:                                       ; preds = %if.else87
  %65 = load i32* %Ebits_to_follow, align 4, !dbg !758, !tbaa !637
  %inc156 = add i32 %65, 1, !dbg !758
  store i32 %inc156, i32* %Ebits_to_follow, align 4, !dbg !758, !tbaa !637
  %sub157 = add i32 %low.0251, -256, !dbg !760
  tail call void @llvm.dbg.value(metadata !{i32 %sub157}, i64 0, metadata !90), !dbg !760
  br label %if.end159

if.end159:                                        ; preds = %while.cond118.preheader, %while.cond118.backedge, %if.else154, %while.end85
  %low.1 = phi i32 [ %sub86, %while.end85 ], [ %sub157, %if.else154 ], [ %low.0251, %while.cond118.backedge ], [ %low.0251, %while.cond118.preheader ]
  %shl160 = shl i32 %low.1, 1, !dbg !761
  tail call void @llvm.dbg.value(metadata !{i32 %shl160}, i64 0, metadata !90), !dbg !761
  %shl161 = shl i32 %range.0250, 1, !dbg !762
  tail call void @llvm.dbg.value(metadata !{i32 %shl161}, i64 0, metadata !89), !dbg !762
  %cmp29 = icmp ult i32 %shl161, 256, !dbg !717
  br i1 %cmp29, label %while.body, label %while.end162, !dbg !717

while.end162:                                     ; preds = %if.end159, %while.cond.preheader.while.end162_crit_edge
  %C165.pre-phi = phi i32* [ %C165.pre, %while.cond.preheader.while.end162_crit_edge ], [ %C, %if.end159 ], !dbg !718
  %low.0.lcssa = phi i32 [ %1, %while.cond.preheader.while.end162_crit_edge ], [ %shl160, %if.end159 ]
  %range.0.lcssa = phi i32 [ %sub, %while.cond.preheader.while.end162_crit_edge ], [ %shl161, %if.end159 ]
  store i32 %range.0.lcssa, i32* %Erange, align 4, !dbg !763, !tbaa !637
  store i32 %low.0.lcssa, i32* %Elow, align 4, !dbg !764, !tbaa !637
  %66 = load i32* %C165.pre-phi, align 4, !dbg !718, !tbaa !637
  %inc166 = add nsw i32 %66, 1, !dbg !718
  store i32 %inc166, i32* %C165.pre-phi, align 4, !dbg !718, !tbaa !637
  ret void, !dbg !765
}

; Function Attrs: nounwind optsize uwtable
define void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep, i16 signext %symbol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep}, i64 0, metadata !96), !dbg !766
  tail call void @llvm.dbg.value(metadata !{i16 %symbol}, i64 0, metadata !97), !dbg !766
  %Elow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0, !dbg !767
  %0 = load i32* %Elow, align 4, !dbg !767, !tbaa !637
  %shl = shl i32 %0, 1, !dbg !767
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !98), !dbg !767
  %cmp = icmp eq i16 %symbol, 0, !dbg !768
  br i1 %cmp, label %if.end, label %if.then, !dbg !768

if.then:                                          ; preds = %entry
  %Erange = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1, !dbg !769
  %1 = load i32* %Erange, align 4, !dbg !769, !tbaa !637
  %add = add i32 %1, %shl, !dbg !769
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !98), !dbg !769
  br label %if.end, !dbg !769

if.end:                                           ; preds = %entry, %if.then
  %low.0 = phi i32 [ %add, %if.then ], [ %shl, %entry ]
  %cmp2 = icmp ugt i32 %low.0, 1023, !dbg !770
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !770

if.then4:                                         ; preds = %if.end
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !771
  %2 = load i32* %Ebuffer, align 4, !dbg !771, !tbaa !637
  %shl5 = shl i32 %2, 1, !dbg !771
  %or = or i32 %shl5, 1, !dbg !771
  store i32 %or, i32* %Ebuffer, align 4, !dbg !771, !tbaa !637
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !771
  %3 = load i32* %Ebits_to_go, align 4, !dbg !771, !tbaa !637
  %dec = add i32 %3, -1, !dbg !771
  store i32 %dec, i32* %Ebits_to_go, align 4, !dbg !771, !tbaa !637
  %cmp7 = icmp eq i32 %dec, 0, !dbg !771
  br i1 %cmp7, label %if.then9, label %while.cond18.preheader, !dbg !771

while.cond18.preheader:                           ; preds = %if.then9, %while.body.lr.ph, %if.then4
  %4 = phi i32 [ %dec, %if.then4 ], [ 8, %while.body.lr.ph ], [ 8, %if.then9 ]
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !775
  %5 = load i32* %Ebits_to_follow, align 4, !dbg !775, !tbaa !637
  %cmp19182 = icmp eq i32 %5, 0, !dbg !775
  br i1 %cmp19182, label %while.end51, label %while.body21.lr.ph, !dbg !775

while.body21.lr.ph:                               ; preds = %while.cond18.preheader
  %Ecodestrm_len34 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !776
  %Ecodestrm37 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !776
  %C41 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !776
  %E47 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !780
  br label %while.body21, !dbg !775

if.then9:                                         ; preds = %if.then4
  %conv11 = trunc i32 %or to i8, !dbg !782
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !782
  %6 = load i32** %Ecodestrm_len, align 8, !dbg !782, !tbaa !644
  %7 = load i32* %6, align 4, !dbg !782, !tbaa !637
  %inc = add nsw i32 %7, 1, !dbg !782
  store i32 %inc, i32* %6, align 4, !dbg !782, !tbaa !637
  %idxprom = sext i32 %7 to i64, !dbg !782
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !782
  %8 = load i8** %Ecodestrm, align 8, !dbg !782, !tbaa !644
  %arrayidx = getelementptr inbounds i8* %8, i64 %idxprom, !dbg !782
  store i8 %conv11, i8* %arrayidx, align 1, !dbg !782, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !782, !tbaa !637
  %C = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !782
  %9 = load i32* %C, align 4, !dbg !782, !tbaa !637
  %cmp13183 = icmp sgt i32 %9, 7, !dbg !782
  br i1 %cmp13183, label %while.body.lr.ph, label %while.cond18.preheader, !dbg !782

while.body.lr.ph:                                 ; preds = %if.then9
  %E = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !784
  %E.promoted = load i32* %E, align 4, !dbg !784, !tbaa !637
  %10 = add i32 %9, -8, !dbg !782
  %11 = lshr i32 %10, 3, !dbg !782
  %12 = add i32 %E.promoted, %11, !dbg !782
  %13 = shl nuw i32 %11, 3, !dbg !782
  %14 = add i32 %12, 1, !dbg !782
  %15 = sub i32 %10, %13, !dbg !782
  store i32 %15, i32* %C, align 4, !dbg !784, !tbaa !637
  store i32 %14, i32* %E, align 4, !dbg !784, !tbaa !637
  br label %while.cond18.preheader, !dbg !782

while.cond18.loopexit:                            ; preds = %while.body44.lr.ph, %if.then31
  %.pre = load i32* %Ebits_to_follow, align 4, !dbg !775, !tbaa !637
  br label %while.cond18.backedge

while.body21:                                     ; preds = %while.cond18.backedge, %while.body21.lr.ph
  %16 = phi i32 [ %4, %while.body21.lr.ph ], [ %20, %while.cond18.backedge ], !dbg !786
  %17 = phi i32 [ %5, %while.body21.lr.ph ], [ %19, %while.cond18.backedge ]
  %dec23 = add i32 %17, -1, !dbg !786
  store i32 %dec23, i32* %Ebits_to_follow, align 4, !dbg !786, !tbaa !637
  %18 = load i32* %Ebuffer, align 4, !dbg !787, !tbaa !637
  %shl25 = shl i32 %18, 1, !dbg !787
  store i32 %shl25, i32* %Ebuffer, align 4, !dbg !787, !tbaa !637
  %dec28 = add i32 %16, -1, !dbg !787
  store i32 %dec28, i32* %Ebits_to_go, align 4, !dbg !787, !tbaa !637
  %cmp29 = icmp eq i32 %dec28, 0, !dbg !787
  br i1 %cmp29, label %if.then31, label %while.cond18.backedge, !dbg !787

while.cond18.backedge:                            ; preds = %while.body21, %while.cond18.loopexit
  %19 = phi i32 [ %dec23, %while.body21 ], [ %.pre, %while.cond18.loopexit ]
  %20 = phi i32 [ %dec28, %while.body21 ], [ 8, %while.cond18.loopexit ]
  %cmp19 = icmp eq i32 %19, 0, !dbg !775
  br i1 %cmp19, label %while.end51, label %while.body21, !dbg !775

if.then31:                                        ; preds = %while.body21
  %conv33 = trunc i32 %shl25 to i8, !dbg !776
  %21 = load i32** %Ecodestrm_len34, align 8, !dbg !776, !tbaa !644
  %22 = load i32* %21, align 4, !dbg !776, !tbaa !637
  %inc35 = add nsw i32 %22, 1, !dbg !776
  store i32 %inc35, i32* %21, align 4, !dbg !776, !tbaa !637
  %idxprom36 = sext i32 %22 to i64, !dbg !776
  %23 = load i8** %Ecodestrm37, align 8, !dbg !776, !tbaa !644
  %arrayidx38 = getelementptr inbounds i8* %23, i64 %idxprom36, !dbg !776
  store i8 %conv33, i8* %arrayidx38, align 1, !dbg !776, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !776, !tbaa !637
  %24 = load i32* %C41, align 4, !dbg !776, !tbaa !637
  %cmp42180 = icmp sgt i32 %24, 7, !dbg !776
  br i1 %cmp42180, label %while.body44.lr.ph, label %while.cond18.loopexit, !dbg !776

while.body44.lr.ph:                               ; preds = %if.then31
  %E47.promoted = load i32* %E47, align 4, !dbg !780, !tbaa !637
  %25 = add i32 %24, -8, !dbg !776
  %26 = lshr i32 %25, 3, !dbg !776
  %27 = shl nuw i32 %26, 3, !dbg !776
  %28 = add i32 %E47.promoted, 1, !dbg !776
  %29 = add i32 %28, %26, !dbg !776
  %30 = sub i32 %25, %27, !dbg !776
  store i32 %30, i32* %C41, align 4, !dbg !780, !tbaa !637
  store i32 %29, i32* %E47, align 4, !dbg !780, !tbaa !637
  br label %while.cond18.loopexit, !dbg !776

while.end51:                                      ; preds = %while.cond18.backedge, %while.cond18.preheader
  %sub52 = add i32 %low.0, -1024, !dbg !788
  tail call void @llvm.dbg.value(metadata !{i32 %sub52}, i64 0, metadata !98), !dbg !788
  br label %if.end124, !dbg !789

if.else:                                          ; preds = %if.end
  %cmp53 = icmp ult i32 %low.0, 512, !dbg !790
  br i1 %cmp53, label %if.then55, label %if.else119, !dbg !790

if.then55:                                        ; preds = %if.else
  %Ebuffer56 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !791
  %31 = load i32* %Ebuffer56, align 4, !dbg !791, !tbaa !637
  %shl57 = shl i32 %31, 1, !dbg !791
  store i32 %shl57, i32* %Ebuffer56, align 4, !dbg !791, !tbaa !637
  %Ebits_to_go59 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !791
  %32 = load i32* %Ebits_to_go59, align 4, !dbg !791, !tbaa !637
  %dec60 = add i32 %32, -1, !dbg !791
  store i32 %dec60, i32* %Ebits_to_go59, align 4, !dbg !791, !tbaa !637
  %cmp61 = icmp eq i32 %dec60, 0, !dbg !791
  br i1 %cmp61, label %if.then63, label %while.cond83.preheader, !dbg !791

while.cond83.preheader:                           ; preds = %if.then63, %while.body76.lr.ph, %if.then55
  %33 = phi i32 [ %dec60, %if.then55 ], [ 8, %while.body76.lr.ph ], [ 8, %if.then63 ]
  %Ebits_to_follow84 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !795
  %34 = load i32* %Ebits_to_follow84, align 4, !dbg !795, !tbaa !637
  %cmp85187 = icmp eq i32 %34, 0, !dbg !795
  br i1 %cmp85187, label %if.end124, label %while.body87.lr.ph, !dbg !795

while.body87.lr.ph:                               ; preds = %while.cond83.preheader
  %Ecodestrm_len101 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !796
  %Ecodestrm104 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !796
  %C108 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !796
  %E114 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !800
  br label %while.body87, !dbg !795

if.then63:                                        ; preds = %if.then55
  %conv65 = trunc i32 %shl57 to i8, !dbg !802
  %Ecodestrm_len66 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !802
  %35 = load i32** %Ecodestrm_len66, align 8, !dbg !802, !tbaa !644
  %36 = load i32* %35, align 4, !dbg !802, !tbaa !637
  %inc67 = add nsw i32 %36, 1, !dbg !802
  store i32 %inc67, i32* %35, align 4, !dbg !802, !tbaa !637
  %idxprom68 = sext i32 %36 to i64, !dbg !802
  %Ecodestrm69 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !802
  %37 = load i8** %Ecodestrm69, align 8, !dbg !802, !tbaa !644
  %arrayidx70 = getelementptr inbounds i8* %37, i64 %idxprom68, !dbg !802
  store i8 %conv65, i8* %arrayidx70, align 1, !dbg !802, !tbaa !638
  store i32 8, i32* %Ebits_to_go59, align 4, !dbg !802, !tbaa !637
  %C73 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !802
  %38 = load i32* %C73, align 4, !dbg !802, !tbaa !637
  %cmp74188 = icmp sgt i32 %38, 7, !dbg !802
  br i1 %cmp74188, label %while.body76.lr.ph, label %while.cond83.preheader, !dbg !802

while.body76.lr.ph:                               ; preds = %if.then63
  %E79 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !804
  %E79.promoted = load i32* %E79, align 4, !dbg !804, !tbaa !637
  %39 = add i32 %38, -8, !dbg !802
  %40 = lshr i32 %39, 3, !dbg !802
  %41 = add i32 %E79.promoted, %40, !dbg !802
  %42 = shl nuw i32 %40, 3, !dbg !802
  %43 = add i32 %41, 1, !dbg !802
  %44 = sub i32 %39, %42, !dbg !802
  store i32 %44, i32* %C73, align 4, !dbg !804, !tbaa !637
  store i32 %43, i32* %E79, align 4, !dbg !804, !tbaa !637
  br label %while.cond83.preheader, !dbg !802

while.cond83.loopexit:                            ; preds = %while.body111.lr.ph, %if.then98
  %.pre190 = load i32* %Ebits_to_follow84, align 4, !dbg !795, !tbaa !637
  br label %while.cond83.backedge

while.body87:                                     ; preds = %while.cond83.backedge, %while.body87.lr.ph
  %45 = phi i32 [ %33, %while.body87.lr.ph ], [ %49, %while.cond83.backedge ], !dbg !806
  %46 = phi i32 [ %34, %while.body87.lr.ph ], [ %48, %while.cond83.backedge ]
  %dec89 = add i32 %46, -1, !dbg !806
  store i32 %dec89, i32* %Ebits_to_follow84, align 4, !dbg !806, !tbaa !637
  %47 = load i32* %Ebuffer56, align 4, !dbg !807, !tbaa !637
  %shl91 = shl i32 %47, 1, !dbg !807
  %or93 = or i32 %shl91, 1, !dbg !807
  store i32 %or93, i32* %Ebuffer56, align 4, !dbg !807, !tbaa !637
  %dec95 = add i32 %45, -1, !dbg !807
  store i32 %dec95, i32* %Ebits_to_go59, align 4, !dbg !807, !tbaa !637
  %cmp96 = icmp eq i32 %dec95, 0, !dbg !807
  br i1 %cmp96, label %if.then98, label %while.cond83.backedge, !dbg !807

while.cond83.backedge:                            ; preds = %while.body87, %while.cond83.loopexit
  %48 = phi i32 [ %dec89, %while.body87 ], [ %.pre190, %while.cond83.loopexit ]
  %49 = phi i32 [ %dec95, %while.body87 ], [ 8, %while.cond83.loopexit ]
  %cmp85 = icmp eq i32 %48, 0, !dbg !795
  br i1 %cmp85, label %if.end124, label %while.body87, !dbg !795

if.then98:                                        ; preds = %while.body87
  %conv100 = trunc i32 %or93 to i8, !dbg !796
  %50 = load i32** %Ecodestrm_len101, align 8, !dbg !796, !tbaa !644
  %51 = load i32* %50, align 4, !dbg !796, !tbaa !637
  %inc102 = add nsw i32 %51, 1, !dbg !796
  store i32 %inc102, i32* %50, align 4, !dbg !796, !tbaa !637
  %idxprom103 = sext i32 %51 to i64, !dbg !796
  %52 = load i8** %Ecodestrm104, align 8, !dbg !796, !tbaa !644
  %arrayidx105 = getelementptr inbounds i8* %52, i64 %idxprom103, !dbg !796
  store i8 %conv100, i8* %arrayidx105, align 1, !dbg !796, !tbaa !638
  store i32 8, i32* %Ebits_to_go59, align 4, !dbg !796, !tbaa !637
  %53 = load i32* %C108, align 4, !dbg !796, !tbaa !637
  %cmp109185 = icmp sgt i32 %53, 7, !dbg !796
  br i1 %cmp109185, label %while.body111.lr.ph, label %while.cond83.loopexit, !dbg !796

while.body111.lr.ph:                              ; preds = %if.then98
  %E114.promoted = load i32* %E114, align 4, !dbg !800, !tbaa !637
  %54 = add i32 %53, -8, !dbg !796
  %55 = lshr i32 %54, 3, !dbg !796
  %56 = shl nuw i32 %55, 3, !dbg !796
  %57 = add i32 %E114.promoted, 1, !dbg !796
  %58 = add i32 %57, %55, !dbg !796
  %59 = sub i32 %54, %56, !dbg !796
  store i32 %59, i32* %C108, align 4, !dbg !800, !tbaa !637
  store i32 %58, i32* %E114, align 4, !dbg !800, !tbaa !637
  br label %while.cond83.loopexit, !dbg !796

if.else119:                                       ; preds = %if.else
  %Ebits_to_follow120 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !808
  %60 = load i32* %Ebits_to_follow120, align 4, !dbg !808, !tbaa !637
  %inc121 = add i32 %60, 1, !dbg !808
  store i32 %inc121, i32* %Ebits_to_follow120, align 4, !dbg !808, !tbaa !637
  %sub122 = add i32 %low.0, -512, !dbg !810
  tail call void @llvm.dbg.value(metadata !{i32 %sub122}, i64 0, metadata !98), !dbg !810
  br label %if.end124

if.end124:                                        ; preds = %while.cond83.preheader, %while.cond83.backedge, %if.else119, %while.end51
  %low.1 = phi i32 [ %sub52, %while.end51 ], [ %sub122, %if.else119 ], [ %low.0, %while.cond83.backedge ], [ %low.0, %while.cond83.preheader ]
  store i32 %low.1, i32* %Elow, align 4, !dbg !811, !tbaa !637
  %C126 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !812
  %61 = load i32* %C126, align 4, !dbg !812, !tbaa !637
  %inc127 = add nsw i32 %61, 1, !dbg !812
  store i32 %inc127, i32* %C126, align 4, !dbg !812, !tbaa !637
  ret void, !dbg !813
}

; Function Attrs: nounwind optsize uwtable
define void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep, i16 signext %symbol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep}, i64 0, metadata !101), !dbg !814
  tail call void @llvm.dbg.value(metadata !{i16 %symbol}, i64 0, metadata !102), !dbg !814
  %Erange = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1, !dbg !815
  %0 = load i32* %Erange, align 4, !dbg !815, !tbaa !637
  %sub = add i32 %0, -2, !dbg !815
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !103), !dbg !815
  %Elow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0, !dbg !816
  %1 = load i32* %Elow, align 4, !dbg !816, !tbaa !637
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !104), !dbg !816
  %tobool = icmp eq i16 %symbol, 0, !dbg !817
  tail call void @llvm.dbg.value(metadata !818, i64 0, metadata !103), !dbg !819
  %sub. = select i1 %tobool, i32 %sub, i32 2, !dbg !817
  %add = select i1 %tobool, i32 0, i32 %sub, !dbg !817
  %.add = add i32 %add, %1, !dbg !817
  %cmp199 = icmp ult i32 %sub., 256, !dbg !821
  br i1 %cmp199, label %while.body.lr.ph, label %entry.while.end125_crit_edge, !dbg !821

entry.while.end125_crit_edge:                     ; preds = %entry
  %C128.pre = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !822
  br label %while.end125, !dbg !821

while.body.lr.ph:                                 ; preds = %entry
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !823
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !823
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !828
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !828
  %C = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !828
  %E = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !830
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !832
  br label %while.body, !dbg !821

while.body:                                       ; preds = %while.body.lr.ph, %if.end122
  %low.0201 = phi i32 [ %.add, %while.body.lr.ph ], [ %shl123, %if.end122 ]
  %range.0200 = phi i32 [ %sub., %while.body.lr.ph ], [ %shl124, %if.end122 ]
  %cmp1 = icmp ugt i32 %low.0201, 511, !dbg !833
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !833

if.then2:                                         ; preds = %while.body
  %2 = load i32* %Ebuffer, align 4, !dbg !823, !tbaa !637
  %shl = shl i32 %2, 1, !dbg !823
  %or = or i32 %shl, 1, !dbg !823
  store i32 %or, i32* %Ebuffer, align 4, !dbg !823, !tbaa !637
  %3 = load i32* %Ebits_to_go, align 4, !dbg !823, !tbaa !637
  %dec = add i32 %3, -1, !dbg !823
  store i32 %dec, i32* %Ebits_to_go, align 4, !dbg !823, !tbaa !637
  %cmp4 = icmp eq i32 %dec, 0, !dbg !823
  br i1 %cmp4, label %if.then5, label %while.cond16.preheader, !dbg !823

if.then5:                                         ; preds = %if.then2
  %conv = trunc i32 %or to i8, !dbg !828
  %4 = load i32** %Ecodestrm_len, align 8, !dbg !828, !tbaa !644
  %5 = load i32* %4, align 4, !dbg !828, !tbaa !637
  %inc = add nsw i32 %5, 1, !dbg !828
  store i32 %inc, i32* %4, align 4, !dbg !828, !tbaa !637
  %idxprom = sext i32 %5 to i64, !dbg !828
  %6 = load i8** %Ecodestrm, align 8, !dbg !828, !tbaa !644
  %arrayidx = getelementptr inbounds i8* %6, i64 %idxprom, !dbg !828
  store i8 %conv, i8* %arrayidx, align 1, !dbg !828, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !828, !tbaa !637
  %7 = load i32* %C, align 4, !dbg !828, !tbaa !637
  %cmp9193 = icmp sgt i32 %7, 7, !dbg !828
  br i1 %cmp9193, label %while.body11.lr.ph, label %while.cond16.preheader, !dbg !828

while.body11.lr.ph:                               ; preds = %if.then5
  %E.promoted = load i32* %E, align 4, !dbg !830, !tbaa !637
  %8 = add i32 %7, -8, !dbg !828
  %9 = lshr i32 %8, 3, !dbg !828
  %10 = shl nuw i32 %9, 3, !dbg !828
  %11 = add i32 %E.promoted, 1, !dbg !828
  %12 = add i32 %11, %9, !dbg !828
  %13 = sub i32 %8, %10, !dbg !828
  store i32 %13, i32* %C, align 4, !dbg !830, !tbaa !637
  store i32 %12, i32* %E, align 4, !dbg !830, !tbaa !637
  br label %while.cond16.preheader, !dbg !828

while.cond16.preheader:                           ; preds = %if.then5, %while.body11.lr.ph, %if.then2
  %14 = phi i32 [ %dec, %if.then2 ], [ 8, %while.body11.lr.ph ], [ 8, %if.then5 ]
  %15 = load i32* %Ebits_to_follow, align 4, !dbg !832, !tbaa !637
  %cmp17198 = icmp eq i32 %15, 0, !dbg !832
  br i1 %cmp17198, label %while.end49, label %while.body19, !dbg !832

while.cond16.loopexit195:                         ; preds = %while.body42.lr.ph, %if.then29
  %.pre = load i32* %Ebits_to_follow, align 4, !dbg !832, !tbaa !637
  br label %while.cond16.backedge

while.body19:                                     ; preds = %while.cond16.backedge, %while.cond16.preheader
  %16 = phi i32 [ %14, %while.cond16.preheader ], [ %20, %while.cond16.backedge ], !dbg !834
  %17 = phi i32 [ %15, %while.cond16.preheader ], [ %19, %while.cond16.backedge ]
  %dec21 = add i32 %17, -1, !dbg !834
  store i32 %dec21, i32* %Ebits_to_follow, align 4, !dbg !834, !tbaa !637
  %18 = load i32* %Ebuffer, align 4, !dbg !836, !tbaa !637
  %shl23 = shl i32 %18, 1, !dbg !836
  store i32 %shl23, i32* %Ebuffer, align 4, !dbg !836, !tbaa !637
  %dec26 = add i32 %16, -1, !dbg !836
  store i32 %dec26, i32* %Ebits_to_go, align 4, !dbg !836, !tbaa !637
  %cmp27 = icmp eq i32 %dec26, 0, !dbg !836
  br i1 %cmp27, label %if.then29, label %while.cond16.backedge, !dbg !836

while.cond16.backedge:                            ; preds = %while.body19, %while.cond16.loopexit195
  %19 = phi i32 [ %dec21, %while.body19 ], [ %.pre, %while.cond16.loopexit195 ]
  %20 = phi i32 [ %dec26, %while.body19 ], [ 8, %while.cond16.loopexit195 ]
  %cmp17 = icmp eq i32 %19, 0, !dbg !832
  br i1 %cmp17, label %while.end49, label %while.body19, !dbg !832

if.then29:                                        ; preds = %while.body19
  %conv31 = trunc i32 %shl23 to i8, !dbg !838
  %21 = load i32** %Ecodestrm_len, align 8, !dbg !838, !tbaa !644
  %22 = load i32* %21, align 4, !dbg !838, !tbaa !637
  %inc33 = add nsw i32 %22, 1, !dbg !838
  store i32 %inc33, i32* %21, align 4, !dbg !838, !tbaa !637
  %idxprom34 = sext i32 %22 to i64, !dbg !838
  %23 = load i8** %Ecodestrm, align 8, !dbg !838, !tbaa !644
  %arrayidx36 = getelementptr inbounds i8* %23, i64 %idxprom34, !dbg !838
  store i8 %conv31, i8* %arrayidx36, align 1, !dbg !838, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !838, !tbaa !637
  %24 = load i32* %C, align 4, !dbg !838, !tbaa !637
  %cmp40196 = icmp sgt i32 %24, 7, !dbg !838
  br i1 %cmp40196, label %while.body42.lr.ph, label %while.cond16.loopexit195, !dbg !838

while.body42.lr.ph:                               ; preds = %if.then29
  %E45.promoted = load i32* %E, align 4, !dbg !840, !tbaa !637
  %25 = add i32 %24, -8, !dbg !838
  %26 = lshr i32 %25, 3, !dbg !838
  %27 = shl nuw i32 %26, 3, !dbg !838
  %28 = add i32 %E45.promoted, 1, !dbg !838
  %29 = add i32 %28, %26, !dbg !838
  %30 = sub i32 %25, %27, !dbg !838
  store i32 %30, i32* %C, align 4, !dbg !840, !tbaa !637
  store i32 %29, i32* %E, align 4, !dbg !840, !tbaa !637
  br label %while.cond16.loopexit195, !dbg !838

while.end49:                                      ; preds = %while.cond16.backedge, %while.cond16.preheader
  %sub50 = add i32 %low.0201, -512, !dbg !842
  tail call void @llvm.dbg.value(metadata !{i32 %sub50}, i64 0, metadata !104), !dbg !842
  br label %if.end122, !dbg !843

if.else:                                          ; preds = %while.body
  %cmp51 = icmp ult i32 %low.0201, 256, !dbg !844
  br i1 %cmp51, label %if.then53, label %if.else117, !dbg !844

if.then53:                                        ; preds = %if.else
  %31 = load i32* %Ebuffer, align 4, !dbg !845, !tbaa !637
  %shl55 = shl i32 %31, 1, !dbg !845
  store i32 %shl55, i32* %Ebuffer, align 4, !dbg !845, !tbaa !637
  %32 = load i32* %Ebits_to_go, align 4, !dbg !845, !tbaa !637
  %dec58 = add i32 %32, -1, !dbg !845
  store i32 %dec58, i32* %Ebits_to_go, align 4, !dbg !845, !tbaa !637
  %cmp59 = icmp eq i32 %dec58, 0, !dbg !845
  br i1 %cmp59, label %if.then61, label %while.cond81.preheader, !dbg !845

if.then61:                                        ; preds = %if.then53
  %conv63 = trunc i32 %shl55 to i8, !dbg !849
  %33 = load i32** %Ecodestrm_len, align 8, !dbg !849, !tbaa !644
  %34 = load i32* %33, align 4, !dbg !849, !tbaa !637
  %inc65 = add nsw i32 %34, 1, !dbg !849
  store i32 %inc65, i32* %33, align 4, !dbg !849, !tbaa !637
  %idxprom66 = sext i32 %34 to i64, !dbg !849
  %35 = load i8** %Ecodestrm, align 8, !dbg !849, !tbaa !644
  %arrayidx68 = getelementptr inbounds i8* %35, i64 %idxprom66, !dbg !849
  store i8 %conv63, i8* %arrayidx68, align 1, !dbg !849, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !849, !tbaa !637
  %36 = load i32* %C, align 4, !dbg !849, !tbaa !637
  %cmp72187 = icmp sgt i32 %36, 7, !dbg !849
  br i1 %cmp72187, label %while.body74.lr.ph, label %while.cond81.preheader, !dbg !849

while.body74.lr.ph:                               ; preds = %if.then61
  %E77.promoted = load i32* %E, align 4, !dbg !851, !tbaa !637
  %37 = add i32 %36, -8, !dbg !849
  %38 = lshr i32 %37, 3, !dbg !849
  %39 = shl nuw i32 %38, 3, !dbg !849
  %40 = add i32 %E77.promoted, 1, !dbg !849
  %41 = add i32 %40, %38, !dbg !849
  %42 = sub i32 %37, %39, !dbg !849
  store i32 %42, i32* %C, align 4, !dbg !851, !tbaa !637
  store i32 %41, i32* %E, align 4, !dbg !851, !tbaa !637
  br label %while.cond81.preheader, !dbg !849

while.cond81.preheader:                           ; preds = %if.then61, %while.body74.lr.ph, %if.then53
  %43 = phi i32 [ %dec58, %if.then53 ], [ 8, %while.body74.lr.ph ], [ 8, %if.then61 ]
  %44 = load i32* %Ebits_to_follow, align 4, !dbg !853, !tbaa !637
  %cmp83192 = icmp eq i32 %44, 0, !dbg !853
  br i1 %cmp83192, label %if.end122, label %while.body85, !dbg !853

while.cond81.loopexit189:                         ; preds = %while.body109.lr.ph, %if.then96
  %.pre203 = load i32* %Ebits_to_follow, align 4, !dbg !853, !tbaa !637
  br label %while.cond81.backedge

while.body85:                                     ; preds = %while.cond81.backedge, %while.cond81.preheader
  %45 = phi i32 [ %43, %while.cond81.preheader ], [ %49, %while.cond81.backedge ], !dbg !854
  %46 = phi i32 [ %44, %while.cond81.preheader ], [ %48, %while.cond81.backedge ]
  %dec87 = add i32 %46, -1, !dbg !854
  store i32 %dec87, i32* %Ebits_to_follow, align 4, !dbg !854, !tbaa !637
  %47 = load i32* %Ebuffer, align 4, !dbg !856, !tbaa !637
  %shl89 = shl i32 %47, 1, !dbg !856
  %or91 = or i32 %shl89, 1, !dbg !856
  store i32 %or91, i32* %Ebuffer, align 4, !dbg !856, !tbaa !637
  %dec93 = add i32 %45, -1, !dbg !856
  store i32 %dec93, i32* %Ebits_to_go, align 4, !dbg !856, !tbaa !637
  %cmp94 = icmp eq i32 %dec93, 0, !dbg !856
  br i1 %cmp94, label %if.then96, label %while.cond81.backedge, !dbg !856

while.cond81.backedge:                            ; preds = %while.body85, %while.cond81.loopexit189
  %48 = phi i32 [ %dec87, %while.body85 ], [ %.pre203, %while.cond81.loopexit189 ]
  %49 = phi i32 [ %dec93, %while.body85 ], [ 8, %while.cond81.loopexit189 ]
  %cmp83 = icmp eq i32 %48, 0, !dbg !853
  br i1 %cmp83, label %if.end122, label %while.body85, !dbg !853

if.then96:                                        ; preds = %while.body85
  %conv98 = trunc i32 %or91 to i8, !dbg !858
  %50 = load i32** %Ecodestrm_len, align 8, !dbg !858, !tbaa !644
  %51 = load i32* %50, align 4, !dbg !858, !tbaa !637
  %inc100 = add nsw i32 %51, 1, !dbg !858
  store i32 %inc100, i32* %50, align 4, !dbg !858, !tbaa !637
  %idxprom101 = sext i32 %51 to i64, !dbg !858
  %52 = load i8** %Ecodestrm, align 8, !dbg !858, !tbaa !644
  %arrayidx103 = getelementptr inbounds i8* %52, i64 %idxprom101, !dbg !858
  store i8 %conv98, i8* %arrayidx103, align 1, !dbg !858, !tbaa !638
  store i32 8, i32* %Ebits_to_go, align 4, !dbg !858, !tbaa !637
  %53 = load i32* %C, align 4, !dbg !858, !tbaa !637
  %cmp107190 = icmp sgt i32 %53, 7, !dbg !858
  br i1 %cmp107190, label %while.body109.lr.ph, label %while.cond81.loopexit189, !dbg !858

while.body109.lr.ph:                              ; preds = %if.then96
  %E112.promoted = load i32* %E, align 4, !dbg !860, !tbaa !637
  %54 = add i32 %53, -8, !dbg !858
  %55 = lshr i32 %54, 3, !dbg !858
  %56 = shl nuw i32 %55, 3, !dbg !858
  %57 = add i32 %E112.promoted, 1, !dbg !858
  %58 = add i32 %57, %55, !dbg !858
  %59 = sub i32 %54, %56, !dbg !858
  store i32 %59, i32* %C, align 4, !dbg !860, !tbaa !637
  store i32 %58, i32* %E, align 4, !dbg !860, !tbaa !637
  br label %while.cond81.loopexit189, !dbg !858

if.else117:                                       ; preds = %if.else
  %60 = load i32* %Ebits_to_follow, align 4, !dbg !862, !tbaa !637
  %inc119 = add i32 %60, 1, !dbg !862
  store i32 %inc119, i32* %Ebits_to_follow, align 4, !dbg !862, !tbaa !637
  %sub120 = add i32 %low.0201, -256, !dbg !864
  tail call void @llvm.dbg.value(metadata !{i32 %sub120}, i64 0, metadata !104), !dbg !864
  br label %if.end122

if.end122:                                        ; preds = %while.cond81.preheader, %while.cond81.backedge, %if.else117, %while.end49
  %low.1 = phi i32 [ %sub50, %while.end49 ], [ %sub120, %if.else117 ], [ %low.0201, %while.cond81.backedge ], [ %low.0201, %while.cond81.preheader ]
  %shl123 = shl i32 %low.1, 1, !dbg !865
  tail call void @llvm.dbg.value(metadata !{i32 %shl123}, i64 0, metadata !104), !dbg !865
  %shl124 = shl i32 %range.0200, 1, !dbg !866
  tail call void @llvm.dbg.value(metadata !{i32 %shl124}, i64 0, metadata !103), !dbg !866
  %cmp = icmp ult i32 %shl124, 256, !dbg !821
  br i1 %cmp, label %while.body, label %while.end125, !dbg !821

while.end125:                                     ; preds = %if.end122, %entry.while.end125_crit_edge
  %C128.pre-phi = phi i32* [ %C128.pre, %entry.while.end125_crit_edge ], [ %C, %if.end122 ], !dbg !822
  %low.0.lcssa = phi i32 [ %.add, %entry.while.end125_crit_edge ], [ %shl123, %if.end122 ]
  %range.0.lcssa = phi i32 [ %sub, %entry.while.end125_crit_edge ], [ %shl124, %if.end122 ]
  store i32 %range.0.lcssa, i32* %Erange, align 4, !dbg !867, !tbaa !637
  store i32 %low.0.lcssa, i32* %Elow, align 4, !dbg !868, !tbaa !637
  %61 = load i32* %C128.pre-phi, align 4, !dbg !822, !tbaa !637
  %inc129 = add nsw i32 %61, 1, !dbg !822
  store i32 %inc129, i32* %C128.pre-phi, align 4, !dbg !822, !tbaa !637
  ret void, !dbg !869
}

; Function Attrs: nounwind optsize uwtable
define void @biari_init_context(%struct.BiContextType* nocapture %ctx, i32* nocapture %ini) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %ctx}, i64 0, metadata !111), !dbg !870
  tail call void @llvm.dbg.value(metadata !{i32* %ini}, i64 0, metadata !112), !dbg !870
  %0 = load i32* %ini, align 4, !dbg !871, !tbaa !637
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !871, !tbaa !644
  %qp = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !871
  %2 = load i32* %qp, align 4, !dbg !871, !tbaa !637
  %cmp = icmp slt i32 %2, 0, !dbg !871
  %. = select i1 %cmp, i32 0, i32 %2, !dbg !871
  %mul = mul nsw i32 %., %0, !dbg !871
  %shr = ashr i32 %mul, 4, !dbg !871
  %arrayidx2 = getelementptr inbounds i32* %ini, i64 1, !dbg !871
  %3 = load i32* %arrayidx2, align 4, !dbg !871, !tbaa !637
  %add = add nsw i32 %shr, %3, !dbg !871
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !113), !dbg !871
  %cmp3 = icmp slt i32 %add, 1, !dbg !872
  %cond7 = select i1 %cmp3, i32 1, i32 %add, !dbg !872
  %cmp8 = icmp slt i32 %cond7, 126, !dbg !872
  %cond17 = select i1 %cmp8, i32 %cond7, i32 126, !dbg !872
  tail call void @llvm.dbg.value(metadata !{i32 %cond17}, i64 0, metadata !113), !dbg !872
  %cmp18 = icmp sgt i32 %cond17, 63, !dbg !873
  br i1 %cmp18, label %if.then, label %if.else, !dbg !873

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %cond17, 65472, !dbg !874
  %conv = trunc i32 %sub to i16, !dbg !874
  %state = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 0, !dbg !874
  store i16 %conv, i16* %state, align 2, !dbg !874, !tbaa !699
  %MPS = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 1, !dbg !876
  store i8 1, i8* %MPS, align 1, !dbg !876, !tbaa !638
  br label %if.end, !dbg !877

if.else:                                          ; preds = %entry
  %sub19 = sub nsw i32 63, %cond17, !dbg !878
  %conv20 = trunc i32 %sub19 to i16, !dbg !878
  %state21 = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 0, !dbg !878
  store i16 %conv20, i16* %state21, align 2, !dbg !878, !tbaa !699
  %MPS22 = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 1, !dbg !880
  store i8 0, i8* %MPS22, align 1, !dbg !880, !tbaa !638
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %count = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 2, !dbg !881
  store i64 0, i64* %count, align 8, !dbg !881, !tbaa !703
  ret void, !dbg !882
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !114, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !49, metadata !54, metadata !63, metadata !68, metadata !71, metadata !92, metadata !99, metadata !105}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"arienco_create_encoding_environment", metadata !"arienco_create_encoding_environment", metadata !"", i32 61, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, %struct.EncodingEnvironment* ()* @arienco_create_encoding_environment, null, null, metadata !47, i32 62} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 62] [arienco_create_encoding_environment]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786454, metadata !1, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !31, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!21 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!23 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!24 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!25 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!26 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!28 = metadata !{i32 786454, metadata !29, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!31 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!33 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!34 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!35 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !21} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!36 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !21} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!37 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !21} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!38 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !21} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!39 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !27} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!40 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!41 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!42 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !33} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!43 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !33} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!44 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !33} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!45 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !33} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!46 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !33} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786688, metadata !10, metadata !"eep", metadata !11, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eep] [line 63]
!49 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"arienco_delete_encoding_environment", metadata !"arienco_delete_encoding_environment", metadata !"", i32 79, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*)* @arienco_delete_encoding_environment, null, null, metadata !52, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [arienco_delete_encoding_environment]
!50 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{null, metadata !14}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786689, metadata !49, metadata !"eep", metadata !11, i32 16777295, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep] [line 79]
!54 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"arienco_start_encoding", metadata !"arienco_start_encoding", metadata !"", i32 98, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*, i8*, i32*, i32)* @arienco_start_encoding, null, null, metadata !58, i32 101} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 101] [arienco_start_encoding]
!55 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{null, metadata !14, metadata !57, metadata !32, metadata !33}
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62}
!59 = metadata !{i32 786689, metadata !54, metadata !"eep", metadata !11, i32 16777314, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep] [line 98]
!60 = metadata !{i32 786689, metadata !54, metadata !"code_buffer", metadata !11, i32 33554531, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [code_buffer] [line 99]
!61 = metadata !{i32 786689, metadata !54, metadata !"code_len", metadata !11, i32 50331748, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [code_len] [line 100]
!62 = metadata !{i32 786689, metadata !54, metadata !"slice_type", metadata !11, i32 67108964, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [slice_type] [line 100]
!63 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"arienco_bits_written", metadata !"arienco_bits_written", metadata !"", i32 125, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.EncodingEnvironment*)* @arienco_bits_written, null, null, metadata !66, i32 126} ; [ DW_TAG_subprogram ] [line 125] [def] [scope 126] [arienco_bits_written]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !33, metadata !14}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786689, metadata !63, metadata !"eep", metadata !11, i32 16777341, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep] [line 125]
!68 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"arienco_done_encoding", metadata !"arienco_done_encoding", metadata !"", i32 137, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*)* @arienco_done_encoding, null, null, metadata !69, i32 138} ; [ DW_TAG_subprogram ] [line 137] [def] [scope 138] [arienco_done_encoding]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786689, metadata !68, metadata !"eep", metadata !11, i32 16777353, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep] [line 137]
!71 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"biari_encode_symbol", metadata !"biari_encode_symbol", metadata !"", i32 163, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*, i16, %struct.BiContextType*)* @biari_encode_symbol, null, null, metadata !85, i32 164} ; [ DW_TAG_subprogram ] [line 163] [def] [scope 164] [biari_encode_symbol]
!72 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!73 = metadata !{null, metadata !14, metadata !74, metadata !75}
!74 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!75 = metadata !{i32 786454, metadata !1, null, metadata !"BiContextTypePtr", i32 240, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [BiContextTypePtr] [line 240, size 0, align 0, offset 0] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BiContextType]
!77 = metadata !{i32 786454, metadata !18, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!78 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !79, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!79 = metadata !{metadata !80, metadata !82, metadata !83}
!80 = metadata !{i32 786445, metadata !18, metadata !78, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!81 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!82 = metadata !{i32 786445, metadata !18, metadata !78, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !30} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!83 = metadata !{i32 786445, metadata !18, metadata !78, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !84} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!84 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!86 = metadata !{i32 786689, metadata !71, metadata !"eep", metadata !11, i32 16777379, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep] [line 163]
!87 = metadata !{i32 786689, metadata !71, metadata !"symbol", metadata !11, i32 33554595, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbol] [line 163]
!88 = metadata !{i32 786689, metadata !71, metadata !"bi_ct", metadata !11, i32 50331811, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bi_ct] [line 163]
!89 = metadata !{i32 786688, metadata !71, metadata !"range", metadata !11, i32 165, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 165]
!90 = metadata !{i32 786688, metadata !71, metadata !"low", metadata !11, i32 166, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [low] [line 166]
!91 = metadata !{i32 786688, metadata !71, metadata !"rLPS", metadata !11, i32 167, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rLPS] [line 167]
!92 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"biari_encode_symbol_eq_prob", metadata !"biari_encode_symbol_eq_prob", metadata !"", i32 239, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*, i16)* @biari_encode_symbol_eq_prob, null, null, metadata !95, i32 240} ; [ DW_TAG_subprogram ] [line 239] [def] [scope 240] [biari_encode_symbol_eq_prob]
!93 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{null, metadata !14, metadata !74}
!95 = metadata !{metadata !96, metadata !97, metadata !98}
!96 = metadata !{i32 786689, metadata !92, metadata !"eep", metadata !11, i32 16777455, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep] [line 239]
!97 = metadata !{i32 786689, metadata !92, metadata !"symbol", metadata !11, i32 33554671, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbol] [line 239]
!98 = metadata !{i32 786688, metadata !92, metadata !"low", metadata !11, i32 241, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [low] [line 241]
!99 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"biari_encode_symbol_final", metadata !"biari_encode_symbol_final", metadata !"", i32 281, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*, i16)* @biari_encode_symbol_final, null, null, metadata !100, i32 282} ; [ DW_TAG_subprogram ] [line 281] [def] [scope 282] [biari_encode_symbol_final]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104}
!101 = metadata !{i32 786689, metadata !99, metadata !"eep", metadata !11, i32 16777497, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep] [line 281]
!102 = metadata !{i32 786689, metadata !99, metadata !"symbol", metadata !11, i32 33554713, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbol] [line 281]
!103 = metadata !{i32 786688, metadata !99, metadata !"range", metadata !11, i32 283, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 283]
!104 = metadata !{i32 786688, metadata !99, metadata !"low", metadata !11, i32 284, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [low] [line 284]
!105 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"biari_init_context", metadata !"biari_init_context", metadata !"", i32 330, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.BiContextType*, i32*)* @biari_init_context, null, null, metadata !110, i32 331} ; [ DW_TAG_subprogram ] [line 330] [def] [scope 331] [biari_init_context]
!106 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{null, metadata !75, metadata !108}
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!110 = metadata !{metadata !111, metadata !112, metadata !113}
!111 = metadata !{i32 786689, metadata !105, metadata !"ctx", metadata !11, i32 16777546, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 330]
!112 = metadata !{i32 786689, metadata !105, metadata !"ini", metadata !11, i32 33554762, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ini] [line 330]
!113 = metadata !{i32 786688, metadata !105, metadata !"pstate", metadata !11, i32 332, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pstate] [line 332]
!114 = metadata !{metadata !115, metadata !122, metadata !126, metadata !127, metadata !128, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !292, metadata !294, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !339, metadata !434, metadata !435, metadata !436, metadata !438, metadata !439, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !457, metadata !458, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !474, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !486, metadata !489, metadata !490, metadata !491, metadata !492, metadata !495, metadata !498, metadata !509, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621}
!115 = metadata !{i32 786484, i32 0, null, metadata !"rLPS_table_64x4", metadata !"rLPS_table_64x4", metadata !"", metadata !116, i32 46, metadata !117, i32 0, i32 1, [64 x [4 x i8]]* @rLPS_table_64x4, null} ; [ DW_TAG_variable ] [rLPS_table_64x4] [line 46] [def]
!116 = metadata !{i32 786473, metadata !29}       ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.h]
!117 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !118, metadata !119, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from ]
!118 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from byte]
!119 = metadata !{metadata !120, metadata !121}
!120 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!121 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!122 = metadata !{i32 786484, i32 0, null, metadata !"AC_next_state_MPS_64", metadata !"AC_next_state_MPS_64", metadata !"", metadata !116, i32 115, metadata !123, i32 0, i32 1, [64 x i16]* @AC_next_state_MPS_64, null} ; [ DW_TAG_variable ] [AC_next_state_MPS_64] [line 115] [def]
!123 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !124, metadata !125, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 16, offset 0] [from ]
!124 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned short]
!125 = metadata !{metadata !120}
!126 = metadata !{i32 786484, i32 0, null, metadata !"AC_next_state_LPS_64", metadata !"AC_next_state_LPS_64", metadata !"", metadata !116, i32 126, metadata !123, i32 0, i32 1, [64 x i16]* @AC_next_state_LPS_64, null} ; [ DW_TAG_variable ] [AC_next_state_LPS_64] [line 126] [def]
!127 = metadata !{i32 786484, i32 0, null, metadata !"binCount", metadata !"binCount", metadata !"", metadata !11, i32 22, metadata !33, i32 0, i32 1, i32* @binCount, null} ; [ DW_TAG_variable ] [binCount] [line 22] [def]
!128 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !129, i32 558, metadata !130, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!129 = metadata !{i32 786473, metadata !18}       ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!131 = metadata !{i32 786454, metadata !18, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!132 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !133, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !280, metadata !281, metadata !283, metadata !284}
!134 = metadata !{i32 786445, metadata !18, metadata !132, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!135 = metadata !{i32 786445, metadata !18, metadata !132, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!136 = metadata !{i32 786445, metadata !18, metadata !132, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!137 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !138, metadata !278, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!139 = metadata !{i32 786454, metadata !18, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!140 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !141, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !196, metadata !226, metadata !253, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !275}
!142 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!143 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!144 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!145 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !33} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!146 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!147 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !33} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!148 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !149} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!150 = metadata !{i32 786454, metadata !18, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!151 = metadata !{i32 786451, metadata !18, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !152, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!152 = metadata !{metadata !153, metadata !169, metadata !170}
!153 = metadata !{i32 786445, metadata !18, metadata !151, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !154} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!154 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!155 = metadata !{i32 786454, metadata !18, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!156 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !157, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!157 = metadata !{metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168}
!158 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!159 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!160 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!161 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !33} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!162 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!163 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !28} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!164 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !28} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!165 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!166 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !33} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!167 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !27} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!168 = metadata !{i32 786445, metadata !18, metadata !156, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !33} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!169 = metadata !{i32 786445, metadata !18, metadata !151, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!170 = metadata !{i32 786445, metadata !18, metadata !151, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !171} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!172 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!173 = metadata !{metadata !33, metadata !174, metadata !195}
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!175 = metadata !{i32 786454, metadata !18, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!176 = metadata !{i32 786451, metadata !18, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !177, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!177 = metadata !{metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !190}
!178 = metadata !{i32 786445, metadata !18, metadata !176, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!179 = metadata !{i32 786445, metadata !18, metadata !176, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!180 = metadata !{i32 786445, metadata !18, metadata !176, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!181 = metadata !{i32 786445, metadata !18, metadata !176, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !33} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!182 = metadata !{i32 786445, metadata !18, metadata !176, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!183 = metadata !{i32 786445, metadata !18, metadata !176, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !21} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!184 = metadata !{i32 786445, metadata !18, metadata !176, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!185 = metadata !{i32 786445, metadata !18, metadata !176, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !33} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!186 = metadata !{i32 786445, metadata !18, metadata !176, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !187} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!187 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !188} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!188 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!189 = metadata !{null, metadata !33, metadata !33, metadata !32, metadata !32}
!190 = metadata !{i32 786445, metadata !18, metadata !176, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !191} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!191 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!192 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!193 = metadata !{null, metadata !194, metadata !14}
!194 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!195 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!196 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !197} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !198} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!198 = metadata !{i32 786454, metadata !18, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!199 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !200, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!200 = metadata !{metadata !201, metadata !206, metadata !211, metadata !215, metadata !219, metadata !222, metadata !223}
!201 = metadata !{i32 786445, metadata !18, metadata !199, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!202 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !77, metadata !203, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!203 = metadata !{metadata !204, metadata !205}
!204 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!205 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!206 = metadata !{i32 786445, metadata !18, metadata !199, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !207} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !77, metadata !208, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!208 = metadata !{metadata !209, metadata !210}
!209 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!210 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!211 = metadata !{i32 786445, metadata !18, metadata !199, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !212} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!212 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !77, metadata !213, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!213 = metadata !{metadata !209, metadata !214}
!214 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!215 = metadata !{i32 786445, metadata !18, metadata !199, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !216} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!216 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !77, metadata !217, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!217 = metadata !{metadata !209, metadata !218}
!218 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!219 = metadata !{i32 786445, metadata !18, metadata !199, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !220} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!220 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !77, metadata !221, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!221 = metadata !{metadata !121}
!222 = metadata !{i32 786445, metadata !18, metadata !199, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !220} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!223 = metadata !{i32 786445, metadata !18, metadata !199, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !224} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!224 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !77, metadata !225, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!225 = metadata !{metadata !204}
!226 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !227} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!227 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!228 = metadata !{i32 786454, metadata !18, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!229 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !230, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!230 = metadata !{metadata !231, metadata !234, metadata !235, metadata !238, metadata !241, metadata !245, metadata !246, metadata !250, metadata !251, metadata !252}
!231 = metadata !{i32 786445, metadata !18, metadata !229, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !232} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!232 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !77, metadata !233, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!233 = metadata !{metadata !209}
!234 = metadata !{i32 786445, metadata !18, metadata !229, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !220} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!235 = metadata !{i32 786445, metadata !18, metadata !229, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !236} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!236 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !77, metadata !237, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!237 = metadata !{metadata !204, metadata !121}
!238 = metadata !{i32 786445, metadata !18, metadata !229, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !239} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!239 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !77, metadata !240, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!240 = metadata !{metadata !214, metadata !121}
!241 = metadata !{i32 786445, metadata !18, metadata !229, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !242} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!242 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !77, metadata !243, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!243 = metadata !{metadata !214, metadata !244}
!244 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!245 = metadata !{i32 786445, metadata !18, metadata !229, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !242} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!246 = metadata !{i32 786445, metadata !18, metadata !229, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !247} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!247 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !77, metadata !248, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!248 = metadata !{metadata !214, metadata !249}
!249 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!250 = metadata !{i32 786445, metadata !18, metadata !229, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !247} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!251 = metadata !{i32 786445, metadata !18, metadata !229, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !242} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!252 = metadata !{i32 786445, metadata !18, metadata !229, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !242} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!253 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !254} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!254 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !255} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!255 = metadata !{i32 786454, metadata !18, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !256} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!256 = metadata !{i32 786451, metadata !18, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !257, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!257 = metadata !{metadata !258, metadata !259, metadata !260}
!258 = metadata !{i32 786445, metadata !18, metadata !256, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!259 = metadata !{i32 786445, metadata !18, metadata !256, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!260 = metadata !{i32 786445, metadata !18, metadata !256, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !261} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!261 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !256} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!262 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !33} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!263 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!264 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!265 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!266 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !33} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!267 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !32} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!268 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !32} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!269 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !32} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!270 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !271} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!271 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !272} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!272 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!273 = metadata !{metadata !274, metadata !33}
!274 = metadata !{i32 786454, metadata !18, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!275 = metadata !{i32 786445, metadata !18, metadata !140, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !276} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!276 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !33, metadata !277, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!277 = metadata !{metadata !204, metadata !209}
!278 = metadata !{metadata !279}
!279 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!280 = metadata !{i32 786445, metadata !18, metadata !132, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !33} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!281 = metadata !{i32 786445, metadata !18, metadata !132, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !282} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!282 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!283 = metadata !{i32 786445, metadata !18, metadata !132, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !282} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!284 = metadata !{i32 786445, metadata !18, metadata !132, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !282} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!285 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !129, i32 559, metadata !130, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!286 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !129, i32 560, metadata !130, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!287 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !129, i32 561, metadata !130, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!288 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !129, i32 562, metadata !130, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!289 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !129, i32 565, metadata !290, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!290 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !291} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!291 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!292 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !129, i32 566, metadata !293, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!293 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!294 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !129, i32 567, metadata !295, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!295 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!296 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !129, i32 569, metadata !21, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!297 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !129, i32 570, metadata !21, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!298 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !129, i32 572, metadata !33, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!299 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !129, i32 572, metadata !33, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!300 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !129, i32 573, metadata !301, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!301 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !302} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!302 = metadata !{i32 786454, metadata !18, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !303} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!303 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !304, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!304 = metadata !{metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !315, metadata !316, metadata !317, metadata !318, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338}
!305 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!306 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!307 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!308 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !274} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!309 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !274} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!310 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !274} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!311 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !312} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!312 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !33, metadata !313, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!313 = metadata !{metadata !314}
!314 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!315 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !274} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!316 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !21} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!317 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !21} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!318 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !319} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!319 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !21, metadata !313, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!320 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !319} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!321 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !319} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!322 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !274} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!323 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !21} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!324 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !21} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!325 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !27} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!326 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !33} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!327 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !33} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!328 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !274} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!329 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !21} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!330 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !33} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!331 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !33} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!332 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !33} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!333 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !33} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!334 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !33} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!335 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !274} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!336 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !274} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!337 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !274} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!338 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !274} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!339 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !129, i32 574, metadata !340, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!340 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !341} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!341 = metadata !{i32 786454, metadata !18, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !342} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!342 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !343, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381}
!344 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!345 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!346 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !274} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!347 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !274} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!348 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !274} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!349 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !274} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!350 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!351 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!352 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!353 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !274} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!354 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !312} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!355 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !21} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!356 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !21} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!357 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !21} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!358 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !21} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!359 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !21} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!360 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !274} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!361 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !33} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!362 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !33} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!363 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !21} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!364 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !365} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!365 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !33, metadata !366, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!366 = metadata !{metadata !367}
!367 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!368 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !21} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!369 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !274} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!370 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !21} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!371 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !21} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!372 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !274} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!373 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !274} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!374 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !274} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!375 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !274} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!376 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !21} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!377 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !21} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!378 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !21} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!379 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !21} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!380 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !274} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!381 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !382} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!382 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !383} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!383 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !384, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!384 = metadata !{metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433}
!385 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!386 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!387 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!388 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!389 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !274} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!390 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !274} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!391 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !274} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!392 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!393 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !274} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!394 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !274} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!395 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!396 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !21} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!397 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !21} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!398 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !274} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!399 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !21} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!400 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !21} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!401 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !274} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!402 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !21} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!403 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !21} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!404 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !274} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!405 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !274} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!406 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !407} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!407 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !408} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!408 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !409, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!409 = metadata !{metadata !410, metadata !411, metadata !412, metadata !413, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422}
!410 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!411 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!412 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!413 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !414} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!414 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !21, metadata !415, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!415 = metadata !{metadata !416}
!416 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!417 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !414} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!418 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !414} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!419 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !21} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!420 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !21} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!421 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !21} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!422 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !21} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!423 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !274} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!424 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !407} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!425 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !274} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!426 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !274} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!427 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !274} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!428 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !21} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!429 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !21} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!430 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !21} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!431 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !21} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!432 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !21} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!433 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !21} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!434 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !129, i32 578, metadata !33, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!435 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !129, i32 579, metadata !33, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!436 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !129, i32 583, metadata !437, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!437 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !295} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!438 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !129, i32 584, metadata !437, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!439 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !129, i32 585, metadata !440, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!440 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !437} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!441 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !129, i32 586, metadata !33, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!442 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !129, i32 587, metadata !33, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!443 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !129, i32 588, metadata !33, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!444 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !129, i32 589, metadata !33, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!445 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !129, i32 592, metadata !290, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!446 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !129, i32 593, metadata !290, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!447 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !129, i32 595, metadata !293, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!448 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !129, i32 596, metadata !293, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!449 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !129, i32 598, metadata !290, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!450 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !129, i32 599, metadata !293, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!451 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !129, i32 601, metadata !290, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!452 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !129, i32 602, metadata !293, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!453 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !129, i32 604, metadata !454, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!454 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !455} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!455 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !456} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!456 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!457 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !129, i32 605, metadata !455, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!458 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !129, i32 608, metadata !459, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!459 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!460 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !129, i32 609, metadata !459, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!461 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !129, i32 610, metadata !33, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!462 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !129, i32 612, metadata !33, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!463 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !129, i32 612, metadata !33, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!464 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !129, i32 612, metadata !33, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!465 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !129, i32 613, metadata !33, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!466 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !129, i32 613, metadata !33, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!467 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !129, i32 613, metadata !33, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!468 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !129, i32 614, metadata !33, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!469 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !129, i32 617, metadata !470, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!470 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !471, metadata !472, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!471 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!472 = metadata !{metadata !473}
!473 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!474 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !129, i32 620, metadata !475, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!475 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !33, metadata !476, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!476 = metadata !{metadata !477, metadata !477}
!477 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!478 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !129, i32 620, metadata !475, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!479 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !129, i32 620, metadata !475, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!480 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !129, i32 621, metadata !475, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!481 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !129, i32 621, metadata !475, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!482 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !129, i32 621, metadata !475, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!483 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !129, i32 622, metadata !484, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!484 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !33, metadata !485, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!485 = metadata !{metadata !204, metadata !477, metadata !477}
!486 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !129, i32 623, metadata !487, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!487 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !33, metadata !488, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!488 = metadata !{metadata !209, metadata !121, metadata !121}
!489 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !129, i32 623, metadata !487, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!490 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !129, i32 624, metadata !487, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!491 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !129, i32 624, metadata !487, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!492 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !129, i32 625, metadata !493, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!493 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !33, metadata !494, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!494 = metadata !{metadata !121, metadata !121}
!495 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !129, i32 625, metadata !496, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!496 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !33, metadata !497, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!497 = metadata !{metadata !477}
!498 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !129, i32 1201, metadata !499, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!499 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !500} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!500 = metadata !{i32 786454, metadata !18, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !501} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!501 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !502, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!502 = metadata !{metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508}
!503 = metadata !{i32 786445, metadata !18, metadata !501, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!504 = metadata !{i32 786445, metadata !18, metadata !501, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!505 = metadata !{i32 786445, metadata !18, metadata !501, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!506 = metadata !{i32 786445, metadata !18, metadata !501, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !33} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!507 = metadata !{i32 786445, metadata !18, metadata !501, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!508 = metadata !{i32 786445, metadata !18, metadata !501, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !33} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!509 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !129, i32 1202, metadata !510, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!510 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !511} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!511 = metadata !{i32 786454, metadata !18, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !512} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!512 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !513, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!513 = metadata !{metadata !514, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !533, metadata !534, metadata !538, metadata !539, metadata !540, metadata !541, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549}
!514 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !515} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!515 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!516 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !475} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!517 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !475} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!518 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !475} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!519 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !440} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!520 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !437} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!521 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !33} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!522 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !33} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!523 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !524} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!524 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !33, metadata !221, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!525 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !524} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!526 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !295} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!527 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !496} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!528 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !33} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!529 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !530} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!530 = metadata !{i32 786454, metadata !18, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !531} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!531 = metadata !{i32 786454, metadata !18, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !532} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!532 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!533 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !33} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!534 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !535} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!535 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !536} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!536 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !537} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!537 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !454} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!538 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !535} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!539 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !535} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!540 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !535} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!541 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !542} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!542 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !74, metadata !488, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!543 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !33} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!544 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !33} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!545 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !33} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!546 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !33} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!547 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !33} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!548 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !33} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!549 = metadata !{i32 786445, metadata !18, metadata !512, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !33} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!550 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !129, i32 1203, metadata !511, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!551 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !129, i32 1203, metadata !511, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!552 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !129, i32 1204, metadata !511, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!553 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !129, i32 1204, metadata !511, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!554 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !129, i32 1230, metadata !555, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!555 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !556} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!556 = metadata !{i32 786454, metadata !18, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !557} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!557 = metadata !{i32 786451, metadata !558, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !559, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!558 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!559 = metadata !{metadata !560, metadata !561, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !581, metadata !582, metadata !583, metadata !584, metadata !586, metadata !587, metadata !589, metadata !593, metadata !595, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !603, metadata !604}
!560 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!561 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!562 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !471} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!563 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!564 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!565 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!566 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!567 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!568 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!569 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!570 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!571 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!572 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !562} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!573 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !574} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!574 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !575} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!575 = metadata !{i32 786451, metadata !558, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !576, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!576 = metadata !{metadata !577, metadata !578, metadata !580}
!577 = metadata !{i32 786445, metadata !558, metadata !575, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !574} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!578 = metadata !{i32 786445, metadata !558, metadata !575, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !579} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!579 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !557} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!580 = metadata !{i32 786445, metadata !558, metadata !575, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!581 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !579} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!582 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !33} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!583 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !33} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!584 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !585} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!585 = metadata !{i32 786454, metadata !558, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !532} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!586 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !81} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!587 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !588} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!588 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!589 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !590} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!590 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !471, metadata !591, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!591 = metadata !{metadata !592}
!592 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!593 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !594} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!594 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!595 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !596} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!596 = metadata !{i32 786454, metadata !558, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !532} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!597 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !594} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!598 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !594} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!599 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !594} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!600 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !594} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!601 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !602} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!602 = metadata !{i32 786454, metadata !558, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!603 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !33} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!604 = metadata !{i32 786445, metadata !558, metadata !557, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !605} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!605 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !471, metadata !606, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!606 = metadata !{metadata !607}
!607 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!608 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !129, i32 1231, metadata !555, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!609 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !129, i32 1232, metadata !555, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!610 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !129, i32 1233, metadata !33, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!611 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !129, i32 1234, metadata !33, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!612 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !129, i32 1237, metadata !613, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!613 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !33, metadata !606, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!614 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !129, i32 1238, metadata !613, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!615 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !129, i32 1239, metadata !613, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!616 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !129, i32 1240, metadata !613, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!617 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !129, i32 1241, metadata !613, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!618 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !129, i32 1242, metadata !613, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!619 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !129, i32 1456, metadata !33, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!620 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !129, i32 1465, metadata !33, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!621 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !129, i32 1466, metadata !33, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!622 = metadata !{i32 65, i32 0, metadata !10, null}
!623 = metadata !{i32 66, i32 0, metadata !10, null}
!624 = metadata !{i32 68, i32 0, metadata !10, null}
!625 = metadata !{i32 79, i32 0, metadata !49, null}
!626 = metadata !{i32 81, i32 0, metadata !49, null}
!627 = metadata !{i32 83, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !49, i32 82, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!629 = metadata !{i32 84, i32 0, metadata !628, null}
!630 = metadata !{i32 85, i32 0, metadata !628, null}
!631 = metadata !{i32 87, i32 0, metadata !49, null}
!632 = metadata !{i32 88, i32 0, metadata !49, null}
!633 = metadata !{i32 98, i32 0, metadata !54, null}
!634 = metadata !{i32 99, i32 0, metadata !54, null}
!635 = metadata !{i32 100, i32 0, metadata !54, null}
!636 = metadata !{i32 102, i32 0, metadata !54, null}
!637 = metadata !{metadata !"int", metadata !638}
!638 = metadata !{metadata !"omnipotent char", metadata !639}
!639 = metadata !{metadata !"Simple C/C++ TBAA"}
!640 = metadata !{i32 103, i32 0, metadata !54, null}
!641 = metadata !{i32 104, i32 0, metadata !54, null}
!642 = metadata !{i32 105, i32 0, metadata !54, null}
!643 = metadata !{i32 107, i32 0, metadata !54, null}
!644 = metadata !{metadata !"any pointer", metadata !638}
!645 = metadata !{i32 108, i32 0, metadata !54, null}
!646 = metadata !{i32 111, i32 0, metadata !54, null}
!647 = metadata !{i32 113, i32 0, metadata !54, null}
!648 = metadata !{i32 114, i32 0, metadata !54, null}
!649 = metadata !{i32 115, i32 0, metadata !54, null}
!650 = metadata !{i32 117, i32 0, metadata !54, null}
!651 = metadata !{i32 125, i32 0, metadata !63, null}
!652 = metadata !{i32 127, i32 0, metadata !63, null}
!653 = metadata !{i32 137, i32 0, metadata !68, null}
!654 = metadata !{i32 139, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !656, i32 139, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!656 = metadata !{i32 786443, metadata !1, metadata !68, i32 139, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!657 = metadata !{i32 139, i32 0, metadata !656, null}
!658 = metadata !{i32 139, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !660, i32 139, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!660 = metadata !{i32 786443, metadata !1, metadata !661, i32 139, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!661 = metadata !{i32 786443, metadata !1, metadata !656, i32 139, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!662 = metadata !{i32 139, i32 0, metadata !663, null}
!663 = metadata !{i32 786443, metadata !1, metadata !659, i32 139, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!664 = metadata !{i32 139, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !655, i32 139, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!666 = metadata !{i32 139, i32 0, metadata !667, null}
!667 = metadata !{i32 786443, metadata !1, metadata !665, i32 139, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!668 = metadata !{i32 139, i32 0, metadata !661, null}
!669 = metadata !{i32 139, i32 0, metadata !660, null}
!670 = metadata !{i32 140, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !68, i32 140, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!672 = metadata !{i32 140, i32 0, metadata !673, null}
!673 = metadata !{i32 786443, metadata !1, metadata !671, i32 140, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!674 = metadata !{i32 140, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !673, i32 140, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!676 = metadata !{i32 141, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !68, i32 141, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!678 = metadata !{i32 146, i32 0, metadata !679, null}
!679 = metadata !{i32 786443, metadata !1, metadata !680, i32 146, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!680 = metadata !{i32 786443, metadata !1, metadata !68, i32 146, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!681 = metadata !{i32 141, i32 0, metadata !682, null}
!682 = metadata !{i32 786443, metadata !1, metadata !677, i32 141, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!683 = metadata !{i32 141, i32 0, metadata !684, null}
!684 = metadata !{i32 786443, metadata !1, metadata !682, i32 141, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!685 = metadata !{i32 143, i32 0, metadata !68, null}
!686 = metadata !{i32 146, i32 0, metadata !687, null}
!687 = metadata !{i32 786443, metadata !1, metadata !679, i32 146, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!688 = metadata !{i32 145, i32 0, metadata !68, null}
!689 = metadata !{i32 146, i32 0, metadata !680, null}
!690 = metadata !{i32 148, i32 0, metadata !68, null}
!691 = metadata !{i32 149, i32 0, metadata !68, null}
!692 = metadata !{i32 150, i32 0, metadata !68, null}
!693 = metadata !{i32 151, i32 0, metadata !68, null}
!694 = metadata !{i32 153, i32 0, metadata !68, null}
!695 = metadata !{i32 163, i32 0, metadata !71, null}
!696 = metadata !{i32 165, i32 0, metadata !71, null}
!697 = metadata !{i32 166, i32 0, metadata !71, null}
!698 = metadata !{i32 167, i32 0, metadata !71, null}
!699 = metadata !{metadata !"short", metadata !638}
!700 = metadata !{i32 176, i32 0, metadata !71, null}
!701 = metadata !{i32 178, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !71, i32 177, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!703 = metadata !{metadata !"long", metadata !638}
!704 = metadata !{i32 179, i32 0, metadata !702, null}
!705 = metadata !{i16 1}
!706 = metadata !{i32 186, i32 0, metadata !71, null}
!707 = metadata !{i32 185, i32 0, metadata !71, null}
!708 = metadata !{i32 188, i32 0, metadata !71, null}
!709 = metadata !{i32 189, i32 0, metadata !71, null}
!710 = metadata !{i32 191, i32 0, metadata !711, null}
!711 = metadata !{i32 786443, metadata !1, metadata !71, i32 190, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!712 = metadata !{i32 192, i32 0, metadata !711, null}
!713 = metadata !{i32 194, i32 0, metadata !711, null}
!714 = metadata !{i32 195, i32 0, metadata !711, null}
!715 = metadata !{i32 196, i32 0, metadata !711, null}
!716 = metadata !{i32 199, i32 0, metadata !71, null}
!717 = metadata !{i32 203, i32 0, metadata !71, null}
!718 = metadata !{i32 225, i32 0, metadata !71, null}
!719 = metadata !{i32 207, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !721, i32 207, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!721 = metadata !{i32 786443, metadata !1, metadata !722, i32 207, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!722 = metadata !{i32 786443, metadata !1, metadata !723, i32 206, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!723 = metadata !{i32 786443, metadata !1, metadata !71, i32 204, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!724 = metadata !{i32 207, i32 0, metadata !725, null}
!725 = metadata !{i32 786443, metadata !1, metadata !720, i32 207, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!726 = metadata !{i32 207, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !725, i32 207, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!728 = metadata !{i32 207, i32 0, metadata !721, null}
!729 = metadata !{i32 205, i32 0, metadata !723, null}
!730 = metadata !{i32 207, i32 0, metadata !731, null}
!731 = metadata !{i32 786443, metadata !1, metadata !721, i32 207, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!732 = metadata !{i32 207, i32 0, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !731, i32 207, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!734 = metadata !{i32 207, i32 0, metadata !735, null}
!735 = metadata !{i32 786443, metadata !1, metadata !733, i32 207, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!736 = metadata !{i32 207, i32 0, metadata !737, null}
!737 = metadata !{i32 786443, metadata !1, metadata !735, i32 207, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!738 = metadata !{i32 208, i32 0, metadata !722, null}
!739 = metadata !{i32 209, i32 0, metadata !722, null}
!740 = metadata !{i32 211, i32 0, metadata !723, null}
!741 = metadata !{i32 213, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !743, i32 213, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!743 = metadata !{i32 786443, metadata !1, metadata !744, i32 213, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!744 = metadata !{i32 786443, metadata !1, metadata !723, i32 212, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!745 = metadata !{i32 213, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !742, i32 213, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!747 = metadata !{i32 213, i32 0, metadata !748, null}
!748 = metadata !{i32 786443, metadata !1, metadata !746, i32 213, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!749 = metadata !{i32 213, i32 0, metadata !743, null}
!750 = metadata !{i32 213, i32 0, metadata !751, null}
!751 = metadata !{i32 786443, metadata !1, metadata !743, i32 213, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!752 = metadata !{i32 213, i32 0, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !751, i32 213, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!754 = metadata !{i32 213, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !753, i32 213, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!756 = metadata !{i32 213, i32 0, metadata !757, null}
!757 = metadata !{i32 786443, metadata !1, metadata !755, i32 213, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!758 = metadata !{i32 217, i32 0, metadata !759, null}
!759 = metadata !{i32 786443, metadata !1, metadata !723, i32 216, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!760 = metadata !{i32 218, i32 0, metadata !759, null}
!761 = metadata !{i32 220, i32 0, metadata !723, null}
!762 = metadata !{i32 221, i32 0, metadata !723, null}
!763 = metadata !{i32 223, i32 0, metadata !71, null}
!764 = metadata !{i32 224, i32 0, metadata !71, null}
!765 = metadata !{i32 227, i32 0, metadata !71, null}
!766 = metadata !{i32 239, i32 0, metadata !92, null}
!767 = metadata !{i32 241, i32 0, metadata !92, null}
!768 = metadata !{i32 250, i32 0, metadata !92, null}
!769 = metadata !{i32 251, i32 0, metadata !92, null}
!770 = metadata !{i32 255, i32 0, metadata !92, null}
!771 = metadata !{i32 257, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !773, i32 257, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!773 = metadata !{i32 786443, metadata !1, metadata !774, i32 257, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!774 = metadata !{i32 786443, metadata !1, metadata !92, i32 256, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!775 = metadata !{i32 257, i32 0, metadata !773, null}
!776 = metadata !{i32 257, i32 0, metadata !777, null}
!777 = metadata !{i32 786443, metadata !1, metadata !778, i32 257, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!778 = metadata !{i32 786443, metadata !1, metadata !779, i32 257, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!779 = metadata !{i32 786443, metadata !1, metadata !773, i32 257, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!780 = metadata !{i32 257, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !777, i32 257, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!782 = metadata !{i32 257, i32 0, metadata !783, null}
!783 = metadata !{i32 786443, metadata !1, metadata !772, i32 257, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!784 = metadata !{i32 257, i32 0, metadata !785, null}
!785 = metadata !{i32 786443, metadata !1, metadata !783, i32 257, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!786 = metadata !{i32 257, i32 0, metadata !779, null}
!787 = metadata !{i32 257, i32 0, metadata !778, null}
!788 = metadata !{i32 258, i32 0, metadata !774, null}
!789 = metadata !{i32 259, i32 0, metadata !774, null}
!790 = metadata !{i32 261, i32 0, metadata !92, null}
!791 = metadata !{i32 263, i32 0, metadata !792, null}
!792 = metadata !{i32 786443, metadata !1, metadata !793, i32 263, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!793 = metadata !{i32 786443, metadata !1, metadata !794, i32 263, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!794 = metadata !{i32 786443, metadata !1, metadata !92, i32 262, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!795 = metadata !{i32 263, i32 0, metadata !793, null}
!796 = metadata !{i32 263, i32 0, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !798, i32 263, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!798 = metadata !{i32 786443, metadata !1, metadata !799, i32 263, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!799 = metadata !{i32 786443, metadata !1, metadata !793, i32 263, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!800 = metadata !{i32 263, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !797, i32 263, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!802 = metadata !{i32 263, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !792, i32 263, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!804 = metadata !{i32 263, i32 0, metadata !805, null}
!805 = metadata !{i32 786443, metadata !1, metadata !803, i32 263, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!806 = metadata !{i32 263, i32 0, metadata !799, null}
!807 = metadata !{i32 263, i32 0, metadata !798, null}
!808 = metadata !{i32 267, i32 0, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !92, i32 266, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!810 = metadata !{i32 268, i32 0, metadata !809, null}
!811 = metadata !{i32 270, i32 0, metadata !92, null}
!812 = metadata !{i32 271, i32 0, metadata !92, null}
!813 = metadata !{i32 273, i32 0, metadata !92, null}
!814 = metadata !{i32 281, i32 0, metadata !99, null}
!815 = metadata !{i32 283, i32 0, metadata !99, null}
!816 = metadata !{i32 284, i32 0, metadata !99, null}
!817 = metadata !{i32 292, i32 0, metadata !99, null}
!818 = metadata !{i32 2}
!819 = metadata !{i32 294, i32 0, metadata !820, null}
!820 = metadata !{i32 786443, metadata !1, metadata !99, i32 292, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!821 = metadata !{i32 297, i32 0, metadata !99, null}
!822 = metadata !{i32 319, i32 0, metadata !99, null}
!823 = metadata !{i32 301, i32 0, metadata !824, null}
!824 = metadata !{i32 786443, metadata !1, metadata !825, i32 301, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!825 = metadata !{i32 786443, metadata !1, metadata !826, i32 301, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!826 = metadata !{i32 786443, metadata !1, metadata !827, i32 300, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!827 = metadata !{i32 786443, metadata !1, metadata !99, i32 298, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!828 = metadata !{i32 301, i32 0, metadata !829, null}
!829 = metadata !{i32 786443, metadata !1, metadata !824, i32 301, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!830 = metadata !{i32 301, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !829, i32 301, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!832 = metadata !{i32 301, i32 0, metadata !825, null}
!833 = metadata !{i32 299, i32 0, metadata !827, null}
!834 = metadata !{i32 301, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !825, i32 301, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!836 = metadata !{i32 301, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !835, i32 301, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!838 = metadata !{i32 301, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !837, i32 301, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!840 = metadata !{i32 301, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !839, i32 301, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!842 = metadata !{i32 302, i32 0, metadata !826, null}
!843 = metadata !{i32 303, i32 0, metadata !826, null}
!844 = metadata !{i32 305, i32 0, metadata !827, null}
!845 = metadata !{i32 307, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !847, i32 307, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!847 = metadata !{i32 786443, metadata !1, metadata !848, i32 307, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!848 = metadata !{i32 786443, metadata !1, metadata !827, i32 306, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!849 = metadata !{i32 307, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !846, i32 307, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!851 = metadata !{i32 307, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !1, metadata !850, i32 307, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!853 = metadata !{i32 307, i32 0, metadata !847, null}
!854 = metadata !{i32 307, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !847, i32 307, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!856 = metadata !{i32 307, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !855, i32 307, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!858 = metadata !{i32 307, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !857, i32 307, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!860 = metadata !{i32 307, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !859, i32 307, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!862 = metadata !{i32 311, i32 0, metadata !863, null}
!863 = metadata !{i32 786443, metadata !1, metadata !827, i32 310, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!864 = metadata !{i32 312, i32 0, metadata !863, null}
!865 = metadata !{i32 314, i32 0, metadata !827, null}
!866 = metadata !{i32 315, i32 0, metadata !827, null}
!867 = metadata !{i32 317, i32 0, metadata !99, null}
!868 = metadata !{i32 318, i32 0, metadata !99, null}
!869 = metadata !{i32 320, i32 0, metadata !99, null}
!870 = metadata !{i32 330, i32 0, metadata !105, null}
!871 = metadata !{i32 334, i32 0, metadata !105, null}
!872 = metadata !{i32 335, i32 0, metadata !105, null}
!873 = metadata !{i32 337, i32 0, metadata !105, null}
!874 = metadata !{i32 339, i32 0, metadata !875, null}
!875 = metadata !{i32 786443, metadata !1, metadata !105, i32 338, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!876 = metadata !{i32 340, i32 0, metadata !875, null}
!877 = metadata !{i32 341, i32 0, metadata !875, null}
!878 = metadata !{i32 344, i32 0, metadata !879, null}
!879 = metadata !{i32 786443, metadata !1, metadata !105, i32 343, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c]
!880 = metadata !{i32 345, i32 0, metadata !879, null}
!881 = metadata !{i32 348, i32 0, metadata !105, null}
!882 = metadata !{i32 349, i32 0, metadata !105, null}
