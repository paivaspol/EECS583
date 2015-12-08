; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c'
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

@assignSE2partition_NoDP = global [21 x i32] zeroinitializer, align 16
@assignSE2partition_DP = global [21 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@input = external global %struct.InputParameters*
@assignSE2partition = common global [2 x i32*] zeroinitializer, align 16
@img = external global %struct.ImageParameters*
@.str = private unnamed_addr constant [22 x i8] c"SH: first_mb_in_slice\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"SH: slice_type\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"SH: pic_parameter_set_id\00", align 1
@active_pps = external global %struct.pic_parameter_set_rbsp_t*
@log2_max_frame_num_minus4 = external global i32
@.str3 = private unnamed_addr constant [14 x i8] c"SH: frame_num\00", align 1
@active_sps = external global %struct.seq_parameter_set_rbsp_t*
@.str4 = private unnamed_addr constant [19 x i8] c"SH: field_pic_flag\00", align 1
@.str5 = private unnamed_addr constant [22 x i8] c"SH: bottom_field_flag\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"SH: idr_pic_id\00", align 1
@log2_max_pic_order_cnt_lsb_minus4 = external global i32
@.str7 = private unnamed_addr constant [22 x i8] c"SH: pic_order_cnt_lsb\00", align 1
@.str8 = private unnamed_addr constant [31 x i8] c"SH: delta_pic_order_cnt_bottom\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[0]\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[1]\00", align 1
@.str11 = private unnamed_addr constant [22 x i8] c"SH: redundant_pic_cnt\00", align 1
@.str12 = private unnamed_addr constant [32 x i8] c"SH: direct_spatial_mv_pred_flag\00", align 1
@.str13 = private unnamed_addr constant [37 x i8] c"SH: num_ref_idx_active_override_flag\00", align 1
@.str14 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l0_active_minus1\00", align 1
@.str15 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l1_active_minus1\00", align 1
@.str16 = private unnamed_addr constant [19 x i8] c"SH: cabac_init_idc\00", align 1
@.str17 = private unnamed_addr constant [19 x i8] c"SH: slice_qp_delta\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c"SH: sp_for_switch_flag\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"SH: slice_qs_delta\00", align 1
@.str20 = private unnamed_addr constant [34 x i8] c"SH: disable_deblocking_filter_idc\00", align 1
@.str21 = private unnamed_addr constant [31 x i8] c"SH: slice_alpha_c0_offset_div2\00", align 1
@.str22 = private unnamed_addr constant [27 x i8] c"SH: slice_beta_offset_div2\00", align 1
@.str23 = private unnamed_addr constant [29 x i8] c"SH: slice_group_change_cycle\00", align 1
@.str24 = private unnamed_addr constant [14 x i8] c"DPA: slice_id\00", align 1
@.str25 = private unnamed_addr constant [28 x i8] c"Picture Type not supported!\00", align 1
@.str26 = private unnamed_addr constant [26 x i8] c"SH: luma_log_weight_denom\00", align 1
@luma_log_weight_denom = external global i32
@.str27 = private unnamed_addr constant [28 x i8] c"SH: chroma_log_weight_denom\00", align 1
@chroma_log_weight_denom = external global i32
@wp_weight = external global i32***
@wp_offset = external global i32***
@.str28 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str29 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str30 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str31 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l0\00", align 1
@.str32 = private unnamed_addr constant [17 x i8] c"chroma_weight_l0\00", align 1
@.str33 = private unnamed_addr constant [17 x i8] c"chroma_offset_l0\00", align 1
@.str34 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str35 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str36 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str37 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l1\00", align 1
@.str38 = private unnamed_addr constant [17 x i8] c"chroma_weight_l1\00", align 1
@.str39 = private unnamed_addr constant [17 x i8] c"chroma_offset_l1\00", align 1
@.str40 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1
@.str41 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1
@.str42 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1
@.str43 = private unnamed_addr constant [29 x i8] c"Error encoding MMCO commands\00", align 1
@.str44 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1
@.str45 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str46 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str47 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str48 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str49 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1
@.str50 = private unnamed_addr constant [29 x i8] c"SH: remapping_of_pic_num_idc\00", align 1
@.str51 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1
@.str52 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1
@.str53 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1
@.str54 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1
@.str55 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @SliceHeader() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 61
  %1 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom
  %2 = load i32** %arrayidx, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 50
  %5 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %partArr = getelementptr inbounds %struct.Slice* %5, i64 0, i32 6
  %6 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %struct.datapartition* %6, i64 %idxprom2
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 90
  %7 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %7, 0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 3
  %8 = load i32* %current_mb_nr, align 4, !tbaa !3
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shr = ashr i32 %8, 1
  %call = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0), i32 %shr, %struct.datapartition* %arrayidx3) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0), i32 %8, %struct.datapartition* %arrayidx3) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.0 = phi i32 [ %call, %if.then ], [ %call6, %if.else ]
  %call7 = tail call i32 @get_picture_type() #6
  %call8 = tail call i32 @ue_v(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), i32 %call7, %struct.datapartition* %arrayidx3) #5
  %add = add nsw i32 %call8, %len.0
  %9 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %9, i64 0, i32 1
  %10 = load i32* %pic_parameter_set_id, align 4, !tbaa !3
  %call9 = tail call i32 @ue_v(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0), i32 %10, %struct.datapartition* %arrayidx3) #5
  %add10 = add nsw i32 %add, %call9
  %11 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %add11 = add i32 %11, 4
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %frame_num = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 105
  %13 = load i32* %frame_num, align 4, !tbaa !3
  %call12 = tail call i32 @u_v(i32 %add11, i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i32 %13, %struct.datapartition* %arrayidx3) #5
  %add13 = add nsw i32 %add10, %call12
  %14 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %14, i64 0, i32 25
  %15 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool14 = icmp eq i32 %15, 0
  br i1 %tobool14, label %if.then15, label %if.end28

if.then15:                                        ; preds = %if.end
  %16 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %structure = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 7
  %17 = load i32* %structure, align 4, !tbaa !3
  %.off346 = add i32 %17, -1
  %18 = icmp ult i32 %.off346, 2
  %cond = zext i1 %18 to i32
  %call18 = tail call i32 @u_1(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %cond, %struct.datapartition* %arrayidx3) #5
  %add19 = add nsw i32 %call18, %add13
  br i1 %18, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.then15
  %19 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %structure22 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 7
  %20 = load i32* %structure22, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %20, 2
  %cond24 = zext i1 %cmp23 to i32
  %call25 = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0), i32 %cond24, %struct.datapartition* %arrayidx3) #5
  %add26 = add nsw i32 %call25, %add19
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then15, %if.then21
  %field_pic_flag.0 = phi i32 [ 0, %if.end ], [ %cond, %if.then21 ], [ %cond, %if.then15 ]
  %len.1 = phi i32 [ %add13, %if.end ], [ %add26, %if.then21 ], [ %add19, %if.then15 ]
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 49
  %22 = load %struct.Picture** %currentPicture, align 8, !tbaa !0
  %idr_flag = getelementptr inbounds %struct.Picture* %22, i64 0, i32 1
  %23 = load i32* %idr_flag, align 4, !tbaa !3
  %tobool29 = icmp eq i32 %23, 0
  br i1 %tobool29, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end28
  %number = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 0
  %24 = load i32* %number, align 4, !tbaa !3
  %rem = srem i32 %24, 2
  %call31 = tail call i32 @ue_v(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i32 %rem, %struct.datapartition* %arrayidx3) #5
  %add32 = add nsw i32 %call31, %len.1
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end33

if.end33:                                         ; preds = %if.end28, %if.then30
  %25 = phi %struct.ImageParameters* [ %.pre, %if.then30 ], [ %21, %if.end28 ]
  %len.2 = phi i32 [ %add32, %if.then30 ], [ %len.1, %if.end28 ]
  %pic_order_cnt_type = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 91
  %26 = load i32* %pic_order_cnt_type, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %26, 0
  br i1 %cmp34, label %if.then35, label %if.end73

if.then35:                                        ; preds = %if.end33
  %27 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag36 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %27, i64 0, i32 25
  %28 = load i32* %frame_mbs_only_flag36, align 4, !tbaa !1
  %tobool37 = icmp eq i32 %28, 0
  br i1 %tobool37, label %if.else40, label %if.then38

if.then38:                                        ; preds = %if.then35
  %toppoc = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 101
  %29 = load i32* %toppoc, align 4, !tbaa !3
  %30 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !3
  %add39 = add i32 %30, 4
  %shl = shl i32 -1, %add39
  %neg = xor i32 %shl, -1
  %and = and i32 %29, %neg
  %pic_order_cnt_lsb = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 97
  store i32 %and, i32* %pic_order_cnt_lsb, align 4, !tbaa !3
  br label %if.end62

if.else40:                                        ; preds = %if.then35
  %tobool41 = icmp eq i32 %field_pic_flag.0, 0
  br i1 %tobool41, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else40
  %structure42 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 7
  %31 = load i32* %structure42, align 4, !tbaa !3
  switch i32 %31, label %lor.lhs.false.if.end62_crit_edge [
    i32 1, label %if.then44
    i32 2, label %if.then54
  ]

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  %pic_order_cnt_lsb64.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 97
  %.pre352 = load i32* %pic_order_cnt_lsb64.phi.trans.insert, align 4, !tbaa !3
  br label %if.end62

