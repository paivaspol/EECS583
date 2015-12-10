; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/filehandle.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@input = external global %struct.InputParameters*
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str1 = private unnamed_addr constant [34 x i8] c"Output File Mode %d not supported\00", align 1
@stats = external global %struct.StatParameters*
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

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @error(i8* %text, i32 %code) #0 {
  tail call void @llvm.dbg.value(metadata i8* %text, i64 0, metadata !17, metadata !597), !dbg !598
  tail call void @llvm.dbg.value(metadata i32 %code, i64 0, metadata !18, metadata !597), !dbg !599
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !600, !tbaa !601
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* %text) #6, !dbg !605
  tail call void (...)* @flush_dpb() #6, !dbg !606
  tail call void @exit(i32 %code) #7, !dbg !607
  unreachable, !dbg !607
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: optsize
declare void @flush_dpb(...) #2

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_PPS(i32 %len, i32 %PPS_id) #4 {
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !23, metadata !597), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %PPS_id, i64 0, metadata !24, metadata !597), !dbg !609
  tail call void @llvm.dbg.value(metadata %struct.NALU_t* null, i64 0, metadata !25, metadata !597), !dbg !610
  %1 = tail call %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 %PPS_id) #6, !dbg !611
  tail call void @llvm.dbg.value(metadata %struct.NALU_t* %1, i64 0, metadata !25, metadata !597), !dbg !610
  %2 = load i32 (%struct.NALU_t*)** @WriteNALU, align 8, !dbg !612, !tbaa !601
  %3 = tail call i32 %2(%struct.NALU_t* %1) #6, !dbg !612
  %4 = add nsw i32 %3, %len, !dbg !613
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !23, metadata !597), !dbg !608
  tail call void @FreeNALU(%struct.NALU_t* %1) #6, !dbg !614
  ret i32 %4, !dbg !615
}

; Function Attrs: optsize
declare %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32) #2

; Function Attrs: optsize
declare void @FreeNALU(%struct.NALU_t*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @start_sequence() #4 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !48, metadata !597), !dbg !616
  %1 = load %struct.InputParameters** @input, align 8, !dbg !617, !tbaa !601
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 15, !dbg !618
  %3 = load i32* %2, align 4, !dbg !618, !tbaa !619
  %4 = icmp ne i32 %3, 0, !dbg !623
  %5 = select i1 %4, i32 3, i32 1, !dbg !623
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !49, metadata !597), !dbg !624
  %6 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 60, !dbg !625
  %7 = load i32* %6, align 4, !dbg !625, !tbaa !626
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %10
  ], !dbg !627

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 27, i64 0, !dbg !628
  tail call void @OpenAnnexbFile(i8* %9) #6, !dbg !630
  br label %14, !dbg !631

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 27, i64 0, !dbg !632
  tail call void @OpenRTPFile(i8* %11) #6, !dbg !633
  br label %14, !dbg !634

; <label>:12                                      ; preds = %0
  %13 = tail call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0), i32 %7) #6, !dbg !635
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 1) #8, !dbg !636
  unreachable

; <label>:14                                      ; preds = %10, %8
  %storemerge = phi i32 (%struct.NALU_t*)* [ @WriteRTPNALU, %10 ], [ @WriteAnnexbNALU, %8 ]
  store i32 (%struct.NALU_t*)* %storemerge, i32 (%struct.NALU_t*)** @WriteNALU, align 8, !dbg !637, !tbaa !601
  tail call void @llvm.dbg.value(metadata %struct.NALU_t* null, i64 0, metadata !50, metadata !597), !dbg !638
  %15 = tail call %struct.NALU_t* (...)* @GenerateSeq_parameter_set_NALU() #6, !dbg !639
  tail call void @llvm.dbg.value(metadata %struct.NALU_t* %15, i64 0, metadata !50, metadata !597), !dbg !638
  %16 = load i32 (%struct.NALU_t*)** @WriteNALU, align 8, !dbg !640, !tbaa !601
  %17 = tail call i32 %16(%struct.NALU_t* %15) #6, !dbg !640
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !48, metadata !597), !dbg !616
  tail call void @FreeNALU(%struct.NALU_t* %15) #6, !dbg !641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !47, metadata !597), !dbg !642
  br label %18, !dbg !643

; <label>:18                                      ; preds = %14, %18
  %i.02 = phi i32 [ 0, %14 ], [ %23, %18 ]
  %len.01 = phi i32 [ %17, %14 ], [ %22, %18 ]
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !23, metadata !597) #9, !dbg !645
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !24, metadata !597) #9, !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.NALU_t* null, i64 0, metadata !25, metadata !597) #9, !dbg !650
  %19 = tail call %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 %i.02) #6, !dbg !651
  tail call void @llvm.dbg.value(metadata %struct.NALU_t* %19, i64 0, metadata !25, metadata !597) #9, !dbg !650
  %20 = load i32 (%struct.NALU_t*)** @WriteNALU, align 8, !dbg !652, !tbaa !601
  %21 = tail call i32 %20(%struct.NALU_t* %19) #6, !dbg !652
  %22 = add nsw i32 %21, %len.01, !dbg !653
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !23, metadata !597) #9, !dbg !645
  tail call void @FreeNALU(%struct.NALU_t* %19) #6, !dbg !654
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !48, metadata !597), !dbg !616
  %23 = add nuw nsw i32 %i.02, 1, !dbg !655
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !47, metadata !597), !dbg !642
  %24 = icmp slt i32 %23, %5, !dbg !656
  br i1 %24, label %18, label %25, !dbg !643

; <label>:25                                      ; preds = %18
  %26 = load %struct.StatParameters** @stats, align 8, !dbg !657, !tbaa !601
  %27 = getelementptr inbounds %struct.StatParameters* %26, i64 0, i32 33, !dbg !658
  store i32 %22, i32* %27, align 4, !dbg !659, !tbaa !660
  ret i32 0, !dbg !663
}

; Function Attrs: optsize
declare void @OpenAnnexbFile(i8*) #2

; Function Attrs: optsize
declare i32 @WriteAnnexbNALU(%struct.NALU_t*) #2

; Function Attrs: optsize
declare void @OpenRTPFile(i8*) #2

