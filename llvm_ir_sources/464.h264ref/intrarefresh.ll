; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

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
define void @RandomIntraInit(i32 %xsize, i32 %ysize, i32 %refresh) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %xsize}, i64 0, metadata !16), !dbg !575
  tail call void @llvm.dbg.value(metadata !{i32 %ysize}, i64 0, metadata !17), !dbg !575
  tail call void @llvm.dbg.value(metadata !{i32 %refresh}, i64 0, metadata !18), !dbg !575
  tail call void @srand(i32 1) #5, !dbg !576
  %mul = mul nsw i32 %ysize, %xsize, !dbg !577
  store i32 %mul, i32* @NumberOfMBs, align 4, !dbg !577, !tbaa !578
  store i32 %refresh, i32* @NumberIntraPerPicture, align 4, !dbg !581, !tbaa !578
  %conv = sext i32 %mul to i64, !dbg !582
  %mul1 = shl nsw i64 %conv, 2, !dbg !582
  %call = tail call noalias i8* @malloc(i64 %mul1) #5, !dbg !582
  %0 = bitcast i8* %call to i32*, !dbg !582
  store i32* %0, i32** @RefreshPattern, align 8, !dbg !582, !tbaa !583
  %cmp = icmp eq i8* %call, null, !dbg !584
  br i1 %cmp, label %if.then, label %if.end, !dbg !584

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0)) #5, !dbg !584
  br label %if.end, !dbg !584

if.end:                                           ; preds = %if.then, %entry
  %conv3 = sext i32 %refresh to i64, !dbg !585
  %mul4 = shl nsw i64 %conv3, 2, !dbg !585
  %call5 = tail call noalias i8* @malloc(i64 %mul4) #5, !dbg !585
  %1 = bitcast i8* %call5 to i32*, !dbg !585
  store i32* %1, i32** @IntraMBs, align 8, !dbg !585, !tbaa !583
  %cmp6 = icmp eq i8* %call5, null, !dbg !586
  br i1 %cmp6, label %if.then8, label %for.cond.preheader, !dbg !586

if.then8:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !586
  br label %for.cond.preheader, !dbg !586

for.cond.preheader:                               ; preds = %if.end, %if.then8
  %2 = load i32* @NumberOfMBs, align 4, !dbg !587, !tbaa !578
  %cmp1035 = icmp sgt i32 %2, 0, !dbg !587
  br i1 %cmp1035, label %for.body.lr.ph, label %for.end25, !dbg !587

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load i32** @RefreshPattern, align 8, !dbg !589, !tbaa !583
  br label %for.body, !dbg !587

for.cond12.preheader:                             ; preds = %for.body
  %cmp1333 = icmp sgt i32 %4, 0, !dbg !590
  br i1 %cmp1333, label %do.body.preheader, label %for.end25, !dbg !590

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv, !dbg !589
  store i32 -1, i32* %arrayidx, align 4, !dbg !589, !tbaa !578
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !587
  %4 = load i32* @NumberOfMBs, align 4, !dbg !587, !tbaa !578
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !587
  %cmp10 = icmp slt i32 %5, %4, !dbg !587
  br i1 %cmp10, label %for.body, label %for.cond12.preheader, !dbg !587

do.body.preheader:                                ; preds = %for.cond12.preheader, %do.end
  %i.134 = phi i32 [ %inc24, %do.end ], [ 0, %for.cond12.preheader ]
  br label %do.body, !dbg !592

do.body:                                          ; preds = %do.body.preheader, %do.body
  %call16 = tail call i32 @rand() #5, !dbg !592
  %6 = load i32* @NumberOfMBs, align 4, !dbg !592, !tbaa !578
  %rem = srem i32 %call16, %6, !dbg !592
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !20), !dbg !592
  %idxprom17 = sext i32 %rem to i64, !dbg !595
  %7 = load i32** @RefreshPattern, align 8, !dbg !595, !tbaa !583
  %arrayidx18 = getelementptr inbounds i32* %7, i64 %idxprom17, !dbg !595
  %8 = load i32* %arrayidx18, align 4, !dbg !595, !tbaa !578
  %cmp19 = icmp eq i32 %8, -1, !dbg !595
  br i1 %cmp19, label %do.end, label %do.body, !dbg !595

