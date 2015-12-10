; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/annexb.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@__func__.WriteAnnexbNALU = private unnamed_addr constant [16 x i8] c"WriteAnnexbNALU\00", align 1
@.str = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/annexb.c\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"n != NULL\00", align 1
@.str2 = private unnamed_addr constant [22 x i8] c"n->forbidden_bit == 0\00", align 1
@f = internal unnamed_addr global %struct.__sFILE* null, align 8
@.str3 = private unnamed_addr constant [10 x i8] c"f != NULL\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"n->startcodeprefix_len == 3 || n->startcodeprefix_len == 4\00", align 1
@.str5 = private unnamed_addr constant [59 x i8] c"Fatal: cannot write %d bytes to bitstream file, exit (-1)\0A\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str7 = private unnamed_addr constant [60 x i8] c"Fatal: cannot open Annex B bytestream file '%s', exit (-1)\0A\00", align 1
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
@str = private unnamed_addr constant [55 x i8] c"Fatal: cannot close Annex B bytestream file, exit (-1)\00"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @WriteAnnexbNALU(%struct.NALU_t* readonly %n) #0 {
  tail call void @llvm.dbg.value(metadata %struct.NALU_t* %n, i64 0, metadata !33, metadata !586), !dbg !587
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !34, metadata !586), !dbg !588
  %1 = icmp eq %struct.NALU_t* %n, null, !dbg !589
  br i1 %1, label %2, label %3, !dbg !589, !prof !590

; <label>:2                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.WriteAnnexbNALU, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 38, i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !589
  unreachable, !dbg !589

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 5, !dbg !591
  %5 = load i32* %4, align 4, !dbg !591, !tbaa !592
  %6 = icmp eq i32 %5, 0, !dbg !591
  br i1 %6, label %8, label %7, !dbg !591, !prof !598

; <label>:7                                       ; preds = %3
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.WriteAnnexbNALU, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([22 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !591
  unreachable, !dbg !591

; <label>:8                                       ; preds = %3
  %9 = load %struct.__sFILE** @f, align 8, !dbg !599, !tbaa !600
  %10 = icmp eq %struct.__sFILE* %9, null, !dbg !599
  br i1 %10, label %11, label %12, !dbg !599, !prof !590

; <label>:11                                      ; preds = %8
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.WriteAnnexbNALU, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !599
  unreachable, !dbg !599

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 0, !dbg !601
  %14 = load i32* %13, align 4, !dbg !601, !tbaa !602
  %.off = add i32 %14, -3, !dbg !601
  %.cmp = icmp ugt i32 %.off, 1, !dbg !601
  br i1 %.cmp, label %15, label %16, !dbg !601, !prof !590

; <label>:15                                      ; preds = %12
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.WriteAnnexbNALU, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !601
  unreachable, !dbg !601

; <label>:16                                      ; preds = %12
  %17 = icmp sgt i32 %14, 3, !dbg !603
  br i1 %17, label %18, label %20, !dbg !605

; <label>:18                                      ; preds = %16
  %19 = tail call i32 @putc(i32 0, %struct.__sFILE* %9) #7, !dbg !606
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !34, metadata !586), !dbg !588
  %.pre = load %struct.__sFILE** @f, align 8, !dbg !608, !tbaa !600
  br label %20, !dbg !609

; <label>:20                                      ; preds = %18, %16
  %21 = phi %struct.__sFILE* [ %.pre, %18 ], [ %9, %16 ]
  %BitsWritten.0 = phi i32 [ 32, %18 ], [ 24, %16 ]
  %22 = tail call i32 @putc(i32 0, %struct.__sFILE* %21) #7, !dbg !610
  %23 = load %struct.__sFILE** @f, align 8, !dbg !611, !tbaa !600
  %24 = tail call i32 @putc(i32 0, %struct.__sFILE* %23) #7, !dbg !612
  %25 = load %struct.__sFILE** @f, align 8, !dbg !613, !tbaa !600
  %26 = tail call i32 @putc(i32 1, %struct.__sFILE* %25) #7, !dbg !614
  tail call void @llvm.dbg.value(metadata i32 %BitsWritten.0, i64 0, metadata !34, metadata !586), !dbg !588
  %27 = load i32* %4, align 4, !dbg !615, !tbaa !592
  %28 = shl i32 %27, 7, !dbg !616
  %29 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 4, !dbg !617
  %30 = load i32* %29, align 4, !dbg !617, !tbaa !618
  %31 = shl i32 %30, 5, !dbg !619
  %32 = or i32 %31, %28, !dbg !620
  %33 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 3, !dbg !621
  %34 = load i32* %33, align 4, !dbg !621, !tbaa !622
  %35 = or i32 %32, %34, !dbg !623
  %36 = trunc i32 %35 to i8, !dbg !624
  %37 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 6, !dbg !625
  %38 = load i8** %37, align 8, !dbg !625, !tbaa !626
  store i8 %36, i8* %38, align 1, !dbg !627, !tbaa !628
  %39 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 1, !dbg !629
  %40 = load i32* %39, align 4, !dbg !629, !tbaa !631
  %41 = zext i32 %40 to i64, !dbg !632
  %42 = load i8** %37, align 8, !dbg !633, !tbaa !626
  %43 = load %struct.__sFILE** @f, align 8, !dbg !634, !tbaa !600
  %44 = tail call i64 @"\01_fwrite"(i8* %42, i64 1, i64 %41, %struct.__sFILE* %43) #7, !dbg !635
  %45 = icmp eq i64 %41, %44, !dbg !636
  %46 = load i32* %39, align 4, !dbg !637, !tbaa !631
  br i1 %45, label %49, label %47, !dbg !639

; <label>:47                                      ; preds = %20
  %48 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0), i32 %46) #7, !dbg !640
  tail call void @exit(i32 -1) #6, !dbg !641
  unreachable, !dbg !641

