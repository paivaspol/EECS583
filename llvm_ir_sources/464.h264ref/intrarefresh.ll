; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/intrarefresh.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@NumberOfMBs = internal unnamed_addr global i32 0, align 4
@NumberIntraPerPicture = internal unnamed_addr global i32 0, align 4
@RefreshPattern = internal unnamed_addr global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"RandomIntraInit: RefreshPattern\00", align 1
@IntraMBs = internal unnamed_addr global i32* null, align 8
@.str1 = private unnamed_addr constant [26 x i8] c"RandomIntraInit: IntraMBs\00", align 1
@WalkAround = internal unnamed_addr global i32 0, align 4
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
define void @RandomIntraInit(i32 %xsize, i32 %ysize, i32 %refresh) #0 {
  tail call void @llvm.dbg.value(metadata i32 %xsize, i64 0, metadata !16, metadata !586), !dbg !587
  tail call void @llvm.dbg.value(metadata i32 %ysize, i64 0, metadata !17, metadata !586), !dbg !588
  tail call void @llvm.dbg.value(metadata i32 %refresh, i64 0, metadata !18, metadata !586), !dbg !589
  tail call void @srand(i32 1) #5, !dbg !590
  %1 = mul nsw i32 %ysize, %xsize, !dbg !591
  store i32 %1, i32* @NumberOfMBs, align 4, !dbg !592, !tbaa !593
  store i32 %refresh, i32* @NumberIntraPerPicture, align 4, !dbg !597, !tbaa !593
  %2 = sext i32 %1 to i64, !dbg !598
  %3 = shl nsw i64 %2, 2, !dbg !599
  %4 = tail call i8* @malloc(i64 %3) #5, !dbg !600
  store i8* %4, i8** bitcast (i32** @RefreshPattern to i8**), align 8, !dbg !601, !tbaa !602
  %5 = icmp eq i8* %4, null, !dbg !604
  br i1 %5, label %6, label %7, !dbg !606

; <label>:6                                       ; preds = %0
  tail call void @no_mem_exit(i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0)) #5, !dbg !607
  br label %7, !dbg !607

; <label>:7                                       ; preds = %6, %0
  %8 = sext i32 %refresh to i64, !dbg !608
  %9 = shl nsw i64 %8, 2, !dbg !609
  %10 = tail call i8* @malloc(i64 %9) #5, !dbg !610
  store i8* %10, i8** bitcast (i32** @IntraMBs to i8**), align 8, !dbg !611, !tbaa !602
  %11 = icmp eq i8* %10, null, !dbg !612
  br i1 %11, label %12, label %.preheader2, !dbg !614

; <label>:12                                      ; preds = %7
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !615
  br label %.preheader2, !dbg !615

.preheader2:                                      ; preds = %12, %7
  %13 = load i32* @NumberOfMBs, align 4, !dbg !616, !tbaa !593
  %14 = icmp sgt i32 %13, 0, !dbg !619
  br i1 %14, label %.lr.ph, label %._crit_edge, !dbg !620

.lr.ph:                                           ; preds = %.preheader2
  %15 = load i32** @RefreshPattern, align 8, !dbg !621, !tbaa !602
  br label %17, !dbg !620

.preheader1:                                      ; preds = %17
  %16 = icmp sgt i32 %19, 0, !dbg !622
  br i1 %16, label %.preheader, label %._crit_edge, !dbg !625

; <label>:17                                      ; preds = %.lr.ph, %17
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %18 = getelementptr inbounds i32* %15, i64 %indvars.iv, !dbg !621
  store i32 -1, i32* %18, align 4, !dbg !626, !tbaa !593
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !620
  %19 = load i32* @NumberOfMBs, align 4, !dbg !616, !tbaa !593
  %20 = sext i32 %19 to i64, !dbg !619
  %21 = icmp slt i64 %indvars.iv.next, %20, !dbg !619
  br i1 %21, label %17, label %.preheader1, !dbg !620

.preheader:                                       ; preds = %.preheader1, %31
  %i.13 = phi i32 [ %32, %31 ], [ 0, %.preheader1 ]
  br label %22, !dbg !627

; <label>:22                                      ; preds = %.preheader, %22
  %23 = tail call i32 @rand() #5, !dbg !627
  %24 = load i32* @NumberOfMBs, align 4, !dbg !630, !tbaa !593
  %25 = srem i32 %23, %24, !dbg !631
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !20, metadata !586), !dbg !632
  %26 = sext i32 %25 to i64, !dbg !633
  %27 = load i32** @RefreshPattern, align 8, !dbg !633, !tbaa !602
  %28 = getelementptr inbounds i32* %27, i64 %26, !dbg !633
  %29 = load i32* %28, align 4, !dbg !633, !tbaa !593
  %30 = icmp eq i32 %29, -1, !dbg !634
  br i1 %30, label %31, label %22, !dbg !635

; <label>:31                                      ; preds = %22
  store i32 %i.13, i32* %28, align 4, !dbg !636, !tbaa !593
  %32 = add nuw nsw i32 %i.13, 1, !dbg !637
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !19, metadata !586), !dbg !638
  %33 = load i32* @NumberOfMBs, align 4, !dbg !639, !tbaa !593
  %34 = icmp slt i32 %32, %33, !dbg !622
  br i1 %34, label %.preheader, label %._crit_edge, !dbg !625

._crit_edge:                                      ; preds = %31, %.preheader2, %.preheader1
  ret void, !dbg !640
}

; Function Attrs: optsize
declare void @srand(i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #1

; Function Attrs: optsize
declare i32 @rand() #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @RandomIntra(i32 %mb) #3 {
  tail call void @llvm.dbg.value(metadata i32 %mb, i64 0, metadata !25, metadata !586), !dbg !641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !26, metadata !586), !dbg !642
  %1 = load i32* @NumberIntraPerPicture, align 4, !dbg !643, !tbaa !593
  %2 = icmp sgt i32 %1, 0, !dbg !646
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !647

.lr.ph:                                           ; preds = %0
  %3 = load i32** @IntraMBs, align 8, !dbg !648, !tbaa !602
  %4 = sext i32 %1 to i64, !dbg !647
  br label %7, !dbg !647

