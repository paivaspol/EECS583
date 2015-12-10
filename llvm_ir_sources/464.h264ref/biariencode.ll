; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/biariencode.c'
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
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

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
define noalias %struct.EncodingEnvironment* @arienco_create_encoding_environment() #0 {
  %1 = tail call i8* @calloc(i64 1, i64 104) #5, !dbg !631
  %2 = bitcast i8* %1 to %struct.EncodingEnvironment*, !dbg !633
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %2, i64 0, metadata !48, metadata !634), !dbg !635
  %3 = icmp eq i8* %1, null, !dbg !636
  br i1 %3, label %4, label %5, !dbg !637

; <label>:4                                       ; preds = %0
  tail call void @no_mem_exit(i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0)) #5, !dbg !638
  br label %5, !dbg !638

; <label>:5                                       ; preds = %4, %0
  ret %struct.EncodingEnvironment* %2, !dbg !639
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @arienco_delete_encoding_environment(%struct.EncodingEnvironment* %eep) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep, i64 0, metadata !53, metadata !634), !dbg !640
  %1 = icmp eq %struct.EncodingEnvironment* %eep, null, !dbg !641
  br i1 %1, label %2, label %4, !dbg !643

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([33 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !644
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 200) #5, !dbg !646
  br label %6, !dbg !647

; <label>:4                                       ; preds = %0
  %5 = bitcast %struct.EncodingEnvironment* %eep to i8*, !dbg !648
  tail call void @free(i8* %5) #6, !dbg !649
  br label %6

; <label>:6                                       ; preds = %4, %2
  ret void, !dbg !650
}

; Function Attrs: optsize
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @arienco_start_encoding(%struct.EncodingEnvironment* nocapture %eep, i8* %code_buffer, i32* %code_len, i32 %slice_type) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep, i64 0, metadata !59, metadata !634), !dbg !651
  tail call void @llvm.dbg.value(metadata i8* %code_buffer, i64 0, metadata !60, metadata !634), !dbg !652
  tail call void @llvm.dbg.value(metadata i32* %code_len, i64 0, metadata !61, metadata !634), !dbg !653
  tail call void @llvm.dbg.value(metadata i32 %slice_type, i64 0, metadata !62, metadata !634), !dbg !654
  %1 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0, !dbg !655
  store i32 0, i32* %1, align 4, !dbg !656, !tbaa !657
  %2 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !663
  store i32 0, i32* %2, align 4, !dbg !664, !tbaa !665
  %3 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !666
  store i32 0, i32* %3, align 4, !dbg !667, !tbaa !668
  %4 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !669
  store i32 9, i32* %4, align 4, !dbg !670, !tbaa !671
  %5 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !672
  store i8* %code_buffer, i8** %5, align 8, !dbg !673, !tbaa !674
  %6 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !675
  store i32* %code_len, i32** %6, align 8, !dbg !676, !tbaa !677
  %7 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1, !dbg !678
  store i32 510, i32* %7, align 4, !dbg !679, !tbaa !680
  %8 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !681
  store i32 0, i32* %8, align 4, !dbg !682, !tbaa !683
  %9 = load i32* %code_len, align 4, !dbg !684, !tbaa !685
  %10 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 18, !dbg !686
  store i32 %9, i32* %10, align 4, !dbg !687, !tbaa !688
  %11 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !689
  store i32 0, i32* %11, align 4, !dbg !690, !tbaa !691
  ret void, !dbg !692
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @arienco_bits_written(%struct.EncodingEnvironment* nocapture readonly %eep) #3 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep, i64 0, metadata !67, metadata !634), !dbg !693
  %1 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !694
  %2 = load i32** %1, align 8, !dbg !694, !tbaa !677
  %3 = load i32* %2, align 4, !dbg !695, !tbaa !685
  %4 = shl i32 %3, 3, !dbg !696
  %5 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !697
  %6 = load i32* %5, align 4, !dbg !697, !tbaa !665
  %7 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !698
  %8 = load i32* %7, align 4, !dbg !698, !tbaa !671
  %9 = add i32 %6, 8, !dbg !699
  %10 = add i32 %9, %4, !dbg !700
  %11 = sub i32 %10, %8, !dbg !701
  ret i32 %11, !dbg !702
}

; Function Attrs: nounwind optsize ssp uwtable
define void @arienco_done_encoding(%struct.EncodingEnvironment* %eep) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep, i64 0, metadata !70, metadata !634), !dbg !703
  %1 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !704
  %2 = load i32* %1, align 4, !dbg !704, !tbaa !668
  %3 = shl i32 %2, 1, !dbg !704
  %4 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0, !dbg !704
  %5 = load i32* %4, align 4, !dbg !704, !tbaa !657
  %6 = lshr i32 %5, 9, !dbg !704
  %7 = and i32 %6, 1, !dbg !704
  %8 = or i32 %7, %3, !dbg !704
  store i32 %8, i32* %1, align 4, !dbg !704, !tbaa !668
  %9 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !707
  %10 = load i32* %9, align 4, !dbg !707, !tbaa !671
  %11 = add i32 %10, -1, !dbg !707
  store i32 %11, i32* %9, align 4, !dbg !707, !tbaa !671
  %12 = icmp eq i32 %11, 0, !dbg !707
  br i1 %12, label %21, label %.preheader, !dbg !704

.preheader:                                       ; preds = %21, %.lr.ph22, %0
  %13 = phi i32 [ %11, %0 ], [ 8, %.lr.ph22 ], [ 8, %21 ]
  %14 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !709
  %15 = load i32* %14, align 4, !dbg !709, !tbaa !665
  %16 = icmp eq i32 %15, 0, !dbg !709
  br i1 %16, label %._crit_edge, label %.lr.ph20, !dbg !709

.lr.ph20:                                         ; preds = %.preheader
  %17 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !710
  %18 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !710
  %19 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !710
  %20 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !715
  br label %41, !dbg !709

; <label>:21                                      ; preds = %0
  %22 = trunc i32 %8 to i8, !dbg !717
  %23 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !717
  %24 = load i32** %23, align 8, !dbg !717, !tbaa !677
  %25 = load i32* %24, align 4, !dbg !717, !tbaa !685
  %26 = add nsw i32 %25, 1, !dbg !717
  store i32 %26, i32* %24, align 4, !dbg !717, !tbaa !685
  %27 = sext i32 %25 to i64, !dbg !717
  %28 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !717
  %29 = load i8** %28, align 8, !dbg !717, !tbaa !674
  %30 = getelementptr inbounds i8* %29, i64 %27, !dbg !717
  store i8 %22, i8* %30, align 1, !dbg !717, !tbaa !719
  store i32 8, i32* %9, align 4, !dbg !717, !tbaa !671
  %31 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !717
  %32 = load i32* %31, align 4, !dbg !717, !tbaa !683
  %33 = icmp sgt i32 %32, 7, !dbg !717
  br i1 %33, label %.lr.ph22, label %.preheader, !dbg !717

.lr.ph22:                                         ; preds = %21
  %34 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !720
  %.promoted25 = load i32* %34, align 4, !dbg !720, !tbaa !691
  %35 = add i32 %32, -8, !dbg !717
  %36 = lshr i32 %35, 3, !dbg !717
  %37 = add i32 %.promoted25, %36, !dbg !717
  %38 = shl nuw i32 %36, 3, !dbg !717
  %39 = add i32 %37, 1, !dbg !717
  %40 = sub i32 %35, %38, !dbg !717
  store i32 %40, i32* %31, align 4, !dbg !720, !tbaa !683
  store i32 %39, i32* %34, align 4, !dbg !720, !tbaa !691
  br label %.preheader, !dbg !717

.loopexit3:                                       ; preds = %.lr.ph15, %56
  %.pre = load i32* %14, align 4, !dbg !709, !tbaa !665
  br label %.backedge

; <label>:41                                      ; preds = %.lr.ph20, %.backedge
  %42 = phi i32 [ %13, %.lr.ph20 ], [ %54, %.backedge ], !dbg !722
  %43 = phi i32 [ %15, %.lr.ph20 ], [ %53, %.backedge ]
  %44 = add i32 %43, -1, !dbg !722
  store i32 %44, i32* %14, align 4, !dbg !722, !tbaa !665
  %45 = load i32* %1, align 4, !dbg !723, !tbaa !668
  %46 = shl i32 %45, 1, !dbg !723
  %47 = load i32* %4, align 4, !dbg !723, !tbaa !657
  %48 = lshr i32 %47, 9, !dbg !723
  %.lobit = and i32 %48, 1, !dbg !723
  %49 = or i32 %.lobit, %46, !dbg !723
  %50 = xor i32 %49, 1, !dbg !723
  store i32 %50, i32* %1, align 4, !dbg !723, !tbaa !668
  %51 = add i32 %42, -1, !dbg !724
  store i32 %51, i32* %9, align 4, !dbg !724, !tbaa !671
  %52 = icmp eq i32 %51, 0, !dbg !724
  br i1 %52, label %56, label %.backedge, !dbg !723

.backedge:                                        ; preds = %41, %.loopexit3
  %53 = phi i32 [ %44, %41 ], [ %.pre, %.loopexit3 ]
  %54 = phi i32 [ %51, %41 ], [ 8, %.loopexit3 ]
  %55 = icmp eq i32 %53, 0, !dbg !709
  br i1 %55, label %._crit_edge, label %41, !dbg !709

; <label>:56                                      ; preds = %41
  %57 = trunc i32 %50 to i8, !dbg !710
  %58 = load i32** %17, align 8, !dbg !710, !tbaa !677
  %59 = load i32* %58, align 4, !dbg !710, !tbaa !685
  %60 = add nsw i32 %59, 1, !dbg !710
  store i32 %60, i32* %58, align 4, !dbg !710, !tbaa !685
  %61 = sext i32 %59 to i64, !dbg !710
  %62 = load i8** %18, align 8, !dbg !710, !tbaa !674
  %63 = getelementptr inbounds i8* %62, i64 %61, !dbg !710
  store i8 %57, i8* %63, align 1, !dbg !710, !tbaa !719
  store i32 8, i32* %9, align 4, !dbg !710, !tbaa !671
  %64 = load i32* %19, align 4, !dbg !710, !tbaa !683
  %65 = icmp sgt i32 %64, 7, !dbg !710
  br i1 %65, label %.lr.ph15, label %.loopexit3, !dbg !710

.lr.ph15:                                         ; preds = %56
  %.promoted18 = load i32* %20, align 4, !dbg !715, !tbaa !691
  %66 = add i32 %64, -8, !dbg !710
  %67 = lshr i32 %66, 3, !dbg !710
  %68 = shl nuw i32 %67, 3, !dbg !710
  %69 = add i32 %.promoted18, 1, !dbg !710
  %70 = add i32 %69, %67, !dbg !710
  %71 = sub i32 %66, %68, !dbg !710
  store i32 %71, i32* %19, align 4, !dbg !715, !tbaa !683
  store i32 %70, i32* %20, align 4, !dbg !715, !tbaa !691
  br label %.loopexit3, !dbg !710

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %72 = phi i32 [ %13, %.preheader ], [ %54, %.backedge ]
  %73 = load i32* %1, align 4, !dbg !725, !tbaa !668
  %74 = shl i32 %73, 1, !dbg !725
  %75 = load i32* %4, align 4, !dbg !725, !tbaa !657
  %76 = lshr i32 %75, 8, !dbg !725
  %77 = and i32 %76, 1, !dbg !725
  %78 = or i32 %77, %74, !dbg !725
  store i32 %78, i32* %1, align 4, !dbg !725, !tbaa !668
  %79 = add i32 %72, -1, !dbg !727
  store i32 %79, i32* %9, align 4, !dbg !727, !tbaa !671
  %80 = icmp eq i32 %79, 0, !dbg !727
  br i1 %80, label %81, label %103, !dbg !725

; <label>:81                                      ; preds = %._crit_edge
  %82 = trunc i32 %78 to i8, !dbg !729
  %83 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !729
  %84 = load i32** %83, align 8, !dbg !729, !tbaa !677
  %85 = load i32* %84, align 4, !dbg !729, !tbaa !685
  %86 = add nsw i32 %85, 1, !dbg !729
  store i32 %86, i32* %84, align 4, !dbg !729, !tbaa !685
  %87 = sext i32 %85 to i64, !dbg !729
  %88 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !729
  %89 = load i8** %88, align 8, !dbg !729, !tbaa !674
  %90 = getelementptr inbounds i8* %89, i64 %87, !dbg !729
  store i8 %82, i8* %90, align 1, !dbg !729, !tbaa !719
  store i32 8, i32* %9, align 4, !dbg !729, !tbaa !671
  %91 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !729
  %92 = load i32* %91, align 4, !dbg !729, !tbaa !683
  %93 = icmp sgt i32 %92, 7, !dbg !729
  br i1 %93, label %.lr.ph10, label %.thread, !dbg !729

.lr.ph10:                                         ; preds = %81
  %94 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !731
  %.promoted13 = load i32* %94, align 4, !dbg !731, !tbaa !691
  %95 = add i32 %92, -8, !dbg !729
  %96 = lshr i32 %95, 3, !dbg !729
  %97 = add i32 %.promoted13, %96, !dbg !729
  %98 = shl nuw i32 %96, 3, !dbg !729
  %99 = add i32 %97, 1, !dbg !729
  %100 = sub i32 %95, %98, !dbg !729
  store i32 %100, i32* %91, align 4, !dbg !731, !tbaa !683
  store i32 %99, i32* %94, align 4, !dbg !731, !tbaa !691
  br label %.thread, !dbg !729

.thread:                                          ; preds = %81, %.lr.ph10
  %.pre36 = load i32* %1, align 4, !dbg !733, !tbaa !668
  %101 = shl i32 %.pre36, 1, !dbg !733
  %102 = or i32 %101, 1, !dbg !733
  store i32 %102, i32* %1, align 4, !dbg !733, !tbaa !668
  store i32 7, i32* %9, align 4, !dbg !735, !tbaa !671
  br label %._crit_edge38, !dbg !733

; <label>:103                                     ; preds = %._crit_edge
  %104 = shl i32 %78, 1, !dbg !733
  %105 = or i32 %104, 1, !dbg !733
  store i32 %105, i32* %1, align 4, !dbg !733, !tbaa !668
  %106 = add i32 %72, -2, !dbg !735
  store i32 %106, i32* %9, align 4, !dbg !735, !tbaa !671
  %107 = icmp eq i32 %106, 0, !dbg !735
  br i1 %107, label %109, label %._crit_edge38, !dbg !733

._crit_edge38:                                    ; preds = %.thread, %103
  %108 = phi i32 [ 7, %.thread ], [ %106, %103 ]
  %.pre39 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !737
  %.pre40 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !737
  %.pre42 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !737
  br label %.loopexit, !dbg !733

; <label>:109                                     ; preds = %103
  %110 = trunc i32 %105 to i8, !dbg !741
  %111 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !741
  %112 = load i32** %111, align 8, !dbg !741, !tbaa !677
  %113 = load i32* %112, align 4, !dbg !741, !tbaa !685
  %114 = add nsw i32 %113, 1, !dbg !741
  store i32 %114, i32* %112, align 4, !dbg !741, !tbaa !685
  %115 = sext i32 %113 to i64, !dbg !741
  %116 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !741
  %117 = load i8** %116, align 8, !dbg !741, !tbaa !674
  %118 = getelementptr inbounds i8* %117, i64 %115, !dbg !741
  store i8 %110, i8* %118, align 1, !dbg !741, !tbaa !719
  store i32 8, i32* %9, align 4, !dbg !741, !tbaa !671
  %119 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !741
  %120 = load i32* %119, align 4, !dbg !741, !tbaa !683
  %121 = icmp sgt i32 %120, 7, !dbg !741
  br i1 %121, label %.lr.ph5, label %.loopexit, !dbg !741

.lr.ph5:                                          ; preds = %109
  %122 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !743
  %.promoted8 = load i32* %122, align 4, !dbg !743, !tbaa !691
  %123 = add i32 %120, -8, !dbg !741
  %124 = lshr i32 %123, 3, !dbg !741
  %125 = add i32 %.promoted8, %124, !dbg !741
  %126 = shl nuw i32 %124, 3, !dbg !741
  %127 = add i32 %125, 1, !dbg !741
  %128 = sub i32 %123, %126, !dbg !741
  store i32 %128, i32* %119, align 4, !dbg !743, !tbaa !683
  store i32 %127, i32* %122, align 4, !dbg !743, !tbaa !691
  br label %.loopexit, !dbg !741

.loopexit:                                        ; preds = %109, %.lr.ph5, %._crit_edge38
  %.pre-phi43 = phi i32* [ %.pre42, %._crit_edge38 ], [ %119, %.lr.ph5 ], [ %119, %109 ], !dbg !737
  %.pre-phi41 = phi i8** [ %.pre40, %._crit_edge38 ], [ %116, %.lr.ph5 ], [ %116, %109 ], !dbg !737
  %.pre-phi = phi i32** [ %.pre39, %._crit_edge38 ], [ %111, %.lr.ph5 ], [ %111, %109 ], !dbg !737
  %129 = phi i32 [ %108, %._crit_edge38 ], [ 8, %.lr.ph5 ], [ 8, %109 ]
  %130 = sub i32 8, %129, !dbg !745
  %131 = load %struct.ImageParameters** @img, align 8, !dbg !746, !tbaa !747
  %132 = getelementptr inbounds %struct.ImageParameters* %131, i64 0, i32 6, !dbg !748
  %133 = load i32* %132, align 4, !dbg !748, !tbaa !749
  %134 = sext i32 %133 to i64, !dbg !753
  %135 = load %struct.StatParameters** @stats, align 8, !dbg !753, !tbaa !747
  %136 = getelementptr inbounds %struct.StatParameters* %135, i64 0, i32 22, i64 %134, !dbg !753
  %137 = load i32* %136, align 4, !dbg !754, !tbaa !685
  %138 = add i32 %130, %137, !dbg !754
  store i32 %138, i32* %136, align 4, !dbg !754, !tbaa !685
  %139 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !755
  %.pr.pre = load i32* %9, align 4, !dbg !757, !tbaa !671
  %140 = icmp eq i32 %.pr.pre, 8, !dbg !758
  br i1 %140, label %thread-pre-split._crit_edge, label %.lr.ph44, !dbg !759