; <label>:49                                      ; preds = %20
  %50 = shl i32 %46, 3, !dbg !642
  %51 = add i32 %50, %BitsWritten.0, !dbg !643
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !34, metadata !586), !dbg !588
  %52 = load %struct.__sFILE** @f, align 8, !dbg !644, !tbaa !600
  %53 = tail call i32 @fflush(%struct.__sFILE* %52) #7, !dbg !645
  ret i32 %51, !dbg !646
}

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @putc(i32, %struct.__sFILE* nocapture) #2

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: noreturn optsize
declare void @exit(i32) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @OpenAnnexbFile(i8* %Filename) #0 {
  tail call void @llvm.dbg.value(metadata i8* %Filename, i64 0, metadata !41, metadata !586), !dbg !647
  %1 = tail call %struct.__sFILE* @"\01_fopen"(i8* %Filename, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !648
  store %struct.__sFILE* %1, %struct.__sFILE** @f, align 8, !dbg !650, !tbaa !600
  %2 = icmp eq %struct.__sFILE* %1, null, !dbg !651
  br i1 %2, label %3, label %5, !dbg !652

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str7, i64 0, i64 0), i8* %Filename) #7, !dbg !653
  tail call void @exit(i32 -1) #6, !dbg !655
  unreachable, !dbg !655

; <label>:5                                       ; preds = %0
  ret void, !dbg !656
}

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @CloseAnnexbFile() #0 {
  %1 = load %struct.__sFILE** @f, align 8, !dbg !657, !tbaa !600
  %2 = tail call i32 @fclose(%struct.__sFILE* %1) #7, !dbg !659
  %3 = icmp eq i32 %2, 0, !dbg !659
  br i1 %3, label %5, label %4, !dbg !660

; <label>:4                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str, i64 0, i64 0)), !dbg !661
  tail call void @exit(i32 -1) #6, !dbg !663
  unreachable, !dbg !663