if.then44:                                        ; preds = %lor.lhs.false, %if.else40
  %toppoc45 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 101
  %32 = load i32* %toppoc45, align 4, !tbaa !3
  %33 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !3
  %add46 = add i32 %33, 4
  %shl47 = shl i32 -1, %add46
  %neg48 = xor i32 %shl47, -1
  %and49 = and i32 %32, %neg48
  %pic_order_cnt_lsb50 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 97
  store i32 %and49, i32* %pic_order_cnt_lsb50, align 4, !tbaa !3
  br label %if.end62

if.then54:                                        ; preds = %lor.lhs.false
  %bottompoc = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 102
  %34 = load i32* %bottompoc, align 4, !tbaa !3
  %35 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !3
  %add55 = add i32 %35, 4
  %shl56 = shl i32 -1, %add55
  %neg57 = xor i32 %shl56, -1
  %and58 = and i32 %34, %neg57
  %pic_order_cnt_lsb59 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 97
  store i32 %and58, i32* %pic_order_cnt_lsb59, align 4, !tbaa !3
  br label %if.end62

if.end62:                                         ; preds = %lor.lhs.false.if.end62_crit_edge, %if.then44, %if.then54, %if.then38
  %36 = phi i32 [ %.pre352, %lor.lhs.false.if.end62_crit_edge ], [ %and49, %if.then44 ], [ %and58, %if.then54 ], [ %and, %if.then38 ]
  %37 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !3
  %add63 = add i32 %37, 4
  %call65 = tail call i32 @u_v(i32 %add63, i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i32 %36, %struct.datapartition* %arrayidx3) #5
  %add66 = add nsw i32 %call65, %len.2
  %38 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters* %38, i64 0, i32 112
  %39 = load i32* %pic_order_present_flag, align 4, !tbaa !3
  %tobool67 = icmp ne i32 %39, 0
  %tobool68 = icmp eq i32 %field_pic_flag.0, 0
  %or.cond = and i1 %tobool67, %tobool68
  br i1 %or.cond, label %if.then69, label %if.end73

if.then69:                                        ; preds = %if.end62
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.ImageParameters* %38, i64 0, i32 98
  %40 = load i32* %delta_pic_order_cnt_bottom, align 4, !tbaa !3
  %call70 = tail call i32 @se_v(i8* getelementptr inbounds ([31 x i8]* @.str8, i64 0, i64 0), i32 %40, %struct.datapartition* %arrayidx3) #5
  %add71 = add nsw i32 %call70, %add66
  %.pre349 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end73

if.end73:                                         ; preds = %if.end62, %if.then69, %if.end33
  %41 = phi %struct.ImageParameters* [ %.pre349, %if.then69 ], [ %25, %if.end33 ], [ %38, %if.end62 ]
  %len.3 = phi i32 [ %add71, %if.then69 ], [ %len.2, %if.end33 ], [ %add66, %if.end62 ]
  %pic_order_cnt_type74 = getelementptr inbounds %struct.ImageParameters* %41, i64 0, i32 91
  %42 = load i32* %pic_order_cnt_type74, align 4, !tbaa !3
  %cmp75 = icmp eq i32 %42, 1
  br i1 %cmp75, label %land.lhs.true76, label %if.end92

land.lhs.true76:                                  ; preds = %if.end73
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters* %41, i64 0, i32 92
  %43 = load i32* %delta_pic_order_always_zero_flag, align 4, !tbaa !3
  %tobool77 = icmp eq i32 %43, 0
  br i1 %tobool77, label %if.then78, label %if.end92

if.then78:                                        ; preds = %land.lhs.true76
  %arrayidx79 = getelementptr inbounds %struct.ImageParameters* %41, i64 0, i32 99, i64 0
  %44 = load i32* %arrayidx79, align 4, !tbaa !3
  %call80 = tail call i32 @se_v(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i32 %44, %struct.datapartition* %arrayidx3) #5
  %add81 = add nsw i32 %call80, %len.3
  %45 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pic_order_present_flag82 = getelementptr inbounds %struct.ImageParameters* %45, i64 0, i32 112
  %46 = load i32* %pic_order_present_flag82, align 4, !tbaa !3
  %tobool83 = icmp ne i32 %46, 0
  %tobool85 = icmp eq i32 %field_pic_flag.0, 0
  %or.cond298 = and i1 %tobool83, %tobool85
  br i1 %or.cond298, label %if.then86, label %if.end92

if.then86:                                        ; preds = %if.then78
  %arrayidx88 = getelementptr inbounds %struct.ImageParameters* %45, i64 0, i32 99, i64 1
  %47 = load i32* %arrayidx88, align 4, !tbaa !3
  %call89 = tail call i32 @se_v(i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %47, %struct.datapartition* %arrayidx3) #5
  %add90 = add nsw i32 %call89, %add81
  br label %if.end92

if.end92:                                         ; preds = %if.then78, %land.lhs.true76, %if.then86, %if.end73
  %len.4 = phi i32 [ %len.3, %land.lhs.true76 ], [ %add90, %if.then86 ], [ %add81, %if.then78 ], [ %len.3, %if.end73 ]
  %48 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %redundant_slice_flag = getelementptr inbounds %struct.InputParameters* %48, i64 0, i32 119
  %49 = load i32* %redundant_slice_flag, align 4, !tbaa !3
  %tobool93 = icmp eq i32 %49, 0
  br i1 %tobool93, label %if.end97, label %if.then94

if.then94:                                        ; preds = %if.end92
  %50 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %redundant_pic_cnt = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 89
  %51 = load i32* %redundant_pic_cnt, align 4, !tbaa !3
  %call95 = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0), i32 %51, %struct.datapartition* %arrayidx3) #5
  %add96 = add nsw i32 %call95, %len.4
  br label %if.end97

if.end97:                                         ; preds = %if.end92, %if.then94
  %len.5 = phi i32 [ %add96, %if.then94 ], [ %len.4, %if.end92 ]
  %52 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 6
  %53 = load i32* %type, align 4, !tbaa !3
  %cmp98 = icmp eq i32 %53, 1
  br i1 %cmp98, label %if.then99, label %if.end102

if.then99:                                        ; preds = %if.end97
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 78
  %54 = load i32* %direct_spatial_mv_pred_flag, align 4, !tbaa !3
  %call100 = tail call i32 @u_1(i8* getelementptr inbounds ([32 x i8]* @.str12, i64 0, i64 0), i32 %54, %struct.datapartition* %arrayidx3) #5
  %add101 = add nsw i32 %call100, %len.5
  %.pre350 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type103.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre350, i64 0, i32 6
  %.pre351 = load i32* %type103.phi.trans.insert, align 4, !tbaa !3
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end97
  %55 = phi i32 [ %.pre351, %if.then99 ], [ %53, %if.end97 ]
  %56 = phi %struct.ImageParameters* [ %.pre350, %if.then99 ], [ %52, %if.end97 ]
  %len.6 = phi i32 [ %add101, %if.then99 ], [ %len.5, %if.end97 ]
  switch i32 %55, label %if.end148 [
    i32 0, label %if.then117
    i32 3, label %if.then117
    i32 1, label %if.else121
  ]

if.then117:                                       ; preds = %if.end102, %if.end102
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 79
  %57 = load i32* %num_ref_idx_l0_active, align 4, !tbaa !3
  %58 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %58, i64 0, i32 17
  %59 = load i32* %num_ref_idx_l0_active_minus1, align 4, !tbaa !3
  %add118 = add nsw i32 %59, 1
  %cmp119 = icmp ne i32 %57, %add118
  %cond120357 = zext i1 %cmp119 to i32
  %call132358 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str13, i64 0, i64 0), i32 %cond120357, %struct.datapartition* %arrayidx3) #5
  %add133359 = add nsw i32 %call132358, %len.6
  br i1 %cmp119, label %if.then135, label %if.end148

if.else121:                                       ; preds = %if.end102
  %num_ref_idx_l0_active122 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 79
  %60 = load i32* %num_ref_idx_l0_active122, align 4, !tbaa !3
  %61 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %num_ref_idx_l0_active_minus1123 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %61, i64 0, i32 17
  %62 = load i32* %num_ref_idx_l0_active_minus1123, align 4, !tbaa !3
  %add124 = add nsw i32 %62, 1
  %cmp125 = icmp eq i32 %60, %add124
  br i1 %cmp125, label %if.end131, label %if.end131.thread

if.end131.thread:                                 ; preds = %if.else121
  %call132354 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str13, i64 0, i64 0), i32 1, %struct.datapartition* %arrayidx3) #5
  %add133355 = add nsw i32 %call132354, %len.6
  br label %if.then135

if.end131:                                        ; preds = %if.else121
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 80
  %63 = load i32* %num_ref_idx_l1_active, align 4, !tbaa !3
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %61, i64 0, i32 18
  %64 = load i32* %num_ref_idx_l1_active_minus1, align 4, !tbaa !3
  %add127 = add nsw i32 %64, 1
  %cmp128 = icmp ne i32 %63, %add127
  %cond120 = zext i1 %cmp128 to i32
  %call132 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str13, i64 0, i64 0), i32 %cond120, %struct.datapartition* %arrayidx3) #5
  %add133 = add nsw i32 %call132, %len.6
  br i1 %cmp128, label %if.then135, label %if.end148