.lr.ph44:                                         ; preds = %.loopexit, %thread-pre-split.backedge
  %141 = phi i32 [ %.be, %thread-pre-split.backedge ], [ %.pr.pre, %.loopexit ]
  %142 = load i32* %1, align 4, !dbg !760, !tbaa !668
  %143 = shl i32 %142, 1, !dbg !760
  store i32 %143, i32* %1, align 4, !dbg !760, !tbaa !668
  %144 = add i32 %141, -1, !dbg !761
  store i32 %144, i32* %9, align 4, !dbg !761, !tbaa !671
  %145 = icmp eq i32 %144, 0, !dbg !761
  br i1 %145, label %147, label %thread-pre-split.backedge, !dbg !760

thread-pre-split.backedge:                        ; preds = %.lr.ph44, %147, %.lr.ph
  %.be = phi i32 [ %144, %.lr.ph44 ], [ 8, %.lr.ph ], [ 8, %147 ]
  %146 = icmp eq i32 %.be, 8, !dbg !758
  br i1 %146, label %thread-pre-split._crit_edge, label %.lr.ph44, !dbg !759

; <label>:147                                     ; preds = %.lr.ph44
  %148 = trunc i32 %143 to i8, !dbg !737
  %149 = load i32** %.pre-phi, align 8, !dbg !737, !tbaa !677
  %150 = load i32* %149, align 4, !dbg !737, !tbaa !685
  %151 = add nsw i32 %150, 1, !dbg !737
  store i32 %151, i32* %149, align 4, !dbg !737, !tbaa !685
  %152 = sext i32 %150 to i64, !dbg !737
  %153 = load i8** %.pre-phi41, align 8, !dbg !737, !tbaa !674
  %154 = getelementptr inbounds i8* %153, i64 %152, !dbg !737
  store i8 %148, i8* %154, align 1, !dbg !737, !tbaa !719
  store i32 8, i32* %9, align 4, !dbg !737, !tbaa !671
  %155 = load i32* %.pre-phi43, align 4, !dbg !737, !tbaa !683
  %156 = icmp sgt i32 %155, 7, !dbg !737
  br i1 %156, label %.lr.ph, label %thread-pre-split.backedge, !dbg !737

.lr.ph:                                           ; preds = %147
  %.promoted = load i32* %139, align 4, !dbg !755, !tbaa !691
  %157 = add i32 %155, -8, !dbg !737
  %158 = lshr i32 %157, 3, !dbg !737
  %159 = shl nuw i32 %158, 3, !dbg !737
  %160 = add i32 %.promoted, 1, !dbg !737
  %161 = add i32 %160, %158, !dbg !737
  %162 = sub i32 %157, %159, !dbg !737
  store i32 %162, i32* %.pre-phi43, align 4, !dbg !755, !tbaa !683
  store i32 %161, i32* %139, align 4, !dbg !755, !tbaa !691
  br label %thread-pre-split.backedge, !dbg !737

thread-pre-split._crit_edge:                      ; preds = %thread-pre-split.backedge, %.loopexit
  %163 = load i32* %139, align 4, !dbg !762, !tbaa !691
  %164 = shl i32 %163, 3, !dbg !763
  %165 = load i32* %.pre-phi43, align 4, !dbg !764, !tbaa !683
  %166 = add nsw i32 %164, %165, !dbg !765
  store i32 %166, i32* %139, align 4, !dbg !766, !tbaa !691
  %167 = load i32** %.pre-phi, align 8, !dbg !767, !tbaa !677
  %168 = load i32* %167, align 4, !dbg !768, !tbaa !685
  %169 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 18, !dbg !769
  %170 = load i32* %169, align 4, !dbg !769, !tbaa !688
  %171 = sub nsw i32 %168, %170, !dbg !770
  store i32 %171, i32* %169, align 4, !dbg !771, !tbaa !688
  %172 = load %struct.ImageParameters** @img, align 8, !dbg !772, !tbaa !747
  %173 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 3, !dbg !773
  %174 = load i32* %173, align 4, !dbg !773, !tbaa !774
  %175 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 50, !dbg !775
  %176 = load %struct.Slice** %175, align 8, !dbg !775, !tbaa !776
  %177 = getelementptr inbounds %struct.Slice* %176, i64 0, i32 3, !dbg !777
  %178 = load i32* %177, align 4, !dbg !777, !tbaa !778
  %179 = sub i32 31, %174, !dbg !780
  %180 = add i32 %179, %178, !dbg !780
  %181 = add i32 %180, %166, !dbg !781
  %182 = ashr i32 %181, 5, !dbg !782
  store i32 %182, i32* %139, align 4, !dbg !783, !tbaa !691
  ret void, !dbg !784
}

; Function Attrs: nounwind optsize ssp uwtable
define void @biari_encode_symbol(%struct.EncodingEnvironment* %eep, i16 signext %symbol, %struct.BiContextType* nocapture %bi_ct) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep, i64 0, metadata !86, metadata !634), !dbg !785
  tail call void @llvm.dbg.value(metadata i16 %symbol, i64 0, metadata !87, metadata !634), !dbg !786
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %bi_ct, i64 0, metadata !88, metadata !634), !dbg !787
  %1 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1, !dbg !788
  %2 = load i32* %1, align 4, !dbg !788, !tbaa !680
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !89, metadata !634), !dbg !789
  %3 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0, !dbg !790
  %4 = load i32* %3, align 4, !dbg !790, !tbaa !657
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !90, metadata !634), !dbg !791
  %5 = lshr i32 %2, 6, !dbg !792
  %6 = and i32 %5, 3, !dbg !793
  %7 = zext i32 %6 to i64, !dbg !794
  %8 = getelementptr inbounds %struct.BiContextType* %bi_ct, i64 0, i32 0, !dbg !795
  %9 = load i16* %8, align 2, !dbg !795, !tbaa !796
  %10 = zext i16 %9 to i64, !dbg !794
  %11 = getelementptr inbounds [64 x [4 x i8]]* @rLPS_table_64x4, i64 0, i64 %10, i64 %7, !dbg !794
  %12 = load i8* %11, align 1, !dbg !794, !tbaa !719
  %13 = zext i8 %12 to i32, !dbg !794
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !91, metadata !634), !dbg !800
  %14 = load i32* @cabac_encoding, align 4, !dbg !801, !tbaa !685
  %15 = icmp eq i32 %14, 0, !dbg !801
  br i1 %15, label %20, label %16, !dbg !803

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.BiContextType* %bi_ct, i64 0, i32 2, !dbg !804
  %18 = load i64* %17, align 8, !dbg !806, !tbaa !807
  %19 = add i64 %18, 1, !dbg !806
  store i64 %19, i64* %17, align 8, !dbg !806, !tbaa !807
  br label %20, !dbg !808

; <label>:20                                      ; preds = %0, %16
  tail call void @llvm.dbg.value(metadata i16 1, i64 0, metadata !87, metadata !634), !dbg !786
  %not. = icmp ne i16 %symbol, 0, !dbg !809
  %21 = sub i32 %2, %13, !dbg !810
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !89, metadata !634), !dbg !789
  %22 = zext i1 %not. to i32, !dbg !811
  %23 = getelementptr inbounds %struct.BiContextType* %bi_ct, i64 0, i32 1, !dbg !813
  %24 = load i8* %23, align 1, !dbg !813, !tbaa !814
  %25 = zext i8 %24 to i32, !dbg !815
  %26 = icmp eq i32 %22, %25, !dbg !816
  br i1 %26, label %.preheader5, label %27, !dbg !817

; <label>:27                                      ; preds = %20
  %28 = add i32 %21, %4, !dbg !818
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !90, metadata !634), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !89, metadata !634), !dbg !789
  %29 = icmp eq i16 %9, 0, !dbg !820
  br i1 %29, label %30, label %.preheader5.thread, !dbg !822

; <label>:30                                      ; preds = %27
  %31 = xor i8 %24, 1, !dbg !823
  store i8 %31, i8* %23, align 1, !dbg !824, !tbaa !814
  br label %.preheader5.thread, !dbg !825

.preheader5.thread:                               ; preds = %27, %30
  %storemerge.in40 = getelementptr inbounds [64 x i16]* @AC_next_state_LPS_64, i64 0, i64 %10, !dbg !826
  %storemerge41 = load i16* %storemerge.in40, align 2, !dbg !826
  store i16 %storemerge41, i16* %8, align 2, !dbg !827, !tbaa !796
  br label %.lr.ph26, !dbg !828

.preheader5:                                      ; preds = %20
  %storemerge.in = getelementptr inbounds [64 x i16]* @AC_next_state_MPS_64, i64 0, i64 %10, !dbg !826
  %storemerge = load i16* %storemerge.in, align 2, !dbg !826
  store i16 %storemerge, i16* %8, align 2, !dbg !827, !tbaa !796
  %32 = icmp ult i32 %21, 256, !dbg !829
  br i1 %32, label %.lr.ph26, label %.preheader5._crit_edge, !dbg !828

.preheader5._crit_edge:                           ; preds = %.preheader5
  %.pre39 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !830
  br label %._crit_edge27, !dbg !828

.lr.ph26:                                         ; preds = %.preheader5.thread, %.preheader5
  %low.0.ph43 = phi i32 [ %28, %.preheader5.thread ], [ %4, %.preheader5 ]
  %range.0.ph42 = phi i32 [ %13, %.preheader5.thread ], [ %21, %.preheader5 ]
  %33 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !831
  %34 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !837
  %35 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !839
  %36 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !839
  %37 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !839
  %38 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !841
  %39 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !843
  br label %40, !dbg !828

; <label>:40                                      ; preds = %.lr.ph26, %.loopexit3
  %low.025 = phi i32 [ %low.0.ph43, %.lr.ph26 ], [ %153, %.loopexit3 ]
  %range.024 = phi i32 [ %range.0.ph42, %.lr.ph26 ], [ %154, %.loopexit3 ]
  %41 = icmp ugt i32 %low.025, 511, !dbg !844
  br i1 %41, label %42, label %95, !dbg !845

; <label>:42                                      ; preds = %40
  %43 = load i32* %33, align 4, !dbg !831, !tbaa !668
  %44 = shl i32 %43, 1, !dbg !831
  %45 = or i32 %44, 1, !dbg !831
  store i32 %45, i32* %33, align 4, !dbg !831, !tbaa !668
  %46 = load i32* %34, align 4, !dbg !837, !tbaa !671
  %47 = add i32 %46, -1, !dbg !837
  store i32 %47, i32* %34, align 4, !dbg !837, !tbaa !671
  %48 = icmp eq i32 %47, 0, !dbg !837
  br i1 %48, label %52, label %.preheader, !dbg !831

.preheader:                                       ; preds = %52, %.lr.ph13, %42
  %49 = phi i32 [ %47, %42 ], [ 8, %.lr.ph13 ], [ 8, %52 ]
  %50 = load i32* %39, align 4, !dbg !843, !tbaa !665
  %51 = icmp eq i32 %50, 0, !dbg !843
  br i1 %51, label %._crit_edge, label %.lr.ph23, !dbg !843

; <label>:52                                      ; preds = %42
  %53 = trunc i32 %45 to i8, !dbg !839
  %54 = load i32** %35, align 8, !dbg !839, !tbaa !677
  %55 = load i32* %54, align 4, !dbg !839, !tbaa !685
  %56 = add nsw i32 %55, 1, !dbg !839
  store i32 %56, i32* %54, align 4, !dbg !839, !tbaa !685
  %57 = sext i32 %55 to i64, !dbg !839
  %58 = load i8** %36, align 8, !dbg !839, !tbaa !674
  %59 = getelementptr inbounds i8* %58, i64 %57, !dbg !839
  store i8 %53, i8* %59, align 1, !dbg !839, !tbaa !719
  store i32 8, i32* %34, align 4, !dbg !839, !tbaa !671
  %60 = load i32* %37, align 4, !dbg !839, !tbaa !683
  %61 = icmp sgt i32 %60, 7, !dbg !839
  br i1 %61, label %.lr.ph13, label %.preheader, !dbg !839

.lr.ph13:                                         ; preds = %52
  %.promoted16 = load i32* %38, align 4, !dbg !841, !tbaa !691
  %62 = add i32 %60, -8, !dbg !839
  %63 = lshr i32 %62, 3, !dbg !839
  %64 = shl nuw i32 %63, 3, !dbg !839
  %65 = add i32 %.promoted16, 1, !dbg !839
  %66 = add i32 %65, %63, !dbg !839
  %67 = sub i32 %62, %64, !dbg !839
  store i32 %67, i32* %37, align 4, !dbg !841, !tbaa !683
  store i32 %66, i32* %38, align 4, !dbg !841, !tbaa !691
  br label %.preheader, !dbg !839

.loopexit:                                        ; preds = %.lr.ph18, %78
  %.pre38 = load i32* %39, align 4, !dbg !843, !tbaa !665
  br label %.backedge

.lr.ph23:                                         ; preds = %.preheader, %.backedge
  %68 = phi i32 [ %76, %.backedge ], [ %49, %.preheader ], !dbg !846
  %69 = phi i32 [ %75, %.backedge ], [ %50, %.preheader ]
  %70 = add i32 %69, -1, !dbg !846
  store i32 %70, i32* %39, align 4, !dbg !846, !tbaa !665
  %71 = load i32* %33, align 4, !dbg !848, !tbaa !668
  %72 = shl i32 %71, 1, !dbg !848
  store i32 %72, i32* %33, align 4, !dbg !848, !tbaa !668
  %73 = add i32 %68, -1, !dbg !850
  store i32 %73, i32* %34, align 4, !dbg !850, !tbaa !671
  %74 = icmp eq i32 %73, 0, !dbg !850
  br i1 %74, label %78, label %.backedge, !dbg !848

.backedge:                                        ; preds = %.lr.ph23, %.loopexit
  %75 = phi i32 [ %70, %.lr.ph23 ], [ %.pre38, %.loopexit ]
  %76 = phi i32 [ %73, %.lr.ph23 ], [ 8, %.loopexit ]
  %77 = icmp eq i32 %75, 0, !dbg !843
  br i1 %77, label %._crit_edge, label %.lr.ph23, !dbg !843

; <label>:78                                      ; preds = %.lr.ph23
  %79 = trunc i32 %72 to i8, !dbg !852
  %80 = load i32** %35, align 8, !dbg !852, !tbaa !677
  %81 = load i32* %80, align 4, !dbg !852, !tbaa !685
  %82 = add nsw i32 %81, 1, !dbg !852
  store i32 %82, i32* %80, align 4, !dbg !852, !tbaa !685
  %83 = sext i32 %81 to i64, !dbg !852
  %84 = load i8** %36, align 8, !dbg !852, !tbaa !674
  %85 = getelementptr inbounds i8* %84, i64 %83, !dbg !852
  store i8 %79, i8* %85, align 1, !dbg !852, !tbaa !719
  store i32 8, i32* %34, align 4, !dbg !852, !tbaa !671
  %86 = load i32* %37, align 4, !dbg !852, !tbaa !683
  %87 = icmp sgt i32 %86, 7, !dbg !852
  br i1 %87, label %.lr.ph18, label %.loopexit, !dbg !852

.lr.ph18:                                         ; preds = %78
  %.promoted21 = load i32* %38, align 4, !dbg !854, !tbaa !691
  %88 = add i32 %86, -8, !dbg !852
  %89 = lshr i32 %88, 3, !dbg !852
  %90 = shl nuw i32 %89, 3, !dbg !852
  %91 = add i32 %.promoted21, 1, !dbg !852
  %92 = add i32 %91, %89, !dbg !852
  %93 = sub i32 %88, %90, !dbg !852
  store i32 %93, i32* %37, align 4, !dbg !854, !tbaa !683
  store i32 %92, i32* %38, align 4, !dbg !854, !tbaa !691
  br label %.loopexit, !dbg !852

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %94 = add i32 %low.025, -512, !dbg !856
  tail call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !90, metadata !634), !dbg !791
  br label %.loopexit3, !dbg !857

; <label>:95                                      ; preds = %40
  %96 = icmp ult i32 %low.025, 256, !dbg !858
  br i1 %96, label %97, label %149, !dbg !860

; <label>:97                                      ; preds = %95
  %98 = load i32* %33, align 4, !dbg !861, !tbaa !668
  %99 = shl i32 %98, 1, !dbg !861
  store i32 %99, i32* %33, align 4, !dbg !861, !tbaa !668
  %100 = load i32* %34, align 4, !dbg !865, !tbaa !671
  %101 = add i32 %100, -1, !dbg !865
  store i32 %101, i32* %34, align 4, !dbg !865, !tbaa !671
  %102 = icmp eq i32 %101, 0, !dbg !865
  br i1 %102, label %106, label %.preheader2, !dbg !861

.preheader2:                                      ; preds = %106, %.lr.ph, %97
  %103 = phi i32 [ %101, %97 ], [ 8, %.lr.ph ], [ 8, %106 ]
  %104 = load i32* %39, align 4, !dbg !867, !tbaa !665
  %105 = icmp eq i32 %104, 0, !dbg !867
  br i1 %105, label %.loopexit3, label %.lr.ph12, !dbg !867