; Function Attrs: optsize
declare i32 @WriteRTPNALU(%struct.NALU_t*) #2

; Function Attrs: optsize
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare %struct.NALU_t* @GenerateSeq_parameter_set_NALU(...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @terminate_sequence() #4 {
  %1 = load %struct.InputParameters** @input, align 8, !dbg !664, !tbaa !601
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 60, !dbg !665
  %3 = load i32* %2, align 4, !dbg !665, !tbaa !626
  switch i32 %3, label %6 [
    i32 0, label %4
    i32 1, label %5
  ], !dbg !666

; <label>:4                                       ; preds = %0
  tail call void (...)* @CloseAnnexbFile() #6, !dbg !667
  br label %8, !dbg !669

; <label>:5                                       ; preds = %0
  tail call void (...)* @CloseRTPFile() #6, !dbg !670
  br label %8, !dbg !671

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0), i32 %3) #6, !dbg !672
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 1) #8, !dbg !673
  unreachable

; <label>:8                                       ; preds = %4, %5
  %.0 = phi i32 [ 0, %5 ], [ 1, %4 ]
  ret i32 %.0, !dbg !674
}

; Function Attrs: optsize
declare void @CloseAnnexbFile(...) #2

; Function Attrs: optsize
declare void @CloseRTPFile(...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!593, !594, !595}
!llvm.ident = !{!596}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !9, globals: !52, imports: !8)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/filehandle.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{}
!9 = !{!10, !19, !43, !51}
!10 = !DISubprogram(name: "error", scope: !1, file: !1, line: 38, type: !11, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @error, variables: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 1, scope: !10, file: !1, line: 38, type: !13)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 2, scope: !10, file: !1, line: 38, type: !15)
!19 = !DISubprogram(name: "write_PPS", scope: !1, file: !1, line: 52, type: !20, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @write_PPS, variables: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{!15, !15, !15}
!22 = !{!23, !24, !25}
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 1, scope: !19, file: !1, line: 52, type: !15)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PPS_id", arg: 2, scope: !19, file: !1, line: 52, type: !15)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nalu", scope: !19, file: !1, line: 54, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !28, line: 49, baseType: !29)
!28 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalucommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!29 = !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 40, size: 256, align: 64, elements: !30)
!30 = !{!31, !32, !34, !35, !36, !37, !38}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !29, file: !28, line: 42, baseType: !15, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !29, file: !28, line: 43, baseType: !33, size: 32, align: 32, offset: 32)
!33 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !29, file: !28, line: 44, baseType: !33, size: 32, align: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !29, file: !28, line: 45, baseType: !15, size: 32, align: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !29, file: !28, line: 46, baseType: !15, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !29, file: !28, line: 47, baseType: !15, size: 32, align: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !29, file: !28, line: 48, baseType: !39, size: 64, align: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !41, line: 30, baseType: !42)
!41 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!42 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!43 = !DISubprogram(name: "start_sequence", scope: !1, file: !1, line: 70, type: !44, isLocal: false, isDefinition: true, scopeLine: 71, isOptimized: true, function: i32 ()* @start_sequence, variables: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{!15}
!46 = !{!47, !48, !49, !50}
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !43, file: !1, line: 72, type: !15)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !43, file: !1, line: 72, type: !15)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total_pps", scope: !43, file: !1, line: 72, type: !15)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nalu", scope: !43, file: !1, line: 73, type: !26)
!51 = !DISubprogram(name: "terminate_sequence", scope: !1, file: !1, line: 118, type: !44, isLocal: false, isDefinition: true, scopeLine: 119, isOptimized: true, function: i32 ()* @terminate_sequence, variables: !8)
!52 = !{!53, !245, !246, !247, !248, !249, !252, !254, !256, !257, !258, !259, !260, !299, !394, !395, !396, !398, !399, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !418, !419, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !434, !438, !439, !440, !441, !442, !443, !446, !449, !450, !451, !452, !455, !458, !469, !511, !512, !513, !514, !515, !572, !573, !574, !575, !576, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!53 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !54, line: 558, type: !55, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!54 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !54, line: 484, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 475, size: 6592, align: 64, elements: !58)
!58 = !{!59, !60, !61, !240, !241, !243, !244}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !57, file: !54, line: 477, baseType: !15, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !57, file: !54, line: 478, baseType: !15, size: 32, align: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !57, file: !54, line: 479, baseType: !62, size: 6400, align: 64, offset: 64)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 6400, align: 64, elements: !238)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !54, line: 471, baseType: !65)
!65 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 443, size: 1216, align: 64, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !147, !186, !213, !222, !223, !224, !225, !226, !227, !228, !229, !230, !235}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !65, file: !54, line: 445, baseType: !15, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !65, file: !54, line: 446, baseType: !15, size: 32, align: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !65, file: !54, line: 447, baseType: !15, size: 32, align: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !65, file: !54, line: 448, baseType: !15, size: 32, align: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !65, file: !54, line: 449, baseType: !15, size: 32, align: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !65, file: !54, line: 450, baseType: !15, size: 32, align: 32, offset: 160)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !65, file: !54, line: 451, baseType: !74, size: 64, align: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !54, line: 440, baseType: !76)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !54, line: 430, size: 960, align: 64, elements: !77)
!77 = !{!78, !94, !119}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !76, file: !54, line: 433, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !54, line: 427, baseType: !81)
!81 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 411, size: 384, align: 64, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !81, file: !54, line: 413, baseType: !15, size: 32, align: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !81, file: !54, line: 414, baseType: !15, size: 32, align: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !81, file: !54, line: 415, baseType: !40, size: 8, align: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !81, file: !54, line: 416, baseType: !15, size: 32, align: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !81, file: !54, line: 417, baseType: !15, size: 32, align: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !81, file: !54, line: 418, baseType: !40, size: 8, align: 8, offset: 160)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !81, file: !54, line: 420, baseType: !40, size: 8, align: 8, offset: 168)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !81, file: !54, line: 421, baseType: !15, size: 32, align: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !81, file: !54, line: 422, baseType: !15, size: 32, align: 32, offset: 224)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !81, file: !54, line: 424, baseType: !39, size: 64, align: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !81, file: !54, line: 425, baseType: !15, size: 32, align: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !76, file: !54, line: 434, baseType: !95, size: 832, align: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !54, line: 226, baseType: !96)
!96 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 207, size: 832, align: 64, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !96, file: !54, line: 209, baseType: !33, size: 32, align: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !96, file: !54, line: 209, baseType: !33, size: 32, align: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !96, file: !54, line: 210, baseType: !33, size: 32, align: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !96, file: !54, line: 211, baseType: !33, size: 32, align: 32, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !96, file: !54, line: 212, baseType: !33, size: 32, align: 32, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !96, file: !54, line: 213, baseType: !39, size: 64, align: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !96, file: !54, line: 214, baseType: !105, size: 64, align: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !96, file: !54, line: 217, baseType: !33, size: 32, align: 32, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !96, file: !54, line: 217, baseType: !33, size: 32, align: 32, offset: 352)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !96, file: !54, line: 218, baseType: !33, size: 32, align: 32, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !96, file: !54, line: 219, baseType: !33, size: 32, align: 32, offset: 416)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !96, file: !54, line: 220, baseType: !33, size: 32, align: 32, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !96, file: !54, line: 221, baseType: !39, size: 64, align: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !96, file: !54, line: 222, baseType: !105, size: 64, align: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !96, file: !54, line: 223, baseType: !15, size: 32, align: 32, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !96, file: !54, line: 223, baseType: !15, size: 32, align: 32, offset: 672)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !96, file: !54, line: 224, baseType: !15, size: 32, align: 32, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !96, file: !54, line: 224, baseType: !15, size: 32, align: 32, offset: 736)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !96, file: !54, line: 225, baseType: !15, size: 32, align: 32, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !96, file: !54, line: 225, baseType: !15, size: 32, align: 32, offset: 800)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !76, file: !54, line: 436, baseType: !120, size: 64, align: 64, offset: 896)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!15, !123, !146}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !54, line: 348, baseType: !125)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !54, line: 327, size: 384, align: 64, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !139}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !54, line: 329, baseType: !15, size: 32, align: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !125, file: !54, line: 330, baseType: !15, size: 32, align: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !125, file: !54, line: 331, baseType: !15, size: 32, align: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !125, file: !54, line: 332, baseType: !15, size: 32, align: 32, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !125, file: !54, line: 333, baseType: !15, size: 32, align: 32, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !125, file: !54, line: 334, baseType: !33, size: 32, align: 32, offset: 160)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !125, file: !54, line: 335, baseType: !15, size: 32, align: 32, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !125, file: !54, line: 336, baseType: !15, size: 32, align: 32, offset: 224)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !125, file: !54, line: 344, baseType: !136, size: 64, align: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !15, !15, !105, !105}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !125, file: !54, line: 346, baseType: !140, size: 64, align: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !143, !144}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !54, line: 228, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !65, file: !54, line: 452, baseType: !148, size: 64, align: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !54, line: 268, baseType: !150)
!150 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 258, size: 12032, align: 64, elements: !151)
!151 = !{!152, !165, !170, !174, !178, !182, !183}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !150, file: !54, line: 260, baseType: !153, size: 4224, align: 64)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 4224, align: 64, elements: !162)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !54, line: 238, baseType: !155)
!155 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 231, size: 128, align: 64, elements: !156)
!156 = !{!157, !159, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !155, file: !54, line: 233, baseType: !158, size: 16, align: 16)
!158 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !155, file: !54, line: 234, baseType: !42, size: 8, align: 8, offset: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !155, file: !54, line: 236, baseType: !161, size: 64, align: 64, offset: 64)
!161 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!162 = !{!163, !164}
!163 = !DISubrange(count: 3)
!164 = !DISubrange(count: 11)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !150, file: !54, line: 261, baseType: !166, size: 2304, align: 64, offset: 4224)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 2304, align: 64, elements: !167)
!167 = !{!168, !169}
!168 = !DISubrange(count: 2)
!169 = !DISubrange(count: 9)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !150, file: !54, line: 262, baseType: !171, size: 2560, align: 64, offset: 6528)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 2560, align: 64, elements: !172)
!172 = !{!168, !173}
!173 = !DISubrange(count: 10)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !150, file: !54, line: 263, baseType: !175, size: 1536, align: 64, offset: 9088)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 1536, align: 64, elements: !176)
!176 = !{!168, !177}
!177 = !DISubrange(count: 6)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !150, file: !54, line: 264, baseType: !179, size: 512, align: 64, offset: 10624)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 512, align: 64, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 4)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !150, file: !54, line: 265, baseType: !179, size: 512, align: 64, offset: 11136)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !150, file: !54, line: 266, baseType: !184, size: 384, align: 64, offset: 11648)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 384, align: 64, elements: !185)
!185 = !{!163}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !65, file: !54, line: 453, baseType: !187, size: 64, align: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !54, line: 293, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 281, size: 97024, align: 64, elements: !190)
!190 = !{!191, !194, !195, !198, !201, !205, !206, !210, !211, !212}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !189, file: !54, line: 283, baseType: !192, size: 256, align: 64)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, align: 64, elements: !193)
!193 = !{!168}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !189, file: !54, line: 284, baseType: !179, size: 512, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !189, file: !54, line: 285, baseType: !196, size: 1536, align: 64, offset: 768)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 1536, align: 64, elements: !197)
!197 = !{!163, !181}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !189, file: !54, line: 286, baseType: !199, size: 5120, align: 64, offset: 2304)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 5120, align: 64, elements: !200)
!200 = !{!173, !181}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !189, file: !54, line: 287, baseType: !202, size: 19200, align: 64, offset: 7424)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 19200, align: 64, elements: !203)
!203 = !{!173, !204}
!204 = !DISubrange(count: 15)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !189, file: !54, line: 288, baseType: !202, size: 19200, align: 64, offset: 26624)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !189, file: !54, line: 289, baseType: !207, size: 6400, align: 64, offset: 45824)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 6400, align: 64, elements: !208)
!208 = !{!173, !209}
!209 = !DISubrange(count: 5)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !189, file: !54, line: 290, baseType: !207, size: 6400, align: 64, offset: 52224)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !189, file: !54, line: 291, baseType: !202, size: 19200, align: 64, offset: 58624)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !189, file: !54, line: 292, baseType: !202, size: 19200, align: 64, offset: 77824)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !65, file: !54, line: 456, baseType: !214, size: 64, align: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !54, line: 313, baseType: !216)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !54, line: 308, size: 128, align: 64, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !216, file: !54, line: 310, baseType: !15, size: 32, align: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !216, file: !54, line: 311, baseType: !15, size: 32, align: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !216, file: !54, line: 312, baseType: !221, size: 64, align: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !65, file: !54, line: 458, baseType: !15, size: 32, align: 32, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !65, file: !54, line: 459, baseType: !105, size: 64, align: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !65, file: !54, line: 460, baseType: !105, size: 64, align: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !65, file: !54, line: 461, baseType: !105, size: 64, align: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !65, file: !54, line: 462, baseType: !15, size: 32, align: 32, offset: 704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !65, file: !54, line: 463, baseType: !105, size: 64, align: 64, offset: 768)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !65, file: !54, line: 464, baseType: !105, size: 64, align: 64, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !65, file: !54, line: 465, baseType: !105, size: 64, align: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !65, file: !54, line: 467, baseType: !231, size: 64, align: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !15}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !65, file: !54, line: 469, baseType: !236, size: 192, align: 32, offset: 1024)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, align: 32, elements: !237)
!237 = !{!163, !168}
!238 = !{!239}
!239 = !DISubrange(count: 100)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !57, file: !54, line: 480, baseType: !15, size: 32, align: 32, offset: 6464)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !57, file: !54, line: 481, baseType: !242, size: 32, align: 32, offset: 6496)
!242 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !57, file: !54, line: 482, baseType: !242, size: 32, align: 32, offset: 6528)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !57, file: !54, line: 483, baseType: !242, size: 32, align: 32, offset: 6560)
!245 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !54, line: 559, type: !55, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!246 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !54, line: 560, type: !55, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!247 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !54, line: 561, type: !55, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!248 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !54, line: 562, type: !55, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!249 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !54, line: 565, type: !250, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!252 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !54, line: 566, type: !253, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!254 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !54, line: 567, type: !255, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!256 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !54, line: 569, type: !33, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!257 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !54, line: 570, type: !33, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!258 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !54, line: 572, type: !15, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!259 = !DIGlobalVariable(name: "me_time", scope: !0, file: !54, line: 572, type: !15, isLocal: false, isDefinition: true, variable: i32* @me_time)
!260 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !54, line: 573, type: !261, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !263)
!263 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !275, !276, !277, !278, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !263, file: !4, line: 105, baseType: !234, size: 32, align: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !263, file: !4, line: 106, baseType: !33, size: 32, align: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !263, file: !4, line: 107, baseType: !33, size: 32, align: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !263, file: !4, line: 108, baseType: !234, size: 32, align: 32, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !263, file: !4, line: 110, baseType: !234, size: 32, align: 32, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !263, file: !4, line: 111, baseType: !234, size: 32, align: 32, offset: 160)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !263, file: !4, line: 112, baseType: !272, size: 256, align: 32, offset: 192)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, align: 32, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 8)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !263, file: !4, line: 115, baseType: !234, size: 32, align: 32, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !263, file: !4, line: 116, baseType: !33, size: 32, align: 32, offset: 480)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !263, file: !4, line: 117, baseType: !33, size: 32, align: 32, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !263, file: !4, line: 119, baseType: !279, size: 256, align: 32, offset: 544)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, align: 32, elements: !273)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !263, file: !4, line: 121, baseType: !279, size: 256, align: 32, offset: 800)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !263, file: !4, line: 122, baseType: !279, size: 256, align: 32, offset: 1056)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !263, file: !4, line: 124, baseType: !234, size: 32, align: 32, offset: 1312)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !263, file: !4, line: 125, baseType: !33, size: 32, align: 32, offset: 1344)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !263, file: !4, line: 127, baseType: !33, size: 32, align: 32, offset: 1376)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !263, file: !4, line: 128, baseType: !39, size: 64, align: 64, offset: 1408)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !263, file: !4, line: 130, baseType: !15, size: 32, align: 32, offset: 1472)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !263, file: !4, line: 131, baseType: !15, size: 32, align: 32, offset: 1504)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !263, file: !4, line: 132, baseType: !234, size: 32, align: 32, offset: 1536)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !263, file: !4, line: 133, baseType: !33, size: 32, align: 32, offset: 1568)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !263, file: !4, line: 134, baseType: !15, size: 32, align: 32, offset: 1600)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !263, file: !4, line: 135, baseType: !15, size: 32, align: 32, offset: 1632)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !263, file: !4, line: 136, baseType: !15, size: 32, align: 32, offset: 1664)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !263, file: !4, line: 138, baseType: !15, size: 32, align: 32, offset: 1696)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !263, file: !4, line: 139, baseType: !15, size: 32, align: 32, offset: 1728)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !263, file: !4, line: 141, baseType: !234, size: 32, align: 32, offset: 1760)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !263, file: !4, line: 142, baseType: !234, size: 32, align: 32, offset: 1792)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !263, file: !4, line: 143, baseType: !234, size: 32, align: 32, offset: 1824)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !263, file: !4, line: 144, baseType: !234, size: 32, align: 32, offset: 1856)
!299 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !54, line: 574, type: !300, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !302)
!302 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !302, file: !4, line: 151, baseType: !234, size: 32, align: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !302, file: !4, line: 153, baseType: !33, size: 32, align: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !302, file: !4, line: 154, baseType: !234, size: 32, align: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !302, file: !4, line: 155, baseType: !234, size: 32, align: 32, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !302, file: !4, line: 156, baseType: !234, size: 32, align: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !302, file: !4, line: 157, baseType: !234, size: 32, align: 32, offset: 160)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !302, file: !4, line: 158, baseType: !33, size: 32, align: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !302, file: !4, line: 159, baseType: !33, size: 32, align: 32, offset: 224)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !302, file: !4, line: 160, baseType: !33, size: 32, align: 32, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !302, file: !4, line: 162, baseType: !234, size: 32, align: 32, offset: 288)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !302, file: !4, line: 163, baseType: !272, size: 256, align: 32, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !302, file: !4, line: 165, baseType: !33, size: 32, align: 32, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !302, file: !4, line: 166, baseType: !33, size: 32, align: 32, offset: 608)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !302, file: !4, line: 167, baseType: !33, size: 32, align: 32, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !302, file: !4, line: 168, baseType: !33, size: 32, align: 32, offset: 672)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !302, file: !4, line: 170, baseType: !33, size: 32, align: 32, offset: 704)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !302, file: !4, line: 172, baseType: !234, size: 32, align: 32, offset: 736)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !302, file: !4, line: 173, baseType: !15, size: 32, align: 32, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !302, file: !4, line: 174, baseType: !15, size: 32, align: 32, offset: 800)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !302, file: !4, line: 175, baseType: !33, size: 32, align: 32, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !302, file: !4, line: 177, baseType: !325, size: 8192, align: 32, offset: 864)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8192, align: 32, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !302, file: !4, line: 178, baseType: !33, size: 32, align: 32, offset: 9056)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !302, file: !4, line: 179, baseType: !234, size: 32, align: 32, offset: 9088)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !302, file: !4, line: 180, baseType: !33, size: 32, align: 32, offset: 9120)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !302, file: !4, line: 181, baseType: !33, size: 32, align: 32, offset: 9152)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !302, file: !4, line: 182, baseType: !234, size: 32, align: 32, offset: 9184)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !302, file: !4, line: 184, baseType: !234, size: 32, align: 32, offset: 9216)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !302, file: !4, line: 185, baseType: !234, size: 32, align: 32, offset: 9248)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !302, file: !4, line: 186, baseType: !234, size: 32, align: 32, offset: 9280)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !302, file: !4, line: 187, baseType: !33, size: 32, align: 32, offset: 9312)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !302, file: !4, line: 188, baseType: !33, size: 32, align: 32, offset: 9344)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !302, file: !4, line: 189, baseType: !33, size: 32, align: 32, offset: 9376)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !302, file: !4, line: 190, baseType: !33, size: 32, align: 32, offset: 9408)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !302, file: !4, line: 191, baseType: !234, size: 32, align: 32, offset: 9440)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !302, file: !4, line: 192, baseType: !342, size: 7584, align: 32, offset: 9472)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !343)
!343 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !343, file: !4, line: 65, baseType: !234, size: 32, align: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !343, file: !4, line: 66, baseType: !33, size: 32, align: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !343, file: !4, line: 67, baseType: !33, size: 32, align: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !343, file: !4, line: 68, baseType: !33, size: 32, align: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !343, file: !4, line: 69, baseType: !234, size: 32, align: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !343, file: !4, line: 70, baseType: !234, size: 32, align: 32, offset: 160)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !343, file: !4, line: 71, baseType: !234, size: 32, align: 32, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !343, file: !4, line: 72, baseType: !33, size: 32, align: 32, offset: 224)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !343, file: !4, line: 73, baseType: !234, size: 32, align: 32, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !343, file: !4, line: 74, baseType: !234, size: 32, align: 32, offset: 288)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !343, file: !4, line: 75, baseType: !33, size: 32, align: 32, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !343, file: !4, line: 76, baseType: !33, size: 32, align: 32, offset: 352)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !343, file: !4, line: 77, baseType: !33, size: 32, align: 32, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !343, file: !4, line: 78, baseType: !234, size: 32, align: 32, offset: 416)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !343, file: !4, line: 79, baseType: !33, size: 32, align: 32, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !343, file: !4, line: 80, baseType: !33, size: 32, align: 32, offset: 480)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !343, file: !4, line: 81, baseType: !234, size: 32, align: 32, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !343, file: !4, line: 82, baseType: !33, size: 32, align: 32, offset: 544)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !343, file: !4, line: 83, baseType: !33, size: 32, align: 32, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !343, file: !4, line: 84, baseType: !234, size: 32, align: 32, offset: 608)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !343, file: !4, line: 85, baseType: !234, size: 32, align: 32, offset: 640)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !343, file: !4, line: 86, baseType: !367, size: 3296, align: 32, offset: 672)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !368)
!368 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !369)
!369 = !{!370, !371, !372, !373, !377, !378, !379, !380, !381, !382}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !368, file: !4, line: 50, baseType: !33, size: 32, align: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !368, file: !4, line: 51, baseType: !33, size: 32, align: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !368, file: !4, line: 52, baseType: !33, size: 32, align: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !368, file: !4, line: 53, baseType: !374, size: 1024, align: 32, offset: 96)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1024, align: 32, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !368, file: !4, line: 54, baseType: !374, size: 1024, align: 32, offset: 1120)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !368, file: !4, line: 55, baseType: !374, size: 1024, align: 32, offset: 2144)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !368, file: !4, line: 56, baseType: !33, size: 32, align: 32, offset: 3168)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !368, file: !4, line: 57, baseType: !33, size: 32, align: 32, offset: 3200)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !368, file: !4, line: 58, baseType: !33, size: 32, align: 32, offset: 3232)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !368, file: !4, line: 59, baseType: !33, size: 32, align: 32, offset: 3264)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !343, file: !4, line: 87, baseType: !234, size: 32, align: 32, offset: 3968)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !343, file: !4, line: 88, baseType: !367, size: 3296, align: 32, offset: 4000)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !343, file: !4, line: 90, baseType: !234, size: 32, align: 32, offset: 7296)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !343, file: !4, line: 91, baseType: !234, size: 32, align: 32, offset: 7328)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !343, file: !4, line: 92, baseType: !234, size: 32, align: 32, offset: 7360)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !343, file: !4, line: 93, baseType: !33, size: 32, align: 32, offset: 7392)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !343, file: !4, line: 94, baseType: !33, size: 32, align: 32, offset: 7424)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !343, file: !4, line: 95, baseType: !33, size: 32, align: 32, offset: 7456)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !343, file: !4, line: 96, baseType: !33, size: 32, align: 32, offset: 7488)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !343, file: !4, line: 97, baseType: !33, size: 32, align: 32, offset: 7520)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !343, file: !4, line: 98, baseType: !33, size: 32, align: 32, offset: 7552)
!394 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !54, line: 578, type: !15, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!395 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !54, line: 579, type: !15, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!396 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !54, line: 583, type: !397, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!398 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !54, line: 584, type: !397, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!399 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !54, line: 585, type: !400, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!401 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !54, line: 586, type: !15, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!402 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !54, line: 587, type: !15, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!403 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !54, line: 588, type: !15, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!404 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !54, line: 589, type: !15, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!405 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !54, line: 592, type: !250, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!406 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !54, line: 593, type: !250, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!407 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !54, line: 595, type: !253, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!408 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !54, line: 596, type: !253, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!409 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !54, line: 598, type: !250, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!410 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !54, line: 599, type: !253, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!411 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !54, line: 601, type: !250, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!412 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !54, line: 602, type: !253, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!413 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !54, line: 604, type: !414, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!418 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !54, line: 605, type: !415, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!419 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !54, line: 608, type: !420, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!421 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !54, line: 609, type: !420, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!422 = !DIGlobalVariable(name: "intras", scope: !0, file: !54, line: 610, type: !15, isLocal: false, isDefinition: true, variable: i32* @intras)
!423 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !54, line: 612, type: !15, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!424 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !54, line: 612, type: !15, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!425 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !54, line: 612, type: !15, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!426 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !54, line: 613, type: !15, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!427 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !54, line: 613, type: !15, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!428 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !54, line: 613, type: !15, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!429 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !54, line: 614, type: !15, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!430 = !DIGlobalVariable(name: "errortext", scope: !0, file: !54, line: 617, type: !431, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2400, align: 8, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 300)
!434 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !54, line: 620, type: !435, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8192, align: 32, elements: !436)
!436 = !{!437, !437}
!437 = !DISubrange(count: 16)
!438 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !54, line: 620, type: !435, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!439 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !54, line: 620, type: !435, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!440 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !54, line: 621, type: !435, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!441 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !54, line: 621, type: !435, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!442 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !54, line: 621, type: !435, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!443 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !54, line: 622, type: !444, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 24576, align: 32, elements: !445)
!445 = !{!163, !437, !437}
!446 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !54, line: 623, type: !447, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, align: 32, elements: !448)
!448 = !{!168, !181, !181}
!449 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !54, line: 623, type: !447, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!450 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !54, line: 624, type: !447, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!451 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !54, line: 624, type: !447, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!452 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !54, line: 625, type: !453, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 512, align: 32, elements: !454)
!454 = !{!181, !181}
!455 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !54, line: 625, type: !456, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 512, align: 32, elements: !457)
!457 = !{!437}
!458 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !54, line: 1201, type: !459, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !54, line: 1190, baseType: !461)
!461 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 1182, size: 192, align: 32, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !461, file: !54, line: 1184, baseType: !15, size: 32, align: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !461, file: !54, line: 1185, baseType: !15, size: 32, align: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !461, file: !54, line: 1186, baseType: !15, size: 32, align: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !461, file: !54, line: 1187, baseType: !15, size: 32, align: 32, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !461, file: !54, line: 1188, baseType: !15, size: 32, align: 32, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !461, file: !54, line: 1189, baseType: !15, size: 32, align: 32, offset: 160)
!469 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !54, line: 1202, type: !470, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !54, line: 1177, baseType: !472)
!472 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 1145, size: 26880, align: 64, elements: !473)
!473 = !{!474, !476, !477, !478, !479, !480, !481, !482, !483, !485, !486, !487, !488, !489, !494, !495, !499, !500, !501, !502, !504, !505, !506, !507, !508, !509, !510}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !472, file: !54, line: 1147, baseType: !475, size: 64, align: 64)
!475 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !472, file: !54, line: 1149, baseType: !435, size: 8192, align: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !472, file: !54, line: 1150, baseType: !435, size: 8192, align: 32, offset: 8256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !472, file: !54, line: 1150, baseType: !435, size: 8192, align: 32, offset: 16448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !472, file: !54, line: 1151, baseType: !400, size: 64, align: 64, offset: 24640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !472, file: !54, line: 1152, baseType: !397, size: 64, align: 64, offset: 24704)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !472, file: !54, line: 1153, baseType: !15, size: 32, align: 32, offset: 24768)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !472, file: !54, line: 1155, baseType: !15, size: 32, align: 32, offset: 24800)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !472, file: !54, line: 1157, baseType: !484, size: 128, align: 32, offset: 24832)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, align: 32, elements: !180)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !472, file: !54, line: 1157, baseType: !484, size: 128, align: 32, offset: 24960)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !472, file: !54, line: 1158, baseType: !255, size: 64, align: 64, offset: 25088)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !472, file: !54, line: 1159, baseType: !456, size: 512, align: 32, offset: 25152)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !472, file: !54, line: 1160, baseType: !15, size: 32, align: 32, offset: 25664)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !472, file: !54, line: 1161, baseType: !490, size: 64, align: 64, offset: 25728)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !54, line: 62, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !492, line: 30, baseType: !493)
!492 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!493 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !472, file: !54, line: 1162, baseType: !15, size: 32, align: 32, offset: 25792)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !472, file: !54, line: 1163, baseType: !496, size: 64, align: 64, offset: 25856)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !472, file: !54, line: 1164, baseType: !496, size: 64, align: 64, offset: 25920)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !472, file: !54, line: 1165, baseType: !496, size: 64, align: 64, offset: 25984)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !472, file: !54, line: 1166, baseType: !496, size: 64, align: 64, offset: 26048)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !472, file: !54, line: 1167, baseType: !503, size: 512, align: 16, offset: 26112)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 512, align: 16, elements: !448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !472, file: !54, line: 1168, baseType: !15, size: 32, align: 32, offset: 26624)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !472, file: !54, line: 1169, baseType: !15, size: 32, align: 32, offset: 26656)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !472, file: !54, line: 1171, baseType: !15, size: 32, align: 32, offset: 26688)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !472, file: !54, line: 1172, baseType: !15, size: 32, align: 32, offset: 26720)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !472, file: !54, line: 1174, baseType: !15, size: 32, align: 32, offset: 26752)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !472, file: !54, line: 1175, baseType: !15, size: 32, align: 32, offset: 26784)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !472, file: !54, line: 1176, baseType: !15, size: 32, align: 32, offset: 26816)
!511 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !54, line: 1203, type: !471, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!512 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !54, line: 1203, type: !471, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!513 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !54, line: 1204, type: !471, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!514 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !54, line: 1204, type: !471, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!515 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !54, line: 1230, type: !516, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !518, line: 153, baseType: !519)
!518 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !518, line: 122, size: 1216, align: 64, elements: !520)
!520 = !{!521, !523, !524, !525, !526, !527, !532, !533, !535, !539, !543, !552, !558, !559, !562, !563, !565, !569, !570, !571}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !519, file: !518, line: 123, baseType: !522, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !519, file: !518, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !519, file: !518, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !519, file: !518, line: 126, baseType: !417, size: 16, align: 16, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !519, file: !518, line: 127, baseType: !417, size: 16, align: 16, offset: 144)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !519, file: !518, line: 128, baseType: !528, size: 128, align: 64, offset: 192)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !518, line: 88, size: 128, align: 64, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !528, file: !518, line: 89, baseType: !522, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !528, file: !518, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !519, file: !518, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !519, file: !518, line: 132, baseType: !534, size: 64, align: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !519, file: !518, line: 133, baseType: !536, size: 64, align: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!15, !534}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !519, file: !518, line: 134, baseType: !540, size: 64, align: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!15, !534, !13, !15}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !519, file: !518, line: 135, baseType: !544, size: 64, align: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!547, !534, !547, !15}
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !518, line: 77, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !549, line: 71, baseType: !550)
!549 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !551, line: 46, baseType: !493)
!551 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !519, file: !518, line: 136, baseType: !553, size: 64, align: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!15, !534, !556, !15}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !519, file: !518, line: 139, baseType: !528, size: 128, align: 64, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !519, file: !518, line: 140, baseType: !560, size: 64, align: 64, offset: 832)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !518, line: 94, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !519, file: !518, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !519, file: !518, line: 144, baseType: !564, size: 24, align: 8, offset: 928)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 24, align: 8, elements: !185)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !519, file: !518, line: 145, baseType: !566, size: 8, align: 8, offset: 952)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, align: 8, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 1)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !519, file: !518, line: 148, baseType: !528, size: 128, align: 64, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !519, file: !518, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !519, file: !518, line: 152, baseType: !547, size: 64, align: 64, offset: 1152)
!572 = !DIGlobalVariable(name: "p_log", scope: !0, file: !54, line: 1231, type: !516, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!573 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !54, line: 1232, type: !516, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!574 = !DIGlobalVariable(name: "p_in", scope: !0, file: !54, line: 1233, type: !15, isLocal: false, isDefinition: true, variable: i32* @p_in)
!575 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !54, line: 1234, type: !15, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!576 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !54, line: 1237, type: !577, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 640, align: 32, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 20)
!580 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !54, line: 1238, type: !577, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!581 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !54, line: 1239, type: !577, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!582 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !54, line: 1240, type: !577, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!583 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !54, line: 1241, type: !577, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!584 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !54, line: 1242, type: !577, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!585 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !54, line: 1456, type: !15, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!586 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !54, line: 1465, type: !15, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!587 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !54, line: 1466, type: !15, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!588 = !DIGlobalVariable(name: "WriteNALU", scope: !0, file: !589, line: 28, type: !590, isLocal: false, isDefinition: true, variable: i32 (%struct.NALU_t*)** @WriteNALU)
!589 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalu.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!15, !26}
!593 = !{i32 2, !"Dwarf Version", i32 2}
!594 = !{i32 2, !"Debug Info Version", i32 700000003}
!595 = !{i32 1, !"PIC Level", i32 2}
!596 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!597 = !DIExpression()
!598 = !DILocation(line: 38, column: 18, scope: !10)
!599 = !DILocation(line: 38, column: 28, scope: !10)
!600 = !DILocation(line: 40, column: 11, scope: !10)
!601 = !{!602, !602, i64 0}
!602 = !{!"any pointer", !603, i64 0}
!603 = !{!"omnipotent char", !604, i64 0}
!604 = !{!"Simple C/C++ TBAA"}
!605 = !DILocation(line: 40, column: 3, scope: !10)
!606 = !DILocation(line: 41, column: 3, scope: !10)
!607 = !DILocation(line: 42, column: 3, scope: !10)
!608 = !DILocation(line: 52, column: 19, scope: !19)
!609 = !DILocation(line: 52, column: 28, scope: !19)
!610 = !DILocation(line: 54, column: 11, scope: !19)
!611 = !DILocation(line: 56, column: 10, scope: !19)
!612 = !DILocation(line: 57, column: 10, scope: !19)
!613 = !DILocation(line: 57, column: 7, scope: !19)
!614 = !DILocation(line: 58, column: 3, scope: !19)
!615 = !DILocation(line: 60, column: 3, scope: !19)
!616 = !DILocation(line: 72, column: 9, scope: !43)
!617 = !DILocation(line: 72, column: 29, scope: !43)
!618 = !DILocation(line: 72, column: 36, scope: !43)
!619 = !{!620, !621, i64 60}
!620 = !{!"", !621, i64 0, !621, i64 4, !621, i64 8, !621, i64 12, !621, i64 16, !621, i64 20, !621, i64 24, !621, i64 28, !621, i64 32, !621, i64 36, !621, i64 40, !621, i64 44, !621, i64 48, !621, i64 52, !621, i64 56, !621, i64 60, !621, i64 64, !621, i64 68, !621, i64 72, !621, i64 76, !603, i64 80, !603, i64 144, !621, i64 208, !621, i64 212, !621, i64 216, !621, i64 220, !603, i64 224, !603, i64 424, !603, i64 624, !603, i64 824, !603, i64 1024, !621, i64 1224, !621, i64 1228, !621, i64 1232, !621, i64 1236, !621, i64 1240, !621, i64 1244, !621, i64 1248, !621, i64 1252, !621, i64 1256, !621, i64 1260, !621, i64 1264, !621, i64 1268, !621, i64 1272, !621, i64 1276, !621, i64 1280, !621, i64 1284, !621, i64 1288, !621, i64 1292, !621, i64 1296, !621, i64 1300, !621, i64 1304, !621, i64 1308, !621, i64 1312, !621, i64 1316, !621, i64 1320, !603, i64 1324, !621, i64 2348, !621, i64 2352, !621, i64 2356, !621, i64 2360, !621, i64 2364, !621, i64 2368, !621, i64 2372, !621, i64 2376, !621, i64 2380, !621, i64 2384, !621, i64 2388, !621, i64 2392, !621, i64 2396, !621, i64 2400, !621, i64 2404, !621, i64 2408, !621, i64 2412, !621, i64 2416, !621, i64 2420, !622, i64 2424, !621, i64 2432, !621, i64 2436, !621, i64 2440, !621, i64 2444, !621, i64 2448, !621, i64 2452, !621, i64 2456, !621, i64 2460, !621, i64 2464, !621, i64 2468, !621, i64 2472, !621, i64 2476, !603, i64 2480, !603, i64 2680, !621, i64 2880, !621, i64 2884, !621, i64 2888, !621, i64 2892, !621, i64 2896, !621, i64 2900, !621, i64 2904, !621, i64 2908, !621, i64 2912, !621, i64 2916, !621, i64 2920, !621, i64 2924, !621, i64 2928, !621, i64 2932, !621, i64 2936, !621, i64 2940, !621, i64 2944, !621, i64 2948, !603, i64 2952, !621, i64 3152, !621, i64 3156, !602, i64 3160, !602, i64 3168, !602, i64 3176, !602, i64 3184, !621, i64 3192, !621, i64 3196, !621, i64 3200, !621, i64 3204, !621, i64 3208, !621, i64 3212, !621, i64 3216, !621, i64 3220, !621, i64 3224, !621, i64 3228, !621, i64 3232, !621, i64 3236, !621, i64 3240, !621, i64 3244, !621, i64 3248, !621, i64 3252, !621, i64 3256, !603, i64 3260, !621, i64 3292, !621, i64 3296, !621, i64 3300, !621, i64 3304, !621, i64 3308, !621, i64 3312, !621, i64 3316, !621, i64 3320, !621, i64 3324, !621, i64 3328, !621, i64 3332, !603, i64 3336, !603, i64 3384, !621, i64 3584}
!621 = !{!"int", !603, i64 0}
!622 = !{!"double", !603, i64 0}
!623 = !DILocation(line: 72, column: 28, scope: !43)
!624 = !DILocation(line: 72, column: 16, scope: !43)
!625 = !DILocation(line: 76, column: 17, scope: !43)
!626 = !{!620, !621, i64 2360}
!627 = !DILocation(line: 76, column: 3, scope: !43)
!628 = !DILocation(line: 79, column: 23, scope: !629)
!629 = distinct !DILexicalBlock(scope: !43, file: !1, line: 77, column: 3)
!630 = !DILocation(line: 79, column: 7, scope: !629)
!631 = !DILocation(line: 81, column: 7, scope: !629)
!632 = !DILocation(line: 83, column: 20, scope: !629)
!633 = !DILocation(line: 83, column: 7, scope: !629)
!634 = !DILocation(line: 85, column: 7, scope: !629)
!635 = !DILocation(line: 87, column: 7, scope: !629)
!636 = !DILocation(line: 88, column: 7, scope: !629)
!637 = !DILocation(line: 80, column: 17, scope: !629)
!638 = !DILocation(line: 73, column: 11, scope: !43)
!639 = !DILocation(line: 98, column: 10, scope: !43)
!640 = !DILocation(line: 99, column: 10, scope: !43)
!641 = !DILocation(line: 100, column: 3, scope: !43)
!642 = !DILocation(line: 72, column: 7, scope: !43)
!643 = !DILocation(line: 103, column: 3, scope: !644)
!644 = distinct !DILexicalBlock(scope: !43, file: !1, line: 103, column: 3)
!645 = !DILocation(line: 52, column: 19, scope: !19, inlinedAt: !646)
!646 = distinct !DILocation(line: 105, column: 12, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !1, line: 104, column: 3)
!648 = distinct !DILexicalBlock(scope: !644, file: !1, line: 103, column: 3)
!649 = !DILocation(line: 52, column: 28, scope: !19, inlinedAt: !646)
!650 = !DILocation(line: 54, column: 11, scope: !19, inlinedAt: !646)
!651 = !DILocation(line: 56, column: 10, scope: !19, inlinedAt: !646)
!652 = !DILocation(line: 57, column: 10, scope: !19, inlinedAt: !646)
!653 = !DILocation(line: 57, column: 7, scope: !19, inlinedAt: !646)
!654 = !DILocation(line: 58, column: 3, scope: !19, inlinedAt: !646)
!655 = !DILocation(line: 103, column: 25, scope: !648)
!656 = !DILocation(line: 103, column: 13, scope: !648)
!657 = !DILocation(line: 107, column: 3, scope: !43)
!658 = !DILocation(line: 107, column: 10, scope: !43)
!659 = !DILocation(line: 107, column: 34, scope: !43)
!660 = !{!661, !621, i64 1492}
!661 = !{!"", !621, i64 0, !621, i64 4, !662, i64 8, !662, i64 12, !621, i64 16, !621, i64 20, !621, i64 24, !621, i64 28, !603, i64 32, !603, i64 72, !603, i64 372, !603, i64 672, !602, i64 688, !602, i64 696, !621, i64 704, !621, i64 708, !621, i64 712, !662, i64 716, !662, i64 720, !662, i64 724, !603, i64 728, !603, i64 1028, !603, i64 1328, !603, i64 1348, !603, i64 1368, !603, i64 1388, !603, i64 1408, !603, i64 1428, !603, i64 1448, !621, i64 1468, !621, i64 1472, !602, i64 1480, !621, i64 1488, !621, i64 1492}
!662 = !{!"float", !603, i64 0}
!663 = !DILocation(line: 109, column: 1, scope: !43)
!664 = !DILocation(line: 125, column: 10, scope: !51)
!665 = !DILocation(line: 125, column: 17, scope: !51)
!666 = !DILocation(line: 125, column: 3, scope: !51)
!667 = !DILocation(line: 128, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !51, file: !1, line: 126, column: 3)
!669 = !DILocation(line: 138, column: 3, scope: !51)
!670 = !DILocation(line: 131, column: 7, scope: !668)
!671 = !DILocation(line: 132, column: 7, scope: !668)
!672 = !DILocation(line: 134, column: 7, scope: !668)
!673 = !DILocation(line: 135, column: 7, scope: !668)
!674 = !DILocation(line: 139, column: 1, scope: !51)