if.then135:                                       ; preds = %if.then117, %if.end131.thread, %if.end131
  %add133356 = phi i32 [ %add133355, %if.end131.thread ], [ %add133, %if.end131 ], [ %add133359, %if.then117 ]
  %65 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_ref_idx_l0_active136 = getelementptr inbounds %struct.ImageParameters* %65, i64 0, i32 79
  %66 = load i32* %num_ref_idx_l0_active136, align 4, !tbaa !3
  %sub = add nsw i32 %66, -1
  %call137 = tail call i32 @ue_v(i8* getelementptr inbounds ([33 x i8]* @.str14, i64 0, i64 0), i32 %sub, %struct.datapartition* %arrayidx3) #5
  %add138 = add nsw i32 %call137, %add133356
  %67 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type139 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 6
  %68 = load i32* %type139, align 4, !tbaa !3
  %cmp140 = icmp eq i32 %68, 1
  br i1 %cmp140, label %if.then141, label %if.end148

if.then141:                                       ; preds = %if.then135
  %num_ref_idx_l1_active142 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 80
  %69 = load i32* %num_ref_idx_l1_active142, align 4, !tbaa !3
  %sub143 = add nsw i32 %69, -1
  %call144 = tail call i32 @ue_v(i8* getelementptr inbounds ([33 x i8]* @.str15, i64 0, i64 0), i32 %sub143, %struct.datapartition* %arrayidx3) #5
  %add145 = add nsw i32 %call144, %add138
  br label %if.end148

if.end148:                                        ; preds = %if.end102, %if.then135, %if.end131, %if.then117, %if.then141
  %len.7 = phi i32 [ %add145, %if.then141 ], [ %len.6, %if.end102 ], [ %add133359, %if.then117 ], [ %add133, %if.end131 ], [ %add138, %if.then135 ]
  %70 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode.i = getelementptr inbounds %struct.InputParameters* %70, i64 0, i32 61
  %71 = load i32* %partition_mode.i, align 4, !tbaa !3
  %idxprom.i = sext i32 %71 to i64
  %arrayidx.i = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom.i
  %72 = load i32** %arrayidx.i, align 8, !tbaa !0
  %73 = load i32* %72, align 4, !tbaa !3
  %idxprom2.i = sext i32 %73 to i64
  %74 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice.i = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 50
  %75 = load %struct.Slice** %currentSlice.i, align 8, !tbaa !0
  %partArr.i = getelementptr inbounds %struct.Slice* %75, i64 0, i32 6
  %76 = load %struct.datapartition** %partArr.i, align 8, !tbaa !0
  %arrayidx3.i = getelementptr inbounds %struct.datapartition* %76, i64 %idxprom2.i
  %type.i = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 6
  %77 = load i32* %type.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %77, 2
  br i1 %cmp.i, label %if.end39.i, label %if.then.i

if.then.i:                                        ; preds = %if.end148
  %ref_pic_list_reordering_flag_l0.i = getelementptr inbounds %struct.Slice* %75, i64 0, i32 10
  %78 = load i32* %ref_pic_list_reordering_flag_l0.i, align 4, !tbaa !3
  %call.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str49, i64 0, i64 0), i32 %78, %struct.datapartition* %arrayidx3.i) #5
  %79 = load i32* %ref_pic_list_reordering_flag_l0.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %79, 0
  br i1 %tobool.i, label %if.end39.i, label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %if.then.i
  %remapping_of_pic_nums_idc_l0.i = getelementptr inbounds %struct.Slice* %75, i64 0, i32 11
  %abs_diff_pic_num_minus1_l0.i = getelementptr inbounds %struct.Slice* %75, i64 0, i32 12
  %long_term_pic_idx_l0.i = getelementptr inbounds %struct.Slice* %75, i64 0, i32 13
  %.pre137.i = load i32** %remapping_of_pic_nums_idc_l0.i, align 8, !tbaa !0
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i, %do.body.preheader.i
  %80 = phi i32* [ %.pre137.i, %do.body.preheader.i ], [ %88, %do.cond.i ]
  %indvars.iv135.i = phi i64 [ -1, %do.body.preheader.i ], [ %indvars.iv.next136.i, %do.cond.i ]
  %len.0.i = phi i32 [ %call.i, %do.body.preheader.i ], [ %len.1.i, %do.cond.i ]
  %indvars.iv.next136.i = add i64 %indvars.iv135.i, 1
  %arrayidx8.i = getelementptr inbounds i32* %80, i64 %indvars.iv.next136.i
  %81 = load i32* %arrayidx8.i, align 4, !tbaa !3
  %call9.i = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str50, i64 0, i64 0), i32 %81, %struct.datapartition* %arrayidx3.i) #5
  %add10.i = add nsw i32 %call9.i, %len.0.i
  %82 = load i32** %remapping_of_pic_nums_idc_l0.i, align 8, !tbaa !0
  %arrayidx13.i = getelementptr inbounds i32* %82, i64 %indvars.iv.next136.i
  %83 = load i32* %arrayidx13.i, align 4, !tbaa !3
  switch i32 %83, label %do.cond.i [
    i32 0, label %if.then19.i
    i32 1, label %if.then19.i
    i32 2, label %if.then28.i
  ]

if.then19.i:                                      ; preds = %do.body.i, %do.body.i
  %84 = load i32** %abs_diff_pic_num_minus1_l0.i, align 8, !tbaa !0
  %arrayidx21.i = getelementptr inbounds i32* %84, i64 %indvars.iv.next136.i
  %85 = load i32* %arrayidx21.i, align 4, !tbaa !3
  %call22.i = tail call i32 @ue_v(i8* getelementptr inbounds ([31 x i8]* @.str51, i64 0, i64 0), i32 %85, %struct.datapartition* %arrayidx3.i) #5
  %add23.i = add nsw i32 %call22.i, %add10.i
  br label %do.cond.i

if.then28.i:                                      ; preds = %do.body.i
  %86 = load i32** %long_term_pic_idx_l0.i, align 8, !tbaa !0
  %arrayidx30.i = getelementptr inbounds i32* %86, i64 %indvars.iv.next136.i
  %87 = load i32* %arrayidx30.i, align 4, !tbaa !3
  %call31.i = tail call i32 @ue_v(i8* getelementptr inbounds ([25 x i8]* @.str52, i64 0, i64 0), i32 %87, %struct.datapartition* %arrayidx3.i) #5
  %add32.i = add nsw i32 %call31.i, %add10.i
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then28.i, %if.then19.i, %do.body.i
  %len.1.i = phi i32 [ %add23.i, %if.then19.i ], [ %add32.i, %if.then28.i ], [ %add10.i, %do.body.i ]
  %88 = load i32** %remapping_of_pic_nums_idc_l0.i, align 8, !tbaa !0
  %arrayidx36.i = getelementptr inbounds i32* %88, i64 %indvars.iv.next136.i
  %89 = load i32* %arrayidx36.i, align 4, !tbaa !3
  %cmp37.i = icmp eq i32 %89, 3
  br i1 %cmp37.i, label %if.end39.i, label %do.body.i

if.end39.i:                                       ; preds = %do.cond.i, %if.then.i, %if.end148
  %len.2.i = phi i32 [ 0, %if.end148 ], [ %call.i, %if.then.i ], [ %len.1.i, %do.cond.i ]
  %90 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type40.i = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 6
  %91 = load i32* %type40.i, align 4, !tbaa !3
  %cmp41.i = icmp eq i32 %91, 1
  br i1 %cmp41.i, label %if.then42.i, label %ref_pic_list_reordering.exit

if.then42.i:                                      ; preds = %if.end39.i
  %ref_pic_list_reordering_flag_l1.i = getelementptr inbounds %struct.Slice* %75, i64 0, i32 14
  %92 = load i32* %ref_pic_list_reordering_flag_l1.i, align 4, !tbaa !3
  %call43.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str53, i64 0, i64 0), i32 %92, %struct.datapartition* %arrayidx3.i) #5
  %add44.i = add nsw i32 %call43.i, %len.2.i
  %93 = load i32* %ref_pic_list_reordering_flag_l1.i, align 4, !tbaa !3
  %tobool46.i = icmp eq i32 %93, 0
  br i1 %tobool46.i, label %ref_pic_list_reordering.exit, label %do.body48.preheader.i

do.body48.preheader.i:                            ; preds = %if.then42.i
  %remapping_of_pic_nums_idc_l1.i = getelementptr inbounds %struct.Slice* %75, i64 0, i32 15
  %abs_diff_pic_num_minus1_l1.i = getelementptr inbounds %struct.Slice* %75, i64 0, i32 16
  %long_term_pic_idx_l1.i = getelementptr inbounds %struct.Slice* %75, i64 0, i32 17
  %.pre.i = load i32** %remapping_of_pic_nums_idc_l1.i, align 8, !tbaa !0
  br label %do.body48.i