; <label>:106                                     ; preds = %97
  %107 = trunc i32 %99 to i8, !dbg !868
  %108 = load i32** %35, align 8, !dbg !868, !tbaa !677
  %109 = load i32* %108, align 4, !dbg !868, !tbaa !685
  %110 = add nsw i32 %109, 1, !dbg !868
  store i32 %110, i32* %108, align 4, !dbg !868, !tbaa !685
  %111 = sext i32 %109 to i64, !dbg !868
  %112 = load i8** %36, align 8, !dbg !868, !tbaa !674
  %113 = getelementptr inbounds i8* %112, i64 %111, !dbg !868
  store i8 %107, i8* %113, align 1, !dbg !868, !tbaa !719
  store i32 8, i32* %34, align 4, !dbg !868, !tbaa !671
  %114 = load i32* %37, align 4, !dbg !868, !tbaa !683
  %115 = icmp sgt i32 %114, 7, !dbg !868
  br i1 %115, label %.lr.ph, label %.preheader2, !dbg !868

.lr.ph:                                           ; preds = %106
  %.promoted = load i32* %38, align 4, !dbg !870, !tbaa !691
  %116 = add i32 %114, -8, !dbg !868
  %117 = lshr i32 %116, 3, !dbg !868
  %118 = shl nuw i32 %117, 3, !dbg !868
  %119 = add i32 %.promoted, 1, !dbg !868
  %120 = add i32 %119, %117, !dbg !868
  %121 = sub i32 %116, %118, !dbg !868
  store i32 %121, i32* %37, align 4, !dbg !870, !tbaa !683
  store i32 %120, i32* %38, align 4, !dbg !870, !tbaa !691
  br label %.preheader2, !dbg !868

.loopexit1:                                       ; preds = %.lr.ph7, %133
  %.pre = load i32* %39, align 4, !dbg !867, !tbaa !665
  br label %.backedge4

.lr.ph12:                                         ; preds = %.preheader2, %.backedge4
  %122 = phi i32 [ %131, %.backedge4 ], [ %103, %.preheader2 ], !dbg !872
  %123 = phi i32 [ %130, %.backedge4 ], [ %104, %.preheader2 ]
  %124 = add i32 %123, -1, !dbg !872
  store i32 %124, i32* %39, align 4, !dbg !872, !tbaa !665
  %125 = load i32* %33, align 4, !dbg !874, !tbaa !668
  %126 = shl i32 %125, 1, !dbg !874
  %127 = or i32 %126, 1, !dbg !874
  store i32 %127, i32* %33, align 4, !dbg !874, !tbaa !668
  %128 = add i32 %122, -1, !dbg !876
  store i32 %128, i32* %34, align 4, !dbg !876, !tbaa !671
  %129 = icmp eq i32 %128, 0, !dbg !876
  br i1 %129, label %133, label %.backedge4, !dbg !874

.backedge4:                                       ; preds = %.lr.ph12, %.loopexit1
  %130 = phi i32 [ %124, %.lr.ph12 ], [ %.pre, %.loopexit1 ]
  %131 = phi i32 [ %128, %.lr.ph12 ], [ 8, %.loopexit1 ]
  %132 = icmp eq i32 %130, 0, !dbg !867
  br i1 %132, label %.loopexit3, label %.lr.ph12, !dbg !867

; <label>:133                                     ; preds = %.lr.ph12
  %134 = trunc i32 %127 to i8, !dbg !878
  %135 = load i32** %35, align 8, !dbg !878, !tbaa !677
  %136 = load i32* %135, align 4, !dbg !878, !tbaa !685
  %137 = add nsw i32 %136, 1, !dbg !878
  store i32 %137, i32* %135, align 4, !dbg !878, !tbaa !685
  %138 = sext i32 %136 to i64, !dbg !878
  %139 = load i8** %36, align 8, !dbg !878, !tbaa !674
  %140 = getelementptr inbounds i8* %139, i64 %138, !dbg !878
  store i8 %134, i8* %140, align 1, !dbg !878, !tbaa !719
  store i32 8, i32* %34, align 4, !dbg !878, !tbaa !671
  %141 = load i32* %37, align 4, !dbg !878, !tbaa !683
  %142 = icmp sgt i32 %141, 7, !dbg !878
  br i1 %142, label %.lr.ph7, label %.loopexit1, !dbg !878

.lr.ph7:                                          ; preds = %133
  %.promoted10 = load i32* %38, align 4, !dbg !880, !tbaa !691
  %143 = add i32 %141, -8, !dbg !878
  %144 = lshr i32 %143, 3, !dbg !878
  %145 = shl nuw i32 %144, 3, !dbg !878
  %146 = add i32 %.promoted10, 1, !dbg !878
  %147 = add i32 %146, %144, !dbg !878
  %148 = sub i32 %143, %145, !dbg !878
  store i32 %148, i32* %37, align 4, !dbg !880, !tbaa !683
  store i32 %147, i32* %38, align 4, !dbg !880, !tbaa !691
  br label %.loopexit1, !dbg !878

; <label>:149                                     ; preds = %95
  %150 = load i32* %39, align 4, !dbg !882, !tbaa !665
  %151 = add i32 %150, 1, !dbg !882
  store i32 %151, i32* %39, align 4, !dbg !882, !tbaa !665
  %152 = add i32 %low.025, -256, !dbg !884
  tail call void @llvm.dbg.value(metadata i32 %152, i64 0, metadata !90, metadata !634), !dbg !791
  br label %.loopexit3

.loopexit3:                                       ; preds = %.backedge4, %.preheader2, %149, %._crit_edge
  %low.1 = phi i32 [ %94, %._crit_edge ], [ %152, %149 ], [ %low.025, %.preheader2 ], [ %low.025, %.backedge4 ]
  %153 = shl i32 %low.1, 1, !dbg !885
  tail call void @llvm.dbg.value(metadata i32 %153, i64 0, metadata !90, metadata !634), !dbg !791
  %154 = shl i32 %range.024, 1, !dbg !886
  tail call void @llvm.dbg.value(metadata i32 %154, i64 0, metadata !89, metadata !634), !dbg !789
  %155 = icmp ult i32 %154, 256, !dbg !829
  br i1 %155, label %40, label %._crit_edge27, !dbg !828

._crit_edge27:                                    ; preds = %.loopexit3, %.preheader5._crit_edge
  %.pre-phi = phi i32* [ %.pre39, %.preheader5._crit_edge ], [ %37, %.loopexit3 ], !dbg !830
  %low.0.lcssa = phi i32 [ %4, %.preheader5._crit_edge ], [ %153, %.loopexit3 ]
  %range.0.lcssa = phi i32 [ %21, %.preheader5._crit_edge ], [ %154, %.loopexit3 ]
  store i32 %range.0.lcssa, i32* %1, align 4, !dbg !887, !tbaa !680
  store i32 %low.0.lcssa, i32* %3, align 4, !dbg !888, !tbaa !657
  %156 = load i32* %.pre-phi, align 4, !dbg !889, !tbaa !683
  %157 = add nsw i32 %156, 1, !dbg !889
  store i32 %157, i32* %.pre-phi, align 4, !dbg !889, !tbaa !683
  ret void, !dbg !890
}

; Function Attrs: nounwind optsize ssp uwtable
define void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep, i16 signext %symbol) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep, i64 0, metadata !96, metadata !634), !dbg !891
  tail call void @llvm.dbg.value(metadata i16 %symbol, i64 0, metadata !97, metadata !634), !dbg !892
  %1 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0, !dbg !893
  %2 = load i32* %1, align 4, !dbg !893, !tbaa !657
  %3 = shl i32 %2, 1, !dbg !894
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !98, metadata !634), !dbg !895
  %4 = icmp eq i16 %symbol, 0, !dbg !896
  br i1 %4, label %9, label %5, !dbg !898

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1, !dbg !899
  %7 = load i32* %6, align 4, !dbg !899, !tbaa !680
  %8 = add i32 %7, %3, !dbg !900
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !98, metadata !634), !dbg !895
  br label %9, !dbg !901

; <label>:9                                       ; preds = %0, %5
  %low.0 = phi i32 [ %8, %5 ], [ %3, %0 ]
  %10 = icmp ugt i32 %low.0, 1023, !dbg !902
  br i1 %10, label %11, label %76, !dbg !904

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !905
  %13 = load i32* %12, align 4, !dbg !905, !tbaa !668
  %14 = shl i32 %13, 1, !dbg !905
  %15 = or i32 %14, 1, !dbg !905
  store i32 %15, i32* %12, align 4, !dbg !905, !tbaa !668
  %16 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !909
  %17 = load i32* %16, align 4, !dbg !909, !tbaa !671
  %18 = add i32 %17, -1, !dbg !909
  store i32 %18, i32* %16, align 4, !dbg !909, !tbaa !671
  %19 = icmp eq i32 %18, 0, !dbg !909
  br i1 %19, label %28, label %.preheader, !dbg !905

.preheader:                                       ; preds = %28, %.lr.ph8, %11
  %20 = phi i32 [ %18, %11 ], [ 8, %.lr.ph8 ], [ 8, %28 ]
  %21 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !911
  %22 = load i32* %21, align 4, !dbg !911, !tbaa !665
  %23 = icmp eq i32 %22, 0, !dbg !911
  br i1 %23, label %._crit_edge, label %.lr.ph6, !dbg !911

.lr.ph6:                                          ; preds = %.preheader
  %24 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !912
  %25 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !912
  %26 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !912
  %27 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !917
  br label %48, !dbg !911

; <label>:28                                      ; preds = %11
  %29 = trunc i32 %15 to i8, !dbg !919
  %30 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !919
  %31 = load i32** %30, align 8, !dbg !919, !tbaa !677
  %32 = load i32* %31, align 4, !dbg !919, !tbaa !685
  %33 = add nsw i32 %32, 1, !dbg !919
  store i32 %33, i32* %31, align 4, !dbg !919, !tbaa !685
  %34 = sext i32 %32 to i64, !dbg !919
  %35 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !919
  %36 = load i8** %35, align 8, !dbg !919, !tbaa !674
  %37 = getelementptr inbounds i8* %36, i64 %34, !dbg !919
  store i8 %29, i8* %37, align 1, !dbg !919, !tbaa !719
  store i32 8, i32* %16, align 4, !dbg !919, !tbaa !671
  %38 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !919
  %39 = load i32* %38, align 4, !dbg !919, !tbaa !683
  %40 = icmp sgt i32 %39, 7, !dbg !919
  br i1 %40, label %.lr.ph8, label %.preheader, !dbg !919

.lr.ph8:                                          ; preds = %28
  %41 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !921
  %.promoted11 = load i32* %41, align 4, !dbg !921, !tbaa !691
  %42 = add i32 %39, -8, !dbg !919
  %43 = lshr i32 %42, 3, !dbg !919
  %44 = add i32 %.promoted11, %43, !dbg !919
  %45 = shl nuw i32 %43, 3, !dbg !919
  %46 = add i32 %44, 1, !dbg !919
  %47 = sub i32 %42, %45, !dbg !919
  store i32 %47, i32* %38, align 4, !dbg !921, !tbaa !683
  store i32 %46, i32* %41, align 4, !dbg !921, !tbaa !691
  br label %.preheader, !dbg !919

.loopexit:                                        ; preds = %.lr.ph, %59
  %.pre33 = load i32* %21, align 4, !dbg !911, !tbaa !665
  br label %.backedge

; <label>:48                                      ; preds = %.lr.ph6, %.backedge
  %49 = phi i32 [ %20, %.lr.ph6 ], [ %57, %.backedge ], !dbg !923
  %50 = phi i32 [ %22, %.lr.ph6 ], [ %56, %.backedge ]
  %51 = add i32 %50, -1, !dbg !923
  store i32 %51, i32* %21, align 4, !dbg !923, !tbaa !665
  %52 = load i32* %12, align 4, !dbg !924, !tbaa !668
  %53 = shl i32 %52, 1, !dbg !924
  store i32 %53, i32* %12, align 4, !dbg !924, !tbaa !668
  %54 = add i32 %49, -1, !dbg !925
  store i32 %54, i32* %16, align 4, !dbg !925, !tbaa !671
  %55 = icmp eq i32 %54, 0, !dbg !925
  br i1 %55, label %59, label %.backedge, !dbg !924

.backedge:                                        ; preds = %48, %.loopexit
  %56 = phi i32 [ %51, %48 ], [ %.pre33, %.loopexit ]
  %57 = phi i32 [ %54, %48 ], [ 8, %.loopexit ]
  %58 = icmp eq i32 %56, 0, !dbg !911
  br i1 %58, label %._crit_edge, label %48, !dbg !911

; <label>:59                                      ; preds = %48
  %60 = trunc i32 %53 to i8, !dbg !912
  %61 = load i32** %24, align 8, !dbg !912, !tbaa !677
  %62 = load i32* %61, align 4, !dbg !912, !tbaa !685
  %63 = add nsw i32 %62, 1, !dbg !912
  store i32 %63, i32* %61, align 4, !dbg !912, !tbaa !685
  %64 = sext i32 %62 to i64, !dbg !912
  %65 = load i8** %25, align 8, !dbg !912, !tbaa !674
  %66 = getelementptr inbounds i8* %65, i64 %64, !dbg !912
  store i8 %60, i8* %66, align 1, !dbg !912, !tbaa !719
  store i32 8, i32* %16, align 4, !dbg !912, !tbaa !671
  %67 = load i32* %26, align 4, !dbg !912, !tbaa !683
  %68 = icmp sgt i32 %67, 7, !dbg !912
  br i1 %68, label %.lr.ph, label %.loopexit, !dbg !912

.lr.ph:                                           ; preds = %59
  %.promoted = load i32* %27, align 4, !dbg !917, !tbaa !691
  %69 = add i32 %67, -8, !dbg !912
  %70 = lshr i32 %69, 3, !dbg !912
  %71 = shl nuw i32 %70, 3, !dbg !912
  %72 = add i32 %.promoted, 1, !dbg !912
  %73 = add i32 %72, %70, !dbg !912
  %74 = sub i32 %69, %71, !dbg !912
  store i32 %74, i32* %26, align 4, !dbg !917, !tbaa !683
  store i32 %73, i32* %27, align 4, !dbg !917, !tbaa !691
  br label %.loopexit, !dbg !912

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %75 = add i32 %low.0, -1024, !dbg !926
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !98, metadata !634), !dbg !895
  br label %.loopexit3, !dbg !927

; <label>:76                                      ; preds = %9
  %77 = icmp ult i32 %low.0, 512, !dbg !928
  br i1 %77, label %78, label %142, !dbg !930

; <label>:78                                      ; preds = %76
  %79 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !931
  %80 = load i32* %79, align 4, !dbg !931, !tbaa !668
  %81 = shl i32 %80, 1, !dbg !931
  store i32 %81, i32* %79, align 4, !dbg !931, !tbaa !668
  %82 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !935
  %83 = load i32* %82, align 4, !dbg !935, !tbaa !671
  %84 = add i32 %83, -1, !dbg !935
  store i32 %84, i32* %82, align 4, !dbg !935, !tbaa !671
  %85 = icmp eq i32 %84, 0, !dbg !935
  br i1 %85, label %94, label %.preheader2, !dbg !931

.preheader2:                                      ; preds = %94, %.lr.ph21, %78
  %86 = phi i32 [ %84, %78 ], [ 8, %.lr.ph21 ], [ 8, %94 ]
  %87 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !937
  %88 = load i32* %87, align 4, !dbg !937, !tbaa !665
  %89 = icmp eq i32 %88, 0, !dbg !937
  br i1 %89, label %.loopexit3, label %.lr.ph19, !dbg !937

.lr.ph19:                                         ; preds = %.preheader2
  %90 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !938
  %91 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !938
  %92 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !938
  %93 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !943
  br label %114, !dbg !937

; <label>:94                                      ; preds = %78
  %95 = trunc i32 %81 to i8, !dbg !945
  %96 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !945
  %97 = load i32** %96, align 8, !dbg !945, !tbaa !677
  %98 = load i32* %97, align 4, !dbg !945, !tbaa !685
  %99 = add nsw i32 %98, 1, !dbg !945
  store i32 %99, i32* %97, align 4, !dbg !945, !tbaa !685
  %100 = sext i32 %98 to i64, !dbg !945
  %101 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !945
  %102 = load i8** %101, align 8, !dbg !945, !tbaa !674
  %103 = getelementptr inbounds i8* %102, i64 %100, !dbg !945
  store i8 %95, i8* %103, align 1, !dbg !945, !tbaa !719
  store i32 8, i32* %82, align 4, !dbg !945, !tbaa !671
  %104 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !945
  %105 = load i32* %104, align 4, !dbg !945, !tbaa !683
  %106 = icmp sgt i32 %105, 7, !dbg !945
  br i1 %106, label %.lr.ph21, label %.preheader2, !dbg !945

.lr.ph21:                                         ; preds = %94
  %107 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !947
  %.promoted24 = load i32* %107, align 4, !dbg !947, !tbaa !691
  %108 = add i32 %105, -8, !dbg !945
  %109 = lshr i32 %108, 3, !dbg !945
  %110 = add i32 %.promoted24, %109, !dbg !945
  %111 = shl nuw i32 %109, 3, !dbg !945
  %112 = add i32 %110, 1, !dbg !945
  %113 = sub i32 %108, %111, !dbg !945
  store i32 %113, i32* %104, align 4, !dbg !947, !tbaa !683
  store i32 %112, i32* %107, align 4, !dbg !947, !tbaa !691
  br label %.preheader2, !dbg !945

.loopexit1:                                       ; preds = %.lr.ph14, %126
  %.pre = load i32* %87, align 4, !dbg !937, !tbaa !665
  br label %.backedge4