; <label>:5                                       ; preds = %7
  %6 = icmp slt i64 %indvars.iv.next, %4, !dbg !646
  br i1 %6, label %7, label %._crit_edge, !dbg !647

; <label>:7                                       ; preds = %.lr.ph, %5
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %5 ]
  %8 = getelementptr inbounds i32* %3, i64 %indvars.iv, !dbg !648
  %9 = load i32* %8, align 4, !dbg !648, !tbaa !593
  %10 = icmp eq i32 %9, %mb, !dbg !650
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !647
  br i1 %10, label %._crit_edge, label %5, !dbg !651

._crit_edge:                                      ; preds = %7, %5, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %7 ], [ 0, %5 ]
  ret i32 %.0, !dbg !652
}

; Function Attrs: nounwind optsize ssp uwtable
define void @RandomIntraNewPicture() #0 {
  %1 = load i32* @NumberIntraPerPicture, align 4, !dbg !653, !tbaa !593
  %2 = load i32* @WalkAround, align 4, !dbg !654, !tbaa !593
  %3 = add nsw i32 %2, %1, !dbg !654
  store i32 %3, i32* @WalkAround, align 4, !dbg !654, !tbaa !593
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !32, metadata !586), !dbg !655
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !31, metadata !586), !dbg !656
  %4 = icmp sgt i32 %1, 0, !dbg !657
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !660

.lr.ph:                                           ; preds = %0
  %5 = load i32** @RefreshPattern, align 8, !dbg !661, !tbaa !602
  %6 = load i32** @IntraMBs, align 8, !dbg !662, !tbaa !602
  br label %7, !dbg !660

; <label>:7                                       ; preds = %.lr.ph, %7
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %7 ]
  %i.01 = phi i32 [ %3, %.lr.ph ], [ %14, %7 ]
  %8 = load i32* @NumberOfMBs, align 4, !dbg !663, !tbaa !593
  %9 = srem i32 %i.01, %8, !dbg !664
  %10 = sext i32 %9 to i64, !dbg !661
  %11 = getelementptr inbounds i32* %5, i64 %10, !dbg !661
  %12 = load i32* %11, align 4, !dbg !661, !tbaa !593
  %13 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !662
  store i32 %12, i32* %13, align 4, !dbg !665, !tbaa !593
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !660
  %14 = add nsw i32 %i.01, 1, !dbg !666
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !31, metadata !586), !dbg !656
  %15 = load i32* @NumberIntraPerPicture, align 4, !dbg !667, !tbaa !593
  %16 = sext i32 %15 to i64, !dbg !657
  %17 = icmp slt i64 %indvars.iv.next, %16, !dbg !657
  br i1 %17, label %7, label %._crit_edge, !dbg !660

._crit_edge:                                      ; preds = %7, %0
  ret void, !dbg !668
}