do.body48.i:                                      ; preds = %do.cond80.i, %do.body48.preheader.i
  %94 = phi i32* [ %.pre.i, %do.body48.preheader.i ], [ %102, %do.cond80.i ]
  %indvars.iv.i = phi i64 [ -1, %do.body48.preheader.i ], [ %indvars.iv.next.i, %do.cond80.i ]
  %len.3.i = phi i32 [ %add44.i, %do.body48.preheader.i ], [ %len.4.i, %do.cond80.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %arrayidx51.i = getelementptr inbounds i32* %94, i64 %indvars.iv.next.i
  %95 = load i32* %arrayidx51.i, align 4, !tbaa !3
  %call52.i = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str50, i64 0, i64 0), i32 %95, %struct.datapartition* %arrayidx3.i) #5
  %add53.i = add nsw i32 %call52.i, %len.3.i
  %96 = load i32** %remapping_of_pic_nums_idc_l1.i, align 8, !tbaa !0
  %arrayidx56.i = getelementptr inbounds i32* %96, i64 %indvars.iv.next.i
  %97 = load i32* %arrayidx56.i, align 4, !tbaa !3
  switch i32 %97, label %do.cond80.i [
    i32 0, label %if.then63.i
    i32 1, label %if.then63.i
    i32 2, label %if.then73.i
  ]

if.then63.i:                                      ; preds = %do.body48.i, %do.body48.i
  %98 = load i32** %abs_diff_pic_num_minus1_l1.i, align 8, !tbaa !0
  %arrayidx65.i = getelementptr inbounds i32* %98, i64 %indvars.iv.next.i
  %99 = load i32* %arrayidx65.i, align 4, !tbaa !3
  %call66.i = tail call i32 @ue_v(i8* getelementptr inbounds ([31 x i8]* @.str54, i64 0, i64 0), i32 %99, %struct.datapartition* %arrayidx3.i) #5
  %add67.i = add nsw i32 %call66.i, %add53.i
  br label %do.cond80.i

if.then73.i:                                      ; preds = %do.body48.i
  %100 = load i32** %long_term_pic_idx_l1.i, align 8, !tbaa !0
  %arrayidx75.i = getelementptr inbounds i32* %100, i64 %indvars.iv.next.i
  %101 = load i32* %arrayidx75.i, align 4, !tbaa !3
  %call76.i = tail call i32 @ue_v(i8* getelementptr inbounds ([25 x i8]* @.str55, i64 0, i64 0), i32 %101, %struct.datapartition* %arrayidx3.i) #5
  %add77.i = add nsw i32 %call76.i, %add53.i
  br label %do.cond80.i

do.cond80.i:                                      ; preds = %if.then73.i, %if.then63.i, %do.body48.i
  %len.4.i = phi i32 [ %add67.i, %if.then63.i ], [ %add77.i, %if.then73.i ], [ %add53.i, %do.body48.i ]
  %102 = load i32** %remapping_of_pic_nums_idc_l1.i, align 8, !tbaa !0
  %arrayidx83.i = getelementptr inbounds i32* %102, i64 %indvars.iv.next.i
  %103 = load i32* %arrayidx83.i, align 4, !tbaa !3
  %cmp84.i = icmp eq i32 %103, 3
  br i1 %cmp84.i, label %ref_pic_list_reordering.exit, label %do.body48.i

ref_pic_list_reordering.exit:                     ; preds = %do.cond80.i, %if.then42.i, %if.end39.i
  %len.5.i = phi i32 [ %len.2.i, %if.end39.i ], [ %add44.i, %if.then42.i ], [ %len.4.i, %do.cond80.i ]
  %add150 = add nsw i32 %len.5.i, %len.7
  %104 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type151 = getelementptr inbounds %struct.ImageParameters* %104, i64 0, i32 6
  %105 = load i32* %type151, align 4, !tbaa !3
  switch i32 %105, label %if.end166 [
    i32 0, label %land.lhs.true156
    i32 3, label %land.lhs.true156
    i32 1, label %land.lhs.true161
  ]

land.lhs.true156:                                 ; preds = %ref_pic_list_reordering.exit, %ref_pic_list_reordering.exit
  %106 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %106, i64 0, i32 19
  %107 = load i32* %weighted_pred_flag, align 4, !tbaa !1
  %tobool157 = icmp eq i32 %107, 0
  br i1 %tobool157, label %lor.lhs.false158, label %if.then163

lor.lhs.false158:                                 ; preds = %land.lhs.true156
  %cmp160 = icmp eq i32 %105, 1
  br i1 %cmp160, label %land.lhs.true161, label %if.end166

land.lhs.true161:                                 ; preds = %ref_pic_list_reordering.exit, %lor.lhs.false158
  %108 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %108, i64 0, i32 20
  %109 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %cmp162 = icmp eq i32 %109, 1
  br i1 %cmp162, label %if.then163, label %if.end166

if.then163:                                       ; preds = %land.lhs.true161, %land.lhs.true156
  %110 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode.i300 = getelementptr inbounds %struct.InputParameters* %110, i64 0, i32 61
  %111 = load i32* %partition_mode.i300, align 4, !tbaa !3
  %idxprom.i301 = sext i32 %111 to i64
  %arrayidx.i302 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom.i301
  %112 = load i32** %arrayidx.i302, align 8, !tbaa !0
  %113 = load i32* %112, align 4, !tbaa !3
  %idxprom2.i303 = sext i32 %113 to i64
  %currentSlice.i304 = getelementptr inbounds %struct.ImageParameters* %104, i64 0, i32 50
  %114 = load %struct.Slice** %currentSlice.i304, align 8, !tbaa !0
  %partArr.i305 = getelementptr inbounds %struct.Slice* %114, i64 0, i32 6
  %115 = load %struct.datapartition** %partArr.i305, align 8, !tbaa !0
  %arrayidx3.i306 = getelementptr inbounds %struct.datapartition* %115, i64 %idxprom2.i303
  %116 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %call.i307 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str26, i64 0, i64 0), i32 %116, %struct.datapartition* %arrayidx3.i306) #5
  %117 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %call4.i = tail call i32 @ue_v(i8* getelementptr inbounds ([28 x i8]* @.str27, i64 0, i64 0), i32 %117, %struct.datapartition* %arrayidx3.i306) #5
  %add5.i = add nsw i32 %call4.i, %call.i307
  %118 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_ref_idx_l0_active249.i = getelementptr inbounds %struct.ImageParameters* %118, i64 0, i32 79
  %119 = load i32* %num_ref_idx_l0_active249.i, align 4, !tbaa !3
  %cmp250.i = icmp sgt i32 %119, 0
  br i1 %cmp250.i, label %for.body.i, label %for.end83.i

for.body.i:                                       ; preds = %if.then163, %for.inc81.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %for.inc81.i ], [ 0, %if.then163 ]
  %len.0251.i = phi i32 [ %len.3.i315, %for.inc81.i ], [ %add5.i, %if.then163 ]
  %120 = load i32**** @wp_weight, align 8, !tbaa !0
  %121 = load i32*** %120, align 8, !tbaa !0
  %arrayidx8.i308 = getelementptr inbounds i32** %121, i64 %indvars.iv262.i
  %122 = load i32** %arrayidx8.i308, align 8, !tbaa !0
  %123 = load i32* %122, align 4, !tbaa !3
  %124 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %shl.i = shl i32 1, %124
  %cmp10.i = icmp eq i32 %123, %shl.i
  br i1 %cmp10.i, label %lor.lhs.false.i, label %if.then.i312

lor.lhs.false.i:                                  ; preds = %for.body.i
  %125 = load i32**** @wp_offset, align 8, !tbaa !0
  %126 = load i32*** %125, align 8, !tbaa !0
  %arrayidx13.i309 = getelementptr inbounds i32** %126, i64 %indvars.iv262.i
  %127 = load i32** %arrayidx13.i309, align 8, !tbaa !0
  %128 = load i32* %127, align 4, !tbaa !3
  %cmp15.i = icmp eq i32 %128, 0
  br i1 %cmp15.i, label %if.else.i, label %if.then.i312

if.then.i312:                                     ; preds = %lor.lhs.false.i, %for.body.i
  %call16.i = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str28, i64 0, i64 0), i32 1, %struct.datapartition* %arrayidx3.i306) #5
  %add17.i = add nsw i32 %call16.i, %len.0251.i
  %129 = load i32**** @wp_weight, align 8, !tbaa !0
  %130 = load i32*** %129, align 8, !tbaa !0
  %arrayidx20.i = getelementptr inbounds i32** %130, i64 %indvars.iv262.i
  %131 = load i32** %arrayidx20.i, align 8, !tbaa !0
  %132 = load i32* %131, align 4, !tbaa !3
  %call22.i310 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i32 %132, %struct.datapartition* %arrayidx3.i306) #5
  %add23.i311 = add nsw i32 %add17.i, %call22.i310
  %133 = load i32**** @wp_offset, align 8, !tbaa !0
  %134 = load i32*** %133, align 8, !tbaa !0
  %arrayidx26.i = getelementptr inbounds i32** %134, i64 %indvars.iv262.i
  %135 = load i32** %arrayidx26.i, align 8, !tbaa !0
  %136 = load i32* %135, align 4, !tbaa !3
  %call28.i = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str30, i64 0, i64 0), i32 %136, %struct.datapartition* %arrayidx3.i306) #5
  %add29.i = add nsw i32 %add23.i311, %call28.i
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call30.i = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str28, i64 0, i64 0), i32 0, %struct.datapartition* %arrayidx3.i306) #5
  %add31.i = add nsw i32 %call30.i, %len.0251.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i312
  %len.1.i313 = phi i32 [ %add29.i, %if.then.i312 ], [ %add31.i, %if.else.i ]
  %137 = load i32**** @wp_weight, align 8, !tbaa !0
  %138 = load i32*** %137, align 8, !tbaa !0
  %arrayidx34.i = getelementptr inbounds i32** %138, i64 %indvars.iv262.i
  %139 = load i32** %arrayidx34.i, align 8, !tbaa !0
  %arrayidx35.i = getelementptr inbounds i32* %139, i64 1
  %140 = load i32* %arrayidx35.i, align 4, !tbaa !3
  %141 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %shl36.i = shl i32 1, %141
  %cmp37.i314 = icmp eq i32 %140, %shl36.i
  br i1 %cmp37.i314, label %lor.lhs.false38.i, label %if.then57.i