; <label>:114                                     ; preds = %.lr.ph19, %.backedge4
  %115 = phi i32 [ %86, %.lr.ph19 ], [ %124, %.backedge4 ], !dbg !949
  %116 = phi i32 [ %88, %.lr.ph19 ], [ %123, %.backedge4 ]
  %117 = add i32 %116, -1, !dbg !949
  store i32 %117, i32* %87, align 4, !dbg !949, !tbaa !665
  %118 = load i32* %79, align 4, !dbg !950, !tbaa !668
  %119 = shl i32 %118, 1, !dbg !950
  %120 = or i32 %119, 1, !dbg !950
  store i32 %120, i32* %79, align 4, !dbg !950, !tbaa !668
  %121 = add i32 %115, -1, !dbg !951
  store i32 %121, i32* %82, align 4, !dbg !951, !tbaa !671
  %122 = icmp eq i32 %121, 0, !dbg !951
  br i1 %122, label %126, label %.backedge4, !dbg !950

.backedge4:                                       ; preds = %114, %.loopexit1
  %123 = phi i32 [ %117, %114 ], [ %.pre, %.loopexit1 ]
  %124 = phi i32 [ %121, %114 ], [ 8, %.loopexit1 ]
  %125 = icmp eq i32 %123, 0, !dbg !937
  br i1 %125, label %.loopexit3, label %114, !dbg !937

; <label>:126                                     ; preds = %114
  %127 = trunc i32 %120 to i8, !dbg !938
  %128 = load i32** %90, align 8, !dbg !938, !tbaa !677
  %129 = load i32* %128, align 4, !dbg !938, !tbaa !685
  %130 = add nsw i32 %129, 1, !dbg !938
  store i32 %130, i32* %128, align 4, !dbg !938, !tbaa !685
  %131 = sext i32 %129 to i64, !dbg !938
  %132 = load i8** %91, align 8, !dbg !938, !tbaa !674
  %133 = getelementptr inbounds i8* %132, i64 %131, !dbg !938
  store i8 %127, i8* %133, align 1, !dbg !938, !tbaa !719
  store i32 8, i32* %82, align 4, !dbg !938, !tbaa !671
  %134 = load i32* %92, align 4, !dbg !938, !tbaa !683
  %135 = icmp sgt i32 %134, 7, !dbg !938
  br i1 %135, label %.lr.ph14, label %.loopexit1, !dbg !938

.lr.ph14:                                         ; preds = %126
  %.promoted17 = load i32* %93, align 4, !dbg !943, !tbaa !691
  %136 = add i32 %134, -8, !dbg !938
  %137 = lshr i32 %136, 3, !dbg !938
  %138 = shl nuw i32 %137, 3, !dbg !938
  %139 = add i32 %.promoted17, 1, !dbg !938
  %140 = add i32 %139, %137, !dbg !938
  %141 = sub i32 %136, %138, !dbg !938
  store i32 %141, i32* %92, align 4, !dbg !943, !tbaa !683
  store i32 %140, i32* %93, align 4, !dbg !943, !tbaa !691
  br label %.loopexit1, !dbg !938

; <label>:142                                     ; preds = %76
  %143 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !952
  %144 = load i32* %143, align 4, !dbg !954, !tbaa !665
  %145 = add i32 %144, 1, !dbg !954
  store i32 %145, i32* %143, align 4, !dbg !954, !tbaa !665
  %146 = add i32 %low.0, -512, !dbg !955
  tail call void @llvm.dbg.value(metadata i32 %146, i64 0, metadata !98, metadata !634), !dbg !895
  br label %.loopexit3

.loopexit3:                                       ; preds = %.backedge4, %.preheader2, %142, %._crit_edge
  %low.1 = phi i32 [ %75, %._crit_edge ], [ %146, %142 ], [ %low.0, %.preheader2 ], [ %low.0, %.backedge4 ]
  store i32 %low.1, i32* %1, align 4, !dbg !956, !tbaa !657
  %147 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !957
  %148 = load i32* %147, align 4, !dbg !958, !tbaa !683
  %149 = add nsw i32 %148, 1, !dbg !958
  store i32 %149, i32* %147, align 4, !dbg !958, !tbaa !683
  ret void, !dbg !959
}

; Function Attrs: nounwind optsize ssp uwtable
define void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep, i16 signext %symbol) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep, i64 0, metadata !101, metadata !634), !dbg !960
  tail call void @llvm.dbg.value(metadata i16 %symbol, i64 0, metadata !102, metadata !634), !dbg !961
  %1 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1, !dbg !962
  %2 = load i32* %1, align 4, !dbg !962, !tbaa !680
  %3 = add i32 %2, -2, !dbg !963
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !103, metadata !634), !dbg !964
  %4 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0, !dbg !965
  %5 = load i32* %4, align 4, !dbg !965, !tbaa !657
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !104, metadata !634), !dbg !966
  %6 = icmp eq i16 %symbol, 0, !dbg !967
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !103, metadata !634), !dbg !964
  %7 = select i1 %6, i32 0, i32 %3, !dbg !969
  %.1 = add i32 %7, %5, !dbg !969
  %. = select i1 %6, i32 %3, i32 2
  %8 = icmp ult i32 %., 256, !dbg !970
  br i1 %8, label %.lr.ph27, label %._crit_edge39, !dbg !971

._crit_edge39:                                    ; preds = %0
  %.pre40 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !972
  br label %select.unfold._crit_edge, !dbg !971

.lr.ph27:                                         ; preds = %0
  %9 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2, !dbg !973
  %10 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3, !dbg !979
  %11 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6, !dbg !981
  %12 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5, !dbg !981
  %13 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14, !dbg !981
  %14 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16, !dbg !983
  %15 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4, !dbg !985
  br label %16, !dbg !971

; <label>:16                                      ; preds = %.lr.ph27, %select.unfold
  %low.025 = phi i32 [ %.1, %.lr.ph27 ], [ %129, %select.unfold ]
  %range.024 = phi i32 [ %., %.lr.ph27 ], [ %130, %select.unfold ]
  %17 = icmp ugt i32 %low.025, 511, !dbg !986
  br i1 %17, label %18, label %71, !dbg !987

; <label>:18                                      ; preds = %16
  %19 = load i32* %9, align 4, !dbg !973, !tbaa !668
  %20 = shl i32 %19, 1, !dbg !973
  %21 = or i32 %20, 1, !dbg !973
  store i32 %21, i32* %9, align 4, !dbg !973, !tbaa !668
  %22 = load i32* %10, align 4, !dbg !979, !tbaa !671
  %23 = add i32 %22, -1, !dbg !979
  store i32 %23, i32* %10, align 4, !dbg !979, !tbaa !671
  %24 = icmp eq i32 %23, 0, !dbg !979
  br i1 %24, label %28, label %.preheader, !dbg !973

.preheader:                                       ; preds = %28, %.lr.ph13, %18
  %25 = phi i32 [ %23, %18 ], [ 8, %.lr.ph13 ], [ 8, %28 ]
  %26 = load i32* %15, align 4, !dbg !985, !tbaa !665
  %27 = icmp eq i32 %26, 0, !dbg !985
  br i1 %27, label %._crit_edge, label %.lr.ph23, !dbg !985

; <label>:28                                      ; preds = %18
  %29 = trunc i32 %21 to i8, !dbg !981
  %30 = load i32** %11, align 8, !dbg !981, !tbaa !677
  %31 = load i32* %30, align 4, !dbg !981, !tbaa !685
  %32 = add nsw i32 %31, 1, !dbg !981
  store i32 %32, i32* %30, align 4, !dbg !981, !tbaa !685
  %33 = sext i32 %31 to i64, !dbg !981
  %34 = load i8** %12, align 8, !dbg !981, !tbaa !674
  %35 = getelementptr inbounds i8* %34, i64 %33, !dbg !981
  store i8 %29, i8* %35, align 1, !dbg !981, !tbaa !719
  store i32 8, i32* %10, align 4, !dbg !981, !tbaa !671
  %36 = load i32* %13, align 4, !dbg !981, !tbaa !683
  %37 = icmp sgt i32 %36, 7, !dbg !981
  br i1 %37, label %.lr.ph13, label %.preheader, !dbg !981

.lr.ph13:                                         ; preds = %28
  %.promoted16 = load i32* %14, align 4, !dbg !983, !tbaa !691
  %38 = add i32 %36, -8, !dbg !981
  %39 = lshr i32 %38, 3, !dbg !981
  %40 = shl nuw i32 %39, 3, !dbg !981
  %41 = add i32 %.promoted16, 1, !dbg !981
  %42 = add i32 %41, %39, !dbg !981
  %43 = sub i32 %38, %40, !dbg !981
  store i32 %43, i32* %13, align 4, !dbg !983, !tbaa !683
  store i32 %42, i32* %14, align 4, !dbg !983, !tbaa !691
  br label %.preheader, !dbg !981

.loopexit:                                        ; preds = %.lr.ph18, %54
  %.pre38 = load i32* %15, align 4, !dbg !985, !tbaa !665
  br label %.backedge

.lr.ph23:                                         ; preds = %.preheader, %.backedge
  %44 = phi i32 [ %52, %.backedge ], [ %25, %.preheader ], !dbg !988
  %45 = phi i32 [ %51, %.backedge ], [ %26, %.preheader ]
  %46 = add i32 %45, -1, !dbg !988
  store i32 %46, i32* %15, align 4, !dbg !988, !tbaa !665
  %47 = load i32* %9, align 4, !dbg !990, !tbaa !668
  %48 = shl i32 %47, 1, !dbg !990
  store i32 %48, i32* %9, align 4, !dbg !990, !tbaa !668
  %49 = add i32 %44, -1, !dbg !992
  store i32 %49, i32* %10, align 4, !dbg !992, !tbaa !671
  %50 = icmp eq i32 %49, 0, !dbg !992
  br i1 %50, label %54, label %.backedge, !dbg !990

.backedge:                                        ; preds = %.lr.ph23, %.loopexit
  %51 = phi i32 [ %46, %.lr.ph23 ], [ %.pre38, %.loopexit ]
  %52 = phi i32 [ %49, %.lr.ph23 ], [ 8, %.loopexit ]
  %53 = icmp eq i32 %51, 0, !dbg !985
  br i1 %53, label %._crit_edge, label %.lr.ph23, !dbg !985

; <label>:54                                      ; preds = %.lr.ph23
  %55 = trunc i32 %48 to i8, !dbg !994
  %56 = load i32** %11, align 8, !dbg !994, !tbaa !677
  %57 = load i32* %56, align 4, !dbg !994, !tbaa !685
  %58 = add nsw i32 %57, 1, !dbg !994
  store i32 %58, i32* %56, align 4, !dbg !994, !tbaa !685
  %59 = sext i32 %57 to i64, !dbg !994
  %60 = load i8** %12, align 8, !dbg !994, !tbaa !674
  %61 = getelementptr inbounds i8* %60, i64 %59, !dbg !994
  store i8 %55, i8* %61, align 1, !dbg !994, !tbaa !719
  store i32 8, i32* %10, align 4, !dbg !994, !tbaa !671
  %62 = load i32* %13, align 4, !dbg !994, !tbaa !683
  %63 = icmp sgt i32 %62, 7, !dbg !994
  br i1 %63, label %.lr.ph18, label %.loopexit, !dbg !994

.lr.ph18:                                         ; preds = %54
  %.promoted21 = load i32* %14, align 4, !dbg !996, !tbaa !691
  %64 = add i32 %62, -8, !dbg !994
  %65 = lshr i32 %64, 3, !dbg !994
  %66 = shl nuw i32 %65, 3, !dbg !994
  %67 = add i32 %.promoted21, 1, !dbg !994
  %68 = add i32 %67, %65, !dbg !994
  %69 = sub i32 %64, %66, !dbg !994
  store i32 %69, i32* %13, align 4, !dbg !996, !tbaa !683
  store i32 %68, i32* %14, align 4, !dbg !996, !tbaa !691
  br label %.loopexit, !dbg !994

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %70 = add i32 %low.025, -512, !dbg !998
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !104, metadata !634), !dbg !966
  br label %select.unfold, !dbg !999

; <label>:71                                      ; preds = %16
  %72 = icmp ult i32 %low.025, 256, !dbg !1000
  br i1 %72, label %73, label %125, !dbg !1002

; <label>:73                                      ; preds = %71
  %74 = load i32* %9, align 4, !dbg !1003, !tbaa !668
  %75 = shl i32 %74, 1, !dbg !1003
  store i32 %75, i32* %9, align 4, !dbg !1003, !tbaa !668
  %76 = load i32* %10, align 4, !dbg !1007, !tbaa !671
  %77 = add i32 %76, -1, !dbg !1007
  store i32 %77, i32* %10, align 4, !dbg !1007, !tbaa !671
  %78 = icmp eq i32 %77, 0, !dbg !1007
  br i1 %78, label %82, label %.preheader3, !dbg !1003

.preheader3:                                      ; preds = %82, %.lr.ph, %73
  %79 = phi i32 [ %77, %73 ], [ 8, %.lr.ph ], [ 8, %82 ]
  %80 = load i32* %15, align 4, !dbg !1009, !tbaa !665
  %81 = icmp eq i32 %80, 0, !dbg !1009
  br i1 %81, label %select.unfold, label %.lr.ph12, !dbg !1009

; <label>:82                                      ; preds = %73
  %83 = trunc i32 %75 to i8, !dbg !1010
  %84 = load i32** %11, align 8, !dbg !1010, !tbaa !677
  %85 = load i32* %84, align 4, !dbg !1010, !tbaa !685
  %86 = add nsw i32 %85, 1, !dbg !1010
  store i32 %86, i32* %84, align 4, !dbg !1010, !tbaa !685
  %87 = sext i32 %85 to i64, !dbg !1010
  %88 = load i8** %12, align 8, !dbg !1010, !tbaa !674
  %89 = getelementptr inbounds i8* %88, i64 %87, !dbg !1010
  store i8 %83, i8* %89, align 1, !dbg !1010, !tbaa !719
  store i32 8, i32* %10, align 4, !dbg !1010, !tbaa !671
  %90 = load i32* %13, align 4, !dbg !1010, !tbaa !683
  %91 = icmp sgt i32 %90, 7, !dbg !1010
  br i1 %91, label %.lr.ph, label %.preheader3, !dbg !1010

.lr.ph:                                           ; preds = %82
  %.promoted = load i32* %14, align 4, !dbg !1012, !tbaa !691
  %92 = add i32 %90, -8, !dbg !1010
  %93 = lshr i32 %92, 3, !dbg !1010
  %94 = shl nuw i32 %93, 3, !dbg !1010
  %95 = add i32 %.promoted, 1, !dbg !1010
  %96 = add i32 %95, %93, !dbg !1010
  %97 = sub i32 %92, %94, !dbg !1010
  store i32 %97, i32* %13, align 4, !dbg !1012, !tbaa !683
  store i32 %96, i32* %14, align 4, !dbg !1012, !tbaa !691
  br label %.preheader3, !dbg !1010

.loopexit2:                                       ; preds = %.lr.ph7, %109
  %.pre = load i32* %15, align 4, !dbg !1009, !tbaa !665
  br label %.backedge5

.lr.ph12:                                         ; preds = %.preheader3, %.backedge5
  %98 = phi i32 [ %107, %.backedge5 ], [ %79, %.preheader3 ], !dbg !1014
  %99 = phi i32 [ %106, %.backedge5 ], [ %80, %.preheader3 ]
  %100 = add i32 %99, -1, !dbg !1014
  store i32 %100, i32* %15, align 4, !dbg !1014, !tbaa !665
  %101 = load i32* %9, align 4, !dbg !1016, !tbaa !668
  %102 = shl i32 %101, 1, !dbg !1016
  %103 = or i32 %102, 1, !dbg !1016
  store i32 %103, i32* %9, align 4, !dbg !1016, !tbaa !668
  %104 = add i32 %98, -1, !dbg !1018
  store i32 %104, i32* %10, align 4, !dbg !1018, !tbaa !671
  %105 = icmp eq i32 %104, 0, !dbg !1018
  br i1 %105, label %109, label %.backedge5, !dbg !1016

.backedge5:                                       ; preds = %.lr.ph12, %.loopexit2
  %106 = phi i32 [ %100, %.lr.ph12 ], [ %.pre, %.loopexit2 ]
  %107 = phi i32 [ %104, %.lr.ph12 ], [ 8, %.loopexit2 ]
  %108 = icmp eq i32 %106, 0, !dbg !1009
  br i1 %108, label %select.unfold, label %.lr.ph12, !dbg !1009

; <label>:109                                     ; preds = %.lr.ph12
  %110 = trunc i32 %103 to i8, !dbg !1020
  %111 = load i32** %11, align 8, !dbg !1020, !tbaa !677
  %112 = load i32* %111, align 4, !dbg !1020, !tbaa !685
  %113 = add nsw i32 %112, 1, !dbg !1020
  store i32 %113, i32* %111, align 4, !dbg !1020, !tbaa !685
  %114 = sext i32 %112 to i64, !dbg !1020
  %115 = load i8** %12, align 8, !dbg !1020, !tbaa !674
  %116 = getelementptr inbounds i8* %115, i64 %114, !dbg !1020
  store i8 %110, i8* %116, align 1, !dbg !1020, !tbaa !719
  store i32 8, i32* %10, align 4, !dbg !1020, !tbaa !671
  %117 = load i32* %13, align 4, !dbg !1020, !tbaa !683
  %118 = icmp sgt i32 %117, 7, !dbg !1020
  br i1 %118, label %.lr.ph7, label %.loopexit2, !dbg !1020