; <label>:5                                       ; preds = %0
  ret void, !dbg !664
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!582, !583, !584}
!llvm.ident = !{!585}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !10, globals: !46, imports: !45)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/annexb.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !{!11, !35, !42}
!11 = !DISubprogram(name: "WriteAnnexbNALU", scope: !1, file: !1, line: 34, type: !12, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.NALU_t*)* @WriteAnnexbNALU, variables: !32)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !17, line: 49, baseType: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalucommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 40, size: 256, align: 64, elements: !19)
!19 = !{!20, !21, !23, !24, !25, !26, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !18, file: !17, line: 42, baseType: !14, size: 32, align: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !18, file: !17, line: 43, baseType: !22, size: 32, align: 32, offset: 32)
!22 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !18, file: !17, line: 44, baseType: !22, size: 32, align: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !18, file: !17, line: 45, baseType: !14, size: 32, align: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !18, file: !17, line: 46, baseType: !14, size: 32, align: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !18, file: !17, line: 47, baseType: !14, size: 32, align: 32, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !18, file: !17, line: 48, baseType: !28, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !30, line: 30, baseType: !31)
!30 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!32 = !{!33, !34}
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !11, file: !1, line: 34, type: !15)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "BitsWritten", scope: !11, file: !1, line: 36, type: !14)
!35 = !DISubprogram(name: "OpenAnnexbFile", scope: !1, file: !1, line: 100, type: !36, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @OpenAnnexbFile, variables: !40)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!40 = !{!41}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Filename", arg: 1, scope: !35, file: !1, line: 100, type: !38)
!42 = !DISubprogram(name: "CloseAnnexbFile", scope: !1, file: !1, line: 119, type: !43, isLocal: false, isDefinition: true, scopeLine: 119, isOptimized: true, function: void ()* @CloseAnnexbFile, variables: !45)
!43 = !DISubroutineType(types: !44)
!44 = !{null}
!45 = !{}
!46 = !{!47, !239, !240, !241, !242, !243, !246, !248, !250, !251, !252, !253, !254, !293, !388, !389, !390, !392, !393, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !412, !413, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !428, !432, !433, !434, !435, !436, !437, !440, !443, !444, !445, !446, !449, !452, !463, !505, !506, !507, !508, !509, !565, !566, !567, !568, !569, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!47 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !48, line: 558, type: !49, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!48 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !48, line: 484, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 475, size: 6592, align: 64, elements: !52)
!52 = !{!53, !54, !55, !234, !235, !237, !238}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !51, file: !48, line: 477, baseType: !14, size: 32, align: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !51, file: !48, line: 478, baseType: !14, size: 32, align: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !51, file: !48, line: 479, baseType: !56, size: 6400, align: 64, offset: 64)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 6400, align: 64, elements: !232)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !48, line: 471, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 443, size: 1216, align: 64, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !141, !180, !207, !216, !217, !218, !219, !220, !221, !222, !223, !224, !229}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !59, file: !48, line: 445, baseType: !14, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !59, file: !48, line: 446, baseType: !14, size: 32, align: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !59, file: !48, line: 447, baseType: !14, size: 32, align: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !59, file: !48, line: 448, baseType: !14, size: 32, align: 32, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !59, file: !48, line: 449, baseType: !14, size: 32, align: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !59, file: !48, line: 450, baseType: !14, size: 32, align: 32, offset: 160)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !59, file: !48, line: 451, baseType: !68, size: 64, align: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !48, line: 440, baseType: !70)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !48, line: 430, size: 960, align: 64, elements: !71)
!71 = !{!72, !88, !113}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !70, file: !48, line: 433, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !48, line: 427, baseType: !75)
!75 = !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 411, size: 384, align: 64, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !75, file: !48, line: 413, baseType: !14, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !75, file: !48, line: 414, baseType: !14, size: 32, align: 32, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !75, file: !48, line: 415, baseType: !29, size: 8, align: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !75, file: !48, line: 416, baseType: !14, size: 32, align: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !75, file: !48, line: 417, baseType: !14, size: 32, align: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !75, file: !48, line: 418, baseType: !29, size: 8, align: 8, offset: 160)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !75, file: !48, line: 420, baseType: !29, size: 8, align: 8, offset: 168)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !75, file: !48, line: 421, baseType: !14, size: 32, align: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !75, file: !48, line: 422, baseType: !14, size: 32, align: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !75, file: !48, line: 424, baseType: !28, size: 64, align: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !75, file: !48, line: 425, baseType: !14, size: 32, align: 32, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !70, file: !48, line: 434, baseType: !89, size: 832, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !48, line: 226, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 207, size: 832, align: 64, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !90, file: !48, line: 209, baseType: !22, size: 32, align: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !90, file: !48, line: 209, baseType: !22, size: 32, align: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !90, file: !48, line: 210, baseType: !22, size: 32, align: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !90, file: !48, line: 211, baseType: !22, size: 32, align: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !90, file: !48, line: 212, baseType: !22, size: 32, align: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !90, file: !48, line: 213, baseType: !28, size: 64, align: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !90, file: !48, line: 214, baseType: !99, size: 64, align: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !90, file: !48, line: 217, baseType: !22, size: 32, align: 32, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !90, file: !48, line: 217, baseType: !22, size: 32, align: 32, offset: 352)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !90, file: !48, line: 218, baseType: !22, size: 32, align: 32, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !90, file: !48, line: 219, baseType: !22, size: 32, align: 32, offset: 416)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !90, file: !48, line: 220, baseType: !22, size: 32, align: 32, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !90, file: !48, line: 221, baseType: !28, size: 64, align: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !90, file: !48, line: 222, baseType: !99, size: 64, align: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !90, file: !48, line: 223, baseType: !14, size: 32, align: 32, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !90, file: !48, line: 223, baseType: !14, size: 32, align: 32, offset: 672)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !90, file: !48, line: 224, baseType: !14, size: 32, align: 32, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !90, file: !48, line: 224, baseType: !14, size: 32, align: 32, offset: 736)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !90, file: !48, line: 225, baseType: !14, size: 32, align: 32, offset: 768)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !90, file: !48, line: 225, baseType: !14, size: 32, align: 32, offset: 800)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !70, file: !48, line: 436, baseType: !114, size: 64, align: 64, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!14, !117, !140}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !48, line: 348, baseType: !119)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !48, line: 327, size: 384, align: 64, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !133}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !48, line: 329, baseType: !14, size: 32, align: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !119, file: !48, line: 330, baseType: !14, size: 32, align: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !119, file: !48, line: 331, baseType: !14, size: 32, align: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !119, file: !48, line: 332, baseType: !14, size: 32, align: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !119, file: !48, line: 333, baseType: !14, size: 32, align: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !119, file: !48, line: 334, baseType: !22, size: 32, align: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !119, file: !48, line: 335, baseType: !14, size: 32, align: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !119, file: !48, line: 336, baseType: !14, size: 32, align: 32, offset: 224)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !119, file: !48, line: 344, baseType: !130, size: 64, align: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !14, !14, !99, !99}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !119, file: !48, line: 346, baseType: !134, size: 64, align: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137, !138}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !48, line: 228, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !59, file: !48, line: 452, baseType: !142, size: 64, align: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !48, line: 268, baseType: !144)
!144 = !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 258, size: 12032, align: 64, elements: !145)
!145 = !{!146, !159, !164, !168, !172, !176, !177}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !144, file: !48, line: 260, baseType: !147, size: 4224, align: 64)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 4224, align: 64, elements: !156)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !48, line: 238, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 231, size: 128, align: 64, elements: !150)
!150 = !{!151, !153, !154}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !149, file: !48, line: 233, baseType: !152, size: 16, align: 16)
!152 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !149, file: !48, line: 234, baseType: !31, size: 8, align: 8, offset: 16)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !149, file: !48, line: 236, baseType: !155, size: 64, align: 64, offset: 64)
!155 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!156 = !{!157, !158}
!157 = !DISubrange(count: 3)
!158 = !DISubrange(count: 11)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !144, file: !48, line: 261, baseType: !160, size: 2304, align: 64, offset: 4224)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 2304, align: 64, elements: !161)
!161 = !{!162, !163}
!162 = !DISubrange(count: 2)
!163 = !DISubrange(count: 9)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !144, file: !48, line: 262, baseType: !165, size: 2560, align: 64, offset: 6528)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 2560, align: 64, elements: !166)
!166 = !{!162, !167}
!167 = !DISubrange(count: 10)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !144, file: !48, line: 263, baseType: !169, size: 1536, align: 64, offset: 9088)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1536, align: 64, elements: !170)
!170 = !{!162, !171}
!171 = !DISubrange(count: 6)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !144, file: !48, line: 264, baseType: !173, size: 512, align: 64, offset: 10624)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 512, align: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 4)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !144, file: !48, line: 265, baseType: !173, size: 512, align: 64, offset: 11136)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !144, file: !48, line: 266, baseType: !178, size: 384, align: 64, offset: 11648)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 384, align: 64, elements: !179)
!179 = !{!157}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !59, file: !48, line: 453, baseType: !181, size: 64, align: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !48, line: 293, baseType: !183)
!183 = !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 281, size: 97024, align: 64, elements: !184)
!184 = !{!185, !188, !189, !192, !195, !199, !200, !204, !205, !206}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !183, file: !48, line: 283, baseType: !186, size: 256, align: 64)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, align: 64, elements: !187)
!187 = !{!162}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !183, file: !48, line: 284, baseType: !173, size: 512, align: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !183, file: !48, line: 285, baseType: !190, size: 1536, align: 64, offset: 768)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1536, align: 64, elements: !191)
!191 = !{!157, !175}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !183, file: !48, line: 286, baseType: !193, size: 5120, align: 64, offset: 2304)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 5120, align: 64, elements: !194)
!194 = !{!167, !175}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !183, file: !48, line: 287, baseType: !196, size: 19200, align: 64, offset: 7424)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 19200, align: 64, elements: !197)
!197 = !{!167, !198}
!198 = !DISubrange(count: 15)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !183, file: !48, line: 288, baseType: !196, size: 19200, align: 64, offset: 26624)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !183, file: !48, line: 289, baseType: !201, size: 6400, align: 64, offset: 45824)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 6400, align: 64, elements: !202)
!202 = !{!167, !203}
!203 = !DISubrange(count: 5)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !183, file: !48, line: 290, baseType: !201, size: 6400, align: 64, offset: 52224)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !183, file: !48, line: 291, baseType: !196, size: 19200, align: 64, offset: 58624)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !183, file: !48, line: 292, baseType: !196, size: 19200, align: 64, offset: 77824)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !59, file: !48, line: 456, baseType: !208, size: 64, align: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !48, line: 313, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !48, line: 308, size: 128, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !210, file: !48, line: 310, baseType: !14, size: 32, align: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !210, file: !48, line: 311, baseType: !14, size: 32, align: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !210, file: !48, line: 312, baseType: !215, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !59, file: !48, line: 458, baseType: !14, size: 32, align: 32, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !59, file: !48, line: 459, baseType: !99, size: 64, align: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !59, file: !48, line: 460, baseType: !99, size: 64, align: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !59, file: !48, line: 461, baseType: !99, size: 64, align: 64, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !59, file: !48, line: 462, baseType: !14, size: 32, align: 32, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !59, file: !48, line: 463, baseType: !99, size: 64, align: 64, offset: 768)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !59, file: !48, line: 464, baseType: !99, size: 64, align: 64, offset: 832)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !59, file: !48, line: 465, baseType: !99, size: 64, align: 64, offset: 896)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !59, file: !48, line: 467, baseType: !225, size: 64, align: 64, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !14}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !59, file: !48, line: 469, baseType: !230, size: 192, align: 32, offset: 1024)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, align: 32, elements: !231)
!231 = !{!157, !162}
!232 = !{!233}
!233 = !DISubrange(count: 100)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !51, file: !48, line: 480, baseType: !14, size: 32, align: 32, offset: 6464)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !51, file: !48, line: 481, baseType: !236, size: 32, align: 32, offset: 6496)
!236 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !51, file: !48, line: 482, baseType: !236, size: 32, align: 32, offset: 6528)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !51, file: !48, line: 483, baseType: !236, size: 32, align: 32, offset: 6560)
!239 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !48, line: 559, type: !49, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!240 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !48, line: 560, type: !49, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!241 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !48, line: 561, type: !49, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!242 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !48, line: 562, type: !49, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!243 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !48, line: 565, type: !244, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!246 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !48, line: 566, type: !247, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!248 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !48, line: 567, type: !249, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!250 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !48, line: 569, type: !22, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!251 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !48, line: 570, type: !22, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!252 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !48, line: 572, type: !14, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!253 = !DIGlobalVariable(name: "me_time", scope: !0, file: !48, line: 572, type: !14, isLocal: false, isDefinition: true, variable: i32* @me_time)
!254 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !48, line: 573, type: !255, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !257)
!257 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !269, !270, !271, !272, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !257, file: !4, line: 105, baseType: !228, size: 32, align: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !257, file: !4, line: 106, baseType: !22, size: 32, align: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !257, file: !4, line: 107, baseType: !22, size: 32, align: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !257, file: !4, line: 108, baseType: !228, size: 32, align: 32, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !257, file: !4, line: 110, baseType: !228, size: 32, align: 32, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !257, file: !4, line: 111, baseType: !228, size: 32, align: 32, offset: 160)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !257, file: !4, line: 112, baseType: !266, size: 256, align: 32, offset: 192)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, align: 32, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !257, file: !4, line: 115, baseType: !228, size: 32, align: 32, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !257, file: !4, line: 116, baseType: !22, size: 32, align: 32, offset: 480)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !257, file: !4, line: 117, baseType: !22, size: 32, align: 32, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !257, file: !4, line: 119, baseType: !273, size: 256, align: 32, offset: 544)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, align: 32, elements: !267)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !257, file: !4, line: 121, baseType: !273, size: 256, align: 32, offset: 800)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !257, file: !4, line: 122, baseType: !273, size: 256, align: 32, offset: 1056)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !257, file: !4, line: 124, baseType: !228, size: 32, align: 32, offset: 1312)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !257, file: !4, line: 125, baseType: !22, size: 32, align: 32, offset: 1344)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !257, file: !4, line: 127, baseType: !22, size: 32, align: 32, offset: 1376)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !257, file: !4, line: 128, baseType: !28, size: 64, align: 64, offset: 1408)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !257, file: !4, line: 130, baseType: !14, size: 32, align: 32, offset: 1472)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !257, file: !4, line: 131, baseType: !14, size: 32, align: 32, offset: 1504)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !257, file: !4, line: 132, baseType: !228, size: 32, align: 32, offset: 1536)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !257, file: !4, line: 133, baseType: !22, size: 32, align: 32, offset: 1568)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !257, file: !4, line: 134, baseType: !14, size: 32, align: 32, offset: 1600)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !257, file: !4, line: 135, baseType: !14, size: 32, align: 32, offset: 1632)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !257, file: !4, line: 136, baseType: !14, size: 32, align: 32, offset: 1664)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !257, file: !4, line: 138, baseType: !14, size: 32, align: 32, offset: 1696)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !257, file: !4, line: 139, baseType: !14, size: 32, align: 32, offset: 1728)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !257, file: !4, line: 141, baseType: !228, size: 32, align: 32, offset: 1760)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !257, file: !4, line: 142, baseType: !228, size: 32, align: 32, offset: 1792)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !257, file: !4, line: 143, baseType: !228, size: 32, align: 32, offset: 1824)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !257, file: !4, line: 144, baseType: !228, size: 32, align: 32, offset: 1856)
!293 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !48, line: 574, type: !294, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !296)
!296 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !296, file: !4, line: 151, baseType: !228, size: 32, align: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !296, file: !4, line: 153, baseType: !22, size: 32, align: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !296, file: !4, line: 154, baseType: !228, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !296, file: !4, line: 155, baseType: !228, size: 32, align: 32, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !296, file: !4, line: 156, baseType: !228, size: 32, align: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !296, file: !4, line: 157, baseType: !228, size: 32, align: 32, offset: 160)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !296, file: !4, line: 158, baseType: !22, size: 32, align: 32, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !296, file: !4, line: 159, baseType: !22, size: 32, align: 32, offset: 224)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !296, file: !4, line: 160, baseType: !22, size: 32, align: 32, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !296, file: !4, line: 162, baseType: !228, size: 32, align: 32, offset: 288)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !296, file: !4, line: 163, baseType: !266, size: 256, align: 32, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !296, file: !4, line: 165, baseType: !22, size: 32, align: 32, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !296, file: !4, line: 166, baseType: !22, size: 32, align: 32, offset: 608)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !296, file: !4, line: 167, baseType: !22, size: 32, align: 32, offset: 640)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !296, file: !4, line: 168, baseType: !22, size: 32, align: 32, offset: 672)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !296, file: !4, line: 170, baseType: !22, size: 32, align: 32, offset: 704)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !296, file: !4, line: 172, baseType: !228, size: 32, align: 32, offset: 736)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !296, file: !4, line: 173, baseType: !14, size: 32, align: 32, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !296, file: !4, line: 174, baseType: !14, size: 32, align: 32, offset: 800)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !296, file: !4, line: 175, baseType: !22, size: 32, align: 32, offset: 832)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !296, file: !4, line: 177, baseType: !319, size: 8192, align: 32, offset: 864)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8192, align: 32, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !296, file: !4, line: 178, baseType: !22, size: 32, align: 32, offset: 9056)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !296, file: !4, line: 179, baseType: !228, size: 32, align: 32, offset: 9088)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !296, file: !4, line: 180, baseType: !22, size: 32, align: 32, offset: 9120)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !296, file: !4, line: 181, baseType: !22, size: 32, align: 32, offset: 9152)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !296, file: !4, line: 182, baseType: !228, size: 32, align: 32, offset: 9184)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !296, file: !4, line: 184, baseType: !228, size: 32, align: 32, offset: 9216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !296, file: !4, line: 185, baseType: !228, size: 32, align: 32, offset: 9248)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !296, file: !4, line: 186, baseType: !228, size: 32, align: 32, offset: 9280)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !296, file: !4, line: 187, baseType: !22, size: 32, align: 32, offset: 9312)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !296, file: !4, line: 188, baseType: !22, size: 32, align: 32, offset: 9344)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !296, file: !4, line: 189, baseType: !22, size: 32, align: 32, offset: 9376)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !296, file: !4, line: 190, baseType: !22, size: 32, align: 32, offset: 9408)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !296, file: !4, line: 191, baseType: !228, size: 32, align: 32, offset: 9440)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !296, file: !4, line: 192, baseType: !336, size: 7584, align: 32, offset: 9472)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !337)
!337 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !337, file: !4, line: 65, baseType: !228, size: 32, align: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !337, file: !4, line: 66, baseType: !22, size: 32, align: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !337, file: !4, line: 67, baseType: !22, size: 32, align: 32, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !337, file: !4, line: 68, baseType: !22, size: 32, align: 32, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !337, file: !4, line: 69, baseType: !228, size: 32, align: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !337, file: !4, line: 70, baseType: !228, size: 32, align: 32, offset: 160)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !337, file: !4, line: 71, baseType: !228, size: 32, align: 32, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !337, file: !4, line: 72, baseType: !22, size: 32, align: 32, offset: 224)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !337, file: !4, line: 73, baseType: !228, size: 32, align: 32, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !337, file: !4, line: 74, baseType: !228, size: 32, align: 32, offset: 288)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !337, file: !4, line: 75, baseType: !22, size: 32, align: 32, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !337, file: !4, line: 76, baseType: !22, size: 32, align: 32, offset: 352)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !337, file: !4, line: 77, baseType: !22, size: 32, align: 32, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !337, file: !4, line: 78, baseType: !228, size: 32, align: 32, offset: 416)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !337, file: !4, line: 79, baseType: !22, size: 32, align: 32, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !337, file: !4, line: 80, baseType: !22, size: 32, align: 32, offset: 480)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !337, file: !4, line: 81, baseType: !228, size: 32, align: 32, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !337, file: !4, line: 82, baseType: !22, size: 32, align: 32, offset: 544)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !337, file: !4, line: 83, baseType: !22, size: 32, align: 32, offset: 576)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !337, file: !4, line: 84, baseType: !228, size: 32, align: 32, offset: 608)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !337, file: !4, line: 85, baseType: !228, size: 32, align: 32, offset: 640)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !337, file: !4, line: 86, baseType: !361, size: 3296, align: 32, offset: 672)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !362)
!362 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !363)
!363 = !{!364, !365, !366, !367, !371, !372, !373, !374, !375, !376}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !362, file: !4, line: 50, baseType: !22, size: 32, align: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !362, file: !4, line: 51, baseType: !22, size: 32, align: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !362, file: !4, line: 52, baseType: !22, size: 32, align: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !362, file: !4, line: 53, baseType: !368, size: 1024, align: 32, offset: 96)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, align: 32, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !362, file: !4, line: 54, baseType: !368, size: 1024, align: 32, offset: 1120)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !362, file: !4, line: 55, baseType: !368, size: 1024, align: 32, offset: 2144)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !362, file: !4, line: 56, baseType: !22, size: 32, align: 32, offset: 3168)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !362, file: !4, line: 57, baseType: !22, size: 32, align: 32, offset: 3200)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !362, file: !4, line: 58, baseType: !22, size: 32, align: 32, offset: 3232)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !362, file: !4, line: 59, baseType: !22, size: 32, align: 32, offset: 3264)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !337, file: !4, line: 87, baseType: !228, size: 32, align: 32, offset: 3968)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !337, file: !4, line: 88, baseType: !361, size: 3296, align: 32, offset: 4000)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !337, file: !4, line: 90, baseType: !228, size: 32, align: 32, offset: 7296)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !337, file: !4, line: 91, baseType: !228, size: 32, align: 32, offset: 7328)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !337, file: !4, line: 92, baseType: !228, size: 32, align: 32, offset: 7360)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !337, file: !4, line: 93, baseType: !22, size: 32, align: 32, offset: 7392)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !337, file: !4, line: 94, baseType: !22, size: 32, align: 32, offset: 7424)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !337, file: !4, line: 95, baseType: !22, size: 32, align: 32, offset: 7456)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !337, file: !4, line: 96, baseType: !22, size: 32, align: 32, offset: 7488)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !337, file: !4, line: 97, baseType: !22, size: 32, align: 32, offset: 7520)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !337, file: !4, line: 98, baseType: !22, size: 32, align: 32, offset: 7552)
!388 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !48, line: 578, type: !14, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!389 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !48, line: 579, type: !14, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!390 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !48, line: 583, type: !391, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!392 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !48, line: 584, type: !391, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!393 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !48, line: 585, type: !394, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!395 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !48, line: 586, type: !14, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!396 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !48, line: 587, type: !14, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!397 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !48, line: 588, type: !14, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!398 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !48, line: 589, type: !14, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!399 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !48, line: 592, type: !244, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!400 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !48, line: 593, type: !244, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!401 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !48, line: 595, type: !247, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!402 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !48, line: 596, type: !247, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!403 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !48, line: 598, type: !244, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!404 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !48, line: 599, type: !247, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!405 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !48, line: 601, type: !244, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!406 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !48, line: 602, type: !247, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!407 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !48, line: 604, type: !408, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!412 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !48, line: 605, type: !409, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!413 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !48, line: 608, type: !414, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!415 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !48, line: 609, type: !414, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!416 = !DIGlobalVariable(name: "intras", scope: !0, file: !48, line: 610, type: !14, isLocal: false, isDefinition: true, variable: i32* @intras)
!417 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !48, line: 612, type: !14, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!418 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !48, line: 612, type: !14, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!419 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !48, line: 612, type: !14, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!420 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !48, line: 613, type: !14, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!421 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !48, line: 613, type: !14, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!422 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !48, line: 613, type: !14, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!423 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !48, line: 614, type: !14, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!424 = !DIGlobalVariable(name: "errortext", scope: !0, file: !48, line: 617, type: !425, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2400, align: 8, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 300)
!428 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !48, line: 620, type: !429, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8192, align: 32, elements: !430)
!430 = !{!431, !431}
!431 = !DISubrange(count: 16)
!432 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !48, line: 620, type: !429, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!433 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !48, line: 620, type: !429, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!434 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !48, line: 621, type: !429, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!435 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !48, line: 621, type: !429, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!436 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !48, line: 621, type: !429, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!437 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !48, line: 622, type: !438, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24576, align: 32, elements: !439)
!439 = !{!157, !431, !431}
!440 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !48, line: 623, type: !441, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, align: 32, elements: !442)
!442 = !{!162, !175, !175}
!443 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !48, line: 623, type: !441, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!444 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !48, line: 624, type: !441, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!445 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !48, line: 624, type: !441, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!446 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !48, line: 625, type: !447, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, align: 32, elements: !448)
!448 = !{!175, !175}
!449 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !48, line: 625, type: !450, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, align: 32, elements: !451)
!451 = !{!431}
!452 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !48, line: 1201, type: !453, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !48, line: 1190, baseType: !455)
!455 = !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 1182, size: 192, align: 32, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !455, file: !48, line: 1184, baseType: !14, size: 32, align: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !455, file: !48, line: 1185, baseType: !14, size: 32, align: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !455, file: !48, line: 1186, baseType: !14, size: 32, align: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !455, file: !48, line: 1187, baseType: !14, size: 32, align: 32, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !455, file: !48, line: 1188, baseType: !14, size: 32, align: 32, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !455, file: !48, line: 1189, baseType: !14, size: 32, align: 32, offset: 160)
!463 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !48, line: 1202, type: !464, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !48, line: 1177, baseType: !466)
!466 = !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 1145, size: 26880, align: 64, elements: !467)
!467 = !{!468, !470, !471, !472, !473, !474, !475, !476, !477, !479, !480, !481, !482, !483, !488, !489, !493, !494, !495, !496, !498, !499, !500, !501, !502, !503, !504}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !466, file: !48, line: 1147, baseType: !469, size: 64, align: 64)
!469 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !466, file: !48, line: 1149, baseType: !429, size: 8192, align: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !466, file: !48, line: 1150, baseType: !429, size: 8192, align: 32, offset: 8256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !466, file: !48, line: 1150, baseType: !429, size: 8192, align: 32, offset: 16448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !466, file: !48, line: 1151, baseType: !394, size: 64, align: 64, offset: 24640)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !466, file: !48, line: 1152, baseType: !391, size: 64, align: 64, offset: 24704)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !466, file: !48, line: 1153, baseType: !14, size: 32, align: 32, offset: 24768)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !466, file: !48, line: 1155, baseType: !14, size: 32, align: 32, offset: 24800)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !466, file: !48, line: 1157, baseType: !478, size: 128, align: 32, offset: 24832)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, align: 32, elements: !174)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !466, file: !48, line: 1157, baseType: !478, size: 128, align: 32, offset: 24960)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !466, file: !48, line: 1158, baseType: !249, size: 64, align: 64, offset: 25088)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !466, file: !48, line: 1159, baseType: !450, size: 512, align: 32, offset: 25152)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !466, file: !48, line: 1160, baseType: !14, size: 32, align: 32, offset: 25664)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !466, file: !48, line: 1161, baseType: !484, size: 64, align: 64, offset: 25728)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !48, line: 62, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !486, line: 30, baseType: !487)
!486 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!487 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !466, file: !48, line: 1162, baseType: !14, size: 32, align: 32, offset: 25792)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !466, file: !48, line: 1163, baseType: !490, size: 64, align: 64, offset: 25856)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !466, file: !48, line: 1164, baseType: !490, size: 64, align: 64, offset: 25920)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !466, file: !48, line: 1165, baseType: !490, size: 64, align: 64, offset: 25984)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !466, file: !48, line: 1166, baseType: !490, size: 64, align: 64, offset: 26048)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !466, file: !48, line: 1167, baseType: !497, size: 512, align: 16, offset: 26112)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 512, align: 16, elements: !442)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !466, file: !48, line: 1168, baseType: !14, size: 32, align: 32, offset: 26624)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !466, file: !48, line: 1169, baseType: !14, size: 32, align: 32, offset: 26656)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !466, file: !48, line: 1171, baseType: !14, size: 32, align: 32, offset: 26688)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !466, file: !48, line: 1172, baseType: !14, size: 32, align: 32, offset: 26720)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !466, file: !48, line: 1174, baseType: !14, size: 32, align: 32, offset: 26752)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !466, file: !48, line: 1175, baseType: !14, size: 32, align: 32, offset: 26784)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !466, file: !48, line: 1176, baseType: !14, size: 32, align: 32, offset: 26816)
!505 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !48, line: 1203, type: !465, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!506 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !48, line: 1203, type: !465, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!507 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !48, line: 1204, type: !465, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!508 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !48, line: 1204, type: !465, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!509 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !48, line: 1230, type: !510, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !512, line: 153, baseType: !513)
!512 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !512, line: 122, size: 1216, align: 64, elements: !514)
!514 = !{!515, !517, !518, !519, !520, !521, !526, !527, !528, !532, !536, !545, !551, !552, !555, !556, !558, !562, !563, !564}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !513, file: !512, line: 123, baseType: !516, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !513, file: !512, line: 124, baseType: !14, size: 32, align: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !513, file: !512, line: 125, baseType: !14, size: 32, align: 32, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !513, file: !512, line: 126, baseType: !411, size: 16, align: 16, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !513, file: !512, line: 127, baseType: !411, size: 16, align: 16, offset: 144)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !513, file: !512, line: 128, baseType: !522, size: 128, align: 64, offset: 192)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !512, line: 88, size: 128, align: 64, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !522, file: !512, line: 89, baseType: !516, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !522, file: !512, line: 90, baseType: !14, size: 32, align: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !513, file: !512, line: 129, baseType: !14, size: 32, align: 32, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !513, file: !512, line: 132, baseType: !9, size: 64, align: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !513, file: !512, line: 133, baseType: !529, size: 64, align: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!14, !9}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !513, file: !512, line: 134, baseType: !533, size: 64, align: 64, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!14, !9, !38, !14}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !513, file: !512, line: 135, baseType: !537, size: 64, align: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!540, !9, !540, !14}
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !512, line: 77, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !542, line: 71, baseType: !543)
!542 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !544, line: 46, baseType: !487)
!544 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !513, file: !512, line: 136, baseType: !546, size: 64, align: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!14, !9, !549, !14}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !513, file: !512, line: 139, baseType: !522, size: 128, align: 64, offset: 704)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !513, file: !512, line: 140, baseType: !553, size: 64, align: 64, offset: 832)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !512, line: 94, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !513, file: !512, line: 141, baseType: !14, size: 32, align: 32, offset: 896)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !513, file: !512, line: 144, baseType: !557, size: 24, align: 8, offset: 928)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, align: 8, elements: !179)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !513, file: !512, line: 145, baseType: !559, size: 8, align: 8, offset: 952)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 1)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !513, file: !512, line: 148, baseType: !522, size: 128, align: 64, offset: 960)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !513, file: !512, line: 151, baseType: !14, size: 32, align: 32, offset: 1088)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !513, file: !512, line: 152, baseType: !540, size: 64, align: 64, offset: 1152)
!565 = !DIGlobalVariable(name: "p_log", scope: !0, file: !48, line: 1231, type: !510, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!566 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !48, line: 1232, type: !510, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!567 = !DIGlobalVariable(name: "p_in", scope: !0, file: !48, line: 1233, type: !14, isLocal: false, isDefinition: true, variable: i32* @p_in)
!568 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !48, line: 1234, type: !14, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!569 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !48, line: 1237, type: !570, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, align: 32, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 20)
!573 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !48, line: 1238, type: !570, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!574 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !48, line: 1239, type: !570, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!575 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !48, line: 1240, type: !570, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!576 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !48, line: 1241, type: !570, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!577 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !48, line: 1242, type: !570, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!578 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !48, line: 1456, type: !14, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!579 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !48, line: 1465, type: !14, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!580 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !48, line: 1466, type: !14, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!581 = !DIGlobalVariable(name: "f", scope: !0, file: !1, line: 21, type: !510, isLocal: true, isDefinition: true, variable: %struct.__sFILE** @f)
!582 = !{i32 2, !"Dwarf Version", i32 2}
!583 = !{i32 2, !"Debug Info Version", i32 700000003}
!584 = !{i32 1, !"PIC Level", i32 2}
!585 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!586 = !DIExpression()
!587 = !DILocation(line: 34, column: 30, scope: !11)
!588 = !DILocation(line: 36, column: 7, scope: !11)
!589 = !DILocation(line: 38, column: 3, scope: !11)
!590 = !{!"branch_weights", i32 4, i32 64}
!591 = !DILocation(line: 39, column: 3, scope: !11)
!592 = !{!593, !594, i64 20}
!593 = !{!"", !594, i64 0, !594, i64 4, !594, i64 8, !594, i64 12, !594, i64 16, !594, i64 20, !597, i64 24}
!594 = !{!"int", !595, i64 0}
!595 = !{!"omnipotent char", !596, i64 0}
!596 = !{!"Simple C/C++ TBAA"}
!597 = !{!"any pointer", !595, i64 0}
!598 = !{!"branch_weights", i32 64, i32 4}
!599 = !DILocation(line: 40, column: 3, scope: !11)
!600 = !{!597, !597, i64 0}
!601 = !DILocation(line: 41, column: 3, scope: !11)
!602 = !{!593, !594, i64 0}
!603 = !DILocation(line: 44, column: 30, scope: !604)
!604 = distinct !DILexicalBlock(scope: !11, file: !1, line: 44, column: 7)
!605 = !DILocation(line: 44, column: 7, scope: !11)
!606 = !DILocation(line: 47, column: 5, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !1, line: 45, column: 3)
!608 = !DILocation(line: 52, column: 12, scope: !11)
!609 = !DILocation(line: 50, column: 3, scope: !607)
!610 = !DILocation(line: 52, column: 3, scope: !11)
!611 = !DILocation(line: 53, column: 12, scope: !11)
!612 = !DILocation(line: 53, column: 3, scope: !11)
!613 = !DILocation(line: 54, column: 12, scope: !11)
!614 = !DILocation(line: 54, column: 3, scope: !11)
!615 = !DILocation(line: 59, column: 8, scope: !11)
!616 = !DILocation(line: 59, column: 22, scope: !11)
!617 = !DILocation(line: 60, column: 8, scope: !11)
!618 = !{!593, !594, i64 16}
!619 = !DILocation(line: 60, column: 26, scope: !11)
!620 = !DILocation(line: 59, column: 32, scope: !11)
!621 = !DILocation(line: 61, column: 8, scope: !11)
!622 = !{!593, !594, i64 12}
!623 = !DILocation(line: 60, column: 32, scope: !11)
!624 = !DILocation(line: 59, column: 5, scope: !11)
!625 = !DILocation(line: 58, column: 6, scope: !11)
!626 = !{!593, !597, i64 24}
!627 = !DILocation(line: 58, column: 13, scope: !11)
!628 = !{!595, !595, i64 0}
!629 = !DILocation(line: 66, column: 10, scope: !630)
!630 = distinct !DILexicalBlock(scope: !11, file: !1, line: 66, column: 7)
!631 = !{!593, !594, i64 4}
!632 = !DILocation(line: 66, column: 7, scope: !630)
!633 = !DILocation(line: 66, column: 28, scope: !630)
!634 = !DILocation(line: 66, column: 44, scope: !630)
!635 = !DILocation(line: 66, column: 17, scope: !630)
!636 = !DILocation(line: 66, column: 14, scope: !630)
!637 = !DILocation(line: 68, column: 79, scope: !638)
!638 = distinct !DILexicalBlock(scope: !630, file: !1, line: 67, column: 3)
!639 = !DILocation(line: 66, column: 7, scope: !11)
!640 = !DILocation(line: 68, column: 5, scope: !638)
!641 = !DILocation(line: 69, column: 5, scope: !638)
!642 = !DILocation(line: 73, column: 25, scope: !11)
!643 = !DILocation(line: 73, column: 15, scope: !11)
!644 = !DILocation(line: 76, column: 11, scope: !11)
!645 = !DILocation(line: 76, column: 3, scope: !11)
!646 = !DILocation(line: 83, column: 3, scope: !11)
!647 = !DILocation(line: 100, column: 28, scope: !35)
!648 = !DILocation(line: 102, column: 12, scope: !649)
!649 = distinct !DILexicalBlock(scope: !35, file: !1, line: 102, column: 7)
!650 = !DILocation(line: 102, column: 10, scope: !649)
!651 = !DILocation(line: 102, column: 36, scope: !649)
!652 = !DILocation(line: 102, column: 7, scope: !35)
!653 = !DILocation(line: 104, column: 5, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !1, line: 103, column: 3)
!655 = !DILocation(line: 105, column: 5, scope: !654)
!656 = !DILocation(line: 107, column: 1, scope: !35)
!657 = !DILocation(line: 120, column: 15, scope: !658)
!658 = distinct !DILexicalBlock(scope: !42, file: !1, line: 120, column: 7)
!659 = !DILocation(line: 120, column: 7, scope: !658)
!660 = !DILocation(line: 120, column: 7, scope: !42)
!661 = !DILocation(line: 122, column: 5, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !1, line: 121, column: 3)
!663 = !DILocation(line: 123, column: 5, scope: !662)
!664 = !DILocation(line: 125, column: 1, scope: !42)