do.end:                                           ; preds = %do.body
  store i32 %i.134, i32* %arrayidx18, align 4, !dbg !596, !tbaa !578
  %inc24 = add nsw i32 %i.134, 1, !dbg !590
  tail call void @llvm.dbg.value(metadata !{i32 %inc24}, i64 0, metadata !19), !dbg !590
  %9 = load i32* @NumberOfMBs, align 4, !dbg !590, !tbaa !578
  %cmp13 = icmp slt i32 %inc24, %9, !dbg !590
  br i1 %cmp13, label %do.body.preheader, label %for.end25, !dbg !590

for.end25:                                        ; preds = %for.cond.preheader, %do.end, %for.cond12.preheader
  ret void, !dbg !597
}

; Function Attrs: nounwind optsize
declare void @srand(i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @rand() #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @RandomIntra(i32 %mb) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %mb}, i64 0, metadata !25), !dbg !598
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !26), !dbg !599
  %0 = load i32* @NumberIntraPerPicture, align 4, !dbg !599, !tbaa !578
  %cmp4 = icmp sgt i32 %0, 0, !dbg !599
  br i1 %cmp4, label %for.body.lr.ph, label %return, !dbg !599

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i32** @IntraMBs, align 8, !dbg !601, !tbaa !583
  br label %for.body, !dbg !599

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !599
  %cmp = icmp slt i32 %2, %0, !dbg !599
  br i1 %cmp, label %for.body, label %return, !dbg !599

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !601
  %3 = load i32* %arrayidx, align 4, !dbg !601, !tbaa !578
  %cmp1 = icmp eq i32 %3, %mb, !dbg !601
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !599
  br i1 %cmp1, label %return, label %for.cond, !dbg !601

return:                                           ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0, !dbg !602
}

; Function Attrs: nounwind optsize uwtable
define void @RandomIntraNewPicture() #0 {
entry:
  %0 = load i32* @NumberIntraPerPicture, align 4, !dbg !603, !tbaa !578
  %1 = load i32* @WalkAround, align 4, !dbg !603, !tbaa !578
  %add = add nsw i32 %1, %0, !dbg !603
  store i32 %add, i32* @WalkAround, align 4, !dbg !603, !tbaa !578
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !32), !dbg !604
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !31), !dbg !604
  %cmp7 = icmp sgt i32 %0, 0, !dbg !604
  br i1 %cmp7, label %for.body.lr.ph, label %for.end, !dbg !604

for.body.lr.ph:                                   ; preds = %entry
  %2 = load i32** @RefreshPattern, align 8, !dbg !606, !tbaa !583
  %3 = load i32** @IntraMBs, align 8, !dbg !606, !tbaa !583
  br label %for.body, !dbg !604

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %i.08 = phi i32 [ %add, %for.body.lr.ph ], [ %inc3, %for.body ]
  %4 = load i32* @NumberOfMBs, align 4, !dbg !606, !tbaa !578
  %rem = srem i32 %i.08, %4, !dbg !606
  %idxprom = sext i32 %rem to i64, !dbg !606
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !606
  %5 = load i32* %arrayidx, align 4, !dbg !606, !tbaa !578
  %arrayidx2 = getelementptr inbounds i32* %3, i64 %indvars.iv, !dbg !606
  store i32 %5, i32* %arrayidx2, align 4, !dbg !606, !tbaa !578
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !604
  %inc3 = add nsw i32 %i.08, 1, !dbg !604
  tail call void @llvm.dbg.value(metadata !{i32 %inc3}, i64 0, metadata !31), !dbg !604
  %6 = load i32* @NumberIntraPerPicture, align 4, !dbg !604, !tbaa !578
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !604
  %cmp = icmp slt i32 %7, %6, !dbg !604
  br i1 %cmp, label %for.body, label %for.end, !dbg !604

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !607
}