.lr.ph7:                                          ; preds = %109
  %.promoted10 = load i32* %14, align 4, !dbg !1022, !tbaa !691
  %119 = add i32 %117, -8, !dbg !1020
  %120 = lshr i32 %119, 3, !dbg !1020
  %121 = shl nuw i32 %120, 3, !dbg !1020
  %122 = add i32 %.promoted10, 1, !dbg !1020
  %123 = add i32 %122, %120, !dbg !1020
  %124 = sub i32 %119, %121, !dbg !1020
  store i32 %124, i32* %13, align 4, !dbg !1022, !tbaa !683
  store i32 %123, i32* %14, align 4, !dbg !1022, !tbaa !691
  br label %.loopexit2, !dbg !1020

; <label>:125                                     ; preds = %71
  %126 = load i32* %15, align 4, !dbg !1024, !tbaa !665
  %127 = add i32 %126, 1, !dbg !1024
  store i32 %127, i32* %15, align 4, !dbg !1024, !tbaa !665
  %128 = add i32 %low.025, -256, !dbg !1026
  tail call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !104, metadata !634), !dbg !966
  br label %select.unfold

select.unfold:                                    ; preds = %.backedge5, %.preheader3, %125, %._crit_edge
  %low.1 = phi i32 [ %70, %._crit_edge ], [ %128, %125 ], [ %low.025, %.preheader3 ], [ %low.025, %.backedge5 ]
  %129 = shl i32 %low.1, 1, !dbg !1027
  tail call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !104, metadata !634), !dbg !966
  %130 = shl i32 %range.024, 1, !dbg !1028
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !103, metadata !634), !dbg !964
  %131 = icmp ult i32 %130, 256, !dbg !970
  br i1 %131, label %16, label %select.unfold._crit_edge, !dbg !971

select.unfold._crit_edge:                         ; preds = %select.unfold, %._crit_edge39
  %.pre-phi = phi i32* [ %.pre40, %._crit_edge39 ], [ %13, %select.unfold ], !dbg !972
  %low.0.lcssa = phi i32 [ %.1, %._crit_edge39 ], [ %129, %select.unfold ]
  %range.0.lcssa = phi i32 [ %3, %._crit_edge39 ], [ %130, %select.unfold ]
  store i32 %range.0.lcssa, i32* %1, align 4, !dbg !1029, !tbaa !680
  store i32 %low.0.lcssa, i32* %4, align 4, !dbg !1030, !tbaa !657
  %132 = load i32* %.pre-phi, align 4, !dbg !1031, !tbaa !683
  %133 = add nsw i32 %132, 1, !dbg !1031
  store i32 %133, i32* %.pre-phi, align 4, !dbg !1031, !tbaa !683
  ret void, !dbg !1032
}