lor.lhs.false38.i:                                ; preds = %if.end.i
  %142 = load i32**** @wp_offset, align 8, !tbaa !0
  %143 = load i32*** %142, align 8, !tbaa !0
  %arrayidx41.i = getelementptr inbounds i32** %143, i64 %indvars.iv262.i
  %144 = load i32** %arrayidx41.i, align 8, !tbaa !0
  %arrayidx42.i = getelementptr inbounds i32* %144, i64 1
  %145 = load i32* %arrayidx42.i, align 4, !tbaa !3
  %cmp43.i = icmp eq i32 %145, 0
  br i1 %cmp43.i, label %lor.lhs.false44.i, label %if.then57.i

lor.lhs.false44.i:                                ; preds = %lor.lhs.false38.i
  %arrayidx48.i = getelementptr inbounds i32* %139, i64 2
  %146 = load i32* %arrayidx48.i, align 4, !tbaa !3
  %cmp50.i = icmp eq i32 %146, %140
  br i1 %cmp50.i, label %lor.lhs.false51.i, label %if.then57.i

lor.lhs.false51.i:                                ; preds = %lor.lhs.false44.i
  %arrayidx55.i = getelementptr inbounds i32* %144, i64 2
  %147 = load i32* %arrayidx55.i, align 4, !tbaa !3
  %cmp56.i = icmp eq i32 %147, 0
  br i1 %cmp56.i, label %if.else77.i, label %if.then57.i

if.then57.i:                                      ; preds = %lor.lhs.false51.i, %lor.lhs.false44.i, %lor.lhs.false38.i, %if.end.i
  %call58.i = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str31, i64 0, i64 0), i32 1, %struct.datapartition* %arrayidx3.i306) #5
  %add59.i = add nsw i32 %call58.i, %len.1.i313
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.body62.i, %if.then57.i
  %indvars.iv257.i = phi i64 [ 1, %if.then57.i ], [ %indvars.iv.next258.i, %for.body62.i ]
  %len.2247.i = phi i32 [ %add59.i, %if.then57.i ], [ %add76.i, %for.body62.i ]
  %148 = load i32**** @wp_weight, align 8, !tbaa !0
  %149 = load i32*** %148, align 8, !tbaa !0
  %arrayidx66.i = getelementptr inbounds i32** %149, i64 %indvars.iv262.i
  %150 = load i32** %arrayidx66.i, align 8, !tbaa !0
  %arrayidx67.i = getelementptr inbounds i32* %150, i64 %indvars.iv257.i
  %151 = load i32* %arrayidx67.i, align 4, !tbaa !3
  %call68.i = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str32, i64 0, i64 0), i32 %151, %struct.datapartition* %arrayidx3.i306) #5
  %add69.i = add nsw i32 %call68.i, %len.2247.i
  %152 = load i32**** @wp_offset, align 8, !tbaa !0
  %153 = load i32*** %152, align 8, !tbaa !0
  %arrayidx73.i = getelementptr inbounds i32** %153, i64 %indvars.iv262.i
  %154 = load i32** %arrayidx73.i, align 8, !tbaa !0
  %arrayidx74.i = getelementptr inbounds i32* %154, i64 %indvars.iv257.i
  %155 = load i32* %arrayidx74.i, align 4, !tbaa !3
  %call75.i = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str33, i64 0, i64 0), i32 %155, %struct.datapartition* %arrayidx3.i306) #5
  %add76.i = add nsw i32 %add69.i, %call75.i
  %indvars.iv.next258.i = add i64 %indvars.iv257.i, 1
  %lftr.wideiv347 = trunc i64 %indvars.iv.next258.i to i32
  %exitcond348 = icmp eq i32 %lftr.wideiv347, 3
  br i1 %exitcond348, label %for.inc81.i, label %for.body62.i

if.else77.i:                                      ; preds = %lor.lhs.false51.i
  %call78.i = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str31, i64 0, i64 0), i32 0, %struct.datapartition* %arrayidx3.i306) #5
  %add79.i = add nsw i32 %call78.i, %len.1.i313
  br label %for.inc81.i

for.inc81.i:                                      ; preds = %for.body62.i, %if.else77.i
  %len.3.i315 = phi i32 [ %add79.i, %if.else77.i ], [ %add76.i, %for.body62.i ]
  %indvars.iv.next263.i = add i64 %indvars.iv262.i, 1
  %156 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_ref_idx_l0_active.i = getelementptr inbounds %struct.ImageParameters* %156, i64 0, i32 79
  %157 = load i32* %num_ref_idx_l0_active.i, align 4, !tbaa !3
  %158 = trunc i64 %indvars.iv.next263.i to i32
  %cmp.i316 = icmp slt i32 %158, %157
  br i1 %cmp.i316, label %for.body.i, label %for.end83.i

for.end83.i:                                      ; preds = %for.inc81.i, %if.then163
  %159 = phi %struct.ImageParameters* [ %118, %if.then163 ], [ %156, %for.inc81.i ]
  %len.0.lcssa.i = phi i32 [ %add5.i, %if.then163 ], [ %len.3.i315, %for.inc81.i ]
  %type.i317 = getelementptr inbounds %struct.ImageParameters* %159, i64 0, i32 6
  %160 = load i32* %type.i317, align 4, !tbaa !3
  %cmp84.i318 = icmp eq i32 %160, 1
  br i1 %cmp84.i318, label %for.cond86.preheader.i, label %pred_weight_table.exit

for.cond86.preheader.i:                           ; preds = %for.end83.i
  %num_ref_idx_l1_active243.i = getelementptr inbounds %struct.ImageParameters* %159, i64 0, i32 80
  %161 = load i32* %num_ref_idx_l1_active243.i, align 4, !tbaa !3
  %cmp87244.i = icmp sgt i32 %161, 0
  br i1 %cmp87244.i, label %for.body88.i, label %pred_weight_table.exit

for.body88.i:                                     ; preds = %for.cond86.preheader.i, %for.inc172.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i, %for.inc172.i ], [ 0, %for.cond86.preheader.i ]
  %len.4245.i = phi i32 [ %len.7.i, %for.inc172.i ], [ %len.0.lcssa.i, %for.cond86.preheader.i ]
  %162 = load i32**** @wp_weight, align 8, !tbaa !0
  %arrayidx90.i = getelementptr inbounds i32*** %162, i64 1
  %163 = load i32*** %arrayidx90.i, align 8, !tbaa !0
  %arrayidx91.i = getelementptr inbounds i32** %163, i64 %indvars.iv255.i
  %164 = load i32** %arrayidx91.i, align 8, !tbaa !0
  %165 = load i32* %164, align 4, !tbaa !3
  %166 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %shl93.i = shl i32 1, %166
  %cmp94.i = icmp eq i32 %165, %shl93.i
  br i1 %cmp94.i, label %lor.lhs.false95.i, label %if.then101.i

lor.lhs.false95.i:                                ; preds = %for.body88.i
  %167 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx97.i = getelementptr inbounds i32*** %167, i64 1
  %168 = load i32*** %arrayidx97.i, align 8, !tbaa !0
  %arrayidx98.i = getelementptr inbounds i32** %168, i64 %indvars.iv255.i
  %169 = load i32** %arrayidx98.i, align 8, !tbaa !0
  %170 = load i32* %169, align 4, !tbaa !3
  %cmp100.i = icmp eq i32 %170, 0
  br i1 %cmp100.i, label %if.else116.i, label %if.then101.i

if.then101.i:                                     ; preds = %lor.lhs.false95.i, %for.body88.i
  %call102.i = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str34, i64 0, i64 0), i32 1, %struct.datapartition* %arrayidx3.i306) #5
  %add103.i = add nsw i32 %call102.i, %len.4245.i
  %171 = load i32**** @wp_weight, align 8, !tbaa !0
  %arrayidx105.i = getelementptr inbounds i32*** %171, i64 1
  %172 = load i32*** %arrayidx105.i, align 8, !tbaa !0
  %arrayidx106.i = getelementptr inbounds i32** %172, i64 %indvars.iv255.i
  %173 = load i32** %arrayidx106.i, align 8, !tbaa !0
  %174 = load i32* %173, align 4, !tbaa !3
  %call108.i = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str35, i64 0, i64 0), i32 %174, %struct.datapartition* %arrayidx3.i306) #5
  %add109.i = add nsw i32 %add103.i, %call108.i
  %175 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx111.i = getelementptr inbounds i32*** %175, i64 1
  %176 = load i32*** %arrayidx111.i, align 8, !tbaa !0
  %arrayidx112.i = getelementptr inbounds i32** %176, i64 %indvars.iv255.i
  %177 = load i32** %arrayidx112.i, align 8, !tbaa !0
  %178 = load i32* %177, align 4, !tbaa !3
  %call114.i = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str36, i64 0, i64 0), i32 %178, %struct.datapartition* %arrayidx3.i306) #5
  %add115.i = add nsw i32 %add109.i, %call114.i
  br label %if.end119.i