; Function Attrs: nounwind optsize uwtable
define void @RandomIntraUninit() #0 {
entry:
  %0 = load i32** @RefreshPattern, align 8, !dbg !608, !tbaa !583
  %1 = bitcast i32* %0 to i8*, !dbg !608
  tail call void @free(i8* %1) #5, !dbg !608
  %2 = load i32** @IntraMBs, align 8, !dbg !609, !tbaa !583
  %3 = bitcast i32* %2 to i8*, !dbg !609
  tail call void @free(i8* %3) #5, !dbg !609
  ret void, !dbg !610
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !34, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !21, metadata !27, metadata !33}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"RandomIntraInit", metadata !"RandomIntraInit", metadata !"", i32 43, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32)* @RandomIntraInit, null, null, metadata !15, i32 44} ; [ DW_TAG_subprogram ] [line 43] [def] [scope 44] [RandomIntraInit]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14, metadata !14, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!16 = metadata !{i32 786689, metadata !10, metadata !"xsize", metadata !11, i32 16777259, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xsize] [line 43]
!17 = metadata !{i32 786689, metadata !10, metadata !"ysize", metadata !11, i32 33554475, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ysize] [line 43]
!18 = metadata !{i32 786689, metadata !10, metadata !"refresh", metadata !11, i32 50331691, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [refresh] [line 43]
!19 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !11, i32 45, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 45]
!20 = metadata !{i32 786688, metadata !10, metadata !"pos", metadata !11, i32 45, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 45]
!21 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"RandomIntra", metadata !"RandomIntra", metadata !"", i32 105, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @RandomIntra, null, null, metadata !24, i32 106} ; [ DW_TAG_subprogram ] [line 105] [def] [scope 106] [RandomIntra]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !14, metadata !14}
!24 = metadata !{metadata !25, metadata !26}
!25 = metadata !{i32 786689, metadata !21, metadata !"mb", metadata !11, i32 16777321, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mb] [line 105]
!26 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !11, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 107]
!27 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"RandomIntraNewPicture", metadata !"RandomIntraNewPicture", metadata !"", i32 128, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @RandomIntraNewPicture, null, null, metadata !30, i32 129} ; [ DW_TAG_subprogram ] [line 128] [def] [scope 129] [RandomIntraNewPicture]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{null}
!30 = metadata !{metadata !31, metadata !32}
!31 = metadata !{i32 786688, metadata !27, metadata !"i", metadata !11, i32 130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 130]
!32 = metadata !{i32 786688, metadata !27, metadata !"j", metadata !11, i32 130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 130]
!33 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"RandomIntraUninit", metadata !"RandomIntraUninit", metadata !"", i32 137, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @RandomIntraUninit, null, null, metadata !8, i32 138} ; [ DW_TAG_subprogram ] [line 137] [def] [scope 138] [RandomIntraUninit]
!34 = metadata !{metadata !35, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !239, metadata !241, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !286, metadata !381, metadata !382, metadata !383, metadata !385, metadata !386, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !405, metadata !406, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !422, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !434, metadata !437, metadata !438, metadata !439, metadata !440, metadata !443, metadata !446, metadata !457, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574}
!35 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !36, i32 558, metadata !38, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!36 = metadata !{i32 786473, metadata !37}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!37 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!39 = metadata !{i32 786454, metadata !37, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!40 = metadata !{i32 786451, metadata !37, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !41, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !227, metadata !228, metadata !230, metadata !231}
!42 = metadata !{i32 786445, metadata !37, metadata !40, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !37, metadata !40, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!44 = metadata !{i32 786445, metadata !37, metadata !40, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !46, metadata !225, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!47 = metadata !{i32 786454, metadata !37, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !37, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !134, metadata !173, metadata !200, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !222}
!50 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!51 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!52 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!53 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!54 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!55 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!56 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !57} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!58 = metadata !{i32 786454, metadata !37, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!59 = metadata !{i32 786451, metadata !37, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !60, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !80, metadata !106}
!61 = metadata !{i32 786445, metadata !37, metadata !59, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!63 = metadata !{i32 786454, metadata !37, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!64 = metadata !{i32 786451, metadata !37, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !65, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !79}
!66 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!67 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!68 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!69 = metadata !{i32 786454, metadata !37, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!70 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!71 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!72 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!73 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!74 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !69} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!75 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!76 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!77 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !78} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!79 = metadata !{i32 786445, metadata !37, metadata !64, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!80 = metadata !{i32 786445, metadata !37, metadata !59, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!81 = metadata !{i32 786454, metadata !37, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!82 = metadata !{i32 786451, metadata !37, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !83, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!83 = metadata !{metadata !84, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!84 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!85 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!86 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!87 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!88 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !85} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!89 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!90 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !78} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!91 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !92} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!93 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !85} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!94 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !85} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!95 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !85} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!96 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !85} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!97 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !85} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!98 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !78} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!99 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !92} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!100 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!101 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !14} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!102 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!103 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!104 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!105 = metadata !{i32 786445, metadata !37, metadata !82, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!106 = metadata !{i32 786445, metadata !37, metadata !59, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !107} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!108 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{metadata !14, metadata !110, metadata !133}
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!111 = metadata !{i32 786454, metadata !37, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!112 = metadata !{i32 786451, metadata !37, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !113, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !126}
!114 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!115 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!116 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!117 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!118 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!119 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !85} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!120 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!121 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!122 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !123} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!123 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!124 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{null, metadata !14, metadata !14, metadata !92, metadata !92}
!126 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !127} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!128 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{null, metadata !130, metadata !131}
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!131 = metadata !{i32 786454, metadata !37, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!133 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!134 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !135} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!136 = metadata !{i32 786454, metadata !37, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!137 = metadata !{i32 786451, metadata !37, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !138, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!138 = metadata !{metadata !139, metadata !152, metadata !157, metadata !161, metadata !165, metadata !169, metadata !170}
!139 = metadata !{i32 786445, metadata !37, metadata !137, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!140 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !141, metadata !149, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!141 = metadata !{i32 786454, metadata !37, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!142 = metadata !{i32 786451, metadata !37, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !143, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!143 = metadata !{metadata !144, metadata !146, metadata !147}
!144 = metadata !{i32 786445, metadata !37, metadata !142, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !145} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!145 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!146 = metadata !{i32 786445, metadata !37, metadata !142, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !70} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!147 = metadata !{i32 786445, metadata !37, metadata !142, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !148} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!148 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!149 = metadata !{metadata !150, metadata !151}
!150 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!151 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!152 = metadata !{i32 786445, metadata !37, metadata !137, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !153} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!153 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !141, metadata !154, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!154 = metadata !{metadata !155, metadata !156}
!155 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!156 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!157 = metadata !{i32 786445, metadata !37, metadata !137, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !158} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!158 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !141, metadata !159, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!159 = metadata !{metadata !155, metadata !160}
!160 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!161 = metadata !{i32 786445, metadata !37, metadata !137, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !162} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !141, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!163 = metadata !{metadata !155, metadata !164}
!164 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!165 = metadata !{i32 786445, metadata !37, metadata !137, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !166} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !141, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!169 = metadata !{i32 786445, metadata !37, metadata !137, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !166} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!170 = metadata !{i32 786445, metadata !37, metadata !137, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !171} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!171 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !141, metadata !172, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!172 = metadata !{metadata !150}
!173 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !174} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!175 = metadata !{i32 786454, metadata !37, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!176 = metadata !{i32 786451, metadata !37, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !177, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!177 = metadata !{metadata !178, metadata !181, metadata !182, metadata !185, metadata !188, metadata !192, metadata !193, metadata !197, metadata !198, metadata !199}
!178 = metadata !{i32 786445, metadata !37, metadata !176, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !179} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!179 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !141, metadata !180, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!180 = metadata !{metadata !155}
!181 = metadata !{i32 786445, metadata !37, metadata !176, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !166} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!182 = metadata !{i32 786445, metadata !37, metadata !176, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !183} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!183 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !141, metadata !184, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!184 = metadata !{metadata !150, metadata !168}
!185 = metadata !{i32 786445, metadata !37, metadata !176, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !186} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!186 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !141, metadata !187, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!187 = metadata !{metadata !160, metadata !168}
!188 = metadata !{i32 786445, metadata !37, metadata !176, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !189} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!189 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !141, metadata !190, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!190 = metadata !{metadata !160, metadata !191}
!191 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!192 = metadata !{i32 786445, metadata !37, metadata !176, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !189} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!193 = metadata !{i32 786445, metadata !37, metadata !176, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !194} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!194 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !141, metadata !195, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!195 = metadata !{metadata !160, metadata !196}
!196 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!197 = metadata !{i32 786445, metadata !37, metadata !176, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !194} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!198 = metadata !{i32 786445, metadata !37, metadata !176, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !189} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!199 = metadata !{i32 786445, metadata !37, metadata !176, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !189} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!200 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !201} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!202 = metadata !{i32 786454, metadata !37, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!203 = metadata !{i32 786451, metadata !37, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !204, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206, metadata !207}
!205 = metadata !{i32 786445, metadata !37, metadata !203, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!206 = metadata !{i32 786445, metadata !37, metadata !203, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!207 = metadata !{i32 786445, metadata !37, metadata !203, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !208} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!208 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !203} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!209 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!210 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !92} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!211 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !92} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!212 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !92} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!213 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!214 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !92} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!215 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !92} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!216 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !92} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!217 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !218} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!218 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!219 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!220 = metadata !{metadata !221, metadata !14}
!221 = metadata !{i32 786454, metadata !37, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!222 = metadata !{i32 786445, metadata !37, metadata !48, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !223} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!223 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !14, metadata !224, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!224 = metadata !{metadata !150, metadata !155}
!225 = metadata !{metadata !226}
!226 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!227 = metadata !{i32 786445, metadata !37, metadata !40, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!228 = metadata !{i32 786445, metadata !37, metadata !40, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !229} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!229 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!230 = metadata !{i32 786445, metadata !37, metadata !40, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !229} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!231 = metadata !{i32 786445, metadata !37, metadata !40, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !229} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!232 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !36, i32 559, metadata !38, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!233 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !36, i32 560, metadata !38, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!234 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !36, i32 561, metadata !38, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!235 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !36, i32 562, metadata !38, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!236 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !36, i32 565, metadata !237, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!237 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !238} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!238 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!239 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !36, i32 566, metadata !240, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!241 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !36, i32 567, metadata !242, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!242 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!243 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !36, i32 569, metadata !85, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!244 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !36, i32 570, metadata !85, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!245 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !36, i32 572, metadata !14, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!246 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !36, i32 572, metadata !14, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!247 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !36, i32 573, metadata !248, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!248 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !249} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!249 = metadata !{i32 786454, metadata !37, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !250} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!250 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !251, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!251 = metadata !{metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !262, metadata !263, metadata !264, metadata !265, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285}
!252 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !221} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!253 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!254 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!255 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !221} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!256 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !221} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!257 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !221} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!258 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !259} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!259 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !14, metadata !260, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!260 = metadata !{metadata !261}
!261 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!262 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !221} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!263 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !85} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!264 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !85} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!265 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !266} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!266 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !85, metadata !260, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!267 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !266} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!268 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !266} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!269 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !221} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!270 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !85} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!271 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !85} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!272 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !78} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!273 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !14} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!274 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !14} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!275 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !221} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!276 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !85} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!277 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !14} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!278 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !14} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!279 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !14} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!280 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !14} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!281 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !14} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!282 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !221} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!283 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !221} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!284 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !221} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!285 = metadata !{i32 786445, metadata !4, metadata !250, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !221} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!286 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !36, i32 574, metadata !287, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!287 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !288} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!288 = metadata !{i32 786454, metadata !37, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !289} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!289 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !290, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!290 = metadata !{metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328}
!291 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !221} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!292 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!293 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !221} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!294 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !221} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!295 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !221} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!296 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !221} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!297 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !85} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!298 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !85} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!299 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !85} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!300 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !221} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!301 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !259} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!302 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !85} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!303 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !85} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!304 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !85} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!305 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !85} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!306 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !85} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!307 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !221} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!308 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!309 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!310 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !85} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!311 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !312} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!312 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !313, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!313 = metadata !{metadata !314}
!314 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!315 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !85} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!316 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !221} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!317 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !85} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!318 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !85} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!319 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !221} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!320 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !221} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!321 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !221} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!322 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !221} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!323 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !85} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!324 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !85} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!325 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !85} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!326 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !85} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!327 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !221} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!328 = metadata !{i32 786445, metadata !4, metadata !289, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !329} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!329 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !330} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!330 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !331, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!331 = metadata !{metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380}
!332 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !221} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!333 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!334 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!335 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !85} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!336 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !221} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!337 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !221} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!338 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !221} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!339 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !85} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!340 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !221} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!341 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !221} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!342 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !85} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!343 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !85} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!344 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !85} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!345 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !221} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!346 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !85} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!347 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !85} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!348 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !221} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!349 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !85} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!350 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !85} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!351 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !221} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!352 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !221} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!353 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !354} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!354 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !355} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!355 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !356, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!356 = metadata !{metadata !357, metadata !358, metadata !359, metadata !360, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369}
!357 = metadata !{i32 786445, metadata !4, metadata !355, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!358 = metadata !{i32 786445, metadata !4, metadata !355, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!359 = metadata !{i32 786445, metadata !4, metadata !355, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!360 = metadata !{i32 786445, metadata !4, metadata !355, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !361} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!361 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !85, metadata !362, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!362 = metadata !{metadata !363}
!363 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!364 = metadata !{i32 786445, metadata !4, metadata !355, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !361} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!365 = metadata !{i32 786445, metadata !4, metadata !355, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !361} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!366 = metadata !{i32 786445, metadata !4, metadata !355, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !85} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!367 = metadata !{i32 786445, metadata !4, metadata !355, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !85} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!368 = metadata !{i32 786445, metadata !4, metadata !355, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !85} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!369 = metadata !{i32 786445, metadata !4, metadata !355, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !85} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!370 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !221} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!371 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !354} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!372 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !221} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!373 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !221} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!374 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !221} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!375 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !85} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!376 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !85} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!377 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !85} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!378 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !85} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!379 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !85} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!380 = metadata !{i32 786445, metadata !4, metadata !330, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !85} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!381 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !36, i32 578, metadata !14, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!382 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !36, i32 579, metadata !14, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!383 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !36, i32 583, metadata !384, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!384 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !242} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!385 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !36, i32 584, metadata !384, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!386 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !36, i32 585, metadata !387, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!387 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !384} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!388 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !36, i32 586, metadata !14, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!389 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !36, i32 587, metadata !14, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!390 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !36, i32 588, metadata !14, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!391 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !36, i32 589, metadata !14, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!392 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !36, i32 592, metadata !237, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!393 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !36, i32 593, metadata !237, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!394 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !36, i32 595, metadata !240, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!395 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !36, i32 596, metadata !240, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!396 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !36, i32 598, metadata !237, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!397 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !36, i32 599, metadata !240, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!398 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !36, i32 601, metadata !237, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!399 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !36, i32 602, metadata !240, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!400 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !36, i32 604, metadata !401, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!401 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !402} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!402 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !403} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!403 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !404} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!404 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!405 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !36, i32 605, metadata !402, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!406 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !36, i32 608, metadata !407, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!407 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!408 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !36, i32 609, metadata !407, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!409 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !36, i32 610, metadata !14, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!410 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !36, i32 612, metadata !14, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!411 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !36, i32 612, metadata !14, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!412 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !36, i32 612, metadata !14, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!413 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !36, i32 613, metadata !14, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!414 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !36, i32 613, metadata !14, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!415 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !36, i32 613, metadata !14, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!416 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !36, i32 614, metadata !14, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!417 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !36, i32 617, metadata !418, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!418 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !419, metadata !420, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!419 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!420 = metadata !{metadata !421}
!421 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!422 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !36, i32 620, metadata !423, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!423 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !424, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!424 = metadata !{metadata !425, metadata !425}
!425 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!426 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !36, i32 620, metadata !423, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!427 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !36, i32 620, metadata !423, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!428 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !36, i32 621, metadata !423, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!429 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !36, i32 621, metadata !423, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!430 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !36, i32 621, metadata !423, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!431 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !36, i32 622, metadata !432, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!432 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !14, metadata !433, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!433 = metadata !{metadata !150, metadata !425, metadata !425}
!434 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !36, i32 623, metadata !435, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!435 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !14, metadata !436, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!436 = metadata !{metadata !155, metadata !168, metadata !168}
!437 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !36, i32 623, metadata !435, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!438 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !36, i32 624, metadata !435, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!439 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !36, i32 624, metadata !435, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!440 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !36, i32 625, metadata !441, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!441 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !14, metadata !442, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!442 = metadata !{metadata !168, metadata !168}
!443 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !36, i32 625, metadata !444, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!444 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !14, metadata !445, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!445 = metadata !{metadata !425}
!446 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !36, i32 1201, metadata !447, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!447 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !448} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!448 = metadata !{i32 786454, metadata !37, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !449} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!449 = metadata !{i32 786451, metadata !37, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !450, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!450 = metadata !{metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456}
!451 = metadata !{i32 786445, metadata !37, metadata !449, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!452 = metadata !{i32 786445, metadata !37, metadata !449, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!453 = metadata !{i32 786445, metadata !37, metadata !449, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!454 = metadata !{i32 786445, metadata !37, metadata !449, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!455 = metadata !{i32 786445, metadata !37, metadata !449, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!456 = metadata !{i32 786445, metadata !37, metadata !449, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!457 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !36, i32 1202, metadata !458, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!458 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !459} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!459 = metadata !{i32 786454, metadata !37, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !460} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!460 = metadata !{i32 786451, metadata !37, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !461, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!461 = metadata !{metadata !462, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !481, metadata !482, metadata !486, metadata !487, metadata !488, metadata !489, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497}
!462 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !463} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!463 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!464 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !423} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!465 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !423} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!466 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !423} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!467 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !387} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!468 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !384} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!469 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !14} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!470 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !14} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!471 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !472} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!472 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !14, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!473 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !472} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!474 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !242} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!475 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !444} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!476 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !14} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!477 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !478} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!478 = metadata !{i32 786454, metadata !37, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !479} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!479 = metadata !{i32 786454, metadata !37, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !480} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!480 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!481 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!482 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !483} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!483 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !484} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!484 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !485} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!485 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !401} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!486 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !483} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!487 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !483} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!488 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !483} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!489 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !490} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!490 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !404, metadata !436, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!491 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !14} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!492 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !14} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!493 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !14} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!494 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !14} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!495 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!496 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!497 = metadata !{i32 786445, metadata !37, metadata !460, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!498 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !36, i32 1203, metadata !459, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!499 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !36, i32 1203, metadata !459, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!500 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !36, i32 1204, metadata !459, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!501 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !36, i32 1204, metadata !459, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!502 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !36, i32 1230, metadata !503, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!503 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !504} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!504 = metadata !{i32 786454, metadata !37, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !505} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!505 = metadata !{i32 786451, metadata !506, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !507, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!506 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!507 = metadata !{metadata !508, metadata !509, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !529, metadata !530, metadata !531, metadata !532, metadata !534, metadata !535, metadata !537, metadata !541, metadata !543, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !551, metadata !552}
!508 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!509 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!510 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !419} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!511 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!512 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!513 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!514 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!515 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!516 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!517 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!518 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!519 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!520 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !510} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!521 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !522} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!522 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !523} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!523 = metadata !{i32 786451, metadata !506, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !524, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!524 = metadata !{metadata !525, metadata !526, metadata !528}
!525 = metadata !{i32 786445, metadata !506, metadata !523, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !522} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!526 = metadata !{i32 786445, metadata !506, metadata !523, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !527} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!527 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !505} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!528 = metadata !{i32 786445, metadata !506, metadata !523, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!529 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !527} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!530 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!531 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!532 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !533} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!533 = metadata !{i32 786454, metadata !506, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !480} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!534 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !145} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!535 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !536} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!536 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!537 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !538} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!538 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !419, metadata !539, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!539 = metadata !{metadata !540}
!540 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!541 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !542} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!542 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!543 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !544} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!544 = metadata !{i32 786454, metadata !506, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !480} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!545 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !542} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!546 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !542} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!547 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !542} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!548 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !542} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!549 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !550} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!550 = metadata !{i32 786454, metadata !506, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!551 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!552 = metadata !{i32 786445, metadata !506, metadata !505, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !553} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!553 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !419, metadata !554, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!554 = metadata !{metadata !555}
!555 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!556 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !36, i32 1231, metadata !503, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!557 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !36, i32 1232, metadata !503, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!558 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !36, i32 1233, metadata !14, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!559 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !36, i32 1234, metadata !14, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!560 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !36, i32 1237, metadata !561, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!561 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !14, metadata !554, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!562 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !36, i32 1238, metadata !561, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!563 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !36, i32 1239, metadata !561, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!564 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !36, i32 1240, metadata !561, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!565 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !36, i32 1241, metadata !561, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!566 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !36, i32 1242, metadata !561, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!567 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !36, i32 1456, metadata !14, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!568 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !36, i32 1465, metadata !14, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!569 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !36, i32 1466, metadata !14, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!570 = metadata !{i32 786484, i32 0, null, metadata !"RefreshPattern", metadata !"RefreshPattern", metadata !"", metadata !11, i32 22, metadata !92, i32 1, i32 1, i32** @RefreshPattern, null} ; [ DW_TAG_variable ] [RefreshPattern] [line 22] [local] [def]
!571 = metadata !{i32 786484, i32 0, null, metadata !"IntraMBs", metadata !"IntraMBs", metadata !"", metadata !11, i32 23, metadata !92, i32 1, i32 1, i32** @IntraMBs, null} ; [ DW_TAG_variable ] [IntraMBs] [line 23] [local] [def]
!572 = metadata !{i32 786484, i32 0, null, metadata !"NumberIntraPerPicture", metadata !"NumberIntraPerPicture", metadata !"", metadata !11, i32 26, metadata !14, i32 1, i32 1, i32* @NumberIntraPerPicture, null} ; [ DW_TAG_variable ] [NumberIntraPerPicture] [line 26] [local] [def]
!573 = metadata !{i32 786484, i32 0, null, metadata !"WalkAround", metadata !"WalkAround", metadata !"", metadata !11, i32 24, metadata !14, i32 1, i32 1, i32* @WalkAround, null} ; [ DW_TAG_variable ] [WalkAround] [line 24] [local] [def]
!574 = metadata !{i32 786484, i32 0, null, metadata !"NumberOfMBs", metadata !"NumberOfMBs", metadata !"", metadata !11, i32 25, metadata !14, i32 1, i32 1, i32* @NumberOfMBs, null} ; [ DW_TAG_variable ] [NumberOfMBs] [line 25] [local] [def]
!575 = metadata !{i32 43, i32 0, metadata !10, null}
!576 = metadata !{i32 50, i32 0, metadata !10, null}
!577 = metadata !{i32 52, i32 0, metadata !10, null}
!578 = metadata !{metadata !"int", metadata !579}
!579 = metadata !{metadata !"omnipotent char", metadata !580}
!580 = metadata !{metadata !"Simple C/C++ TBAA"}
!581 = metadata !{i32 53, i32 0, metadata !10, null}
!582 = metadata !{i32 58, i32 0, metadata !10, null} ; [ DW_TAG_imported_module ]
!583 = metadata !{metadata !"any pointer", metadata !579}
!584 = metadata !{i32 60, i32 0, metadata !10, null}
!585 = metadata !{i32 65, i32 0, metadata !10, null}
!586 = metadata !{i32 67, i32 0, metadata !10, null}
!587 = metadata !{i32 69, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !10, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c]
!589 = metadata !{i32 70, i32 0, metadata !588, null}
!590 = metadata !{i32 72, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !10, i32 72, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c]
!592 = metadata !{i32 79, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !594, i32 75, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c]
!594 = metadata !{i32 786443, metadata !1, metadata !591, i32 73, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c]
!595 = metadata !{i32 81, i32 0, metadata !593, null}
!596 = metadata !{i32 82, i32 0, metadata !594, null}
!597 = metadata !{i32 88, i32 0, metadata !10, null}
!598 = metadata !{i32 105, i32 0, metadata !21, null}
!599 = metadata !{i32 109, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !21, i32 109, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c]
!601 = metadata !{i32 110, i32 0, metadata !600, null}
!602 = metadata !{i32 112, i32 0, metadata !21, null}
!603 = metadata !{i32 132, i32 0, metadata !27, null}
!604 = metadata !{i32 133, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !27, i32 133, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c]
!606 = metadata !{i32 134, i32 0, metadata !605, null}
!607 = metadata !{i32 135, i32 0, metadata !27, null}
!608 = metadata !{i32 139, i32 0, metadata !33, null}
!609 = metadata !{i32 140, i32 0, metadata !33, null}
!610 = metadata !{i32 141, i32 0, metadata !33, null}