; Function Attrs: nounwind optsize ssp uwtable
define void @biari_init_context(%struct.BiContextType* nocapture %ctx, i32* nocapture readonly %ini) #0 {
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %ctx, i64 0, metadata !111, metadata !634), !dbg !1033
  tail call void @llvm.dbg.value(metadata i32* %ini, i64 0, metadata !112, metadata !634), !dbg !1034
  %1 = load i32* %ini, align 4, !dbg !1035, !tbaa !685
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !1036, !tbaa !747
  %3 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 10, !dbg !1036
  %4 = load i32* %3, align 4, !dbg !1036, !tbaa !1037
  %5 = icmp slt i32 %4, 0, !dbg !1036
  %. = select i1 %5, i32 0, i32 %4, !dbg !1036
  %6 = mul nsw i32 %., %1, !dbg !1038
  %7 = ashr i32 %6, 4, !dbg !1039
  %8 = getelementptr inbounds i32* %ini, i64 1, !dbg !1040
  %9 = load i32* %8, align 4, !dbg !1040, !tbaa !685
  %10 = add nsw i32 %7, %9, !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !113, metadata !634), !dbg !1042
  %11 = icmp slt i32 %10, 1, !dbg !1043
  %12 = select i1 %11, i32 1, i32 %10, !dbg !1043
  %13 = icmp slt i32 %12, 126, !dbg !1043
  %14 = select i1 %13, i32 %12, i32 126, !dbg !1043
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !113, metadata !634), !dbg !1042
  %15 = icmp sgt i32 %14, 63, !dbg !1044
  %16 = sub nsw i32 63, %14, !dbg !1046
  %17 = add i32 %14, 65472, !dbg !1048
  %.sink1.in = select i1 %15, i32 %17, i32 %16, !dbg !1050
  %.sink = zext i1 %15 to i8, !dbg !1050
  %.sink1 = trunc i32 %.sink1.in to i16, !dbg !1051
  %18 = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 0, !dbg !1052
  store i16 %.sink1, i16* %18, align 2
  %19 = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 1, !dbg !1053
  store i8 %.sink, i8* %19, align 1
  %20 = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 2, !dbg !1054
  store i64 0, i64* %20, align 8, !dbg !1055, !tbaa !807
  ret void, !dbg !1056
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!627, !628, !629}
!llvm.ident = !{!630}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !43, globals: !114, imports: !626)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/biariencode.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{!9, !42}
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !10, line: 228, baseType: !11)
!10 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !10, line: 226, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 207, size: 832, align: 64, elements: !14)
!14 = !{!15, !17, !18, !19, !20, !21, !26, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !13, file: !10, line: 209, baseType: !16, size: 32, align: 32)
!16 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !13, file: !10, line: 209, baseType: !16, size: 32, align: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !13, file: !10, line: 210, baseType: !16, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !13, file: !10, line: 211, baseType: !16, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !13, file: !10, line: 212, baseType: !16, size: 32, align: 32, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !13, file: !10, line: 213, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !24, line: 30, baseType: !25)
!24 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!25 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !13, file: !10, line: 214, baseType: !27, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !13, file: !10, line: 217, baseType: !16, size: 32, align: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !13, file: !10, line: 217, baseType: !16, size: 32, align: 32, offset: 352)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !13, file: !10, line: 218, baseType: !16, size: 32, align: 32, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !13, file: !10, line: 219, baseType: !16, size: 32, align: 32, offset: 416)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !13, file: !10, line: 220, baseType: !16, size: 32, align: 32, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !13, file: !10, line: 221, baseType: !22, size: 64, align: 64, offset: 512)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !13, file: !10, line: 222, baseType: !27, size: 64, align: 64, offset: 576)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !13, file: !10, line: 223, baseType: !28, size: 32, align: 32, offset: 640)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !13, file: !10, line: 223, baseType: !28, size: 32, align: 32, offset: 672)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !13, file: !10, line: 224, baseType: !28, size: 32, align: 32, offset: 704)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !13, file: !10, line: 224, baseType: !28, size: 32, align: 32, offset: 736)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !13, file: !10, line: 225, baseType: !28, size: 32, align: 32, offset: 768)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !13, file: !10, line: 225, baseType: !28, size: 32, align: 32, offset: 800)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!43 = !{!44, !49, !54, !63, !68, !71, !92, !99, !105}
!44 = !DISubprogram(name: "arienco_create_encoding_environment", scope: !1, file: !1, line: 61, type: !45, isLocal: false, isDefinition: true, scopeLine: 62, isOptimized: true, function: %struct.EncodingEnvironment* ()* @arienco_create_encoding_environment, variables: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{!9}
!47 = !{!48}
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eep", scope: !44, file: !1, line: 63, type: !9)
!49 = !DISubprogram(name: "arienco_delete_encoding_environment", scope: !1, file: !1, line: 79, type: !50, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*)* @arienco_delete_encoding_environment, variables: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !9}
!52 = !{!53}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep", arg: 1, scope: !49, file: !1, line: 79, type: !9)
!54 = !DISubprogram(name: "arienco_start_encoding", scope: !1, file: !1, line: 98, type: !55, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*, i8*, i32*, i32)* @arienco_start_encoding, variables: !58)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !9, !57, !27, !28}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!58 = !{!59, !60, !61, !62}
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep", arg: 1, scope: !54, file: !1, line: 98, type: !9)
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code_buffer", arg: 2, scope: !54, file: !1, line: 99, type: !57)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code_len", arg: 3, scope: !54, file: !1, line: 100, type: !27)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "slice_type", arg: 4, scope: !54, file: !1, line: 100, type: !28)
!63 = !DISubprogram(name: "arienco_bits_written", scope: !1, file: !1, line: 125, type: !64, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.EncodingEnvironment*)* @arienco_bits_written, variables: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{!28, !9}
!66 = !{!67}
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep", arg: 1, scope: !63, file: !1, line: 125, type: !9)
!68 = !DISubprogram(name: "arienco_done_encoding", scope: !1, file: !1, line: 137, type: !50, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*)* @arienco_done_encoding, variables: !69)
!69 = !{!70}
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep", arg: 1, scope: !68, file: !1, line: 137, type: !9)
!71 = !DISubprogram(name: "biari_encode_symbol", scope: !1, file: !1, line: 163, type: !72, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*, i16, %struct.BiContextType*)* @biari_encode_symbol, variables: !85)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !9, !74, !75}
!74 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextTypePtr", file: !10, line: 240, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !10, line: 238, baseType: !78)
!78 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 231, size: 128, align: 64, elements: !79)
!79 = !{!80, !82, !83}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !78, file: !10, line: 233, baseType: !81, size: 16, align: 16)
!81 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !78, file: !10, line: 234, baseType: !25, size: 8, align: 8, offset: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !78, file: !10, line: 236, baseType: !84, size: 64, align: 64, offset: 64)
!84 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep", arg: 1, scope: !71, file: !1, line: 163, type: !9)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symbol", arg: 2, scope: !71, file: !1, line: 163, type: !74)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bi_ct", arg: 3, scope: !71, file: !1, line: 163, type: !75)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "range", scope: !71, file: !1, line: 165, type: !16)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "low", scope: !71, file: !1, line: 166, type: !16)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rLPS", scope: !71, file: !1, line: 167, type: !16)
!92 = !DISubprogram(name: "biari_encode_symbol_eq_prob", scope: !1, file: !1, line: 239, type: !93, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*, i16)* @biari_encode_symbol_eq_prob, variables: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !9, !74}
!95 = !{!96, !97, !98}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep", arg: 1, scope: !92, file: !1, line: 239, type: !9)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symbol", arg: 2, scope: !92, file: !1, line: 239, type: !74)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "low", scope: !92, file: !1, line: 241, type: !16)
!99 = !DISubprogram(name: "biari_encode_symbol_final", scope: !1, file: !1, line: 281, type: !93, isLocal: false, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*, i16)* @biari_encode_symbol_final, variables: !100)
!100 = !{!101, !102, !103, !104}
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep", arg: 1, scope: !99, file: !1, line: 281, type: !9)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symbol", arg: 2, scope: !99, file: !1, line: 281, type: !74)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "range", scope: !99, file: !1, line: 283, type: !16)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "low", scope: !99, file: !1, line: 284, type: !16)
!105 = !DISubprogram(name: "biari_init_context", scope: !1, file: !1, line: 330, type: !106, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.BiContextType*, i32*)* @biari_init_context, variables: !110)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !75, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!110 = !{!111, !112, !113}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !105, file: !1, line: 330, type: !75)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ini", arg: 2, scope: !105, file: !1, line: 330, type: !108)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pstate", scope: !105, file: !1, line: 332, type: !28)
!114 = !{!115, !122, !126, !127, !128, !284, !285, !286, !287, !288, !291, !293, !295, !296, !297, !298, !299, !338, !433, !434, !435, !437, !438, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !456, !457, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !473, !477, !478, !479, !480, !481, !482, !485, !488, !489, !490, !491, !494, !497, !508, !550, !551, !552, !553, !554, !610, !611, !612, !613, !614, !618, !619, !620, !621, !622, !623, !624, !625}
!115 = !DIGlobalVariable(name: "rLPS_table_64x4", scope: !0, file: !116, line: 46, type: !117, isLocal: false, isDefinition: true, variable: [64 x [4 x i8]]* @rLPS_table_64x4)
!116 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/biariencode.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 2048, align: 8, elements: !119)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!119 = !{!120, !121}
!120 = !DISubrange(count: 64)
!121 = !DISubrange(count: 4)
!122 = !DIGlobalVariable(name: "AC_next_state_MPS_64", scope: !0, file: !116, line: 115, type: !123, isLocal: false, isDefinition: true, variable: [64 x i16]* @AC_next_state_MPS_64)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 1024, align: 16, elements: !125)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!125 = !{!120}
!126 = !DIGlobalVariable(name: "AC_next_state_LPS_64", scope: !0, file: !116, line: 126, type: !123, isLocal: false, isDefinition: true, variable: [64 x i16]* @AC_next_state_LPS_64)
!127 = !DIGlobalVariable(name: "binCount", scope: !0, file: !1, line: 22, type: !28, isLocal: false, isDefinition: true, variable: i32* @binCount)
!128 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !10, line: 558, type: !129, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !10, line: 484, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 475, size: 6592, align: 64, elements: !132)
!132 = !{!133, !134, !135, !279, !280, !282, !283}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !131, file: !10, line: 477, baseType: !28, size: 32, align: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !131, file: !10, line: 478, baseType: !28, size: 32, align: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !131, file: !10, line: 479, baseType: !136, size: 6400, align: 64, offset: 64)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 6400, align: 64, elements: !277)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !10, line: 471, baseType: !139)
!139 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 443, size: 1216, align: 64, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !195, !225, !252, !261, !262, !263, !264, !265, !266, !267, !268, !269, !274}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !139, file: !10, line: 445, baseType: !28, size: 32, align: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !139, file: !10, line: 446, baseType: !28, size: 32, align: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !139, file: !10, line: 447, baseType: !28, size: 32, align: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !139, file: !10, line: 448, baseType: !28, size: 32, align: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !139, file: !10, line: 449, baseType: !28, size: 32, align: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !139, file: !10, line: 450, baseType: !28, size: 32, align: 32, offset: 160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !139, file: !10, line: 451, baseType: !148, size: 64, align: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !10, line: 440, baseType: !150)
!150 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !10, line: 430, size: 960, align: 64, elements: !151)
!151 = !{!152, !168, !169}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !150, file: !10, line: 433, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !10, line: 427, baseType: !155)
!155 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 411, size: 384, align: 64, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !155, file: !10, line: 413, baseType: !28, size: 32, align: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !155, file: !10, line: 414, baseType: !28, size: 32, align: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !155, file: !10, line: 415, baseType: !23, size: 8, align: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !155, file: !10, line: 416, baseType: !28, size: 32, align: 32, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !155, file: !10, line: 417, baseType: !28, size: 32, align: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !155, file: !10, line: 418, baseType: !23, size: 8, align: 8, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !155, file: !10, line: 420, baseType: !23, size: 8, align: 8, offset: 168)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !155, file: !10, line: 421, baseType: !28, size: 32, align: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !155, file: !10, line: 422, baseType: !28, size: 32, align: 32, offset: 224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !155, file: !10, line: 424, baseType: !22, size: 64, align: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !155, file: !10, line: 425, baseType: !28, size: 32, align: 32, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !150, file: !10, line: 434, baseType: !12, size: 832, align: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !150, file: !10, line: 436, baseType: !170, size: 64, align: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!28, !173, !194}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !10, line: 348, baseType: !175)
!175 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !10, line: 327, size: 384, align: 64, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !189}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !10, line: 329, baseType: !28, size: 32, align: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !175, file: !10, line: 330, baseType: !28, size: 32, align: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !175, file: !10, line: 331, baseType: !28, size: 32, align: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !175, file: !10, line: 332, baseType: !28, size: 32, align: 32, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !175, file: !10, line: 333, baseType: !28, size: 32, align: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !175, file: !10, line: 334, baseType: !16, size: 32, align: 32, offset: 160)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !175, file: !10, line: 335, baseType: !28, size: 32, align: 32, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !175, file: !10, line: 336, baseType: !28, size: 32, align: 32, offset: 224)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !175, file: !10, line: 344, baseType: !186, size: 64, align: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !28, !28, !27, !27}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !175, file: !10, line: 346, baseType: !190, size: 64, align: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !193, !9}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !139, file: !10, line: 452, baseType: !196, size: 64, align: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !10, line: 268, baseType: !198)
!198 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 258, size: 12032, align: 64, elements: !199)
!199 = !{!200, !205, !210, !214, !218, !221, !222}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !198, file: !10, line: 260, baseType: !201, size: 4224, align: 64)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 4224, align: 64, elements: !202)
!202 = !{!203, !204}
!203 = !DISubrange(count: 3)
!204 = !DISubrange(count: 11)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !198, file: !10, line: 261, baseType: !206, size: 2304, align: 64, offset: 4224)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2304, align: 64, elements: !207)
!207 = !{!208, !209}
!208 = !DISubrange(count: 2)
!209 = !DISubrange(count: 9)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !198, file: !10, line: 262, baseType: !211, size: 2560, align: 64, offset: 6528)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2560, align: 64, elements: !212)
!212 = !{!208, !213}
!213 = !DISubrange(count: 10)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !198, file: !10, line: 263, baseType: !215, size: 1536, align: 64, offset: 9088)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 1536, align: 64, elements: !216)
!216 = !{!208, !217}
!217 = !DISubrange(count: 6)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !198, file: !10, line: 264, baseType: !219, size: 512, align: 64, offset: 10624)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 512, align: 64, elements: !220)
!220 = !{!121}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !198, file: !10, line: 265, baseType: !219, size: 512, align: 64, offset: 11136)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !198, file: !10, line: 266, baseType: !223, size: 384, align: 64, offset: 11648)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 384, align: 64, elements: !224)
!224 = !{!203}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !139, file: !10, line: 453, baseType: !226, size: 64, align: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !10, line: 293, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 281, size: 97024, align: 64, elements: !229)
!229 = !{!230, !233, !234, !237, !240, !244, !245, !249, !250, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !228, file: !10, line: 283, baseType: !231, size: 256, align: 64)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, align: 64, elements: !232)
!232 = !{!208}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !228, file: !10, line: 284, baseType: !219, size: 512, align: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !228, file: !10, line: 285, baseType: !235, size: 1536, align: 64, offset: 768)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 1536, align: 64, elements: !236)
!236 = !{!203, !121}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !228, file: !10, line: 286, baseType: !238, size: 5120, align: 64, offset: 2304)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 5120, align: 64, elements: !239)
!239 = !{!213, !121}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !228, file: !10, line: 287, baseType: !241, size: 19200, align: 64, offset: 7424)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 19200, align: 64, elements: !242)
!242 = !{!213, !243}
!243 = !DISubrange(count: 15)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !228, file: !10, line: 288, baseType: !241, size: 19200, align: 64, offset: 26624)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !228, file: !10, line: 289, baseType: !246, size: 6400, align: 64, offset: 45824)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 6400, align: 64, elements: !247)
!247 = !{!213, !248}
!248 = !DISubrange(count: 5)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !228, file: !10, line: 290, baseType: !246, size: 6400, align: 64, offset: 52224)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !228, file: !10, line: 291, baseType: !241, size: 19200, align: 64, offset: 58624)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !228, file: !10, line: 292, baseType: !241, size: 19200, align: 64, offset: 77824)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !139, file: !10, line: 456, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !10, line: 313, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !10, line: 308, size: 128, align: 64, elements: !256)
!256 = !{!257, !258, !259}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !255, file: !10, line: 310, baseType: !28, size: 32, align: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !255, file: !10, line: 311, baseType: !28, size: 32, align: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !255, file: !10, line: 312, baseType: !260, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !139, file: !10, line: 458, baseType: !28, size: 32, align: 32, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !139, file: !10, line: 459, baseType: !27, size: 64, align: 64, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !139, file: !10, line: 460, baseType: !27, size: 64, align: 64, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !139, file: !10, line: 461, baseType: !27, size: 64, align: 64, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !139, file: !10, line: 462, baseType: !28, size: 32, align: 32, offset: 704)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !139, file: !10, line: 463, baseType: !27, size: 64, align: 64, offset: 768)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !139, file: !10, line: 464, baseType: !27, size: 64, align: 64, offset: 832)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !139, file: !10, line: 465, baseType: !27, size: 64, align: 64, offset: 896)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !139, file: !10, line: 467, baseType: !270, size: 64, align: 64, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !28}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !139, file: !10, line: 469, baseType: !275, size: 192, align: 32, offset: 1024)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 192, align: 32, elements: !276)
!276 = !{!203, !208}
!277 = !{!278}
!278 = !DISubrange(count: 100)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !131, file: !10, line: 480, baseType: !28, size: 32, align: 32, offset: 6464)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !131, file: !10, line: 481, baseType: !281, size: 32, align: 32, offset: 6496)
!281 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !131, file: !10, line: 482, baseType: !281, size: 32, align: 32, offset: 6528)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !131, file: !10, line: 483, baseType: !281, size: 32, align: 32, offset: 6560)
!284 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !10, line: 559, type: !129, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!285 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !10, line: 560, type: !129, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!286 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !10, line: 561, type: !129, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!287 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !10, line: 562, type: !129, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!288 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !10, line: 565, type: !289, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!291 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !10, line: 566, type: !292, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!293 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !10, line: 567, type: !294, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!295 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !10, line: 569, type: !16, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!296 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !10, line: 570, type: !16, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!297 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !10, line: 572, type: !28, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!298 = !DIGlobalVariable(name: "me_time", scope: !0, file: !10, line: 572, type: !28, isLocal: false, isDefinition: true, variable: i32* @me_time)
!299 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !10, line: 573, type: !300, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !302)
!302 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !314, !315, !316, !317, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !302, file: !4, line: 105, baseType: !273, size: 32, align: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !302, file: !4, line: 106, baseType: !16, size: 32, align: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !302, file: !4, line: 107, baseType: !16, size: 32, align: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !302, file: !4, line: 108, baseType: !273, size: 32, align: 32, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !302, file: !4, line: 110, baseType: !273, size: 32, align: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !302, file: !4, line: 111, baseType: !273, size: 32, align: 32, offset: 160)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !302, file: !4, line: 112, baseType: !311, size: 256, align: 32, offset: 192)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, align: 32, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 8)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !302, file: !4, line: 115, baseType: !273, size: 32, align: 32, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !302, file: !4, line: 116, baseType: !16, size: 32, align: 32, offset: 480)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !302, file: !4, line: 117, baseType: !16, size: 32, align: 32, offset: 512)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !302, file: !4, line: 119, baseType: !318, size: 256, align: 32, offset: 544)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, align: 32, elements: !312)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !302, file: !4, line: 121, baseType: !318, size: 256, align: 32, offset: 800)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !302, file: !4, line: 122, baseType: !318, size: 256, align: 32, offset: 1056)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !302, file: !4, line: 124, baseType: !273, size: 32, align: 32, offset: 1312)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !302, file: !4, line: 125, baseType: !16, size: 32, align: 32, offset: 1344)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !302, file: !4, line: 127, baseType: !16, size: 32, align: 32, offset: 1376)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !302, file: !4, line: 128, baseType: !22, size: 64, align: 64, offset: 1408)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !302, file: !4, line: 130, baseType: !28, size: 32, align: 32, offset: 1472)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !302, file: !4, line: 131, baseType: !28, size: 32, align: 32, offset: 1504)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !302, file: !4, line: 132, baseType: !273, size: 32, align: 32, offset: 1536)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !302, file: !4, line: 133, baseType: !16, size: 32, align: 32, offset: 1568)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !302, file: !4, line: 134, baseType: !28, size: 32, align: 32, offset: 1600)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !302, file: !4, line: 135, baseType: !28, size: 32, align: 32, offset: 1632)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !302, file: !4, line: 136, baseType: !28, size: 32, align: 32, offset: 1664)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !302, file: !4, line: 138, baseType: !28, size: 32, align: 32, offset: 1696)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !302, file: !4, line: 139, baseType: !28, size: 32, align: 32, offset: 1728)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !302, file: !4, line: 141, baseType: !273, size: 32, align: 32, offset: 1760)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !302, file: !4, line: 142, baseType: !273, size: 32, align: 32, offset: 1792)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !302, file: !4, line: 143, baseType: !273, size: 32, align: 32, offset: 1824)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !302, file: !4, line: 144, baseType: !273, size: 32, align: 32, offset: 1856)
!338 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !10, line: 574, type: !339, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !341)
!341 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !341, file: !4, line: 151, baseType: !273, size: 32, align: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !341, file: !4, line: 153, baseType: !16, size: 32, align: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !341, file: !4, line: 154, baseType: !273, size: 32, align: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !341, file: !4, line: 155, baseType: !273, size: 32, align: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !341, file: !4, line: 156, baseType: !273, size: 32, align: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !341, file: !4, line: 157, baseType: !273, size: 32, align: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !341, file: !4, line: 158, baseType: !16, size: 32, align: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !341, file: !4, line: 159, baseType: !16, size: 32, align: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !341, file: !4, line: 160, baseType: !16, size: 32, align: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !341, file: !4, line: 162, baseType: !273, size: 32, align: 32, offset: 288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !341, file: !4, line: 163, baseType: !311, size: 256, align: 32, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !341, file: !4, line: 165, baseType: !16, size: 32, align: 32, offset: 576)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !341, file: !4, line: 166, baseType: !16, size: 32, align: 32, offset: 608)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !341, file: !4, line: 167, baseType: !16, size: 32, align: 32, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !341, file: !4, line: 168, baseType: !16, size: 32, align: 32, offset: 672)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !341, file: !4, line: 170, baseType: !16, size: 32, align: 32, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !341, file: !4, line: 172, baseType: !273, size: 32, align: 32, offset: 736)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !341, file: !4, line: 173, baseType: !28, size: 32, align: 32, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !341, file: !4, line: 174, baseType: !28, size: 32, align: 32, offset: 800)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !341, file: !4, line: 175, baseType: !16, size: 32, align: 32, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !341, file: !4, line: 177, baseType: !364, size: 8192, align: 32, offset: 864)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8192, align: 32, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !341, file: !4, line: 178, baseType: !16, size: 32, align: 32, offset: 9056)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !341, file: !4, line: 179, baseType: !273, size: 32, align: 32, offset: 9088)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !341, file: !4, line: 180, baseType: !16, size: 32, align: 32, offset: 9120)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !341, file: !4, line: 181, baseType: !16, size: 32, align: 32, offset: 9152)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !341, file: !4, line: 182, baseType: !273, size: 32, align: 32, offset: 9184)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !341, file: !4, line: 184, baseType: !273, size: 32, align: 32, offset: 9216)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !341, file: !4, line: 185, baseType: !273, size: 32, align: 32, offset: 9248)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !341, file: !4, line: 186, baseType: !273, size: 32, align: 32, offset: 9280)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !341, file: !4, line: 187, baseType: !16, size: 32, align: 32, offset: 9312)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !341, file: !4, line: 188, baseType: !16, size: 32, align: 32, offset: 9344)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !341, file: !4, line: 189, baseType: !16, size: 32, align: 32, offset: 9376)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !341, file: !4, line: 190, baseType: !16, size: 32, align: 32, offset: 9408)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !341, file: !4, line: 191, baseType: !273, size: 32, align: 32, offset: 9440)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !341, file: !4, line: 192, baseType: !381, size: 7584, align: 32, offset: 9472)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !382)
!382 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !382, file: !4, line: 65, baseType: !273, size: 32, align: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !382, file: !4, line: 66, baseType: !16, size: 32, align: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !382, file: !4, line: 67, baseType: !16, size: 32, align: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !382, file: !4, line: 68, baseType: !16, size: 32, align: 32, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !382, file: !4, line: 69, baseType: !273, size: 32, align: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !382, file: !4, line: 70, baseType: !273, size: 32, align: 32, offset: 160)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !382, file: !4, line: 71, baseType: !273, size: 32, align: 32, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !382, file: !4, line: 72, baseType: !16, size: 32, align: 32, offset: 224)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !382, file: !4, line: 73, baseType: !273, size: 32, align: 32, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !382, file: !4, line: 74, baseType: !273, size: 32, align: 32, offset: 288)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !382, file: !4, line: 75, baseType: !16, size: 32, align: 32, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !382, file: !4, line: 76, baseType: !16, size: 32, align: 32, offset: 352)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !382, file: !4, line: 77, baseType: !16, size: 32, align: 32, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !382, file: !4, line: 78, baseType: !273, size: 32, align: 32, offset: 416)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !382, file: !4, line: 79, baseType: !16, size: 32, align: 32, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !382, file: !4, line: 80, baseType: !16, size: 32, align: 32, offset: 480)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !382, file: !4, line: 81, baseType: !273, size: 32, align: 32, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !382, file: !4, line: 82, baseType: !16, size: 32, align: 32, offset: 544)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !382, file: !4, line: 83, baseType: !16, size: 32, align: 32, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !382, file: !4, line: 84, baseType: !273, size: 32, align: 32, offset: 608)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !382, file: !4, line: 85, baseType: !273, size: 32, align: 32, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !382, file: !4, line: 86, baseType: !406, size: 3296, align: 32, offset: 672)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !407)
!407 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !408)
!408 = !{!409, !410, !411, !412, !416, !417, !418, !419, !420, !421}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !407, file: !4, line: 50, baseType: !16, size: 32, align: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !407, file: !4, line: 51, baseType: !16, size: 32, align: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !407, file: !4, line: 52, baseType: !16, size: 32, align: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !407, file: !4, line: 53, baseType: !413, size: 1024, align: 32, offset: 96)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1024, align: 32, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !407, file: !4, line: 54, baseType: !413, size: 1024, align: 32, offset: 1120)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !407, file: !4, line: 55, baseType: !413, size: 1024, align: 32, offset: 2144)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !407, file: !4, line: 56, baseType: !16, size: 32, align: 32, offset: 3168)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !407, file: !4, line: 57, baseType: !16, size: 32, align: 32, offset: 3200)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !407, file: !4, line: 58, baseType: !16, size: 32, align: 32, offset: 3232)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !407, file: !4, line: 59, baseType: !16, size: 32, align: 32, offset: 3264)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !382, file: !4, line: 87, baseType: !273, size: 32, align: 32, offset: 3968)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !382, file: !4, line: 88, baseType: !406, size: 3296, align: 32, offset: 4000)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !382, file: !4, line: 90, baseType: !273, size: 32, align: 32, offset: 7296)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !382, file: !4, line: 91, baseType: !273, size: 32, align: 32, offset: 7328)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !382, file: !4, line: 92, baseType: !273, size: 32, align: 32, offset: 7360)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !382, file: !4, line: 93, baseType: !16, size: 32, align: 32, offset: 7392)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !382, file: !4, line: 94, baseType: !16, size: 32, align: 32, offset: 7424)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !382, file: !4, line: 95, baseType: !16, size: 32, align: 32, offset: 7456)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !382, file: !4, line: 96, baseType: !16, size: 32, align: 32, offset: 7488)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !382, file: !4, line: 97, baseType: !16, size: 32, align: 32, offset: 7520)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !382, file: !4, line: 98, baseType: !16, size: 32, align: 32, offset: 7552)
!433 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !10, line: 578, type: !28, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!434 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !10, line: 579, type: !28, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!435 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !10, line: 583, type: !436, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!437 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !10, line: 584, type: !436, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!438 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !10, line: 585, type: !439, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!440 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !10, line: 586, type: !28, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!441 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !10, line: 587, type: !28, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!442 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !10, line: 588, type: !28, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!443 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !10, line: 589, type: !28, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!444 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !10, line: 592, type: !289, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!445 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !10, line: 593, type: !289, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!446 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !10, line: 595, type: !292, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!447 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !10, line: 596, type: !292, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!448 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !10, line: 598, type: !289, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!449 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !10, line: 599, type: !292, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!450 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !10, line: 601, type: !289, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!451 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !10, line: 602, type: !292, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!452 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !10, line: 604, type: !453, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!456 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !10, line: 605, type: !454, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!457 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !10, line: 608, type: !458, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!459 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !10, line: 609, type: !458, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!460 = !DIGlobalVariable(name: "intras", scope: !0, file: !10, line: 610, type: !28, isLocal: false, isDefinition: true, variable: i32* @intras)
!461 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !10, line: 612, type: !28, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!462 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !10, line: 612, type: !28, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!463 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !10, line: 612, type: !28, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!464 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !10, line: 613, type: !28, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!465 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !10, line: 613, type: !28, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!466 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !10, line: 613, type: !28, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!467 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !10, line: 614, type: !28, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!468 = !DIGlobalVariable(name: "errortext", scope: !0, file: !10, line: 617, type: !469, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 2400, align: 8, elements: !471)
!470 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!471 = !{!472}
!472 = !DISubrange(count: 300)
!473 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !10, line: 620, type: !474, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8192, align: 32, elements: !475)
!475 = !{!476, !476}
!476 = !DISubrange(count: 16)
!477 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !10, line: 620, type: !474, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!478 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !10, line: 620, type: !474, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!479 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !10, line: 621, type: !474, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!480 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !10, line: 621, type: !474, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!481 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !10, line: 621, type: !474, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!482 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !10, line: 622, type: !483, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 24576, align: 32, elements: !484)
!484 = !{!203, !476, !476}
!485 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !10, line: 623, type: !486, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1024, align: 32, elements: !487)
!487 = !{!208, !121, !121}
!488 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !10, line: 623, type: !486, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!489 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !10, line: 624, type: !486, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!490 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !10, line: 624, type: !486, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!491 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !10, line: 625, type: !492, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, align: 32, elements: !493)
!493 = !{!121, !121}
!494 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !10, line: 625, type: !495, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, align: 32, elements: !496)
!496 = !{!476}
!497 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !10, line: 1201, type: !498, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !10, line: 1190, baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 1182, size: 192, align: 32, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !500, file: !10, line: 1184, baseType: !28, size: 32, align: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !500, file: !10, line: 1185, baseType: !28, size: 32, align: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !500, file: !10, line: 1186, baseType: !28, size: 32, align: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !500, file: !10, line: 1187, baseType: !28, size: 32, align: 32, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !500, file: !10, line: 1188, baseType: !28, size: 32, align: 32, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !500, file: !10, line: 1189, baseType: !28, size: 32, align: 32, offset: 160)
!508 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !10, line: 1202, type: !509, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !10, line: 1177, baseType: !511)
!511 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 1145, size: 26880, align: 64, elements: !512)
!512 = !{!513, !515, !516, !517, !518, !519, !520, !521, !522, !524, !525, !526, !527, !528, !533, !534, !538, !539, !540, !541, !543, !544, !545, !546, !547, !548, !549}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !511, file: !10, line: 1147, baseType: !514, size: 64, align: 64)
!514 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !511, file: !10, line: 1149, baseType: !474, size: 8192, align: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !511, file: !10, line: 1150, baseType: !474, size: 8192, align: 32, offset: 8256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !511, file: !10, line: 1150, baseType: !474, size: 8192, align: 32, offset: 16448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !511, file: !10, line: 1151, baseType: !439, size: 64, align: 64, offset: 24640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !511, file: !10, line: 1152, baseType: !436, size: 64, align: 64, offset: 24704)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !511, file: !10, line: 1153, baseType: !28, size: 32, align: 32, offset: 24768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !511, file: !10, line: 1155, baseType: !28, size: 32, align: 32, offset: 24800)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !511, file: !10, line: 1157, baseType: !523, size: 128, align: 32, offset: 24832)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, align: 32, elements: !220)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !511, file: !10, line: 1157, baseType: !523, size: 128, align: 32, offset: 24960)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !511, file: !10, line: 1158, baseType: !294, size: 64, align: 64, offset: 25088)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !511, file: !10, line: 1159, baseType: !495, size: 512, align: 32, offset: 25152)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !511, file: !10, line: 1160, baseType: !28, size: 32, align: 32, offset: 25664)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !511, file: !10, line: 1161, baseType: !529, size: 64, align: 64, offset: 25728)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !10, line: 62, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !531, line: 30, baseType: !532)
!531 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!532 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !511, file: !10, line: 1162, baseType: !28, size: 32, align: 32, offset: 25792)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !511, file: !10, line: 1163, baseType: !535, size: 64, align: 64, offset: 25856)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !511, file: !10, line: 1164, baseType: !535, size: 64, align: 64, offset: 25920)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !511, file: !10, line: 1165, baseType: !535, size: 64, align: 64, offset: 25984)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !511, file: !10, line: 1166, baseType: !535, size: 64, align: 64, offset: 26048)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !511, file: !10, line: 1167, baseType: !542, size: 512, align: 16, offset: 26112)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 512, align: 16, elements: !487)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !511, file: !10, line: 1168, baseType: !28, size: 32, align: 32, offset: 26624)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !511, file: !10, line: 1169, baseType: !28, size: 32, align: 32, offset: 26656)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !511, file: !10, line: 1171, baseType: !28, size: 32, align: 32, offset: 26688)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !511, file: !10, line: 1172, baseType: !28, size: 32, align: 32, offset: 26720)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !511, file: !10, line: 1174, baseType: !28, size: 32, align: 32, offset: 26752)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !511, file: !10, line: 1175, baseType: !28, size: 32, align: 32, offset: 26784)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !511, file: !10, line: 1176, baseType: !28, size: 32, align: 32, offset: 26816)
!550 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !10, line: 1203, type: !510, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!551 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !10, line: 1203, type: !510, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!552 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !10, line: 1204, type: !510, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!553 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !10, line: 1204, type: !510, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!554 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !10, line: 1230, type: !555, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !557, line: 153, baseType: !558)
!557 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !557, line: 122, size: 1216, align: 64, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !570, !571, !572, !576, !581, !590, !596, !597, !600, !601, !603, !607, !608, !609}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !558, file: !557, line: 123, baseType: !57, size: 64, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !558, file: !557, line: 124, baseType: !28, size: 32, align: 32, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !558, file: !557, line: 125, baseType: !28, size: 32, align: 32, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !558, file: !557, line: 126, baseType: !74, size: 16, align: 16, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !558, file: !557, line: 127, baseType: !74, size: 16, align: 16, offset: 144)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !558, file: !557, line: 128, baseType: !566, size: 128, align: 64, offset: 192)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !557, line: 88, size: 128, align: 64, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !566, file: !557, line: 89, baseType: !57, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !566, file: !557, line: 90, baseType: !28, size: 32, align: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !558, file: !557, line: 129, baseType: !28, size: 32, align: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !558, file: !557, line: 132, baseType: !42, size: 64, align: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !558, file: !557, line: 133, baseType: !573, size: 64, align: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!28, !42}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !558, file: !557, line: 134, baseType: !577, size: 64, align: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64, align: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!28, !42, !580, !28}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !558, file: !557, line: 135, baseType: !582, size: 64, align: 64, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!585, !42, !585, !28}
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !557, line: 77, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !587, line: 71, baseType: !588)
!587 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !589, line: 46, baseType: !532)
!589 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !558, file: !557, line: 136, baseType: !591, size: 64, align: 64, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!28, !42, !594, !28}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !558, file: !557, line: 139, baseType: !566, size: 128, align: 64, offset: 704)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !558, file: !557, line: 140, baseType: !598, size: 64, align: 64, offset: 832)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !557, line: 94, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !558, file: !557, line: 141, baseType: !28, size: 32, align: 32, offset: 896)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !558, file: !557, line: 144, baseType: !602, size: 24, align: 8, offset: 928)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, align: 8, elements: !224)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !558, file: !557, line: 145, baseType: !604, size: 8, align: 8, offset: 952)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, align: 8, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 1)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !558, file: !557, line: 148, baseType: !566, size: 128, align: 64, offset: 960)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !558, file: !557, line: 151, baseType: !28, size: 32, align: 32, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !558, file: !557, line: 152, baseType: !585, size: 64, align: 64, offset: 1152)
!610 = !DIGlobalVariable(name: "p_log", scope: !0, file: !10, line: 1231, type: !555, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!611 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !10, line: 1232, type: !555, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!612 = !DIGlobalVariable(name: "p_in", scope: !0, file: !10, line: 1233, type: !28, isLocal: false, isDefinition: true, variable: i32* @p_in)
!613 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !10, line: 1234, type: !28, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!614 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !10, line: 1237, type: !615, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, align: 32, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 20)
!618 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !10, line: 1238, type: !615, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!619 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !10, line: 1239, type: !615, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!620 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !10, line: 1240, type: !615, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!621 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !10, line: 1241, type: !615, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!622 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !10, line: 1242, type: !615, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!623 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !10, line: 1456, type: !28, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!624 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !10, line: 1465, type: !28, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!625 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !10, line: 1466, type: !28, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!626 = !{}
!627 = !{i32 2, !"Dwarf Version", i32 2}
!628 = !{i32 2, !"Debug Info Version", i32 700000003}
!629 = !{i32 1, !"PIC Level", i32 2}
!630 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!631 = !DILocation(line: 65, column: 40, scope: !632)
!632 = distinct !DILexicalBlock(scope: !44, file: !1, line: 65, column: 8)
!633 = !DILocation(line: 65, column: 15, scope: !632)
!634 = !DIExpression()
!635 = !DILocation(line: 63, column: 26, scope: !44)
!636 = !DILocation(line: 65, column: 79, scope: !632)
!637 = !DILocation(line: 65, column: 8, scope: !44)
!638 = !DILocation(line: 66, column: 5, scope: !632)
!639 = !DILocation(line: 68, column: 3, scope: !44)
!640 = !DILocation(line: 79, column: 65, scope: !49)
!641 = !DILocation(line: 81, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !49, file: !1, line: 81, column: 7)
!643 = !DILocation(line: 81, column: 7, scope: !49)
!644 = !DILocation(line: 83, column: 5, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !1, line: 82, column: 3)
!646 = !DILocation(line: 84, column: 5, scope: !645)
!647 = !DILocation(line: 85, column: 3, scope: !645)
!648 = !DILocation(line: 87, column: 10, scope: !642)
!649 = !DILocation(line: 87, column: 5, scope: !642)
!650 = !DILocation(line: 88, column: 1, scope: !49)
!651 = !DILocation(line: 98, column: 52, scope: !54)
!652 = !DILocation(line: 99, column: 44, scope: !54)
!653 = !DILocation(line: 100, column: 34, scope: !54)
!654 = !DILocation(line: 100, column: 75, scope: !54)
!655 = !DILocation(line: 102, column: 3, scope: !54)
!656 = !DILocation(line: 102, column: 8, scope: !54)
!657 = !{!658, !659, i64 0}
!658 = !{!"", !659, i64 0, !659, i64 4, !659, i64 8, !659, i64 12, !659, i64 16, !662, i64 24, !662, i64 32, !659, i64 40, !659, i64 44, !659, i64 48, !659, i64 52, !659, i64 56, !662, i64 64, !662, i64 72, !659, i64 80, !659, i64 84, !659, i64 88, !659, i64 92, !659, i64 96, !659, i64 100}
!659 = !{!"int", !660, i64 0}
!660 = !{!"omnipotent char", !661, i64 0}
!661 = !{!"Simple C/C++ TBAA"}
!662 = !{!"any pointer", !660, i64 0}
!663 = !DILocation(line: 103, column: 3, scope: !54)
!664 = !DILocation(line: 103, column: 19, scope: !54)
!665 = !{!658, !659, i64 16}
!666 = !DILocation(line: 104, column: 3, scope: !54)
!667 = !DILocation(line: 104, column: 11, scope: !54)
!668 = !{!658, !659, i64 8}
!669 = !DILocation(line: 105, column: 3, scope: !54)
!670 = !DILocation(line: 105, column: 15, scope: !54)
!671 = !{!658, !659, i64 12}
!672 = !DILocation(line: 107, column: 3, scope: !54)
!673 = !DILocation(line: 107, column: 13, scope: !54)
!674 = !{!658, !662, i64 24}
!675 = !DILocation(line: 108, column: 3, scope: !54)
!676 = !DILocation(line: 108, column: 17, scope: !54)
!677 = !{!658, !662, i64 32}
!678 = !DILocation(line: 111, column: 3, scope: !54)
!679 = !DILocation(line: 111, column: 10, scope: !54)
!680 = !{!658, !659, i64 4}
!681 = !DILocation(line: 113, column: 8, scope: !54)
!682 = !DILocation(line: 113, column: 10, scope: !54)
!683 = !{!658, !659, i64 80}
!684 = !DILocation(line: 114, column: 12, scope: !54)
!685 = !{!659, !659, i64 0}
!686 = !DILocation(line: 114, column: 8, scope: !54)
!687 = !DILocation(line: 114, column: 10, scope: !54)
!688 = !{!658, !659, i64 96}
!689 = !DILocation(line: 115, column: 8, scope: !54)
!690 = !DILocation(line: 115, column: 10, scope: !54)
!691 = !{!658, !659, i64 88}
!692 = !DILocation(line: 117, column: 1, scope: !54)
!693 = !DILocation(line: 125, column: 49, scope: !63)
!694 = !DILocation(line: 127, column: 18, scope: !63)
!695 = !DILocation(line: 127, column: 17, scope: !63)
!696 = !DILocation(line: 127, column: 14, scope: !63)
!697 = !DILocation(line: 127, column: 65, scope: !63)
!698 = !DILocation(line: 127, column: 88, scope: !63)
!699 = !DILocation(line: 127, column: 63, scope: !63)
!700 = !DILocation(line: 127, column: 81, scope: !63)
!701 = !DILocation(line: 127, column: 86, scope: !63)
!702 = !DILocation(line: 127, column: 4, scope: !63)
!703 = !DILocation(line: 137, column: 51, scope: !68)
!704 = !DILocation(line: 139, column: 3, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !1, line: 139, column: 3)
!706 = distinct !DILexicalBlock(scope: !68, file: !1, line: 139, column: 3)
!707 = !DILocation(line: 139, column: 3, scope: !708)
!708 = distinct !DILexicalBlock(scope: !705, file: !1, line: 139, column: 3)
!709 = !DILocation(line: 139, column: 3, scope: !706)
!710 = !DILocation(line: 139, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !1, line: 139, column: 3)
!712 = distinct !DILexicalBlock(scope: !713, file: !1, line: 139, column: 3)
!713 = distinct !DILexicalBlock(scope: !714, file: !1, line: 139, column: 3)
!714 = distinct !DILexicalBlock(scope: !706, file: !1, line: 139, column: 3)
!715 = !DILocation(line: 139, column: 3, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !1, line: 139, column: 3)
!717 = !DILocation(line: 139, column: 3, scope: !718)
!718 = distinct !DILexicalBlock(scope: !708, file: !1, line: 139, column: 3)
!719 = !{!660, !660, i64 0}
!720 = !DILocation(line: 139, column: 3, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !1, line: 139, column: 3)
!722 = !DILocation(line: 139, column: 3, scope: !714)
!723 = !DILocation(line: 139, column: 3, scope: !713)
!724 = !DILocation(line: 139, column: 3, scope: !712)
!725 = !DILocation(line: 140, column: 3, scope: !726)
!726 = distinct !DILexicalBlock(scope: !68, file: !1, line: 140, column: 3)
!727 = !DILocation(line: 140, column: 3, scope: !728)
!728 = distinct !DILexicalBlock(scope: !726, file: !1, line: 140, column: 3)
!729 = !DILocation(line: 140, column: 3, scope: !730)
!730 = distinct !DILexicalBlock(scope: !728, file: !1, line: 140, column: 3)
!731 = !DILocation(line: 140, column: 3, scope: !732)
!732 = distinct !DILexicalBlock(scope: !730, file: !1, line: 140, column: 3)
!733 = !DILocation(line: 141, column: 3, scope: !734)
!734 = distinct !DILexicalBlock(scope: !68, file: !1, line: 141, column: 3)
!735 = !DILocation(line: 141, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !734, file: !1, line: 141, column: 3)
!737 = !DILocation(line: 146, column: 5, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !1, line: 146, column: 5)
!739 = distinct !DILexicalBlock(scope: !740, file: !1, line: 146, column: 5)
!740 = distinct !DILexicalBlock(scope: !68, file: !1, line: 146, column: 5)
!741 = !DILocation(line: 141, column: 3, scope: !742)
!742 = distinct !DILexicalBlock(scope: !736, file: !1, line: 141, column: 3)
!743 = !DILocation(line: 141, column: 3, scope: !744)
!744 = distinct !DILexicalBlock(scope: !742, file: !1, line: 141, column: 3)
!745 = !DILocation(line: 143, column: 45, scope: !68)
!746 = !DILocation(line: 143, column: 31, scope: !68)
!747 = !{!662, !662, i64 0}
!748 = !DILocation(line: 143, column: 36, scope: !68)
!749 = !{!750, !659, i64 24}
!750 = !{!"", !659, i64 0, !659, i64 4, !659, i64 8, !659, i64 12, !659, i64 16, !659, i64 20, !659, i64 24, !659, i64 28, !659, i64 32, !659, i64 36, !659, i64 40, !659, i64 44, !751, i64 48, !659, i64 52, !659, i64 56, !659, i64 60, !659, i64 64, !659, i64 68, !659, i64 72, !659, i64 76, !659, i64 80, !659, i64 84, !659, i64 88, !659, i64 92, !659, i64 96, !662, i64 104, !662, i64 112, !659, i64 120, !662, i64 128, !659, i64 136, !659, i64 140, !659, i64 144, !659, i64 148, !659, i64 152, !659, i64 156, !659, i64 160, !659, i64 164, !659, i64 168, !659, i64 172, !659, i64 176, !659, i64 180, !660, i64 184, !660, i64 4792, !660, i64 7352, !660, i64 8504, !660, i64 12600, !660, i64 13112, !662, i64 14136, !662, i64 14144, !662, i64 14152, !662, i64 14160, !662, i64 14168, !660, i64 14176, !662, i64 71776, !662, i64 71784, !659, i64 71792, !659, i64 71796, !659, i64 71800, !659, i64 71804, !660, i64 71808, !659, i64 71872, !659, i64 71876, !659, i64 71880, !659, i64 71884, !659, i64 71888, !752, i64 71896, !659, i64 71904, !659, i64 71908, !659, i64 71912, !659, i64 71916, !662, i64 71920, !662, i64 71928, !662, i64 71936, !662, i64 71944, !660, i64 71952, !659, i64 71984, !659, i64 71988, !659, i64 71992, !659, i64 71996, !659, i64 72000, !659, i64 72004, !659, i64 72008, !659, i64 72012, !660, i64 72016, !659, i64 72376, !659, i64 72380, !659, i64 72384, !659, i64 72388, !659, i64 72392, !659, i64 72396, !659, i64 72400, !659, i64 72404, !659, i64 72408, !659, i64 72412, !659, i64 72416, !659, i64 72420, !660, i64 72424, !659, i64 72428, !659, i64 72432, !660, i64 72436, !659, i64 72444, !659, i64 72448, !659, i64 72452, !659, i64 72456, !659, i64 72460, !659, i64 72464, !659, i64 72468, !659, i64 72472, !659, i64 72476, !659, i64 72480, !659, i64 72484, !659, i64 72488, !659, i64 72492, !659, i64 72496, !659, i64 72500, !659, i64 72504, !659, i64 72508, !662, i64 72512, !659, i64 72520, !659, i64 72524, !659, i64 72528, !659, i64 72532, !659, i64 72536, !752, i64 72544, !659, i64 72552, !659, i64 72556, !659, i64 72560, !659, i64 72564, !659, i64 72568, !659, i64 72572, !659, i64 72576, !662, i64 72584, !659, i64 72592, !659, i64 72596, !659, i64 72600, !659, i64 72604, !659, i64 72608, !659, i64 72612, !659, i64 72616, !659, i64 72620, !659, i64 72624, !659, i64 72628, !659, i64 72632, !659, i64 72636, !659, i64 72640, !659, i64 72644, !659, i64 72648, !659, i64 72652, !659, i64 72656, !659, i64 72660, !659, i64 72664, !659, i64 72668, !659, i64 72672, !659, i64 72676, !659, i64 72680, !659, i64 72684, !659, i64 72688, !659, i64 72692, !659, i64 72696, !659, i64 72700, !659, i64 72704, !659, i64 72708, !659, i64 72712, !660, i64 72716, !659, i64 72724, !659, i64 72728, !659, i64 72732}
!751 = !{!"float", !660, i64 0}
!752 = !{!"double", !660, i64 0}
!753 = !DILocation(line: 143, column: 3, scope: !68)
!754 = !DILocation(line: 143, column: 41, scope: !68)
!755 = !DILocation(line: 146, column: 5, scope: !756)
!756 = distinct !DILexicalBlock(scope: !738, file: !1, line: 146, column: 5)
!757 = !DILocation(line: 145, column: 10, scope: !68)
!758 = !DILocation(line: 145, column: 22, scope: !68)
!759 = !DILocation(line: 145, column: 3, scope: !68)
!760 = !DILocation(line: 146, column: 5, scope: !740)
!761 = !DILocation(line: 146, column: 5, scope: !739)
!762 = !DILocation(line: 148, column: 16, scope: !68)
!763 = !DILocation(line: 148, column: 17, scope: !68)
!764 = !DILocation(line: 148, column: 27, scope: !68)
!765 = !DILocation(line: 148, column: 20, scope: !68)
!766 = !DILocation(line: 148, column: 9, scope: !68)
!767 = !DILocation(line: 149, column: 13, scope: !68)
!768 = !DILocation(line: 149, column: 12, scope: !68)
!769 = !DILocation(line: 149, column: 34, scope: !68)
!770 = !DILocation(line: 149, column: 27, scope: !68)
!771 = !DILocation(line: 149, column: 9, scope: !68)
!772 = !DILocation(line: 150, column: 14, scope: !68)
!773 = !DILocation(line: 150, column: 19, scope: !68)
!774 = !{!750, !659, i64 12}
!775 = !DILocation(line: 150, column: 38, scope: !68)
!776 = !{!750, !662, i64 14160}
!777 = !DILocation(line: 150, column: 52, scope: !68)
!778 = !{!779, !659, i64 12}
!779 = !{!"", !659, i64 0, !659, i64 4, !659, i64 8, !659, i64 12, !659, i64 16, !659, i64 20, !662, i64 24, !662, i64 32, !662, i64 40, !662, i64 48, !659, i64 56, !662, i64 64, !662, i64 72, !662, i64 80, !659, i64 88, !662, i64 96, !662, i64 104, !662, i64 112, !662, i64 120, !660, i64 128}
!780 = !DILocation(line: 150, column: 10, scope: !68)
!781 = !DILocation(line: 151, column: 20, scope: !68)
!782 = !DILocation(line: 151, column: 25, scope: !68)
!783 = !DILocation(line: 151, column: 10, scope: !68)
!784 = !DILocation(line: 153, column: 1, scope: !68)
!785 = !DILocation(line: 163, column: 49, scope: !71)
!786 = !DILocation(line: 163, column: 67, scope: !71)
!787 = !DILocation(line: 163, column: 92, scope: !71)
!788 = !DILocation(line: 165, column: 33, scope: !71)
!789 = !DILocation(line: 165, column: 25, scope: !71)
!790 = !DILocation(line: 166, column: 31, scope: !71)
!791 = !DILocation(line: 166, column: 25, scope: !71)
!792 = !DILocation(line: 167, column: 59, scope: !71)
!793 = !DILocation(line: 167, column: 64, scope: !71)
!794 = !DILocation(line: 167, column: 23, scope: !71)
!795 = !DILocation(line: 167, column: 46, scope: !71)
!796 = !{!797, !798, i64 0}
!797 = !{!"", !798, i64 0, !660, i64 2, !799, i64 8}
!798 = !{!"short", !660, i64 0}
!799 = !{!"long", !660, i64 0}
!800 = !DILocation(line: 167, column: 16, scope: !71)
!801 = !DILocation(line: 176, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !71, file: !1, line: 176, column: 7)
!803 = !DILocation(line: 176, column: 7, scope: !71)
!804 = !DILocation(line: 178, column: 12, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !1, line: 177, column: 3)
!806 = !DILocation(line: 178, column: 17, scope: !805)
!807 = !{!797, !799, i64 8}
!808 = !DILocation(line: 179, column: 3, scope: !805)
!809 = !DILocation(line: 185, column: 7, scope: !71)
!810 = !DILocation(line: 188, column: 9, scope: !71)
!811 = !DILocation(line: 189, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !71, file: !1, line: 189, column: 7)
!813 = !DILocation(line: 189, column: 24, scope: !812)
!814 = !{!797, !660, i64 2}
!815 = !DILocation(line: 189, column: 17, scope: !812)
!816 = !DILocation(line: 189, column: 14, scope: !812)
!817 = !DILocation(line: 189, column: 7, scope: !71)
!818 = !DILocation(line: 191, column: 9, scope: !819)
!819 = distinct !DILexicalBlock(scope: !812, file: !1, line: 190, column: 3)
!820 = !DILocation(line: 194, column: 10, scope: !821)
!821 = distinct !DILexicalBlock(scope: !819, file: !1, line: 194, column: 9)
!822 = !DILocation(line: 194, column: 9, scope: !819)
!823 = !DILocation(line: 195, column: 31, scope: !821)
!824 = !DILocation(line: 195, column: 18, scope: !821)
!825 = !DILocation(line: 195, column: 7, scope: !821)
!826 = !DILocation(line: 196, column: 20, scope: !819)
!827 = !DILocation(line: 199, column: 18, scope: !812)
!828 = !DILocation(line: 203, column: 3, scope: !71)
!829 = !DILocation(line: 203, column: 16, scope: !71)
!830 = !DILocation(line: 225, column: 8, scope: !71)
!831 = !DILocation(line: 207, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !1, line: 207, column: 7)
!833 = distinct !DILexicalBlock(scope: !834, file: !1, line: 207, column: 7)
!834 = distinct !DILexicalBlock(scope: !835, file: !1, line: 206, column: 5)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 205, column: 9)
!836 = distinct !DILexicalBlock(scope: !71, file: !1, line: 204, column: 3)
!837 = !DILocation(line: 207, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !832, file: !1, line: 207, column: 7)
!839 = !DILocation(line: 207, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !838, file: !1, line: 207, column: 7)
!841 = !DILocation(line: 207, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !840, file: !1, line: 207, column: 7)
!843 = !DILocation(line: 207, column: 7, scope: !833)
!844 = !DILocation(line: 205, column: 13, scope: !835)
!845 = !DILocation(line: 205, column: 9, scope: !836)
!846 = !DILocation(line: 207, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !833, file: !1, line: 207, column: 7)
!848 = !DILocation(line: 207, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !847, file: !1, line: 207, column: 7)
!850 = !DILocation(line: 207, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !849, file: !1, line: 207, column: 7)
!852 = !DILocation(line: 207, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !851, file: !1, line: 207, column: 7)
!854 = !DILocation(line: 207, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !853, file: !1, line: 207, column: 7)
!856 = !DILocation(line: 208, column: 11, scope: !834)
!857 = !DILocation(line: 209, column: 5, scope: !834)
!858 = !DILocation(line: 211, column: 15, scope: !859)
!859 = distinct !DILexicalBlock(scope: !835, file: !1, line: 211, column: 11)
!860 = !DILocation(line: 211, column: 11, scope: !835)
!861 = !DILocation(line: 213, column: 9, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !1, line: 213, column: 9)
!863 = distinct !DILexicalBlock(scope: !864, file: !1, line: 213, column: 9)
!864 = distinct !DILexicalBlock(scope: !859, file: !1, line: 212, column: 7)
!865 = !DILocation(line: 213, column: 9, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !1, line: 213, column: 9)
!867 = !DILocation(line: 213, column: 9, scope: !863)
!868 = !DILocation(line: 213, column: 9, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !1, line: 213, column: 9)
!870 = !DILocation(line: 213, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !869, file: !1, line: 213, column: 9)
!872 = !DILocation(line: 213, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !863, file: !1, line: 213, column: 9)
!874 = !DILocation(line: 213, column: 9, scope: !875)
!875 = distinct !DILexicalBlock(scope: !873, file: !1, line: 213, column: 9)
!876 = !DILocation(line: 213, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !875, file: !1, line: 213, column: 9)
!878 = !DILocation(line: 213, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !877, file: !1, line: 213, column: 9)
!880 = !DILocation(line: 213, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !879, file: !1, line: 213, column: 9)
!882 = !DILocation(line: 217, column: 24, scope: !883)
!883 = distinct !DILexicalBlock(scope: !859, file: !1, line: 216, column: 7)
!884 = !DILocation(line: 218, column: 13, scope: !883)
!885 = !DILocation(line: 220, column: 9, scope: !836)
!886 = !DILocation(line: 221, column: 11, scope: !836)
!887 = !DILocation(line: 223, column: 10, scope: !71)
!888 = !DILocation(line: 224, column: 8, scope: !71)
!889 = !DILocation(line: 225, column: 9, scope: !71)
!890 = !DILocation(line: 227, column: 1, scope: !71)
!891 = !DILocation(line: 239, column: 57, scope: !92)
!892 = !DILocation(line: 239, column: 75, scope: !92)
!893 = !DILocation(line: 241, column: 32, scope: !92)
!894 = !DILocation(line: 241, column: 36, scope: !92)
!895 = !DILocation(line: 241, column: 25, scope: !92)
!896 = !DILocation(line: 250, column: 14, scope: !897)
!897 = distinct !DILexicalBlock(scope: !92, file: !1, line: 250, column: 7)
!898 = !DILocation(line: 250, column: 7, scope: !92)
!899 = !DILocation(line: 251, column: 12, scope: !897)
!900 = !DILocation(line: 251, column: 9, scope: !897)
!901 = !DILocation(line: 251, column: 5, scope: !897)
!902 = !DILocation(line: 255, column: 11, scope: !903)
!903 = distinct !DILexicalBlock(scope: !92, file: !1, line: 255, column: 7)
!904 = !DILocation(line: 255, column: 7, scope: !92)
!905 = !DILocation(line: 257, column: 5, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !1, line: 257, column: 5)
!907 = distinct !DILexicalBlock(scope: !908, file: !1, line: 257, column: 5)
!908 = distinct !DILexicalBlock(scope: !903, file: !1, line: 256, column: 3)
!909 = !DILocation(line: 257, column: 5, scope: !910)
!910 = distinct !DILexicalBlock(scope: !906, file: !1, line: 257, column: 5)
!911 = !DILocation(line: 257, column: 5, scope: !907)
!912 = !DILocation(line: 257, column: 5, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !1, line: 257, column: 5)
!914 = distinct !DILexicalBlock(scope: !915, file: !1, line: 257, column: 5)
!915 = distinct !DILexicalBlock(scope: !916, file: !1, line: 257, column: 5)
!916 = distinct !DILexicalBlock(scope: !907, file: !1, line: 257, column: 5)
!917 = !DILocation(line: 257, column: 5, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !1, line: 257, column: 5)
!919 = !DILocation(line: 257, column: 5, scope: !920)
!920 = distinct !DILexicalBlock(scope: !910, file: !1, line: 257, column: 5)
!921 = !DILocation(line: 257, column: 5, scope: !922)
!922 = distinct !DILexicalBlock(scope: !920, file: !1, line: 257, column: 5)
!923 = !DILocation(line: 257, column: 5, scope: !916)
!924 = !DILocation(line: 257, column: 5, scope: !915)
!925 = !DILocation(line: 257, column: 5, scope: !914)
!926 = !DILocation(line: 258, column: 9, scope: !908)
!927 = !DILocation(line: 259, column: 3, scope: !908)
!928 = !DILocation(line: 261, column: 13, scope: !929)
!929 = distinct !DILexicalBlock(scope: !903, file: !1, line: 261, column: 9)
!930 = !DILocation(line: 261, column: 9, scope: !903)
!931 = !DILocation(line: 263, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !1, line: 263, column: 7)
!933 = distinct !DILexicalBlock(scope: !934, file: !1, line: 263, column: 7)
!934 = distinct !DILexicalBlock(scope: !929, file: !1, line: 262, column: 5)
!935 = !DILocation(line: 263, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !1, line: 263, column: 7)
!937 = !DILocation(line: 263, column: 7, scope: !933)
!938 = !DILocation(line: 263, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 263, column: 7)
!940 = distinct !DILexicalBlock(scope: !941, file: !1, line: 263, column: 7)
!941 = distinct !DILexicalBlock(scope: !942, file: !1, line: 263, column: 7)
!942 = distinct !DILexicalBlock(scope: !933, file: !1, line: 263, column: 7)
!943 = !DILocation(line: 263, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !939, file: !1, line: 263, column: 7)
!945 = !DILocation(line: 263, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !936, file: !1, line: 263, column: 7)
!947 = !DILocation(line: 263, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !946, file: !1, line: 263, column: 7)
!949 = !DILocation(line: 263, column: 7, scope: !942)
!950 = !DILocation(line: 263, column: 7, scope: !941)
!951 = !DILocation(line: 263, column: 7, scope: !940)
!952 = !DILocation(line: 267, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !929, file: !1, line: 266, column: 5)
!954 = !DILocation(line: 267, column: 22, scope: !953)
!955 = !DILocation(line: 268, column: 11, scope: !953)
!956 = !DILocation(line: 270, column: 10, scope: !92)
!957 = !DILocation(line: 271, column: 10, scope: !92)
!958 = !DILocation(line: 271, column: 11, scope: !92)
!959 = !DILocation(line: 273, column: 1, scope: !92)
!960 = !DILocation(line: 281, column: 55, scope: !99)
!961 = !DILocation(line: 281, column: 73, scope: !99)
!962 = !DILocation(line: 283, column: 33, scope: !99)
!963 = !DILocation(line: 283, column: 39, scope: !99)
!964 = !DILocation(line: 283, column: 25, scope: !99)
!965 = !DILocation(line: 284, column: 31, scope: !99)
!966 = !DILocation(line: 284, column: 25, scope: !99)
!967 = !DILocation(line: 292, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !99, file: !1, line: 292, column: 7)
!969 = !DILocation(line: 292, column: 7, scope: !99)
!970 = !DILocation(line: 297, column: 16, scope: !99)
!971 = !DILocation(line: 297, column: 3, scope: !99)
!972 = !DILocation(line: 319, column: 8, scope: !99)
!973 = !DILocation(line: 301, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !1, line: 301, column: 7)
!975 = distinct !DILexicalBlock(scope: !976, file: !1, line: 301, column: 7)
!976 = distinct !DILexicalBlock(scope: !977, file: !1, line: 300, column: 5)
!977 = distinct !DILexicalBlock(scope: !978, file: !1, line: 299, column: 9)
!978 = distinct !DILexicalBlock(scope: !99, file: !1, line: 298, column: 3)
!979 = !DILocation(line: 301, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !974, file: !1, line: 301, column: 7)
!981 = !DILocation(line: 301, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !980, file: !1, line: 301, column: 7)
!983 = !DILocation(line: 301, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !982, file: !1, line: 301, column: 7)
!985 = !DILocation(line: 301, column: 7, scope: !975)
!986 = !DILocation(line: 299, column: 13, scope: !977)
!987 = !DILocation(line: 299, column: 9, scope: !978)
!988 = !DILocation(line: 301, column: 7, scope: !989)
!989 = distinct !DILexicalBlock(scope: !975, file: !1, line: 301, column: 7)
!990 = !DILocation(line: 301, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !989, file: !1, line: 301, column: 7)
!992 = !DILocation(line: 301, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !991, file: !1, line: 301, column: 7)
!994 = !DILocation(line: 301, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !993, file: !1, line: 301, column: 7)
!996 = !DILocation(line: 301, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !995, file: !1, line: 301, column: 7)
!998 = !DILocation(line: 302, column: 11, scope: !976)
!999 = !DILocation(line: 303, column: 5, scope: !976)
!1000 = !DILocation(line: 305, column: 15, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !977, file: !1, line: 305, column: 11)
!1002 = !DILocation(line: 305, column: 11, scope: !977)
!1003 = !DILocation(line: 307, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 307, column: 9)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 307, column: 9)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 306, column: 7)
!1007 = !DILocation(line: 307, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 307, column: 9)
!1009 = !DILocation(line: 307, column: 9, scope: !1005)
!1010 = !DILocation(line: 307, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 307, column: 9)
!1012 = !DILocation(line: 307, column: 9, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 307, column: 9)
!1014 = !DILocation(line: 307, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 307, column: 9)
!1016 = !DILocation(line: 307, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 307, column: 9)
!1018 = !DILocation(line: 307, column: 9, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 307, column: 9)
!1020 = !DILocation(line: 307, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 307, column: 9)
!1022 = !DILocation(line: 307, column: 9, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 307, column: 9)
!1024 = !DILocation(line: 311, column: 24, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 310, column: 7)
!1026 = !DILocation(line: 312, column: 13, scope: !1025)
!1027 = !DILocation(line: 314, column: 11, scope: !978)
!1028 = !DILocation(line: 315, column: 13, scope: !978)
!1029 = !DILocation(line: 317, column: 10, scope: !99)
!1030 = !DILocation(line: 318, column: 8, scope: !99)
!1031 = !DILocation(line: 319, column: 9, scope: !99)
!1032 = !DILocation(line: 320, column: 1, scope: !99)
!1033 = !DILocation(line: 330, column: 43, scope: !105)
!1034 = !DILocation(line: 330, column: 59, scope: !105)
!1035 = !DILocation(line: 334, column: 14, scope: !105)
!1036 = !DILocation(line: 334, column: 22, scope: !105)
!1037 = !{!750, !659, i64 40}
!1038 = !DILocation(line: 334, column: 20, scope: !105)
!1039 = !DILocation(line: 334, column: 39, scope: !105)
!1040 = !DILocation(line: 334, column: 47, scope: !105)
!1041 = !DILocation(line: 334, column: 45, scope: !105)
!1042 = !DILocation(line: 332, column: 7, scope: !105)
!1043 = !DILocation(line: 335, column: 12, scope: !105)
!1044 = !DILocation(line: 337, column: 15, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !105, file: !1, line: 337, column: 8)
!1046 = !DILocation(line: 344, column: 22, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 343, column: 3)
!1048 = !DILocation(line: 339, column: 26, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 338, column: 3)
!1050 = !DILocation(line: 337, column: 8, scope: !105)
!1051 = !DILocation(line: 344, column: 19, scope: !1047)
!1052 = !DILocation(line: 344, column: 10, scope: !1047)
!1053 = !DILocation(line: 345, column: 10, scope: !1047)
!1054 = !DILocation(line: 348, column: 8, scope: !105)
!1055 = !DILocation(line: 348, column: 14, scope: !105)
!1056 = !DILocation(line: 349, column: 1, scope: !105)