if.else116.i:                                     ; preds = %lor.lhs.false95.i
  %call117.i = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str34, i64 0, i64 0), i32 0, %struct.datapartition* %arrayidx3.i306) #5
  %add118.i = add nsw i32 %call117.i, %len.4245.i
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.else116.i, %if.then101.i
  %len.5.i319 = phi i32 [ %add115.i, %if.then101.i ], [ %add118.i, %if.else116.i ]
  %179 = load i32**** @wp_weight, align 8, !tbaa !0
  %arrayidx121.i = getelementptr inbounds i32*** %179, i64 1
  %180 = load i32*** %arrayidx121.i, align 8, !tbaa !0
  %arrayidx122.i = getelementptr inbounds i32** %180, i64 %indvars.iv255.i
  %181 = load i32** %arrayidx122.i, align 8, !tbaa !0
  %arrayidx123.i = getelementptr inbounds i32* %181, i64 1
  %182 = load i32* %arrayidx123.i, align 4, !tbaa !3
  %183 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %shl124.i = shl i32 1, %183
  %cmp125.i = icmp eq i32 %182, %shl124.i
  br i1 %cmp125.i, label %lor.lhs.false126.i, label %if.then145.i

lor.lhs.false126.i:                               ; preds = %if.end119.i
  %184 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx128.i = getelementptr inbounds i32*** %184, i64 1
  %185 = load i32*** %arrayidx128.i, align 8, !tbaa !0
  %arrayidx129.i = getelementptr inbounds i32** %185, i64 %indvars.iv255.i
  %186 = load i32** %arrayidx129.i, align 8, !tbaa !0
  %arrayidx130.i = getelementptr inbounds i32* %186, i64 1
  %187 = load i32* %arrayidx130.i, align 4, !tbaa !3
  %cmp131.i = icmp eq i32 %187, 0
  br i1 %cmp131.i, label %lor.lhs.false132.i, label %if.then145.i

lor.lhs.false132.i:                               ; preds = %lor.lhs.false126.i
  %arrayidx136.i = getelementptr inbounds i32* %181, i64 2
  %188 = load i32* %arrayidx136.i, align 4, !tbaa !3
  %cmp138.i = icmp eq i32 %188, %182
  br i1 %cmp138.i, label %lor.lhs.false139.i, label %if.then145.i

lor.lhs.false139.i:                               ; preds = %lor.lhs.false132.i
  %arrayidx143.i = getelementptr inbounds i32* %186, i64 2
  %189 = load i32* %arrayidx143.i, align 4, !tbaa !3
  %cmp144.i = icmp eq i32 %189, 0
  br i1 %cmp144.i, label %if.else168.i, label %if.then145.i

if.then145.i:                                     ; preds = %lor.lhs.false139.i, %lor.lhs.false132.i, %lor.lhs.false126.i, %if.end119.i
  %call146.i = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i32 1, %struct.datapartition* %arrayidx3.i306) #5
  %add147.i = add nsw i32 %call146.i, %len.5.i319
  br label %for.body150.i

for.body150.i:                                    ; preds = %for.body150.i, %if.then145.i
  %indvars.iv.i320 = phi i64 [ 1, %if.then145.i ], [ %indvars.iv.next.i321, %for.body150.i ]
  %len.6241.i = phi i32 [ %add147.i, %if.then145.i ], [ %add164.i, %for.body150.i ]
  %190 = load i32**** @wp_weight, align 8, !tbaa !0
  %arrayidx153.i = getelementptr inbounds i32*** %190, i64 1
  %191 = load i32*** %arrayidx153.i, align 8, !tbaa !0
  %arrayidx154.i = getelementptr inbounds i32** %191, i64 %indvars.iv255.i
  %192 = load i32** %arrayidx154.i, align 8, !tbaa !0
  %arrayidx155.i = getelementptr inbounds i32* %192, i64 %indvars.iv.i320
  %193 = load i32* %arrayidx155.i, align 4, !tbaa !3
  %call156.i = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0), i32 %193, %struct.datapartition* %arrayidx3.i306) #5
  %add157.i = add nsw i32 %call156.i, %len.6241.i
  %194 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx160.i = getelementptr inbounds i32*** %194, i64 1
  %195 = load i32*** %arrayidx160.i, align 8, !tbaa !0
  %arrayidx161.i = getelementptr inbounds i32** %195, i64 %indvars.iv255.i
  %196 = load i32** %arrayidx161.i, align 8, !tbaa !0
  %arrayidx162.i = getelementptr inbounds i32* %196, i64 %indvars.iv.i320
  %197 = load i32* %arrayidx162.i, align 4, !tbaa !3
  %call163.i = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str39, i64 0, i64 0), i32 %197, %struct.datapartition* %arrayidx3.i306) #5
  %add164.i = add nsw i32 %add157.i, %call163.i
  %indvars.iv.next.i321 = add i64 %indvars.iv.i320, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i321 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc172.i, label %for.body150.i

if.else168.i:                                     ; preds = %lor.lhs.false139.i
  %call169.i = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i32 0, %struct.datapartition* %arrayidx3.i306) #5
  %add170.i = add nsw i32 %call169.i, %len.5.i319
  br label %for.inc172.i

for.inc172.i:                                     ; preds = %for.body150.i, %if.else168.i
  %len.7.i = phi i32 [ %add170.i, %if.else168.i ], [ %add164.i, %for.body150.i ]
  %indvars.iv.next256.i = add i64 %indvars.iv255.i, 1
  %198 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_ref_idx_l1_active.i = getelementptr inbounds %struct.ImageParameters* %198, i64 0, i32 80
  %199 = load i32* %num_ref_idx_l1_active.i, align 4, !tbaa !3
  %200 = trunc i64 %indvars.iv.next256.i to i32
  %cmp87.i = icmp slt i32 %200, %199
  br i1 %cmp87.i, label %for.body88.i, label %pred_weight_table.exit

pred_weight_table.exit:                           ; preds = %for.inc172.i, %for.end83.i, %for.cond86.preheader.i
  %201 = phi %struct.ImageParameters* [ %159, %for.end83.i ], [ %159, %for.cond86.preheader.i ], [ %198, %for.inc172.i ]
  %len.8.i = phi i32 [ %len.0.lcssa.i, %for.end83.i ], [ %len.0.lcssa.i, %for.cond86.preheader.i ], [ %len.7.i, %for.inc172.i ]
  %add165 = add nsw i32 %len.8.i, %add150
  br label %if.end166

if.end166:                                        ; preds = %ref_pic_list_reordering.exit, %pred_weight_table.exit, %land.lhs.true161, %lor.lhs.false158
  %202 = phi %struct.ImageParameters* [ %201, %pred_weight_table.exit ], [ %104, %land.lhs.true161 ], [ %104, %lor.lhs.false158 ], [ %104, %ref_pic_list_reordering.exit ]
  %len.8 = phi i32 [ %add165, %pred_weight_table.exit ], [ %add150, %land.lhs.true161 ], [ %add150, %lor.lhs.false158 ], [ %add150, %ref_pic_list_reordering.exit ]
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %202, i64 0, i32 113
  %203 = load i32* %nal_reference_idc, align 4, !tbaa !3
  %tobool167 = icmp eq i32 %203, 0
  br i1 %tobool167, label %if.end171, label %if.then168

if.then168:                                       ; preds = %if.end166
  %204 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode.i322 = getelementptr inbounds %struct.InputParameters* %204, i64 0, i32 61
  %205 = load i32* %partition_mode.i322, align 4, !tbaa !3
  %idxprom.i323 = sext i32 %205 to i64
  %arrayidx.i324 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom.i323
  %206 = load i32** %arrayidx.i324, align 8, !tbaa !0
  %207 = load i32* %206, align 4, !tbaa !3
  %idxprom2.i325 = sext i32 %207 to i64
  %currentSlice.i326 = getelementptr inbounds %struct.ImageParameters* %202, i64 0, i32 50
  %208 = load %struct.Slice** %currentSlice.i326, align 8, !tbaa !0
  %partArr.i327 = getelementptr inbounds %struct.Slice* %208, i64 0, i32 6
  %209 = load %struct.datapartition** %partArr.i327, align 8, !tbaa !0
  %arrayidx3.i328 = getelementptr inbounds %struct.datapartition* %209, i64 %idxprom2.i325
  %currentPicture.i = getelementptr inbounds %struct.ImageParameters* %202, i64 0, i32 49
  %210 = load %struct.Picture** %currentPicture.i, align 8, !tbaa !0
  %idr_flag.i = getelementptr inbounds %struct.Picture* %210, i64 0, i32 1
  %211 = load i32* %idr_flag.i, align 4, !tbaa !3
  %tobool.i329 = icmp eq i32 %211, 0
  br i1 %tobool.i329, label %if.else.i335, label %if.then.i333