; Function Attrs: nounwind optsize ssp uwtable
define void @RandomIntraUninit() #0 {
  %1 = load i8** bitcast (i32** @RefreshPattern to i8**), align 8, !dbg !669, !tbaa !602
  tail call void @free(i8* %1) #6, !dbg !670
  %2 = load i8** bitcast (i32** @IntraMBs to i8**), align 8, !dbg !671, !tbaa !602
  tail call void @free(i8* %2) #6, !dbg !672
  ret void, !dbg !673
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!582, !583, !584}
!llvm.ident = !{!585}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !10, globals: !35, imports: !34)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/intrarefresh.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !{!11, !21, !27, !33}
!11 = !DISubprogram(name: "RandomIntraInit", scope: !1, file: !1, line: 43, type: !12, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32)* @RandomIntraInit, variables: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !14, !14}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19, !20}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xsize", arg: 1, scope: !11, file: !1, line: 43, type: !14)
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ysize", arg: 2, scope: !11, file: !1, line: 43, type: !14)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "refresh", arg: 3, scope: !11, file: !1, line: 43, type: !14)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !11, file: !1, line: 45, type: !14)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !11, file: !1, line: 45, type: !14)
!21 = !DISubprogram(name: "RandomIntra", scope: !1, file: !1, line: 105, type: !22, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @RandomIntra, variables: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!14, !14}
!24 = !{!25, !26}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mb", arg: 1, scope: !21, file: !1, line: 105, type: !14)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !21, file: !1, line: 107, type: !14)
!27 = !DISubprogram(name: "RandomIntraNewPicture", scope: !1, file: !1, line: 128, type: !28, isLocal: false, isDefinition: true, scopeLine: 129, isOptimized: true, function: void ()* @RandomIntraNewPicture, variables: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{null}
!30 = !{!31, !32}
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !27, file: !1, line: 130, type: !14)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !27, file: !1, line: 130, type: !14)
!33 = !DISubprogram(name: "RandomIntraUninit", scope: !1, file: !1, line: 137, type: !28, isLocal: false, isDefinition: true, scopeLine: 138, isOptimized: true, function: void ()* @RandomIntraUninit, variables: !34)
!34 = !{}
!35 = !{!36, !233, !234, !235, !236, !237, !240, !242, !244, !245, !246, !247, !248, !287, !382, !383, !384, !386, !387, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !406, !407, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !423, !427, !428, !429, !430, !431, !432, !435, !438, !439, !440, !441, !444, !447, !458, !500, !501, !502, !503, !504, !561, !562, !563, !564, !565, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!36 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !37, line: 558, type: !38, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!37 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !37, line: 484, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 475, size: 6592, align: 64, elements: !41)
!41 = !{!42, !43, !44, !228, !229, !231, !232}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !40, file: !37, line: 477, baseType: !14, size: 32, align: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !40, file: !37, line: 478, baseType: !14, size: 32, align: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !40, file: !37, line: 479, baseType: !45, size: 6400, align: 64, offset: 64)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 6400, align: 64, elements: !226)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !37, line: 471, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 443, size: 1216, align: 64, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !135, !174, !201, !210, !211, !212, !213, !214, !215, !216, !217, !218, !223}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !48, file: !37, line: 445, baseType: !14, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !48, file: !37, line: 446, baseType: !14, size: 32, align: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !48, file: !37, line: 447, baseType: !14, size: 32, align: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !48, file: !37, line: 448, baseType: !14, size: 32, align: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !48, file: !37, line: 449, baseType: !14, size: 32, align: 32, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !48, file: !37, line: 450, baseType: !14, size: 32, align: 32, offset: 160)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !48, file: !37, line: 451, baseType: !57, size: 64, align: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !37, line: 440, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !37, line: 430, size: 960, align: 64, elements: !60)
!60 = !{!61, !81, !107}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !59, file: !37, line: 433, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !37, line: 427, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 411, size: 384, align: 64, elements: !65)
!65 = !{!66, !67, !68, !72, !73, !74, !75, !76, !77, !78, !80}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !64, file: !37, line: 413, baseType: !14, size: 32, align: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !64, file: !37, line: 414, baseType: !14, size: 32, align: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !64, file: !37, line: 415, baseType: !69, size: 8, align: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !70, line: 30, baseType: !71)
!70 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!71 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !64, file: !37, line: 416, baseType: !14, size: 32, align: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !64, file: !37, line: 417, baseType: !14, size: 32, align: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !64, file: !37, line: 418, baseType: !69, size: 8, align: 8, offset: 160)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !64, file: !37, line: 420, baseType: !69, size: 8, align: 8, offset: 168)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !64, file: !37, line: 421, baseType: !14, size: 32, align: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !64, file: !37, line: 422, baseType: !14, size: 32, align: 32, offset: 224)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !64, file: !37, line: 424, baseType: !79, size: 64, align: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !64, file: !37, line: 425, baseType: !14, size: 32, align: 32, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !59, file: !37, line: 434, baseType: !82, size: 832, align: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !37, line: 226, baseType: !83)
!83 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 207, size: 832, align: 64, elements: !84)
!84 = !{!85, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !83, file: !37, line: 209, baseType: !86, size: 32, align: 32)
!86 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !83, file: !37, line: 209, baseType: !86, size: 32, align: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !83, file: !37, line: 210, baseType: !86, size: 32, align: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !83, file: !37, line: 211, baseType: !86, size: 32, align: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !83, file: !37, line: 212, baseType: !86, size: 32, align: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !83, file: !37, line: 213, baseType: !79, size: 64, align: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !83, file: !37, line: 214, baseType: !93, size: 64, align: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !83, file: !37, line: 217, baseType: !86, size: 32, align: 32, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !83, file: !37, line: 217, baseType: !86, size: 32, align: 32, offset: 352)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !83, file: !37, line: 218, baseType: !86, size: 32, align: 32, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !83, file: !37, line: 219, baseType: !86, size: 32, align: 32, offset: 416)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !83, file: !37, line: 220, baseType: !86, size: 32, align: 32, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !83, file: !37, line: 221, baseType: !79, size: 64, align: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !83, file: !37, line: 222, baseType: !93, size: 64, align: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !83, file: !37, line: 223, baseType: !14, size: 32, align: 32, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !83, file: !37, line: 223, baseType: !14, size: 32, align: 32, offset: 672)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !83, file: !37, line: 224, baseType: !14, size: 32, align: 32, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !83, file: !37, line: 224, baseType: !14, size: 32, align: 32, offset: 736)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !83, file: !37, line: 225, baseType: !14, size: 32, align: 32, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !83, file: !37, line: 225, baseType: !14, size: 32, align: 32, offset: 800)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !59, file: !37, line: 436, baseType: !108, size: 64, align: 64, offset: 896)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!14, !111, !134}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !37, line: 348, baseType: !113)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !37, line: 327, size: 384, align: 64, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !127}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !37, line: 329, baseType: !14, size: 32, align: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !113, file: !37, line: 330, baseType: !14, size: 32, align: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !113, file: !37, line: 331, baseType: !14, size: 32, align: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !113, file: !37, line: 332, baseType: !14, size: 32, align: 32, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !113, file: !37, line: 333, baseType: !14, size: 32, align: 32, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !113, file: !37, line: 334, baseType: !86, size: 32, align: 32, offset: 160)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !113, file: !37, line: 335, baseType: !14, size: 32, align: 32, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !113, file: !37, line: 336, baseType: !14, size: 32, align: 32, offset: 224)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !113, file: !37, line: 344, baseType: !124, size: 64, align: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !14, !14, !93, !93}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !113, file: !37, line: 346, baseType: !128, size: 64, align: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !131, !132}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !37, line: 228, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !48, file: !37, line: 452, baseType: !136, size: 64, align: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !37, line: 268, baseType: !138)
!138 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 258, size: 12032, align: 64, elements: !139)
!139 = !{!140, !153, !158, !162, !166, !170, !171}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !138, file: !37, line: 260, baseType: !141, size: 4224, align: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 4224, align: 64, elements: !150)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !37, line: 238, baseType: !143)
!143 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 231, size: 128, align: 64, elements: !144)
!144 = !{!145, !147, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !143, file: !37, line: 233, baseType: !146, size: 16, align: 16)
!146 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !143, file: !37, line: 234, baseType: !71, size: 8, align: 8, offset: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !143, file: !37, line: 236, baseType: !149, size: 64, align: 64, offset: 64)
!149 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!150 = !{!151, !152}
!151 = !DISubrange(count: 3)
!152 = !DISubrange(count: 11)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !138, file: !37, line: 261, baseType: !154, size: 2304, align: 64, offset: 4224)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 2304, align: 64, elements: !155)
!155 = !{!156, !157}
!156 = !DISubrange(count: 2)
!157 = !DISubrange(count: 9)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !138, file: !37, line: 262, baseType: !159, size: 2560, align: 64, offset: 6528)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 2560, align: 64, elements: !160)
!160 = !{!156, !161}
!161 = !DISubrange(count: 10)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !138, file: !37, line: 263, baseType: !163, size: 1536, align: 64, offset: 9088)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 1536, align: 64, elements: !164)
!164 = !{!156, !165}
!165 = !DISubrange(count: 6)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !138, file: !37, line: 264, baseType: !167, size: 512, align: 64, offset: 10624)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 512, align: 64, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 4)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !138, file: !37, line: 265, baseType: !167, size: 512, align: 64, offset: 11136)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !138, file: !37, line: 266, baseType: !172, size: 384, align: 64, offset: 11648)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 384, align: 64, elements: !173)
!173 = !{!151}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !48, file: !37, line: 453, baseType: !175, size: 64, align: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !37, line: 293, baseType: !177)
!177 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 281, size: 97024, align: 64, elements: !178)
!178 = !{!179, !182, !183, !186, !189, !193, !194, !198, !199, !200}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !177, file: !37, line: 283, baseType: !180, size: 256, align: 64)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 256, align: 64, elements: !181)
!181 = !{!156}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !177, file: !37, line: 284, baseType: !167, size: 512, align: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !177, file: !37, line: 285, baseType: !184, size: 1536, align: 64, offset: 768)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 1536, align: 64, elements: !185)
!185 = !{!151, !169}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !177, file: !37, line: 286, baseType: !187, size: 5120, align: 64, offset: 2304)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 5120, align: 64, elements: !188)
!188 = !{!161, !169}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !177, file: !37, line: 287, baseType: !190, size: 19200, align: 64, offset: 7424)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 19200, align: 64, elements: !191)
!191 = !{!161, !192}
!192 = !DISubrange(count: 15)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !177, file: !37, line: 288, baseType: !190, size: 19200, align: 64, offset: 26624)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !177, file: !37, line: 289, baseType: !195, size: 6400, align: 64, offset: 45824)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 6400, align: 64, elements: !196)
!196 = !{!161, !197}
!197 = !DISubrange(count: 5)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !177, file: !37, line: 290, baseType: !195, size: 6400, align: 64, offset: 52224)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !177, file: !37, line: 291, baseType: !190, size: 19200, align: 64, offset: 58624)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !177, file: !37, line: 292, baseType: !190, size: 19200, align: 64, offset: 77824)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !48, file: !37, line: 456, baseType: !202, size: 64, align: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !37, line: 313, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !37, line: 308, size: 128, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !204, file: !37, line: 310, baseType: !14, size: 32, align: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !204, file: !37, line: 311, baseType: !14, size: 32, align: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !204, file: !37, line: 312, baseType: !209, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !48, file: !37, line: 458, baseType: !14, size: 32, align: 32, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !48, file: !37, line: 459, baseType: !93, size: 64, align: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !48, file: !37, line: 460, baseType: !93, size: 64, align: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !48, file: !37, line: 461, baseType: !93, size: 64, align: 64, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !48, file: !37, line: 462, baseType: !14, size: 32, align: 32, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !48, file: !37, line: 463, baseType: !93, size: 64, align: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !48, file: !37, line: 464, baseType: !93, size: 64, align: 64, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !48, file: !37, line: 465, baseType: !93, size: 64, align: 64, offset: 896)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !48, file: !37, line: 467, baseType: !219, size: 64, align: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !14}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !48, file: !37, line: 469, baseType: !224, size: 192, align: 32, offset: 1024)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, align: 32, elements: !225)
!225 = !{!151, !156}
!226 = !{!227}
!227 = !DISubrange(count: 100)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !40, file: !37, line: 480, baseType: !14, size: 32, align: 32, offset: 6464)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !40, file: !37, line: 481, baseType: !230, size: 32, align: 32, offset: 6496)
!230 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !40, file: !37, line: 482, baseType: !230, size: 32, align: 32, offset: 6528)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !40, file: !37, line: 483, baseType: !230, size: 32, align: 32, offset: 6560)
!233 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !37, line: 559, type: !38, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!234 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !37, line: 560, type: !38, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!235 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !37, line: 561, type: !38, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!236 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !37, line: 562, type: !38, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!237 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !37, line: 565, type: !238, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!240 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !37, line: 566, type: !241, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!242 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !37, line: 567, type: !243, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!244 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !37, line: 569, type: !86, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!245 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !37, line: 570, type: !86, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!246 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !37, line: 572, type: !14, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!247 = !DIGlobalVariable(name: "me_time", scope: !0, file: !37, line: 572, type: !14, isLocal: false, isDefinition: true, variable: i32* @me_time)
!248 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !37, line: 573, type: !249, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !251)
!251 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !263, !264, !265, !266, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !251, file: !4, line: 105, baseType: !222, size: 32, align: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !251, file: !4, line: 106, baseType: !86, size: 32, align: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !251, file: !4, line: 107, baseType: !86, size: 32, align: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !251, file: !4, line: 108, baseType: !222, size: 32, align: 32, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !251, file: !4, line: 110, baseType: !222, size: 32, align: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !251, file: !4, line: 111, baseType: !222, size: 32, align: 32, offset: 160)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !251, file: !4, line: 112, baseType: !260, size: 256, align: 32, offset: 192)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, align: 32, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !251, file: !4, line: 115, baseType: !222, size: 32, align: 32, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !251, file: !4, line: 116, baseType: !86, size: 32, align: 32, offset: 480)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !251, file: !4, line: 117, baseType: !86, size: 32, align: 32, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !251, file: !4, line: 119, baseType: !267, size: 256, align: 32, offset: 544)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 256, align: 32, elements: !261)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !251, file: !4, line: 121, baseType: !267, size: 256, align: 32, offset: 800)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !251, file: !4, line: 122, baseType: !267, size: 256, align: 32, offset: 1056)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !251, file: !4, line: 124, baseType: !222, size: 32, align: 32, offset: 1312)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !251, file: !4, line: 125, baseType: !86, size: 32, align: 32, offset: 1344)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !251, file: !4, line: 127, baseType: !86, size: 32, align: 32, offset: 1376)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !251, file: !4, line: 128, baseType: !79, size: 64, align: 64, offset: 1408)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !251, file: !4, line: 130, baseType: !14, size: 32, align: 32, offset: 1472)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !251, file: !4, line: 131, baseType: !14, size: 32, align: 32, offset: 1504)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !251, file: !4, line: 132, baseType: !222, size: 32, align: 32, offset: 1536)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !251, file: !4, line: 133, baseType: !86, size: 32, align: 32, offset: 1568)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !251, file: !4, line: 134, baseType: !14, size: 32, align: 32, offset: 1600)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !251, file: !4, line: 135, baseType: !14, size: 32, align: 32, offset: 1632)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !251, file: !4, line: 136, baseType: !14, size: 32, align: 32, offset: 1664)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !251, file: !4, line: 138, baseType: !14, size: 32, align: 32, offset: 1696)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !251, file: !4, line: 139, baseType: !14, size: 32, align: 32, offset: 1728)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !251, file: !4, line: 141, baseType: !222, size: 32, align: 32, offset: 1760)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !251, file: !4, line: 142, baseType: !222, size: 32, align: 32, offset: 1792)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !251, file: !4, line: 143, baseType: !222, size: 32, align: 32, offset: 1824)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !251, file: !4, line: 144, baseType: !222, size: 32, align: 32, offset: 1856)
!287 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !37, line: 574, type: !288, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !290)
!290 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !290, file: !4, line: 151, baseType: !222, size: 32, align: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !290, file: !4, line: 153, baseType: !86, size: 32, align: 32, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !290, file: !4, line: 154, baseType: !222, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !290, file: !4, line: 155, baseType: !222, size: 32, align: 32, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !290, file: !4, line: 156, baseType: !222, size: 32, align: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !290, file: !4, line: 157, baseType: !222, size: 32, align: 32, offset: 160)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !290, file: !4, line: 158, baseType: !86, size: 32, align: 32, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !290, file: !4, line: 159, baseType: !86, size: 32, align: 32, offset: 224)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !290, file: !4, line: 160, baseType: !86, size: 32, align: 32, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !290, file: !4, line: 162, baseType: !222, size: 32, align: 32, offset: 288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !290, file: !4, line: 163, baseType: !260, size: 256, align: 32, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !290, file: !4, line: 165, baseType: !86, size: 32, align: 32, offset: 576)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !290, file: !4, line: 166, baseType: !86, size: 32, align: 32, offset: 608)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !290, file: !4, line: 167, baseType: !86, size: 32, align: 32, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !290, file: !4, line: 168, baseType: !86, size: 32, align: 32, offset: 672)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !290, file: !4, line: 170, baseType: !86, size: 32, align: 32, offset: 704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !290, file: !4, line: 172, baseType: !222, size: 32, align: 32, offset: 736)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !290, file: !4, line: 173, baseType: !14, size: 32, align: 32, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !290, file: !4, line: 174, baseType: !14, size: 32, align: 32, offset: 800)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !290, file: !4, line: 175, baseType: !86, size: 32, align: 32, offset: 832)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !290, file: !4, line: 177, baseType: !313, size: 8192, align: 32, offset: 864)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8192, align: 32, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !290, file: !4, line: 178, baseType: !86, size: 32, align: 32, offset: 9056)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !290, file: !4, line: 179, baseType: !222, size: 32, align: 32, offset: 9088)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !290, file: !4, line: 180, baseType: !86, size: 32, align: 32, offset: 9120)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !290, file: !4, line: 181, baseType: !86, size: 32, align: 32, offset: 9152)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !290, file: !4, line: 182, baseType: !222, size: 32, align: 32, offset: 9184)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !290, file: !4, line: 184, baseType: !222, size: 32, align: 32, offset: 9216)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !290, file: !4, line: 185, baseType: !222, size: 32, align: 32, offset: 9248)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !290, file: !4, line: 186, baseType: !222, size: 32, align: 32, offset: 9280)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !290, file: !4, line: 187, baseType: !86, size: 32, align: 32, offset: 9312)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !290, file: !4, line: 188, baseType: !86, size: 32, align: 32, offset: 9344)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !290, file: !4, line: 189, baseType: !86, size: 32, align: 32, offset: 9376)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !290, file: !4, line: 190, baseType: !86, size: 32, align: 32, offset: 9408)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !290, file: !4, line: 191, baseType: !222, size: 32, align: 32, offset: 9440)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !290, file: !4, line: 192, baseType: !330, size: 7584, align: 32, offset: 9472)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !331)
!331 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !331, file: !4, line: 65, baseType: !222, size: 32, align: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !331, file: !4, line: 66, baseType: !86, size: 32, align: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !331, file: !4, line: 67, baseType: !86, size: 32, align: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !331, file: !4, line: 68, baseType: !86, size: 32, align: 32, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !331, file: !4, line: 69, baseType: !222, size: 32, align: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !331, file: !4, line: 70, baseType: !222, size: 32, align: 32, offset: 160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !331, file: !4, line: 71, baseType: !222, size: 32, align: 32, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !331, file: !4, line: 72, baseType: !86, size: 32, align: 32, offset: 224)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !331, file: !4, line: 73, baseType: !222, size: 32, align: 32, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !331, file: !4, line: 74, baseType: !222, size: 32, align: 32, offset: 288)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !331, file: !4, line: 75, baseType: !86, size: 32, align: 32, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !331, file: !4, line: 76, baseType: !86, size: 32, align: 32, offset: 352)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !331, file: !4, line: 77, baseType: !86, size: 32, align: 32, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !331, file: !4, line: 78, baseType: !222, size: 32, align: 32, offset: 416)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !331, file: !4, line: 79, baseType: !86, size: 32, align: 32, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !331, file: !4, line: 80, baseType: !86, size: 32, align: 32, offset: 480)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !331, file: !4, line: 81, baseType: !222, size: 32, align: 32, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !331, file: !4, line: 82, baseType: !86, size: 32, align: 32, offset: 544)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !331, file: !4, line: 83, baseType: !86, size: 32, align: 32, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !331, file: !4, line: 84, baseType: !222, size: 32, align: 32, offset: 608)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !331, file: !4, line: 85, baseType: !222, size: 32, align: 32, offset: 640)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !331, file: !4, line: 86, baseType: !355, size: 3296, align: 32, offset: 672)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !356)
!356 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !357)
!357 = !{!358, !359, !360, !361, !365, !366, !367, !368, !369, !370}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !356, file: !4, line: 50, baseType: !86, size: 32, align: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !356, file: !4, line: 51, baseType: !86, size: 32, align: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !356, file: !4, line: 52, baseType: !86, size: 32, align: 32, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !356, file: !4, line: 53, baseType: !362, size: 1024, align: 32, offset: 96)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 1024, align: 32, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !356, file: !4, line: 54, baseType: !362, size: 1024, align: 32, offset: 1120)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !356, file: !4, line: 55, baseType: !362, size: 1024, align: 32, offset: 2144)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !356, file: !4, line: 56, baseType: !86, size: 32, align: 32, offset: 3168)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !356, file: !4, line: 57, baseType: !86, size: 32, align: 32, offset: 3200)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !356, file: !4, line: 58, baseType: !86, size: 32, align: 32, offset: 3232)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !356, file: !4, line: 59, baseType: !86, size: 32, align: 32, offset: 3264)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !331, file: !4, line: 87, baseType: !222, size: 32, align: 32, offset: 3968)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !331, file: !4, line: 88, baseType: !355, size: 3296, align: 32, offset: 4000)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !331, file: !4, line: 90, baseType: !222, size: 32, align: 32, offset: 7296)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !331, file: !4, line: 91, baseType: !222, size: 32, align: 32, offset: 7328)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !331, file: !4, line: 92, baseType: !222, size: 32, align: 32, offset: 7360)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !331, file: !4, line: 93, baseType: !86, size: 32, align: 32, offset: 7392)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !331, file: !4, line: 94, baseType: !86, size: 32, align: 32, offset: 7424)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !331, file: !4, line: 95, baseType: !86, size: 32, align: 32, offset: 7456)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !331, file: !4, line: 96, baseType: !86, size: 32, align: 32, offset: 7488)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !331, file: !4, line: 97, baseType: !86, size: 32, align: 32, offset: 7520)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !331, file: !4, line: 98, baseType: !86, size: 32, align: 32, offset: 7552)
!382 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !37, line: 578, type: !14, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!383 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !37, line: 579, type: !14, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!384 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !37, line: 583, type: !385, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!386 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !37, line: 584, type: !385, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!387 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !37, line: 585, type: !388, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!389 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !37, line: 586, type: !14, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!390 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !37, line: 587, type: !14, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!391 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !37, line: 588, type: !14, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!392 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !37, line: 589, type: !14, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!393 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !37, line: 592, type: !238, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!394 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !37, line: 593, type: !238, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!395 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !37, line: 595, type: !241, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!396 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !37, line: 596, type: !241, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!397 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !37, line: 598, type: !238, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!398 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !37, line: 599, type: !241, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!399 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !37, line: 601, type: !238, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!400 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !37, line: 602, type: !241, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!401 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !37, line: 604, type: !402, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!406 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !37, line: 605, type: !403, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!407 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !37, line: 608, type: !408, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!409 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !37, line: 609, type: !408, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!410 = !DIGlobalVariable(name: "intras", scope: !0, file: !37, line: 610, type: !14, isLocal: false, isDefinition: true, variable: i32* @intras)
!411 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !37, line: 612, type: !14, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!412 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !37, line: 612, type: !14, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!413 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !37, line: 612, type: !14, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!414 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !37, line: 613, type: !14, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!415 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !37, line: 613, type: !14, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!416 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !37, line: 613, type: !14, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!417 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !37, line: 614, type: !14, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!418 = !DIGlobalVariable(name: "errortext", scope: !0, file: !37, line: 617, type: !419, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 2400, align: 8, elements: !421)
!420 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!421 = !{!422}
!422 = !DISubrange(count: 300)
!423 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !37, line: 620, type: !424, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8192, align: 32, elements: !425)
!425 = !{!426, !426}
!426 = !DISubrange(count: 16)
!427 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !37, line: 620, type: !424, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!428 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !37, line: 620, type: !424, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!429 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !37, line: 621, type: !424, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!430 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !37, line: 621, type: !424, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!431 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !37, line: 621, type: !424, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!432 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !37, line: 622, type: !433, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24576, align: 32, elements: !434)
!434 = !{!151, !426, !426}
!435 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !37, line: 623, type: !436, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, align: 32, elements: !437)
!437 = !{!156, !169, !169}
!438 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !37, line: 623, type: !436, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!439 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !37, line: 624, type: !436, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!440 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !37, line: 624, type: !436, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!441 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !37, line: 625, type: !442, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, align: 32, elements: !443)
!443 = !{!169, !169}
!444 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !37, line: 625, type: !445, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, align: 32, elements: !446)
!446 = !{!426}
!447 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !37, line: 1201, type: !448, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !37, line: 1190, baseType: !450)
!450 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 1182, size: 192, align: 32, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !450, file: !37, line: 1184, baseType: !14, size: 32, align: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !450, file: !37, line: 1185, baseType: !14, size: 32, align: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !450, file: !37, line: 1186, baseType: !14, size: 32, align: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !450, file: !37, line: 1187, baseType: !14, size: 32, align: 32, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !450, file: !37, line: 1188, baseType: !14, size: 32, align: 32, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !450, file: !37, line: 1189, baseType: !14, size: 32, align: 32, offset: 160)
!458 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !37, line: 1202, type: !459, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !37, line: 1177, baseType: !461)
!461 = !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 1145, size: 26880, align: 64, elements: !462)
!462 = !{!463, !465, !466, !467, !468, !469, !470, !471, !472, !474, !475, !476, !477, !478, !483, !484, !488, !489, !490, !491, !493, !494, !495, !496, !497, !498, !499}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !461, file: !37, line: 1147, baseType: !464, size: 64, align: 64)
!464 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !461, file: !37, line: 1149, baseType: !424, size: 8192, align: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !461, file: !37, line: 1150, baseType: !424, size: 8192, align: 32, offset: 8256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !461, file: !37, line: 1150, baseType: !424, size: 8192, align: 32, offset: 16448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !461, file: !37, line: 1151, baseType: !388, size: 64, align: 64, offset: 24640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !461, file: !37, line: 1152, baseType: !385, size: 64, align: 64, offset: 24704)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !461, file: !37, line: 1153, baseType: !14, size: 32, align: 32, offset: 24768)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !461, file: !37, line: 1155, baseType: !14, size: 32, align: 32, offset: 24800)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !461, file: !37, line: 1157, baseType: !473, size: 128, align: 32, offset: 24832)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, align: 32, elements: !168)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !461, file: !37, line: 1157, baseType: !473, size: 128, align: 32, offset: 24960)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !461, file: !37, line: 1158, baseType: !243, size: 64, align: 64, offset: 25088)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !461, file: !37, line: 1159, baseType: !445, size: 512, align: 32, offset: 25152)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !461, file: !37, line: 1160, baseType: !14, size: 32, align: 32, offset: 25664)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !461, file: !37, line: 1161, baseType: !479, size: 64, align: 64, offset: 25728)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !37, line: 62, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !481, line: 30, baseType: !482)
!481 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!482 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !461, file: !37, line: 1162, baseType: !14, size: 32, align: 32, offset: 25792)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !461, file: !37, line: 1163, baseType: !485, size: 64, align: 64, offset: 25856)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !461, file: !37, line: 1164, baseType: !485, size: 64, align: 64, offset: 25920)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !461, file: !37, line: 1165, baseType: !485, size: 64, align: 64, offset: 25984)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !461, file: !37, line: 1166, baseType: !485, size: 64, align: 64, offset: 26048)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !461, file: !37, line: 1167, baseType: !492, size: 512, align: 16, offset: 26112)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 512, align: 16, elements: !437)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !461, file: !37, line: 1168, baseType: !14, size: 32, align: 32, offset: 26624)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !461, file: !37, line: 1169, baseType: !14, size: 32, align: 32, offset: 26656)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !461, file: !37, line: 1171, baseType: !14, size: 32, align: 32, offset: 26688)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !461, file: !37, line: 1172, baseType: !14, size: 32, align: 32, offset: 26720)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !461, file: !37, line: 1174, baseType: !14, size: 32, align: 32, offset: 26752)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !461, file: !37, line: 1175, baseType: !14, size: 32, align: 32, offset: 26784)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !461, file: !37, line: 1176, baseType: !14, size: 32, align: 32, offset: 26816)
!500 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !37, line: 1203, type: !460, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!501 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !37, line: 1203, type: !460, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!502 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !37, line: 1204, type: !460, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!503 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !37, line: 1204, type: !460, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!504 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !37, line: 1230, type: !505, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !507, line: 153, baseType: !508)
!507 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !507, line: 122, size: 1216, align: 64, elements: !509)
!509 = !{!510, !512, !513, !514, !515, !516, !521, !522, !523, !527, !532, !541, !547, !548, !551, !552, !554, !558, !559, !560}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !508, file: !507, line: 123, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !508, file: !507, line: 124, baseType: !14, size: 32, align: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !508, file: !507, line: 125, baseType: !14, size: 32, align: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !508, file: !507, line: 126, baseType: !405, size: 16, align: 16, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !508, file: !507, line: 127, baseType: !405, size: 16, align: 16, offset: 144)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !508, file: !507, line: 128, baseType: !517, size: 128, align: 64, offset: 192)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !507, line: 88, size: 128, align: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !517, file: !507, line: 89, baseType: !511, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !517, file: !507, line: 90, baseType: !14, size: 32, align: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !508, file: !507, line: 129, baseType: !14, size: 32, align: 32, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !508, file: !507, line: 132, baseType: !9, size: 64, align: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !508, file: !507, line: 133, baseType: !524, size: 64, align: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!14, !9}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !508, file: !507, line: 134, baseType: !528, size: 64, align: 64, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!14, !9, !531, !14}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !508, file: !507, line: 135, baseType: !533, size: 64, align: 64, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !9, !536, !14}
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !507, line: 77, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !538, line: 71, baseType: !539)
!538 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !540, line: 46, baseType: !482)
!540 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !508, file: !507, line: 136, baseType: !542, size: 64, align: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!14, !9, !545, !14}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !508, file: !507, line: 139, baseType: !517, size: 128, align: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !508, file: !507, line: 140, baseType: !549, size: 64, align: 64, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !507, line: 94, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !508, file: !507, line: 141, baseType: !14, size: 32, align: 32, offset: 896)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !508, file: !507, line: 144, baseType: !553, size: 24, align: 8, offset: 928)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 24, align: 8, elements: !173)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !508, file: !507, line: 145, baseType: !555, size: 8, align: 8, offset: 952)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 8, align: 8, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 1)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !508, file: !507, line: 148, baseType: !517, size: 128, align: 64, offset: 960)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !508, file: !507, line: 151, baseType: !14, size: 32, align: 32, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !508, file: !507, line: 152, baseType: !536, size: 64, align: 64, offset: 1152)
!561 = !DIGlobalVariable(name: "p_log", scope: !0, file: !37, line: 1231, type: !505, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!562 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !37, line: 1232, type: !505, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!563 = !DIGlobalVariable(name: "p_in", scope: !0, file: !37, line: 1233, type: !14, isLocal: false, isDefinition: true, variable: i32* @p_in)
!564 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !37, line: 1234, type: !14, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!565 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !37, line: 1237, type: !566, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, align: 32, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 20)
!569 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !37, line: 1238, type: !566, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!570 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !37, line: 1239, type: !566, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!571 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !37, line: 1240, type: !566, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!572 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !37, line: 1241, type: !566, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!573 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !37, line: 1242, type: !566, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!574 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !37, line: 1456, type: !14, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!575 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !37, line: 1465, type: !14, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!576 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !37, line: 1466, type: !14, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!577 = !DIGlobalVariable(name: "RefreshPattern", scope: !0, file: !1, line: 22, type: !93, isLocal: true, isDefinition: true, variable: i32** @RefreshPattern)
!578 = !DIGlobalVariable(name: "IntraMBs", scope: !0, file: !1, line: 23, type: !93, isLocal: true, isDefinition: true, variable: i32** @IntraMBs)
!579 = !DIGlobalVariable(name: "NumberIntraPerPicture", scope: !0, file: !1, line: 26, type: !14, isLocal: true, isDefinition: true, variable: i32* @NumberIntraPerPicture)
!580 = !DIGlobalVariable(name: "NumberOfMBs", scope: !0, file: !1, line: 25, type: !14, isLocal: true, isDefinition: true, variable: i32* @NumberOfMBs)
!581 = !DIGlobalVariable(name: "WalkAround", scope: !0, file: !1, line: 24, type: !14, isLocal: true, isDefinition: true, variable: i32* @WalkAround)
!582 = !{i32 2, !"Dwarf Version", i32 2}
!583 = !{i32 2, !"Debug Info Version", i32 700000003}
!584 = !{i32 1, !"PIC Level", i32 2}
!585 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!586 = !DIExpression()
!587 = !DILocation(line: 43, column: 26, scope: !11)
!588 = !DILocation(line: 43, column: 37, scope: !11)
!589 = !DILocation(line: 43, column: 48, scope: !11)
!590 = !DILocation(line: 50, column: 3, scope: !11)
!591 = !DILocation(line: 52, column: 23, scope: !11)
!592 = !DILocation(line: 52, column: 15, scope: !11)
!593 = !{!594, !594, i64 0}
!594 = !{!"int", !595, i64 0}
!595 = !{!"omnipotent char", !596, i64 0}
!596 = !{!"Simple C/C++ TBAA"}
!597 = !DILocation(line: 53, column: 25, scope: !11)
!598 = !DILocation(line: 58, column: 43, scope: !11)
!599 = !DILocation(line: 58, column: 41, scope: !11)
!600 = !DILocation(line: 58, column: 20, scope: !11)
!601 = !DILocation(line: 58, column: 18, scope: !11)
!602 = !{!603, !603, i64 0}
!603 = !{!"any pointer", !595, i64 0}
!604 = !DILocation(line: 60, column: 22, scope: !605)
!605 = distinct !DILexicalBlock(scope: !11, file: !1, line: 60, column: 7)
!606 = !DILocation(line: 60, column: 7, scope: !11)
!607 = !DILocation(line: 60, column: 31, scope: !605)
!608 = !DILocation(line: 65, column: 37, scope: !11)
!609 = !DILocation(line: 65, column: 35, scope: !11)
!610 = !DILocation(line: 65, column: 14, scope: !11)
!611 = !DILocation(line: 65, column: 12, scope: !11)
!612 = !DILocation(line: 67, column: 16, scope: !613)
!613 = distinct !DILexicalBlock(scope: !11, file: !1, line: 67, column: 7)
!614 = !DILocation(line: 67, column: 7, scope: !11)
!615 = !DILocation(line: 67, column: 25, scope: !613)
!616 = !DILocation(line: 69, column: 16, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 69, column: 3)
!618 = distinct !DILexicalBlock(scope: !11, file: !1, line: 69, column: 3)
!619 = !DILocation(line: 69, column: 15, scope: !617)
!620 = !DILocation(line: 69, column: 3, scope: !618)
!621 = !DILocation(line: 70, column: 5, scope: !617)
!622 = !DILocation(line: 72, column: 14, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !1, line: 72, column: 3)
!624 = distinct !DILexicalBlock(scope: !11, file: !1, line: 72, column: 3)
!625 = !DILocation(line: 72, column: 3, scope: !624)
!626 = !DILocation(line: 70, column: 23, scope: !617)
!627 = !DILocation(line: 79, column: 13, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !1, line: 75, column: 5)
!629 = distinct !DILexicalBlock(scope: !623, file: !1, line: 73, column: 3)
!630 = !DILocation(line: 79, column: 22, scope: !628)
!631 = !DILocation(line: 79, column: 20, scope: !628)
!632 = !DILocation(line: 45, column: 10, scope: !11)
!633 = !DILocation(line: 81, column: 14, scope: !629)
!634 = !DILocation(line: 81, column: 35, scope: !629)
!635 = !DILocation(line: 81, column: 5, scope: !628)
!636 = !DILocation(line: 82, column: 26, scope: !629)
!637 = !DILocation(line: 72, column: 29, scope: !623)
!638 = !DILocation(line: 45, column: 7, scope: !11)
!639 = !DILocation(line: 72, column: 15, scope: !623)
!640 = !DILocation(line: 88, column: 1, scope: !11)
!641 = !DILocation(line: 105, column: 22, scope: !21)
!642 = !DILocation(line: 107, column: 7, scope: !21)
!643 = !DILocation(line: 109, column: 15, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 109, column: 3)
!645 = distinct !DILexicalBlock(scope: !21, file: !1, line: 109, column: 3)
!646 = !DILocation(line: 109, column: 14, scope: !644)
!647 = !DILocation(line: 109, column: 3, scope: !645)
!648 = !DILocation(line: 110, column: 9, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !1, line: 110, column: 9)
!650 = !DILocation(line: 110, column: 21, scope: !649)
!651 = !DILocation(line: 110, column: 9, scope: !644)
!652 = !DILocation(line: 113, column: 1, scope: !21)
!653 = !DILocation(line: 132, column: 17, scope: !27)
!654 = !DILocation(line: 132, column: 14, scope: !27)
!655 = !DILocation(line: 130, column: 10, scope: !27)
!656 = !DILocation(line: 130, column: 7, scope: !27)
!657 = !DILocation(line: 133, column: 27, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 133, column: 3)
!659 = distinct !DILexicalBlock(scope: !27, file: !1, line: 133, column: 3)
!660 = !DILocation(line: 133, column: 3, scope: !659)
!661 = !DILocation(line: 134, column: 19, scope: !658)
!662 = !DILocation(line: 134, column: 5, scope: !658)
!663 = !DILocation(line: 134, column: 37, scope: !658)
!664 = !DILocation(line: 134, column: 36, scope: !658)
!665 = !DILocation(line: 134, column: 17, scope: !658)
!666 = !DILocation(line: 133, column: 57, scope: !658)
!667 = !DILocation(line: 133, column: 28, scope: !658)
!668 = !DILocation(line: 135, column: 1, scope: !27)
!669 = !DILocation(line: 139, column: 8, scope: !33)
!670 = !DILocation(line: 139, column: 3, scope: !33)
!671 = !DILocation(line: 140, column: 8, scope: !33)
!672 = !DILocation(line: 140, column: 3, scope: !33)
!673 = !DILocation(line: 141, column: 1, scope: !33)