if.then.i333:                                     ; preds = %if.then168
  %no_output_of_prior_pics_flag.i = getelementptr inbounds %struct.ImageParameters* %202, i64 0, i32 115
  %212 = load i32* %no_output_of_prior_pics_flag.i, align 4, !tbaa !3
  %call.i330 = tail call i32 @u_1(i8* getelementptr inbounds ([33 x i8]* @.str40, i64 0, i64 0), i32 %212, %struct.datapartition* %arrayidx3.i328) #5
  %213 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %long_term_reference_flag.i = getelementptr inbounds %struct.ImageParameters* %213, i64 0, i32 116
  %214 = load i32* %long_term_reference_flag.i, align 4, !tbaa !3
  %call4.i331 = tail call i32 @u_1(i8* getelementptr inbounds ([29 x i8]* @.str41, i64 0, i64 0), i32 %214, %struct.datapartition* %arrayidx3.i328) #5
  %add5.i332 = add nsw i32 %call4.i331, %call.i330
  br label %dec_ref_pic_marking.exit

if.else.i335:                                     ; preds = %if.then168
  %dec_ref_pic_marking_buffer.i = getelementptr inbounds %struct.ImageParameters* %202, i64 0, i32 117
  %215 = load %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer.i, align 8, !tbaa !0
  %cmp.i334 = icmp ne %struct.DecRefPicMarking_s* %215, null
  %conv.i = zext i1 %cmp.i334 to i32
  %adaptive_ref_pic_buffering_flag.i = getelementptr inbounds %struct.ImageParameters* %202, i64 0, i32 114
  store i32 %conv.i, i32* %adaptive_ref_pic_buffering_flag.i, align 4, !tbaa !3
  %call7.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str42, i64 0, i64 0), i32 %conv.i, %struct.datapartition* %arrayidx3.i328) #5
  %216 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %adaptive_ref_pic_buffering_flag9.i = getelementptr inbounds %struct.ImageParameters* %216, i64 0, i32 114
  %217 = load i32* %adaptive_ref_pic_buffering_flag9.i, align 4, !tbaa !3
  %tobool10.i = icmp eq i32 %217, 0
  br i1 %tobool10.i, label %dec_ref_pic_marking.exit, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i335
  %dec_ref_pic_marking_buffer12.i = getelementptr inbounds %struct.ImageParameters* %216, i64 0, i32 117
  br label %do.body.i337

do.body.i337:                                     ; preds = %do.body.backedge.i, %if.then11.i
  %tmp_drpm.0.in.i = phi %struct.DecRefPicMarking_s** [ %dec_ref_pic_marking_buffer12.i, %if.then11.i ], [ %tmp_drpm.0.in.be.i, %do.body.backedge.i ]
  %len.0.i336 = phi i32 [ %call7.i, %if.then11.i ], [ %len.0.be.i, %do.body.backedge.i ]
  %tmp_drpm.0.i = load %struct.DecRefPicMarking_s** %tmp_drpm.0.in.i, align 8
  %cmp13.i = icmp eq %struct.DecRefPicMarking_s* %tmp_drpm.0.i, null
  br i1 %cmp13.i, label %if.then15.i, label %if.end.i340

if.then15.i:                                      ; preds = %do.body.i337
  tail call void @error(i8* getelementptr inbounds ([29 x i8]* @.str43, i64 0, i64 0), i32 500) #5
  br label %if.end.i340

if.end.i340:                                      ; preds = %if.then15.i, %do.body.i337
  %memory_management_control_operation.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 0
  %218 = load i32* %memory_management_control_operation.i, align 4, !tbaa !3
  %call16.i338 = tail call i32 @ue_v(i8* getelementptr inbounds ([40 x i8]* @.str44, i64 0, i64 0), i32 %218, %struct.datapartition* %arrayidx3.i328) #5
  %add17.i339 = add nsw i32 %call16.i338, %len.0.i336
  %219 = and i32 %218, -3
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %if.then22.i, label %if.end26.i

if.then22.i:                                      ; preds = %if.end.i340
  %difference_of_pic_nums_minus1.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 1
  %221 = load i32* %difference_of_pic_nums_minus1.i, align 4, !tbaa !3
  %call23.i = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str45, i64 0, i64 0), i32 %221, %struct.datapartition* %arrayidx3.i328) #5
  %add24.i = add i32 %add17.i339, 1
  %add25.i = add i32 %add24.i, %call23.i
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end.i340
  %len.1.i341 = phi i32 [ %add25.i, %if.then22.i ], [ %add17.i339, %if.end.i340 ]
  switch i32 %218, label %if.end41.i [
    i32 2, label %if.end41.thread.i
    i32 6, label %if.then38.i
    i32 3, label %if.then38.i
  ]

if.end41.thread.i:                                ; preds = %if.end26.i
  %long_term_pic_num.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 2
  %222 = load i32* %long_term_pic_num.i, align 4, !tbaa !3
  %call30.i342 = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str46, i64 0, i64 0), i32 %222, %struct.datapartition* %arrayidx3.i328) #5
  %add31.i343 = add nsw i32 %call30.i342, %len.1.i341
  br label %do.body.backedge.i

if.then38.i:                                      ; preds = %if.end26.i, %if.end26.i
  %long_term_frame_idx.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 3
  %223 = load i32* %long_term_frame_idx.i, align 4, !tbaa !3
  %call39.i = tail call i32 @ue_v(i8* getelementptr inbounds ([24 x i8]* @.str47, i64 0, i64 0), i32 %223, %struct.datapartition* %arrayidx3.i328) #5
  %add40.i = add nsw i32 %call39.i, %len.1.i341
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.end26.i
  %len.3.i344 = phi i32 [ %add40.i, %if.then38.i ], [ %len.1.i341, %if.end26.i ]
  switch i32 %218, label %do.body.backedge.i [
    i32 4, label %if.then44.i
    i32 0, label %dec_ref_pic_marking.exit
  ]

if.then44.i:                                      ; preds = %if.end41.i
  %max_long_term_frame_idx_plus1.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 4
  %224 = load i32* %max_long_term_frame_idx_plus1.i, align 4, !tbaa !3
  %call45.i = tail call i32 @ue_v(i8* getelementptr inbounds ([32 x i8]* @.str48, i64 0, i64 0), i32 %224, %struct.datapartition* %arrayidx3.i328) #5
  %add46.i = add nsw i32 %call45.i, %len.3.i344
  br label %do.body.backedge.i

do.body.backedge.i:                               ; preds = %if.then44.i, %if.end41.i, %if.end41.thread.i
  %len.0.be.i = phi i32 [ %add31.i343, %if.end41.thread.i ], [ %add46.i, %if.then44.i ], [ %len.3.i344, %if.end41.i ]
  %tmp_drpm.0.in.be.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 5
  br label %do.body.i337

dec_ref_pic_marking.exit:                         ; preds = %if.end41.i, %if.then.i333, %if.else.i335
  %len.5.i345 = phi i32 [ %add5.i332, %if.then.i333 ], [ %call7.i, %if.else.i335 ], [ %len.3.i344, %if.end41.i ]
  %add170 = add nsw i32 %len.5.i345, %len.8
  br label %if.end171

if.end171:                                        ; preds = %if.end166, %dec_ref_pic_marking.exit
  %len.9 = phi i32 [ %add170, %dec_ref_pic_marking.exit ], [ %len.8, %if.end166 ]
  %225 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %225, i64 0, i32 59
  %226 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp172 = icmp eq i32 %226, 1
  br i1 %cmp172, label %land.lhs.true173, label %if.end179

land.lhs.true173:                                 ; preds = %if.end171
  %227 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type174 = getelementptr inbounds %struct.ImageParameters* %227, i64 0, i32 6
  %228 = load i32* %type174, align 4, !tbaa !3
  %cmp175 = icmp eq i32 %228, 2
  br i1 %cmp175, label %if.end179, label %if.then176

if.then176:                                       ; preds = %land.lhs.true173
  %model_number = getelementptr inbounds %struct.ImageParameters* %227, i64 0, i32 118
  %229 = load i32* %model_number, align 4, !tbaa !3
  %call177 = tail call i32 @ue_v(i8* getelementptr inbounds ([19 x i8]* @.str16, i64 0, i64 0), i32 %229, %struct.datapartition* %arrayidx3) #5
  %add178 = add nsw i32 %call177, %len.9
  br label %if.end179

if.end179:                                        ; preds = %land.lhs.true173, %if.end171, %if.then176
  %len.10 = phi i32 [ %add178, %if.then176 ], [ %len.9, %if.end171 ], [ %len.9, %land.lhs.true173 ]
  %qp = getelementptr inbounds %struct.Slice* %5, i64 0, i32 1
  %230 = load i32* %qp, align 4, !tbaa !3
  %sub180 = add nsw i32 %230, -26
  %231 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %231, i64 0, i32 21
  %232 = load i32* %pic_init_qp_minus26, align 4, !tbaa !3
  %sub181 = sub i32 %sub180, %232
  %call182 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str17, i64 0, i64 0), i32 %sub181, %struct.datapartition* %arrayidx3) #5
  %add183 = add nsw i32 %call182, %len.10
  %233 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type184 = getelementptr inbounds %struct.ImageParameters* %233, i64 0, i32 6
  %234 = load i32* %type184, align 4, !tbaa !3
  %cmp185 = icmp eq i32 %234, 3
  br i1 %cmp185, label %if.then189, label %if.end196

if.then189:                                       ; preds = %if.end179
  %call190 = tail call i32 @u_1(i8* getelementptr inbounds ([23 x i8]* @.str18, i64 0, i64 0), i32 0, %struct.datapartition* %arrayidx3) #5
  %add191 = add nsw i32 %call190, %add183
  %235 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qpsp = getelementptr inbounds %struct.ImageParameters* %235, i64 0, i32 11
  %236 = load i32* %qpsp, align 4, !tbaa !3
  %sub193 = add nsw i32 %236, -26
  %call194 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), i32 %sub193, %struct.datapartition* %arrayidx3) #5
  %add195 = add nsw i32 %add191, %call194
  br label %if.end196

if.end196:                                        ; preds = %if.then189, %if.end179
  %len.12 = phi i32 [ %add195, %if.then189 ], [ %add183, %if.end179 ]
  %237 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %237, i64 0, i32 26
  %238 = load i32* %deblocking_filter_control_present_flag, align 4, !tbaa !1
  %tobool197 = icmp eq i32 %238, 0
  br i1 %tobool197, label %if.end210, label %if.then198

if.then198:                                       ; preds = %if.end196
  %239 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %LFDisableIdc = getelementptr inbounds %struct.ImageParameters* %239, i64 0, i32 75
  %240 = load i32* %LFDisableIdc, align 4, !tbaa !3
  %call199 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str20, i64 0, i64 0), i32 %240, %struct.datapartition* %arrayidx3) #5
  %add200 = add nsw i32 %call199, %len.12
  %241 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %LFDisableIdc201 = getelementptr inbounds %struct.ImageParameters* %241, i64 0, i32 75
  %242 = load i32* %LFDisableIdc201, align 4, !tbaa !3
  %cmp202 = icmp eq i32 %242, 1
  br i1 %cmp202, label %if.end210, label %if.then203

if.then203:                                       ; preds = %if.then198
  %LFAlphaC0Offset = getelementptr inbounds %struct.ImageParameters* %241, i64 0, i32 76
  %243 = load i32* %LFAlphaC0Offset, align 4, !tbaa !3
  %div = sdiv i32 %243, 2
  %call204 = tail call i32 @se_v(i8* getelementptr inbounds ([31 x i8]* @.str21, i64 0, i64 0), i32 %div, %struct.datapartition* %arrayidx3) #5
  %add205 = add nsw i32 %call204, %add200
  %244 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %LFBetaOffset = getelementptr inbounds %struct.ImageParameters* %244, i64 0, i32 77
  %245 = load i32* %LFBetaOffset, align 4, !tbaa !3
  %div206 = sdiv i32 %245, 2
  %call207 = tail call i32 @se_v(i8* getelementptr inbounds ([27 x i8]* @.str22, i64 0, i64 0), i32 %div206, %struct.datapartition* %arrayidx3) #5
  %add208 = add nsw i32 %add205, %call207
  br label %if.end210

if.end210:                                        ; preds = %if.then198, %if.end196, %if.then203
  %len.13 = phi i32 [ %add208, %if.then203 ], [ %len.12, %if.end196 ], [ %add200, %if.then198 ]
  %246 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %246, i64 0, i32 8
  %247 = load i32* %num_slice_groups_minus1, align 4, !tbaa !3
  %cmp211 = icmp eq i32 %247, 0
  br i1 %cmp211, label %if.end230, label %land.lhs.true212

land.lhs.true212:                                 ; preds = %if.end210
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %246, i64 0, i32 9
  %248 = load i32* %slice_group_map_type, align 4, !tbaa !3
  %.off = add i32 %248, -3
  %249 = icmp ult i32 %.off, 3
  br i1 %249, label %if.then217, label %if.end230

if.then217:                                       ; preds = %land.lhs.true212
  %250 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters* %250, i64 0, i32 107
  %251 = load i32* %PicHeightInMapUnits, align 4, !tbaa !3
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters* %250, i64 0, i32 106
  %252 = load i32* %PicWidthInMbs, align 4, !tbaa !3
  %mul = mul i32 %252, %251
  %conv = uitofp i32 %mul to float
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %246, i64 0, i32 14
  %253 = load i32* %slice_group_change_rate_minus1, align 4, !tbaa !3
  %add218 = add i32 %253, 1
  %conv219 = uitofp i32 %add218 to float
  %div220 = fdiv float %conv, %conv219
  %add221 = fadd float %div220, 1.000000e+00
  %conv222 = fpext float %add221 to double
  %call223 = tail call double @log(double %conv222) #5
  %div225 = fdiv double %call223, 0x3FE62E42FEFA39EF
  %call226 = tail call double @ceil(double %div225) #7
  %conv227 = fptosi double %call226 to i32
  %254 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 147
  %255 = load i32* %slice_group_change_cycle, align 4, !tbaa !3
  %call228 = tail call i32 @u_v(i32 %conv227, i8* getelementptr inbounds ([29 x i8]* @.str23, i64 0, i64 0), i32 %255, %struct.datapartition* %arrayidx3) #5
  %add229 = add nsw i32 %call228, %len.13
  br label %if.end230

if.end230:                                        ; preds = %if.end210, %if.then217, %land.lhs.true212
  %len.14 = phi i32 [ %add229, %if.then217 ], [ %len.13, %land.lhs.true212 ], [ %len.13, %if.end210 ]
  %256 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode231 = getelementptr inbounds %struct.InputParameters* %256, i64 0, i32 61
  %257 = load i32* %partition_mode231, align 4, !tbaa !3
  %tobool232 = icmp eq i32 %257, 0
  br i1 %tobool232, label %if.end240, label %land.lhs.true233

land.lhs.true233:                                 ; preds = %if.end230
  %258 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentPicture234 = getelementptr inbounds %struct.ImageParameters* %258, i64 0, i32 49
  %259 = load %struct.Picture** %currentPicture234, align 8, !tbaa !0
  %idr_flag235 = getelementptr inbounds %struct.Picture* %259, i64 0, i32 1
  %260 = load i32* %idr_flag235, align 4, !tbaa !3
  %tobool236 = icmp eq i32 %260, 0
  br i1 %tobool236, label %if.then237, label %if.end240

if.then237:                                       ; preds = %land.lhs.true233
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters* %258, i64 0, i32 5
  %261 = load i32* %current_slice_nr, align 4, !tbaa !3
  %call238 = tail call i32 @ue_v(i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0), i32 %261, %struct.datapartition* %arrayidx3) #5
  %add239 = add nsw i32 %call238, %len.14
  br label %if.end240

if.end240:                                        ; preds = %land.lhs.true233, %if.end230, %if.then237
  %len.15 = phi i32 [ %len.14, %land.lhs.true233 ], [ %add239, %if.then237 ], [ %len.14, %if.end230 ]
  ret i32 %len.15
}

; Function Attrs: optsize
declare i32 @ue_v(i8*, i32, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @u_v(i32, i8*, i32, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @u_1(i8*, i32, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @se_v(i8*, i32, %struct.datapartition*) #1

; Function Attrs: nounwind optsize readnone
declare double @ceil(double) #2

; Function Attrs: nounwind optsize
declare double @log(double) #3

; Function Attrs: nounwind optsize uwtable
define i32 @get_picture_type() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %sw.default [
    i32 2, label %return
    i32 0, label %sw.bb1
    i32 1, label %sw.bb3
    i32 3, label %sw.bb5
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb3:                                           ; preds = %entry
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([28 x i8]* @.str25, i64 0, i64 0), i32 1) #5
  br label %return

return:                                           ; preds = %entry, %sw.default, %sw.bb5, %sw.bb3, %sw.bb1
  %retval.0 = phi i32 [ 0, %sw.default ], [ 8, %sw.bb5 ], [ 6, %sw.bb3 ], [ 5, %sw.bb1 ], [ 7, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @error(i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Partition_BC_Header(i32 %PartNo) #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  %idxprom = sext i32 %PartNo to i64
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %partArr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  %2 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.datapartition* %2, i64 %idxprom
  %3 = bitcast %struct.syntaxelement* %symbol to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #4
  %type = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %value2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2
  store i32 0, i32* %value2, align 8, !tbaa !3
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 5
  %4 = load i32* %current_slice_nr, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1
  store i32 %4, i32* %value1, align 4, !tbaa !3
  %call = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %arrayidx) #5
  %5 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %5, i64 0, i32 28
  %6 = load i32* %redundant_pic_cnt_present_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice1 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 50
  %8 = load %struct.Slice** %currentSlice1, align 8, !tbaa !0
  %picture_id = getelementptr inbounds %struct.Slice* %8, i64 0, i32 0
  %9 = load i32* %picture_id, align 4, !tbaa !3
  store i32 %9, i32* %value1, align 4, !tbaa !3
  %call3 = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %arrayidx) #5
  %add4 = add nsw i32 %call3, %call
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %len.0 = phi i32 [ %add4, %if.then ], [ %call, %entry ]
  call void @llvm.lifetime.end(i64 48, i8* %3) #4
  ret i32 %len.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @ue_linfo(i32, i32, i32*, i32*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_UVLC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}