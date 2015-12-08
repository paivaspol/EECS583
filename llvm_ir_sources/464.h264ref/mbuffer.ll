; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/mbuffer.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, i32, i8** }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
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

@Co_located = global %struct.colocated_params* null, align 8
@active_sps = external global %struct.seq_parameter_set_rbsp_t*
@.str = private unnamed_addr constant [16 x i8] c"undefined level\00", align 1
@dpb = common global %struct.decoded_picture_buffer zeroinitializer, align 8
@input = external global %struct.InputParameters*
@.str1 = private unnamed_addr constant [108 x i8] c"DPB size at specified level is smaller than the specified number of reference frames. This is not allowed.\0A\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"init_dpb: dpb->fs\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"init_dpb: dpb->fs_ref\00", align 1
@.str4 = private unnamed_addr constant [24 x i8] c"init_dpb: dpb->fs_ltref\00", align 1
@listX = common global [6 x %struct.storable_picture**] zeroinitializer, align 16
@.str5 = private unnamed_addr constant [19 x i8] c"init_dpb: listX[i]\00", align 1
@listXsize = common global [6 x i32] zeroinitializer, align 16
@img = external global %struct.ImageParameters*
@.str6 = private unnamed_addr constant [21 x i8] c"alloc_frame_store: f\00", align 1
@.str7 = private unnamed_addr constant [26 x i8] c"alloc_storable_picture: s\00", align 1
@.str8 = private unnamed_addr constant [36 x i8] c"alloc_storable_picture: s->mb_field\00", align 1
@log2_max_frame_num_minus4 = external global i32
@.str9 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list0\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"init_lists: fs_listlt\00", align 1
@.str11 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list1\00", align 1
@.str12 = private unnamed_addr constant [42 x i8] c"Invalid remapping_of_pic_nums_idc command\00", align 1
@p_dec = external global i32
@.str13 = private unnamed_addr constant [59 x i8] c"duplicate frame_num im short-term reference picture buffer\00", align 1
@.str14 = private unnamed_addr constant [80 x i8] c"replace_top_pic_with_frame: error storing reference frame (top field not found)\00", align 1
@.str15 = private unnamed_addr constant [67 x i8] c"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l0\00", align 1
@.str16 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0\00", align 1
@.str17 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0\00", align 1
@.str18 = private unnamed_addr constant [67 x i8] c"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l1\00", align 1
@.str19 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1\00", align 1
@.str20 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1\00", align 1
@.str21 = private unnamed_addr constant [19 x i8] c"alloc_colocated: s\00", align 1
@enc_picture = external global %struct.storable_picture*
@.str22 = private unnamed_addr constant [32 x i8] c"Cannot output frame, DPB empty.\00", align 1
@.str23 = private unnamed_addr constant [31 x i8] c"no frames for output available\00", align 1
@.str24 = private unnamed_addr constant [38 x i8] c"output POC must be in ascending order\00", align 1
@.str25 = private unnamed_addr constant [25 x i8] c"invalid frame store type\00", align 1
@.str26 = private unnamed_addr constant [42 x i8] c"Cannot determine smallest POC, DPB empty.\00", align 1
@.str27 = private unnamed_addr constant [69 x i8] c"memory_management_control_operation = 0 not last operation in buffer\00", align 1
@.str28 = private unnamed_addr constant [54 x i8] c"invalid memory_management_control_operation in buffer\00", align 1
@.str29 = private unnamed_addr constant [38 x i8] c"field for long term marking not found\00", align 1
@str = private unnamed_addr constant [57 x i8] c"Warning: reference field for long term marking not found\00"
@str34 = private unnamed_addr constant [66 x i8] c"Warning: assigning long_term_frame_idx different from other field\00"
@str35 = private unnamed_addr constant [57 x i8] c"Warning: reference frame for long term marking not found\00"

; Function Attrs: nounwind optsize readnone uwtable
define void @dump_dpb() #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @getDpbSize() #1 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 23
  %1 = load i32* %pic_width_in_mbs_minus1, align 4, !tbaa !3
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 24
  %2 = load i32* %pic_height_in_map_units_minus1, align 4, !tbaa !3
  %add1 = add i32 %2, 1
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 25
  %3 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 1, i32 2
  %4 = mul i32 %1, 384
  %mul = add i32 %4, 384
  %mul2 = mul i32 %mul, %add1
  %mul3 = mul i32 %mul2, %cond
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 6
  %5 = load i32* %level_idc, align 4, !tbaa !3
  switch i32 %5, label %sw.default [
    i32 10, label %sw.epilog
    i32 11, label %sw.bb4
    i32 12, label %sw.bb5
    i32 13, label %sw.bb6
    i32 20, label %sw.bb7
    i32 21, label %sw.bb8
    i32 22, label %sw.bb9
    i32 30, label %sw.bb10
    i32 31, label %sw.bb11
    i32 32, label %sw.bb12
    i32 40, label %sw.bb13
    i32 41, label %sw.bb14
    i32 42, label %sw.bb15
    i32 50, label %sw.bb16
    i32 51, label %sw.bb17
  ]

sw.bb4:                                           ; preds = %entry
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 500) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.default, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4
  %size.0 = phi i32 [ 0, %sw.default ], [ 70778880, %sw.bb17 ], [ 42393600, %sw.bb16 ], [ 12582912, %sw.bb15 ], [ 12582912, %sw.bb14 ], [ 12582912, %sw.bb13 ], [ 7864320, %sw.bb12 ], [ 6912000, %sw.bb11 ], [ 3110400, %sw.bb10 ], [ 3110400, %sw.bb9 ], [ 1824768, %sw.bb8 ], [ 912384, %sw.bb7 ], [ 912384, %sw.bb6 ], [ 912384, %sw.bb5 ], [ 345600, %sw.bb4 ], [ 152064, %entry ]
  %div = sdiv i32 %size.0, %mul3
  %cmp = icmp slt i32 %div, 16
  %cond18 = select i1 %cmp, i32 %div, i32 16
  ret i32 %cond18
}

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @init_dpb() #1 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 9), align 8, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free_dpb() #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i32 @getDpbSize() #7
  store i32 %call, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  %1 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %num_ref_frames = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 9
  %2 = load i32* %num_ref_frames, align 4, !tbaa !3
  %cmp = icmp ult i32 %call, %2
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @error(i8* getelementptr inbounds ([108 x i8]* @.str1, i64 0, i64 0), i32 1000) #6
  %.pre = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = phi i32 [ %.pre, %if.then1 ], [ %call, %if.end ]
  store i32 0, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  store %struct.frame_store* null, %struct.frame_store** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 10), align 8, !tbaa !0
  store i32 0, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %conv = zext i32 %3 to i64
  %call3 = tail call noalias i8* @calloc(i64 %conv, i64 8) #6
  %4 = bitcast i8* %call3 to %struct.frame_store**
  store %struct.frame_store** %4, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end2
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0)) #6
  %.pre90 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end2
  %5 = phi i32 [ %.pre90, %if.then6 ], [ %3, %if.end2 ]
  %conv8 = zext i32 %5 to i64
  %call9 = tail call noalias i8* @calloc(i64 %conv8, i64 8) #6
  %6 = bitcast i8* %call9 to %struct.frame_store**
  store %struct.frame_store** %6, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  tail call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0)) #6
  %.pre91 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end7
  %7 = phi i32 [ %.pre91, %if.then12 ], [ %5, %if.end7 ]
  %conv14 = zext i32 %7 to i64
  %call15 = tail call noalias i8* @calloc(i64 %conv14, i64 8) #6
  %8 = bitcast i8* %call15 to %struct.frame_store**
  store %struct.frame_store** %8, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %if.then18, label %for.cond.preheader

if.then18:                                        ; preds = %if.end13
  tail call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0)) #6
  %.pre92 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then18, %if.end13
  %9 = phi i32 [ %.pre92, %if.then18 ], [ %7, %if.end13 ]
  %cmp2080 = icmp eq i32 %9, 0
  br i1 %cmp2080, label %for.body30, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.081 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %call22 = tail call %struct.frame_store* @alloc_frame_store() #7
  %idxprom = zext i32 %i.081 to i64
  %10 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.frame_store** %10, i64 %idxprom
  store %struct.frame_store* %call22, %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %11 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds %struct.frame_store** %11, i64 %idxprom
  store %struct.frame_store* null, %struct.frame_store** %arrayidx24, align 8, !tbaa !0
  %12 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds %struct.frame_store** %12, i64 %idxprom
  store %struct.frame_store* null, %struct.frame_store** %arrayidx26, align 8, !tbaa !0
  %inc = add i32 %i.081, 1
  %13 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  %cmp20 = icmp ult i32 %inc, %13
  br i1 %cmp20, label %for.body, label %for.body30

for.body30:                                       ; preds = %for.cond.preheader, %for.body, %for.inc40
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.inc40 ], [ 0, %for.body ], [ 0, %for.cond.preheader ]
  %call31 = tail call noalias i8* @calloc(i64 33, i64 8) #6
  %14 = bitcast i8* %call31 to %struct.storable_picture**
  %arrayidx33 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv86
  store %struct.storable_picture** %14, %struct.storable_picture*** %arrayidx33, align 8, !tbaa !0
  %cmp36 = icmp eq i8* %call31, null
  br i1 %cmp36, label %if.then38, label %for.inc40

if.then38:                                        ; preds = %for.body30
  tail call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #6
  br label %for.inc40

for.inc40:                                        ; preds = %for.body30, %if.then38
  %indvars.iv.next87 = add i64 %indvars.iv86, 1
  %lftr.wideiv88 = trunc i64 %indvars.iv.next87 to i32
  %exitcond89 = icmp eq i32 %lftr.wideiv88, 6
  br i1 %exitcond89, label %for.cond47.preheader, label %for.body30

for.cond47.preheader:                             ; preds = %for.inc40, %for.end57
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.end57 ], [ 0, %for.inc40 ]
  %arrayidx53 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv82
  br label %for.body50

for.body50:                                       ; preds = %for.body50, %for.cond47.preheader
  %indvars.iv = phi i64 [ 0, %for.cond47.preheader ], [ %indvars.iv.next, %for.body50 ]
  %15 = load %struct.storable_picture*** %arrayidx53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds %struct.storable_picture** %15, i64 %indvars.iv
  store %struct.storable_picture* null, %struct.storable_picture** %arrayidx54, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 33
  br i1 %exitcond, label %for.end57, label %for.body50

for.end57:                                        ; preds = %for.body50
  %arrayidx59 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv82
  store i32 0, i32* %arrayidx59, align 4, !tbaa !3
  %indvars.iv.next83 = add i64 %indvars.iv82, 1
  %lftr.wideiv84 = trunc i64 %indvars.iv.next83 to i32
  %exitcond85 = icmp eq i32 %lftr.wideiv84, 6
  br i1 %exitcond85, label %for.end62, label %for.cond47.preheader

for.end62:                                        ; preds = %for.end57
  store i32 -2147483648, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 7), align 8, !tbaa !3
  %16 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %last_has_mmco_5 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 145
  store i32 0, i32* %last_has_mmco_5, align 4, !tbaa !3
  store i32 1, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 9), align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @free_dpb() #1 {
entry:
  %0 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %tobool = icmp eq %struct.frame_store** %0, null
  br i1 %tobool, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  %cmp30 = icmp eq i32 %1, 0
  br i1 %cmp30, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %2 = phi %struct.frame_store** [ %0, %for.cond.preheader ], [ %.pre32, %for.body ]
  %i.031 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body ]
  %idxprom = zext i32 %i.031 to i64
  %arrayidx = getelementptr inbounds %struct.frame_store** %2, i64 %idxprom
  %3 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  tail call void @free_frame_store(%struct.frame_store* %3) #7
  %inc = add i32 %i.031, 1
  %4 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  %cmp = icmp ult i32 %inc, %4
  %.pre32 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %5 = phi %struct.frame_store** [ %0, %for.cond.preheader ], [ %.pre32, %for.body ]
  %6 = bitcast %struct.frame_store** %5 to i8*
  tail call void @free(i8* %6) #6
  store %struct.frame_store** null, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %for.end
  %7 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %tobool1 = icmp eq %struct.frame_store** %7, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %8 = bitcast %struct.frame_store** %7 to i8*
  tail call void @free(i8* %8) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  %9 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %tobool4 = icmp eq %struct.frame_store** %9, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %10 = bitcast %struct.frame_store** %9 to i8*
  tail call void @free(i8* %10) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end3, %if.then5
  store i32 -2147483648, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 7), align 8, !tbaa !3
  br label %for.body9

for.body9:                                        ; preds = %for.inc19, %if.end6
  %indvars.iv = phi i64 [ 0, %if.end6 ], [ %indvars.iv.next, %for.inc19 ]
  %arrayidx11 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv
  %11 = load %struct.storable_picture*** %arrayidx11, align 8, !tbaa !0
  %tobool12 = icmp eq %struct.storable_picture** %11, null
  br i1 %tobool12, label %for.inc19, label %if.then13

if.then13:                                        ; preds = %for.body9
  %12 = bitcast %struct.storable_picture** %11 to i8*
  tail call void @free(i8* %12) #6
  store %struct.storable_picture** null, %struct.storable_picture*** %arrayidx11, align 8, !tbaa !0
  br label %for.inc19

for.inc19:                                        ; preds = %for.body9, %if.then13
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 6
  br i1 %exitcond, label %for.end21, label %for.body9

for.end21:                                        ; preds = %for.inc19
  store i32 0, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 9), align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_frame_store(%struct.frame_store* %f) #1 {
entry:
  %tobool = icmp eq %struct.frame_store* %f, null
  br i1 %tobool, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %frame = getelementptr inbounds %struct.frame_store* %f, i64 0, i32 10
  %0 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.storable_picture* %0, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free_storable_picture(%struct.storable_picture* %0) #7
  store %struct.storable_picture* null, %struct.storable_picture** %frame, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %top_field = getelementptr inbounds %struct.frame_store* %f, i64 0, i32 11
  %1 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %tobool5 = icmp eq %struct.storable_picture* %1, null
  br i1 %tobool5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @free_storable_picture(%struct.storable_picture* %1) #7
  store %struct.storable_picture* null, %struct.storable_picture** %top_field, align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then6
  %bottom_field = getelementptr inbounds %struct.frame_store* %f, i64 0, i32 12
  %2 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %tobool10 = icmp eq %struct.storable_picture* %2, null
  br i1 %tobool10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call void @free_storable_picture(%struct.storable_picture* %2) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end9, %if.then11
  %3 = bitcast %struct.frame_store* %f to i8*
  tail call void @free(i8* %3) #6
  br label %if.end15

if.end15:                                         ; preds = %entry, %if.end14
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct.frame_store* @alloc_frame_store() #1 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 64) #6
  %0 = bitcast i8* %call to %struct.frame_store*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %is_output = getelementptr inbounds i8* %call, i64 32
  %1 = bitcast i8* %is_output to i32*
  store i32 0, i32* %1, align 4, !tbaa !3
  %frame = getelementptr inbounds i8* %call, i64 40
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 16, i32 4, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %frame, i8 0, i64 24, i32 8, i1 false)
  ret %struct.frame_store* %0
}

; Function Attrs: nounwind optsize uwtable
define %struct.storable_picture* @alloc_storable_picture(i32 %structure, i32 %size_x, i32 %size_y, i32 %size_x_cr, i32 %size_y_cr) #1 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 6584) #6
  %0 = bitcast i8* %call to %struct.storable_picture*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %imgY = getelementptr inbounds i8* %call, i64 6424
  %1 = bitcast i8* %imgY to i16***
  %call1 = tail call i32 @get_mem2Dpel(i16*** %1, i32 %size_y, i32 %size_x) #6
  %imgY_11 = getelementptr inbounds i8* %call, i64 6432
  %2 = bitcast i8* %imgY_11 to i16**
  store i16* null, i16** %2, align 8, !tbaa !0
  %imgY_ups = getelementptr inbounds i8* %call, i64 6448
  %3 = bitcast i8* %imgY_ups to i16***
  store i16** null, i16*** %3, align 8, !tbaa !0
  %imgUV = getelementptr inbounds i8* %call, i64 6464
  %4 = bitcast i8* %imgUV to i16****
  store i16*** null, i16**** %4, align 8, !tbaa !0
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 46
  %6 = load i32* %WeightedPrediction, align 4, !tbaa !3
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 47
  %7 = load i32* %WeightedBiprediction, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %7, 0
  br i1 %tobool2, label %lor.lhs.false3, label %if.then5

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 15
  %8 = load i32* %GenerateMultiplePPS, align 4, !tbaa !3
  %tobool4 = icmp eq i32 %8, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  %imgY_11_w = getelementptr inbounds i8* %call, i64 6440
  %9 = bitcast i8* %imgY_11_w to i16**
  store i16* null, i16** %9, align 8, !tbaa !0
  %imgY_ups_w = getelementptr inbounds i8* %call, i64 6456
  %10 = bitcast i8* %imgY_ups_w to i16***
  store i16** null, i16*** %10, align 8, !tbaa !0
  br label %if.end6

if.end6:                                          ; preds = %lor.lhs.false3, %if.then5
  %11 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 159
  %12 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call10 = tail call i32 @get_mem3Dpel(i16**** %4, i32 2, i32 %size_y_cr, i32 %size_x_cr) #6
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.end6, %if.then8
  %13 = phi %struct.ImageParameters* [ %11, %if.end6 ], [ %.pre, %if.then8 ]
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 110
  %14 = load i32* %PicSizeInMbs, align 4, !tbaa !3
  %conv = zext i32 %14 to i64
  %call12 = tail call noalias i8* @calloc(i64 %conv, i64 4) #6
  %mb_field = getelementptr inbounds i8* %call, i64 6472
  %15 = bitcast i8* %mb_field to i8**
  store i8* %call12, i8** %15, align 8, !tbaa !0
  %cmp14 = icmp eq i8* %call12, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end11
  tail call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8]* @.str8, i64 0, i64 0)) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end11
  %ref_idx = getelementptr inbounds i8* %call, i64 6480
  %16 = bitcast i8* %ref_idx to i16****
  %div = sdiv i32 %size_x, 4
  %div18 = sdiv i32 %size_y, 4
  %call19 = tail call i32 @get_mem3Dshort(i16**** %16, i32 2, i32 %div, i32 %div18) #6
  %ref_pic_id = getelementptr inbounds i8* %call, i64 6488
  %17 = bitcast i8* %ref_pic_id to i64****
  %call22 = tail call i32 @get_mem3Dint64(i64**** %17, i32 6, i32 %div, i32 %div18) #6
  %ref_id = getelementptr inbounds i8* %call, i64 6496
  %18 = bitcast i8* %ref_id to i64****
  %call25 = tail call i32 @get_mem3Dint64(i64**** %18, i32 6, i32 %div, i32 %div18) #6
  %mv = getelementptr inbounds i8* %call, i64 6504
  %19 = bitcast i8* %mv to i16*****
  %call28 = tail call i32 @get_mem4Dshort(i16***** %19, i32 2, i32 %div, i32 %div18, i32 2) #6
  %moving_block = getelementptr inbounds i8* %call, i64 6512
  %20 = bitcast i8* %moving_block to i8***
  %call31 = tail call i32 @get_mem2D(i8*** %20, i32 %div, i32 %div18) #6
  %field_frame = getelementptr inbounds i8* %call, i64 6520
  %21 = bitcast i8* %field_frame to i8***
  %call34 = tail call i32 @get_mem2D(i8*** %21, i32 %div, i32 %div18) #6
  %frame_num = getelementptr inbounds i8* %call, i64 6360
  %structure35 = bitcast i8* %call to i32*
  call void @llvm.memset.p0i8.i64(i8* %frame_num, i8 0, i64 32, i32 4, i1 false)
  store i32 %structure, i32* %structure35, align 4, !tbaa !1
  %size_x36 = getelementptr inbounds i8* %call, i64 6392
  %22 = bitcast i8* %size_x36 to i32*
  store i32 %size_x, i32* %22, align 4, !tbaa !3
  %size_y37 = getelementptr inbounds i8* %call, i64 6396
  %23 = bitcast i8* %size_y37 to i32*
  store i32 %size_y, i32* %23, align 4, !tbaa !3
  %size_x_cr38 = getelementptr inbounds i8* %call, i64 6400
  %24 = bitcast i8* %size_x_cr38 to i32*
  store i32 %size_x_cr, i32* %24, align 4, !tbaa !3
  %size_y_cr39 = getelementptr inbounds i8* %call, i64 6404
  %25 = bitcast i8* %size_y_cr39 to i32*
  store i32 %size_y_cr, i32* %25, align 4, !tbaa !3
  %top_field = getelementptr inbounds i8* %call, i64 6528
  %coded_frame = getelementptr inbounds i8* %call, i64 6412
  %26 = bitcast i8* %coded_frame to i32*
  store i32 0, i32* %26, align 4, !tbaa !3
  %MbaffFrameFlag = getelementptr inbounds i8* %call, i64 6416
  %27 = bitcast i8* %MbaffFrameFlag to i32*
  store i32 0, i32* %27, align 4, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %top_field, i8 0, i64 24, i32 8, i1 false)
  ret %struct.storable_picture* %0
}

; Function Attrs: optsize
declare i32 @get_mem2Dpel(i16***, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem3Dpel(i16****, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem3Dshort(i16****, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem3Dint64(i64****, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem4Dshort(i16*****, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem2D(i8***, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @free_storable_picture(%struct.storable_picture* %p) #1 {
entry:
  %tobool = icmp eq %struct.storable_picture* %p, null
  br i1 %tobool, label %if.end71, label %if.then

if.then:                                          ; preds = %entry
  %ref_idx = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 32
  %0 = load i16**** %ref_idx, align 8, !tbaa !0
  %tobool1 = icmp eq i16*** %0, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free_mem3Dshort(i16*** %0, i32 2) #6
  store i16*** null, i16**** %ref_idx, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %ref_pic_id = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 33
  %1 = load i64**** %ref_pic_id, align 8, !tbaa !0
  %tobool5 = icmp eq i64*** %1, null
  br i1 %tobool5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @free_mem3Dint64(i64*** %1, i32 6) #6
  store i64*** null, i64**** %ref_pic_id, align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then6
  %ref_id = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 34
  %2 = load i64**** %ref_id, align 8, !tbaa !0
  %tobool10 = icmp eq i64*** %2, null
  br i1 %tobool10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call void @free_mem3Dint64(i64*** %2, i32 6) #6
  store i64*** null, i64**** %ref_id, align 8, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.end9, %if.then11
  %mv = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 35
  %3 = load i16***** %mv, align 8, !tbaa !0
  %tobool15 = icmp eq i16**** %3, null
  br i1 %tobool15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end14
  %size_x = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 18
  %4 = load i32* %size_x, align 4, !tbaa !3
  %div = sdiv i32 %4, 4
  tail call void @free_mem4Dshort(i16**** %3, i32 2, i32 %div) #6
  store i16**** null, i16***** %mv, align 8, !tbaa !0
  br label %if.end19

if.end19:                                         ; preds = %if.end14, %if.then16
  %moving_block = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 36
  %5 = load i8*** %moving_block, align 8, !tbaa !0
  %tobool20 = icmp eq i8** %5, null
  br i1 %tobool20, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end19
  tail call void @free_mem2D(i8** %5) #6
  store i8** null, i8*** %moving_block, align 8, !tbaa !0
  br label %if.end24

if.end24:                                         ; preds = %if.end19, %if.then21
  %field_frame = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 37
  %6 = load i8*** %field_frame, align 8, !tbaa !0
  %tobool25 = icmp eq i8** %6, null
  br i1 %tobool25, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end24
  tail call void @free_mem2D(i8** %6) #6
  store i8** null, i8*** %field_frame, align 8, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %if.end24, %if.then26
  %imgY = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 25
  %7 = load i16*** %imgY, align 8, !tbaa !0
  %tobool30 = icmp eq i16** %7, null
  br i1 %tobool30, label %if.end34, label %if.then31

if.then31:                                        ; preds = %if.end29
  tail call void @free_mem2Dpel(i16** %7) #6
  store i16** null, i16*** %imgY, align 8, !tbaa !0
  br label %if.end34

if.end34:                                         ; preds = %if.end29, %if.then31
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 26
  %8 = load i16** %imgY_11, align 8, !tbaa !0
  %tobool35 = icmp eq i16* %8, null
  br i1 %tobool35, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end34
  %9 = bitcast i16* %8 to i8*
  tail call void @free(i8* %9) #6
  store i16* null, i16** %imgY_11, align 8, !tbaa !0
  br label %if.end39

if.end39:                                         ; preds = %if.end34, %if.then36
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 28
  %10 = load i16*** %imgY_ups, align 8, !tbaa !0
  %tobool40 = icmp eq i16** %10, null
  br i1 %tobool40, label %if.end44, label %if.then41

if.then41:                                        ; preds = %if.end39
  tail call void @free_mem2Dpel(i16** %10) #6
  store i16** null, i16*** %imgY_ups, align 8, !tbaa !0
  br label %if.end44

if.end44:                                         ; preds = %if.end39, %if.then41
  %imgUV = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 30
  %11 = load i16**** %imgUV, align 8, !tbaa !0
  %tobool45 = icmp eq i16*** %11, null
  br i1 %tobool45, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end44
  tail call void @free_mem3Dpel(i16*** %11, i32 2) #6
  store i16*** null, i16**** %imgUV, align 8, !tbaa !0
  br label %if.end49

if.end49:                                         ; preds = %if.end44, %if.then46
  %12 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 46
  %13 = load i32* %WeightedPrediction, align 4, !tbaa !3
  %tobool50 = icmp eq i32 %13, 0
  br i1 %tobool50, label %lor.lhs.false, label %if.then54

lor.lhs.false:                                    ; preds = %if.end49
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 47
  %14 = load i32* %WeightedBiprediction, align 4, !tbaa !3
  %tobool51 = icmp eq i32 %14, 0
  br i1 %tobool51, label %lor.lhs.false52, label %if.then54

lor.lhs.false52:                                  ; preds = %lor.lhs.false
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 15
  %15 = load i32* %GenerateMultiplePPS, align 4, !tbaa !3
  %tobool53 = icmp eq i32 %15, 0
  br i1 %tobool53, label %if.end65, label %if.then54

if.then54:                                        ; preds = %lor.lhs.false52, %lor.lhs.false, %if.end49
  %imgY_11_w = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 27
  %16 = load i16** %imgY_11_w, align 8, !tbaa !0
  %tobool55 = icmp eq i16* %16, null
  br i1 %tobool55, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.then54
  %17 = bitcast i16* %16 to i8*
  tail call void @free(i8* %17) #6
  store i16* null, i16** %imgY_11_w, align 8, !tbaa !0
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.then56
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 29
  %18 = load i16*** %imgY_ups_w, align 8, !tbaa !0
  %tobool60 = icmp eq i16** %18, null
  br i1 %tobool60, label %if.end65, label %if.then61

if.then61:                                        ; preds = %if.end59
  tail call void @free_mem2Dpel(i16** %18) #6
  store i16** null, i16*** %imgY_ups_w, align 8, !tbaa !0
  br label %if.end65

if.end65:                                         ; preds = %if.end59, %lor.lhs.false52, %if.then61
  %mb_field = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 31
  %19 = load i8** %mb_field, align 8, !tbaa !0
  %tobool66 = icmp eq i8* %19, null
  br i1 %tobool66, label %if.end70, label %if.then67

if.then67:                                        ; preds = %if.end65
  tail call void @free(i8* %19) #6
  br label %if.end70

if.end70:                                         ; preds = %if.end65, %if.then67
  %20 = bitcast %struct.storable_picture* %p to i8*
  tail call void @free(i8* %20) #6
  br label %if.end71

if.end71:                                         ; preds = %entry, %if.end70
  ret void
}

; Function Attrs: optsize
declare void @free_mem3Dshort(i16***, i32) #2

; Function Attrs: optsize
declare void @free_mem3Dint64(i64***, i32) #2

; Function Attrs: optsize
declare void @free_mem4Dshort(i16****, i32, i32) #2

; Function Attrs: optsize
declare void @free_mem2D(i8**) #2

; Function Attrs: optsize
declare void @free_mem2Dpel(i16**) #2

; Function Attrs: optsize
declare void @free_mem3Dpel(i16***, i32) #2

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_short_ref(%struct.storable_picture* nocapture %s) #4 {
entry:
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 15
  %0 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %is_long_term = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 14
  %1 = load i32* %is_long_term, align 4, !tbaa !3
  %lnot = icmp eq i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_long_ref(%struct.storable_picture* nocapture %s) #4 {
entry:
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 15
  %0 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %is_long_term = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 14
  %1 = load i32* %is_long_term, align 4, !tbaa !3
  %tobool1 = icmp ne i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind optsize uwtable
define void @init_lists(i32 %currSliceType, i32 %currPicStructure) #1 {
entry:
  %0 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %add = add i32 %0, 4
  %shl = shl i32 1, %add
  %cmp = icmp eq i32 %currPicStructure, 0
  br i1 %cmp, label %for.cond.preheader, label %if.else38

for.cond.preheader:                               ; preds = %entry
  %1 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp1921 = icmp eq i32 %1, 0
  br i1 %cmp1921, label %if.end103, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %frame_num13 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 105
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = phi i32 [ %1, %for.body.lr.ph ], [ %13, %for.inc ]
  %i.0922 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %idxprom = zext i32 %i.0922 to i64
  %arrayidx = getelementptr inbounds %struct.frame_store** %2, i64 %idxprom
  %5 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %is_used = getelementptr inbounds %struct.frame_store* %5, i64 0, i32 0
  %6 = load i32* %is_used, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %6, 3
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %frame = getelementptr inbounds %struct.frame_store* %5, i64 0, i32 10
  %7 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 15
  %8 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool = icmp eq i32 %8, 0
  br i1 %tobool, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %is_long_term = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 14
  %9 = load i32* %is_long_term, align 4, !tbaa !3
  %tobool9 = icmp eq i32 %9, 0
  br i1 %tobool9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %land.lhs.true
  %frame_num = getelementptr inbounds %struct.frame_store* %5, i64 0, i32 5
  %10 = load i32* %frame_num, align 4, !tbaa !3
  %11 = load i32* %frame_num13, align 4, !tbaa !3
  %cmp14 = icmp ugt i32 %10, %11
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then10
  %sub = sub i32 %10, %shl
  %frame_num_wrap = getelementptr inbounds %struct.frame_store* %5, i64 0, i32 6
  store i32 %sub, i32* %frame_num_wrap, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %if.then10
  %frame_num_wrap26 = getelementptr inbounds %struct.frame_store* %5, i64 0, i32 6
  store i32 %10, i32* %frame_num_wrap26, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then15
  %12 = phi i32 [ %10, %if.else ], [ %sub, %if.then15 ]
  %pic_num = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 11
  store i32 %12, i32* %pic_num, align 4, !tbaa !3
  %order_num = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 5
  store i32 0, i32* %order_num, align 4, !tbaa !3
  %.pre978 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.then3, %for.body, %if.end
  %13 = phi i32 [ %4, %land.lhs.true ], [ %4, %if.then3 ], [ %4, %for.body ], [ %.pre978, %if.end ]
  %inc = add i32 %i.0922, 1
  %cmp1 = icmp ult i32 %inc, %13
  br i1 %cmp1, label %for.body, label %if.end103

if.else38:                                        ; preds = %entry
  %cmp39 = icmp eq i32 %currPicStructure, 1
  %14 = zext i1 %cmp39 to i32
  %. = xor i32 %14, 1
  %15 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp44924 = icmp eq i32 %15, 0
  br i1 %cmp44924, label %if.end103, label %for.body45.lr.ph

for.body45.lr.ph:                                 ; preds = %if.else38
  %16 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %17 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %frame_num53 = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 105
  br label %for.body45

for.body45:                                       ; preds = %for.body45.lr.ph, %for.inc100
  %i.1925 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc101, %for.inc100 ]
  %idxprom46 = zext i32 %i.1925 to i64
  %arrayidx47 = getelementptr inbounds %struct.frame_store** %16, i64 %idxprom46
  %18 = load %struct.frame_store** %arrayidx47, align 8, !tbaa !0
  %is_reference = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 1
  %19 = load i32* %is_reference, align 4, !tbaa !3
  %tobool48 = icmp eq i32 %19, 0
  br i1 %tobool48, label %for.inc100, label %if.then49

if.then49:                                        ; preds = %for.body45
  %frame_num52 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 5
  %20 = load i32* %frame_num52, align 4, !tbaa !3
  %21 = load i32* %frame_num53, align 4, !tbaa !3
  %cmp54 = icmp ugt i32 %20, %21
  br i1 %cmp54, label %if.then55, label %if.else63

if.then55:                                        ; preds = %if.then49
  %sub59 = sub i32 %20, %shl
  %frame_num_wrap62 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 6
  store i32 %sub59, i32* %frame_num_wrap62, align 4, !tbaa !3
  br label %if.end70

if.else63:                                        ; preds = %if.then49
  %frame_num_wrap69 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 6
  store i32 %20, i32* %frame_num_wrap69, align 4, !tbaa !3
  br label %if.end70

if.end70:                                         ; preds = %if.else63, %if.then55
  %22 = phi i32 [ %20, %if.else63 ], [ %sub59, %if.then55 ]
  %and = and i32 %19, 1
  %tobool74 = icmp eq i32 %and, 0
  br i1 %tobool74, label %if.end83, label %if.then75

if.then75:                                        ; preds = %if.end70
  %mul = shl nsw i32 %22, 1
  %add79 = or i32 %mul, %14
  %top_field = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 11
  %23 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %pic_num82 = getelementptr inbounds %struct.storable_picture* %23, i64 0, i32 11
  store i32 %add79, i32* %pic_num82, align 4, !tbaa !3
  %.pre977 = load i32* %is_reference, align 4, !tbaa !3
  br label %if.end83

if.end83:                                         ; preds = %if.end70, %if.then75
  %24 = phi i32 [ %19, %if.end70 ], [ %.pre977, %if.then75 ]
  %and87 = and i32 %24, 2
  %tobool88 = icmp eq i32 %and87, 0
  br i1 %tobool88, label %for.inc100, label %if.then89

if.then89:                                        ; preds = %if.end83
  %frame_num_wrap92 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 6
  %25 = load i32* %frame_num_wrap92, align 4, !tbaa !3
  %mul93 = shl nsw i32 %25, 1
  %add94 = or i32 %mul93, %.
  %bottom_field = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 12
  %26 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %pic_num97 = getelementptr inbounds %struct.storable_picture* %26, i64 0, i32 11
  store i32 %add94, i32* %pic_num97, align 4, !tbaa !3
  br label %for.inc100

for.inc100:                                       ; preds = %if.end83, %for.body45, %if.then89
  %inc101 = add i32 %i.1925, 1
  %27 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp44 = icmp ult i32 %inc101, %27
  br i1 %cmp44, label %for.body45, label %if.end103

if.end103:                                        ; preds = %if.else38, %for.inc100, %for.cond.preheader, %for.inc
  %28 = phi i32 [ 0, %for.cond.preheader ], [ %13, %for.inc ], [ 0, %if.else38 ], [ %27, %for.inc100 ]
  %add_bottom.1 = phi i32 [ 0, %for.cond.preheader ], [ 0, %for.inc ], [ %., %if.else38 ], [ %., %for.inc100 ]
  %add_top.1 = phi i32 [ 0, %for.cond.preheader ], [ 0, %for.inc ], [ %14, %if.else38 ], [ %14, %for.inc100 ]
  switch i32 %currSliceType, label %if.else265 [
    i32 4, label %if.then106
    i32 2, label %if.then106
    i32 3, label %if.then111
    i32 0, label %if.then111
  ]

if.then106:                                       ; preds = %if.end103, %if.end103
  store i32 0, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  store i32 0, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  br label %for.end646

if.then111:                                       ; preds = %if.end103, %if.end103
  br i1 %cmp, label %for.cond114.preheader, label %if.else186

for.cond114.preheader:                            ; preds = %if.then111
  %cmp115909 = icmp eq i32 %28, 0
  br i1 %cmp115909, label %for.end144, label %for.body116

for.body116:                                      ; preds = %for.inc142, %for.cond114.preheader
  %indvars.iv956 = phi i64 [ 0, %for.cond114.preheader ], [ %indvars.iv.next957, %for.inc142 ]
  %list0idx.0911 = phi i32 [ 0, %for.cond114.preheader ], [ %list0idx.1, %for.inc142 ]
  %29 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx118 = getelementptr inbounds %struct.frame_store** %29, i64 %indvars.iv956
  %30 = load %struct.frame_store** %arrayidx118, align 8, !tbaa !0
  %is_used119 = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 0
  %31 = load i32* %is_used119, align 4, !tbaa !3
  %cmp120 = icmp eq i32 %31, 3
  br i1 %cmp120, label %if.then121, label %for.inc142

if.then121:                                       ; preds = %for.body116
  %frame124 = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 10
  %32 = load %struct.storable_picture** %frame124, align 8, !tbaa !0
  %used_for_reference125 = getelementptr inbounds %struct.storable_picture* %32, i64 0, i32 15
  %33 = load i32* %used_for_reference125, align 4, !tbaa !3
  %tobool126 = icmp eq i32 %33, 0
  br i1 %tobool126, label %for.inc142, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %if.then121
  %is_long_term131 = getelementptr inbounds %struct.storable_picture* %32, i64 0, i32 14
  %34 = load i32* %is_long_term131, align 4, !tbaa !3
  %tobool132 = icmp eq i32 %34, 0
  br i1 %tobool132, label %if.then133, label %for.inc142

if.then133:                                       ; preds = %land.lhs.true127
  %inc137 = add nsw i32 %list0idx.0911, 1
  %idxprom138 = sext i32 %list0idx.0911 to i64
  %35 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx139 = getelementptr inbounds %struct.storable_picture** %35, i64 %idxprom138
  store %struct.storable_picture* %32, %struct.storable_picture** %arrayidx139, align 8, !tbaa !0
  br label %for.inc142

for.inc142:                                       ; preds = %land.lhs.true127, %if.then121, %for.body116, %if.then133
  %list0idx.1 = phi i32 [ %list0idx.0911, %land.lhs.true127 ], [ %inc137, %if.then133 ], [ %list0idx.0911, %if.then121 ], [ %list0idx.0911, %for.body116 ]
  %indvars.iv.next957 = add i64 %indvars.iv956, 1
  %36 = trunc i64 %indvars.iv.next957 to i32
  %cmp115 = icmp ult i32 %36, %28
  br i1 %cmp115, label %for.body116, label %for.end144

for.end144:                                       ; preds = %for.inc142, %for.cond114.preheader
  %list0idx.0.lcssa = phi i32 [ 0, %for.cond114.preheader ], [ %list0idx.1, %for.inc142 ]
  %37 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %38 = bitcast %struct.storable_picture** %37 to i8*
  %conv = sext i32 %list0idx.0.lcssa to i64
  tail call void @qsort(i8* %38, i64 %conv, i64 8, i32 (i8*, i8*)* @compare_pic_by_pic_num_desc) #6
  store i32 %list0idx.0.lcssa, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  %39 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %cmp146905 = icmp eq i32 %39, 0
  br i1 %cmp146905, label %for.end181, label %for.body148

for.body148:                                      ; preds = %for.inc179, %for.end144
  %40 = phi i32 [ %39, %for.end144 ], [ %48, %for.inc179 ]
  %list0idx.2907 = phi i32 [ %list0idx.0.lcssa, %for.end144 ], [ %list0idx.3, %for.inc179 ]
  %i.3906 = phi i32 [ 0, %for.end144 ], [ %inc180, %for.inc179 ]
  %idxprom149 = zext i32 %i.3906 to i64
  %41 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds %struct.frame_store** %41, i64 %idxprom149
  %42 = load %struct.frame_store** %arrayidx150, align 8, !tbaa !0
  %is_used151 = getelementptr inbounds %struct.frame_store* %42, i64 0, i32 0
  %43 = load i32* %is_used151, align 4, !tbaa !3
  %cmp152 = icmp eq i32 %43, 3
  br i1 %cmp152, label %if.then154, label %for.inc179

if.then154:                                       ; preds = %for.body148
  %frame157 = getelementptr inbounds %struct.frame_store* %42, i64 0, i32 10
  %44 = load %struct.storable_picture** %frame157, align 8, !tbaa !0
  %is_long_term158 = getelementptr inbounds %struct.storable_picture* %44, i64 0, i32 14
  %45 = load i32* %is_long_term158, align 4, !tbaa !3
  %tobool159 = icmp eq i32 %45, 0
  br i1 %tobool159, label %for.inc179, label %if.then160

if.then160:                                       ; preds = %if.then154
  %long_term_frame_idx = getelementptr inbounds %struct.storable_picture* %44, i64 0, i32 13
  %46 = load i32* %long_term_frame_idx, align 4, !tbaa !3
  %long_term_pic_num = getelementptr inbounds %struct.storable_picture* %44, i64 0, i32 12
  store i32 %46, i32* %long_term_pic_num, align 4, !tbaa !3
  %order_num170 = getelementptr inbounds %struct.storable_picture* %44, i64 0, i32 5
  store i32 %list0idx.2907, i32* %order_num170, align 4, !tbaa !3
  %inc174 = add nsw i32 %list0idx.2907, 1
  %idxprom175 = sext i32 %list0idx.2907 to i64
  %47 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx176 = getelementptr inbounds %struct.storable_picture** %47, i64 %idxprom175
  store %struct.storable_picture* %44, %struct.storable_picture** %arrayidx176, align 8, !tbaa !0
  %.pre976 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  br label %for.inc179

for.inc179:                                       ; preds = %if.then154, %for.body148, %if.then160
  %48 = phi i32 [ %.pre976, %if.then160 ], [ %40, %if.then154 ], [ %40, %for.body148 ]
  %list0idx.3 = phi i32 [ %inc174, %if.then160 ], [ %list0idx.2907, %if.then154 ], [ %list0idx.2907, %for.body148 ]
  %inc180 = add i32 %i.3906, 1
  %cmp146 = icmp ult i32 %inc180, %48
  br i1 %cmp146, label %for.body148, label %for.cond145.for.end181_crit_edge

for.cond145.for.end181_crit_edge:                 ; preds = %for.inc179
  %.pre975 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  br label %for.end181

for.end181:                                       ; preds = %for.end144, %for.cond145.for.end181_crit_edge
  %49 = phi i32 [ %.pre975, %for.cond145.for.end181_crit_edge ], [ %list0idx.0.lcssa, %for.end144 ]
  %list0idx.2.lcssa = phi i32 [ %list0idx.3, %for.cond145.for.end181_crit_edge ], [ %list0idx.0.lcssa, %for.end144 ]
  %idxprom182 = sext i32 %49 to i64
  %50 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx183 = getelementptr inbounds %struct.storable_picture** %50, i64 %idxprom182
  %51 = bitcast %struct.storable_picture** %arrayidx183 to i8*
  %sub184 = sub nsw i32 %list0idx.2.lcssa, %49
  %conv185 = sext i32 %sub184 to i64
  tail call void @qsort(i8* %51, i64 %conv185, i64 8, i32 (i8*, i8*)* @compare_pic_by_lt_pic_num_asc) #6
  store i32 %list0idx.2.lcssa, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  br label %if.end264

if.else186:                                       ; preds = %if.then111
  %52 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  %conv187 = zext i32 %52 to i64
  %call = tail call noalias i8* @calloc(i64 %conv187, i64 8) #6
  %53 = bitcast i8* %call to %struct.frame_store**
  %cmp188 = icmp eq i8* %call, null
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.else186
  tail call void @no_mem_exit(i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0)) #6
  %.pre971 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.else186
  %54 = phi i32 [ %.pre971, %if.then190 ], [ %52, %if.else186 ]
  %conv192 = zext i32 %54 to i64
  %call193 = tail call noalias i8* @calloc(i64 %conv192, i64 8) #6
  %55 = bitcast i8* %call193 to %struct.frame_store**
  %cmp194 = icmp eq i8* %call193, null
  br i1 %cmp194, label %if.then196, label %for.cond198.preheader

if.then196:                                       ; preds = %if.end191
  tail call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0)) #6
  br label %for.cond198.preheader

for.cond198.preheader:                            ; preds = %if.end191, %if.then196
  %56 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp199917 = icmp eq i32 %56, 0
  br i1 %cmp199917, label %for.end215, label %for.body201.lr.ph

for.body201.lr.ph:                                ; preds = %for.cond198.preheader
  %.pre974 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  br label %for.body201

for.body201:                                      ; preds = %for.body201.lr.ph, %for.inc213
  %indvars.iv960 = phi i64 [ 0, %for.body201.lr.ph ], [ %indvars.iv.next961, %for.inc213 ]
  %list0idx.4919 = phi i32 [ 0, %for.body201.lr.ph ], [ %list0idx.5, %for.inc213 ]
  %arrayidx203 = getelementptr inbounds %struct.frame_store** %.pre974, i64 %indvars.iv960
  %57 = load %struct.frame_store** %arrayidx203, align 8, !tbaa !0
  %is_reference204 = getelementptr inbounds %struct.frame_store* %57, i64 0, i32 1
  %58 = load i32* %is_reference204, align 4, !tbaa !3
  %tobool205 = icmp eq i32 %58, 0
  br i1 %tobool205, label %for.inc213, label %if.then206

if.then206:                                       ; preds = %for.body201
  %inc209 = add nsw i32 %list0idx.4919, 1
  %idxprom210 = sext i32 %list0idx.4919 to i64
  %arrayidx211 = getelementptr inbounds %struct.frame_store** %53, i64 %idxprom210
  store %struct.frame_store* %57, %struct.frame_store** %arrayidx211, align 8, !tbaa !0
  br label %for.inc213

for.inc213:                                       ; preds = %for.body201, %if.then206
  %list0idx.5 = phi i32 [ %inc209, %if.then206 ], [ %list0idx.4919, %for.body201 ]
  %indvars.iv.next961 = add i64 %indvars.iv960, 1
  %59 = trunc i64 %indvars.iv.next961 to i32
  %cmp199 = icmp ult i32 %59, %56
  br i1 %cmp199, label %for.body201, label %for.end215

for.end215:                                       ; preds = %for.inc213, %for.cond198.preheader
  %list0idx.4.lcssa = phi i32 [ 0, %for.cond198.preheader ], [ %list0idx.5, %for.inc213 ]
  %conv216 = sext i32 %list0idx.4.lcssa to i64
  tail call void @qsort(i8* %call, i64 %conv216, i64 8, i32 (i8*, i8*)* @compare_fs_by_frame_num_desc) #6
  store i32 0, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  %60 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  tail call fastcc void @gen_pic_list_from_frame_list(i32 %currPicStructure, %struct.frame_store** %53, i32 %list0idx.4.lcssa, %struct.storable_picture** %60, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), i32 0) #7
  %61 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %cmp218913 = icmp eq i32 %61, 0
  br i1 %cmp218913, label %for.end262, label %for.body220.lr.ph

for.body220.lr.ph:                                ; preds = %for.end215
  %.pre972 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  br label %for.body220

for.body220:                                      ; preds = %for.body220.lr.ph, %for.inc260
  %indvars.iv958 = phi i64 [ 0, %for.body220.lr.ph ], [ %indvars.iv.next959, %for.inc260 ]
  %listltidx.0915 = phi i32 [ 0, %for.body220.lr.ph ], [ %inc223, %for.inc260 ]
  %arrayidx222 = getelementptr inbounds %struct.frame_store** %.pre972, i64 %indvars.iv958
  %62 = load %struct.frame_store** %arrayidx222, align 8, !tbaa !0
  %indvars.iv.next959 = add i64 %indvars.iv958, 1
  %inc223 = add nsw i32 %listltidx.0915, 1
  %arrayidx225 = getelementptr inbounds %struct.frame_store** %55, i64 %indvars.iv958
  store %struct.frame_store* %62, %struct.frame_store** %arrayidx225, align 8, !tbaa !0
  %63 = load %struct.frame_store** %arrayidx222, align 8, !tbaa !0
  %is_long_term228 = getelementptr inbounds %struct.frame_store* %63, i64 0, i32 2
  %64 = load i32* %is_long_term228, align 4, !tbaa !3
  %and229 = and i32 %64, 1
  %tobool230 = icmp eq i32 %and229, 0
  br i1 %tobool230, label %if.end242, label %if.then231

if.then231:                                       ; preds = %for.body220
  %top_field234 = getelementptr inbounds %struct.frame_store* %63, i64 0, i32 11
  %65 = load %struct.storable_picture** %top_field234, align 8, !tbaa !0
  %long_term_frame_idx235 = getelementptr inbounds %struct.storable_picture* %65, i64 0, i32 13
  %66 = load i32* %long_term_frame_idx235, align 4, !tbaa !3
  %mul236 = shl nsw i32 %66, 1
  %add237 = or i32 %mul236, %add_top.1
  %long_term_pic_num241 = getelementptr inbounds %struct.storable_picture* %65, i64 0, i32 12
  store i32 %add237, i32* %long_term_pic_num241, align 4, !tbaa !3
  %.pre973 = load i32* %is_long_term228, align 4, !tbaa !3
  br label %if.end242

if.end242:                                        ; preds = %for.body220, %if.then231
  %67 = phi i32 [ %64, %for.body220 ], [ %.pre973, %if.then231 ]
  %and246 = and i32 %67, 2
  %tobool247 = icmp eq i32 %and246, 0
  br i1 %tobool247, label %for.inc260, label %if.then248

if.then248:                                       ; preds = %if.end242
  %bottom_field251 = getelementptr inbounds %struct.frame_store* %63, i64 0, i32 12
  %68 = load %struct.storable_picture** %bottom_field251, align 8, !tbaa !0
  %long_term_frame_idx252 = getelementptr inbounds %struct.storable_picture* %68, i64 0, i32 13
  %69 = load i32* %long_term_frame_idx252, align 4, !tbaa !3
  %mul253 = shl i32 %69, 1
  %add254 = add nsw i32 %mul253, %add_bottom.1
  %long_term_pic_num258 = getelementptr inbounds %struct.storable_picture* %68, i64 0, i32 12
  store i32 %add254, i32* %long_term_pic_num258, align 4, !tbaa !3
  br label %for.inc260

for.inc260:                                       ; preds = %if.end242, %if.then248
  %70 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %71 = trunc i64 %indvars.iv.next959 to i32
  %cmp218 = icmp ult i32 %71, %70
  br i1 %cmp218, label %for.body220, label %for.end262

for.end262:                                       ; preds = %for.inc260, %for.end215
  %listltidx.0.lcssa = phi i32 [ 0, %for.end215 ], [ %inc223, %for.inc260 ]
  %conv263 = sext i32 %listltidx.0.lcssa to i64
  tail call void @qsort(i8* %call193, i64 %conv263, i64 8, i32 (i8*, i8*)* @compare_fs_by_lt_pic_idx_asc) #6
  %72 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  tail call fastcc void @gen_pic_list_from_frame_list(i32 %currPicStructure, %struct.frame_store** %55, i32 %listltidx.0.lcssa, %struct.storable_picture** %72, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), i32 1) #7
  tail call void @free(i8* %call) #6
  tail call void @free(i8* %call193) #6
  br label %if.end264

if.end264:                                        ; preds = %for.end262, %for.end181
  store i32 0, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  br label %if.end589

if.else265:                                       ; preds = %if.end103
  br i1 %cmp, label %for.cond269.preheader, label %if.else441

for.cond269.preheader:                            ; preds = %if.else265
  %cmp270885 = icmp eq i32 %28, 0
  br i1 %cmp270885, label %for.end312, label %for.body272

for.body272:                                      ; preds = %for.inc310, %for.cond269.preheader
  %73 = phi i32 [ %28, %for.cond269.preheader ], [ %84, %for.inc310 ]
  %list0idx.6887 = phi i32 [ 0, %for.cond269.preheader ], [ %list0idx.7, %for.inc310 ]
  %i.6886 = phi i32 [ 0, %for.cond269.preheader ], [ %inc311, %for.inc310 ]
  %idxprom273 = zext i32 %i.6886 to i64
  %74 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx274 = getelementptr inbounds %struct.frame_store** %74, i64 %idxprom273
  %75 = load %struct.frame_store** %arrayidx274, align 8, !tbaa !0
  %is_used275 = getelementptr inbounds %struct.frame_store* %75, i64 0, i32 0
  %76 = load i32* %is_used275, align 4, !tbaa !3
  %cmp276 = icmp eq i32 %76, 3
  br i1 %cmp276, label %if.then278, label %for.inc310

if.then278:                                       ; preds = %for.body272
  %frame281 = getelementptr inbounds %struct.frame_store* %75, i64 0, i32 10
  %77 = load %struct.storable_picture** %frame281, align 8, !tbaa !0
  %used_for_reference282 = getelementptr inbounds %struct.storable_picture* %77, i64 0, i32 15
  %78 = load i32* %used_for_reference282, align 4, !tbaa !3
  %tobool283 = icmp eq i32 %78, 0
  br i1 %tobool283, label %for.inc310, label %land.lhs.true284

land.lhs.true284:                                 ; preds = %if.then278
  %is_long_term288 = getelementptr inbounds %struct.storable_picture* %77, i64 0, i32 14
  %79 = load i32* %is_long_term288, align 4, !tbaa !3
  %tobool289 = icmp eq i32 %79, 0
  br i1 %tobool289, label %if.then290, label %for.inc310

if.then290:                                       ; preds = %land.lhs.true284
  %80 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %framepoc = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 103
  %81 = load i32* %framepoc, align 4, !tbaa !3
  %poc = getelementptr inbounds %struct.storable_picture* %77, i64 0, i32 1
  %82 = load i32* %poc, align 4, !tbaa !3
  %cmp294 = icmp sgt i32 %81, %82
  br i1 %cmp294, label %if.then296, label %for.inc310

if.then296:                                       ; preds = %if.then290
  %order_num300 = getelementptr inbounds %struct.storable_picture* %77, i64 0, i32 5
  store i32 %list0idx.6887, i32* %order_num300, align 4, !tbaa !3
  %inc304 = add nsw i32 %list0idx.6887, 1
  %idxprom305 = sext i32 %list0idx.6887 to i64
  %83 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx306 = getelementptr inbounds %struct.storable_picture** %83, i64 %idxprom305
  store %struct.storable_picture* %77, %struct.storable_picture** %arrayidx306, align 8, !tbaa !0
  %.pre970 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  br label %for.inc310

for.inc310:                                       ; preds = %land.lhs.true284, %if.then278, %for.body272, %if.then290, %if.then296
  %84 = phi i32 [ %73, %land.lhs.true284 ], [ %.pre970, %if.then296 ], [ %73, %if.then290 ], [ %73, %if.then278 ], [ %73, %for.body272 ]
  %list0idx.7 = phi i32 [ %list0idx.6887, %land.lhs.true284 ], [ %inc304, %if.then296 ], [ %list0idx.6887, %if.then290 ], [ %list0idx.6887, %if.then278 ], [ %list0idx.6887, %for.body272 ]
  %inc311 = add i32 %i.6886, 1
  %cmp270 = icmp ult i32 %inc311, %84
  br i1 %cmp270, label %for.body272, label %for.end312

for.end312:                                       ; preds = %for.inc310, %for.cond269.preheader
  %list0idx.6.lcssa = phi i32 [ 0, %for.cond269.preheader ], [ %list0idx.7, %for.inc310 ]
  %85 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %86 = bitcast %struct.storable_picture** %85 to i8*
  %conv313 = sext i32 %list0idx.6.lcssa to i64
  tail call void @qsort(i8* %86, i64 %conv313, i64 8, i32 (i8*, i8*)* @compare_pic_by_poc_desc) #6
  %87 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp315881 = icmp eq i32 %87, 0
  br i1 %cmp315881, label %for.end359, label %for.body317

for.body317:                                      ; preds = %for.inc357, %for.end312
  %88 = phi i32 [ %87, %for.end312 ], [ %99, %for.inc357 ]
  %list0idx.8883 = phi i32 [ %list0idx.6.lcssa, %for.end312 ], [ %list0idx.9, %for.inc357 ]
  %i.7882 = phi i32 [ 0, %for.end312 ], [ %inc358, %for.inc357 ]
  %idxprom318 = zext i32 %i.7882 to i64
  %89 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx319 = getelementptr inbounds %struct.frame_store** %89, i64 %idxprom318
  %90 = load %struct.frame_store** %arrayidx319, align 8, !tbaa !0
  %is_used320 = getelementptr inbounds %struct.frame_store* %90, i64 0, i32 0
  %91 = load i32* %is_used320, align 4, !tbaa !3
  %cmp321 = icmp eq i32 %91, 3
  br i1 %cmp321, label %if.then323, label %for.inc357

if.then323:                                       ; preds = %for.body317
  %frame326 = getelementptr inbounds %struct.frame_store* %90, i64 0, i32 10
  %92 = load %struct.storable_picture** %frame326, align 8, !tbaa !0
  %used_for_reference327 = getelementptr inbounds %struct.storable_picture* %92, i64 0, i32 15
  %93 = load i32* %used_for_reference327, align 4, !tbaa !3
  %tobool328 = icmp eq i32 %93, 0
  br i1 %tobool328, label %for.inc357, label %land.lhs.true329

land.lhs.true329:                                 ; preds = %if.then323
  %is_long_term333 = getelementptr inbounds %struct.storable_picture* %92, i64 0, i32 14
  %94 = load i32* %is_long_term333, align 4, !tbaa !3
  %tobool334 = icmp eq i32 %94, 0
  br i1 %tobool334, label %if.then335, label %for.inc357

if.then335:                                       ; preds = %land.lhs.true329
  %95 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %framepoc336 = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 103
  %96 = load i32* %framepoc336, align 4, !tbaa !3
  %poc340 = getelementptr inbounds %struct.storable_picture* %92, i64 0, i32 1
  %97 = load i32* %poc340, align 4, !tbaa !3
  %cmp341 = icmp slt i32 %96, %97
  br i1 %cmp341, label %if.then343, label %for.inc357

if.then343:                                       ; preds = %if.then335
  %order_num347 = getelementptr inbounds %struct.storable_picture* %92, i64 0, i32 5
  store i32 %list0idx.8883, i32* %order_num347, align 4, !tbaa !3
  %inc351 = add nsw i32 %list0idx.8883, 1
  %idxprom352 = sext i32 %list0idx.8883 to i64
  %98 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx353 = getelementptr inbounds %struct.storable_picture** %98, i64 %idxprom352
  store %struct.storable_picture* %92, %struct.storable_picture** %arrayidx353, align 8, !tbaa !0
  %.pre969 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  br label %for.inc357

for.inc357:                                       ; preds = %land.lhs.true329, %if.then323, %for.body317, %if.then335, %if.then343
  %99 = phi i32 [ %88, %land.lhs.true329 ], [ %.pre969, %if.then343 ], [ %88, %if.then335 ], [ %88, %if.then323 ], [ %88, %for.body317 ]
  %list0idx.9 = phi i32 [ %list0idx.8883, %land.lhs.true329 ], [ %inc351, %if.then343 ], [ %list0idx.8883, %if.then335 ], [ %list0idx.8883, %if.then323 ], [ %list0idx.8883, %for.body317 ]
  %inc358 = add i32 %i.7882, 1
  %cmp315 = icmp ult i32 %inc358, %99
  br i1 %cmp315, label %for.body317, label %for.end359

for.end359:                                       ; preds = %for.inc357, %for.end312
  %list0idx.8.lcssa = phi i32 [ %list0idx.6.lcssa, %for.end312 ], [ %list0idx.9, %for.inc357 ]
  %100 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx361 = getelementptr inbounds %struct.storable_picture** %100, i64 %conv313
  %101 = bitcast %struct.storable_picture** %arrayidx361 to i8*
  %sub362 = sub nsw i32 %list0idx.8.lcssa, %list0idx.6.lcssa
  %conv363 = sext i32 %sub362 to i64
  tail call void @qsort(i8* %101, i64 %conv363, i64 8, i32 (i8*, i8*)* @compare_pic_by_poc_asc) #6
  %cmp365879 = icmp sgt i32 %list0idx.6.lcssa, 0
  br i1 %cmp365879, label %for.body367, label %for.cond377.preheader

for.cond377.preheader:                            ; preds = %for.body367, %for.end359
  %cmp378877 = icmp slt i32 %list0idx.6.lcssa, %list0idx.8.lcssa
  br i1 %cmp378877, label %for.body380, label %for.end388

for.body367:                                      ; preds = %for.end359, %for.body367
  %indvars.iv936 = phi i64 [ %indvars.iv.next937, %for.body367 ], [ 0, %for.end359 ]
  %102 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx369 = getelementptr inbounds %struct.storable_picture** %102, i64 %indvars.iv936
  %103 = load %struct.storable_picture** %arrayidx369, align 8, !tbaa !0
  %104 = add nsw i64 %indvars.iv936, %conv363
  %105 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %arrayidx373 = getelementptr inbounds %struct.storable_picture** %105, i64 %104
  store %struct.storable_picture* %103, %struct.storable_picture** %arrayidx373, align 8, !tbaa !0
  %indvars.iv.next937 = add i64 %indvars.iv936, 1
  %lftr.wideiv939 = trunc i64 %indvars.iv.next937 to i32
  %exitcond940 = icmp eq i32 %lftr.wideiv939, %list0idx.6.lcssa
  br i1 %exitcond940, label %for.cond377.preheader, label %for.body367

for.body380:                                      ; preds = %for.cond377.preheader, %for.body380
  %indvars.iv933 = phi i64 [ %indvars.iv.next934, %for.body380 ], [ %conv313, %for.cond377.preheader ]
  %106 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx382 = getelementptr inbounds %struct.storable_picture** %106, i64 %indvars.iv933
  %107 = load %struct.storable_picture** %arrayidx382, align 8, !tbaa !0
  %108 = trunc i64 %indvars.iv933 to i32
  %sub383 = sub nsw i32 %108, %list0idx.6.lcssa
  %idxprom384 = sext i32 %sub383 to i64
  %109 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %arrayidx385 = getelementptr inbounds %struct.storable_picture** %109, i64 %idxprom384
  store %struct.storable_picture* %107, %struct.storable_picture** %arrayidx385, align 8, !tbaa !0
  %indvars.iv.next934 = add i64 %indvars.iv933, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next934 to i32
  %exitcond935 = icmp eq i32 %lftr.wideiv, %list0idx.8.lcssa
  br i1 %exitcond935, label %for.end388, label %for.body380

for.end388:                                       ; preds = %for.body380, %for.cond377.preheader
  store i32 %list0idx.8.lcssa, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  store i32 %list0idx.8.lcssa, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  %110 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %cmp390873 = icmp eq i32 %110, 0
  br i1 %cmp390873, label %for.end432, label %for.body392

for.body392:                                      ; preds = %for.inc430, %for.end388
  %111 = phi i32 [ %110, %for.end388 ], [ %123, %for.inc430 ]
  %list0idx.10875 = phi i32 [ %list0idx.8.lcssa, %for.end388 ], [ %list0idx.11, %for.inc430 ]
  %i.8874 = phi i32 [ 0, %for.end388 ], [ %inc431, %for.inc430 ]
  %idxprom393 = zext i32 %i.8874 to i64
  %112 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx394 = getelementptr inbounds %struct.frame_store** %112, i64 %idxprom393
  %113 = load %struct.frame_store** %arrayidx394, align 8, !tbaa !0
  %is_used395 = getelementptr inbounds %struct.frame_store* %113, i64 0, i32 0
  %114 = load i32* %is_used395, align 4, !tbaa !3
  %cmp396 = icmp eq i32 %114, 3
  br i1 %cmp396, label %if.then398, label %for.inc430

if.then398:                                       ; preds = %for.body392
  %frame401 = getelementptr inbounds %struct.frame_store* %113, i64 0, i32 10
  %115 = load %struct.storable_picture** %frame401, align 8, !tbaa !0
  %is_long_term402 = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 14
  %116 = load i32* %is_long_term402, align 4, !tbaa !3
  %tobool403 = icmp eq i32 %116, 0
  br i1 %tobool403, label %for.inc430, label %if.then404

if.then404:                                       ; preds = %if.then398
  %long_term_frame_idx408 = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 13
  %117 = load i32* %long_term_frame_idx408, align 4, !tbaa !3
  %long_term_pic_num412 = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 12
  store i32 %117, i32* %long_term_pic_num412, align 4, !tbaa !3
  %order_num416 = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 5
  store i32 %list0idx.10875, i32* %order_num416, align 4, !tbaa !3
  %idxprom420 = sext i32 %list0idx.10875 to i64
  %118 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx421 = getelementptr inbounds %struct.storable_picture** %118, i64 %idxprom420
  store %struct.storable_picture* %115, %struct.storable_picture** %arrayidx421, align 8, !tbaa !0
  %119 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx423 = getelementptr inbounds %struct.frame_store** %119, i64 %idxprom393
  %120 = load %struct.frame_store** %arrayidx423, align 8, !tbaa !0
  %frame424 = getelementptr inbounds %struct.frame_store* %120, i64 0, i32 10
  %121 = load %struct.storable_picture** %frame424, align 8, !tbaa !0
  %inc425 = add nsw i32 %list0idx.10875, 1
  %122 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %arrayidx427 = getelementptr inbounds %struct.storable_picture** %122, i64 %idxprom420
  store %struct.storable_picture* %121, %struct.storable_picture** %arrayidx427, align 8, !tbaa !0
  %.pre968 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  br label %for.inc430

for.inc430:                                       ; preds = %if.then398, %for.body392, %if.then404
  %123 = phi i32 [ %.pre968, %if.then404 ], [ %111, %if.then398 ], [ %111, %for.body392 ]
  %list0idx.11 = phi i32 [ %inc425, %if.then404 ], [ %list0idx.10875, %if.then398 ], [ %list0idx.10875, %for.body392 ]
  %inc431 = add i32 %i.8874, 1
  %cmp390 = icmp ult i32 %inc431, %123
  br i1 %cmp390, label %for.body392, label %for.cond389.for.end432_crit_edge

for.cond389.for.end432_crit_edge:                 ; preds = %for.inc430
  %.pre967 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  br label %for.end432

for.end432:                                       ; preds = %for.end388, %for.cond389.for.end432_crit_edge
  %124 = phi i32 [ %.pre967, %for.cond389.for.end432_crit_edge ], [ %list0idx.8.lcssa, %for.end388 ]
  %list0idx.10.lcssa = phi i32 [ %list0idx.11, %for.cond389.for.end432_crit_edge ], [ %list0idx.8.lcssa, %for.end388 ]
  %idxprom433 = sext i32 %124 to i64
  %125 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx434 = getelementptr inbounds %struct.storable_picture** %125, i64 %idxprom433
  %126 = bitcast %struct.storable_picture** %arrayidx434 to i8*
  %sub435 = sub nsw i32 %list0idx.10.lcssa, %124
  %conv436 = sext i32 %sub435 to i64
  tail call void @qsort(i8* %126, i64 %conv436, i64 8, i32 (i8*, i8*)* @compare_pic_by_lt_pic_num_asc) #6
  %127 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  %idxprom437 = sext i32 %127 to i64
  %128 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %arrayidx438 = getelementptr inbounds %struct.storable_picture** %128, i64 %idxprom437
  %129 = bitcast %struct.storable_picture** %arrayidx438 to i8*
  %sub439 = sub nsw i32 %list0idx.10.lcssa, %127
  %conv440 = sext i32 %sub439 to i64
  tail call void @qsort(i8* %129, i64 %conv440, i64 8, i32 (i8*, i8*)* @compare_pic_by_lt_pic_num_asc) #6
  store i32 %list0idx.10.lcssa, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  store i32 %list0idx.10.lcssa, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  br label %if.end589

if.else441:                                       ; preds = %if.else265
  %130 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  %conv442 = zext i32 %130 to i64
  %call443 = tail call noalias i8* @calloc(i64 %conv442, i64 8) #6
  %131 = bitcast i8* %call443 to %struct.frame_store**
  %cmp444 = icmp eq i8* %call443, null
  br i1 %cmp444, label %if.then446, label %if.end447

if.then446:                                       ; preds = %if.else441
  tail call void @no_mem_exit(i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0)) #6
  %.pre = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  br label %if.end447

if.end447:                                        ; preds = %if.then446, %if.else441
  %132 = phi i32 [ %.pre, %if.then446 ], [ %130, %if.else441 ]
  %conv448 = zext i32 %132 to i64
  %call449 = tail call noalias i8* @calloc(i64 %conv448, i64 8) #6
  %133 = bitcast i8* %call449 to %struct.frame_store**
  %cmp450 = icmp eq i8* %call449, null
  br i1 %cmp450, label %if.then452, label %if.end453

if.then452:                                       ; preds = %if.end447
  tail call void @no_mem_exit(i8* getelementptr inbounds ([21 x i8]* @.str11, i64 0, i64 0)) #6
  %.pre962 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  br label %if.end453

if.end453:                                        ; preds = %if.then452, %if.end447
  %134 = phi i32 [ %.pre962, %if.then452 ], [ %132, %if.end447 ]
  %conv454 = zext i32 %134 to i64
  %call455 = tail call noalias i8* @calloc(i64 %conv454, i64 8) #6
  %135 = bitcast i8* %call455 to %struct.frame_store**
  %cmp456 = icmp eq i8* %call455, null
  br i1 %cmp456, label %if.then458, label %if.end459

if.then458:                                       ; preds = %if.end453
  tail call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0)) #6
  br label %if.end459

if.end459:                                        ; preds = %if.end453, %if.then458
  store i32 0, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  store i32 1, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %136 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp461901 = icmp eq i32 %136, 0
  br i1 %cmp461901, label %for.end484, label %for.body463.lr.ph

for.body463.lr.ph:                                ; preds = %if.end459
  %.pre966 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  br label %for.body463

for.body463:                                      ; preds = %for.body463.lr.ph, %for.inc482
  %indvars.iv954 = phi i64 [ 0, %for.body463.lr.ph ], [ %indvars.iv.next955, %for.inc482 ]
  %list0idx.12903 = phi i32 [ 0, %for.body463.lr.ph ], [ %list0idx.13, %for.inc482 ]
  %arrayidx465 = getelementptr inbounds %struct.frame_store** %.pre966, i64 %indvars.iv954
  %137 = load %struct.frame_store** %arrayidx465, align 8, !tbaa !0
  %is_used466 = getelementptr inbounds %struct.frame_store* %137, i64 0, i32 0
  %138 = load i32* %is_used466, align 4, !tbaa !3
  %tobool467 = icmp eq i32 %138, 0
  br i1 %tobool467, label %for.inc482, label %if.then468

if.then468:                                       ; preds = %for.body463
  %139 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %ThisPOC = getelementptr inbounds %struct.ImageParameters* %139, i64 0, i32 104
  %140 = load i32* %ThisPOC, align 4, !tbaa !3
  %poc471 = getelementptr inbounds %struct.frame_store* %137, i64 0, i32 9
  %141 = load i32* %poc471, align 4, !tbaa !3
  %cmp472 = icmp slt i32 %140, %141
  br i1 %cmp472, label %for.inc482, label %if.then474

if.then474:                                       ; preds = %if.then468
  %inc477 = add nsw i32 %list0idx.12903, 1
  %idxprom478 = sext i32 %list0idx.12903 to i64
  %arrayidx479 = getelementptr inbounds %struct.frame_store** %131, i64 %idxprom478
  store %struct.frame_store* %137, %struct.frame_store** %arrayidx479, align 8, !tbaa !0
  br label %for.inc482

for.inc482:                                       ; preds = %if.then468, %for.body463, %if.then474
  %list0idx.13 = phi i32 [ %inc477, %if.then474 ], [ %list0idx.12903, %if.then468 ], [ %list0idx.12903, %for.body463 ]
  %indvars.iv.next955 = add i64 %indvars.iv954, 1
  %142 = trunc i64 %indvars.iv.next955 to i32
  %cmp461 = icmp ult i32 %142, %136
  br i1 %cmp461, label %for.body463, label %for.end484

for.end484:                                       ; preds = %for.inc482, %if.end459
  %list0idx.12.lcssa = phi i32 [ 0, %if.end459 ], [ %list0idx.13, %for.inc482 ]
  %conv485 = sext i32 %list0idx.12.lcssa to i64
  tail call void @qsort(i8* %call443, i64 %conv485, i64 8, i32 (i8*, i8*)* @compare_fs_by_poc_desc) #6
  %143 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp487897 = icmp eq i32 %143, 0
  br i1 %cmp487897, label %for.end511, label %for.body489.lr.ph

for.body489.lr.ph:                                ; preds = %for.end484
  %.pre965 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  br label %for.body489

for.body489:                                      ; preds = %for.body489.lr.ph, %for.inc509
  %indvars.iv952 = phi i64 [ 0, %for.body489.lr.ph ], [ %indvars.iv.next953, %for.inc509 ]
  %list0idx.14899 = phi i32 [ %list0idx.12.lcssa, %for.body489.lr.ph ], [ %list0idx.15, %for.inc509 ]
  %arrayidx491 = getelementptr inbounds %struct.frame_store** %.pre965, i64 %indvars.iv952
  %144 = load %struct.frame_store** %arrayidx491, align 8, !tbaa !0
  %is_used492 = getelementptr inbounds %struct.frame_store* %144, i64 0, i32 0
  %145 = load i32* %is_used492, align 4, !tbaa !3
  %tobool493 = icmp eq i32 %145, 0
  br i1 %tobool493, label %for.inc509, label %if.then494

if.then494:                                       ; preds = %for.body489
  %146 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %ThisPOC495 = getelementptr inbounds %struct.ImageParameters* %146, i64 0, i32 104
  %147 = load i32* %ThisPOC495, align 4, !tbaa !3
  %poc498 = getelementptr inbounds %struct.frame_store* %144, i64 0, i32 9
  %148 = load i32* %poc498, align 4, !tbaa !3
  %cmp499 = icmp slt i32 %147, %148
  br i1 %cmp499, label %if.then501, label %for.inc509

if.then501:                                       ; preds = %if.then494
  %inc504 = add nsw i32 %list0idx.14899, 1
  %idxprom505 = sext i32 %list0idx.14899 to i64
  %arrayidx506 = getelementptr inbounds %struct.frame_store** %131, i64 %idxprom505
  store %struct.frame_store* %144, %struct.frame_store** %arrayidx506, align 8, !tbaa !0
  br label %for.inc509

for.inc509:                                       ; preds = %for.body489, %if.then501, %if.then494
  %list0idx.15 = phi i32 [ %inc504, %if.then501 ], [ %list0idx.14899, %if.then494 ], [ %list0idx.14899, %for.body489 ]
  %indvars.iv.next953 = add i64 %indvars.iv952, 1
  %149 = trunc i64 %indvars.iv.next953 to i32
  %cmp487 = icmp ult i32 %149, %143
  br i1 %cmp487, label %for.body489, label %for.end511

for.end511:                                       ; preds = %for.inc509, %for.end484
  %list0idx.14.lcssa = phi i32 [ %list0idx.12.lcssa, %for.end484 ], [ %list0idx.15, %for.inc509 ]
  %arrayidx513 = getelementptr inbounds %struct.frame_store** %131, i64 %conv485
  %150 = bitcast %struct.frame_store** %arrayidx513 to i8*
  %sub514 = sub i32 %list0idx.14.lcssa, %list0idx.12.lcssa
  %conv515 = sext i32 %sub514 to i64
  tail call void @qsort(i8* %150, i64 %conv515, i64 8, i32 (i8*, i8*)* @compare_fs_by_poc_asc) #6
  %cmp517895 = icmp sgt i32 %list0idx.12.lcssa, 0
  br i1 %cmp517895, label %for.body519.lr.ph, label %for.cond529.preheader

for.body519.lr.ph:                                ; preds = %for.end511
  %151 = shl nsw i64 %conv515, 3
  %scevgep = getelementptr i8* %call449, i64 %151
  %152 = add i32 %list0idx.12.lcssa, -1
  %153 = zext i32 %152 to i64
  %154 = shl nuw nsw i64 %153, 3
  %155 = add i64 %154, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep, i8* %call443, i64 %155, i32 8, i1 false)
  br label %for.cond529.preheader

for.cond529.preheader:                            ; preds = %for.body519.lr.ph, %for.end511
  %cmp530893 = icmp slt i32 %list0idx.12.lcssa, %list0idx.14.lcssa
  br i1 %cmp530893, label %for.body532, label %for.end540

for.body532:                                      ; preds = %for.cond529.preheader, %for.body532
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %for.body532 ], [ %conv485, %for.cond529.preheader ]
  %arrayidx534 = getelementptr inbounds %struct.frame_store** %131, i64 %indvars.iv943
  %156 = load %struct.frame_store** %arrayidx534, align 8, !tbaa !0
  %157 = trunc i64 %indvars.iv943 to i32
  %sub535 = sub nsw i32 %157, %list0idx.12.lcssa
  %idxprom536 = sext i32 %sub535 to i64
  %arrayidx537 = getelementptr inbounds %struct.frame_store** %133, i64 %idxprom536
  store %struct.frame_store* %156, %struct.frame_store** %arrayidx537, align 8, !tbaa !0
  %indvars.iv.next944 = add i64 %indvars.iv943, 1
  %lftr.wideiv945 = trunc i64 %indvars.iv.next944 to i32
  %exitcond946 = icmp eq i32 %lftr.wideiv945, %list0idx.14.lcssa
  br i1 %exitcond946, label %for.end540, label %for.body532

for.end540:                                       ; preds = %for.body532, %for.cond529.preheader
  store i32 0, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  store i32 0, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %158 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  tail call fastcc void @gen_pic_list_from_frame_list(i32 %currPicStructure, %struct.frame_store** %131, i32 %list0idx.14.lcssa, %struct.storable_picture** %158, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), i32 0) #7
  %159 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  tail call fastcc void @gen_pic_list_from_frame_list(i32 %currPicStructure, %struct.frame_store** %133, i32 %list0idx.14.lcssa, %struct.storable_picture** %159, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), i32 0) #7
  %160 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %cmp542889 = icmp eq i32 %160, 0
  br i1 %cmp542889, label %for.end586, label %for.body544.lr.ph

for.body544.lr.ph:                                ; preds = %for.end540
  %.pre963 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  br label %for.body544

for.body544:                                      ; preds = %for.body544.lr.ph, %for.inc584
  %indvars.iv941 = phi i64 [ 0, %for.body544.lr.ph ], [ %indvars.iv.next942, %for.inc584 ]
  %listltidx.1891 = phi i32 [ 0, %for.body544.lr.ph ], [ %inc547, %for.inc584 ]
  %arrayidx546 = getelementptr inbounds %struct.frame_store** %.pre963, i64 %indvars.iv941
  %161 = load %struct.frame_store** %arrayidx546, align 8, !tbaa !0
  %indvars.iv.next942 = add i64 %indvars.iv941, 1
  %inc547 = add nsw i32 %listltidx.1891, 1
  %arrayidx549 = getelementptr inbounds %struct.frame_store** %135, i64 %indvars.iv941
  store %struct.frame_store* %161, %struct.frame_store** %arrayidx549, align 8, !tbaa !0
  %162 = load %struct.frame_store** %arrayidx546, align 8, !tbaa !0
  %is_long_term552 = getelementptr inbounds %struct.frame_store* %162, i64 0, i32 2
  %163 = load i32* %is_long_term552, align 4, !tbaa !3
  %and553 = and i32 %163, 1
  %tobool554 = icmp eq i32 %and553, 0
  br i1 %tobool554, label %if.end566, label %if.then555

if.then555:                                       ; preds = %for.body544
  %top_field558 = getelementptr inbounds %struct.frame_store* %162, i64 0, i32 11
  %164 = load %struct.storable_picture** %top_field558, align 8, !tbaa !0
  %long_term_frame_idx559 = getelementptr inbounds %struct.storable_picture* %164, i64 0, i32 13
  %165 = load i32* %long_term_frame_idx559, align 4, !tbaa !3
  %mul560 = shl nsw i32 %165, 1
  %add561 = or i32 %mul560, %add_top.1
  %long_term_pic_num565 = getelementptr inbounds %struct.storable_picture* %164, i64 0, i32 12
  store i32 %add561, i32* %long_term_pic_num565, align 4, !tbaa !3
  %.pre964 = load i32* %is_long_term552, align 4, !tbaa !3
  br label %if.end566

if.end566:                                        ; preds = %for.body544, %if.then555
  %166 = phi i32 [ %163, %for.body544 ], [ %.pre964, %if.then555 ]
  %and570 = and i32 %166, 2
  %tobool571 = icmp eq i32 %and570, 0
  br i1 %tobool571, label %for.inc584, label %if.then572

if.then572:                                       ; preds = %if.end566
  %bottom_field575 = getelementptr inbounds %struct.frame_store* %162, i64 0, i32 12
  %167 = load %struct.storable_picture** %bottom_field575, align 8, !tbaa !0
  %long_term_frame_idx576 = getelementptr inbounds %struct.storable_picture* %167, i64 0, i32 13
  %168 = load i32* %long_term_frame_idx576, align 4, !tbaa !3
  %mul577 = shl i32 %168, 1
  %add578 = add nsw i32 %mul577, %add_bottom.1
  %long_term_pic_num582 = getelementptr inbounds %struct.storable_picture* %167, i64 0, i32 12
  store i32 %add578, i32* %long_term_pic_num582, align 4, !tbaa !3
  br label %for.inc584

for.inc584:                                       ; preds = %if.end566, %if.then572
  %169 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %170 = trunc i64 %indvars.iv.next942 to i32
  %cmp542 = icmp ult i32 %170, %169
  br i1 %cmp542, label %for.body544, label %for.end586

for.end586:                                       ; preds = %for.inc584, %for.end540
  %listltidx.1.lcssa = phi i32 [ 0, %for.end540 ], [ %inc547, %for.inc584 ]
  %conv587 = sext i32 %listltidx.1.lcssa to i64
  tail call void @qsort(i8* %call455, i64 %conv587, i64 8, i32 (i8*, i8*)* @compare_fs_by_lt_pic_idx_asc) #6
  %171 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  tail call fastcc void @gen_pic_list_from_frame_list(i32 %currPicStructure, %struct.frame_store** %135, i32 %listltidx.1.lcssa, %struct.storable_picture** %171, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), i32 1) #7
  %172 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  tail call fastcc void @gen_pic_list_from_frame_list(i32 %currPicStructure, %struct.frame_store** %135, i32 %listltidx.1.lcssa, %struct.storable_picture** %172, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), i32 1) #7
  tail call void @free(i8* %call443) #6
  tail call void @free(i8* %call449) #6
  tail call void @free(i8* %call455) #6
  br label %if.end589

if.end589:                                        ; preds = %for.end432, %for.end586, %if.end264
  %173 = load i64* bitcast ([6 x i32]* @listXsize to i64*), align 16
  %174 = trunc i64 %173 to i32
  %175 = lshr i64 %173, 32
  %176 = trunc i64 %175 to i32
  %cmp590 = icmp eq i32 %174, %176
  %cmp593 = icmp sgt i32 %174, 1
  %or.cond648 = and i1 %cmp590, %cmp593
  br i1 %or.cond648, label %for.cond596.preheader, label %if.end618

for.cond596.preheader:                            ; preds = %if.end589
  %cmp597870 = icmp sgt i32 %174, 0
  br i1 %cmp597870, label %for.body599.lr.ph, label %if.then612

for.body599.lr.ph:                                ; preds = %for.cond596.preheader
  %177 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %178 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  br label %for.body599

for.body599:                                      ; preds = %for.body599.lr.ph, %for.body599
  %indvars.iv931 = phi i64 [ 0, %for.body599.lr.ph ], [ %indvars.iv.next932, %for.body599 ]
  %diff.0872 = phi i32 [ 0, %for.body599.lr.ph ], [ %diff.0., %for.body599 ]
  %arrayidx601 = getelementptr inbounds %struct.storable_picture** %177, i64 %indvars.iv931
  %179 = load %struct.storable_picture** %arrayidx601, align 8, !tbaa !0
  %arrayidx603 = getelementptr inbounds %struct.storable_picture** %178, i64 %indvars.iv931
  %180 = load %struct.storable_picture** %arrayidx603, align 8, !tbaa !0
  %cmp604 = icmp eq %struct.storable_picture* %179, %180
  %diff.0. = select i1 %cmp604, i32 %diff.0872, i32 1
  %indvars.iv.next932 = add i64 %indvars.iv931, 1
  %181 = trunc i64 %indvars.iv.next932 to i32
  %cmp597 = icmp slt i32 %181, %174
  br i1 %cmp597, label %for.body599, label %for.end610

for.end610:                                       ; preds = %for.body599
  %phitmp = icmp eq i32 %diff.0., 0
  br i1 %phitmp, label %if.then612, label %if.end618

if.then612:                                       ; preds = %for.cond596.preheader, %for.end610
  %182 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %183 = load %struct.storable_picture** %182, align 8, !tbaa !0
  %arrayidx614 = getelementptr inbounds %struct.storable_picture** %182, i64 1
  %184 = load %struct.storable_picture** %arrayidx614, align 8, !tbaa !0
  store %struct.storable_picture* %184, %struct.storable_picture** %182, align 8, !tbaa !0
  %185 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %arrayidx616 = getelementptr inbounds %struct.storable_picture** %185, i64 1
  store %struct.storable_picture* %183, %struct.storable_picture** %arrayidx616, align 8, !tbaa !0
  br label %if.end618

if.end618:                                        ; preds = %for.end610, %if.then612, %if.end589
  %186 = phi i32 [ %174, %for.end610 ], [ %174, %if.then612 ], [ %176, %if.end589 ]
  %187 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 79
  %188 = load i32* %num_ref_idx_l0_active, align 4, !tbaa !3
  %cmp619 = icmp slt i32 %174, %188
  %.865 = select i1 %cmp619, i32 %174, i32 %188
  store i32 %.865, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 80
  %189 = load i32* %num_ref_idx_l1_active, align 4, !tbaa !3
  %cmp622 = icmp slt i32 %186, %189
  %cond628 = select i1 %cmp622, i32 %186, i32 %189
  store i32 %cond628, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %cmp630868 = icmp ult i32 %.865, 33
  br i1 %cmp630868, label %for.body632.lr.ph, label %for.end637

for.body632.lr.ph:                                ; preds = %if.end618
  %190 = zext i32 %.865 to i64
  br label %for.body632

for.body632:                                      ; preds = %for.body632.for.body632_crit_edge, %for.body632.lr.ph
  %indvars.iv927 = phi i64 [ %190, %for.body632.lr.ph ], [ %indvars.iv.next928, %for.body632.for.body632_crit_edge ]
  %i.12869 = phi i32 [ %.865, %for.body632.lr.ph ], [ %inc636, %for.body632.for.body632_crit_edge ]
  %191 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx634 = getelementptr inbounds %struct.storable_picture** %191, i64 %indvars.iv927
  store %struct.storable_picture* null, %struct.storable_picture** %arrayidx634, align 8, !tbaa !0
  %inc636 = add i32 %i.12869, 1
  %exitcond930 = icmp eq i32 %inc636, 33
  br i1 %exitcond930, label %for.end637, label %for.body632.for.body632_crit_edge

for.body632.for.body632_crit_edge:                ; preds = %for.body632
  %indvars.iv.next928 = add i64 %indvars.iv927, 1
  br label %for.body632

for.end637:                                       ; preds = %for.body632, %if.end618
  %cmp639866 = icmp ult i32 %cond628, 33
  br i1 %cmp639866, label %for.body641.lr.ph, label %for.end646

for.body641.lr.ph:                                ; preds = %for.end637
  %192 = zext i32 %cond628 to i64
  br label %for.body641

for.body641:                                      ; preds = %for.body641.for.body641_crit_edge, %for.body641.lr.ph
  %indvars.iv = phi i64 [ %192, %for.body641.lr.ph ], [ %indvars.iv.next, %for.body641.for.body641_crit_edge ]
  %i.13867 = phi i32 [ %cond628, %for.body641.lr.ph ], [ %inc645, %for.body641.for.body641_crit_edge ]
  %193 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %arrayidx643 = getelementptr inbounds %struct.storable_picture** %193, i64 %indvars.iv
  store %struct.storable_picture* null, %struct.storable_picture** %arrayidx643, align 8, !tbaa !0
  %inc645 = add i32 %i.13867, 1
  %exitcond = icmp eq i32 %inc645, 33
  br i1 %exitcond, label %for.end646, label %for.body641.for.body641_crit_edge

for.body641.for.body641_crit_edge:                ; preds = %for.body641
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %for.body641

for.end646:                                       ; preds = %for.end637, %for.body641, %if.then106
  ret void
}

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @compare_pic_by_pic_num_desc(i8* nocapture %arg1, i8* nocapture %arg2) #4 {
entry:
  %0 = bitcast i8* %arg1 to %struct.storable_picture**
  %1 = load %struct.storable_picture** %0, align 8, !tbaa !0
  %pic_num = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 11
  %2 = load i32* %pic_num, align 4, !tbaa !3
  %3 = bitcast i8* %arg2 to %struct.storable_picture**
  %4 = load %struct.storable_picture** %3, align 8, !tbaa !0
  %pic_num1 = getelementptr inbounds %struct.storable_picture* %4, i64 0, i32 11
  %5 = load i32* %pic_num1, align 4, !tbaa !3
  %cmp = icmp slt i32 %2, %5
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %2, %5
  %. = sext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @compare_pic_by_lt_pic_num_asc(i8* nocapture %arg1, i8* nocapture %arg2) #4 {
entry:
  %0 = bitcast i8* %arg1 to %struct.storable_picture**
  %1 = load %struct.storable_picture** %0, align 8, !tbaa !0
  %long_term_pic_num = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 12
  %2 = load i32* %long_term_pic_num, align 4, !tbaa !3
  %3 = bitcast i8* %arg2 to %struct.storable_picture**
  %4 = load %struct.storable_picture** %3, align 8, !tbaa !0
  %long_term_pic_num1 = getelementptr inbounds %struct.storable_picture* %4, i64 0, i32 12
  %5 = load i32* %long_term_pic_num1, align 4, !tbaa !3
  %cmp = icmp slt i32 %2, %5
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %2, %5
  %. = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @compare_fs_by_frame_num_desc(i8* nocapture %arg1, i8* nocapture %arg2) #4 {
entry:
  %0 = bitcast i8* %arg1 to %struct.frame_store**
  %1 = load %struct.frame_store** %0, align 8, !tbaa !0
  %frame_num_wrap = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 6
  %2 = load i32* %frame_num_wrap, align 4, !tbaa !3
  %3 = bitcast i8* %arg2 to %struct.frame_store**
  %4 = load %struct.frame_store** %3, align 8, !tbaa !0
  %frame_num_wrap1 = getelementptr inbounds %struct.frame_store* %4, i64 0, i32 6
  %5 = load i32* %frame_num_wrap1, align 4, !tbaa !3
  %cmp = icmp slt i32 %2, %5
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %2, %5
  %. = sext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @gen_pic_list_from_frame_list(i32 %currStrcture, %struct.frame_store** nocapture %fs_list, i32 %list_idx, %struct.storable_picture** nocapture %list, i32* nocapture %list_size, i32 %long_term) #1 {
entry:
  %tobool = icmp eq i32 %long_term, 0
  %is_short_ref.is_long_ref = select i1 %tobool, i32 (%struct.storable_picture*)* @is_short_ref, i32 (%struct.storable_picture*)* @is_long_ref
  %cmp = icmp eq i32 %currStrcture, 1
  br i1 %cmp, label %while.cond.preheader, label %if.end46

while.cond.preheader:                             ; preds = %entry
  %0 = icmp sgt i32 %list_idx, 0
  br i1 %0, label %for.cond.preheader, label %if.end110

for.cond.preheader:                               ; preds = %while.cond.preheader, %while.cond.backedge
  %bot_idx.0194 = phi i32 [ %bot_idx.0.be, %while.cond.backedge ], [ 0, %while.cond.preheader ]
  %top_idx.0193 = phi i32 [ %top_idx.2.ph, %while.cond.backedge ], [ 0, %while.cond.preheader ]
  %cmp4183 = icmp slt i32 %top_idx.0193, %list_idx
  br i1 %cmp4183, label %for.body.lr.ph, label %for.cond20.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = sext i32 %top_idx.0193 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv205 = phi i64 [ %1, %for.body.lr.ph ], [ %indvars.iv.next206, %for.inc ]
  %top_idx.1184 = phi i32 [ %top_idx.0193, %for.body.lr.ph ], [ %inc19, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.frame_store** %fs_list, i64 %indvars.iv205
  %2 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %is_used = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 0
  %3 = load i32* %is_used, align 4, !tbaa !3
  %and = and i32 %3, 1
  %tobool5 = icmp eq i32 %and, 0
  br i1 %tobool5, label %for.inc, label %if.then6

if.then6:                                         ; preds = %for.body
  %top_field = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 11
  %4 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %call = tail call i32 %is_short_ref.is_long_ref(%struct.storable_picture* %4) #6
  %tobool9 = icmp eq i32 %call, 0
  br i1 %tobool9, label %for.inc, label %if.then10

if.then10:                                        ; preds = %if.then6
  %5 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %top_field13 = getelementptr inbounds %struct.frame_store* %5, i64 0, i32 11
  %6 = load %struct.storable_picture** %top_field13, align 8, !tbaa !0
  %7 = load i32* %list_size, align 4, !tbaa !3
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom14
  store %struct.storable_picture* %6, %struct.storable_picture** %arrayidx15, align 8, !tbaa !0
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %list_size, align 4, !tbaa !3
  %inc16 = add nsw i32 %top_idx.1184, 1
  br label %for.cond20.preheader

for.inc:                                          ; preds = %if.then6, %for.body
  %indvars.iv.next206 = add i64 %indvars.iv205, 1
  %inc19 = add nsw i32 %top_idx.1184, 1
  %8 = trunc i64 %indvars.iv.next206 to i32
  %cmp4 = icmp slt i32 %8, %list_idx
  br i1 %cmp4, label %for.body, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond.preheader, %for.inc, %if.then10
  %top_idx.2.ph = phi i32 [ %inc16, %if.then10 ], [ %top_idx.0193, %for.cond.preheader ], [ %inc19, %for.inc ]
  %cmp21187 = icmp slt i32 %bot_idx.0194, %list_idx
  br i1 %cmp21187, label %for.body22.lr.ph, label %while.cond.backedge

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  %9 = sext i32 %bot_idx.0194 to i64
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.inc43
  %indvars.iv209 = phi i64 [ %9, %for.body22.lr.ph ], [ %indvars.iv.next210, %for.inc43 ]
  %bot_idx.1188 = phi i32 [ %bot_idx.0194, %for.body22.lr.ph ], [ %inc44, %for.inc43 ]
  %arrayidx24 = getelementptr inbounds %struct.frame_store** %fs_list, i64 %indvars.iv209
  %10 = load %struct.frame_store** %arrayidx24, align 8, !tbaa !0
  %is_used25 = getelementptr inbounds %struct.frame_store* %10, i64 0, i32 0
  %11 = load i32* %is_used25, align 4, !tbaa !3
  %and26 = and i32 %11, 2
  %tobool27 = icmp eq i32 %and26, 0
  br i1 %tobool27, label %for.inc43, label %if.then28

if.then28:                                        ; preds = %for.body22
  %bottom_field = getelementptr inbounds %struct.frame_store* %10, i64 0, i32 12
  %12 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %call31 = tail call i32 %is_short_ref.is_long_ref(%struct.storable_picture* %12) #6
  %tobool32 = icmp eq i32 %call31, 0
  br i1 %tobool32, label %for.inc43, label %if.then33

if.then33:                                        ; preds = %if.then28
  %13 = load %struct.frame_store** %arrayidx24, align 8, !tbaa !0
  %bottom_field36 = getelementptr inbounds %struct.frame_store* %13, i64 0, i32 12
  %14 = load %struct.storable_picture** %bottom_field36, align 8, !tbaa !0
  %15 = load i32* %list_size, align 4, !tbaa !3
  %idxprom37 = sext i32 %15 to i64
  %arrayidx38 = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom37
  store %struct.storable_picture* %14, %struct.storable_picture** %arrayidx38, align 8, !tbaa !0
  %inc39 = add nsw i32 %15, 1
  store i32 %inc39, i32* %list_size, align 4, !tbaa !3
  %inc40 = add nsw i32 %bot_idx.1188, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.cond20.preheader, %for.inc43, %if.then33
  %bot_idx.0.be = phi i32 [ %inc40, %if.then33 ], [ %bot_idx.0194, %for.cond20.preheader ], [ %inc44, %for.inc43 ]
  %cmp2 = icmp slt i32 %top_idx.2.ph, %list_idx
  %cmp3 = icmp slt i32 %bot_idx.0.be, %list_idx
  %or.cond = or i1 %cmp2, %cmp3
  br i1 %or.cond, label %for.cond.preheader, label %if.end46

for.inc43:                                        ; preds = %if.then28, %for.body22
  %indvars.iv.next210 = add i64 %indvars.iv209, 1
  %inc44 = add nsw i32 %bot_idx.1188, 1
  %16 = trunc i64 %indvars.iv.next210 to i32
  %cmp21 = icmp slt i32 %16, %list_idx
  br i1 %cmp21, label %for.body22, label %while.cond.backedge

if.end46:                                         ; preds = %while.cond.backedge, %entry
  %top_idx.3 = phi i32 [ 0, %entry ], [ %top_idx.2.ph, %while.cond.backedge ]
  %bot_idx.2 = phi i32 [ 0, %entry ], [ %bot_idx.0.be, %while.cond.backedge ]
  %cmp47 = icmp eq i32 %currStrcture, 2
  br i1 %cmp47, label %while.cond49.preheader, label %if.end110

while.cond49.preheader:                           ; preds = %if.end46
  %cmp50177 = icmp slt i32 %top_idx.3, %list_idx
  %cmp52178 = icmp slt i32 %bot_idx.2, %list_idx
  %or.cond169179 = or i1 %cmp50177, %cmp52178
  br i1 %or.cond169179, label %for.cond55.preheader, label %if.end110

for.cond55.preheader:                             ; preds = %while.cond49.preheader, %while.cond49.backedge
  %bot_idx.3181 = phi i32 [ %bot_idx.5.ph, %while.cond49.backedge ], [ %bot_idx.2, %while.cond49.preheader ]
  %top_idx.4180 = phi i32 [ %top_idx.4.be, %while.cond49.backedge ], [ %top_idx.3, %while.cond49.preheader ]
  %cmp56171 = icmp slt i32 %bot_idx.3181, %list_idx
  br i1 %cmp56171, label %for.body57.lr.ph, label %for.cond82.preheader

for.body57.lr.ph:                                 ; preds = %for.cond55.preheader
  %17 = sext i32 %bot_idx.3181 to i64
  br label %for.body57

for.body57:                                       ; preds = %for.body57.lr.ph, %for.inc79
  %indvars.iv = phi i64 [ %17, %for.body57.lr.ph ], [ %indvars.iv.next, %for.inc79 ]
  %bot_idx.4172 = phi i32 [ %bot_idx.3181, %for.body57.lr.ph ], [ %inc80, %for.inc79 ]
  %arrayidx59 = getelementptr inbounds %struct.frame_store** %fs_list, i64 %indvars.iv
  %18 = load %struct.frame_store** %arrayidx59, align 8, !tbaa !0
  %is_used60 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 0
  %19 = load i32* %is_used60, align 4, !tbaa !3
  %and61 = and i32 %19, 2
  %tobool62 = icmp eq i32 %and61, 0
  br i1 %tobool62, label %for.inc79, label %if.then63

if.then63:                                        ; preds = %for.body57
  %bottom_field66 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 12
  %20 = load %struct.storable_picture** %bottom_field66, align 8, !tbaa !0
  %call67 = tail call i32 %is_short_ref.is_long_ref(%struct.storable_picture* %20) #6
  %tobool68 = icmp eq i32 %call67, 0
  br i1 %tobool68, label %for.inc79, label %if.then69

if.then69:                                        ; preds = %if.then63
  %21 = load %struct.frame_store** %arrayidx59, align 8, !tbaa !0
  %bottom_field72 = getelementptr inbounds %struct.frame_store* %21, i64 0, i32 12
  %22 = load %struct.storable_picture** %bottom_field72, align 8, !tbaa !0
  %23 = load i32* %list_size, align 4, !tbaa !3
  %idxprom73 = sext i32 %23 to i64
  %arrayidx74 = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom73
  store %struct.storable_picture* %22, %struct.storable_picture** %arrayidx74, align 8, !tbaa !0
  %inc75 = add nsw i32 %23, 1
  store i32 %inc75, i32* %list_size, align 4, !tbaa !3
  %inc76 = add nsw i32 %bot_idx.4172, 1
  br label %for.cond82.preheader

for.inc79:                                        ; preds = %if.then63, %for.body57
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc80 = add nsw i32 %bot_idx.4172, 1
  %24 = trunc i64 %indvars.iv.next to i32
  %cmp56 = icmp slt i32 %24, %list_idx
  br i1 %cmp56, label %for.body57, label %for.cond82.preheader

for.cond82.preheader:                             ; preds = %for.cond55.preheader, %for.inc79, %if.then69
  %bot_idx.5.ph = phi i32 [ %inc76, %if.then69 ], [ %bot_idx.3181, %for.cond55.preheader ], [ %inc80, %for.inc79 ]
  %cmp83174 = icmp slt i32 %top_idx.4180, %list_idx
  br i1 %cmp83174, label %for.body84.lr.ph, label %while.cond49.backedge

for.body84.lr.ph:                                 ; preds = %for.cond82.preheader
  %25 = sext i32 %top_idx.4180 to i64
  br label %for.body84

for.body84:                                       ; preds = %for.body84.lr.ph, %for.inc106
  %indvars.iv201 = phi i64 [ %25, %for.body84.lr.ph ], [ %indvars.iv.next202, %for.inc106 ]
  %top_idx.5175 = phi i32 [ %top_idx.4180, %for.body84.lr.ph ], [ %inc107, %for.inc106 ]
  %arrayidx86 = getelementptr inbounds %struct.frame_store** %fs_list, i64 %indvars.iv201
  %26 = load %struct.frame_store** %arrayidx86, align 8, !tbaa !0
  %is_used87 = getelementptr inbounds %struct.frame_store* %26, i64 0, i32 0
  %27 = load i32* %is_used87, align 4, !tbaa !3
  %and88 = and i32 %27, 1
  %tobool89 = icmp eq i32 %and88, 0
  br i1 %tobool89, label %for.inc106, label %if.then90

if.then90:                                        ; preds = %for.body84
  %top_field93 = getelementptr inbounds %struct.frame_store* %26, i64 0, i32 11
  %28 = load %struct.storable_picture** %top_field93, align 8, !tbaa !0
  %call94 = tail call i32 %is_short_ref.is_long_ref(%struct.storable_picture* %28) #6
  %tobool95 = icmp eq i32 %call94, 0
  br i1 %tobool95, label %for.inc106, label %if.then96

if.then96:                                        ; preds = %if.then90
  %29 = load %struct.frame_store** %arrayidx86, align 8, !tbaa !0
  %top_field99 = getelementptr inbounds %struct.frame_store* %29, i64 0, i32 11
  %30 = load %struct.storable_picture** %top_field99, align 8, !tbaa !0
  %31 = load i32* %list_size, align 4, !tbaa !3
  %idxprom100 = sext i32 %31 to i64
  %arrayidx101 = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom100
  store %struct.storable_picture* %30, %struct.storable_picture** %arrayidx101, align 8, !tbaa !0
  %inc102 = add nsw i32 %31, 1
  store i32 %inc102, i32* %list_size, align 4, !tbaa !3
  %inc103 = add nsw i32 %top_idx.5175, 1
  br label %while.cond49.backedge

while.cond49.backedge:                            ; preds = %for.cond82.preheader, %for.inc106, %if.then96
  %top_idx.4.be = phi i32 [ %inc103, %if.then96 ], [ %top_idx.4180, %for.cond82.preheader ], [ %inc107, %for.inc106 ]
  %cmp50 = icmp slt i32 %top_idx.4.be, %list_idx
  %cmp52 = icmp slt i32 %bot_idx.5.ph, %list_idx
  %or.cond169 = or i1 %cmp50, %cmp52
  br i1 %or.cond169, label %for.cond55.preheader, label %if.end110

for.inc106:                                       ; preds = %if.then90, %for.body84
  %indvars.iv.next202 = add i64 %indvars.iv201, 1
  %inc107 = add nsw i32 %top_idx.5175, 1
  %32 = trunc i64 %indvars.iv.next202 to i32
  %cmp83 = icmp slt i32 %32, %list_idx
  br i1 %cmp83, label %for.body84, label %while.cond49.backedge

if.end110:                                        ; preds = %while.cond.preheader, %while.cond49.preheader, %while.cond49.backedge, %if.end46
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @compare_fs_by_lt_pic_idx_asc(i8* nocapture %arg1, i8* nocapture %arg2) #4 {
entry:
  %0 = bitcast i8* %arg1 to %struct.frame_store**
  %1 = load %struct.frame_store** %0, align 8, !tbaa !0
  %long_term_frame_idx = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 7
  %2 = load i32* %long_term_frame_idx, align 4, !tbaa !3
  %3 = bitcast i8* %arg2 to %struct.frame_store**
  %4 = load %struct.frame_store** %3, align 8, !tbaa !0
  %long_term_frame_idx1 = getelementptr inbounds %struct.frame_store* %4, i64 0, i32 7
  %5 = load i32* %long_term_frame_idx1, align 4, !tbaa !3
  %cmp = icmp slt i32 %2, %5
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %2, %5
  %. = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @compare_pic_by_poc_desc(i8* nocapture %arg1, i8* nocapture %arg2) #4 {
entry:
  %0 = bitcast i8* %arg1 to %struct.storable_picture**
  %1 = load %struct.storable_picture** %0, align 8, !tbaa !0
  %poc = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 1
  %2 = load i32* %poc, align 4, !tbaa !3
  %3 = bitcast i8* %arg2 to %struct.storable_picture**
  %4 = load %struct.storable_picture** %3, align 8, !tbaa !0
  %poc1 = getelementptr inbounds %struct.storable_picture* %4, i64 0, i32 1
  %5 = load i32* %poc1, align 4, !tbaa !3
  %cmp = icmp slt i32 %2, %5
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %2, %5
  %. = sext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @compare_pic_by_poc_asc(i8* nocapture %arg1, i8* nocapture %arg2) #4 {
entry:
  %0 = bitcast i8* %arg1 to %struct.storable_picture**
  %1 = load %struct.storable_picture** %0, align 8, !tbaa !0
  %poc = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 1
  %2 = load i32* %poc, align 4, !tbaa !3
  %3 = bitcast i8* %arg2 to %struct.storable_picture**
  %4 = load %struct.storable_picture** %3, align 8, !tbaa !0
  %poc1 = getelementptr inbounds %struct.storable_picture* %4, i64 0, i32 1
  %5 = load i32* %poc1, align 4, !tbaa !3
  %cmp = icmp slt i32 %2, %5
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %2, %5
  %. = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @compare_fs_by_poc_desc(i8* nocapture %arg1, i8* nocapture %arg2) #4 {
entry:
  %0 = bitcast i8* %arg1 to %struct.frame_store**
  %1 = load %struct.frame_store** %0, align 8, !tbaa !0
  %poc = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 9
  %2 = load i32* %poc, align 4, !tbaa !3
  %3 = bitcast i8* %arg2 to %struct.frame_store**
  %4 = load %struct.frame_store** %3, align 8, !tbaa !0
  %poc1 = getelementptr inbounds %struct.frame_store* %4, i64 0, i32 9
  %5 = load i32* %poc1, align 4, !tbaa !3
  %cmp = icmp slt i32 %2, %5
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %2, %5
  %. = sext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @compare_fs_by_poc_asc(i8* nocapture %arg1, i8* nocapture %arg2) #4 {
entry:
  %0 = bitcast i8* %arg1 to %struct.frame_store**
  %1 = load %struct.frame_store** %0, align 8, !tbaa !0
  %poc = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 9
  %2 = load i32* %poc, align 4, !tbaa !3
  %3 = bitcast i8* %arg2 to %struct.frame_store**
  %4 = load %struct.frame_store** %3, align 8, !tbaa !0
  %poc1 = getelementptr inbounds %struct.frame_store* %4, i64 0, i32 9
  %5 = load i32* %poc1, align 4, !tbaa !3
  %cmp = icmp slt i32 %2, %5
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %2, %5
  %. = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @init_mbaff_lists() #1 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %entry
  %indvars.iv112 = phi i64 [ 2, %entry ], [ %indvars.iv.next113, %for.end ]
  %arrayidx = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv112
  br label %for.body3

for.cond11.preheader:                             ; preds = %for.end
  %0 = load i64* bitcast ([6 x i32]* @listXsize to i64*), align 16
  %1 = trunc i64 %0 to i32
  %cmp12103 = icmp sgt i32 %1, 0
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  br i1 %cmp12103, label %for.body13, label %for.end38

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv110 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next111, %for.body3 ]
  %4 = load %struct.storable_picture*** %arrayidx, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds %struct.storable_picture** %4, i64 %indvars.iv110
  store %struct.storable_picture* null, %struct.storable_picture** %arrayidx5, align 8, !tbaa !0
  %indvars.iv.next111 = add i64 %indvars.iv110, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next111 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 33
  br i1 %exitcond, label %for.end, label %for.body3

for.end:                                          ; preds = %for.body3
  %arrayidx7 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv112
  store i32 0, i32* %arrayidx7, align 4, !tbaa !3
  %indvars.iv.next113 = add i64 %indvars.iv112, 1
  %lftr.wideiv114 = trunc i64 %indvars.iv.next113 to i32
  %exitcond115 = icmp eq i32 %lftr.wideiv114, 6
  br i1 %exitcond115, label %for.cond11.preheader, label %for.cond1.preheader

for.body13:                                       ; preds = %for.cond11.preheader, %for.body13
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.body13 ], [ 0, %for.cond11.preheader ]
  %5 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx15 = getelementptr inbounds %struct.storable_picture** %5, i64 %indvars.iv108
  %6 = load %struct.storable_picture** %arrayidx15, align 8, !tbaa !0
  %top_field = getelementptr inbounds %struct.storable_picture* %6, i64 0, i32 38
  %7 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %8 = trunc i64 %indvars.iv108 to i32
  %mul = shl nsw i32 %8, 1
  %idxprom16 = sext i32 %mul to i64
  %9 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 2), align 16, !tbaa !0
  %arrayidx17 = getelementptr inbounds %struct.storable_picture** %9, i64 %idxprom16
  store %struct.storable_picture* %7, %struct.storable_picture** %arrayidx17, align 8, !tbaa !0
  %10 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx19 = getelementptr inbounds %struct.storable_picture** %10, i64 %indvars.iv108
  %11 = load %struct.storable_picture** %arrayidx19, align 8, !tbaa !0
  %bottom_field = getelementptr inbounds %struct.storable_picture* %11, i64 0, i32 39
  %12 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %add99 = or i32 %mul, 1
  %idxprom21 = sext i32 %add99 to i64
  %13 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 2), align 16, !tbaa !0
  %arrayidx22 = getelementptr inbounds %struct.storable_picture** %13, i64 %idxprom21
  store %struct.storable_picture* %12, %struct.storable_picture** %arrayidx22, align 8, !tbaa !0
  %14 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx24 = getelementptr inbounds %struct.storable_picture** %14, i64 %indvars.iv108
  %15 = load %struct.storable_picture** %arrayidx24, align 8, !tbaa !0
  %bottom_field25 = getelementptr inbounds %struct.storable_picture* %15, i64 0, i32 39
  %16 = load %struct.storable_picture** %bottom_field25, align 8, !tbaa !0
  %17 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 4), align 16, !tbaa !0
  %arrayidx28 = getelementptr inbounds %struct.storable_picture** %17, i64 %idxprom16
  store %struct.storable_picture* %16, %struct.storable_picture** %arrayidx28, align 8, !tbaa !0
  %18 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx30 = getelementptr inbounds %struct.storable_picture** %18, i64 %indvars.iv108
  %19 = load %struct.storable_picture** %arrayidx30, align 8, !tbaa !0
  %top_field31 = getelementptr inbounds %struct.storable_picture* %19, i64 0, i32 38
  %20 = load %struct.storable_picture** %top_field31, align 8, !tbaa !0
  %21 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 4), align 16, !tbaa !0
  %arrayidx35 = getelementptr inbounds %struct.storable_picture** %21, i64 %idxprom21
  store %struct.storable_picture* %20, %struct.storable_picture** %arrayidx35, align 8, !tbaa !0
  %indvars.iv.next109 = add i64 %indvars.iv108, 1
  %22 = trunc i64 %indvars.iv.next109 to i32
  %cmp12 = icmp slt i32 %22, %1
  br i1 %cmp12, label %for.body13, label %for.end38

for.end38:                                        ; preds = %for.body13, %for.cond11.preheader
  %mul39 = shl nsw i32 %1, 1
  store i32 %mul39, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 4), align 16, !tbaa !3
  store i32 %mul39, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 2), align 8, !tbaa !3
  %cmp41100 = icmp sgt i32 %3, 0
  br i1 %cmp41100, label %for.body42, label %for.end71

for.body42:                                       ; preds = %for.end38, %for.body42
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body42 ], [ 0, %for.end38 ]
  %23 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds %struct.storable_picture** %23, i64 %indvars.iv
  %24 = load %struct.storable_picture** %arrayidx44, align 8, !tbaa !0
  %top_field45 = getelementptr inbounds %struct.storable_picture* %24, i64 0, i32 38
  %25 = load %struct.storable_picture** %top_field45, align 8, !tbaa !0
  %26 = trunc i64 %indvars.iv to i32
  %mul46 = shl nsw i32 %26, 1
  %idxprom47 = sext i32 %mul46 to i64
  %27 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 3), align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds %struct.storable_picture** %27, i64 %idxprom47
  store %struct.storable_picture* %25, %struct.storable_picture** %arrayidx48, align 8, !tbaa !0
  %28 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds %struct.storable_picture** %28, i64 %indvars.iv
  %29 = load %struct.storable_picture** %arrayidx50, align 8, !tbaa !0
  %bottom_field51 = getelementptr inbounds %struct.storable_picture* %29, i64 0, i32 39
  %30 = load %struct.storable_picture** %bottom_field51, align 8, !tbaa !0
  %add5398 = or i32 %mul46, 1
  %idxprom54 = sext i32 %add5398 to i64
  %31 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 3), align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds %struct.storable_picture** %31, i64 %idxprom54
  store %struct.storable_picture* %30, %struct.storable_picture** %arrayidx55, align 8, !tbaa !0
  %32 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds %struct.storable_picture** %32, i64 %indvars.iv
  %33 = load %struct.storable_picture** %arrayidx57, align 8, !tbaa !0
  %bottom_field58 = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 39
  %34 = load %struct.storable_picture** %bottom_field58, align 8, !tbaa !0
  %35 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 5), align 8, !tbaa !0
  %arrayidx61 = getelementptr inbounds %struct.storable_picture** %35, i64 %idxprom47
  store %struct.storable_picture* %34, %struct.storable_picture** %arrayidx61, align 8, !tbaa !0
  %36 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %arrayidx63 = getelementptr inbounds %struct.storable_picture** %36, i64 %indvars.iv
  %37 = load %struct.storable_picture** %arrayidx63, align 8, !tbaa !0
  %top_field64 = getelementptr inbounds %struct.storable_picture* %37, i64 0, i32 38
  %38 = load %struct.storable_picture** %top_field64, align 8, !tbaa !0
  %39 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 5), align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds %struct.storable_picture** %39, i64 %idxprom54
  store %struct.storable_picture* %38, %struct.storable_picture** %arrayidx68, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %40 = trunc i64 %indvars.iv.next to i32
  %cmp41 = icmp slt i32 %40, %3
  br i1 %cmp41, label %for.body42, label %for.end71

for.end71:                                        ; preds = %for.body42, %for.end38
  %mul72116 = shl nuw nsw i64 %2, 1
  %mul72 = trunc i64 %mul72116 to i32
  store i32 %mul72, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 5), align 4, !tbaa !3
  store i32 %mul72, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 3), align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @reorder_ref_pic_list(%struct.storable_picture** nocapture %list, i32* nocapture %list_size, i32 %num_ref_idx_lX_active_minus1, i32* nocapture %remapping_of_pic_nums_idc, i32* nocapture %abs_diff_pic_num_minus1, i32* nocapture %long_term_pic_idx) #1 {
entry:
  %0 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %add = add i32 %0, 4
  %shl = shl i32 1, %add
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %structure = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 7
  %2 = load i32* %structure, align 4, !tbaa !3
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %frame_num = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 105
  %3 = load i32* %frame_num, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %entry
  %mul = shl nsw i32 %shl, 1
  %frame_num1 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 105
  %4 = load i32* %frame_num1, align 4, !tbaa !3
  %mul2 = shl i32 %4, 1
  %add387 = or i32 %mul2, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %maxPicNum.0 = phi i32 [ %shl, %if.then ], [ %mul, %if.else ]
  %currPicNum.0 = phi i32 [ %3, %if.then ], [ %add387, %if.else ]
  %5 = load i32* %remapping_of_pic_nums_idc, align 4, !tbaa !3
  %cmp4153 = icmp eq i32 %5, 3
  %add62.pre = add i32 %num_ref_idx_lX_active_minus1, 1
  br i1 %cmp4153, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %6 = sext i32 %add62.pre to i64
  %7 = add i32 %num_ref_idx_lX_active_minus1, 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv165 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next166, %for.inc ]
  %8 = phi i32 [ %5, %for.body.lr.ph ], [ %54, %for.inc ]
  %arrayidx158 = phi i32* [ %remapping_of_pic_nums_idc, %for.body.lr.ph ], [ %arrayidx, %for.inc ]
  %picNumLXPred.0155 = phi i32 [ %currPicNum.0, %for.body.lr.ph ], [ %picNumLXPred.1, %for.inc ]
  %inc.i134150154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.i134151, %for.inc ]
  %cmp7 = icmp sgt i32 %8, 3
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  tail call void @error(i8* getelementptr inbounds ([42 x i8]* @.str12, i64 0, i64 0), i32 500) #6
  %.pre = load i32* %arrayidx158, align 4, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.body
  %9 = phi i32 [ %.pre, %if.then8 ], [ %8, %for.body ]
  %cmp12 = icmp slt i32 %9, 2
  br i1 %cmp12, label %if.then13, label %if.else58

if.then13:                                        ; preds = %if.end9
  %cmp16 = icmp eq i32 %9, 0
  %arrayidx19 = getelementptr inbounds i32* %abs_diff_pic_num_minus1, i64 %indvars.iv165
  %10 = load i32* %arrayidx19, align 4, !tbaa !3
  %add20 = add nsw i32 %10, 1
  br i1 %cmp16, label %if.then17, label %if.else34

if.then17:                                        ; preds = %if.then13
  %sub = sub nsw i32 %picNumLXPred.0155, %add20
  %cmp21 = icmp slt i32 %sub, 0
  %add27 = select i1 %cmp21, i32 %maxPicNum.0, i32 0
  %add27.sub = add nsw i32 %add27, %sub
  br label %if.end52

if.else34:                                        ; preds = %if.then13
  %add38 = add nsw i32 %add20, %picNumLXPred.0155
  %cmp39 = icmp slt i32 %add38, %maxPicNum.0
  %sub45 = select i1 %cmp39, i32 0, i32 %maxPicNum.0
  %add38.sub45 = sub nsw i32 %add38, %sub45
  br label %if.end52

if.end52:                                         ; preds = %if.else34, %if.then17
  %picNumLXNoWrap.0 = phi i32 [ %add27.sub, %if.then17 ], [ %add38.sub45, %if.else34 ]
  %cmp53 = icmp sgt i32 %picNumLXNoWrap.0, %currPicNum.0
  %sub55 = select i1 %cmp53, i32 %maxPicNum.0, i32 0
  %picNumLX.0 = sub nsw i32 %picNumLXNoWrap.0, %sub55
  %11 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp73.i.i = icmp eq i32 %11, 0
  br i1 %cmp73.i.i, label %get_short_term_pic.exit.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end52
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %structure.i.i = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 7
  %13 = load i32* %structure.i.i, align 4, !tbaa !3
  %cmp1.i.i = icmp eq i32 %13, 0
  %14 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %arrayidx.i.i = getelementptr inbounds %struct.frame_store** %14, i64 %indvars.iv.i.i
  %15 = load %struct.frame_store** %arrayidx.i.i, align 8, !tbaa !0
  %is_reference.i.i = getelementptr inbounds %struct.frame_store* %15, i64 0, i32 1
  %16 = load i32* %is_reference.i.i, align 4, !tbaa !3
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %cmp2.i.i = icmp eq i32 %16, 3
  br i1 %cmp2.i.i, label %if.then3.i.i, label %for.inc.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  %frame.i.i = getelementptr inbounds %struct.frame_store* %15, i64 0, i32 10
  %17 = load %struct.storable_picture** %frame.i.i, align 8, !tbaa !0
  %is_long_term.i.i = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 14
  %18 = load i32* %is_long_term.i.i, align 4, !tbaa !3
  %tobool.i.i = icmp eq i32 %18, 0
  br i1 %tobool.i.i, label %land.lhs.true.i.i, label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.then3.i.i
  %pic_num.i.i = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 11
  %19 = load i32* %pic_num.i.i, align 4, !tbaa !3
  %cmp9.i.i = icmp eq i32 %19, %picNumLX.0
  br i1 %cmp9.i.i, label %get_short_term_pic.exit.i, label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %and.i.i = and i32 %16, 1
  %tobool18.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool18.i.i, label %if.end35.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.else.i.i
  %top_field.i.i = getelementptr inbounds %struct.frame_store* %15, i64 0, i32 11
  %20 = load %struct.storable_picture** %top_field.i.i, align 8, !tbaa !0
  %is_long_term22.i.i = getelementptr inbounds %struct.storable_picture* %20, i64 0, i32 14
  %21 = load i32* %is_long_term22.i.i, align 4, !tbaa !3
  %tobool23.i.i = icmp eq i32 %21, 0
  br i1 %tobool23.i.i, label %land.lhs.true24.i.i, label %if.end35.i.i

land.lhs.true24.i.i:                              ; preds = %if.then19.i.i
  %pic_num28.i.i = getelementptr inbounds %struct.storable_picture* %20, i64 0, i32 11
  %22 = load i32* %pic_num28.i.i, align 4, !tbaa !3
  %cmp29.i.i = icmp eq i32 %22, %picNumLX.0
  br i1 %cmp29.i.i, label %get_short_term_pic.exit.i, label %if.end35.i.i

if.end35.i.i:                                     ; preds = %land.lhs.true24.i.i, %if.then19.i.i, %if.else.i.i
  %and39.i.i = and i32 %16, 2
  %tobool40.i.i = icmp eq i32 %and39.i.i, 0
  br i1 %tobool40.i.i, label %for.inc.i.i, label %if.then41.i.i

if.then41.i.i:                                    ; preds = %if.end35.i.i
  %bottom_field.i.i = getelementptr inbounds %struct.frame_store* %15, i64 0, i32 12
  %23 = load %struct.storable_picture** %bottom_field.i.i, align 8, !tbaa !0
  %is_long_term44.i.i = getelementptr inbounds %struct.storable_picture* %23, i64 0, i32 14
  %24 = load i32* %is_long_term44.i.i, align 4, !tbaa !3
  %tobool45.i.i = icmp eq i32 %24, 0
  br i1 %tobool45.i.i, label %land.lhs.true46.i.i, label %for.inc.i.i

land.lhs.true46.i.i:                              ; preds = %if.then41.i.i
  %pic_num50.i.i = getelementptr inbounds %struct.storable_picture* %23, i64 0, i32 11
  %25 = load i32* %pic_num50.i.i, align 4, !tbaa !3
  %cmp51.i.i = icmp eq i32 %25, %picNumLX.0
  br i1 %cmp51.i.i, label %get_short_term_pic.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true46.i.i, %if.then41.i.i, %if.end35.i.i, %land.lhs.true.i.i, %if.then3.i.i, %if.then.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %26 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp.i.i = icmp ult i32 %26, %11
  br i1 %cmp.i.i, label %for.body.i.i, label %get_short_term_pic.exit.i

get_short_term_pic.exit.i:                        ; preds = %for.inc.i.i, %land.lhs.true46.i.i, %land.lhs.true24.i.i, %land.lhs.true.i.i, %if.end52
  %retval.0.i.i = phi %struct.storable_picture* [ null, %if.end52 ], [ null, %for.inc.i.i ], [ %23, %land.lhs.true46.i.i ], [ %20, %land.lhs.true24.i.i ], [ %17, %land.lhs.true.i.i ]
  %cmp51.i = icmp sgt i32 %inc.i134150154, %num_ref_idx_lX_active_minus1
  br i1 %cmp51.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %get_short_term_pic.exit.i, %for.body.i
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %for.body.i ], [ %6, %get_short_term_pic.exit.i ]
  %cIdx.052.i = phi i32 [ %sub.i, %for.body.i ], [ %add62.pre, %get_short_term_pic.exit.i ]
  %sub.i = add nsw i32 %cIdx.052.i, -1
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom.i
  %27 = load %struct.storable_picture** %arrayidx.i, align 8, !tbaa !0
  %arrayidx2.i = getelementptr inbounds %struct.storable_picture** %list, i64 %indvars.iv160
  store %struct.storable_picture* %27, %struct.storable_picture** %arrayidx2.i, align 8, !tbaa !0
  %cmp.i = icmp sgt i32 %sub.i, %inc.i134150154
  %indvars.iv.next161 = add i64 %indvars.iv160, -1
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i, %get_short_term_pic.exit.i
  %inc.i = add nsw i32 %inc.i134150154, 1
  %idxprom3.i = sext i32 %inc.i134150154 to i64
  %arrayidx4.i = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom3.i
  store %struct.storable_picture* %retval.0.i.i, %struct.storable_picture** %arrayidx4.i, align 8, !tbaa !0
  %cmp748.i = icmp slt i32 %inc.i134150154, %add62.pre
  br i1 %cmp748.i, label %for.body8.lr.ph.i, label %for.inc

for.body8.lr.ph.i:                                ; preds = %for.end.i
  %28 = sext i32 %inc.i to i64
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.inc24.i, %for.body8.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc24.i ], [ %28, %for.body8.lr.ph.i ]
  %nIdx.049.i = phi i32 [ %nIdx.1.i, %for.inc24.i ], [ %inc.i, %for.body8.lr.ph.i ]
  %arrayidx10.i = getelementptr inbounds %struct.storable_picture** %list, i64 %indvars.iv.i
  %29 = load %struct.storable_picture** %arrayidx10.i, align 8, !tbaa !0
  %tobool.i = icmp eq %struct.storable_picture* %29, null
  br i1 %tobool.i, label %for.inc24.i, label %if.then.i

if.then.i:                                        ; preds = %for.body8.i
  %is_long_term.i = getelementptr inbounds %struct.storable_picture* %29, i64 0, i32 14
  %30 = load i32* %is_long_term.i, align 4, !tbaa !3
  %tobool13.i = icmp eq i32 %30, 0
  br i1 %tobool13.i, label %lor.lhs.false.i, label %if.then17.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %pic_num.i = getelementptr inbounds %struct.storable_picture* %29, i64 0, i32 11
  %31 = load i32* %pic_num.i, align 4, !tbaa !3
  %cmp16.i = icmp eq i32 %31, %picNumLX.0
  br i1 %cmp16.i, label %for.inc24.i, label %if.then17.i

if.then17.i:                                      ; preds = %lor.lhs.false.i, %if.then.i
  %inc20.i = add nsw i32 %nIdx.049.i, 1
  %idxprom21.i = sext i32 %nIdx.049.i to i64
  %arrayidx22.i = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom21.i
  store %struct.storable_picture* %29, %struct.storable_picture** %arrayidx22.i, align 8, !tbaa !0
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %if.then17.i, %lor.lhs.false.i, %for.body8.i
  %nIdx.1.i = phi i32 [ %inc20.i, %if.then17.i ], [ %nIdx.049.i, %lor.lhs.false.i ], [ %nIdx.049.i, %for.body8.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv163 = trunc i64 %indvars.iv.next.i to i32
  %exitcond164 = icmp eq i32 %lftr.wideiv163, %7
  br i1 %exitcond164, label %for.inc, label %for.body8.i

if.else58:                                        ; preds = %if.end9
  %arrayidx60 = getelementptr inbounds i32* %long_term_pic_idx, i64 %indvars.iv165
  %32 = load i32* %arrayidx60, align 4, !tbaa !3
  %33 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %cmp73.i.i88 = icmp eq i32 %33, 0
  br i1 %cmp73.i.i88, label %get_long_term_pic.exit.i, label %for.body.lr.ph.i.i91

for.body.lr.ph.i.i91:                             ; preds = %if.else58
  %34 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %structure.i.i89 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 7
  %35 = load i32* %structure.i.i89, align 4, !tbaa !3
  %cmp1.i.i90 = icmp eq i32 %35, 0
  %36 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  br label %for.body.i.i95

for.body.i.i95:                                   ; preds = %for.inc.i.i124, %for.body.lr.ph.i.i91
  %indvars.iv.i.i92 = phi i64 [ 0, %for.body.lr.ph.i.i91 ], [ %indvars.iv.next.i.i122, %for.inc.i.i124 ]
  %arrayidx.i.i93 = getelementptr inbounds %struct.frame_store** %36, i64 %indvars.iv.i.i92
  %37 = load %struct.frame_store** %arrayidx.i.i93, align 8, !tbaa !0
  %is_reference.i.i94 = getelementptr inbounds %struct.frame_store* %37, i64 0, i32 1
  %38 = load i32* %is_reference.i.i94, align 4, !tbaa !3
  br i1 %cmp1.i.i90, label %if.then.i.i97, label %if.else.i.i106

if.then.i.i97:                                    ; preds = %for.body.i.i95
  %cmp2.i.i96 = icmp eq i32 %38, 3
  br i1 %cmp2.i.i96, label %if.then3.i.i101, label %for.inc.i.i124

if.then3.i.i101:                                  ; preds = %if.then.i.i97
  %frame.i.i98 = getelementptr inbounds %struct.frame_store* %37, i64 0, i32 10
  %39 = load %struct.storable_picture** %frame.i.i98, align 8, !tbaa !0
  %is_long_term.i.i99 = getelementptr inbounds %struct.storable_picture* %39, i64 0, i32 14
  %40 = load i32* %is_long_term.i.i99, align 4, !tbaa !3
  %tobool.i.i100 = icmp eq i32 %40, 0
  br i1 %tobool.i.i100, label %for.inc.i.i124, label %land.lhs.true.i.i103

land.lhs.true.i.i103:                             ; preds = %if.then3.i.i101
  %long_term_pic_num.i.i = getelementptr inbounds %struct.storable_picture* %39, i64 0, i32 12
  %41 = load i32* %long_term_pic_num.i.i, align 4, !tbaa !3
  %cmp9.i.i102 = icmp eq i32 %41, %32
  br i1 %cmp9.i.i102, label %get_long_term_pic.exit.i, label %for.inc.i.i124

if.else.i.i106:                                   ; preds = %for.body.i.i95
  %and.i.i104 = and i32 %38, 1
  %tobool18.i.i105 = icmp eq i32 %and.i.i104, 0
  br i1 %tobool18.i.i105, label %if.end35.i.i115, label %if.then19.i.i110

if.then19.i.i110:                                 ; preds = %if.else.i.i106
  %top_field.i.i107 = getelementptr inbounds %struct.frame_store* %37, i64 0, i32 11
  %42 = load %struct.storable_picture** %top_field.i.i107, align 8, !tbaa !0
  %is_long_term22.i.i108 = getelementptr inbounds %struct.storable_picture* %42, i64 0, i32 14
  %43 = load i32* %is_long_term22.i.i108, align 4, !tbaa !3
  %tobool23.i.i109 = icmp eq i32 %43, 0
  br i1 %tobool23.i.i109, label %if.end35.i.i115, label %land.lhs.true24.i.i112

land.lhs.true24.i.i112:                           ; preds = %if.then19.i.i110
  %long_term_pic_num28.i.i = getelementptr inbounds %struct.storable_picture* %42, i64 0, i32 12
  %44 = load i32* %long_term_pic_num28.i.i, align 4, !tbaa !3
  %cmp29.i.i111 = icmp eq i32 %44, %32
  br i1 %cmp29.i.i111, label %get_long_term_pic.exit.i, label %if.end35.i.i115

if.end35.i.i115:                                  ; preds = %land.lhs.true24.i.i112, %if.then19.i.i110, %if.else.i.i106
  %and39.i.i113 = and i32 %38, 2
  %tobool40.i.i114 = icmp eq i32 %and39.i.i113, 0
  br i1 %tobool40.i.i114, label %for.inc.i.i124, label %if.then41.i.i119

if.then41.i.i119:                                 ; preds = %if.end35.i.i115
  %bottom_field.i.i116 = getelementptr inbounds %struct.frame_store* %37, i64 0, i32 12
  %45 = load %struct.storable_picture** %bottom_field.i.i116, align 8, !tbaa !0
  %is_long_term44.i.i117 = getelementptr inbounds %struct.storable_picture* %45, i64 0, i32 14
  %46 = load i32* %is_long_term44.i.i117, align 4, !tbaa !3
  %tobool45.i.i118 = icmp eq i32 %46, 0
  br i1 %tobool45.i.i118, label %for.inc.i.i124, label %land.lhs.true46.i.i121

land.lhs.true46.i.i121:                           ; preds = %if.then41.i.i119
  %long_term_pic_num50.i.i = getelementptr inbounds %struct.storable_picture* %45, i64 0, i32 12
  %47 = load i32* %long_term_pic_num50.i.i, align 4, !tbaa !3
  %cmp51.i.i120 = icmp eq i32 %47, %32
  br i1 %cmp51.i.i120, label %get_long_term_pic.exit.i, label %for.inc.i.i124

for.inc.i.i124:                                   ; preds = %land.lhs.true46.i.i121, %if.then41.i.i119, %if.end35.i.i115, %land.lhs.true.i.i103, %if.then3.i.i101, %if.then.i.i97
  %indvars.iv.next.i.i122 = add i64 %indvars.iv.i.i92, 1
  %48 = trunc i64 %indvars.iv.next.i.i122 to i32
  %cmp.i.i123 = icmp ult i32 %48, %33
  br i1 %cmp.i.i123, label %for.body.i.i95, label %get_long_term_pic.exit.i

get_long_term_pic.exit.i:                         ; preds = %for.inc.i.i124, %land.lhs.true46.i.i121, %land.lhs.true24.i.i112, %land.lhs.true.i.i103, %if.else58
  %retval.0.i.i125 = phi %struct.storable_picture* [ null, %if.else58 ], [ null, %for.inc.i.i124 ], [ %45, %land.lhs.true46.i.i121 ], [ %42, %land.lhs.true24.i.i112 ], [ %39, %land.lhs.true.i.i103 ]
  %cmp44.i = icmp sgt i32 %inc.i134150154, %num_ref_idx_lX_active_minus1
  br i1 %cmp44.i, label %for.end.i137, label %for.body.i133

for.body.i133:                                    ; preds = %get_long_term_pic.exit.i, %for.body.i133
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.i133 ], [ %6, %get_long_term_pic.exit.i ]
  %cIdx.045.i = phi i32 [ %sub.i128, %for.body.i133 ], [ %add62.pre, %get_long_term_pic.exit.i ]
  %sub.i128 = add nsw i32 %cIdx.045.i, -1
  %idxprom.i129 = sext i32 %sub.i128 to i64
  %arrayidx.i130 = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom.i129
  %49 = load %struct.storable_picture** %arrayidx.i130, align 8, !tbaa !0
  %arrayidx2.i131 = getelementptr inbounds %struct.storable_picture** %list, i64 %indvars.iv
  store %struct.storable_picture* %49, %struct.storable_picture** %arrayidx2.i131, align 8, !tbaa !0
  %cmp.i132 = icmp sgt i32 %sub.i128, %inc.i134150154
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %cmp.i132, label %for.body.i133, label %for.end.i137

for.end.i137:                                     ; preds = %for.body.i133, %get_long_term_pic.exit.i
  %inc.i134 = add nsw i32 %inc.i134150154, 1
  %idxprom3.i135 = sext i32 %inc.i134150154 to i64
  %arrayidx4.i136 = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom3.i135
  store %struct.storable_picture* %retval.0.i.i125, %struct.storable_picture** %arrayidx4.i136, align 8, !tbaa !0
  %cmp741.i = icmp slt i32 %inc.i134150154, %add62.pre
  br i1 %cmp741.i, label %for.body8.lr.ph.i138, label %for.inc

for.body8.lr.ph.i138:                             ; preds = %for.end.i137
  %50 = sext i32 %inc.i134 to i64
  br label %for.body8.i143

for.body8.i143:                                   ; preds = %for.inc19.i, %for.body8.lr.ph.i138
  %indvars.iv.i139 = phi i64 [ %indvars.iv.next.i147, %for.inc19.i ], [ %50, %for.body8.lr.ph.i138 ]
  %nIdx.042.i = phi i32 [ %nIdx.1.i146, %for.inc19.i ], [ %inc.i134, %for.body8.lr.ph.i138 ]
  %arrayidx10.i140 = getelementptr inbounds %struct.storable_picture** %list, i64 %indvars.iv.i139
  %51 = load %struct.storable_picture** %arrayidx10.i140, align 8, !tbaa !0
  %is_long_term.i141 = getelementptr inbounds %struct.storable_picture* %51, i64 0, i32 14
  %52 = load i32* %is_long_term.i141, align 4, !tbaa !3
  %tobool.i142 = icmp eq i32 %52, 0
  br i1 %tobool.i142, label %if.then.i145, label %lor.lhs.false.i144

lor.lhs.false.i144:                               ; preds = %for.body8.i143
  %long_term_pic_num.i = getelementptr inbounds %struct.storable_picture* %51, i64 0, i32 12
  %53 = load i32* %long_term_pic_num.i, align 4, !tbaa !3
  %cmp13.i = icmp eq i32 %53, %32
  br i1 %cmp13.i, label %for.inc19.i, label %if.then.i145

if.then.i145:                                     ; preds = %lor.lhs.false.i144, %for.body8.i143
  %inc16.i = add nsw i32 %nIdx.042.i, 1
  %idxprom17.i = sext i32 %nIdx.042.i to i64
  %arrayidx18.i = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom17.i
  store %struct.storable_picture* %51, %struct.storable_picture** %arrayidx18.i, align 8, !tbaa !0
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %if.then.i145, %lor.lhs.false.i144
  %nIdx.1.i146 = phi i32 [ %inc16.i, %if.then.i145 ], [ %nIdx.042.i, %lor.lhs.false.i144 ]
  %indvars.iv.next.i147 = add i64 %indvars.iv.i139, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i147 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond, label %for.inc, label %for.body8.i143

for.inc:                                          ; preds = %for.inc24.i, %for.inc19.i, %for.end.i137, %for.end.i
  %inc.i134151 = phi i32 [ %inc.i, %for.end.i ], [ %inc.i134, %for.end.i137 ], [ %inc.i134, %for.inc19.i ], [ %inc.i, %for.inc24.i ]
  %picNumLXPred.1 = phi i32 [ %picNumLXNoWrap.0, %for.end.i ], [ %picNumLXPred.0155, %for.end.i137 ], [ %picNumLXPred.0155, %for.inc19.i ], [ %picNumLXNoWrap.0, %for.inc24.i ]
  %indvars.iv.next166 = add i64 %indvars.iv165, 1
  %arrayidx = getelementptr inbounds i32* %remapping_of_pic_nums_idc, i64 %indvars.iv.next166
  %54 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %54, 3
  br i1 %cmp4, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %for.inc
  store i32 %add62.pre, i32* %list_size, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @update_ref_list() #1 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp19 = icmp eq i32 %0, 0
  br i1 %cmp19, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %j.021 = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  %i.020 = phi i32 [ 0, %entry ], [ %inc5, %for.inc ]
  %idxprom = zext i32 %i.020 to i64
  %1 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.frame_store** %1, i64 %idxprom
  %2 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %is_used.i = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 0
  %3 = load i32* %is_used.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %for.body
  %frame.i = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 10
  %4 = load %struct.storable_picture** %frame.i, align 8, !tbaa !0
  %used_for_reference.i = getelementptr inbounds %struct.storable_picture* %4, i64 0, i32 15
  %5 = load i32* %used_for_reference.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %5, 0
  br i1 %tobool.i, label %if.end4.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %is_long_term.i = getelementptr inbounds %struct.storable_picture* %4, i64 0, i32 14
  %6 = load i32* %is_long_term.i, align 4, !tbaa !3
  %tobool2.i = icmp eq i32 %6, 0
  br i1 %tobool2.i, label %if.then, label %if.end4.i

if.end4.i:                                        ; preds = %land.lhs.true.i, %if.then.i, %for.body
  %7 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag.i = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %7, i64 0, i32 25
  %8 = load i32* %frame_mbs_only_flag.i, align 4, !tbaa !1
  %tobool5.i = icmp eq i32 %8, 0
  br i1 %tobool5.i, label %if.then6.i, label %for.inc

if.then6.i:                                       ; preds = %if.end4.i
  %and.i = and i32 %3, 1
  %tobool8.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.i, label %if.end18.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then6.i
  %top_field.i = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 11
  %9 = load %struct.storable_picture** %top_field.i, align 8, !tbaa !0
  %used_for_reference10.i = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 15
  %10 = load i32* %used_for_reference10.i, align 4, !tbaa !3
  %tobool11.i = icmp eq i32 %10, 0
  br i1 %tobool11.i, label %if.end18.i, label %land.lhs.true12.i

land.lhs.true12.i:                                ; preds = %if.then9.i
  %is_long_term14.i = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 14
  %11 = load i32* %is_long_term14.i, align 4, !tbaa !3
  %tobool15.i = icmp eq i32 %11, 0
  br i1 %tobool15.i, label %if.then, label %if.end18.i

if.end18.i:                                       ; preds = %land.lhs.true12.i, %if.then9.i, %if.then6.i
  %and20.i = and i32 %3, 2
  %tobool21.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.i, label %for.inc, label %if.then22.i

if.then22.i:                                      ; preds = %if.end18.i
  %bottom_field.i = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 12
  %12 = load %struct.storable_picture** %bottom_field.i, align 8, !tbaa !0
  %used_for_reference23.i = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 15
  %13 = load i32* %used_for_reference23.i, align 4, !tbaa !3
  %tobool24.i = icmp eq i32 %13, 0
  br i1 %tobool24.i, label %for.inc, label %land.lhs.true25.i

land.lhs.true25.i:                                ; preds = %if.then22.i
  %is_long_term27.i = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 14
  %14 = load i32* %is_long_term27.i, align 4, !tbaa !3
  %tobool28.i = icmp eq i32 %14, 0
  br i1 %tobool28.i, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true.i, %land.lhs.true12.i, %land.lhs.true25.i
  %inc = add i32 %j.021, 1
  %idxprom3 = zext i32 %j.021 to i64
  %15 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds %struct.frame_store** %15, i64 %idxprom3
  store %struct.frame_store* %2, %struct.frame_store** %arrayidx4, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true25.i, %if.then22.i, %if.end18.i, %if.end4.i, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.021, %if.end4.i ], [ %j.021, %if.end18.i ], [ %j.021, %if.then22.i ], [ %j.021, %land.lhs.true25.i ]
  %inc5 = add i32 %i.020, 1
  %cmp = icmp ult i32 %inc5, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %j.0.lcssa = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  store i32 %j.0.lcssa, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %16 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  %cmp617 = icmp ult i32 %j.0.lcssa, %16
  br i1 %cmp617, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %17 = zext i32 %j.0.lcssa to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %17, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %j.218 = phi i32 [ %j.0.lcssa, %while.body.lr.ph ], [ %inc7, %while.body ]
  %inc7 = add i32 %j.218, 1
  %18 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.frame_store** %18, i64 %indvars.iv
  store %struct.frame_store* null, %struct.frame_store** %arrayidx9, align 8, !tbaa !0
  %cmp6 = icmp ult i32 %inc7, %16
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp6, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @update_ltref_list() #1 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp19 = icmp eq i32 %0, 0
  br i1 %cmp19, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %j.021 = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  %i.020 = phi i32 [ 0, %entry ], [ %inc5, %for.inc ]
  %idxprom = zext i32 %i.020 to i64
  %1 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.frame_store** %1, i64 %idxprom
  %2 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %is_used.i = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 0
  %3 = load i32* %is_used.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %for.body
  %frame.i = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 10
  %4 = load %struct.storable_picture** %frame.i, align 8, !tbaa !0
  %used_for_reference.i = getelementptr inbounds %struct.storable_picture* %4, i64 0, i32 15
  %5 = load i32* %used_for_reference.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %5, 0
  br i1 %tobool.i, label %if.end4.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %is_long_term.i = getelementptr inbounds %struct.storable_picture* %4, i64 0, i32 14
  %6 = load i32* %is_long_term.i, align 4, !tbaa !3
  %tobool2.i = icmp eq i32 %6, 0
  br i1 %tobool2.i, label %if.end4.i, label %if.then

if.end4.i:                                        ; preds = %land.lhs.true.i, %if.then.i, %for.body
  %7 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag.i = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %7, i64 0, i32 25
  %8 = load i32* %frame_mbs_only_flag.i, align 4, !tbaa !1
  %tobool5.i = icmp eq i32 %8, 0
  br i1 %tobool5.i, label %if.then6.i, label %for.inc

if.then6.i:                                       ; preds = %if.end4.i
  %and.i = and i32 %3, 1
  %tobool8.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.i, label %if.end18.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then6.i
  %top_field.i = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 11
  %9 = load %struct.storable_picture** %top_field.i, align 8, !tbaa !0
  %used_for_reference10.i = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 15
  %10 = load i32* %used_for_reference10.i, align 4, !tbaa !3
  %tobool11.i = icmp eq i32 %10, 0
  br i1 %tobool11.i, label %if.end18.i, label %land.lhs.true12.i

land.lhs.true12.i:                                ; preds = %if.then9.i
  %is_long_term14.i = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 14
  %11 = load i32* %is_long_term14.i, align 4, !tbaa !3
  %tobool15.i = icmp eq i32 %11, 0
  br i1 %tobool15.i, label %if.end18.i, label %if.then

if.end18.i:                                       ; preds = %land.lhs.true12.i, %if.then9.i, %if.then6.i
  %and20.i = and i32 %3, 2
  %tobool21.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.i, label %for.inc, label %if.then22.i

if.then22.i:                                      ; preds = %if.end18.i
  %bottom_field.i = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 12
  %12 = load %struct.storable_picture** %bottom_field.i, align 8, !tbaa !0
  %used_for_reference23.i = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 15
  %13 = load i32* %used_for_reference23.i, align 4, !tbaa !3
  %tobool24.i = icmp eq i32 %13, 0
  br i1 %tobool24.i, label %for.inc, label %land.lhs.true25.i

land.lhs.true25.i:                                ; preds = %if.then22.i
  %is_long_term27.i = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 14
  %14 = load i32* %is_long_term27.i, align 4, !tbaa !3
  %tobool28.i = icmp eq i32 %14, 0
  br i1 %tobool28.i, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true.i, %land.lhs.true12.i, %land.lhs.true25.i
  %inc = add i32 %j.021, 1
  %idxprom3 = zext i32 %j.021 to i64
  %15 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds %struct.frame_store** %15, i64 %idxprom3
  store %struct.frame_store* %2, %struct.frame_store** %arrayidx4, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true25.i, %if.then22.i, %if.end18.i, %if.end4.i, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.021, %if.end4.i ], [ %j.021, %if.end18.i ], [ %j.021, %if.then22.i ], [ %j.021, %land.lhs.true25.i ]
  %inc5 = add i32 %i.020, 1
  %cmp = icmp ult i32 %inc5, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %j.0.lcssa = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  store i32 %j.0.lcssa, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %16 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  %cmp617 = icmp ult i32 %j.0.lcssa, %16
  br i1 %cmp617, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %17 = zext i32 %j.0.lcssa to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %17, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %j.218 = phi i32 [ %j.0.lcssa, %while.body.lr.ph ], [ %inc7, %while.body ]
  %inc7 = add i32 %j.218, 1
  %18 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.frame_store** %18, i64 %indvars.iv
  store %struct.frame_store* null, %struct.frame_store** %arrayidx9, align 8, !tbaa !0
  %cmp6 = icmp ult i32 %inc7, %16
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp6, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @mm_update_max_long_term_frame_idx(i32 %max_long_term_frame_idx_plus1) #1 {
entry:
  %sub = add nsw i32 %max_long_term_frame_idx_plus1, -1
  store i32 %sub, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 8), align 4, !tbaa !3
  %0 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %cmp7 = icmp eq i32 %0, 0
  br i1 %cmp7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc.for.body_crit_edge
  %1 = phi i32 [ %.pre9, %for.inc.for.body_crit_edge ], [ %sub, %entry ]
  %2 = phi i32 [ %6, %for.inc.for.body_crit_edge ], [ %0, %entry ]
  %i.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry ]
  %idxprom = zext i32 %i.08 to i64
  %3 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.frame_store** %3, i64 %idxprom
  %4 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %long_term_frame_idx = getelementptr inbounds %struct.frame_store* %4, i64 0, i32 7
  %5 = load i32* %long_term_frame_idx, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %5, %1
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %4) #7
  %.pre = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = phi i32 [ %2, %for.body ], [ %.pre, %if.then ]
  %inc = add i32 %i.08, 1
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre9 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 8), align 4, !tbaa !3
  br label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @unmark_for_long_term_reference(%struct.frame_store* nocapture %fs) #1 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 25
  %1 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %1, 0
  %is_used = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 0
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %2 = load i32* %is_used, align 4, !tbaa !3
  %and = and i32 %2, 1
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %top_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  %3 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %3, i64 0, i32 15
  store i32 0, i32* %used_for_reference, align 4, !tbaa !3
  %is_long_term = getelementptr inbounds %struct.storable_picture* %3, i64 0, i32 14
  store i32 0, i32* %is_long_term, align 4, !tbaa !3
  %.pre = load i32* %is_used, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %4 = phi i32 [ %2, %if.then ], [ %.pre, %if.then2 ]
  %and5 = and i32 %4, 2
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end
  %bottom_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  %5 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %used_for_reference8 = getelementptr inbounds %struct.storable_picture* %5, i64 0, i32 15
  store i32 0, i32* %used_for_reference8, align 4, !tbaa !3
  %is_long_term10 = getelementptr inbounds %struct.storable_picture* %5, i64 0, i32 14
  store i32 0, i32* %is_long_term10, align 4, !tbaa !3
  br label %if.end12

if.end12:                                         ; preds = %entry, %if.end, %if.then7
  %6 = load i32* %is_used, align 4, !tbaa !3
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then14, label %if.end30

if.then14:                                        ; preds = %if.end12
  %7 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool16 = icmp eq i32 %7, 0
  br i1 %tobool16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.then14
  %top_field18 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  %8 = load %struct.storable_picture** %top_field18, align 8, !tbaa !0
  %used_for_reference19 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 15
  store i32 0, i32* %used_for_reference19, align 4, !tbaa !3
  %is_long_term21 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 14
  store i32 0, i32* %is_long_term21, align 4, !tbaa !3
  %bottom_field22 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  %9 = load %struct.storable_picture** %bottom_field22, align 8, !tbaa !0
  %used_for_reference23 = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 15
  store i32 0, i32* %used_for_reference23, align 4, !tbaa !3
  %is_long_term25 = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 14
  store i32 0, i32* %is_long_term25, align 4, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %if.then14, %if.then17
  %frame = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  %10 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %used_for_reference27 = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 15
  store i32 0, i32* %used_for_reference27, align 4, !tbaa !3
  %is_long_term29 = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 14
  store i32 0, i32* %is_long_term29, align 4, !tbaa !3
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.end12
  %is_reference = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 1
  store i32 0, i32* %is_reference, align 4, !tbaa !3
  %is_long_term31 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 2
  store i32 0, i32* %is_long_term31, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @store_picture_in_dpb(%struct.storable_picture* %p) #1 {
entry:
  %poc = alloca i32, align 4
  %pos = alloca i32, align 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 113
  %1 = load i32* %nal_reference_idc, align 4, !tbaa !3
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 15
  store i32 %conv, i32* %used_for_reference, align 4, !tbaa !3
  %last_has_mmco_5 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 145
  store i32 0, i32* %last_has_mmco_5, align 4, !tbaa !3
  %structure = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 7
  %2 = load i32* %structure, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %2, 2
  %conv2 = zext i1 %cmp1 to i32
  %last_pic_bottom_field = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 144
  store i32 %conv2, i32* %last_pic_bottom_field, align 4, !tbaa !3
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 49
  %3 = load %struct.Picture** %currentPicture, align 8, !tbaa !0
  %idr_flag = getelementptr inbounds %struct.Picture* %3, i64 0, i32 1
  %4 = load i32* %idr_flag, align 4, !tbaa !3
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %no_output_of_prior_pics_flag.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 115
  %5 = load i32* %no_output_of_prior_pics_flag.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %5, 0
  br i1 %tobool.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then
  %6 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp39.i = icmp eq i32 %6, 0
  br i1 %cmp39.i, label %for.cond3.preheader.i, label %for.body.i

for.cond3.preheader.i:                            ; preds = %for.body.i, %for.cond.preheader.i
  %7 = load i64* bitcast (i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5) to i64*), align 8
  %8 = trunc i64 %7 to i32
  %cmp437.i = icmp eq i32 %8, 0
  %9 = lshr i64 %7, 32
  %10 = trunc i64 %9 to i32
  br i1 %cmp437.i, label %for.cond11.preheader.i, label %for.body5.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.body.i
  %i.040.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %idxprom.i = zext i32 %i.040.i to i64
  %11 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds %struct.frame_store** %11, i64 %idxprom.i
  %12 = load %struct.frame_store** %arrayidx.i, align 8, !tbaa !0
  call void @free_frame_store(%struct.frame_store* %12) #6
  %call.i = call %struct.frame_store* @alloc_frame_store() #6
  %13 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx2.i = getelementptr inbounds %struct.frame_store** %13, i64 %idxprom.i
  store %struct.frame_store* %call.i, %struct.frame_store** %arrayidx2.i, align 8, !tbaa !0
  %inc.i = add i32 %i.040.i, 1
  %14 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %for.body.i, label %for.cond3.preheader.i

for.cond11.preheader.i:                           ; preds = %for.body5.i, %for.cond3.preheader.i
  %cmp1235.i = icmp eq i32 %10, 0
  br i1 %cmp1235.i, label %for.end18.i, label %for.body13.i

for.body5.i:                                      ; preds = %for.cond3.preheader.i, %for.body5.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %for.body5.i ], [ 0, %for.cond3.preheader.i ]
  %15 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx7.i = getelementptr inbounds %struct.frame_store** %15, i64 %indvars.iv41.i
  store %struct.frame_store* null, %struct.frame_store** %arrayidx7.i, align 8, !tbaa !0
  %indvars.iv.next42.i = add i64 %indvars.iv41.i, 1
  %lftr.wideiv204 = trunc i64 %indvars.iv.next42.i to i32
  %exitcond205 = icmp eq i32 %lftr.wideiv204, %8
  br i1 %exitcond205, label %for.cond11.preheader.i, label %for.body5.i

for.body13.i:                                     ; preds = %for.cond11.preheader.i, %for.body13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body13.i ], [ 0, %for.cond11.preheader.i ]
  %16 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx15.i = getelementptr inbounds %struct.frame_store** %16, i64 %indvars.iv.i
  store %struct.frame_store* null, %struct.frame_store** %arrayidx15.i, align 8, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %10
  br i1 %exitcond, label %for.end18.i, label %for.body13.i

for.end18.i:                                      ; preds = %for.body13.i, %for.cond11.preheader.i
  store i32 0, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  call void @flush_dpb() #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %for.end18.i
  store %struct.frame_store* null, %struct.frame_store** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 10), align 8, !tbaa !0
  call void @update_ref_list() #6
  call void @update_ltref_list() #6
  store i32 -2147483648, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 7), align 8, !tbaa !3
  %17 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %long_term_reference_flag.i = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 116
  %18 = load i32* %long_term_reference_flag.i, align 4, !tbaa !3
  %tobool19.i = icmp eq i32 %18, 0
  br i1 %tobool19.i, label %if.else21.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end.i
  store i32 0, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 8), align 4, !tbaa !3
  %is_long_term.i = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 14
  store i32 1, i32* %is_long_term.i, align 4, !tbaa !3
  %long_term_frame_idx.i = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 13
  store i32 0, i32* %long_term_frame_idx.i, align 4, !tbaa !3
  br label %if.end7

if.else21.i:                                      ; preds = %if.end.i
  store i32 -1, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 8), align 4, !tbaa !3
  %is_long_term22.i = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 14
  store i32 0, i32* %is_long_term22.i, align 4, !tbaa !3
  br label %if.end7

if.else:                                          ; preds = %entry
  %19 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool4 = icmp eq i32 %19, 0
  br i1 %tobool4, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 114
  %20 = load i32* %adaptive_ref_pic_buffering_flag, align 4, !tbaa !3
  %tobool5 = icmp eq i32 %20, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, i32* %last_has_mmco_5, align 4, !tbaa !3
  %dec_ref_pic_marking_buffer119.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 117
  %21 = load %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer119.i, align 8, !tbaa !0
  %tobool120.i = icmp eq %struct.DecRefPicMarking_s* %21, null
  br i1 %tobool120.i, label %if.end7, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.then6
  %structure.i.i.i = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 0
  %frame_num.i.i.i = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 10
  %is_long_term.i92.i = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 14
  %long_term_frame_idx2.i.i = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 13
  %pic_num.i90.i = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 11
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i, %while.body.lr.ph.i
  %22 = phi %struct.DecRefPicMarking_s* [ %21, %while.body.lr.ph.i ], [ %133, %sw.epilog.i ]
  %memory_management_control_operation.i = getelementptr inbounds %struct.DecRefPicMarking_s* %22, i64 0, i32 0
  %23 = load i32* %memory_management_control_operation.i, align 4, !tbaa !3
  switch i32 %23, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb4.i
    i32 4, label %sw.bb6.i
    i32 5, label %sw.bb7.i
    i32 6, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %while.body.i
  %Next.i = getelementptr inbounds %struct.DecRefPicMarking_s* %22, i64 0, i32 5
  %24 = load %struct.DecRefPicMarking_s** %Next.i, align 8, !tbaa !0
  %cmp.i128 = icmp eq %struct.DecRefPicMarking_s* %24, null
  br i1 %cmp.i128, label %sw.epilog.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @error(i8* getelementptr inbounds ([69 x i8]* @.str27, i64 0, i64 0), i32 500) #6
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %while.body.i
  %difference_of_pic_nums_minus1.i = getelementptr inbounds %struct.DecRefPicMarking_s* %22, i64 0, i32 1
  %25 = load i32* %difference_of_pic_nums_minus1.i, align 4, !tbaa !3
  %26 = load i32* %structure.i.i.i, align 4, !tbaa !1
  %cmp.i.i.i = icmp eq i32 %26, 0
  %27 = load i32* %frame_num.i.i.i, align 4, !tbaa !3
  br i1 %cmp.i.i.i, label %get_pic_num_x.exit.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %sw.bb2.i
  %mul.i.i.i = shl i32 %27, 1
  %add4.i.i.i = or i32 %mul.i.i.i, 1
  br label %get_pic_num_x.exit.i.i

get_pic_num_x.exit.i.i:                           ; preds = %if.else.i.i.i, %sw.bb2.i
  %currPicNum.0.i.i.i = phi i32 [ %add4.i.i.i, %if.else.i.i.i ], [ %27, %sw.bb2.i ]
  %add2.neg.i.i.i = xor i32 %25, -1
  %sub.i.i.i = add i32 %currPicNum.0.i.i.i, %add2.neg.i.i.i
  %28 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp111.i.i = icmp eq i32 %28, 0
  br i1 %cmp111.i.i, label %mm_unmark_short_term_for_reference.exit.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %get_pic_num_x.exit.i.i
  %29 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %arrayidx.i.i = getelementptr inbounds %struct.frame_store** %29, i64 %indvars.iv.i.i
  %30 = load %struct.frame_store** %arrayidx.i.i, align 8, !tbaa !0
  %is_reference.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 1
  %31 = load i32* %is_reference.i.i, align 4, !tbaa !3
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %cmp2.i.i = icmp eq i32 %31, 3
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %is_long_term.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 2
  %32 = load i32* %is_long_term.i.i, align 4, !tbaa !3
  %cmp5.i.i = icmp eq i32 %32, 0
  br i1 %cmp5.i.i, label %if.then6.i.i, label %for.inc.i.i

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  %frame.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 10
  %33 = load %struct.storable_picture** %frame.i.i, align 8, !tbaa !0
  %pic_num.i.i = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 11
  %34 = load i32* %pic_num.i.i, align 4, !tbaa !3
  %cmp9.i.i = icmp eq i32 %34, %sub.i.i.i
  br i1 %cmp9.i.i, label %if.then10.i.i, label %for.inc.i.i

if.then10.i.i:                                    ; preds = %if.then6.i.i
  call fastcc void @unmark_for_reference(%struct.frame_store* %30) #6
  br label %mm_unmark_short_term_for_reference.exit.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %and.i.i = and i32 %31, 1
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i, label %if.end46.i.i, label %land.lhs.true17.i.i

land.lhs.true17.i.i:                              ; preds = %if.else.i.i
  %is_long_term20.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 2
  %35 = load i32* %is_long_term20.i.i, align 4, !tbaa !3
  %and21.i.i = and i32 %35, 1
  %tobool22.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.i.i, label %if.then23.i.i, label %if.end46.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true17.i.i
  %top_field.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 11
  %36 = load %struct.storable_picture** %top_field.i.i, align 8, !tbaa !0
  %pic_num26.i.i = getelementptr inbounds %struct.storable_picture* %36, i64 0, i32 11
  %37 = load i32* %pic_num26.i.i, align 4, !tbaa !3
  %cmp27.i.i = icmp eq i32 %37, %sub.i.i.i
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end46.i.i

if.then28.i.i:                                    ; preds = %if.then23.i.i
  %used_for_reference.i.i = getelementptr inbounds %struct.storable_picture* %36, i64 0, i32 15
  store i32 0, i32* %used_for_reference.i.i, align 4, !tbaa !3
  %38 = load i32* %is_reference.i.i, align 4, !tbaa !3
  %and35.i.i = and i32 %38, 2
  store i32 %and35.i.i, i32* %is_reference.i.i, align 4, !tbaa !3
  %is_used.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 0
  %39 = load i32* %is_used.i.i, align 4, !tbaa !3
  %cmp38.i.i = icmp eq i32 %39, 3
  br i1 %cmp38.i.i, label %if.then39.i.i, label %mm_unmark_short_term_for_reference.exit.i

if.then39.i.i:                                    ; preds = %if.then28.i.i
  %frame42.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 10
  %40 = load %struct.storable_picture** %frame42.i.i, align 8, !tbaa !0
  %used_for_reference43.i.i = getelementptr inbounds %struct.storable_picture* %40, i64 0, i32 15
  store i32 0, i32* %used_for_reference43.i.i, align 4, !tbaa !3
  br label %mm_unmark_short_term_for_reference.exit.i

if.end46.i.i:                                     ; preds = %if.then23.i.i, %land.lhs.true17.i.i, %if.else.i.i
  %and50.i.i = and i32 %31, 2
  %tobool51.i.i = icmp eq i32 %and50.i.i, 0
  br i1 %tobool51.i.i, label %for.inc.i.i, label %land.lhs.true52.i.i

land.lhs.true52.i.i:                              ; preds = %if.end46.i.i
  %is_long_term55.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 2
  %41 = load i32* %is_long_term55.i.i, align 4, !tbaa !3
  %and56.i.i = and i32 %41, 2
  %tobool57.i.i = icmp eq i32 %and56.i.i, 0
  br i1 %tobool57.i.i, label %if.then58.i.i, label %for.inc.i.i

if.then58.i.i:                                    ; preds = %land.lhs.true52.i.i
  %bottom_field.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 12
  %42 = load %struct.storable_picture** %bottom_field.i.i, align 8, !tbaa !0
  %pic_num61.i.i = getelementptr inbounds %struct.storable_picture* %42, i64 0, i32 11
  %43 = load i32* %pic_num61.i.i, align 4, !tbaa !3
  %cmp62.i.i = icmp eq i32 %43, %sub.i.i.i
  br i1 %cmp62.i.i, label %if.then63.i.i, label %for.inc.i.i

if.then63.i.i:                                    ; preds = %if.then58.i.i
  %used_for_reference67.i.i = getelementptr inbounds %struct.storable_picture* %42, i64 0, i32 15
  store i32 0, i32* %used_for_reference67.i.i, align 4, !tbaa !3
  %44 = load i32* %is_reference.i.i, align 4, !tbaa !3
  %and71.i.i = and i32 %44, 1
  store i32 %and71.i.i, i32* %is_reference.i.i, align 4, !tbaa !3
  %is_used74.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 0
  %45 = load i32* %is_used74.i.i, align 4, !tbaa !3
  %cmp75.i.i = icmp eq i32 %45, 3
  br i1 %cmp75.i.i, label %if.then76.i.i, label %mm_unmark_short_term_for_reference.exit.i

if.then76.i.i:                                    ; preds = %if.then63.i.i
  %frame79.i.i = getelementptr inbounds %struct.frame_store* %30, i64 0, i32 10
  %46 = load %struct.storable_picture** %frame79.i.i, align 8, !tbaa !0
  %used_for_reference80.i.i = getelementptr inbounds %struct.storable_picture* %46, i64 0, i32 15
  store i32 0, i32* %used_for_reference80.i.i, align 4, !tbaa !3
  br label %mm_unmark_short_term_for_reference.exit.i

for.inc.i.i:                                      ; preds = %if.then58.i.i, %land.lhs.true52.i.i, %if.end46.i.i, %if.then6.i.i, %land.lhs.true.i.i, %if.then.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %47 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp.i.i = icmp ult i32 %47, %28
  br i1 %cmp.i.i, label %for.body.i.i, label %mm_unmark_short_term_for_reference.exit.i

mm_unmark_short_term_for_reference.exit.i:        ; preds = %for.inc.i.i, %if.then76.i.i, %if.then63.i.i, %if.then39.i.i, %if.then28.i.i, %if.then10.i.i, %get_pic_num_x.exit.i.i
  call void @update_ref_list() #6
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %while.body.i
  %long_term_pic_num.i = getelementptr inbounds %struct.DecRefPicMarking_s* %22, i64 0, i32 2
  %48 = load i32* %long_term_pic_num.i, align 4, !tbaa !3
  %49 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %cmp138.i.i = icmp eq i32 %49, 0
  br i1 %cmp138.i.i, label %mm_unmark_long_term_for_reference.exit.i, label %for.body.i40.i

for.body.i40.i:                                   ; preds = %for.inc.i59.i, %sw.bb3.i
  %50 = phi i32 [ %49, %sw.bb3.i ], [ %72, %for.inc.i59.i ]
  %i.0139.i.i = phi i32 [ 0, %sw.bb3.i ], [ %inc.i.i, %for.inc.i59.i ]
  %51 = load i32* %structure.i.i.i, align 4, !tbaa !1
  %cmp1.i.i = icmp eq i32 %51, 0
  %idxprom.i.i = zext i32 %i.0139.i.i to i64
  %52 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx.i38.i = getelementptr inbounds %struct.frame_store** %52, i64 %idxprom.i.i
  %53 = load %struct.frame_store** %arrayidx.i38.i, align 8, !tbaa !0
  %is_reference.i39.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 1
  %54 = load i32* %is_reference.i39.i, align 4, !tbaa !3
  br i1 %cmp1.i.i, label %if.then.i42.i, label %if.else.i50.i

if.then.i42.i:                                    ; preds = %for.body.i40.i
  %cmp2.i41.i = icmp eq i32 %54, 3
  br i1 %cmp2.i41.i, label %land.lhs.true.i45.i, label %for.inc.i59.i

land.lhs.true.i45.i:                              ; preds = %if.then.i42.i
  %is_long_term.i43.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 2
  %55 = load i32* %is_long_term.i43.i, align 4, !tbaa !3
  %cmp5.i44.i = icmp eq i32 %55, 3
  br i1 %cmp5.i44.i, label %if.then6.i47.i, label %for.inc.i59.i

if.then6.i47.i:                                   ; preds = %land.lhs.true.i45.i
  %frame.i46.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 10
  %56 = load %struct.storable_picture** %frame.i46.i, align 8, !tbaa !0
  %long_term_pic_num9.i.i = getelementptr inbounds %struct.storable_picture* %56, i64 0, i32 12
  %57 = load i32* %long_term_pic_num9.i.i, align 4, !tbaa !3
  %cmp10.i.i = icmp eq i32 %57, %48
  br i1 %cmp10.i.i, label %if.then11.i.i, label %for.inc.i59.i

if.then11.i.i:                                    ; preds = %if.then6.i47.i
  call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %53) #6
  %.pre.i.i = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  br label %for.inc.i59.i

if.else.i50.i:                                    ; preds = %for.body.i40.i
  %and.i48.i = and i32 %54, 1
  %tobool.i49.i = icmp eq i32 %and.i48.i, 0
  br i1 %tobool.i49.i, label %if.end59.i.i, label %land.lhs.true18.i.i

land.lhs.true18.i.i:                              ; preds = %if.else.i50.i
  %is_long_term21.i.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 2
  %58 = load i32* %is_long_term21.i.i, align 4, !tbaa !3
  %and22.i.i = and i32 %58, 1
  %tobool23.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.i.i, label %if.end59.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %land.lhs.true18.i.i
  %top_field.i51.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 11
  %59 = load %struct.storable_picture** %top_field.i51.i, align 8, !tbaa !0
  %long_term_pic_num27.i.i = getelementptr inbounds %struct.storable_picture* %59, i64 0, i32 12
  %60 = load i32* %long_term_pic_num27.i.i, align 4, !tbaa !3
  %cmp28.i.i = icmp eq i32 %60, %48
  br i1 %cmp28.i.i, label %if.then29.i.i, label %if.end59.i.i

if.then29.i.i:                                    ; preds = %if.then24.i.i
  %used_for_reference.i52.i = getelementptr inbounds %struct.storable_picture* %59, i64 0, i32 15
  store i32 0, i32* %used_for_reference.i52.i, align 4, !tbaa !3
  %is_long_term36.i.i = getelementptr inbounds %struct.storable_picture* %59, i64 0, i32 14
  store i32 0, i32* %is_long_term36.i.i, align 4, !tbaa !3
  %61 = load i32* %is_reference.i39.i, align 4, !tbaa !3
  %and40.i.i = and i32 %61, 2
  store i32 %and40.i.i, i32* %is_reference.i39.i, align 4, !tbaa !3
  %62 = load i32* %is_long_term21.i.i, align 4, !tbaa !3
  %and44.i.i = and i32 %62, 2
  store i32 %and44.i.i, i32* %is_long_term21.i.i, align 4, !tbaa !3
  %is_used.i53.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 0
  %63 = load i32* %is_used.i53.i, align 4, !tbaa !3
  %cmp47.i.i = icmp eq i32 %63, 3
  br i1 %cmp47.i.i, label %if.then48.i.i, label %mm_unmark_long_term_for_reference.exit.i

if.then48.i.i:                                    ; preds = %if.then29.i.i
  %frame51.i.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 10
  %64 = load %struct.storable_picture** %frame51.i.i, align 8, !tbaa !0
  %used_for_reference52.i.i = getelementptr inbounds %struct.storable_picture* %64, i64 0, i32 15
  store i32 0, i32* %used_for_reference52.i.i, align 4, !tbaa !3
  %is_long_term56.i.i = getelementptr inbounds %struct.storable_picture* %64, i64 0, i32 14
  store i32 0, i32* %is_long_term56.i.i, align 4, !tbaa !3
  br label %mm_unmark_long_term_for_reference.exit.i

if.end59.i.i:                                     ; preds = %if.then24.i.i, %land.lhs.true18.i.i, %if.else.i50.i
  %and63.i.i = and i32 %54, 2
  %tobool64.i.i = icmp eq i32 %and63.i.i, 0
  br i1 %tobool64.i.i, label %for.inc.i59.i, label %land.lhs.true65.i.i

land.lhs.true65.i.i:                              ; preds = %if.end59.i.i
  %is_long_term68.i.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 2
  %65 = load i32* %is_long_term68.i.i, align 4, !tbaa !3
  %and69.i.i = and i32 %65, 2
  %tobool70.i.i = icmp eq i32 %and69.i.i, 0
  br i1 %tobool70.i.i, label %for.inc.i59.i, label %if.then71.i.i

if.then71.i.i:                                    ; preds = %land.lhs.true65.i.i
  %bottom_field.i54.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 12
  %66 = load %struct.storable_picture** %bottom_field.i54.i, align 8, !tbaa !0
  %long_term_pic_num74.i.i = getelementptr inbounds %struct.storable_picture* %66, i64 0, i32 12
  %67 = load i32* %long_term_pic_num74.i.i, align 4, !tbaa !3
  %cmp75.i55.i = icmp eq i32 %67, %48
  br i1 %cmp75.i55.i, label %if.then76.i57.i, label %for.inc.i59.i

if.then76.i57.i:                                  ; preds = %if.then71.i.i
  %used_for_reference80.i56.i = getelementptr inbounds %struct.storable_picture* %66, i64 0, i32 15
  store i32 0, i32* %used_for_reference80.i56.i, align 4, !tbaa !3
  %is_long_term84.i.i = getelementptr inbounds %struct.storable_picture* %66, i64 0, i32 14
  store i32 0, i32* %is_long_term84.i.i, align 4, !tbaa !3
  %68 = load i32* %is_reference.i39.i, align 4, !tbaa !3
  %and88.i.i = and i32 %68, 1
  store i32 %and88.i.i, i32* %is_reference.i39.i, align 4, !tbaa !3
  %69 = load i32* %is_long_term68.i.i, align 4, !tbaa !3
  %and92.i.i = and i32 %69, 1
  store i32 %and92.i.i, i32* %is_long_term68.i.i, align 4, !tbaa !3
  %is_used95.i.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 0
  %70 = load i32* %is_used95.i.i, align 4, !tbaa !3
  %cmp96.i.i = icmp eq i32 %70, 3
  br i1 %cmp96.i.i, label %if.then97.i.i, label %mm_unmark_long_term_for_reference.exit.i

if.then97.i.i:                                    ; preds = %if.then76.i57.i
  %frame100.i.i = getelementptr inbounds %struct.frame_store* %53, i64 0, i32 10
  %71 = load %struct.storable_picture** %frame100.i.i, align 8, !tbaa !0
  %used_for_reference101.i.i = getelementptr inbounds %struct.storable_picture* %71, i64 0, i32 15
  store i32 0, i32* %used_for_reference101.i.i, align 4, !tbaa !3
  %is_long_term105.i.i = getelementptr inbounds %struct.storable_picture* %71, i64 0, i32 14
  store i32 0, i32* %is_long_term105.i.i, align 4, !tbaa !3
  br label %mm_unmark_long_term_for_reference.exit.i

for.inc.i59.i:                                    ; preds = %if.then71.i.i, %land.lhs.true65.i.i, %if.end59.i.i, %if.then11.i.i, %if.then6.i47.i, %land.lhs.true.i45.i, %if.then.i42.i
  %72 = phi i32 [ %50, %land.lhs.true65.i.i ], [ %50, %if.end59.i.i ], [ %50, %if.then6.i47.i ], [ %.pre.i.i, %if.then11.i.i ], [ %50, %land.lhs.true.i45.i ], [ %50, %if.then.i42.i ], [ %50, %if.then71.i.i ]
  %inc.i.i = add i32 %i.0139.i.i, 1
  %cmp.i58.i = icmp ult i32 %inc.i.i, %72
  br i1 %cmp.i58.i, label %for.body.i40.i, label %mm_unmark_long_term_for_reference.exit.i

mm_unmark_long_term_for_reference.exit.i:         ; preds = %for.inc.i59.i, %if.then97.i.i, %if.then76.i57.i, %if.then48.i.i, %if.then29.i.i, %sw.bb3.i
  call void @update_ltref_list() #6
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %while.body.i
  %difference_of_pic_nums_minus15.i = getelementptr inbounds %struct.DecRefPicMarking_s* %22, i64 0, i32 1
  %73 = load i32* %difference_of_pic_nums_minus15.i, align 4, !tbaa !3
  %long_term_frame_idx.i129 = getelementptr inbounds %struct.DecRefPicMarking_s* %22, i64 0, i32 3
  %74 = load i32* %long_term_frame_idx.i129, align 4, !tbaa !3
  %75 = load i32* %structure.i.i.i, align 4, !tbaa !1
  %cmp.i.i61.i = icmp eq i32 %75, 0
  %76 = load i32* %frame_num.i.i.i, align 4, !tbaa !3
  br i1 %cmp.i.i61.i, label %if.then.i68.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %sw.bb4.i
  %mul.i.i63.i = shl i32 %76, 1
  %add4.i.i64.i = or i32 %mul.i.i63.i, 1
  %add2.neg.i.i65.i = xor i32 %73, -1
  %sub.i.i66.i = add i32 %add4.i.i64.i, %add2.neg.i.i65.i
  %77 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp263.i.i = icmp eq i32 %77, 0
  br i1 %cmp263.i.i, label %if.then23.i81.i, label %for.body.lr.ph.i67.i

for.body.lr.ph.i67.i:                             ; preds = %for.cond.preheader.i.i
  %78 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  br label %for.body.i74.i

if.then.i68.i:                                    ; preds = %sw.bb4.i
  %add2.neg.i41.i.i = xor i32 %73, -1
  %sub.i42.i.i = add i32 %76, %add2.neg.i41.i.i
  call fastcc void @unmark_long_term_frame_for_reference_by_frame_idx(i32 %74) #6
  br label %if.end25.i.i

for.body.i74.i:                                   ; preds = %for.inc.i80.i, %for.body.lr.ph.i67.i
  %indvars.iv.i69.i = phi i64 [ 0, %for.body.lr.ph.i67.i ], [ %indvars.iv.next.i78.i, %for.inc.i80.i ]
  %arrayidx.i70.i = getelementptr inbounds %struct.frame_store** %78, i64 %indvars.iv.i69.i
  %79 = load %struct.frame_store** %arrayidx.i70.i, align 8, !tbaa !0
  %is_reference.i71.i = getelementptr inbounds %struct.frame_store* %79, i64 0, i32 1
  %80 = load i32* %is_reference.i71.i, align 4, !tbaa !3
  %and.i72.i = and i32 %80, 1
  %tobool.i73.i = icmp eq i32 %and.i72.i, 0
  br i1 %tobool.i73.i, label %if.end8.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %for.body.i74.i
  %top_field.i75.i = getelementptr inbounds %struct.frame_store* %79, i64 0, i32 11
  %81 = load %struct.storable_picture** %top_field.i75.i, align 8, !tbaa !0
  %pic_num.i76.i = getelementptr inbounds %struct.storable_picture* %81, i64 0, i32 11
  %82 = load i32* %pic_num.i76.i, align 4, !tbaa !3
  %cmp6.i.i = icmp eq i32 %82, %sub.i.i66.i
  br i1 %cmp6.i.i, label %if.end24.i.i, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then3.i.i, %for.body.i74.i
  %and12.i.i = and i32 %80, 2
  %tobool13.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.i.i, label %for.inc.i80.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end8.i.i
  %bottom_field.i77.i = getelementptr inbounds %struct.frame_store* %79, i64 0, i32 12
  %83 = load %struct.storable_picture** %bottom_field.i77.i, align 8, !tbaa !0
  %pic_num17.i.i = getelementptr inbounds %struct.storable_picture* %83, i64 0, i32 11
  %84 = load i32* %pic_num17.i.i, align 4, !tbaa !3
  %cmp18.i.i = icmp eq i32 %84, %sub.i.i66.i
  br i1 %cmp18.i.i, label %if.end24.i.i, label %for.inc.i80.i

for.inc.i80.i:                                    ; preds = %if.then14.i.i, %if.end8.i.i
  %indvars.iv.next.i78.i = add i64 %indvars.iv.i69.i, 1
  %85 = trunc i64 %indvars.iv.next.i78.i to i32
  %cmp2.i79.i = icmp ult i32 %85, %77
  br i1 %cmp2.i79.i, label %for.body.i74.i, label %if.then23.i81.i

if.then23.i81.i:                                  ; preds = %for.inc.i80.i, %for.cond.preheader.i.i
  call void @error(i8* getelementptr inbounds ([38 x i8]* @.str29, i64 0, i64 0), i32 200) #6
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then14.i.i, %if.then3.i.i, %if.then23.i81.i
  %structure1.049.i.i = phi i32 [ 0, %if.then23.i81.i ], [ 2, %if.then14.i.i ], [ 1, %if.then3.i.i ]
  call fastcc void @unmark_long_term_field_for_reference_by_frame_idx(i32 %structure1.049.i.i, i32 %74, i32 0, i32 0, i32 %sub.i.i66.i) #6
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.end24.i.i, %if.then.i68.i
  %sub.i45.i.i = phi i32 [ %sub.i.i66.i, %if.end24.i.i ], [ %sub.i42.i.i, %if.then.i68.i ]
  %86 = load i32* %structure.i.i.i, align 4, !tbaa !1
  switch i32 %86, label %if.else54.i.i.i [
    i32 0, label %for.cond.preheader.i.i.i
    i32 1, label %if.end55.i.i.i
  ]

for.cond.preheader.i.i.i:                         ; preds = %if.end25.i.i
  %87 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp1269.i.i.i = icmp eq i32 %87, 0
  br i1 %cmp1269.i.i.i, label %for.end.i.i.i, label %for.body.lr.ph.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %88 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i, %for.body.lr.ph.i.i.i
  %indvars.iv280.i.i.i = phi i64 [ 0, %for.body.lr.ph.i.i.i ], [ %indvars.iv.next281.i.i.i, %for.inc.i.i.i ]
  %arrayidx.i.i.i = getelementptr inbounds %struct.frame_store** %88, i64 %indvars.iv280.i.i.i
  %89 = load %struct.frame_store** %arrayidx.i.i.i, align 8, !tbaa !0
  %is_reference.i.i.i = getelementptr inbounds %struct.frame_store* %89, i64 0, i32 1
  %90 = load i32* %is_reference.i.i.i, align 4, !tbaa !3
  %cmp2.i.i.i = icmp eq i32 %90, 3
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %for.inc.i.i.i

if.then3.i.i.i:                                   ; preds = %for.body.i.i.i
  %frame.i.i.i = getelementptr inbounds %struct.frame_store* %89, i64 0, i32 10
  %91 = load %struct.storable_picture** %frame.i.i.i, align 8, !tbaa !0
  %is_long_term.i.i.i = getelementptr inbounds %struct.storable_picture* %91, i64 0, i32 14
  %92 = load i32* %is_long_term.i.i.i, align 4, !tbaa !3
  %tobool.i.i.i = icmp eq i32 %92, 0
  br i1 %tobool.i.i.i, label %land.lhs.true.i.i.i, label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then3.i.i.i
  %pic_num.i.i.i = getelementptr inbounds %struct.storable_picture* %91, i64 0, i32 11
  %93 = load i32* %pic_num.i.i.i, align 4, !tbaa !3
  %cmp9.i.i.i = icmp eq i32 %93, %sub.i45.i.i
  br i1 %cmp9.i.i.i, label %if.then10.i.i.i, label %for.inc.i.i.i

if.then10.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %bottom_field.i.i.i = getelementptr inbounds %struct.frame_store* %89, i64 0, i32 12
  %94 = load %struct.storable_picture** %bottom_field.i.i.i, align 8, !tbaa !0
  %long_term_frame_idx13.i.i.i = getelementptr inbounds %struct.storable_picture* %94, i64 0, i32 13
  store i32 %74, i32* %long_term_frame_idx13.i.i.i, align 4, !tbaa !3
  %top_field.i.i.i = getelementptr inbounds %struct.frame_store* %89, i64 0, i32 11
  %95 = load %struct.storable_picture** %top_field.i.i.i, align 8, !tbaa !0
  %long_term_frame_idx16.i.i.i = getelementptr inbounds %struct.storable_picture* %95, i64 0, i32 13
  store i32 %74, i32* %long_term_frame_idx16.i.i.i, align 4, !tbaa !3
  %long_term_frame_idx20.i.i.i = getelementptr inbounds %struct.storable_picture* %91, i64 0, i32 13
  store i32 %74, i32* %long_term_frame_idx20.i.i.i, align 4, !tbaa !3
  %long_term_frame_idx23.i.i.i = getelementptr inbounds %struct.frame_store* %89, i64 0, i32 7
  store i32 %74, i32* %long_term_frame_idx23.i.i.i, align 4, !tbaa !3
  %long_term_pic_num.i.i.i = getelementptr inbounds %struct.storable_picture* %94, i64 0, i32 12
  store i32 %74, i32* %long_term_pic_num.i.i.i, align 4, !tbaa !3
  %long_term_pic_num30.i.i.i = getelementptr inbounds %struct.storable_picture* %95, i64 0, i32 12
  store i32 %74, i32* %long_term_pic_num30.i.i.i, align 4, !tbaa !3
  %long_term_pic_num34.i.i.i = getelementptr inbounds %struct.storable_picture* %91, i64 0, i32 12
  store i32 %74, i32* %long_term_pic_num34.i.i.i, align 4, !tbaa !3
  %is_long_term38.i.i.i = getelementptr inbounds %struct.storable_picture* %94, i64 0, i32 14
  store i32 1, i32* %is_long_term38.i.i.i, align 4, !tbaa !3
  %is_long_term42.i.i.i = getelementptr inbounds %struct.storable_picture* %95, i64 0, i32 14
  store i32 1, i32* %is_long_term42.i.i.i, align 4, !tbaa !3
  store i32 1, i32* %is_long_term.i.i.i, align 4, !tbaa !3
  %is_long_term49.i.i.i = getelementptr inbounds %struct.frame_store* %89, i64 0, i32 2
  store i32 3, i32* %is_long_term49.i.i.i, align 4, !tbaa !3
  br label %mm_assign_long_term_frame_idx.exit.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i, %if.then3.i.i.i, %for.body.i.i.i
  %indvars.iv.next281.i.i.i = add i64 %indvars.iv280.i.i.i, 1
  %96 = trunc i64 %indvars.iv.next281.i.i.i to i32
  %cmp1.i.i.i = icmp ult i32 %96, %87
  br i1 %cmp1.i.i.i, label %for.body.i.i.i, label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i, %for.cond.preheader.i.i.i
  %puts262.i.i.i = call i32 @puts(i8* getelementptr inbounds ([57 x i8]* @str35, i64 0, i64 0)) #5
  br label %mm_assign_long_term_frame_idx.exit.i

if.else54.i.i.i:                                  ; preds = %if.end25.i.i
  br label %if.end55.i.i.i

if.end55.i.i.i:                                   ; preds = %if.else54.i.i.i, %if.end25.i.i
  %add_top.0.i.i.i = phi i32 [ 0, %if.else54.i.i.i ], [ 1, %if.end25.i.i ]
  %97 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp57266.i.i.i = icmp eq i32 %97, 0
  br i1 %cmp57266.i.i.i, label %for.end199.i.i.i, label %for.body58.lr.ph.i.i.i

for.body58.lr.ph.i.i.i:                           ; preds = %if.end55.i.i.i
  %98 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  br label %for.body58.i.i.i

for.body58.i.i.i:                                 ; preds = %for.inc197.i.i.i, %for.body58.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %for.body58.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %for.inc197.i.i.i ]
  %arrayidx60.i.i.i = getelementptr inbounds %struct.frame_store** %98, i64 %indvars.iv.i.i.i
  %99 = load %struct.frame_store** %arrayidx60.i.i.i, align 8, !tbaa !0
  %is_reference61.i.i.i = getelementptr inbounds %struct.frame_store* %99, i64 0, i32 1
  %100 = load i32* %is_reference61.i.i.i, align 4, !tbaa !3
  %and.i.i.i = and i32 %100, 1
  %tobool62.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool62.i.i.i, label %if.end125.i.i.i, label %if.then63.i.i.i

if.then63.i.i.i:                                  ; preds = %for.body58.i.i.i
  %top_field66.i.i.i = getelementptr inbounds %struct.frame_store* %99, i64 0, i32 11
  %101 = load %struct.storable_picture** %top_field66.i.i.i, align 8, !tbaa !0
  %is_long_term67.i.i.i = getelementptr inbounds %struct.storable_picture* %101, i64 0, i32 14
  %102 = load i32* %is_long_term67.i.i.i, align 4, !tbaa !3
  %tobool68.i.i.i = icmp eq i32 %102, 0
  br i1 %tobool68.i.i.i, label %land.lhs.true69.i.i.i, label %if.end125.i.i.i

land.lhs.true69.i.i.i:                            ; preds = %if.then63.i.i.i
  %pic_num73.i.i.i = getelementptr inbounds %struct.storable_picture* %101, i64 0, i32 11
  %103 = load i32* %pic_num73.i.i.i, align 4, !tbaa !3
  %cmp74.i.i.i = icmp eq i32 %103, %sub.i45.i.i
  br i1 %cmp74.i.i.i, label %if.then75.i.i.i, label %if.end125.i.i.i

if.then75.i.i.i:                                  ; preds = %land.lhs.true69.i.i.i
  %is_long_term78.i.i.i = getelementptr inbounds %struct.frame_store* %99, i64 0, i32 2
  %104 = load i32* %is_long_term78.i.i.i, align 4, !tbaa !3
  %tobool79.i.i.i = icmp eq i32 %104, 0
  br i1 %tobool79.i.i.i, label %if.end87.i.i.i, label %land.lhs.true80.i.i.i

land.lhs.true80.i.i.i:                            ; preds = %if.then75.i.i.i
  %long_term_frame_idx83.i.i.i = getelementptr inbounds %struct.frame_store* %99, i64 0, i32 7
  %105 = load i32* %long_term_frame_idx83.i.i.i, align 4, !tbaa !3
  %cmp84.i.i.i = icmp eq i32 %105, %74
  br i1 %cmp84.i.i.i, label %if.end87.i.i.i, label %if.then85.i.i.i

if.then85.i.i.i:                                  ; preds = %land.lhs.true80.i.i.i
  %puts261.i.i.i = call i32 @puts(i8* getelementptr inbounds ([66 x i8]* @str34, i64 0, i64 0)) #5
  %.pre284.i.i.i = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx89.phi.trans.insert.i.i.i = getelementptr inbounds %struct.frame_store** %.pre284.i.i.i, i64 %indvars.iv.i.i.i
  %.pre285.i.i.i = load %struct.frame_store** %arrayidx89.phi.trans.insert.i.i.i, align 8, !tbaa !0
  %top_field90.phi.trans.insert.i.i.i = getelementptr inbounds %struct.frame_store* %.pre285.i.i.i, i64 0, i32 11
  %.pre286.i.i.i = load %struct.storable_picture** %top_field90.phi.trans.insert.i.i.i, align 8, !tbaa !0
  br label %if.end87.i.i.i

if.end87.i.i.i:                                   ; preds = %if.then85.i.i.i, %land.lhs.true80.i.i.i, %if.then75.i.i.i
  %106 = phi %struct.storable_picture* [ %101, %land.lhs.true80.i.i.i ], [ %101, %if.then75.i.i.i ], [ %.pre286.i.i.i, %if.then85.i.i.i ]
  %107 = phi %struct.frame_store* [ %99, %land.lhs.true80.i.i.i ], [ %99, %if.then75.i.i.i ], [ %.pre285.i.i.i, %if.then85.i.i.i ]
  %long_term_frame_idx91.i.i.i = getelementptr inbounds %struct.storable_picture* %106, i64 0, i32 13
  store i32 %74, i32* %long_term_frame_idx91.i.i.i, align 4, !tbaa !3
  %long_term_frame_idx94.i.i.i = getelementptr inbounds %struct.frame_store* %107, i64 0, i32 7
  store i32 %74, i32* %long_term_frame_idx94.i.i.i, align 4, !tbaa !3
  %mul.i40.i.i = shl nsw i32 %74, 1
  %add.i.i.i = or i32 %add_top.0.i.i.i, %mul.i40.i.i
  %long_term_pic_num98.i.i.i = getelementptr inbounds %struct.storable_picture* %106, i64 0, i32 12
  store i32 %add.i.i.i, i32* %long_term_pic_num98.i.i.i, align 4, !tbaa !3
  %is_long_term102.i.i.i = getelementptr inbounds %struct.storable_picture* %106, i64 0, i32 14
  store i32 1, i32* %is_long_term102.i.i.i, align 4, !tbaa !3
  %is_long_term105.i.i.i = getelementptr inbounds %struct.frame_store* %107, i64 0, i32 2
  %108 = load i32* %is_long_term105.i.i.i, align 4, !tbaa !3
  %or.i.i.i = or i32 %108, 1
  store i32 %or.i.i.i, i32* %is_long_term105.i.i.i, align 4, !tbaa !3
  %cmp109.i.i.i = icmp eq i32 %or.i.i.i, 3
  br i1 %cmp109.i.i.i, label %if.then110.i.i.i, label %mm_assign_long_term_frame_idx.exit.i

if.then110.i.i.i:                                 ; preds = %if.end87.i.i.i
  %frame113.i.i.i = getelementptr inbounds %struct.frame_store* %107, i64 0, i32 10
  %109 = load %struct.storable_picture** %frame113.i.i.i, align 8, !tbaa !0
  %is_long_term114.i.i.i = getelementptr inbounds %struct.storable_picture* %109, i64 0, i32 14
  store i32 1, i32* %is_long_term114.i.i.i, align 4, !tbaa !3
  %long_term_pic_num118.i.i.i = getelementptr inbounds %struct.storable_picture* %109, i64 0, i32 12
  store i32 %74, i32* %long_term_pic_num118.i.i.i, align 4, !tbaa !3
  %long_term_frame_idx122.i.i.i = getelementptr inbounds %struct.storable_picture* %109, i64 0, i32 13
  store i32 %74, i32* %long_term_frame_idx122.i.i.i, align 4, !tbaa !3
  br label %mm_assign_long_term_frame_idx.exit.i

if.end125.i.i.i:                                  ; preds = %land.lhs.true69.i.i.i, %if.then63.i.i.i, %for.body58.i.i.i
  %and129.i.i.i = and i32 %100, 2
  %tobool130.i.i.i = icmp eq i32 %and129.i.i.i, 0
  br i1 %tobool130.i.i.i, label %for.inc197.i.i.i, label %if.then131.i.i.i

if.then131.i.i.i:                                 ; preds = %if.end125.i.i.i
  %bottom_field134.i.i.i = getelementptr inbounds %struct.frame_store* %99, i64 0, i32 12
  %110 = load %struct.storable_picture** %bottom_field134.i.i.i, align 8, !tbaa !0
  %is_long_term135.i.i.i = getelementptr inbounds %struct.storable_picture* %110, i64 0, i32 14
  %111 = load i32* %is_long_term135.i.i.i, align 4, !tbaa !3
  %tobool136.i.i.i = icmp eq i32 %111, 0
  br i1 %tobool136.i.i.i, label %land.lhs.true137.i.i.i, label %for.inc197.i.i.i

land.lhs.true137.i.i.i:                           ; preds = %if.then131.i.i.i
  %pic_num141.i.i.i = getelementptr inbounds %struct.storable_picture* %110, i64 0, i32 11
  %112 = load i32* %pic_num141.i.i.i, align 4, !tbaa !3
  %cmp142.i.i.i = icmp eq i32 %112, %sub.i45.i.i
  br i1 %cmp142.i.i.i, label %if.then143.i.i.i, label %for.inc197.i.i.i

if.then143.i.i.i:                                 ; preds = %land.lhs.true137.i.i.i
  %is_long_term146.i.i.i = getelementptr inbounds %struct.frame_store* %99, i64 0, i32 2
  %113 = load i32* %is_long_term146.i.i.i, align 4, !tbaa !3
  %tobool147.i.i.i = icmp eq i32 %113, 0
  br i1 %tobool147.i.i.i, label %if.end155.i.i.i, label %land.lhs.true148.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %if.then143.i.i.i
  %long_term_frame_idx151.i.i.i = getelementptr inbounds %struct.frame_store* %99, i64 0, i32 7
  %114 = load i32* %long_term_frame_idx151.i.i.i, align 4, !tbaa !3
  %cmp152.i.i.i = icmp eq i32 %114, %74
  br i1 %cmp152.i.i.i, label %if.end155.i.i.i, label %if.then153.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true148.i.i.i
  %puts260.i.i.i = call i32 @puts(i8* getelementptr inbounds ([66 x i8]* @str34, i64 0, i64 0)) #5
  %.pre.i.i.i = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx157.phi.trans.insert.i.i.i = getelementptr inbounds %struct.frame_store** %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %.pre282.i.i.i = load %struct.frame_store** %arrayidx157.phi.trans.insert.i.i.i, align 8, !tbaa !0
  %bottom_field158.phi.trans.insert.i.i.i = getelementptr inbounds %struct.frame_store* %.pre282.i.i.i, i64 0, i32 12
  %.pre283.i.i.i = load %struct.storable_picture** %bottom_field158.phi.trans.insert.i.i.i, align 8, !tbaa !0
  br label %if.end155.i.i.i

if.end155.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true148.i.i.i, %if.then143.i.i.i
  %115 = phi %struct.storable_picture* [ %110, %land.lhs.true148.i.i.i ], [ %110, %if.then143.i.i.i ], [ %.pre283.i.i.i, %if.then153.i.i.i ]
  %116 = phi %struct.frame_store* [ %99, %land.lhs.true148.i.i.i ], [ %99, %if.then143.i.i.i ], [ %.pre282.i.i.i, %if.then153.i.i.i ]
  %long_term_frame_idx159.i.i.i = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 13
  store i32 %74, i32* %long_term_frame_idx159.i.i.i, align 4, !tbaa !3
  %long_term_frame_idx162.i.i.i = getelementptr inbounds %struct.frame_store* %116, i64 0, i32 7
  store i32 %74, i32* %long_term_frame_idx162.i.i.i, align 4, !tbaa !3
  %mul163.i.i.i = shl nsw i32 %74, 1
  %add164.i.i.i = or i32 %add_top.0.i.i.i, %mul163.i.i.i
  %long_term_pic_num168.i.i.i = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 12
  store i32 %add164.i.i.i, i32* %long_term_pic_num168.i.i.i, align 4, !tbaa !3
  %is_long_term172.i.i.i = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 14
  store i32 1, i32* %is_long_term172.i.i.i, align 4, !tbaa !3
  %is_long_term175.i.i.i = getelementptr inbounds %struct.frame_store* %116, i64 0, i32 2
  %117 = load i32* %is_long_term175.i.i.i, align 4, !tbaa !3
  %or176.i.i.i = or i32 %117, 2
  store i32 %or176.i.i.i, i32* %is_long_term175.i.i.i, align 4, !tbaa !3
  %cmp180.i.i.i = icmp eq i32 %or176.i.i.i, 3
  br i1 %cmp180.i.i.i, label %if.then181.i.i.i, label %mm_assign_long_term_frame_idx.exit.i

if.then181.i.i.i:                                 ; preds = %if.end155.i.i.i
  %frame184.i.i.i = getelementptr inbounds %struct.frame_store* %116, i64 0, i32 10
  %118 = load %struct.storable_picture** %frame184.i.i.i, align 8, !tbaa !0
  %is_long_term185.i.i.i = getelementptr inbounds %struct.storable_picture* %118, i64 0, i32 14
  store i32 1, i32* %is_long_term185.i.i.i, align 4, !tbaa !3
  %long_term_pic_num189.i.i.i = getelementptr inbounds %struct.storable_picture* %118, i64 0, i32 12
  store i32 %74, i32* %long_term_pic_num189.i.i.i, align 4, !tbaa !3
  %long_term_frame_idx193.i.i.i = getelementptr inbounds %struct.storable_picture* %118, i64 0, i32 13
  store i32 %74, i32* %long_term_frame_idx193.i.i.i, align 4, !tbaa !3
  br label %mm_assign_long_term_frame_idx.exit.i

for.inc197.i.i.i:                                 ; preds = %land.lhs.true137.i.i.i, %if.then131.i.i.i, %if.end125.i.i.i
  %indvars.iv.next.i.i.i = add i64 %indvars.iv.i.i.i, 1
  %119 = trunc i64 %indvars.iv.next.i.i.i to i32
  %cmp57.i.i.i = icmp ult i32 %119, %97
  br i1 %cmp57.i.i.i, label %for.body58.i.i.i, label %for.end199.i.i.i

for.end199.i.i.i:                                 ; preds = %for.inc197.i.i.i, %if.end55.i.i.i
  %puts.i.i.i = call i32 @puts(i8* getelementptr inbounds ([57 x i8]* @str, i64 0, i64 0)) #5
  br label %mm_assign_long_term_frame_idx.exit.i

mm_assign_long_term_frame_idx.exit.i:             ; preds = %for.end199.i.i.i, %if.then181.i.i.i, %if.end155.i.i.i, %if.then110.i.i.i, %if.end87.i.i.i, %for.end.i.i.i, %if.then10.i.i.i
  call void @update_ref_list() #6
  call void @update_ltref_list() #6
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %while.body.i
  %max_long_term_frame_idx_plus1.i = getelementptr inbounds %struct.DecRefPicMarking_s* %22, i64 0, i32 4
  %120 = load i32* %max_long_term_frame_idx_plus1.i, align 4, !tbaa !3
  call void @mm_update_max_long_term_frame_idx(i32 %120) #6
  call void @update_ltref_list() #6
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %while.body.i
  %121 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp3.i.i = icmp eq i32 %121, 0
  br i1 %cmp3.i.i, label %mm_unmark_all_short_term_for_reference.exit.i, label %for.body.i86.i

for.body.i86.i:                                   ; preds = %sw.bb7.i, %for.body.i86.i
  %i.04.i.i = phi i32 [ %inc.i84.i, %for.body.i86.i ], [ 0, %sw.bb7.i ]
  %idxprom.i82.i = zext i32 %i.04.i.i to i64
  %122 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx.i83.i = getelementptr inbounds %struct.frame_store** %122, i64 %idxprom.i82.i
  %123 = load %struct.frame_store** %arrayidx.i83.i, align 8, !tbaa !0
  call fastcc void @unmark_for_reference(%struct.frame_store* %123) #6
  %inc.i84.i = add i32 %i.04.i.i, 1
  %124 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp.i85.i = icmp ult i32 %inc.i84.i, %124
  br i1 %cmp.i85.i, label %for.body.i86.i, label %mm_unmark_all_short_term_for_reference.exit.i

mm_unmark_all_short_term_for_reference.exit.i:    ; preds = %for.body.i86.i, %sw.bb7.i
  call void @update_ref_list() #6
  call void @mm_update_max_long_term_frame_idx(i32 0) #6
  %125 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %last_has_mmco_58.i = getelementptr inbounds %struct.ImageParameters* %125, i64 0, i32 145
  store i32 1, i32* %last_has_mmco_58.i, align 4, !tbaa !3
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %while.body.i
  %long_term_frame_idx10.i = getelementptr inbounds %struct.DecRefPicMarking_s* %22, i64 0, i32 3
  %126 = load i32* %long_term_frame_idx10.i, align 4, !tbaa !3
  %127 = load i32* %structure.i.i.i, align 4, !tbaa !1
  %cmp.i88.i = icmp eq i32 %127, 0
  br i1 %cmp.i88.i, label %if.then.i89.i, label %if.else.i91.i

if.then.i89.i:                                    ; preds = %sw.bb9.i
  call fastcc void @unmark_long_term_frame_for_reference_by_frame_idx(i32 %126) #6
  br label %mm_mark_current_picture_long_term.exit.i

if.else.i91.i:                                    ; preds = %sw.bb9.i
  %128 = load i32* %pic_num.i90.i, align 4, !tbaa !3
  call fastcc void @unmark_long_term_field_for_reference_by_frame_idx(i32 %127, i32 %126, i32 1, i32 %128, i32 0) #6
  br label %mm_mark_current_picture_long_term.exit.i

mm_mark_current_picture_long_term.exit.i:         ; preds = %if.else.i91.i, %if.then.i89.i
  store i32 1, i32* %is_long_term.i92.i, align 4, !tbaa !3
  store i32 %126, i32* %long_term_frame_idx2.i.i, align 4, !tbaa !3
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %while.body.i
  call void @error(i8* getelementptr inbounds ([54 x i8]* @.str28, i64 0, i64 0), i32 500) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %mm_mark_current_picture_long_term.exit.i, %mm_unmark_all_short_term_for_reference.exit.i, %sw.bb6.i, %mm_assign_long_term_frame_idx.exit.i, %mm_unmark_long_term_for_reference.exit.i, %mm_unmark_short_term_for_reference.exit.i, %if.then.i, %sw.bb.i
  %Next11.i = getelementptr inbounds %struct.DecRefPicMarking_s* %22, i64 0, i32 5
  %129 = load %struct.DecRefPicMarking_s** %Next11.i, align 8, !tbaa !0
  %130 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dec_ref_pic_marking_buffer12.i = getelementptr inbounds %struct.ImageParameters* %130, i64 0, i32 117
  store %struct.DecRefPicMarking_s* %129, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer12.i, align 8, !tbaa !0
  %131 = bitcast %struct.DecRefPicMarking_s* %22 to i8*
  call void @free(i8* %131) #6
  %132 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dec_ref_pic_marking_buffer.i = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 117
  %133 = load %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer.i, align 8, !tbaa !0
  %tobool.i130 = icmp eq %struct.DecRefPicMarking_s* %133, null
  br i1 %tobool.i130, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %sw.epilog.i
  %last_has_mmco_513.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 145
  %.pre.i = load i32* %last_has_mmco_513.phi.trans.insert.i, align 4, !tbaa !3
  %phitmp.i = icmp eq i32 %.pre.i, 0
  br i1 %phitmp.i, label %if.end7, label %if.then15.i

if.then15.i:                                      ; preds = %while.end.i
  store i32 0, i32* %frame_num.i.i.i, align 4, !tbaa !3
  store i32 0, i32* %pic_num.i90.i, align 4, !tbaa !3
  %poc.i = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 1
  store i32 0, i32* %poc.i, align 4, !tbaa !3
  %ThisPOC.i = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 104
  store i32 0, i32* %ThisPOC.i, align 4, !tbaa !3
  %134 = load i32* %structure.i.i.i, align 4, !tbaa !1
  switch i32 %134, label %sw.epilog19.i [
    i32 1, label %sw.bb16.i
    i32 2, label %sw.bb17.i
    i32 0, label %sw.bb18.i
  ]

sw.bb16.i:                                        ; preds = %if.then15.i
  %toppoc.i = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 101
  store i32 0, i32* %toppoc.i, align 4, !tbaa !3
  br label %sw.epilog19.i

sw.bb17.i:                                        ; preds = %if.then15.i
  %bottompoc.i = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 102
  store i32 0, i32* %bottompoc.i, align 4, !tbaa !3
  br label %sw.epilog19.i

sw.bb18.i:                                        ; preds = %if.then15.i
  %framepoc.i = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 103
  store i32 0, i32* %framepoc.i, align 4, !tbaa !3
  br label %sw.epilog19.i

sw.epilog19.i:                                    ; preds = %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %if.then15.i
  call void @flush_dpb() #6
  br label %if.end7

if.end7:                                          ; preds = %sw.epilog19.i, %while.end.i, %if.then6, %if.else21.i, %if.then20.i, %land.lhs.true, %if.else
  %structure8 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 0
  %135 = load i32* %structure8, align 4, !tbaa !1
  %cmp9 = icmp eq i32 %135, 1
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %cmp12 = icmp eq i32 %135, 2
  %136 = load %struct.frame_store** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 10), align 8, !tbaa !0
  %tobool15 = icmp ne %struct.frame_store* %136, null
  %or.cond = and i1 %cmp12, %tobool15
  br i1 %or.cond, label %if.then16, label %if.end52

if.then14:                                        ; preds = %if.end7
  %.old = load %struct.frame_store** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 10), align 8, !tbaa !0
  %tobool15.old = icmp eq %struct.frame_store* %.old, null
  br i1 %tobool15.old, label %if.end52, label %if.then16

if.then16:                                        ; preds = %if.then14, %lor.lhs.false
  %137 = phi %struct.frame_store* [ %.old, %if.then14 ], [ %136, %lor.lhs.false ]
  %frame_num = getelementptr inbounds %struct.frame_store* %137, i64 0, i32 5
  %138 = load i32* %frame_num, align 4, !tbaa !3
  %pic_num = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 11
  %139 = load i32* %pic_num, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %138, %139
  br i1 %cmp17, label %if.then19, label %if.end52

if.then19:                                        ; preds = %if.then16
  br i1 %cmp9, label %land.lhs.true23, label %lor.lhs.false26

land.lhs.true23:                                  ; preds = %if.then19
  %is_used = getelementptr inbounds %struct.frame_store* %137, i64 0, i32 0
  %140 = load i32* %is_used, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %140, 2
  br i1 %cmp24, label %if.then34, label %if.end52

lor.lhs.false26:                                  ; preds = %if.then19
  %cmp28 = icmp eq i32 %135, 2
  br i1 %cmp28, label %land.lhs.true30, label %if.end52

land.lhs.true30:                                  ; preds = %lor.lhs.false26
  %is_used31 = getelementptr inbounds %struct.frame_store* %137, i64 0, i32 0
  %141 = load i32* %is_used31, align 4, !tbaa !3
  %cmp32 = icmp eq i32 %141, 1
  br i1 %cmp32, label %if.then34, label %if.end52

if.then34:                                        ; preds = %land.lhs.true30, %land.lhs.true23
  %142 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool36 = icmp eq i32 %142, 0
  %is_orig_reference44.phi.trans.insert = getelementptr inbounds %struct.frame_store* %137, i64 0, i32 3
  %.pre213 = load i32* %is_orig_reference44.phi.trans.insert, align 4, !tbaa !3
  %phitmp = icmp eq i32 %.pre213, 0
  br i1 %tobool36, label %land.lhs.true43, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.then34
  br i1 %phitmp, label %if.end52, label %if.then47

land.lhs.true43:                                  ; preds = %if.then34
  br i1 %phitmp, label %if.then47, label %if.end52

if.then47:                                        ; preds = %land.lhs.true37, %land.lhs.true43
  call fastcc void @insert_picture_in_dpb(%struct.frame_store* %137, %struct.storable_picture* %p) #7
  call void @update_ref_list() #7
  call void @update_ltref_list() #7
  store %struct.frame_store* null, %struct.frame_store** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 10), align 8, !tbaa !0
  br label %return

if.end52:                                         ; preds = %land.lhs.true23, %land.lhs.true43, %land.lhs.true37, %land.lhs.true30, %lor.lhs.false26, %if.then16, %if.then14, %lor.lhs.false
  %143 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentPicture53 = getelementptr inbounds %struct.ImageParameters* %143, i64 0, i32 49
  %144 = load %struct.Picture** %currentPicture53, align 8, !tbaa !0
  %idr_flag54 = getelementptr inbounds %struct.Picture* %144, i64 0, i32 1
  %145 = load i32* %idr_flag54, align 4, !tbaa !3
  %tobool55 = icmp eq i32 %145, 0
  br i1 %tobool55, label %land.lhs.true56, label %if.end63

land.lhs.true56:                                  ; preds = %if.end52
  %146 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool58 = icmp eq i32 %146, 0
  br i1 %tobool58, label %if.end63, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %adaptive_ref_pic_buffering_flag60 = getelementptr inbounds %struct.ImageParameters* %143, i64 0, i32 114
  %147 = load i32* %adaptive_ref_pic_buffering_flag60, align 4, !tbaa !3
  %tobool61 = icmp eq i32 %147, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %land.lhs.true59
  %148 = load i64* bitcast (i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5) to i64*), align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %num_ref_frames.i = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %150, i64 0, i32 21
  %151 = load i32* %num_ref_frames.i, align 4, !tbaa !3
  %152 = lshr i64 %148, 32
  %153 = trunc i64 %152 to i32
  %sub.i = sub i32 %151, %153
  %cmp.i131 = icmp eq i32 %149, %sub.i
  br i1 %cmp.i131, label %for.cond.preheader.i132, label %sliding_window_memory_management.exit

for.cond.preheader.i132:                          ; preds = %if.then62
  %154 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp114.i = icmp eq i32 %154, 0
  br i1 %cmp114.i, label %sliding_window_memory_management.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i132
  %155 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  br label %for.body.i136

for.body.i136:                                    ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i133 = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i138, %for.inc.i ]
  %arrayidx.i134 = getelementptr inbounds %struct.frame_store** %155, i64 %indvars.iv.i133
  %156 = load %struct.frame_store** %arrayidx.i134, align 8, !tbaa !0
  %is_reference.i = getelementptr inbounds %struct.frame_store* %156, i64 0, i32 1
  %157 = load i32* %is_reference.i, align 4, !tbaa !3
  %tobool.i135 = icmp eq i32 %157, 0
  br i1 %tobool.i135, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i136
  %is_long_term.i137 = getelementptr inbounds %struct.frame_store* %156, i64 0, i32 2
  %158 = load i32* %is_long_term.i137, align 4, !tbaa !3
  %tobool4.i = icmp eq i32 %158, 0
  br i1 %tobool4.i, label %if.then5.i, label %for.inc.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call fastcc void @unmark_for_reference(%struct.frame_store* %156) #6
  call void @update_ref_list() #6
  br label %sliding_window_memory_management.exit

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i136
  %indvars.iv.next.i138 = add i64 %indvars.iv.i133, 1
  %159 = trunc i64 %indvars.iv.next.i138 to i32
  %cmp1.i = icmp ult i32 %159, %154
  br i1 %cmp1.i, label %for.body.i136, label %sliding_window_memory_management.exit

sliding_window_memory_management.exit:            ; preds = %for.inc.i, %if.then62, %for.cond.preheader.i132, %if.then5.i
  %is_long_term9.i = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 14
  store i32 0, i32* %is_long_term9.i, align 4, !tbaa !3
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true59, %land.lhs.true56, %if.end52, %sliding_window_memory_management.exit
  %160 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %161 = load i64* bitcast (i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3) to i64*), align 8
  %162 = trunc i64 %161 to i32
  %cmp64 = icmp eq i32 %160, %162
  %163 = lshr i64 %161, 32
  %164 = trunc i64 %163 to i32
  br i1 %cmp64, label %if.then66, label %while.cond.preheader

if.then66:                                        ; preds = %if.end63
  %call = call fastcc i32 @remove_unused_frame_from_dpb() #7
  %.pre = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %.pre206 = load i64* bitcast (i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3) to i64*), align 8
  %165 = trunc i64 %.pre206 to i32
  %166 = lshr i64 %.pre206, 32
  %167 = trunc i64 %166 to i32
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end63, %if.then66
  %.pre208211 = phi i32 [ %.pre, %if.then66 ], [ %160, %if.end63 ]
  %168 = phi i32 [ %167, %if.then66 ], [ %164, %if.end63 ]
  %169 = phi i32 [ %165, %if.then66 ], [ %162, %if.end63 ]
  %170 = phi i32 [ %.pre, %if.then66 ], [ %164, %if.end63 ]
  %cmp68144 = icmp eq i32 %170, %169
  %171 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool71145 = icmp ne i32 %171, 0
  br i1 %cmp68144, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %poc76 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end81
  %tobool71146 = phi i1 [ %tobool71145, %while.body.lr.ph ], [ %tobool71, %if.end81 ]
  br i1 %tobool71146, label %if.end81, label %if.then72

if.then72:                                        ; preds = %while.body
  call fastcc void @get_smallest_poc(i32* %poc, i32* %pos) #7
  %172 = load i32* %pos, align 4, !tbaa !3
  %cmp73 = icmp eq i32 %172, -1
  br i1 %cmp73, label %if.then79, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.then72
  %173 = load i32* %poc76, align 4, !tbaa !3
  %174 = load i32* %poc, align 4, !tbaa !3
  %cmp77 = icmp slt i32 %173, %174
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %lor.lhs.false75, %if.then72
  %175 = load i32* @p_dec, align 4, !tbaa !3
  call void @direct_output(%struct.storable_picture* %p, i32 %175) #6
  br label %return

if.end81:                                         ; preds = %lor.lhs.false75, %while.body
  call fastcc void @output_one_frame_from_dpb() #7
  %176 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %177 = load i64* bitcast (i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3) to i64*), align 8
  %178 = trunc i64 %177 to i32
  %cmp68 = icmp eq i32 %176, %178
  %179 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool71 = icmp ne i32 %179, 0
  br i1 %cmp68, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %if.end81
  %180 = lshr i64 %177, 32
  %181 = trunc i64 %180 to i32
  br i1 %tobool71, label %land.lhs.true84, label %if.end95

while.end:                                        ; preds = %while.cond.preheader
  br i1 %tobool71145, label %land.lhs.true84, label %if.end95

land.lhs.true84:                                  ; preds = %while.cond.while.end_crit_edge, %while.end
  %182 = phi i32 [ %181, %while.cond.while.end_crit_edge ], [ %168, %while.end ]
  %.pre208210215 = phi i32 [ %176, %while.cond.while.end_crit_edge ], [ %.pre208211, %while.end ]
  %is_long_term = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 14
  %183 = load i32* %is_long_term, align 4, !tbaa !3
  %tobool85 = icmp eq i32 %183, 0
  br i1 %tobool85, label %for.cond.preheader, label %if.end95

for.cond.preheader:                               ; preds = %land.lhs.true84
  %184 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp87141 = icmp eq i32 %184, 0
  br i1 %cmp87141, label %if.end95, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %frame_num90 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %185 = phi i32 [ %184, %for.body.lr.ph ], [ %190, %for.inc ]
  %i.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %idxprom = zext i32 %i.0142 to i64
  %186 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.frame_store** %186, i64 %idxprom
  %187 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %frame_num89 = getelementptr inbounds %struct.frame_store* %187, i64 0, i32 5
  %188 = load i32* %frame_num89, align 4, !tbaa !3
  %189 = load i32* %frame_num90, align 4, !tbaa !3
  %cmp91 = icmp eq i32 %188, %189
  br i1 %cmp91, label %if.then93, label %for.inc

if.then93:                                        ; preds = %for.body
  call void @error(i8* getelementptr inbounds ([59 x i8]* @.str13, i64 0, i64 0), i32 500) #6
  %.pre207 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then93
  %190 = phi i32 [ %185, %for.body ], [ %.pre207, %if.then93 ]
  %inc = add i32 %i.0142, 1
  %cmp87 = icmp ult i32 %inc, %190
  br i1 %cmp87, label %for.body, label %for.cond.if.end95.loopexit_crit_edge

for.cond.if.end95.loopexit_crit_edge:             ; preds = %for.inc
  %.pre208.pre = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  br label %if.end95

if.end95:                                         ; preds = %for.cond.if.end95.loopexit_crit_edge, %for.cond.preheader, %land.lhs.true84, %while.end, %while.cond.while.end_crit_edge
  %191 = phi i32 [ %181, %while.cond.while.end_crit_edge ], [ %168, %while.end ], [ %182, %land.lhs.true84 ], [ %.pre208210215, %for.cond.preheader ], [ %.pre208.pre, %for.cond.if.end95.loopexit_crit_edge ]
  %idxprom96 = zext i32 %191 to i64
  %192 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx97 = getelementptr inbounds %struct.frame_store** %192, i64 %idxprom96
  %193 = load %struct.frame_store** %arrayidx97, align 8, !tbaa !0
  call fastcc void @insert_picture_in_dpb(%struct.frame_store* %193, %struct.storable_picture* %p) #7
  %194 = load i32* %structure8, align 4, !tbaa !1
  %cmp99 = icmp eq i32 %194, 0
  %.pre212 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  br i1 %cmp99, label %if.end105, label %if.then101

if.then101:                                       ; preds = %if.end95
  %idxprom102 = zext i32 %.pre212 to i64
  %195 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds %struct.frame_store** %195, i64 %idxprom102
  %196 = load %struct.frame_store** %arrayidx103, align 8, !tbaa !0
  br label %if.end105

if.end105:                                        ; preds = %if.end95, %if.then101
  %storemerge = phi %struct.frame_store* [ %196, %if.then101 ], [ null, %if.end95 ]
  store %struct.frame_store* %storemerge, %struct.frame_store** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 10), align 8, !tbaa !0
  %inc106 = add i32 %.pre212, 1
  store i32 %inc106, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  call void @update_ref_list() #7
  call void @update_ltref_list() #7
  br label %return

return:                                           ; preds = %if.end105, %if.then79, %if.then47
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @insert_picture_in_dpb(%struct.frame_store* %fs, %struct.storable_picture* %p) #1 {
entry:
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 15
  %0 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @UnifiedOneForthPix(%struct.storable_picture* %p) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %structure = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 0
  %1 = load i32* %structure, align 4, !tbaa !1
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end
  %frame = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  store %struct.storable_picture* %p, %struct.storable_picture** %frame, align 8, !tbaa !0
  %is_used = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 0
  store i32 3, i32* %is_used, align 4, !tbaa !3
  %2 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %2, 0
  br i1 %tobool2, label %if.end8, label %if.then3

if.then3:                                         ; preds = %sw.bb
  %is_reference = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 1
  store i32 3, i32* %is_reference, align 4, !tbaa !3
  %is_orig_reference = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 3
  store i32 3, i32* %is_orig_reference, align 4, !tbaa !3
  %is_long_term = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 14
  %3 = load i32* %is_long_term, align 4, !tbaa !3
  %tobool4 = icmp eq i32 %3, 0
  br i1 %tobool4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.then3
  %is_long_term6 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 2
  store i32 3, i32* %is_long_term6, align 4, !tbaa !3
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %sw.bb, %if.then5
  tail call void @dpb_split_field(%struct.frame_store* %fs) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %top_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  store %struct.storable_picture* %p, %struct.storable_picture** %top_field, align 8, !tbaa !0
  %is_used10 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 0
  %4 = load i32* %is_used10, align 4, !tbaa !3
  %or = or i32 %4, 1
  store i32 %or, i32* %is_used10, align 4, !tbaa !3
  %5 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool12 = icmp eq i32 %5, 0
  br i1 %tobool12, label %if.end25, label %if.then13

if.then13:                                        ; preds = %sw.bb9
  %is_reference14 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 1
  %6 = load i32* %is_reference14, align 4, !tbaa !3
  %or15 = or i32 %6, 1
  store i32 %or15, i32* %is_reference14, align 4, !tbaa !3
  %is_orig_reference16 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 3
  %7 = load i32* %is_orig_reference16, align 4, !tbaa !3
  %or17 = or i32 %7, 1
  store i32 %or17, i32* %is_orig_reference16, align 4, !tbaa !3
  %is_long_term18 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 14
  %8 = load i32* %is_long_term18, align 4, !tbaa !3
  %tobool19 = icmp eq i32 %8, 0
  br i1 %tobool19, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.then13
  %is_long_term21 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 2
  %9 = load i32* %is_long_term21, align 4, !tbaa !3
  %or22 = or i32 %9, 1
  store i32 %or22, i32* %is_long_term21, align 4, !tbaa !3
  %long_term_frame_idx = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 13
  %10 = load i32* %long_term_frame_idx, align 4, !tbaa !3
  %long_term_frame_idx23 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 7
  store i32 %10, i32* %long_term_frame_idx23, align 4, !tbaa !3
  br label %if.end25

if.end25:                                         ; preds = %if.then13, %if.then20, %sw.bb9
  %cmp = icmp eq i32 %or, 3
  br i1 %cmp, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  tail call void @dpb_combine_field(%struct.frame_store* %fs) #7
  br label %sw.epilog

if.else:                                          ; preds = %if.end25
  %poc = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 1
  %11 = load i32* %poc, align 4, !tbaa !3
  %poc28 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 9
  store i32 %11, i32* %poc28, align 4, !tbaa !3
  tail call void @gen_field_ref_ids(%struct.storable_picture* %p) #7
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  %bottom_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  store %struct.storable_picture* %p, %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %is_used31 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 0
  %12 = load i32* %is_used31, align 4, !tbaa !3
  %or32 = or i32 %12, 2
  store i32 %or32, i32* %is_used31, align 4, !tbaa !3
  %13 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool34 = icmp eq i32 %13, 0
  br i1 %tobool34, label %if.end48, label %if.then35

if.then35:                                        ; preds = %sw.bb30
  %is_reference36 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 1
  %14 = load i32* %is_reference36, align 4, !tbaa !3
  %or37 = or i32 %14, 2
  store i32 %or37, i32* %is_reference36, align 4, !tbaa !3
  %is_orig_reference38 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 3
  %15 = load i32* %is_orig_reference38, align 4, !tbaa !3
  %or39 = or i32 %15, 2
  store i32 %or39, i32* %is_orig_reference38, align 4, !tbaa !3
  %is_long_term40 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 14
  %16 = load i32* %is_long_term40, align 4, !tbaa !3
  %tobool41 = icmp eq i32 %16, 0
  br i1 %tobool41, label %if.end48, label %if.then42

if.then42:                                        ; preds = %if.then35
  %is_long_term43 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 2
  %17 = load i32* %is_long_term43, align 4, !tbaa !3
  %or44 = or i32 %17, 2
  store i32 %or44, i32* %is_long_term43, align 4, !tbaa !3
  %long_term_frame_idx45 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 13
  %18 = load i32* %long_term_frame_idx45, align 4, !tbaa !3
  %long_term_frame_idx46 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 7
  store i32 %18, i32* %long_term_frame_idx46, align 4, !tbaa !3
  br label %if.end48

if.end48:                                         ; preds = %if.then35, %if.then42, %sw.bb30
  %cmp50 = icmp eq i32 %or32, 3
  br i1 %cmp50, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.end48
  tail call void @dpb_combine_field(%struct.frame_store* %fs) #7
  br label %sw.epilog

if.else52:                                        ; preds = %if.end48
  %poc53 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 1
  %19 = load i32* %poc53, align 4, !tbaa !3
  %poc54 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 9
  store i32 %19, i32* %poc54, align 4, !tbaa !3
  tail call void @gen_field_ref_ids(%struct.storable_picture* %p) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then51, %if.else52, %if.then27, %if.else, %if.end, %if.end8
  %pic_num = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 11
  %20 = load i32* %pic_num, align 4, !tbaa !3
  %frame_num = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 5
  store i32 %20, i32* %frame_num, align 4, !tbaa !3
  %is_output = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 16
  %21 = load i32* %is_output, align 4, !tbaa !3
  %is_output56 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 8
  store i32 %21, i32* %is_output56, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @get_smallest_poc(i32* nocapture %poc, i32* nocapture %pos) #1 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([42 x i8]* @.str26, i64 0, i64 0), i32 150) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 -1, i32* %pos, align 4, !tbaa !3
  store i32 2147483647, i32* %poc, align 4, !tbaa !3
  %1 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp119 = icmp eq i32 %1, 0
  br i1 %cmp119, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %2 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %3 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %.pre21, %for.inc.for.body_crit_edge ]
  %4 = phi i32 [ %1, %for.body.lr.ph ], [ %8, %for.inc.for.body_crit_edge ]
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %idxprom = zext i32 %i.020 to i64
  %arrayidx = getelementptr inbounds %struct.frame_store** %2, i64 %idxprom
  %5 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %poc2 = getelementptr inbounds %struct.frame_store* %5, i64 0, i32 9
  %6 = load i32* %poc2, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %3, %6
  br i1 %cmp3, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %is_output = getelementptr inbounds %struct.frame_store* %5, i64 0, i32 8
  %7 = load i32* %is_output, align 4, !tbaa !3
  %tobool = icmp eq i32 %7, 0
  br i1 %tobool, label %if.then6, label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  store i32 %6, i32* %poc, align 4, !tbaa !3
  store i32 %i.020, i32* %pos, align 4, !tbaa !3
  %.pre = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then6
  %8 = phi i32 [ %4, %land.lhs.true ], [ %4, %for.body ], [ %.pre, %if.then6 ]
  %inc = add i32 %i.020, 1
  %cmp1 = icmp ult i32 %inc, %8
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre21 = load i32* %poc, align 4, !tbaa !3
  br label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  ret void
}

; Function Attrs: optsize
declare void @direct_output(%struct.storable_picture*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @replace_top_pic_with_frame(%struct.storable_picture* %p) #1 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 113
  %1 = load i32* %nal_reference_idc, align 4, !tbaa !3
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 15
  store i32 %conv, i32* %used_for_reference, align 4, !tbaa !3
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  tail call void @UnifiedOneForthPix(%struct.storable_picture* %p) #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %2 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp244 = icmp eq i32 %2, 0
  br i1 %cmp244, label %if.then16, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %4 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %frame_num4 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 105
  %5 = load i32* %frame_num4, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.frame_store** %3, i64 %indvars.iv
  %6 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %frame_num = getelementptr inbounds %struct.frame_store* %6, i64 0, i32 5
  %7 = load i32* %frame_num, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %7, %5
  br i1 %cmp5, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %is_used = getelementptr inbounds %struct.frame_store* %6, i64 0, i32 0
  %8 = load i32* %is_used, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %8, 1
  br i1 %cmp9, label %if.end17, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp ult i32 %9, %2
  br i1 %cmp2, label %for.body, label %if.then16

if.then16:                                        ; preds = %for.inc, %for.cond.preheader
  tail call void @error(i8* getelementptr inbounds ([80 x i8]* @.str14, i64 0, i64 0), i32 500) #6
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.then16
  %fs.043 = phi %struct.frame_store* [ null, %if.then16 ], [ %6, %land.lhs.true ]
  %top_field = getelementptr inbounds %struct.frame_store* %fs.043, i64 0, i32 11
  %10 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %10) #7
  store %struct.storable_picture* null, %struct.storable_picture** %top_field, align 8, !tbaa !0
  %frame = getelementptr inbounds %struct.frame_store* %fs.043, i64 0, i32 10
  store %struct.storable_picture* %p, %struct.storable_picture** %frame, align 8, !tbaa !0
  %is_used19 = getelementptr inbounds %struct.frame_store* %fs.043, i64 0, i32 0
  store i32 3, i32* %is_used19, align 4, !tbaa !3
  %11 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool21 = icmp eq i32 %11, 0
  br i1 %tobool21, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.end17
  %is_reference = getelementptr inbounds %struct.frame_store* %fs.043, i64 0, i32 1
  store i32 3, i32* %is_reference, align 4, !tbaa !3
  %is_long_term = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 14
  %12 = load i32* %is_long_term, align 4, !tbaa !3
  %tobool23 = icmp eq i32 %12, 0
  br i1 %tobool23, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.then22
  %is_long_term25 = getelementptr inbounds %struct.frame_store* %fs.043, i64 0, i32 2
  store i32 3, i32* %is_long_term25, align 4, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end17, %if.then24
  tail call void @dpb_split_field(%struct.frame_store* %fs.043) #7
  tail call void @update_ref_list() #7
  tail call void @update_ltref_list() #7
  ret void
}

; Function Attrs: optsize
declare void @UnifiedOneForthPix(%struct.storable_picture*) #2

; Function Attrs: nounwind optsize uwtable
define void @dpb_split_field(%struct.frame_store* nocapture %fs) #1 {
entry:
  %frame = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  %0 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %poc = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 1
  %1 = load i32* %poc, align 4, !tbaa !3
  %poc1 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 9
  store i32 %1, i32* %poc1, align 4, !tbaa !3
  %frame_mbs_only_flag = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 42
  %2 = load i32* %frame_mbs_only_flag, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %size_x = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 18
  %3 = load i32* %size_x, align 4, !tbaa !3
  %size_y = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 19
  %4 = load i32* %size_y, align 4, !tbaa !3
  %div = sdiv i32 %4, 2
  %size_x_cr = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 20
  %5 = load i32* %size_x_cr, align 4, !tbaa !3
  %size_y_cr = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 21
  %6 = load i32* %size_y_cr, align 4, !tbaa !3
  %div7 = sdiv i32 %6, 2
  %call = tail call %struct.storable_picture* @alloc_storable_picture(i32 1, i32 %3, i32 %div, i32 %5, i32 %div7) #7
  %top_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  store %struct.storable_picture* %call, %struct.storable_picture** %top_field, align 8, !tbaa !0
  %7 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %size_x9 = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 18
  %8 = load i32* %size_x9, align 4, !tbaa !3
  %size_y11 = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 19
  %9 = load i32* %size_y11, align 4, !tbaa !3
  %div12 = sdiv i32 %9, 2
  %size_x_cr14 = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 20
  %10 = load i32* %size_x_cr14, align 4, !tbaa !3
  %size_y_cr16 = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 21
  %11 = load i32* %size_y_cr16, align 4, !tbaa !3
  %div17 = sdiv i32 %11, 2
  %call18 = tail call %struct.storable_picture* @alloc_storable_picture(i32 2, i32 %8, i32 %div12, i32 %10, i32 %div17) #7
  %bottom_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  store %struct.storable_picture* %call18, %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %12 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %size_y202048 = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 19
  %13 = load i32* %size_y202048, align 4, !tbaa !3
  %cmp2050 = icmp sgt i32 %13, 1
  br i1 %cmp2050, label %for.body, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.body, %if.then
  %14 = phi %struct.storable_picture* [ %12, %if.then ], [ %26, %for.body ]
  %size_y_cr322044 = getelementptr inbounds %struct.storable_picture* %14, i64 0, i32 21
  %15 = load i32* %size_y_cr322044, align 4, !tbaa !3
  %cmp342046 = icmp sgt i32 %15, 1
  br i1 %cmp342046, label %for.body36, label %for.cond69.preheader

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv2081 = phi i64 [ %indvars.iv.next2082, %for.body ], [ 0, %if.then ]
  %16 = phi %struct.storable_picture* [ %26, %for.body ], [ %12, %if.then ]
  %17 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 25
  %18 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16** %18, i64 %indvars.iv2081
  %19 = load i16** %arrayidx, align 8, !tbaa !0
  %20 = bitcast i16* %19 to i8*
  %21 = trunc i64 %indvars.iv2081 to i32
  %mul = shl nsw i32 %21, 1
  %idxprom23 = sext i32 %mul to i64
  %imgY25 = getelementptr inbounds %struct.storable_picture* %16, i64 0, i32 25
  %22 = load i16*** %imgY25, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i16** %22, i64 %idxprom23
  %23 = load i16** %arrayidx26, align 8, !tbaa !0
  %24 = bitcast i16* %23 to i8*
  %size_x28 = getelementptr inbounds %struct.storable_picture* %16, i64 0, i32 18
  %25 = load i32* %size_x28, align 4, !tbaa !3
  %conv = sext i32 %25 to i64
  %mul29 = shl nsw i64 %conv, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %24, i64 %mul29, i32 2, i1 false)
  %indvars.iv.next2082 = add i64 %indvars.iv2081, 1
  %26 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %size_y20 = getelementptr inbounds %struct.storable_picture* %26, i64 0, i32 19
  %27 = load i32* %size_y20, align 4, !tbaa !3
  %div21 = sdiv i32 %27, 2
  %28 = trunc i64 %indvars.iv.next2082 to i32
  %cmp = icmp slt i32 %28, %div21
  br i1 %cmp, label %for.body, label %for.cond30.preheader

for.cond69.preheader:                             ; preds = %for.body36, %for.cond30.preheader
  %29 = phi %struct.storable_picture* [ %14, %for.cond30.preheader ], [ %54, %for.body36 ]
  %size_y712040 = getelementptr inbounds %struct.storable_picture* %29, i64 0, i32 19
  %30 = load i32* %size_y712040, align 4, !tbaa !3
  %cmp732042 = icmp sgt i32 %30, 1
  br i1 %cmp732042, label %for.body75, label %for.cond92.preheader

for.body36:                                       ; preds = %for.cond30.preheader, %for.body36
  %indvars.iv2079 = phi i64 [ %indvars.iv.next2080, %for.body36 ], [ 0, %for.cond30.preheader ]
  %31 = phi %struct.storable_picture* [ %54, %for.body36 ], [ %14, %for.cond30.preheader ]
  %32 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %32, i64 0, i32 30
  %33 = load i16**** %imgUV, align 8, !tbaa !0
  %34 = load i16*** %33, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i16** %34, i64 %indvars.iv2079
  %35 = load i16** %arrayidx40, align 8, !tbaa !0
  %36 = bitcast i16* %35 to i8*
  %37 = trunc i64 %indvars.iv2079 to i32
  %mul41 = shl nsw i32 %37, 1
  %idxprom42 = sext i32 %mul41 to i64
  %imgUV44 = getelementptr inbounds %struct.storable_picture* %31, i64 0, i32 30
  %38 = load i16**** %imgUV44, align 8, !tbaa !0
  %39 = load i16*** %38, align 8, !tbaa !0
  %arrayidx46 = getelementptr inbounds i16** %39, i64 %idxprom42
  %40 = load i16** %arrayidx46, align 8, !tbaa !0
  %41 = bitcast i16* %40 to i8*
  %size_x_cr48 = getelementptr inbounds %struct.storable_picture* %31, i64 0, i32 20
  %42 = load i32* %size_x_cr48, align 4, !tbaa !3
  %conv49 = sext i32 %42 to i64
  %mul50 = shl nsw i64 %conv49, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %41, i64 %mul50, i32 2, i1 false)
  %43 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %imgUV53 = getelementptr inbounds %struct.storable_picture* %43, i64 0, i32 30
  %44 = load i16**** %imgUV53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i16*** %44, i64 1
  %45 = load i16*** %arrayidx54, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i16** %45, i64 %indvars.iv2079
  %46 = load i16** %arrayidx55, align 8, !tbaa !0
  %47 = bitcast i16* %46 to i8*
  %48 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %imgUV59 = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 30
  %49 = load i16**** %imgUV59, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds i16*** %49, i64 1
  %50 = load i16*** %arrayidx60, align 8, !tbaa !0
  %arrayidx61 = getelementptr inbounds i16** %50, i64 %idxprom42
  %51 = load i16** %arrayidx61, align 8, !tbaa !0
  %52 = bitcast i16* %51 to i8*
  %size_x_cr63 = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 20
  %53 = load i32* %size_x_cr63, align 4, !tbaa !3
  %conv64 = sext i32 %53 to i64
  %mul65 = shl nsw i64 %conv64, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %52, i64 %mul65, i32 2, i1 false)
  %indvars.iv.next2080 = add i64 %indvars.iv2079, 1
  %54 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %size_y_cr32 = getelementptr inbounds %struct.storable_picture* %54, i64 0, i32 21
  %55 = load i32* %size_y_cr32, align 4, !tbaa !3
  %div33 = sdiv i32 %55, 2
  %56 = trunc i64 %indvars.iv.next2080 to i32
  %cmp34 = icmp slt i32 %56, %div33
  br i1 %cmp34, label %for.body36, label %for.cond69.preheader

for.cond92.preheader:                             ; preds = %for.body75, %for.cond69.preheader
  %57 = phi %struct.storable_picture* [ %29, %for.cond69.preheader ], [ %69, %for.body75 ]
  %size_y_cr942036 = getelementptr inbounds %struct.storable_picture* %57, i64 0, i32 21
  %58 = load i32* %size_y_cr942036, align 4, !tbaa !3
  %cmp962038 = icmp sgt i32 %58, 1
  br i1 %cmp962038, label %for.body98, label %for.end133

for.body75:                                       ; preds = %for.body75, %for.cond69.preheader
  %indvars.iv2077 = phi i64 [ 0, %for.cond69.preheader ], [ %indvars.iv.next2078, %for.body75 ]
  %59 = phi %struct.storable_picture* [ %29, %for.cond69.preheader ], [ %69, %for.body75 ]
  %60 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %imgY78 = getelementptr inbounds %struct.storable_picture* %60, i64 0, i32 25
  %61 = load i16*** %imgY78, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds i16** %61, i64 %indvars.iv2077
  %62 = load i16** %arrayidx79, align 8, !tbaa !0
  %63 = bitcast i16* %62 to i8*
  %64 = trunc i64 %indvars.iv2077 to i32
  %mul80 = shl nsw i32 %64, 1
  %add1982 = or i32 %mul80, 1
  %idxprom81 = sext i32 %add1982 to i64
  %imgY83 = getelementptr inbounds %struct.storable_picture* %59, i64 0, i32 25
  %65 = load i16*** %imgY83, align 8, !tbaa !0
  %arrayidx84 = getelementptr inbounds i16** %65, i64 %idxprom81
  %66 = load i16** %arrayidx84, align 8, !tbaa !0
  %67 = bitcast i16* %66 to i8*
  %size_x86 = getelementptr inbounds %struct.storable_picture* %59, i64 0, i32 18
  %68 = load i32* %size_x86, align 4, !tbaa !3
  %conv87 = sext i32 %68 to i64
  %mul88 = shl nsw i64 %conv87, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %67, i64 %mul88, i32 2, i1 false)
  %indvars.iv.next2078 = add i64 %indvars.iv2077, 1
  %69 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %size_y71 = getelementptr inbounds %struct.storable_picture* %69, i64 0, i32 19
  %70 = load i32* %size_y71, align 4, !tbaa !3
  %div72 = sdiv i32 %70, 2
  %71 = trunc i64 %indvars.iv.next2078 to i32
  %cmp73 = icmp slt i32 %71, %div72
  br i1 %cmp73, label %for.body75, label %for.cond92.preheader

for.body98:                                       ; preds = %for.body98, %for.cond92.preheader
  %indvars.iv2075 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next2076, %for.body98 ]
  %72 = phi %struct.storable_picture* [ %57, %for.cond92.preheader ], [ %95, %for.body98 ]
  %73 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %imgUV101 = getelementptr inbounds %struct.storable_picture* %73, i64 0, i32 30
  %74 = load i16**** %imgUV101, align 8, !tbaa !0
  %75 = load i16*** %74, align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds i16** %75, i64 %indvars.iv2075
  %76 = load i16** %arrayidx103, align 8, !tbaa !0
  %77 = bitcast i16* %76 to i8*
  %78 = trunc i64 %indvars.iv2075 to i32
  %mul104 = shl nsw i32 %78, 1
  %add1051981 = or i32 %mul104, 1
  %idxprom106 = sext i32 %add1051981 to i64
  %imgUV108 = getelementptr inbounds %struct.storable_picture* %72, i64 0, i32 30
  %79 = load i16**** %imgUV108, align 8, !tbaa !0
  %80 = load i16*** %79, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds i16** %80, i64 %idxprom106
  %81 = load i16** %arrayidx110, align 8, !tbaa !0
  %82 = bitcast i16* %81 to i8*
  %size_x_cr112 = getelementptr inbounds %struct.storable_picture* %72, i64 0, i32 20
  %83 = load i32* %size_x_cr112, align 4, !tbaa !3
  %conv113 = sext i32 %83 to i64
  %mul114 = shl nsw i64 %conv113, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %82, i64 %mul114, i32 2, i1 false)
  %84 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %imgUV117 = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 30
  %85 = load i16**** %imgUV117, align 8, !tbaa !0
  %arrayidx118 = getelementptr inbounds i16*** %85, i64 1
  %86 = load i16*** %arrayidx118, align 8, !tbaa !0
  %arrayidx119 = getelementptr inbounds i16** %86, i64 %indvars.iv2075
  %87 = load i16** %arrayidx119, align 8, !tbaa !0
  %88 = bitcast i16* %87 to i8*
  %89 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %imgUV124 = getelementptr inbounds %struct.storable_picture* %89, i64 0, i32 30
  %90 = load i16**** %imgUV124, align 8, !tbaa !0
  %arrayidx125 = getelementptr inbounds i16*** %90, i64 1
  %91 = load i16*** %arrayidx125, align 8, !tbaa !0
  %arrayidx126 = getelementptr inbounds i16** %91, i64 %idxprom106
  %92 = load i16** %arrayidx126, align 8, !tbaa !0
  %93 = bitcast i16* %92 to i8*
  %size_x_cr128 = getelementptr inbounds %struct.storable_picture* %89, i64 0, i32 20
  %94 = load i32* %size_x_cr128, align 4, !tbaa !3
  %conv129 = sext i32 %94 to i64
  %mul130 = shl nsw i64 %conv129, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %93, i64 %mul130, i32 2, i1 false)
  %indvars.iv.next2076 = add i64 %indvars.iv2075, 1
  %95 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %size_y_cr94 = getelementptr inbounds %struct.storable_picture* %95, i64 0, i32 21
  %96 = load i32* %size_y_cr94, align 4, !tbaa !3
  %div95 = sdiv i32 %96, 2
  %97 = trunc i64 %indvars.iv.next2076 to i32
  %cmp96 = icmp slt i32 %97, %div95
  br i1 %cmp96, label %for.body98, label %for.end133

for.end133:                                       ; preds = %for.body98, %for.cond92.preheader
  %98 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  tail call void @UnifiedOneForthPix(%struct.storable_picture* %98) #6
  %99 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  tail call void @UnifiedOneForthPix(%struct.storable_picture* %99) #6
  %100 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %top_poc = getelementptr inbounds %struct.storable_picture* %100, i64 0, i32 2
  %101 = load i32* %top_poc, align 4, !tbaa !3
  %102 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %poc138 = getelementptr inbounds %struct.storable_picture* %102, i64 0, i32 1
  store i32 %101, i32* %poc138, align 4, !tbaa !3
  %bottom_poc = getelementptr inbounds %struct.storable_picture* %100, i64 0, i32 3
  %103 = load i32* %bottom_poc, align 4, !tbaa !3
  %104 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %poc141 = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 1
  store i32 %103, i32* %poc141, align 4, !tbaa !3
  %frame_poc = getelementptr inbounds %struct.storable_picture* %100, i64 0, i32 4
  %105 = load i32* %frame_poc, align 4, !tbaa !3
  %frame_poc144 = getelementptr inbounds %struct.storable_picture* %102, i64 0, i32 4
  store i32 %105, i32* %frame_poc144, align 4, !tbaa !3
  %106 = load i32* %bottom_poc, align 4, !tbaa !3
  %bottom_poc148 = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 3
  store i32 %106, i32* %bottom_poc148, align 4, !tbaa !3
  %bottom_poc150 = getelementptr inbounds %struct.storable_picture* %102, i64 0, i32 3
  store i32 %106, i32* %bottom_poc150, align 4, !tbaa !3
  %107 = load i32* %top_poc, align 4, !tbaa !3
  %top_poc154 = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 2
  store i32 %107, i32* %top_poc154, align 4, !tbaa !3
  %top_poc156 = getelementptr inbounds %struct.storable_picture* %102, i64 0, i32 2
  store i32 %107, i32* %top_poc156, align 4, !tbaa !3
  %108 = load i32* %frame_poc, align 4, !tbaa !3
  %frame_poc160 = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 4
  store i32 %108, i32* %frame_poc160, align 4, !tbaa !3
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %100, i64 0, i32 15
  %109 = load i32* %used_for_reference, align 4, !tbaa !3
  %used_for_reference163 = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 15
  store i32 %109, i32* %used_for_reference163, align 4, !tbaa !3
  %used_for_reference165 = getelementptr inbounds %struct.storable_picture* %102, i64 0, i32 15
  store i32 %109, i32* %used_for_reference165, align 4, !tbaa !3
  %is_long_term = getelementptr inbounds %struct.storable_picture* %100, i64 0, i32 14
  %110 = load i32* %is_long_term, align 4, !tbaa !3
  %is_long_term168 = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 14
  store i32 %110, i32* %is_long_term168, align 4, !tbaa !3
  %is_long_term170 = getelementptr inbounds %struct.storable_picture* %102, i64 0, i32 14
  store i32 %110, i32* %is_long_term170, align 4, !tbaa !3
  %long_term_frame_idx = getelementptr inbounds %struct.storable_picture* %100, i64 0, i32 13
  %111 = load i32* %long_term_frame_idx, align 4, !tbaa !3
  %long_term_frame_idx173 = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 13
  store i32 %111, i32* %long_term_frame_idx173, align 4, !tbaa !3
  %long_term_frame_idx175 = getelementptr inbounds %struct.storable_picture* %102, i64 0, i32 13
  store i32 %111, i32* %long_term_frame_idx175, align 4, !tbaa !3
  %long_term_frame_idx176 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 7
  store i32 %111, i32* %long_term_frame_idx176, align 4, !tbaa !3
  %coded_frame = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 23
  store i32 1, i32* %coded_frame, align 4, !tbaa !3
  %coded_frame179 = getelementptr inbounds %struct.storable_picture* %102, i64 0, i32 23
  store i32 1, i32* %coded_frame179, align 4, !tbaa !3
  %MbaffFrameFlag = getelementptr inbounds %struct.storable_picture* %100, i64 0, i32 24
  %112 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %MbaffFrameFlag182 = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 24
  store i32 %112, i32* %MbaffFrameFlag182, align 4, !tbaa !3
  %MbaffFrameFlag184 = getelementptr inbounds %struct.storable_picture* %102, i64 0, i32 24
  store i32 %112, i32* %MbaffFrameFlag184, align 4, !tbaa !3
  %top_field187 = getelementptr inbounds %struct.storable_picture* %100, i64 0, i32 38
  store %struct.storable_picture* %102, %struct.storable_picture** %top_field187, align 8, !tbaa !0
  %113 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %114 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %bottom_field190 = getelementptr inbounds %struct.storable_picture* %114, i64 0, i32 39
  store %struct.storable_picture* %113, %struct.storable_picture** %bottom_field190, align 8, !tbaa !0
  %115 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %116 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %bottom_field193 = getelementptr inbounds %struct.storable_picture* %116, i64 0, i32 39
  store %struct.storable_picture* %115, %struct.storable_picture** %bottom_field193, align 8, !tbaa !0
  %117 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %118 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %frame196 = getelementptr inbounds %struct.storable_picture* %118, i64 0, i32 40
  store %struct.storable_picture* %117, %struct.storable_picture** %frame196, align 8, !tbaa !0
  %119 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %120 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %top_field199 = getelementptr inbounds %struct.storable_picture* %120, i64 0, i32 38
  store %struct.storable_picture* %119, %struct.storable_picture** %top_field199, align 8, !tbaa !0
  %121 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %122 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %frame202 = getelementptr inbounds %struct.storable_picture* %122, i64 0, i32 40
  store %struct.storable_picture* %121, %struct.storable_picture** %frame202, align 8, !tbaa !0
  %123 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 41
  %124 = load i32* %chroma_format_idc, align 4, !tbaa !3
  %125 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %chroma_format_idc205 = getelementptr inbounds %struct.storable_picture* %125, i64 0, i32 41
  store i32 %124, i32* %chroma_format_idc205, align 4, !tbaa !3
  %126 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %chroma_format_idc207 = getelementptr inbounds %struct.storable_picture* %126, i64 0, i32 41
  store i32 %124, i32* %chroma_format_idc207, align 4, !tbaa !3
  %frame_mbs_only_flag209 = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 42
  %127 = load i32* %frame_mbs_only_flag209, align 4, !tbaa !3
  %tobool210 = icmp eq i32 %127, 0
  br i1 %tobool210, label %for.cond212.preheader, label %for.cond336.preheader

for.cond212.preheader:                            ; preds = %for.end133
  %128 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %cmp2132034 = icmp sgt i32 %128, 0
  br i1 %cmp2132034, label %for.body215, label %for.cond270.preheader

for.cond270.preheader:                            ; preds = %for.body215, %for.cond212.preheader
  %129 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  %cmp2712032 = icmp sgt i32 %129, 0
  br i1 %cmp2712032, label %for.body273, label %for.cond336.preheader

for.body215:                                      ; preds = %for.cond212.preheader, %for.body215
  %indvars.iv2073 = phi i64 [ %indvars.iv.next2074, %for.body215 ], [ 0, %for.cond212.preheader ]
  %130 = trunc i64 %indvars.iv2073 to i32
  %mul216 = shl nsw i32 %130, 1
  %idxprom217 = sext i32 %mul216 to i64
  %arrayidx220 = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 6, i64 3, i64 %idxprom217
  %131 = load i64* %arrayidx220, align 8, !tbaa !4
  %arrayidx226 = getelementptr inbounds %struct.storable_picture* %126, i64 0, i32 6, i64 1, i64 %idxprom217
  store i64 %131, i64* %arrayidx226, align 8, !tbaa !4
  %add2281980 = or i32 %mul216, 1
  %idxprom229 = sext i32 %add2281980 to i64
  %arrayidx233 = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 6, i64 3, i64 %idxprom229
  %132 = load i64* %arrayidx233, align 8, !tbaa !4
  %arrayidx240 = getelementptr inbounds %struct.storable_picture* %126, i64 0, i32 6, i64 1, i64 %idxprom229
  store i64 %132, i64* %arrayidx240, align 8, !tbaa !4
  %arrayidx246 = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 6, i64 5, i64 %idxprom217
  %133 = load i64* %arrayidx246, align 8, !tbaa !4
  %arrayidx252 = getelementptr inbounds %struct.storable_picture* %125, i64 0, i32 6, i64 1, i64 %idxprom217
  store i64 %133, i64* %arrayidx252, align 8, !tbaa !4
  %arrayidx259 = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 6, i64 5, i64 %idxprom229
  %134 = load i64* %arrayidx259, align 8, !tbaa !4
  %arrayidx266 = getelementptr inbounds %struct.storable_picture* %125, i64 0, i32 6, i64 1, i64 %idxprom229
  store i64 %134, i64* %arrayidx266, align 8, !tbaa !4
  %indvars.iv.next2074 = add i64 %indvars.iv2073, 1
  %135 = trunc i64 %indvars.iv.next2074 to i32
  %cmp213 = icmp slt i32 %135, %128
  br i1 %cmp213, label %for.body215, label %for.cond270.preheader

for.body273:                                      ; preds = %for.cond270.preheader, %for.body273
  %indvars.iv2071 = phi i64 [ %indvars.iv.next2072, %for.body273 ], [ 0, %for.cond270.preheader ]
  %136 = trunc i64 %indvars.iv2071 to i32
  %mul274 = shl nsw i32 %136, 1
  %idxprom275 = sext i32 %mul274 to i64
  %arrayidx279 = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 6, i64 2, i64 %idxprom275
  %137 = load i64* %arrayidx279, align 8, !tbaa !4
  %arrayidx285 = getelementptr inbounds %struct.storable_picture* %126, i64 0, i32 6, i64 0, i64 %idxprom275
  store i64 %137, i64* %arrayidx285, align 8, !tbaa !4
  %add2871979 = or i32 %mul274, 1
  %idxprom288 = sext i32 %add2871979 to i64
  %arrayidx292 = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 6, i64 2, i64 %idxprom288
  %138 = load i64* %arrayidx292, align 8, !tbaa !4
  %arrayidx299 = getelementptr inbounds %struct.storable_picture* %126, i64 0, i32 6, i64 0, i64 %idxprom288
  store i64 %138, i64* %arrayidx299, align 8, !tbaa !4
  %arrayidx305 = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 6, i64 4, i64 %idxprom275
  %139 = load i64* %arrayidx305, align 8, !tbaa !4
  %arrayidx311 = getelementptr inbounds %struct.storable_picture* %125, i64 0, i32 6, i64 0, i64 %idxprom275
  store i64 %139, i64* %arrayidx311, align 8, !tbaa !4
  %arrayidx318 = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 6, i64 4, i64 %idxprom288
  %140 = load i64* %arrayidx318, align 8, !tbaa !4
  %arrayidx325 = getelementptr inbounds %struct.storable_picture* %125, i64 0, i32 6, i64 0, i64 %idxprom288
  store i64 %140, i64* %arrayidx325, align 8, !tbaa !4
  %indvars.iv.next2072 = add i64 %indvars.iv2071, 1
  %141 = trunc i64 %indvars.iv.next2072 to i32
  %cmp271 = icmp slt i32 %141, %129
  br i1 %cmp271, label %for.body273, label %for.cond336.preheader

if.else:                                          ; preds = %entry
  %top_field329 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  %top_field332 = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 38
  %142 = bitcast %struct.storable_picture** %top_field329 to i8*
  call void @llvm.memset.p0i8.i64(i8* %142, i8 0, i64 16, i32 8, i1 false)
  store %struct.storable_picture* null, %struct.storable_picture** %top_field332, align 8, !tbaa !0
  %143 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %bottom_field334 = getelementptr inbounds %struct.storable_picture* %143, i64 0, i32 39
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field334, align 8, !tbaa !0
  %.pre = load %struct.storable_picture** %frame, align 8, !tbaa !0
  br label %for.cond336.preheader

for.cond336.preheader:                            ; preds = %for.cond270.preheader, %for.body273, %for.end133, %if.else
  %144 = phi %struct.storable_picture* [ %123, %for.end133 ], [ %.pre, %if.else ], [ %123, %for.body273 ], [ %123, %for.cond270.preheader ]
  %size_y3382028 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 19
  %145 = load i32* %size_y3382028, align 4, !tbaa !3
  %cmp3402030 = icmp sgt i32 %145, 3
  br i1 %cmp3402030, label %for.cond343.preheader.lr.ph, label %for.end525

for.cond343.preheader.lr.ph:                      ; preds = %for.cond336.preheader
  %size_x3452023.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 18
  %.pre2086 = load i32* %size_x3452023.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond343.preheader

for.cond343.preheader:                            ; preds = %for.cond343.preheader.lr.ph, %for.inc523
  %indvars.iv2069 = phi i64 [ 0, %for.cond343.preheader.lr.ph ], [ %indvars.iv.next2070, %for.inc523 ]
  %cmp3472025 = icmp sgt i32 %.pre2086, 3
  br i1 %cmp3472025, label %for.body349.lr.ph, label %for.inc523

for.body349.lr.ph:                                ; preds = %for.cond343.preheader
  %146 = trunc i64 %indvars.iv2069 to i32
  %div351 = sdiv i32 %146, 4
  %div356 = sdiv i32 %146, 8
  %rem = srem i32 %div351, 2
  %MbaffFrameFlag362.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 24
  %.pre2085 = load i32* %MbaffFrameFlag362.phi.trans.insert, align 4, !tbaa !3
  br label %for.body349

for.body349:                                      ; preds = %for.body349.lr.ph, %for.inc520
  %indvars.iv2066 = phi i64 [ 0, %for.body349.lr.ph ], [ %indvars.iv.next2067, %for.inc520 ]
  %147 = trunc i64 %indvars.iv2066 to i32
  %div350 = sdiv i32 %147, 4
  %div354 = sdiv i32 %.pre2086, 16
  %mul357 = mul i32 %div356, %div354
  %tmp = add i32 %mul357, %div350
  %tmp1983 = shl i32 %tmp, 1
  %add360 = add i32 %tmp1983, %rem
  %tobool363 = icmp eq i32 %.pre2085, 0
  br i1 %tobool363, label %if.else466, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body349
  %idxprom364 = sext i32 %add360 to i64
  %mb_field = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 31
  %148 = load i8** %mb_field, align 8, !tbaa !0
  %arrayidx366 = getelementptr inbounds i8* %148, i64 %idxprom364
  %149 = load i8* %arrayidx366, align 1, !tbaa !1
  %tobool368 = icmp eq i8 %149, 0
  br i1 %tobool368, label %if.else466, label %if.then369

if.then369:                                       ; preds = %land.lhs.true
  %rem3701976 = shl i32 %add360, 1
  %150 = and i32 %rem3701976, 2
  %151 = add i32 %150, 2
  %ref_idx = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 32
  %152 = load i16**** %ref_idx, align 8, !tbaa !0
  %153 = load i16*** %152, align 8, !tbaa !0
  %arrayidx376 = getelementptr inbounds i16** %153, i64 %indvars.iv2066
  %154 = load i16** %arrayidx376, align 8, !tbaa !0
  %arrayidx377 = getelementptr inbounds i16* %154, i64 %indvars.iv2069
  %155 = load i16* %arrayidx377, align 2, !tbaa !5
  %arrayidx383 = getelementptr inbounds i16*** %152, i64 1
  %156 = load i16*** %arrayidx383, align 8, !tbaa !0
  %arrayidx384 = getelementptr inbounds i16** %156, i64 %indvars.iv2066
  %157 = load i16** %arrayidx384, align 8, !tbaa !0
  %arrayidx385 = getelementptr inbounds i16* %157, i64 %indvars.iv2069
  %158 = load i16* %arrayidx385, align 2, !tbaa !5
  %cmp387 = icmp sgt i16 %155, -1
  br i1 %cmp387, label %cond.true, label %if.then369.cond.end_crit_edge

if.then369.cond.end_crit_edge:                    ; preds = %if.then369
  %idxprom400.pre = sext i32 %151 to i64
  br label %cond.end

cond.true:                                        ; preds = %if.then369
  %idxprom389 = sext i16 %155 to i64
  %idxprom391 = sext i32 %151 to i64
  %arrayidx395 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 6, i64 %idxprom391, i64 %idxprom389
  %159 = load i64* %arrayidx395, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %if.then369.cond.end_crit_edge, %cond.true
  %idxprom400.pre-phi = phi i64 [ %idxprom400.pre, %if.then369.cond.end_crit_edge ], [ %idxprom391, %cond.true ]
  %cond396 = phi i64 [ 0, %if.then369.cond.end_crit_edge ], [ %159, %cond.true ]
  %ref_id = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 34
  %160 = load i64**** %ref_id, align 8, !tbaa !0
  %arrayidx402 = getelementptr inbounds i64*** %160, i64 %idxprom400.pre-phi
  %161 = load i64*** %arrayidx402, align 8, !tbaa !0
  %arrayidx403 = getelementptr inbounds i64** %161, i64 %indvars.iv2066
  %162 = load i64** %arrayidx403, align 8, !tbaa !0
  %arrayidx404 = getelementptr inbounds i64* %162, i64 %indvars.iv2069
  store i64 %cond396, i64* %arrayidx404, align 8, !tbaa !4
  %cmp405 = icmp sgt i16 %158, -1
  br i1 %cmp405, label %cond.true407, label %cond.end.cond.end416_crit_edge

cond.end.cond.end416_crit_edge:                   ; preds = %cond.end
  %add420.pre = add i32 %150, 3
  %idxprom4211977.pre = zext i32 %add420.pre to i64
  br label %cond.end416

cond.true407:                                     ; preds = %cond.end
  %idxprom408 = sext i16 %158 to i64
  %add409 = add i32 %150, 3
  %idxprom4101978 = zext i32 %add409 to i64
  %arrayidx414 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 6, i64 %idxprom4101978, i64 %idxprom408
  %163 = load i64* %arrayidx414, align 8, !tbaa !4
  br label %cond.end416

cond.end416:                                      ; preds = %cond.end.cond.end416_crit_edge, %cond.true407
  %idxprom4211977.pre-phi = phi i64 [ %idxprom4211977.pre, %cond.end.cond.end416_crit_edge ], [ %idxprom4101978, %cond.true407 ]
  %cond417 = phi i64 [ 0, %cond.end.cond.end416_crit_edge ], [ %163, %cond.true407 ]
  %arrayidx424 = getelementptr inbounds i64*** %160, i64 %idxprom4211977.pre-phi
  %164 = load i64*** %arrayidx424, align 8, !tbaa !0
  %arrayidx425 = getelementptr inbounds i64** %164, i64 %indvars.iv2066
  %165 = load i64** %arrayidx425, align 8, !tbaa !0
  %arrayidx426 = getelementptr inbounds i64* %165, i64 %indvars.iv2069
  store i64 %cond417, i64* %arrayidx426, align 8, !tbaa !4
  br i1 %cmp387, label %cond.true429, label %cond.end437

cond.true429:                                     ; preds = %cond.end416
  %idxprom430 = sext i16 %155 to i64
  %arrayidx435 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 7, i64 %idxprom400.pre-phi, i64 %idxprom430
  %166 = load i64* %arrayidx435, align 8, !tbaa !4
  br label %cond.end437

cond.end437:                                      ; preds = %cond.end416, %cond.true429
  %cond438 = phi i64 [ %166, %cond.true429 ], [ 0, %cond.end416 ]
  %167 = load i64*** %160, align 8, !tbaa !0
  %arrayidx444 = getelementptr inbounds i64** %167, i64 %indvars.iv2066
  %168 = load i64** %arrayidx444, align 8, !tbaa !0
  %arrayidx445 = getelementptr inbounds i64* %168, i64 %indvars.iv2069
  store i64 %cond438, i64* %arrayidx445, align 8, !tbaa !4
  br i1 %cmp405, label %cond.true448, label %cond.end457

cond.true448:                                     ; preds = %cond.end437
  %idxprom449 = sext i16 %158 to i64
  %arrayidx455 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 7, i64 %idxprom4211977.pre-phi, i64 %idxprom449
  %169 = load i64* %arrayidx455, align 8, !tbaa !4
  br label %cond.end457

cond.end457:                                      ; preds = %cond.end437, %cond.true448
  %cond458 = phi i64 [ %169, %cond.true448 ], [ 0, %cond.end437 ]
  %arrayidx463 = getelementptr inbounds i64*** %160, i64 1
  %170 = load i64*** %arrayidx463, align 8, !tbaa !0
  %arrayidx464 = getelementptr inbounds i64** %170, i64 %indvars.iv2066
  %171 = load i64** %arrayidx464, align 8, !tbaa !0
  %arrayidx465 = getelementptr inbounds i64* %171, i64 %indvars.iv2069
  store i64 %cond458, i64* %arrayidx465, align 8, !tbaa !4
  br label %for.inc520

if.else466:                                       ; preds = %land.lhs.true, %for.body349
  %ref_idx470 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 32
  %172 = load i16**** %ref_idx470, align 8, !tbaa !0
  %173 = load i16*** %172, align 8, !tbaa !0
  %arrayidx472 = getelementptr inbounds i16** %173, i64 %indvars.iv2066
  %174 = load i16** %arrayidx472, align 8, !tbaa !0
  %arrayidx473 = getelementptr inbounds i16* %174, i64 %indvars.iv2069
  %175 = load i16* %arrayidx473, align 2, !tbaa !5
  %arrayidx479 = getelementptr inbounds i16*** %172, i64 1
  %176 = load i16*** %arrayidx479, align 8, !tbaa !0
  %arrayidx480 = getelementptr inbounds i16** %176, i64 %indvars.iv2066
  %177 = load i16** %arrayidx480, align 8, !tbaa !0
  %arrayidx481 = getelementptr inbounds i16* %177, i64 %indvars.iv2069
  %178 = load i16* %arrayidx481, align 2, !tbaa !5
  %cmp483 = icmp sgt i16 %175, -1
  br i1 %cmp483, label %cond.true485, label %cond.end492

cond.true485:                                     ; preds = %if.else466
  %idxprom486 = sext i16 %175 to i64
  %arrayidx490 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 6, i64 0, i64 %idxprom486
  %179 = load i64* %arrayidx490, align 8, !tbaa !4
  br label %cond.end492

cond.end492:                                      ; preds = %if.else466, %cond.true485
  %cond493 = phi i64 [ %179, %cond.true485 ], [ -1, %if.else466 ]
  %ref_id497 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 34
  %180 = load i64**** %ref_id497, align 8, !tbaa !0
  %181 = load i64*** %180, align 8, !tbaa !0
  %arrayidx499 = getelementptr inbounds i64** %181, i64 %indvars.iv2066
  %182 = load i64** %arrayidx499, align 8, !tbaa !0
  %arrayidx500 = getelementptr inbounds i64* %182, i64 %indvars.iv2069
  store i64 %cond493, i64* %arrayidx500, align 8, !tbaa !4
  %cmp501 = icmp sgt i16 %178, -1
  br i1 %cmp501, label %cond.true503, label %cond.end510

cond.true503:                                     ; preds = %cond.end492
  %idxprom504 = sext i16 %178 to i64
  %arrayidx508 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 6, i64 1, i64 %idxprom504
  %183 = load i64* %arrayidx508, align 8, !tbaa !4
  br label %cond.end510

cond.end510:                                      ; preds = %cond.end492, %cond.true503
  %cond511 = phi i64 [ %183, %cond.true503 ], [ -1, %cond.end492 ]
  %arrayidx516 = getelementptr inbounds i64*** %180, i64 1
  %184 = load i64*** %arrayidx516, align 8, !tbaa !0
  %arrayidx517 = getelementptr inbounds i64** %184, i64 %indvars.iv2066
  %185 = load i64** %arrayidx517, align 8, !tbaa !0
  %arrayidx518 = getelementptr inbounds i64* %185, i64 %indvars.iv2069
  store i64 %cond511, i64* %arrayidx518, align 8, !tbaa !4
  br label %for.inc520

for.inc520:                                       ; preds = %cond.end457, %cond.end510
  %indvars.iv.next2067 = add i64 %indvars.iv2066, 1
  %div346 = sdiv i32 %.pre2086, 4
  %186 = trunc i64 %indvars.iv.next2067 to i32
  %cmp347 = icmp slt i32 %186, %div346
  br i1 %cmp347, label %for.body349, label %for.inc523

for.inc523:                                       ; preds = %for.inc520, %for.cond343.preheader
  %indvars.iv.next2070 = add i64 %indvars.iv2069, 1
  %div339 = sdiv i32 %145, 4
  %187 = trunc i64 %indvars.iv.next2070 to i32
  %cmp340 = icmp slt i32 %187, %div339
  br i1 %cmp340, label %for.cond343.preheader, label %for.end525

for.end525:                                       ; preds = %for.inc523, %for.cond336.preheader
  %frame_mbs_only_flag527 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 42
  %188 = load i32* %frame_mbs_only_flag527, align 4, !tbaa !3
  %tobool528 = icmp eq i32 %188, 0
  br i1 %tobool528, label %for.cond531.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end525
  %189 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %189, i64 0, i32 27
  %190 = load i32* %direct_8x8_inference_flag, align 4, !tbaa !1
  %tobool529 = icmp eq i32 %190, 0
  br i1 %tobool529, label %for.cond916.preheader, label %for.cond531.preheader

for.cond531.preheader:                            ; preds = %lor.lhs.false, %for.end525
  %size_x5332019 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 18
  %191 = load i32* %size_x5332019, align 4, !tbaa !3
  %cmp5352021 = icmp sgt i32 %191, 3
  br i1 %cmp5352021, label %for.cond538.preheader.lr.ph, label %for.cond916.preheader

for.cond538.preheader.lr.ph:                      ; preds = %for.cond531.preheader
  %top_field573 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  %bottom_field578 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  br label %for.cond538.preheader

for.cond538.preheader:                            ; preds = %for.inc912, %for.cond538.preheader.lr.ph
  %192 = phi i32 [ %145, %for.cond538.preheader.lr.ph ], [ %.pre2087, %for.inc912 ]
  %193 = phi %struct.storable_picture* [ %144, %for.cond538.preheader.lr.ph ], [ %307, %for.inc912 ]
  %indvars.iv2064 = phi i64 [ 0, %for.cond538.preheader.lr.ph ], [ %indvars.iv.next2065, %for.inc912 ]
  %cmp5422017 = icmp sgt i32 %192, 7
  br i1 %cmp5422017, label %for.body544.lr.ph, label %for.inc912

for.body544.lr.ph:                                ; preds = %for.cond538.preheader
  %194 = trunc i64 %indvars.iv2064 to i32
  %div546 = sdiv i32 %194, 4
  br label %for.body544

for.cond916.preheader:                            ; preds = %for.cond531.preheader, %for.inc912, %lor.lhs.false
  %195 = phi %struct.storable_picture* [ %144, %lor.lhs.false ], [ %144, %for.cond531.preheader ], [ %307, %for.inc912 ]
  %size_x9182011 = getelementptr inbounds %struct.storable_picture* %195, i64 0, i32 18
  %196 = load i32* %size_x9182011, align 4, !tbaa !3
  %cmp9202013 = icmp sgt i32 %196, 3
  br i1 %cmp9202013, label %for.cond923.preheader.lr.ph, label %for.cond1392.preheader

for.cond923.preheader.lr.ph:                      ; preds = %for.cond916.preheader
  %bottom_field976 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  %top_field982 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  br label %for.cond923.preheader

for.body544:                                      ; preds = %for.body544.lr.ph, %for.inc909
  %indvars.iv2062 = phi i64 [ 0, %for.body544.lr.ph ], [ %indvars.iv.next2063, %for.inc909 ]
  %197 = phi %struct.storable_picture* [ %193, %for.body544.lr.ph ], [ %304, %for.inc909 ]
  %MbaffFrameFlag561 = getelementptr inbounds %struct.storable_picture* %197, i64 0, i32 24
  %198 = load i32* %MbaffFrameFlag561, align 4, !tbaa !3
  %tobool562 = icmp eq i32 %198, 0
  br i1 %tobool562, label %for.inc909, label %land.lhs.true563

land.lhs.true563:                                 ; preds = %for.body544
  %size_x551 = getelementptr inbounds %struct.storable_picture* %197, i64 0, i32 18
  %199 = load i32* %size_x551, align 4, !tbaa !3
  %div552 = sdiv i32 %199, 16
  %200 = trunc i64 %indvars.iv2062 to i32
  %div554 = sdiv i32 %200, 4
  %mul555 = mul i32 %div554, %div552
  %div548 = sdiv i32 %200, 2
  %rem558 = srem i32 %div548, 2
  %tmp1984 = add i32 %div546, %mul555
  %tmp1985 = shl i32 %tmp1984, 1
  %add559 = add i32 %tmp1985, %rem558
  %idxprom564 = sext i32 %add559 to i64
  %mb_field566 = getelementptr inbounds %struct.storable_picture* %197, i64 0, i32 31
  %201 = load i8** %mb_field566, align 8, !tbaa !0
  %arrayidx567 = getelementptr inbounds i8* %201, i64 %idxprom564
  %202 = load i8* %arrayidx567, align 1, !tbaa !1
  %tobool569 = icmp eq i8 %202, 0
  br i1 %tobool569, label %for.inc909, label %if.then570

if.then570:                                       ; preds = %land.lhs.true563
  %203 = load %struct.storable_picture** %top_field573, align 8, !tbaa !0
  %field_frame = getelementptr inbounds %struct.storable_picture* %203, i64 0, i32 37
  %204 = load i8*** %field_frame, align 8, !tbaa !0
  %arrayidx574 = getelementptr inbounds i8** %204, i64 %indvars.iv2064
  %205 = load i8** %arrayidx574, align 8, !tbaa !0
  %arrayidx575 = getelementptr inbounds i8* %205, i64 %indvars.iv2062
  store i8 1, i8* %arrayidx575, align 1, !tbaa !1
  %206 = load %struct.storable_picture** %bottom_field578, align 8, !tbaa !0
  %field_frame579 = getelementptr inbounds %struct.storable_picture* %206, i64 0, i32 37
  %207 = load i8*** %field_frame579, align 8, !tbaa !0
  %arrayidx580 = getelementptr inbounds i8** %207, i64 %indvars.iv2064
  %208 = load i8** %arrayidx580, align 8, !tbaa !0
  %arrayidx581 = getelementptr inbounds i8* %208, i64 %indvars.iv2062
  store i8 1, i8* %arrayidx581, align 1, !tbaa !1
  %mul582 = shl nsw i32 %200, 1
  %add5831975 = or i32 %mul582, 1
  %idxprom584 = sext i32 %add5831975 to i64
  %209 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %field_frame587 = getelementptr inbounds %struct.storable_picture* %209, i64 0, i32 37
  %210 = load i8*** %field_frame587, align 8, !tbaa !0
  %arrayidx588 = getelementptr inbounds i8** %210, i64 %indvars.iv2064
  %211 = load i8** %arrayidx588, align 8, !tbaa !0
  %arrayidx589 = getelementptr inbounds i8* %211, i64 %idxprom584
  store i8 1, i8* %arrayidx589, align 1, !tbaa !1
  %idxprom591 = sext i32 %mul582 to i64
  %212 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %field_frame594 = getelementptr inbounds %struct.storable_picture* %212, i64 0, i32 37
  %213 = load i8*** %field_frame594, align 8, !tbaa !0
  %arrayidx595 = getelementptr inbounds i8** %213, i64 %indvars.iv2064
  %214 = load i8** %arrayidx595, align 8, !tbaa !0
  %arrayidx596 = getelementptr inbounds i8* %214, i64 %idxprom591
  store i8 1, i8* %arrayidx596, align 1, !tbaa !1
  %mul598 = shl nsw i32 %div554, 3
  %rem599 = srem i32 %200, 4
  %add600 = add nsw i32 %rem599, %mul598
  %add601 = add nsw i32 %add600, 4
  %idxprom602 = sext i32 %add601 to i64
  %215 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %mv = getelementptr inbounds %struct.storable_picture* %215, i64 0, i32 35
  %216 = load i16***** %mv, align 8, !tbaa !0
  %217 = load i16**** %216, align 8, !tbaa !0
  %arrayidx606 = getelementptr inbounds i16*** %217, i64 %indvars.iv2064
  %218 = load i16*** %arrayidx606, align 8, !tbaa !0
  %arrayidx607 = getelementptr inbounds i16** %218, i64 %idxprom602
  %219 = load i16** %arrayidx607, align 8, !tbaa !0
  %220 = load i16* %219, align 2, !tbaa !5
  %221 = load %struct.storable_picture** %bottom_field578, align 8, !tbaa !0
  %mv612 = getelementptr inbounds %struct.storable_picture* %221, i64 0, i32 35
  %222 = load i16***** %mv612, align 8, !tbaa !0
  %223 = load i16**** %222, align 8, !tbaa !0
  %arrayidx614 = getelementptr inbounds i16*** %223, i64 %indvars.iv2064
  %224 = load i16*** %arrayidx614, align 8, !tbaa !0
  %arrayidx615 = getelementptr inbounds i16** %224, i64 %indvars.iv2062
  %225 = load i16** %arrayidx615, align 8, !tbaa !0
  store i16 %220, i16* %225, align 2, !tbaa !5
  %arrayidx629 = getelementptr inbounds i16* %219, i64 1
  %226 = load i16* %arrayidx629, align 2, !tbaa !5
  %arrayidx637 = getelementptr inbounds i16* %225, i64 1
  store i16 %226, i16* %arrayidx637, align 2, !tbaa !5
  %arrayidx647 = getelementptr inbounds i16**** %216, i64 1
  %227 = load i16**** %arrayidx647, align 8, !tbaa !0
  %arrayidx648 = getelementptr inbounds i16*** %227, i64 %indvars.iv2064
  %228 = load i16*** %arrayidx648, align 8, !tbaa !0
  %arrayidx649 = getelementptr inbounds i16** %228, i64 %idxprom602
  %229 = load i16** %arrayidx649, align 8, !tbaa !0
  %230 = load i16* %229, align 2, !tbaa !5
  %arrayidx655 = getelementptr inbounds i16**** %222, i64 1
  %231 = load i16**** %arrayidx655, align 8, !tbaa !0
  %arrayidx656 = getelementptr inbounds i16*** %231, i64 %indvars.iv2064
  %232 = load i16*** %arrayidx656, align 8, !tbaa !0
  %arrayidx657 = getelementptr inbounds i16** %232, i64 %indvars.iv2062
  %233 = load i16** %arrayidx657, align 8, !tbaa !0
  store i16 %230, i16* %233, align 2, !tbaa !5
  %arrayidx671 = getelementptr inbounds i16* %229, i64 1
  %234 = load i16* %arrayidx671, align 2, !tbaa !5
  %arrayidx679 = getelementptr inbounds i16* %233, i64 1
  store i16 %234, i16* %arrayidx679, align 2, !tbaa !5
  %ref_idx688 = getelementptr inbounds %struct.storable_picture* %215, i64 0, i32 32
  %235 = load i16**** %ref_idx688, align 8, !tbaa !0
  %236 = load i16*** %235, align 8, !tbaa !0
  %arrayidx690 = getelementptr inbounds i16** %236, i64 %indvars.iv2064
  %237 = load i16** %arrayidx690, align 8, !tbaa !0
  %arrayidx691 = getelementptr inbounds i16* %237, i64 %idxprom602
  %238 = load i16* %arrayidx691, align 2, !tbaa !5
  %ref_idx695 = getelementptr inbounds %struct.storable_picture* %221, i64 0, i32 32
  %239 = load i16**** %ref_idx695, align 8, !tbaa !0
  %240 = load i16*** %239, align 8, !tbaa !0
  %arrayidx697 = getelementptr inbounds i16** %240, i64 %indvars.iv2064
  %241 = load i16** %arrayidx697, align 8, !tbaa !0
  %arrayidx698 = getelementptr inbounds i16* %241, i64 %indvars.iv2062
  store i16 %238, i16* %arrayidx698, align 2, !tbaa !5
  %arrayidx708 = getelementptr inbounds i16*** %235, i64 1
  %242 = load i16*** %arrayidx708, align 8, !tbaa !0
  %arrayidx709 = getelementptr inbounds i16** %242, i64 %indvars.iv2064
  %243 = load i16** %arrayidx709, align 8, !tbaa !0
  %arrayidx710 = getelementptr inbounds i16* %243, i64 %idxprom602
  %244 = load i16* %arrayidx710, align 2, !tbaa !5
  %arrayidx715 = getelementptr inbounds i16*** %239, i64 1
  %245 = load i16*** %arrayidx715, align 8, !tbaa !0
  %arrayidx716 = getelementptr inbounds i16** %245, i64 %indvars.iv2064
  %246 = load i16** %arrayidx716, align 8, !tbaa !0
  %arrayidx717 = getelementptr inbounds i16* %246, i64 %indvars.iv2062
  store i16 %244, i16* %arrayidx717, align 2, !tbaa !5
  %ref_id726 = getelementptr inbounds %struct.storable_picture* %215, i64 0, i32 34
  %247 = load i64**** %ref_id726, align 8, !tbaa !0
  %arrayidx727 = getelementptr inbounds i64*** %247, i64 4
  %248 = load i64*** %arrayidx727, align 8, !tbaa !0
  %arrayidx728 = getelementptr inbounds i64** %248, i64 %indvars.iv2064
  %249 = load i64** %arrayidx728, align 8, !tbaa !0
  %arrayidx729 = getelementptr inbounds i64* %249, i64 %idxprom602
  %250 = load i64* %arrayidx729, align 8, !tbaa !4
  %ref_id733 = getelementptr inbounds %struct.storable_picture* %221, i64 0, i32 34
  %251 = load i64**** %ref_id733, align 8, !tbaa !0
  %252 = load i64*** %251, align 8, !tbaa !0
  %arrayidx735 = getelementptr inbounds i64** %252, i64 %indvars.iv2064
  %253 = load i64** %arrayidx735, align 8, !tbaa !0
  %arrayidx736 = getelementptr inbounds i64* %253, i64 %indvars.iv2062
  store i64 %250, i64* %arrayidx736, align 8, !tbaa !4
  %arrayidx746 = getelementptr inbounds i64*** %247, i64 5
  %254 = load i64*** %arrayidx746, align 8, !tbaa !0
  %arrayidx747 = getelementptr inbounds i64** %254, i64 %indvars.iv2064
  %255 = load i64** %arrayidx747, align 8, !tbaa !0
  %arrayidx748 = getelementptr inbounds i64* %255, i64 %idxprom602
  %256 = load i64* %arrayidx748, align 8, !tbaa !4
  %arrayidx753 = getelementptr inbounds i64*** %251, i64 1
  %257 = load i64*** %arrayidx753, align 8, !tbaa !0
  %arrayidx754 = getelementptr inbounds i64** %257, i64 %indvars.iv2064
  %258 = load i64** %arrayidx754, align 8, !tbaa !0
  %arrayidx755 = getelementptr inbounds i64* %258, i64 %indvars.iv2062
  store i64 %256, i64* %arrayidx755, align 8, !tbaa !4
  %idxprom760 = sext i32 %add600 to i64
  %arrayidx766 = getelementptr inbounds i16** %218, i64 %idxprom760
  %259 = load i16** %arrayidx766, align 8, !tbaa !0
  %260 = load i16* %259, align 2, !tbaa !5
  %261 = load %struct.storable_picture** %top_field573, align 8, !tbaa !0
  %mv771 = getelementptr inbounds %struct.storable_picture* %261, i64 0, i32 35
  %262 = load i16***** %mv771, align 8, !tbaa !0
  %263 = load i16**** %262, align 8, !tbaa !0
  %arrayidx773 = getelementptr inbounds i16*** %263, i64 %indvars.iv2064
  %264 = load i16*** %arrayidx773, align 8, !tbaa !0
  %arrayidx774 = getelementptr inbounds i16** %264, i64 %indvars.iv2062
  %265 = load i16** %arrayidx774, align 8, !tbaa !0
  store i16 %260, i16* %265, align 2, !tbaa !5
  %266 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %mv783 = getelementptr inbounds %struct.storable_picture* %266, i64 0, i32 35
  %267 = load i16***** %mv783, align 8, !tbaa !0
  %268 = load i16**** %267, align 8, !tbaa !0
  %arrayidx785 = getelementptr inbounds i16*** %268, i64 %indvars.iv2064
  %269 = load i16*** %arrayidx785, align 8, !tbaa !0
  %arrayidx786 = getelementptr inbounds i16** %269, i64 %idxprom760
  %270 = load i16** %arrayidx786, align 8, !tbaa !0
  %arrayidx787 = getelementptr inbounds i16* %270, i64 1
  %271 = load i16* %arrayidx787, align 2, !tbaa !5
  %arrayidx795 = getelementptr inbounds i16* %265, i64 1
  store i16 %271, i16* %arrayidx795, align 2, !tbaa !5
  %arrayidx804 = getelementptr inbounds i16**** %267, i64 1
  %272 = load i16**** %arrayidx804, align 8, !tbaa !0
  %arrayidx805 = getelementptr inbounds i16*** %272, i64 %indvars.iv2064
  %273 = load i16*** %arrayidx805, align 8, !tbaa !0
  %arrayidx806 = getelementptr inbounds i16** %273, i64 %idxprom760
  %274 = load i16** %arrayidx806, align 8, !tbaa !0
  %275 = load i16* %274, align 2, !tbaa !5
  %arrayidx812 = getelementptr inbounds i16**** %262, i64 1
  %276 = load i16**** %arrayidx812, align 8, !tbaa !0
  %arrayidx813 = getelementptr inbounds i16*** %276, i64 %indvars.iv2064
  %277 = load i16*** %arrayidx813, align 8, !tbaa !0
  %arrayidx814 = getelementptr inbounds i16** %277, i64 %indvars.iv2062
  %278 = load i16** %arrayidx814, align 8, !tbaa !0
  store i16 %275, i16* %278, align 2, !tbaa !5
  %arrayidx827 = getelementptr inbounds i16* %274, i64 1
  %279 = load i16* %arrayidx827, align 2, !tbaa !5
  %arrayidx835 = getelementptr inbounds i16* %278, i64 1
  store i16 %279, i16* %arrayidx835, align 2, !tbaa !5
  %ref_idx843 = getelementptr inbounds %struct.storable_picture* %266, i64 0, i32 32
  %280 = load i16**** %ref_idx843, align 8, !tbaa !0
  %281 = load i16*** %280, align 8, !tbaa !0
  %arrayidx845 = getelementptr inbounds i16** %281, i64 %indvars.iv2064
  %282 = load i16** %arrayidx845, align 8, !tbaa !0
  %arrayidx846 = getelementptr inbounds i16* %282, i64 %idxprom760
  %283 = load i16* %arrayidx846, align 2, !tbaa !5
  %ref_idx850 = getelementptr inbounds %struct.storable_picture* %261, i64 0, i32 32
  %284 = load i16**** %ref_idx850, align 8, !tbaa !0
  %285 = load i16*** %284, align 8, !tbaa !0
  %arrayidx852 = getelementptr inbounds i16** %285, i64 %indvars.iv2064
  %286 = load i16** %arrayidx852, align 8, !tbaa !0
  %arrayidx853 = getelementptr inbounds i16* %286, i64 %indvars.iv2062
  store i16 %283, i16* %arrayidx853, align 2, !tbaa !5
  %arrayidx862 = getelementptr inbounds i16*** %280, i64 1
  %287 = load i16*** %arrayidx862, align 8, !tbaa !0
  %arrayidx863 = getelementptr inbounds i16** %287, i64 %indvars.iv2064
  %288 = load i16** %arrayidx863, align 8, !tbaa !0
  %arrayidx864 = getelementptr inbounds i16* %288, i64 %idxprom760
  %289 = load i16* %arrayidx864, align 2, !tbaa !5
  %arrayidx869 = getelementptr inbounds i16*** %284, i64 1
  %290 = load i16*** %arrayidx869, align 8, !tbaa !0
  %arrayidx870 = getelementptr inbounds i16** %290, i64 %indvars.iv2064
  %291 = load i16** %arrayidx870, align 8, !tbaa !0
  %arrayidx871 = getelementptr inbounds i16* %291, i64 %indvars.iv2062
  store i16 %289, i16* %arrayidx871, align 2, !tbaa !5
  %ref_id879 = getelementptr inbounds %struct.storable_picture* %266, i64 0, i32 34
  %292 = load i64**** %ref_id879, align 8, !tbaa !0
  %arrayidx880 = getelementptr inbounds i64*** %292, i64 2
  %293 = load i64*** %arrayidx880, align 8, !tbaa !0
  %arrayidx881 = getelementptr inbounds i64** %293, i64 %indvars.iv2064
  %294 = load i64** %arrayidx881, align 8, !tbaa !0
  %arrayidx882 = getelementptr inbounds i64* %294, i64 %idxprom760
  %295 = load i64* %arrayidx882, align 8, !tbaa !4
  %ref_id886 = getelementptr inbounds %struct.storable_picture* %261, i64 0, i32 34
  %296 = load i64**** %ref_id886, align 8, !tbaa !0
  %297 = load i64*** %296, align 8, !tbaa !0
  %arrayidx888 = getelementptr inbounds i64** %297, i64 %indvars.iv2064
  %298 = load i64** %arrayidx888, align 8, !tbaa !0
  %arrayidx889 = getelementptr inbounds i64* %298, i64 %indvars.iv2062
  store i64 %295, i64* %arrayidx889, align 8, !tbaa !4
  %arrayidx898 = getelementptr inbounds i64*** %292, i64 3
  %299 = load i64*** %arrayidx898, align 8, !tbaa !0
  %arrayidx899 = getelementptr inbounds i64** %299, i64 %indvars.iv2064
  %300 = load i64** %arrayidx899, align 8, !tbaa !0
  %arrayidx900 = getelementptr inbounds i64* %300, i64 %idxprom760
  %301 = load i64* %arrayidx900, align 8, !tbaa !4
  %arrayidx905 = getelementptr inbounds i64*** %296, i64 1
  %302 = load i64*** %arrayidx905, align 8, !tbaa !0
  %arrayidx906 = getelementptr inbounds i64** %302, i64 %indvars.iv2064
  %303 = load i64** %arrayidx906, align 8, !tbaa !0
  %arrayidx907 = getelementptr inbounds i64* %303, i64 %indvars.iv2062
  store i64 %301, i64* %arrayidx907, align 8, !tbaa !4
  br label %for.inc909

for.inc909:                                       ; preds = %land.lhs.true563, %for.body544, %if.then570
  %304 = phi %struct.storable_picture* [ %197, %land.lhs.true563 ], [ %197, %for.body544 ], [ %266, %if.then570 ]
  %indvars.iv.next2063 = add i64 %indvars.iv2062, 1
  %size_y540 = getelementptr inbounds %struct.storable_picture* %304, i64 0, i32 19
  %305 = load i32* %size_y540, align 4, !tbaa !3
  %div541 = sdiv i32 %305, 8
  %306 = trunc i64 %indvars.iv.next2063 to i32
  %cmp542 = icmp slt i32 %306, %div541
  br i1 %cmp542, label %for.body544, label %for.inc912

for.inc912:                                       ; preds = %for.inc909, %for.cond538.preheader
  %.pre2087 = phi i32 [ %192, %for.cond538.preheader ], [ %305, %for.inc909 ]
  %307 = phi %struct.storable_picture* [ %193, %for.cond538.preheader ], [ %304, %for.inc909 ]
  %indvars.iv.next2065 = add i64 %indvars.iv2064, 1
  %size_x533 = getelementptr inbounds %struct.storable_picture* %307, i64 0, i32 18
  %308 = load i32* %size_x533, align 4, !tbaa !3
  %div534 = sdiv i32 %308, 4
  %309 = trunc i64 %indvars.iv.next2065 to i32
  %cmp535 = icmp slt i32 %309, %div534
  br i1 %cmp535, label %for.cond538.preheader, label %for.cond916.preheader

for.cond923.preheader:                            ; preds = %for.cond923.preheader.lr.ph, %for.inc1389
  %310 = phi %struct.storable_picture* [ %195, %for.cond923.preheader.lr.ph ], [ %410, %for.inc1389 ]
  %indvars.iv2060 = phi i64 [ 0, %for.cond923.preheader.lr.ph ], [ %indvars.iv.next2061, %for.inc1389 ]
  %size_y9252006 = getelementptr inbounds %struct.storable_picture* %310, i64 0, i32 19
  %311 = load i32* %size_y9252006, align 4, !tbaa !3
  %cmp9272008 = icmp sgt i32 %311, 7
  br i1 %cmp9272008, label %for.body929.lr.ph, label %for.inc1389

for.body929.lr.ph:                                ; preds = %for.cond923.preheader
  %312 = trunc i64 %indvars.iv2060 to i32
  %and994 = and i32 %312, 2
  %tobool995 = icmp ne i32 %and994, 0
  %or997 = or i64 %indvars.iv2060, 1
  %and999 = and i64 %indvars.iv2060, 4294967294
  %cond1001 = select i1 %tobool995, i64 %or997, i64 %and999
  %sext = shl i64 %cond1001, 32
  %idxprom1002 = ashr exact i64 %sext, 32
  %div931 = sdiv i32 %312, 4
  br label %for.body929

for.cond1392.preheader:                           ; preds = %for.inc1389, %for.cond916.preheader
  %313 = phi %struct.storable_picture* [ %195, %for.cond916.preheader ], [ %410, %for.inc1389 ]
  %size_y13942002 = getelementptr inbounds %struct.storable_picture* %313, i64 0, i32 19
  %314 = load i32* %size_y13942002, align 4, !tbaa !3
  %cmp13962004 = icmp sgt i32 %314, 3
  br i1 %cmp13962004, label %for.cond1399.preheader, label %for.end1417

for.body929:                                      ; preds = %for.body929.lr.ph, %for.inc1386
  %indvars.iv2058 = phi i64 [ 0, %for.body929.lr.ph ], [ %indvars.iv.next2059, %for.inc1386 ]
  %315 = phi %struct.storable_picture* [ %310, %for.body929.lr.ph ], [ %407, %for.inc1386 ]
  %MbaffFrameFlag946 = getelementptr inbounds %struct.storable_picture* %315, i64 0, i32 24
  %316 = load i32* %MbaffFrameFlag946, align 4, !tbaa !3
  %tobool947 = icmp eq i32 %316, 0
  br i1 %tobool947, label %for.body929.if.then954_crit_edge, label %lor.lhs.false948

for.body929.if.then954_crit_edge:                 ; preds = %for.body929
  %.pre2089 = trunc i64 %indvars.iv2058 to i32
  br label %if.then954

lor.lhs.false948:                                 ; preds = %for.body929
  %size_x936 = getelementptr inbounds %struct.storable_picture* %315, i64 0, i32 18
  %317 = load i32* %size_x936, align 4, !tbaa !3
  %div937 = sdiv i32 %317, 16
  %318 = trunc i64 %indvars.iv2058 to i32
  %div939 = sdiv i32 %318, 4
  %mul940 = mul i32 %div939, %div937
  %div933 = sdiv i32 %318, 2
  %rem943 = srem i32 %div933, 2
  %tmp1986 = add i32 %div931, %mul940
  %tmp1987 = shl i32 %tmp1986, 1
  %add944 = add i32 %tmp1987, %rem943
  %idxprom949 = sext i32 %add944 to i64
  %mb_field951 = getelementptr inbounds %struct.storable_picture* %315, i64 0, i32 31
  %319 = load i8** %mb_field951, align 8, !tbaa !0
  %arrayidx952 = getelementptr inbounds i8* %319, i64 %idxprom949
  %320 = load i8* %arrayidx952, align 1, !tbaa !1
  %tobool953 = icmp eq i8 %320, 0
  br i1 %tobool953, label %if.then954, label %for.inc1386

if.then954:                                       ; preds = %for.body929.if.then954_crit_edge, %lor.lhs.false948
  %.pre-phi = phi i32 [ %.pre2089, %for.body929.if.then954_crit_edge ], [ %318, %lor.lhs.false948 ]
  %mul955 = shl nsw i32 %.pre-phi, 1
  %idxprom956 = sext i32 %mul955 to i64
  %field_frame959 = getelementptr inbounds %struct.storable_picture* %315, i64 0, i32 37
  %321 = load i8*** %field_frame959, align 8, !tbaa !0
  %arrayidx960 = getelementptr inbounds i8** %321, i64 %indvars.iv2060
  %322 = load i8** %arrayidx960, align 8, !tbaa !0
  %arrayidx961 = getelementptr inbounds i8* %322, i64 %idxprom956
  store i8 0, i8* %arrayidx961, align 1, !tbaa !1
  %add9631974 = or i32 %mul955, 1
  %idxprom964 = sext i32 %add9631974 to i64
  %323 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %field_frame967 = getelementptr inbounds %struct.storable_picture* %323, i64 0, i32 37
  %324 = load i8*** %field_frame967, align 8, !tbaa !0
  %arrayidx968 = getelementptr inbounds i8** %324, i64 %indvars.iv2060
  %325 = load i8** %arrayidx968, align 8, !tbaa !0
  %arrayidx969 = getelementptr inbounds i8* %325, i64 %idxprom964
  store i8 0, i8* %arrayidx969, align 1, !tbaa !1
  %326 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %frame_mbs_only_flag971 = getelementptr inbounds %struct.storable_picture* %326, i64 0, i32 42
  %327 = load i32* %frame_mbs_only_flag971, align 4, !tbaa !3
  %tobool972 = icmp eq i32 %327, 0
  br i1 %tobool972, label %if.then973, label %for.inc1386

if.then973:                                       ; preds = %if.then954
  %328 = load %struct.storable_picture** %bottom_field976, align 8, !tbaa !0
  %field_frame977 = getelementptr inbounds %struct.storable_picture* %328, i64 0, i32 37
  %329 = load i8*** %field_frame977, align 8, !tbaa !0
  %arrayidx978 = getelementptr inbounds i8** %329, i64 %indvars.iv2060
  %330 = load i8** %arrayidx978, align 8, !tbaa !0
  %arrayidx979 = getelementptr inbounds i8* %330, i64 %indvars.iv2058
  store i8 0, i8* %arrayidx979, align 1, !tbaa !1
  %331 = load %struct.storable_picture** %top_field982, align 8, !tbaa !0
  %field_frame983 = getelementptr inbounds %struct.storable_picture* %331, i64 0, i32 37
  %332 = load i8*** %field_frame983, align 8, !tbaa !0
  %arrayidx984 = getelementptr inbounds i8** %332, i64 %indvars.iv2060
  %333 = load i8** %arrayidx984, align 8, !tbaa !0
  %arrayidx985 = getelementptr inbounds i8* %333, i64 %indvars.iv2058
  store i8 0, i8* %arrayidx985, align 1, !tbaa !1
  %and = and i32 %.pre-phi, 2
  %tobool986 = icmp ne i32 %and, 0
  %or = or i32 %.pre-phi, 1
  %and989 = and i32 %.pre-phi, -2
  %cond991 = select i1 %tobool986, i32 %or, i32 %and989
  %mul992 = shl nsw i32 %cond991, 1
  %idxprom993 = sext i32 %mul992 to i64
  %334 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %mv1004 = getelementptr inbounds %struct.storable_picture* %334, i64 0, i32 35
  %335 = load i16***** %mv1004, align 8, !tbaa !0
  %336 = load i16**** %335, align 8, !tbaa !0
  %arrayidx1006 = getelementptr inbounds i16*** %336, i64 %idxprom1002
  %337 = load i16*** %arrayidx1006, align 8, !tbaa !0
  %arrayidx1007 = getelementptr inbounds i16** %337, i64 %idxprom993
  %338 = load i16** %arrayidx1007, align 8, !tbaa !0
  %339 = load i16* %338, align 2, !tbaa !5
  %340 = load %struct.storable_picture** %bottom_field976, align 8, !tbaa !0
  %mv1012 = getelementptr inbounds %struct.storable_picture* %340, i64 0, i32 35
  %341 = load i16***** %mv1012, align 8, !tbaa !0
  %342 = load i16**** %341, align 8, !tbaa !0
  %arrayidx1014 = getelementptr inbounds i16*** %342, i64 %indvars.iv2060
  %343 = load i16*** %arrayidx1014, align 8, !tbaa !0
  %arrayidx1015 = getelementptr inbounds i16** %343, i64 %indvars.iv2058
  %344 = load i16** %arrayidx1015, align 8, !tbaa !0
  store i16 %339, i16* %344, align 2, !tbaa !5
  %345 = load %struct.storable_picture** %top_field982, align 8, !tbaa !0
  %mv1020 = getelementptr inbounds %struct.storable_picture* %345, i64 0, i32 35
  %346 = load i16***** %mv1020, align 8, !tbaa !0
  %347 = load i16**** %346, align 8, !tbaa !0
  %arrayidx1022 = getelementptr inbounds i16*** %347, i64 %indvars.iv2060
  %348 = load i16*** %arrayidx1022, align 8, !tbaa !0
  %arrayidx1023 = getelementptr inbounds i16** %348, i64 %indvars.iv2058
  %349 = load i16** %arrayidx1023, align 8, !tbaa !0
  store i16 %339, i16* %349, align 2, !tbaa !5
  %arrayidx1049 = getelementptr inbounds i16* %338, i64 1
  %350 = load i16* %arrayidx1049, align 2, !tbaa !5
  %arrayidx1057 = getelementptr inbounds i16* %344, i64 1
  store i16 %350, i16* %arrayidx1057, align 2, !tbaa !5
  %arrayidx1065 = getelementptr inbounds i16* %349, i64 1
  store i16 %350, i16* %arrayidx1065, align 2, !tbaa !5
  %arrayidx1087 = getelementptr inbounds i16**** %335, i64 1
  %351 = load i16**** %arrayidx1087, align 8, !tbaa !0
  %arrayidx1088 = getelementptr inbounds i16*** %351, i64 %idxprom1002
  %352 = load i16*** %arrayidx1088, align 8, !tbaa !0
  %arrayidx1089 = getelementptr inbounds i16** %352, i64 %idxprom993
  %353 = load i16** %arrayidx1089, align 8, !tbaa !0
  %354 = load i16* %353, align 2, !tbaa !5
  %arrayidx1095 = getelementptr inbounds i16**** %341, i64 1
  %355 = load i16**** %arrayidx1095, align 8, !tbaa !0
  %arrayidx1096 = getelementptr inbounds i16*** %355, i64 %indvars.iv2060
  %356 = load i16*** %arrayidx1096, align 8, !tbaa !0
  %arrayidx1097 = getelementptr inbounds i16** %356, i64 %indvars.iv2058
  %357 = load i16** %arrayidx1097, align 8, !tbaa !0
  store i16 %354, i16* %357, align 2, !tbaa !5
  %arrayidx1103 = getelementptr inbounds i16**** %346, i64 1
  %358 = load i16**** %arrayidx1103, align 8, !tbaa !0
  %arrayidx1104 = getelementptr inbounds i16*** %358, i64 %indvars.iv2060
  %359 = load i16*** %arrayidx1104, align 8, !tbaa !0
  %arrayidx1105 = getelementptr inbounds i16** %359, i64 %indvars.iv2058
  %360 = load i16** %arrayidx1105, align 8, !tbaa !0
  store i16 %354, i16* %360, align 2, !tbaa !5
  %arrayidx1131 = getelementptr inbounds i16* %353, i64 1
  %361 = load i16* %arrayidx1131, align 2, !tbaa !5
  %arrayidx1139 = getelementptr inbounds i16* %357, i64 1
  store i16 %361, i16* %arrayidx1139, align 2, !tbaa !5
  %arrayidx1147 = getelementptr inbounds i16* %360, i64 1
  store i16 %361, i16* %arrayidx1147, align 2, !tbaa !5
  %ref_idx1168 = getelementptr inbounds %struct.storable_picture* %334, i64 0, i32 32
  %362 = load i16**** %ref_idx1168, align 8, !tbaa !0
  %363 = load i16*** %362, align 8, !tbaa !0
  %arrayidx1170 = getelementptr inbounds i16** %363, i64 %idxprom1002
  %364 = load i16** %arrayidx1170, align 8, !tbaa !0
  %arrayidx1171 = getelementptr inbounds i16* %364, i64 %idxprom993
  %365 = load i16* %arrayidx1171, align 2, !tbaa !5
  %cmp1173 = icmp eq i16 %365, -1
  %ref_idx1179 = getelementptr inbounds %struct.storable_picture* %340, i64 0, i32 32
  %366 = load i16**** %ref_idx1179, align 8, !tbaa !0
  %367 = load i16*** %366, align 8, !tbaa !0
  %arrayidx1181 = getelementptr inbounds i16** %367, i64 %indvars.iv2060
  %368 = load i16** %arrayidx1181, align 8, !tbaa !0
  %arrayidx1182 = getelementptr inbounds i16* %368, i64 %indvars.iv2058
  br i1 %cmp1173, label %if.then1175, label %if.else1190

if.then1175:                                      ; preds = %if.then973
  store i16 -1, i16* %arrayidx1182, align 2, !tbaa !5
  %ref_idx1186 = getelementptr inbounds %struct.storable_picture* %345, i64 0, i32 32
  %369 = load i16**** %ref_idx1186, align 8, !tbaa !0
  %370 = load i16*** %369, align 8, !tbaa !0
  %arrayidx1188 = getelementptr inbounds i16** %370, i64 %indvars.iv2060
  %371 = load i16** %arrayidx1188, align 8, !tbaa !0
  %arrayidx1189 = getelementptr inbounds i16* %371, i64 %indvars.iv2058
  store i16 -1, i16* %arrayidx1189, align 2, !tbaa !5
  br label %if.end1264

if.else1190:                                      ; preds = %if.then973
  store i16 %365, i16* %arrayidx1182, align 2, !tbaa !5
  %ref_idx1225 = getelementptr inbounds %struct.storable_picture* %345, i64 0, i32 32
  %372 = load i16**** %ref_idx1225, align 8, !tbaa !0
  %373 = load i16*** %372, align 8, !tbaa !0
  %arrayidx1227 = getelementptr inbounds i16** %373, i64 %indvars.iv2060
  %374 = load i16** %arrayidx1227, align 8, !tbaa !0
  %arrayidx1228 = getelementptr inbounds i16* %374, i64 %indvars.iv2058
  store i16 %365, i16* %arrayidx1228, align 2, !tbaa !5
  %cmp1230 = icmp sgt i16 %365, -1
  br i1 %cmp1230, label %cond.true1232, label %cond.end1255.critedge

cond.true1232:                                    ; preds = %if.else1190
  %idxprom1233 = sext i16 %365 to i64
  %arrayidx1236 = getelementptr inbounds %struct.storable_picture* %334, i64 0, i32 8, i64 0, i64 %idxprom1233
  %375 = load i64* %arrayidx1236, align 8, !tbaa !4
  %ref_id1243 = getelementptr inbounds %struct.storable_picture* %345, i64 0, i32 34
  %376 = load i64**** %ref_id1243, align 8, !tbaa !0
  %377 = load i64*** %376, align 8, !tbaa !0
  %arrayidx1245 = getelementptr inbounds i64** %377, i64 %indvars.iv2060
  %378 = load i64** %arrayidx1245, align 8, !tbaa !0
  %arrayidx1246 = getelementptr inbounds i64* %378, i64 %indvars.iv2058
  store i64 %375, i64* %arrayidx1246, align 8, !tbaa !4
  %arrayidx1253 = getelementptr inbounds %struct.storable_picture* %334, i64 0, i32 9, i64 0, i64 %idxprom1233
  %379 = load i64* %arrayidx1253, align 8, !tbaa !4
  br label %cond.end1255

cond.end1255.critedge:                            ; preds = %if.else1190
  %ref_id1243.c = getelementptr inbounds %struct.storable_picture* %345, i64 0, i32 34
  %380 = load i64**** %ref_id1243.c, align 8, !tbaa !0
  %381 = load i64*** %380, align 8, !tbaa !0
  %arrayidx1245.c = getelementptr inbounds i64** %381, i64 %indvars.iv2060
  %382 = load i64** %arrayidx1245.c, align 8, !tbaa !0
  %arrayidx1246.c = getelementptr inbounds i64* %382, i64 %indvars.iv2058
  store i64 0, i64* %arrayidx1246.c, align 8, !tbaa !4
  br label %cond.end1255

cond.end1255:                                     ; preds = %cond.end1255.critedge, %cond.true1232
  %cond1256 = phi i64 [ %379, %cond.true1232 ], [ 0, %cond.end1255.critedge ]
  %ref_id1260 = getelementptr inbounds %struct.storable_picture* %340, i64 0, i32 34
  %383 = load i64**** %ref_id1260, align 8, !tbaa !0
  %384 = load i64*** %383, align 8, !tbaa !0
  %arrayidx1262 = getelementptr inbounds i64** %384, i64 %indvars.iv2060
  %385 = load i64** %arrayidx1262, align 8, !tbaa !0
  %arrayidx1263 = getelementptr inbounds i64* %385, i64 %indvars.iv2058
  store i64 %cond1256, i64* %arrayidx1263, align 8, !tbaa !4
  br label %if.end1264

if.end1264:                                       ; preds = %cond.end1255, %if.then1175
  %386 = phi i16*** [ %372, %cond.end1255 ], [ %369, %if.then1175 ]
  %arrayidx1286 = getelementptr inbounds i16*** %362, i64 1
  %387 = load i16*** %arrayidx1286, align 8, !tbaa !0
  %arrayidx1287 = getelementptr inbounds i16** %387, i64 %idxprom1002
  %388 = load i16** %arrayidx1287, align 8, !tbaa !0
  %arrayidx1288 = getelementptr inbounds i16* %388, i64 %idxprom993
  %389 = load i16* %arrayidx1288, align 2, !tbaa !5
  %cmp1290 = icmp eq i16 %389, -1
  %arrayidx1297 = getelementptr inbounds i16*** %366, i64 1
  %390 = load i16*** %arrayidx1297, align 8, !tbaa !0
  %arrayidx1298 = getelementptr inbounds i16** %390, i64 %indvars.iv2060
  %391 = load i16** %arrayidx1298, align 8, !tbaa !0
  %arrayidx1299 = getelementptr inbounds i16* %391, i64 %indvars.iv2058
  br i1 %cmp1290, label %if.then1292, label %if.else1307

if.then1292:                                      ; preds = %if.end1264
  store i16 -1, i16* %arrayidx1299, align 2, !tbaa !5
  %arrayidx1304 = getelementptr inbounds i16*** %386, i64 1
  %392 = load i16*** %arrayidx1304, align 8, !tbaa !0
  %arrayidx1305 = getelementptr inbounds i16** %392, i64 %indvars.iv2060
  %393 = load i16** %arrayidx1305, align 8, !tbaa !0
  %arrayidx1306 = getelementptr inbounds i16* %393, i64 %indvars.iv2058
  store i16 -1, i16* %arrayidx1306, align 2, !tbaa !5
  br label %for.inc1386

if.else1307:                                      ; preds = %if.end1264
  store i16 %389, i16* %arrayidx1299, align 2, !tbaa !5
  %arrayidx1343 = getelementptr inbounds i16*** %386, i64 1
  %394 = load i16*** %arrayidx1343, align 8, !tbaa !0
  %arrayidx1344 = getelementptr inbounds i16** %394, i64 %indvars.iv2060
  %395 = load i16** %arrayidx1344, align 8, !tbaa !0
  %arrayidx1345 = getelementptr inbounds i16* %395, i64 %indvars.iv2058
  store i16 %389, i16* %arrayidx1345, align 2, !tbaa !5
  %cmp1347 = icmp sgt i16 %389, -1
  br i1 %cmp1347, label %cond.true1349, label %cond.end1374.critedge

cond.true1349:                                    ; preds = %if.else1307
  %idxprom1350 = sext i16 %389 to i64
  %arrayidx1354 = getelementptr inbounds %struct.storable_picture* %334, i64 0, i32 8, i64 1, i64 %idxprom1350
  %396 = load i64* %arrayidx1354, align 8, !tbaa !4
  %ref_id1361 = getelementptr inbounds %struct.storable_picture* %345, i64 0, i32 34
  %397 = load i64**** %ref_id1361, align 8, !tbaa !0
  %arrayidx1362 = getelementptr inbounds i64*** %397, i64 1
  %398 = load i64*** %arrayidx1362, align 8, !tbaa !0
  %arrayidx1363 = getelementptr inbounds i64** %398, i64 %indvars.iv2060
  %399 = load i64** %arrayidx1363, align 8, !tbaa !0
  %arrayidx1364 = getelementptr inbounds i64* %399, i64 %indvars.iv2058
  store i64 %396, i64* %arrayidx1364, align 8, !tbaa !4
  %arrayidx1372 = getelementptr inbounds %struct.storable_picture* %334, i64 0, i32 9, i64 1, i64 %idxprom1350
  %400 = load i64* %arrayidx1372, align 8, !tbaa !4
  br label %cond.end1374

cond.end1374.critedge:                            ; preds = %if.else1307
  %ref_id1361.c = getelementptr inbounds %struct.storable_picture* %345, i64 0, i32 34
  %401 = load i64**** %ref_id1361.c, align 8, !tbaa !0
  %arrayidx1362.c = getelementptr inbounds i64*** %401, i64 1
  %402 = load i64*** %arrayidx1362.c, align 8, !tbaa !0
  %arrayidx1363.c = getelementptr inbounds i64** %402, i64 %indvars.iv2060
  %403 = load i64** %arrayidx1363.c, align 8, !tbaa !0
  %arrayidx1364.c = getelementptr inbounds i64* %403, i64 %indvars.iv2058
  store i64 0, i64* %arrayidx1364.c, align 8, !tbaa !4
  br label %cond.end1374

cond.end1374:                                     ; preds = %cond.end1374.critedge, %cond.true1349
  %cond1375 = phi i64 [ %400, %cond.true1349 ], [ 0, %cond.end1374.critedge ]
  %ref_id1379 = getelementptr inbounds %struct.storable_picture* %340, i64 0, i32 34
  %404 = load i64**** %ref_id1379, align 8, !tbaa !0
  %arrayidx1380 = getelementptr inbounds i64*** %404, i64 1
  %405 = load i64*** %arrayidx1380, align 8, !tbaa !0
  %arrayidx1381 = getelementptr inbounds i64** %405, i64 %indvars.iv2060
  %406 = load i64** %arrayidx1381, align 8, !tbaa !0
  %arrayidx1382 = getelementptr inbounds i64* %406, i64 %indvars.iv2058
  store i64 %cond1375, i64* %arrayidx1382, align 8, !tbaa !4
  br label %for.inc1386

for.inc1386:                                      ; preds = %lor.lhs.false948, %if.then954, %if.then1292, %cond.end1374
  %407 = phi %struct.storable_picture* [ %315, %lor.lhs.false948 ], [ %326, %if.then954 ], [ %334, %if.then1292 ], [ %334, %cond.end1374 ]
  %indvars.iv.next2059 = add i64 %indvars.iv2058, 1
  %size_y925 = getelementptr inbounds %struct.storable_picture* %407, i64 0, i32 19
  %408 = load i32* %size_y925, align 4, !tbaa !3
  %div926 = sdiv i32 %408, 8
  %409 = trunc i64 %indvars.iv.next2059 to i32
  %cmp927 = icmp slt i32 %409, %div926
  br i1 %cmp927, label %for.body929, label %for.inc1389

for.inc1389:                                      ; preds = %for.inc1386, %for.cond923.preheader
  %410 = phi %struct.storable_picture* [ %310, %for.cond923.preheader ], [ %407, %for.inc1386 ]
  %indvars.iv.next2061 = add i64 %indvars.iv2060, 1
  %size_x918 = getelementptr inbounds %struct.storable_picture* %410, i64 0, i32 18
  %411 = load i32* %size_x918, align 4, !tbaa !3
  %div919 = sdiv i32 %411, 4
  %412 = trunc i64 %indvars.iv.next2061 to i32
  %cmp920 = icmp slt i32 %412, %div919
  br i1 %cmp920, label %for.cond923.preheader, label %for.cond1392.preheader

for.cond1399.preheader:                           ; preds = %for.cond1392.preheader, %for.inc1415
  %413 = phi %struct.storable_picture* [ %421, %for.inc1415 ], [ %313, %for.cond1392.preheader ]
  %indvars.iv2056 = phi i64 [ %indvars.iv.next2057, %for.inc1415 ], [ 0, %for.cond1392.preheader ]
  %size_x14011998 = getelementptr inbounds %struct.storable_picture* %413, i64 0, i32 18
  %414 = load i32* %size_x14011998, align 4, !tbaa !3
  %cmp14032000 = icmp sgt i32 %414, 3
  br i1 %cmp14032000, label %for.body1405, label %for.inc1415

for.body1405:                                     ; preds = %for.cond1399.preheader, %for.body1405
  %indvars.iv2054 = phi i64 [ %indvars.iv.next2055, %for.body1405 ], [ 0, %for.cond1399.preheader ]
  %415 = phi %struct.storable_picture* [ %418, %for.body1405 ], [ %413, %for.cond1399.preheader ]
  %field_frame1409 = getelementptr inbounds %struct.storable_picture* %415, i64 0, i32 37
  %416 = load i8*** %field_frame1409, align 8, !tbaa !0
  %arrayidx1410 = getelementptr inbounds i8** %416, i64 %indvars.iv2054
  %417 = load i8** %arrayidx1410, align 8, !tbaa !0
  %arrayidx1411 = getelementptr inbounds i8* %417, i64 %indvars.iv2056
  store i8 0, i8* %arrayidx1411, align 1, !tbaa !1
  %indvars.iv.next2055 = add i64 %indvars.iv2054, 1
  %418 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %size_x1401 = getelementptr inbounds %struct.storable_picture* %418, i64 0, i32 18
  %419 = load i32* %size_x1401, align 4, !tbaa !3
  %div1402 = sdiv i32 %419, 4
  %420 = trunc i64 %indvars.iv.next2055 to i32
  %cmp1403 = icmp slt i32 %420, %div1402
  br i1 %cmp1403, label %for.body1405, label %for.inc1415

for.inc1415:                                      ; preds = %for.body1405, %for.cond1399.preheader
  %421 = phi %struct.storable_picture* [ %413, %for.cond1399.preheader ], [ %418, %for.body1405 ]
  %indvars.iv.next2057 = add i64 %indvars.iv2056, 1
  %size_y1394 = getelementptr inbounds %struct.storable_picture* %421, i64 0, i32 19
  %422 = load i32* %size_y1394, align 4, !tbaa !3
  %div1395 = sdiv i32 %422, 4
  %423 = trunc i64 %indvars.iv.next2057 to i32
  %cmp1396 = icmp slt i32 %423, %div1395
  br i1 %cmp1396, label %for.cond1399.preheader, label %for.end1417

for.end1417:                                      ; preds = %for.inc1415, %for.cond1392.preheader
  %424 = phi i32 [ %314, %for.cond1392.preheader ], [ %422, %for.inc1415 ]
  %425 = phi %struct.storable_picture* [ %313, %for.cond1392.preheader ], [ %421, %for.inc1415 ]
  %426 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag1418 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %426, i64 0, i32 25
  %427 = load i32* %frame_mbs_only_flag1418, align 4, !tbaa !1
  %tobool1419 = icmp eq i32 %427, 0
  br i1 %tobool1419, label %for.cond1424.preheader, label %lor.lhs.false1420

lor.lhs.false1420:                                ; preds = %for.end1417
  %direct_8x8_inference_flag1421 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %426, i64 0, i32 27
  %428 = load i32* %direct_8x8_inference_flag1421, align 4, !tbaa !1
  %tobool1422 = icmp ne i32 %428, 0
  %cmp14281996 = icmp sgt i32 %424, 3
  %or.cond = and i1 %tobool1422, %cmp14281996
  br i1 %or.cond, label %for.cond1431.preheader, label %if.end1478

for.cond1424.preheader:                           ; preds = %for.end1417
  %cmp14281996.old = icmp sgt i32 %424, 3
  br i1 %cmp14281996.old, label %for.cond1431.preheader, label %if.end1478

for.cond1431.preheader:                           ; preds = %lor.lhs.false1420, %for.cond1424.preheader, %for.inc1475
  %429 = phi %struct.storable_picture* [ %443, %for.inc1475 ], [ %425, %for.cond1424.preheader ], [ %425, %lor.lhs.false1420 ]
  %indvars.iv2052 = phi i64 [ %indvars.iv.next2053, %for.inc1475 ], [ 0, %for.cond1424.preheader ], [ 0, %lor.lhs.false1420 ]
  %size_x14331990 = getelementptr inbounds %struct.storable_picture* %429, i64 0, i32 18
  %430 = load i32* %size_x14331990, align 4, !tbaa !3
  %cmp14351992 = icmp sgt i32 %430, 3
  br i1 %cmp14351992, label %for.body1437.lr.ph, label %for.inc1475

for.body1437.lr.ph:                               ; preds = %for.cond1431.preheader
  %431 = trunc i64 %indvars.iv2052 to i32
  %div1447 = sdiv i32 %431, 8
  %div1441 = sdiv i32 %431, 4
  %rem1451 = srem i32 %div1441, 2
  br label %for.body1437

for.body1437:                                     ; preds = %for.body1437.lr.ph, %cond.end1463
  %indvars.iv = phi i64 [ 0, %for.body1437.lr.ph ], [ %indvars.iv.next, %cond.end1463 ]
  %432 = phi i32 [ %430, %for.body1437.lr.ph ], [ %441, %cond.end1463 ]
  %433 = phi %struct.storable_picture* [ %429, %for.body1437.lr.ph ], [ %440, %cond.end1463 ]
  %MbaffFrameFlag1454 = getelementptr inbounds %struct.storable_picture* %433, i64 0, i32 24
  %434 = load i32* %MbaffFrameFlag1454, align 4, !tbaa !3
  %tobool1455 = icmp eq i32 %434, 0
  br i1 %tobool1455, label %cond.end1463, label %cond.true1456

cond.true1456:                                    ; preds = %for.body1437
  %div1445 = sdiv i32 %432, 16
  %435 = trunc i64 %indvars.iv to i32
  %div1439 = sdiv i32 %435, 4
  %mul1448 = mul i32 %div1447, %div1445
  %tmp1988 = add i32 %div1439, %mul1448
  %tmp1989 = shl i32 %tmp1988, 1
  %add1452 = add i32 %tmp1989, %rem1451
  %idxprom1457 = sext i32 %add1452 to i64
  %mb_field1459 = getelementptr inbounds %struct.storable_picture* %433, i64 0, i32 31
  %436 = load i8** %mb_field1459, align 8, !tbaa !0
  %arrayidx1460 = getelementptr inbounds i8* %436, i64 %idxprom1457
  %437 = load i8* %arrayidx1460, align 1, !tbaa !1
  br label %cond.end1463

cond.end1463:                                     ; preds = %for.body1437, %cond.true1456
  %cond1464 = phi i8 [ %437, %cond.true1456 ], [ 0, %for.body1437 ]
  %field_frame1469 = getelementptr inbounds %struct.storable_picture* %433, i64 0, i32 37
  %438 = load i8*** %field_frame1469, align 8, !tbaa !0
  %arrayidx1470 = getelementptr inbounds i8** %438, i64 %indvars.iv
  %439 = load i8** %arrayidx1470, align 8, !tbaa !0
  %arrayidx1471 = getelementptr inbounds i8* %439, i64 %indvars.iv2052
  store i8 %cond1464, i8* %arrayidx1471, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %440 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %size_x1433 = getelementptr inbounds %struct.storable_picture* %440, i64 0, i32 18
  %441 = load i32* %size_x1433, align 4, !tbaa !3
  %div1434 = sdiv i32 %441, 4
  %442 = trunc i64 %indvars.iv.next to i32
  %cmp1435 = icmp slt i32 %442, %div1434
  br i1 %cmp1435, label %for.body1437, label %for.inc1475

for.inc1475:                                      ; preds = %cond.end1463, %for.cond1431.preheader
  %443 = phi %struct.storable_picture* [ %429, %for.cond1431.preheader ], [ %440, %cond.end1463 ]
  %indvars.iv.next2053 = add i64 %indvars.iv2052, 1
  %size_y1426 = getelementptr inbounds %struct.storable_picture* %443, i64 0, i32 19
  %444 = load i32* %size_y1426, align 4, !tbaa !3
  %div1427 = sdiv i32 %444, 4
  %445 = trunc i64 %indvars.iv.next2053 to i32
  %cmp1428 = icmp slt i32 %445, %div1427
  br i1 %cmp1428, label %for.cond1431.preheader, label %if.end1478

if.end1478:                                       ; preds = %lor.lhs.false1420, %for.cond1424.preheader, %for.inc1475
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @flush_dpb() #1 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp8 = icmp eq i32 %0, 0
  br i1 %cmp8, label %while.cond, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.09 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %idxprom = zext i32 %i.09 to i64
  %1 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.frame_store** %1, i64 %idxprom
  %2 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  tail call fastcc void @unmark_for_reference(%struct.frame_store* %2) #7
  %inc = add i32 %i.09, 1
  %3 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body, label %while.cond

while.cond:                                       ; preds = %entry, %for.body, %while.cond
  %call = tail call fastcc i32 @remove_unused_frame_from_dpb() #7
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %while.cond1.preheader, label %while.cond

while.cond1.preheader:                            ; preds = %while.cond
  %4 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %tobool27 = icmp eq i32 %4, 0
  br i1 %tobool27, label %while.end4, label %while.body3

while.body3:                                      ; preds = %while.cond1.preheader, %while.body3
  tail call fastcc void @output_one_frame_from_dpb() #7
  %5 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %tobool2 = icmp eq i32 %5, 0
  br i1 %tobool2, label %while.end4, label %while.body3

while.end4:                                       ; preds = %while.body3, %while.cond1.preheader
  store i32 -2147483648, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 7), align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @unmark_for_reference(%struct.frame_store* nocapture %fs) #1 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 25
  %1 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %1, 0
  %is_used = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load i32* %is_used, align 4, !tbaa !3
  %and = and i32 %2, 1
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %top_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  %3 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %3, i64 0, i32 15
  store i32 0, i32* %used_for_reference, align 4, !tbaa !3
  %.pre = load i32* %is_used, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %4 = phi i32 [ %2, %if.then ], [ %.pre, %if.then2 ]
  %and4 = and i32 %4, 2
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %bottom_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  %5 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %used_for_reference7 = getelementptr inbounds %struct.storable_picture* %5, i64 0, i32 15
  store i32 0, i32* %used_for_reference7, align 4, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.end, %if.then6
  %6 = load i32* %is_used, align 4, !tbaa !3
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then11, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  %frame22.phi.trans.insert = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  %.pre65 = load %struct.storable_picture** %frame22.phi.trans.insert, align 8, !tbaa !0
  br label %if.end21

if.then11:                                        ; preds = %if.end9
  %7 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool13 = icmp eq i32 %7, 0
  br i1 %tobool13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.then11
  %top_field15 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  %8 = load %struct.storable_picture** %top_field15, align 8, !tbaa !0
  %used_for_reference16 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 15
  store i32 0, i32* %used_for_reference16, align 4, !tbaa !3
  %bottom_field17 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  %9 = load %struct.storable_picture** %bottom_field17, align 8, !tbaa !0
  %used_for_reference18 = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 15
  store i32 0, i32* %used_for_reference18, align 4, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %if.then14
  %frame = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  %10 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %used_for_reference20 = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 15
  store i32 0, i32* %used_for_reference20, align 4, !tbaa !3
  br label %if.end21

if.end21:                                         ; preds = %if.end9.if.end21_crit_edge, %if.end19
  %11 = phi %struct.storable_picture* [ %.pre65, %if.end9.if.end21_crit_edge ], [ %10, %if.end19 ]
  %is_reference = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 1
  store i32 0, i32* %is_reference, align 4, !tbaa !3
  %frame22 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture* %11, i64 0, i32 29
  %12 = load i16*** %imgY_ups_w, align 8, !tbaa !0
  %tobool23 = icmp eq i16** %12, null
  br i1 %tobool23, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end21
  tail call void @free_mem2Dpel(i16** %12) #6
  %13 = load %struct.storable_picture** %frame22, align 8, !tbaa !0
  %imgY_ups_w28 = getelementptr inbounds %struct.storable_picture* %13, i64 0, i32 29
  store i16** null, i16*** %imgY_ups_w28, align 8, !tbaa !0
  %.pre63 = load %struct.storable_picture** %frame22, align 8, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %if.end21, %if.then24
  %14 = phi %struct.storable_picture* [ %11, %if.end21 ], [ %.pre63, %if.then24 ]
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %14, i64 0, i32 28
  %15 = load i16*** %imgY_ups, align 8, !tbaa !0
  %tobool31 = icmp eq i16** %15, null
  br i1 %tobool31, label %if.end37, label %if.then32

if.then32:                                        ; preds = %if.end29
  tail call void @free_mem2Dpel(i16** %15) #6
  %16 = load %struct.storable_picture** %frame22, align 8, !tbaa !0
  %imgY_ups36 = getelementptr inbounds %struct.storable_picture* %16, i64 0, i32 28
  store i16** null, i16*** %imgY_ups36, align 8, !tbaa !0
  %.pre64 = load %struct.storable_picture** %frame22, align 8, !tbaa !0
  br label %if.end37

if.end37:                                         ; preds = %if.end29, %if.then32
  %17 = phi %struct.storable_picture* [ %14, %if.end29 ], [ %.pre64, %if.then32 ]
  %imgY_11_w = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 27
  %18 = load i16** %imgY_11_w, align 8, !tbaa !0
  %tobool39 = icmp eq i16* %18, null
  br i1 %tobool39, label %if.end45, label %if.then40

if.then40:                                        ; preds = %if.end37
  %19 = bitcast i16* %18 to i8*
  tail call void @free(i8* %19) #6
  %20 = load %struct.storable_picture** %frame22, align 8, !tbaa !0
  %imgY_11_w44 = getelementptr inbounds %struct.storable_picture* %20, i64 0, i32 27
  store i16* null, i16** %imgY_11_w44, align 8, !tbaa !0
  br label %if.end45

if.end45:                                         ; preds = %if.end37, %if.then40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gen_field_ref_ids(%struct.storable_picture* nocapture %p) #1 {
entry:
  %size_x = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 18
  %0 = load i32* %size_x, align 4, !tbaa !3
  %cmp74 = icmp sgt i32 %0, 3
  br i1 %cmp74, label %for.cond1.preheader.lr.ph, label %for.end47

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %size_y = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 19
  %ref_idx = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 32
  %ref_id = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 34
  %field_frame = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 37
  %.pre = load i32* %size_y, align 4, !tbaa !3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc45
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %21, %for.inc45 ]
  %2 = phi i32 [ %.pre, %for.cond1.preheader.lr.ph ], [ %22, %for.inc45 ]
  %indvars.iv76 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next77, %for.inc45 ]
  %cmp371 = icmp sgt i32 %2, 3
  br i1 %cmp371, label %for.body4, label %for.inc45

for.body4:                                        ; preds = %for.cond1.preheader, %cond.end33
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end33 ], [ 0, %for.cond1.preheader ]
  %3 = load i16**** %ref_idx, align 8, !tbaa !0
  %4 = load i16*** %3, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i16** %4, i64 %indvars.iv76
  %5 = load i16** %arrayidx6, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i16* %5, i64 %indvars.iv
  %6 = load i16* %arrayidx7, align 2, !tbaa !5
  %arrayidx11 = getelementptr inbounds i16*** %3, i64 1
  %7 = load i16*** %arrayidx11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i16** %7, i64 %indvars.iv76
  %8 = load i16** %arrayidx12, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i16* %8, i64 %indvars.iv
  %9 = load i16* %arrayidx13, align 2, !tbaa !5
  %cmp15 = icmp sgt i16 %6, -1
  br i1 %cmp15, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body4
  %idxprom17 = sext i16 %6 to i64
  %arrayidx19 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 6, i64 0, i64 %idxprom17
  %10 = load i64* %arrayidx19, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %for.body4, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ 0, %for.body4 ]
  %11 = load i64**** %ref_id, align 8, !tbaa !0
  %12 = load i64*** %11, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i64** %12, i64 %indvars.iv76
  %13 = load i64** %arrayidx23, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds i64* %13, i64 %indvars.iv
  store i64 %cond, i64* %arrayidx24, align 8, !tbaa !4
  %cmp25 = icmp sgt i16 %9, -1
  br i1 %cmp25, label %cond.true27, label %cond.end33

cond.true27:                                      ; preds = %cond.end
  %idxprom28 = sext i16 %9 to i64
  %arrayidx31 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 6, i64 1, i64 %idxprom28
  %14 = load i64* %arrayidx31, align 8, !tbaa !4
  br label %cond.end33

cond.end33:                                       ; preds = %cond.end, %cond.true27
  %cond34 = phi i64 [ %14, %cond.true27 ], [ 0, %cond.end ]
  %arrayidx38 = getelementptr inbounds i64*** %11, i64 1
  %15 = load i64*** %arrayidx38, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i64** %15, i64 %indvars.iv76
  %16 = load i64** %arrayidx39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i64* %16, i64 %indvars.iv
  store i64 %cond34, i64* %arrayidx40, align 8, !tbaa !4
  %17 = load i8*** %field_frame, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds i8** %17, i64 %indvars.iv76
  %18 = load i8** %arrayidx43, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds i8* %18, i64 %indvars.iv
  store i8 1, i8* %arrayidx44, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %19 = load i32* %size_y, align 4, !tbaa !3
  %div2 = sdiv i32 %19, 4
  %20 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %20, %div2
  br i1 %cmp3, label %for.body4, label %for.cond1.for.inc45_crit_edge

for.cond1.for.inc45_crit_edge:                    ; preds = %cond.end33
  %.pre78 = load i32* %size_x, align 4, !tbaa !3
  br label %for.inc45

for.inc45:                                        ; preds = %for.cond1.for.inc45_crit_edge, %for.cond1.preheader
  %21 = phi i32 [ %.pre78, %for.cond1.for.inc45_crit_edge ], [ %1, %for.cond1.preheader ]
  %22 = phi i32 [ %19, %for.cond1.for.inc45_crit_edge ], [ %2, %for.cond1.preheader ]
  %indvars.iv.next77 = add i64 %indvars.iv76, 1
  %div = sdiv i32 %21, 4
  %23 = trunc i64 %indvars.iv.next77 to i32
  %cmp = icmp slt i32 %23, %div
  br i1 %cmp, label %for.cond1.preheader, label %for.end47

for.end47:                                        ; preds = %for.inc45, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: nounwind optsize uwtable
define void @dpb_combine_field(%struct.frame_store* nocapture %fs) #1 {
entry:
  %top_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  %0 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %size_x = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 18
  %1 = load i32* %size_x, align 4, !tbaa !3
  %size_y = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 19
  %2 = load i32* %size_y, align 4, !tbaa !3
  %mul = shl nsw i32 %2, 1
  %size_x_cr = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 20
  %3 = load i32* %size_x_cr, align 4, !tbaa !3
  %size_y_cr = getelementptr inbounds %struct.storable_picture* %0, i64 0, i32 21
  %4 = load i32* %size_y_cr, align 4, !tbaa !3
  %mul4 = shl nsw i32 %4, 1
  %call = tail call %struct.storable_picture* @alloc_storable_picture(i32 0, i32 %1, i32 %mul, i32 %3, i32 %mul4) #7
  %frame = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  store %struct.storable_picture* %call, %struct.storable_picture** %frame, align 8, !tbaa !0
  %5 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %size_y61060 = getelementptr inbounds %struct.storable_picture* %5, i64 0, i32 19
  %6 = load i32* %size_y61060, align 4, !tbaa !3
  %cmp1061 = icmp sgt i32 %6, 0
  br i1 %cmp1061, label %for.body.lr.ph, label %for.cond28.preheader

for.body.lr.ph:                                   ; preds = %entry
  %bottom_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  br label %for.body

for.cond28.preheader:                             ; preds = %for.body, %entry
  %7 = phi %struct.storable_picture* [ %5, %entry ], [ %28, %for.body ]
  %size_y_cr301057 = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 21
  %8 = load i32* %size_y_cr301057, align 4, !tbaa !3
  %cmp311058 = icmp sgt i32 %8, 0
  %bottom_field56 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  br i1 %cmp311058, label %for.body33, label %for.end97

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %9 = phi %struct.storable_picture* [ %call, %for.body.lr.ph ], [ %.pre1078, %for.body.for.body_crit_edge ]
  %indvars.iv1075 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1076, %for.body.for.body_crit_edge ]
  %10 = phi %struct.storable_picture* [ %5, %for.body.lr.ph ], [ %28, %for.body.for.body_crit_edge ]
  %11 = trunc i64 %indvars.iv1075 to i32
  %mul7 = shl nsw i32 %11, 1
  %idxprom = sext i32 %mul7 to i64
  %imgY = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 25
  %12 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16** %12, i64 %idxprom
  %13 = load i16** %arrayidx, align 8, !tbaa !0
  %14 = bitcast i16* %13 to i8*
  %imgY11 = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 25
  %15 = load i16*** %imgY11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i16** %15, i64 %indvars.iv1075
  %16 = load i16** %arrayidx12, align 8, !tbaa !0
  %17 = bitcast i16* %16 to i8*
  %size_x14 = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 18
  %18 = load i32* %size_x14, align 4, !tbaa !3
  %conv = sext i32 %18 to i64
  %mul15 = shl nsw i64 %conv, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %17, i64 %mul15, i32 2, i1 false)
  %add1030 = or i32 %mul7, 1
  %idxprom17 = sext i32 %add1030 to i64
  %19 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %imgY19 = getelementptr inbounds %struct.storable_picture* %19, i64 0, i32 25
  %20 = load i16*** %imgY19, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i16** %20, i64 %idxprom17
  %21 = load i16** %arrayidx20, align 8, !tbaa !0
  %22 = bitcast i16* %21 to i8*
  %23 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %imgY22 = getelementptr inbounds %struct.storable_picture* %23, i64 0, i32 25
  %24 = load i16*** %imgY22, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i16** %24, i64 %indvars.iv1075
  %25 = load i16** %arrayidx23, align 8, !tbaa !0
  %26 = bitcast i16* %25 to i8*
  %size_x25 = getelementptr inbounds %struct.storable_picture* %23, i64 0, i32 18
  %27 = load i32* %size_x25, align 4, !tbaa !3
  %conv26 = sext i32 %27 to i64
  %mul27 = shl nsw i64 %conv26, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %26, i64 %mul27, i32 2, i1 false)
  %indvars.iv.next1076 = add i64 %indvars.iv1075, 1
  %28 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %size_y6 = getelementptr inbounds %struct.storable_picture* %28, i64 0, i32 19
  %29 = load i32* %size_y6, align 4, !tbaa !3
  %30 = trunc i64 %indvars.iv.next1076 to i32
  %cmp = icmp slt i32 %30, %29
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond28.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre1078 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  br label %for.body

for.body33:                                       ; preds = %for.cond28.preheader, %for.body33
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %for.body33 ], [ 0, %for.cond28.preheader ]
  %31 = phi %struct.storable_picture* [ %76, %for.body33 ], [ %7, %for.cond28.preheader ]
  %32 = trunc i64 %indvars.iv1073 to i32
  %mul34 = shl nsw i32 %32, 1
  %idxprom35 = sext i32 %mul34 to i64
  %33 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 30
  %34 = load i16**** %imgUV, align 8, !tbaa !0
  %35 = load i16*** %34, align 8, !tbaa !0
  %arrayidx38 = getelementptr inbounds i16** %35, i64 %idxprom35
  %36 = load i16** %arrayidx38, align 8, !tbaa !0
  %37 = bitcast i16* %36 to i8*
  %imgUV41 = getelementptr inbounds %struct.storable_picture* %31, i64 0, i32 30
  %38 = load i16**** %imgUV41, align 8, !tbaa !0
  %39 = load i16*** %38, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds i16** %39, i64 %indvars.iv1073
  %40 = load i16** %arrayidx43, align 8, !tbaa !0
  %41 = bitcast i16* %40 to i8*
  %size_x_cr45 = getelementptr inbounds %struct.storable_picture* %31, i64 0, i32 20
  %42 = load i32* %size_x_cr45, align 4, !tbaa !3
  %conv46 = sext i32 %42 to i64
  %mul47 = shl nsw i64 %conv46, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %41, i64 %mul47, i32 2, i1 false)
  %add491029 = or i32 %mul34, 1
  %idxprom50 = sext i32 %add491029 to i64
  %43 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %imgUV52 = getelementptr inbounds %struct.storable_picture* %43, i64 0, i32 30
  %44 = load i16**** %imgUV52, align 8, !tbaa !0
  %45 = load i16*** %44, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i16** %45, i64 %idxprom50
  %46 = load i16** %arrayidx54, align 8, !tbaa !0
  %47 = bitcast i16* %46 to i8*
  %48 = load %struct.storable_picture** %bottom_field56, align 8, !tbaa !0
  %imgUV57 = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 30
  %49 = load i16**** %imgUV57, align 8, !tbaa !0
  %50 = load i16*** %49, align 8, !tbaa !0
  %arrayidx59 = getelementptr inbounds i16** %50, i64 %indvars.iv1073
  %51 = load i16** %arrayidx59, align 8, !tbaa !0
  %52 = bitcast i16* %51 to i8*
  %size_x_cr61 = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 20
  %53 = load i32* %size_x_cr61, align 4, !tbaa !3
  %conv62 = sext i32 %53 to i64
  %mul63 = shl nsw i64 %conv62, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %52, i64 %mul63, i32 2, i1 false)
  %54 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %imgUV67 = getelementptr inbounds %struct.storable_picture* %54, i64 0, i32 30
  %55 = load i16**** %imgUV67, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i16*** %55, i64 1
  %56 = load i16*** %arrayidx68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i16** %56, i64 %idxprom35
  %57 = load i16** %arrayidx69, align 8, !tbaa !0
  %58 = bitcast i16* %57 to i8*
  %59 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %imgUV72 = getelementptr inbounds %struct.storable_picture* %59, i64 0, i32 30
  %60 = load i16**** %imgUV72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds i16*** %60, i64 1
  %61 = load i16*** %arrayidx73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i16** %61, i64 %indvars.iv1073
  %62 = load i16** %arrayidx74, align 8, !tbaa !0
  %63 = bitcast i16* %62 to i8*
  %size_x_cr76 = getelementptr inbounds %struct.storable_picture* %59, i64 0, i32 20
  %64 = load i32* %size_x_cr76, align 4, !tbaa !3
  %conv77 = sext i32 %64 to i64
  %mul78 = shl nsw i64 %conv77, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %63, i64 %mul78, i32 2, i1 false)
  %65 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %imgUV83 = getelementptr inbounds %struct.storable_picture* %65, i64 0, i32 30
  %66 = load i16**** %imgUV83, align 8, !tbaa !0
  %arrayidx84 = getelementptr inbounds i16*** %66, i64 1
  %67 = load i16*** %arrayidx84, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds i16** %67, i64 %idxprom50
  %68 = load i16** %arrayidx85, align 8, !tbaa !0
  %69 = bitcast i16* %68 to i8*
  %70 = load %struct.storable_picture** %bottom_field56, align 8, !tbaa !0
  %imgUV88 = getelementptr inbounds %struct.storable_picture* %70, i64 0, i32 30
  %71 = load i16**** %imgUV88, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i16*** %71, i64 1
  %72 = load i16*** %arrayidx89, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i16** %72, i64 %indvars.iv1073
  %73 = load i16** %arrayidx90, align 8, !tbaa !0
  %74 = bitcast i16* %73 to i8*
  %size_x_cr92 = getelementptr inbounds %struct.storable_picture* %70, i64 0, i32 20
  %75 = load i32* %size_x_cr92, align 4, !tbaa !3
  %conv93 = sext i32 %75 to i64
  %mul94 = shl nsw i64 %conv93, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %74, i64 %mul94, i32 2, i1 false)
  %indvars.iv.next1074 = add i64 %indvars.iv1073, 1
  %76 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %size_y_cr30 = getelementptr inbounds %struct.storable_picture* %76, i64 0, i32 21
  %77 = load i32* %size_y_cr30, align 4, !tbaa !3
  %78 = trunc i64 %indvars.iv.next1074 to i32
  %cmp31 = icmp slt i32 %78, %77
  br i1 %cmp31, label %for.body33, label %for.end97

for.end97:                                        ; preds = %for.cond28.preheader, %for.body33
  %79 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  tail call void @UnifiedOneForthPix(%struct.storable_picture* %79) #6
  %80 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %poc = getelementptr inbounds %struct.storable_picture* %80, i64 0, i32 1
  %81 = load i32* %poc, align 4, !tbaa !3
  %82 = load %struct.storable_picture** %bottom_field56, align 8, !tbaa !0
  %poc101 = getelementptr inbounds %struct.storable_picture* %82, i64 0, i32 1
  %83 = load i32* %poc101, align 4, !tbaa !3
  %cmp102 = icmp slt i32 %81, %83
  %. = select i1 %cmp102, i32 %81, i32 %83
  %84 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %frame_poc = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 4
  store i32 %., i32* %frame_poc, align 4, !tbaa !3
  %poc110 = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 1
  store i32 %., i32* %poc110, align 4, !tbaa !3
  %poc111 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 9
  store i32 %., i32* %poc111, align 4, !tbaa !3
  %85 = load i32* %poc, align 4, !tbaa !3
  %top_poc = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 2
  store i32 %85, i32* %top_poc, align 4, !tbaa !3
  store i32 %85, i32* %frame_poc, align 4, !tbaa !3
  %top_poc118 = getelementptr inbounds %struct.storable_picture* %82, i64 0, i32 2
  store i32 %85, i32* %top_poc118, align 4, !tbaa !3
  %frame_poc120 = getelementptr inbounds %struct.storable_picture* %80, i64 0, i32 4
  store i32 %85, i32* %frame_poc120, align 4, !tbaa !3
  %frame_poc122 = getelementptr inbounds %struct.storable_picture* %82, i64 0, i32 4
  store i32 %85, i32* %frame_poc122, align 4, !tbaa !3
  %86 = load i32* %poc101, align 4, !tbaa !3
  %bottom_poc = getelementptr inbounds %struct.storable_picture* %80, i64 0, i32 3
  store i32 %86, i32* %bottom_poc, align 4, !tbaa !3
  %87 = load i32* %poc101, align 4, !tbaa !3
  %bottom_poc129 = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 3
  store i32 %87, i32* %bottom_poc129, align 4, !tbaa !3
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %80, i64 0, i32 15
  %88 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool = icmp eq i32 %88, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.end97
  %used_for_reference132 = getelementptr inbounds %struct.storable_picture* %82, i64 0, i32 15
  %89 = load i32* %used_for_reference132, align 4, !tbaa !3
  %tobool133 = icmp ne i32 %89, 0
  br label %land.end

land.end:                                         ; preds = %for.end97, %land.rhs
  %90 = phi i1 [ false, %for.end97 ], [ %tobool133, %land.rhs ]
  %land.ext = zext i1 %90 to i32
  %used_for_reference135 = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 15
  store i32 %land.ext, i32* %used_for_reference135, align 4, !tbaa !3
  %is_long_term = getelementptr inbounds %struct.storable_picture* %80, i64 0, i32 14
  %91 = load i32* %is_long_term, align 4, !tbaa !3
  %tobool137 = icmp eq i32 %91, 0
  br i1 %tobool137, label %land.end142.thread, label %land.end142

land.end142.thread:                               ; preds = %land.end
  %is_long_term1451080 = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 14
  store i32 0, i32* %is_long_term1451080, align 4, !tbaa !3
  br label %if.end

land.end142:                                      ; preds = %land.end
  %is_long_term140 = getelementptr inbounds %struct.storable_picture* %82, i64 0, i32 14
  %92 = load i32* %is_long_term140, align 4, !tbaa !3
  %tobool141 = icmp ne i32 %92, 0
  %land.ext143 = zext i1 %tobool141 to i32
  %is_long_term145 = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 14
  store i32 %land.ext143, i32* %is_long_term145, align 4, !tbaa !3
  br i1 %tobool141, label %if.then, label %if.end

if.then:                                          ; preds = %land.end142
  %long_term_frame_idx = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 7
  %93 = load i32* %long_term_frame_idx, align 4, !tbaa !3
  %long_term_frame_idx150 = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 13
  store i32 %93, i32* %long_term_frame_idx150, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %land.end142.thread, %land.end142, %if.then
  %top_field153 = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 38
  store %struct.storable_picture* %80, %struct.storable_picture** %top_field153, align 8, !tbaa !0
  %94 = load %struct.storable_picture** %bottom_field56, align 8, !tbaa !0
  %95 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %bottom_field156 = getelementptr inbounds %struct.storable_picture* %95, i64 0, i32 39
  store %struct.storable_picture* %94, %struct.storable_picture** %bottom_field156, align 8, !tbaa !0
  %96 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %coded_frame = getelementptr inbounds %struct.storable_picture* %96, i64 0, i32 23
  store i32 0, i32* %coded_frame, align 4, !tbaa !3
  %97 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture* %97, i64 0, i32 41
  %98 = load i32* %chroma_format_idc, align 4, !tbaa !3
  %chroma_format_idc160 = getelementptr inbounds %struct.storable_picture* %96, i64 0, i32 41
  store i32 %98, i32* %chroma_format_idc160, align 4, !tbaa !3
  %frame_cropping_flag = getelementptr inbounds %struct.storable_picture* %97, i64 0, i32 43
  %99 = load i32* %frame_cropping_flag, align 4, !tbaa !3
  %frame_cropping_flag163 = getelementptr inbounds %struct.storable_picture* %96, i64 0, i32 43
  store i32 %99, i32* %frame_cropping_flag163, align 4, !tbaa !3
  %tobool166 = icmp eq i32 %99, 0
  br i1 %tobool166, label %if.end180, label %if.then167

if.then167:                                       ; preds = %if.end
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.storable_picture* %97, i64 0, i32 46
  %100 = load i32* %frame_cropping_rect_top_offset, align 4, !tbaa !3
  %frame_cropping_rect_top_offset170 = getelementptr inbounds %struct.storable_picture* %96, i64 0, i32 46
  store i32 %100, i32* %frame_cropping_rect_top_offset170, align 4, !tbaa !3
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.storable_picture* %97, i64 0, i32 47
  %101 = load i32* %frame_cropping_rect_bottom_offset, align 4, !tbaa !3
  %frame_cropping_rect_bottom_offset173 = getelementptr inbounds %struct.storable_picture* %96, i64 0, i32 47
  store i32 %101, i32* %frame_cropping_rect_bottom_offset173, align 4, !tbaa !3
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.storable_picture* %97, i64 0, i32 44
  %102 = load i32* %frame_cropping_rect_left_offset, align 4, !tbaa !3
  %frame_cropping_rect_left_offset176 = getelementptr inbounds %struct.storable_picture* %96, i64 0, i32 44
  store i32 %102, i32* %frame_cropping_rect_left_offset176, align 4, !tbaa !3
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.storable_picture* %97, i64 0, i32 45
  %103 = load i32* %frame_cropping_rect_right_offset, align 4, !tbaa !3
  %frame_cropping_rect_right_offset179 = getelementptr inbounds %struct.storable_picture* %96, i64 0, i32 45
  store i32 %103, i32* %frame_cropping_rect_right_offset179, align 4, !tbaa !3
  br label %if.end180

if.end180:                                        ; preds = %if.end, %if.then167
  %104 = load %struct.storable_picture** %bottom_field56, align 8, !tbaa !0
  %frame183 = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 40
  store %struct.storable_picture* %96, %struct.storable_picture** %frame183, align 8, !tbaa !0
  %105 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %frame185 = getelementptr inbounds %struct.storable_picture* %105, i64 0, i32 40
  store %struct.storable_picture* %96, %struct.storable_picture** %frame185, align 8, !tbaa !0
  %106 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %cmp1881055 = icmp sgt i32 %106, 0
  br i1 %cmp1881055, label %for.body190.lr.ph, label %for.cond236.preheader

for.body190.lr.ph:                                ; preds = %if.end180
  %107 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %108 = load %struct.storable_picture** %bottom_field56, align 8, !tbaa !0
  %109 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %add187 = add nsw i32 %106, 1
  %div = sdiv i32 %add187, 2
  br label %for.body190

for.cond236.preheader:                            ; preds = %for.body190, %if.end180
  %110 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 16, !tbaa !3
  %cmp2391051 = icmp sgt i32 %110, 0
  %111 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  br i1 %cmp2391051, label %for.body241.lr.ph, label %for.cond288.preheader

for.body241.lr.ph:                                ; preds = %for.cond236.preheader
  %112 = load %struct.storable_picture** %bottom_field56, align 8, !tbaa !0
  %113 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %add237 = add nsw i32 %110, 1
  %div238 = sdiv i32 %add237, 2
  br label %for.body241

for.body190:                                      ; preds = %for.body190.lr.ph, %for.body190
  %indvars.iv1071 = phi i64 [ 0, %for.body190.lr.ph ], [ %indvars.iv.next1072, %for.body190 ]
  %114 = trunc i64 %indvars.iv1071 to i32
  %mul191 = shl nsw i32 %114, 1
  %idxprom192 = sext i32 %mul191 to i64
  %arrayidx195 = getelementptr inbounds %struct.storable_picture* %107, i64 0, i32 6, i64 1, i64 %idxprom192
  %115 = load i64* %arrayidx195, align 8, !tbaa !4
  %div196 = sdiv i64 %115, 2
  %arrayidx203 = getelementptr inbounds %struct.storable_picture* %108, i64 0, i32 6, i64 1, i64 %idxprom192
  %116 = load i64* %arrayidx203, align 8, !tbaa !4
  %div204 = sdiv i64 %116, 2
  %cmp206 = icmp slt i64 %div196, %div204
  %.1031 = select i1 %cmp206, i64 %115, i64 %116
  %div215 = sdiv i64 %.1031, 2
  %mul216 = shl nsw i64 %div215, 1
  %arrayidx232 = getelementptr inbounds %struct.storable_picture* %109, i64 0, i32 6, i64 1, i64 %indvars.iv1071
  store i64 %mul216, i64* %arrayidx232, align 8, !tbaa !4
  %indvars.iv.next1072 = add i64 %indvars.iv1071, 1
  %117 = trunc i64 %indvars.iv.next1072 to i32
  %cmp188 = icmp slt i32 %117, %div
  br i1 %cmp188, label %for.body190, label %for.cond236.preheader

for.cond288.preheader:                            ; preds = %for.cond236.preheader, %for.body241
  %size_x2901045 = getelementptr inbounds %struct.storable_picture* %111, i64 0, i32 18
  %118 = load i32* %size_x2901045, align 4, !tbaa !3
  %cmp2921047 = icmp sgt i32 %118, 3
  br i1 %cmp2921047, label %for.cond295.preheader, label %for.end726

for.body241:                                      ; preds = %for.body241.lr.ph, %for.body241
  %indvars.iv1069 = phi i64 [ 0, %for.body241.lr.ph ], [ %indvars.iv.next1070, %for.body241 ]
  %119 = trunc i64 %indvars.iv1069 to i32
  %mul242 = shl nsw i32 %119, 1
  %idxprom243 = sext i32 %mul242 to i64
  %arrayidx247 = getelementptr inbounds %struct.storable_picture* %111, i64 0, i32 6, i64 0, i64 %idxprom243
  %120 = load i64* %arrayidx247, align 8, !tbaa !4
  %div248 = sdiv i64 %120, 2
  %arrayidx255 = getelementptr inbounds %struct.storable_picture* %112, i64 0, i32 6, i64 0, i64 %idxprom243
  %121 = load i64* %arrayidx255, align 8, !tbaa !4
  %div256 = sdiv i64 %121, 2
  %cmp258 = icmp slt i64 %div248, %div256
  %.1032 = select i1 %cmp258, i64 %120, i64 %121
  %div267 = sdiv i64 %.1032, 2
  %mul268 = shl nsw i64 %div267, 1
  %arrayidx284 = getelementptr inbounds %struct.storable_picture* %113, i64 0, i32 6, i64 0, i64 %indvars.iv1069
  store i64 %mul268, i64* %arrayidx284, align 8, !tbaa !4
  %indvars.iv.next1070 = add i64 %indvars.iv1069, 1
  %122 = trunc i64 %indvars.iv.next1070 to i32
  %cmp239 = icmp slt i32 %122, %div238
  br i1 %cmp239, label %for.body241, label %for.cond288.preheader

for.cond295.preheader:                            ; preds = %for.cond288.preheader, %for.inc724
  %123 = phi %struct.storable_picture* [ %210, %for.inc724 ], [ %111, %for.cond288.preheader ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %for.inc724 ], [ 0, %for.cond288.preheader ]
  %size_y2971041 = getelementptr inbounds %struct.storable_picture* %123, i64 0, i32 19
  %124 = load i32* %size_y2971041, align 4, !tbaa !3
  %cmp2991043 = icmp sgt i32 %124, 3
  br i1 %cmp2991043, label %for.body301.lr.ph, label %for.inc724

for.body301.lr.ph:                                ; preds = %for.cond295.preheader
  %.pre = load %struct.storable_picture** %frame, align 8, !tbaa !0
  br label %for.body301

for.body301:                                      ; preds = %for.body301.lr.ph, %cond.end707
  %125 = phi %struct.storable_picture* [ %.pre, %for.body301.lr.ph ], [ %138, %cond.end707 ]
  %indvars.iv1065 = phi i64 [ 0, %for.body301.lr.ph ], [ %indvars.iv.next1066, %cond.end707 ]
  %126 = trunc i64 %indvars.iv1065 to i32
  %div302 = sdiv i32 %126, 4
  %mul303 = shl nsw i32 %div302, 3
  %rem = srem i32 %126, 4
  %add304 = add nsw i32 %mul303, %rem
  %add305 = add nsw i32 %add304, 4
  %idxprom306 = sext i32 %add305 to i64
  %field_frame = getelementptr inbounds %struct.storable_picture* %125, i64 0, i32 37
  %127 = load i8*** %field_frame, align 8, !tbaa !0
  %arrayidx309 = getelementptr inbounds i8** %127, i64 %indvars.iv1067
  %128 = load i8** %arrayidx309, align 8, !tbaa !0
  %arrayidx310 = getelementptr inbounds i8* %128, i64 %idxprom306
  store i8 1, i8* %arrayidx310, align 1, !tbaa !1
  %idxprom315 = sext i32 %add304 to i64
  %129 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %field_frame318 = getelementptr inbounds %struct.storable_picture* %129, i64 0, i32 37
  %130 = load i8*** %field_frame318, align 8, !tbaa !0
  %arrayidx319 = getelementptr inbounds i8** %130, i64 %indvars.iv1067
  %131 = load i8** %arrayidx319, align 8, !tbaa !0
  %arrayidx320 = getelementptr inbounds i8* %131, i64 %idxprom315
  store i8 1, i8* %arrayidx320, align 1, !tbaa !1
  %132 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %mv = getelementptr inbounds %struct.storable_picture* %132, i64 0, i32 35
  %133 = load i16***** %mv, align 8, !tbaa !0
  %134 = load i16**** %133, align 8, !tbaa !0
  %arrayidx325 = getelementptr inbounds i16*** %134, i64 %indvars.iv1067
  %135 = load i16*** %arrayidx325, align 8, !tbaa !0
  %arrayidx326 = getelementptr inbounds i16** %135, i64 %indvars.iv1065
  %136 = load i16** %arrayidx326, align 8, !tbaa !0
  %137 = load i16* %136, align 2, !tbaa !5
  %138 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %mv335 = getelementptr inbounds %struct.storable_picture* %138, i64 0, i32 35
  %139 = load i16***** %mv335, align 8, !tbaa !0
  %140 = load i16**** %139, align 8, !tbaa !0
  %arrayidx337 = getelementptr inbounds i16*** %140, i64 %indvars.iv1067
  %141 = load i16*** %arrayidx337, align 8, !tbaa !0
  %arrayidx338 = getelementptr inbounds i16** %141, i64 %idxprom315
  %142 = load i16** %arrayidx338, align 8, !tbaa !0
  store i16 %137, i16* %142, align 2, !tbaa !5
  %arrayidx347 = getelementptr inbounds i16* %136, i64 1
  %143 = load i16* %arrayidx347, align 2, !tbaa !5
  %arrayidx359 = getelementptr inbounds i16* %142, i64 1
  store i16 %143, i16* %arrayidx359, align 2, !tbaa !5
  %arrayidx364 = getelementptr inbounds i16**** %133, i64 1
  %144 = load i16**** %arrayidx364, align 8, !tbaa !0
  %arrayidx365 = getelementptr inbounds i16*** %144, i64 %indvars.iv1067
  %145 = load i16*** %arrayidx365, align 8, !tbaa !0
  %arrayidx366 = getelementptr inbounds i16** %145, i64 %indvars.iv1065
  %146 = load i16** %arrayidx366, align 8, !tbaa !0
  %147 = load i16* %146, align 2, !tbaa !5
  %arrayidx376 = getelementptr inbounds i16**** %139, i64 1
  %148 = load i16**** %arrayidx376, align 8, !tbaa !0
  %arrayidx377 = getelementptr inbounds i16*** %148, i64 %indvars.iv1067
  %149 = load i16*** %arrayidx377, align 8, !tbaa !0
  %arrayidx378 = getelementptr inbounds i16** %149, i64 %idxprom315
  %150 = load i16** %arrayidx378, align 8, !tbaa !0
  store i16 %147, i16* %150, align 2, !tbaa !5
  %arrayidx387 = getelementptr inbounds i16* %146, i64 1
  %151 = load i16* %arrayidx387, align 2, !tbaa !5
  %arrayidx399 = getelementptr inbounds i16* %150, i64 1
  store i16 %151, i16* %arrayidx399, align 2, !tbaa !5
  %ref_idx = getelementptr inbounds %struct.storable_picture* %132, i64 0, i32 32
  %152 = load i16**** %ref_idx, align 8, !tbaa !0
  %153 = load i16*** %152, align 8, !tbaa !0
  %arrayidx404 = getelementptr inbounds i16** %153, i64 %indvars.iv1067
  %154 = load i16** %arrayidx404, align 8, !tbaa !0
  %arrayidx405 = getelementptr inbounds i16* %154, i64 %indvars.iv1065
  %155 = load i16* %arrayidx405, align 2, !tbaa !5
  %ref_idx413 = getelementptr inbounds %struct.storable_picture* %138, i64 0, i32 32
  %156 = load i16**** %ref_idx413, align 8, !tbaa !0
  %157 = load i16*** %156, align 8, !tbaa !0
  %arrayidx415 = getelementptr inbounds i16** %157, i64 %indvars.iv1067
  %158 = load i16** %arrayidx415, align 8, !tbaa !0
  %arrayidx416 = getelementptr inbounds i16* %158, i64 %idxprom315
  store i16 %155, i16* %arrayidx416, align 2, !tbaa !5
  %arrayidx422 = getelementptr inbounds i16*** %152, i64 1
  %159 = load i16*** %arrayidx422, align 8, !tbaa !0
  %arrayidx423 = getelementptr inbounds i16** %159, i64 %indvars.iv1067
  %160 = load i16** %arrayidx423, align 8, !tbaa !0
  %arrayidx424 = getelementptr inbounds i16* %160, i64 %indvars.iv1065
  %161 = load i16* %arrayidx424, align 2, !tbaa !5
  %arrayidx433 = getelementptr inbounds i16*** %156, i64 1
  %162 = load i16*** %arrayidx433, align 8, !tbaa !0
  %arrayidx434 = getelementptr inbounds i16** %162, i64 %indvars.iv1067
  %163 = load i16** %arrayidx434, align 8, !tbaa !0
  %arrayidx435 = getelementptr inbounds i16* %163, i64 %idxprom315
  store i16 %161, i16* %arrayidx435, align 2, !tbaa !5
  %cmp437 = icmp sgt i16 %155, -1
  br i1 %cmp437, label %cond.true439, label %cond.end446

cond.true439:                                     ; preds = %for.body301
  %idxprom440 = sext i16 %155 to i64
  %arrayidx444 = getelementptr inbounds %struct.storable_picture* %132, i64 0, i32 6, i64 0, i64 %idxprom440
  %164 = load i64* %arrayidx444, align 8, !tbaa !4
  br label %cond.end446

cond.end446:                                      ; preds = %for.body301, %cond.true439
  %cond447 = phi i64 [ %164, %cond.true439 ], [ 0, %for.body301 ]
  %ref_id = getelementptr inbounds %struct.storable_picture* %132, i64 0, i32 34
  %165 = load i64**** %ref_id, align 8, !tbaa !0
  %166 = load i64*** %165, align 8, !tbaa !0
  %arrayidx452 = getelementptr inbounds i64** %166, i64 %indvars.iv1067
  %167 = load i64** %arrayidx452, align 8, !tbaa !0
  %arrayidx453 = getelementptr inbounds i64* %167, i64 %indvars.iv1065
  store i64 %cond447, i64* %arrayidx453, align 8, !tbaa !4
  %cmp454 = icmp sgt i16 %161, -1
  br i1 %cmp454, label %cond.true456, label %cond.end463

cond.true456:                                     ; preds = %cond.end446
  %idxprom457 = sext i16 %161 to i64
  %arrayidx461 = getelementptr inbounds %struct.storable_picture* %132, i64 0, i32 6, i64 1, i64 %idxprom457
  %168 = load i64* %arrayidx461, align 8, !tbaa !4
  br label %cond.end463

cond.end463:                                      ; preds = %cond.end446, %cond.true456
  %cond464 = phi i64 [ %168, %cond.true456 ], [ 0, %cond.end446 ]
  %arrayidx469 = getelementptr inbounds i64*** %165, i64 1
  %169 = load i64*** %arrayidx469, align 8, !tbaa !0
  %arrayidx470 = getelementptr inbounds i64** %169, i64 %indvars.iv1067
  %170 = load i64** %arrayidx470, align 8, !tbaa !0
  %arrayidx471 = getelementptr inbounds i64* %170, i64 %indvars.iv1065
  store i64 %cond464, i64* %arrayidx471, align 8, !tbaa !4
  br i1 %cmp437, label %cond.true474, label %cond.end480

cond.true474:                                     ; preds = %cond.end463
  %idxprom475 = sext i16 %155 to i64
  %arrayidx478 = getelementptr inbounds %struct.storable_picture* %132, i64 0, i32 7, i64 0, i64 %idxprom475
  %171 = load i64* %arrayidx478, align 8, !tbaa !4
  br label %cond.end480

cond.end480:                                      ; preds = %cond.end463, %cond.true474
  %cond481 = phi i64 [ %171, %cond.true474 ], [ 0, %cond.end463 ]
  %ref_id489 = getelementptr inbounds %struct.storable_picture* %138, i64 0, i32 34
  %172 = load i64**** %ref_id489, align 8, !tbaa !0
  %173 = load i64*** %172, align 8, !tbaa !0
  %arrayidx491 = getelementptr inbounds i64** %173, i64 %indvars.iv1067
  %174 = load i64** %arrayidx491, align 8, !tbaa !0
  %arrayidx492 = getelementptr inbounds i64* %174, i64 %idxprom315
  store i64 %cond481, i64* %arrayidx492, align 8, !tbaa !4
  br i1 %cmp454, label %cond.true495, label %cond.end502

cond.true495:                                     ; preds = %cond.end480
  %idxprom496 = sext i16 %161 to i64
  %arrayidx500 = getelementptr inbounds %struct.storable_picture* %132, i64 0, i32 7, i64 1, i64 %idxprom496
  %175 = load i64* %arrayidx500, align 8, !tbaa !4
  br label %cond.end502

cond.end502:                                      ; preds = %cond.end480, %cond.true495
  %cond503 = phi i64 [ %175, %cond.true495 ], [ 0, %cond.end480 ]
  %arrayidx512 = getelementptr inbounds i64*** %172, i64 1
  %176 = load i64*** %arrayidx512, align 8, !tbaa !0
  %arrayidx513 = getelementptr inbounds i64** %176, i64 %indvars.iv1067
  %177 = load i64** %arrayidx513, align 8, !tbaa !0
  %arrayidx514 = getelementptr inbounds i64* %177, i64 %idxprom315
  store i64 %cond503, i64* %arrayidx514, align 8, !tbaa !4
  %178 = load %struct.storable_picture** %bottom_field56, align 8, !tbaa !0
  %mv518 = getelementptr inbounds %struct.storable_picture* %178, i64 0, i32 35
  %179 = load i16***** %mv518, align 8, !tbaa !0
  %180 = load i16**** %179, align 8, !tbaa !0
  %arrayidx520 = getelementptr inbounds i16*** %180, i64 %indvars.iv1067
  %181 = load i16*** %arrayidx520, align 8, !tbaa !0
  %arrayidx521 = getelementptr inbounds i16** %181, i64 %indvars.iv1065
  %182 = load i16** %arrayidx521, align 8, !tbaa !0
  %183 = load i16* %182, align 2, !tbaa !5
  %arrayidx534 = getelementptr inbounds i16** %141, i64 %idxprom306
  %184 = load i16** %arrayidx534, align 8, !tbaa !0
  store i16 %183, i16* %184, align 2, !tbaa !5
  %arrayidx543 = getelementptr inbounds i16* %182, i64 1
  %185 = load i16* %arrayidx543, align 2, !tbaa !5
  %arrayidx556 = getelementptr inbounds i16* %184, i64 1
  store i16 %185, i16* %arrayidx556, align 2, !tbaa !5
  %arrayidx561 = getelementptr inbounds i16**** %179, i64 1
  %186 = load i16**** %arrayidx561, align 8, !tbaa !0
  %arrayidx562 = getelementptr inbounds i16*** %186, i64 %indvars.iv1067
  %187 = load i16*** %arrayidx562, align 8, !tbaa !0
  %arrayidx563 = getelementptr inbounds i16** %187, i64 %indvars.iv1065
  %188 = load i16** %arrayidx563, align 8, !tbaa !0
  %189 = load i16* %188, align 2, !tbaa !5
  %arrayidx576 = getelementptr inbounds i16** %149, i64 %idxprom306
  %190 = load i16** %arrayidx576, align 8, !tbaa !0
  store i16 %189, i16* %190, align 2, !tbaa !5
  %arrayidx585 = getelementptr inbounds i16* %188, i64 1
  %191 = load i16* %arrayidx585, align 2, !tbaa !5
  %arrayidx598 = getelementptr inbounds i16* %190, i64 1
  store i16 %191, i16* %arrayidx598, align 2, !tbaa !5
  %ref_idx602 = getelementptr inbounds %struct.storable_picture* %178, i64 0, i32 32
  %192 = load i16**** %ref_idx602, align 8, !tbaa !0
  %193 = load i16*** %192, align 8, !tbaa !0
  %arrayidx604 = getelementptr inbounds i16** %193, i64 %indvars.iv1067
  %194 = load i16** %arrayidx604, align 8, !tbaa !0
  %arrayidx605 = getelementptr inbounds i16* %194, i64 %indvars.iv1065
  %195 = load i16* %arrayidx605, align 2, !tbaa !5
  %arrayidx617 = getelementptr inbounds i16* %158, i64 %idxprom306
  store i16 %195, i16* %arrayidx617, align 2, !tbaa !5
  %arrayidx623 = getelementptr inbounds i16*** %192, i64 1
  %196 = load i16*** %arrayidx623, align 8, !tbaa !0
  %arrayidx624 = getelementptr inbounds i16** %196, i64 %indvars.iv1067
  %197 = load i16** %arrayidx624, align 8, !tbaa !0
  %arrayidx625 = getelementptr inbounds i16* %197, i64 %indvars.iv1065
  %198 = load i16* %arrayidx625, align 2, !tbaa !5
  %arrayidx637 = getelementptr inbounds i16* %163, i64 %idxprom306
  store i16 %198, i16* %arrayidx637, align 2, !tbaa !5
  %cmp639 = icmp sgt i16 %195, -1
  br i1 %cmp639, label %cond.true641, label %cond.end648

cond.true641:                                     ; preds = %cond.end502
  %idxprom642 = sext i16 %195 to i64
  %arrayidx646 = getelementptr inbounds %struct.storable_picture* %178, i64 0, i32 6, i64 0, i64 %idxprom642
  %199 = load i64* %arrayidx646, align 8, !tbaa !4
  br label %cond.end648

cond.end648:                                      ; preds = %cond.end502, %cond.true641
  %cond649 = phi i64 [ %199, %cond.true641 ], [ 0, %cond.end502 ]
  %ref_id653 = getelementptr inbounds %struct.storable_picture* %178, i64 0, i32 34
  %200 = load i64**** %ref_id653, align 8, !tbaa !0
  %201 = load i64*** %200, align 8, !tbaa !0
  %arrayidx655 = getelementptr inbounds i64** %201, i64 %indvars.iv1067
  %202 = load i64** %arrayidx655, align 8, !tbaa !0
  %arrayidx656 = getelementptr inbounds i64* %202, i64 %indvars.iv1065
  store i64 %cond649, i64* %arrayidx656, align 8, !tbaa !4
  %cmp657 = icmp sgt i16 %198, -1
  br i1 %cmp657, label %cond.true659, label %cond.end666

cond.true659:                                     ; preds = %cond.end648
  %idxprom660 = sext i16 %198 to i64
  %arrayidx664 = getelementptr inbounds %struct.storable_picture* %178, i64 0, i32 6, i64 1, i64 %idxprom660
  %203 = load i64* %arrayidx664, align 8, !tbaa !4
  br label %cond.end666

cond.end666:                                      ; preds = %cond.end648, %cond.true659
  %cond667 = phi i64 [ %203, %cond.true659 ], [ 0, %cond.end648 ]
  %arrayidx672 = getelementptr inbounds i64*** %200, i64 1
  %204 = load i64*** %arrayidx672, align 8, !tbaa !0
  %arrayidx673 = getelementptr inbounds i64** %204, i64 %indvars.iv1067
  %205 = load i64** %arrayidx673, align 8, !tbaa !0
  %arrayidx674 = getelementptr inbounds i64* %205, i64 %indvars.iv1065
  store i64 %cond667, i64* %arrayidx674, align 8, !tbaa !4
  br i1 %cmp639, label %cond.true677, label %cond.end684

cond.true677:                                     ; preds = %cond.end666
  %idxprom678 = sext i16 %195 to i64
  %arrayidx682 = getelementptr inbounds %struct.storable_picture* %178, i64 0, i32 7, i64 0, i64 %idxprom678
  %206 = load i64* %arrayidx682, align 8, !tbaa !4
  br label %cond.end684

cond.end684:                                      ; preds = %cond.end666, %cond.true677
  %cond685 = phi i64 [ %206, %cond.true677 ], [ -1, %cond.end666 ]
  %arrayidx697 = getelementptr inbounds i64* %174, i64 %idxprom306
  store i64 %cond685, i64* %arrayidx697, align 8, !tbaa !4
  br i1 %cmp657, label %cond.true700, label %cond.end707

cond.true700:                                     ; preds = %cond.end684
  %idxprom701 = sext i16 %198 to i64
  %arrayidx705 = getelementptr inbounds %struct.storable_picture* %178, i64 0, i32 7, i64 1, i64 %idxprom701
  %207 = load i64* %arrayidx705, align 8, !tbaa !4
  br label %cond.end707

cond.end707:                                      ; preds = %cond.end684, %cond.true700
  %cond708 = phi i64 [ %207, %cond.true700 ], [ -1, %cond.end684 ]
  %arrayidx720 = getelementptr inbounds i64* %177, i64 %idxprom306
  store i64 %cond708, i64* %arrayidx720, align 8, !tbaa !4
  %indvars.iv.next1066 = add i64 %indvars.iv1065, 1
  %size_y297 = getelementptr inbounds %struct.storable_picture* %132, i64 0, i32 19
  %208 = load i32* %size_y297, align 4, !tbaa !3
  %div298 = sdiv i32 %208, 4
  %209 = trunc i64 %indvars.iv.next1066 to i32
  %cmp299 = icmp slt i32 %209, %div298
  br i1 %cmp299, label %for.body301, label %for.inc724

for.inc724:                                       ; preds = %cond.end707, %for.cond295.preheader
  %210 = phi %struct.storable_picture* [ %123, %for.cond295.preheader ], [ %132, %cond.end707 ]
  %indvars.iv.next1068 = add i64 %indvars.iv1067, 1
  %size_x290 = getelementptr inbounds %struct.storable_picture* %210, i64 0, i32 18
  %211 = load i32* %size_x290, align 4, !tbaa !3
  %div291 = sdiv i32 %211, 4
  %212 = trunc i64 %indvars.iv.next1068 to i32
  %cmp292 = icmp slt i32 %212, %div291
  br i1 %cmp292, label %for.cond295.preheader, label %for.end726

for.end726:                                       ; preds = %for.inc724, %for.cond288.preheader
  %213 = phi i32 [ %118, %for.cond288.preheader ], [ %211, %for.inc724 ]
  %214 = phi %struct.storable_picture* [ %111, %for.cond288.preheader ], [ %210, %for.inc724 ]
  %215 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %215, i64 0, i32 25
  %216 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool727 = icmp eq i32 %216, 0
  br i1 %tobool727, label %for.cond730.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end726
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %215, i64 0, i32 27
  %217 = load i32* %direct_8x8_inference_flag, align 4, !tbaa !1
  %tobool728 = icmp ne i32 %217, 0
  %cmp7341039 = icmp sgt i32 %213, 3
  %or.cond = and i1 %tobool728, %cmp7341039
  br i1 %or.cond, label %for.cond737.preheader, label %if.end762

for.cond730.preheader:                            ; preds = %for.end726
  %cmp7341039.old = icmp sgt i32 %213, 3
  br i1 %cmp7341039.old, label %for.cond737.preheader, label %if.end762

for.cond737.preheader:                            ; preds = %lor.lhs.false, %for.cond730.preheader, %for.inc759
  %218 = phi %struct.storable_picture* [ %229, %for.inc759 ], [ %214, %for.cond730.preheader ], [ %214, %lor.lhs.false ]
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %for.inc759 ], [ 0, %for.cond730.preheader ], [ 0, %lor.lhs.false ]
  %size_y7391033 = getelementptr inbounds %struct.storable_picture* %218, i64 0, i32 19
  %219 = load i32* %size_y7391033, align 4, !tbaa !3
  %cmp7411035 = icmp sgt i32 %219, 3
  br i1 %cmp7411035, label %for.body743, label %for.inc759

for.body743:                                      ; preds = %for.cond737.preheader, %for.body743
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body743 ], [ 0, %for.cond737.preheader ]
  %220 = phi %struct.storable_picture* [ %226, %for.body743 ], [ %218, %for.cond737.preheader ]
  %field_frame747 = getelementptr inbounds %struct.storable_picture* %220, i64 0, i32 37
  %221 = load i8*** %field_frame747, align 8, !tbaa !0
  %arrayidx748 = getelementptr inbounds i8** %221, i64 %indvars.iv1063
  %222 = load i8** %arrayidx748, align 8, !tbaa !0
  %arrayidx749 = getelementptr inbounds i8* %222, i64 %indvars.iv
  store i8 1, i8* %arrayidx749, align 1, !tbaa !1
  %223 = load %struct.storable_picture** %bottom_field56, align 8, !tbaa !0
  %field_frame753 = getelementptr inbounds %struct.storable_picture* %223, i64 0, i32 37
  %224 = load i8*** %field_frame753, align 8, !tbaa !0
  %arrayidx754 = getelementptr inbounds i8** %224, i64 %indvars.iv1063
  %225 = load i8** %arrayidx754, align 8, !tbaa !0
  %arrayidx755 = getelementptr inbounds i8* %225, i64 %indvars.iv
  store i8 1, i8* %arrayidx755, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %226 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %size_y739 = getelementptr inbounds %struct.storable_picture* %226, i64 0, i32 19
  %227 = load i32* %size_y739, align 4, !tbaa !3
  %div740 = sdiv i32 %227, 4
  %228 = trunc i64 %indvars.iv.next to i32
  %cmp741 = icmp slt i32 %228, %div740
  br i1 %cmp741, label %for.body743, label %for.inc759

for.inc759:                                       ; preds = %for.body743, %for.cond737.preheader
  %229 = phi %struct.storable_picture* [ %218, %for.cond737.preheader ], [ %226, %for.body743 ]
  %indvars.iv.next1064 = add i64 %indvars.iv1063, 1
  %size_x732 = getelementptr inbounds %struct.storable_picture* %229, i64 0, i32 18
  %230 = load i32* %size_x732, align 4, !tbaa !3
  %div733 = sdiv i32 %230, 4
  %231 = trunc i64 %indvars.iv.next1064 to i32
  %cmp734 = icmp slt i32 %231, %div733
  br i1 %cmp734, label %for.cond737.preheader, label %if.end762

if.end762:                                        ; preds = %lor.lhs.false, %for.cond730.preheader, %for.inc759
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @alloc_ref_pic_list_reordering_buffer(%struct.Slice* nocapture %currSlice) #1 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.then [
    i32 2, label %if.else
    i32 4, label %if.else
  ]

if.then:                                          ; preds = %entry
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 79
  %2 = load i32* %num_ref_idx_l0_active, align 4, !tbaa !3
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 4) #6
  %3 = bitcast i8* %call to i32*
  %remapping_of_pic_nums_idc_l0 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 11
  store i32* %3, i32** %remapping_of_pic_nums_idc_l0, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  tail call void @no_mem_exit(i8* getelementptr inbounds ([67 x i8]* @.str15, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %call7 = tail call noalias i8* @calloc(i64 %conv, i64 4) #6
  %4 = bitcast i8* %call7 to i32*
  %abs_diff_pic_num_minus1_l0 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 12
  store i32* %4, i32** %abs_diff_pic_num_minus1_l0, align 8, !tbaa !0
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([65 x i8]* @.str16, i64 0, i64 0)) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %call13 = tail call noalias i8* @calloc(i64 %conv, i64 4) #6
  %5 = bitcast i8* %call13 to i32*
  %long_term_pic_idx_l0 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 13
  store i32* %5, i32** %long_term_pic_idx_l0, align 8, !tbaa !0
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end11
  tail call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0)) #6
  br label %if.end21

if.else:                                          ; preds = %entry, %entry
  %remapping_of_pic_nums_idc_l018 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 11
  %6 = bitcast i32** %remapping_of_pic_nums_idc_l018 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false)
  br label %if.end21

if.end21:                                         ; preds = %if.end11, %if.then16, %if.else
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type23 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 6
  %8 = load i32* %type23, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %8, 1
  br i1 %cmp24, label %if.then26, label %if.else45

if.then26:                                        ; preds = %if.end21
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 80
  %9 = load i32* %num_ref_idx_l1_active, align 4, !tbaa !3
  %add22 = add nsw i32 %9, 1
  %conv27 = sext i32 %add22 to i64
  %call28 = tail call noalias i8* @calloc(i64 %conv27, i64 4) #6
  %10 = bitcast i8* %call28 to i32*
  %remapping_of_pic_nums_idc_l1 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 15
  store i32* %10, i32** %remapping_of_pic_nums_idc_l1, align 8, !tbaa !0
  %cmp29 = icmp eq i8* %call28, null
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then26
  tail call void @no_mem_exit(i8* getelementptr inbounds ([67 x i8]* @.str18, i64 0, i64 0)) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then26
  %call34 = tail call noalias i8* @calloc(i64 %conv27, i64 4) #6
  %11 = bitcast i8* %call34 to i32*
  %abs_diff_pic_num_minus1_l1 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 16
  store i32* %11, i32** %abs_diff_pic_num_minus1_l1, align 8, !tbaa !0
  %cmp35 = icmp eq i8* %call34, null
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  tail call void @no_mem_exit(i8* getelementptr inbounds ([65 x i8]* @.str19, i64 0, i64 0)) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end32
  %call40 = tail call noalias i8* @calloc(i64 %conv27, i64 4) #6
  %12 = bitcast i8* %call40 to i32*
  %long_term_pic_idx_l1 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 17
  store i32* %12, i32** %long_term_pic_idx_l1, align 8, !tbaa !0
  %cmp41 = icmp eq i8* %call40, null
  br i1 %cmp41, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.end38
  tail call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8]* @.str20, i64 0, i64 0)) #6
  br label %if.end49

if.else45:                                        ; preds = %if.end21
  %remapping_of_pic_nums_idc_l146 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 15
  %13 = bitcast i32** %remapping_of_pic_nums_idc_l146 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  br label %if.end49

if.end49:                                         ; preds = %if.end38, %if.then43, %if.else45
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_ref_pic_list_reordering_buffer(%struct.Slice* nocapture %currSlice) #1 {
entry:
  %remapping_of_pic_nums_idc_l0 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 11
  %0 = load i32** %remapping_of_pic_nums_idc_l0, align 8, !tbaa !0
  %tobool = icmp eq i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  tail call void @free(i8* %1) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %abs_diff_pic_num_minus1_l0 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 12
  %2 = load i32** %abs_diff_pic_num_minus1_l0, align 8, !tbaa !0
  %tobool2 = icmp eq i32* %2, null
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = bitcast i32* %2 to i8*
  tail call void @free(i8* %3) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  %long_term_pic_idx_l0 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 13
  %4 = load i32** %long_term_pic_idx_l0, align 8, !tbaa !0
  %tobool6 = icmp eq i32* %4, null
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %5 = bitcast i32* %4 to i8*
  tail call void @free(i8* %5) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end5, %if.then7
  %remapping_of_pic_nums_idc_l1 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 15
  %6 = bitcast i32** %remapping_of_pic_nums_idc_l0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false)
  %7 = load i32** %remapping_of_pic_nums_idc_l1, align 8, !tbaa !0
  %tobool13 = icmp eq i32* %7, null
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end9
  %8 = bitcast i32* %7 to i8*
  tail call void @free(i8* %8) #6
  br label %if.end16

if.end16:                                         ; preds = %if.end9, %if.then14
  %abs_diff_pic_num_minus1_l1 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 16
  %9 = load i32** %abs_diff_pic_num_minus1_l1, align 8, !tbaa !0
  %tobool17 = icmp eq i32* %9, null
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  %10 = bitcast i32* %9 to i8*
  tail call void @free(i8* %10) #6
  br label %if.end20

if.end20:                                         ; preds = %if.end16, %if.then18
  %long_term_pic_idx_l1 = getelementptr inbounds %struct.Slice* %currSlice, i64 0, i32 17
  %11 = load i32** %long_term_pic_idx_l1, align 8, !tbaa !0
  %tobool21 = icmp eq i32* %11, null
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end20
  %12 = bitcast i32* %11 to i8*
  tail call void @free(i8* %12) #6
  br label %if.end24

if.end24:                                         ; preds = %if.end20, %if.then22
  %13 = bitcast i32** %remapping_of_pic_nums_idc_l1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fill_frame_num_gap(%struct.ImageParameters* nocapture %img) #1 {
entry:
  %0 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %add = add i32 %0, 4
  %shl = shl nuw i32 1, %add
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 113
  %1 = load i32* %nal_reference_idc, align 4, !tbaa !3
  store i32 1, i32* %nal_reference_idc, align 4, !tbaa !3
  %pre_frame_num = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 146
  %2 = load i32* %pre_frame_num, align 4, !tbaa !3
  %frame_num = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 105
  %3 = load i32* %frame_num, align 4, !tbaa !3
  %add2.pn22 = add nsw i32 %2, 1
  %UnusedShortTermFrameNum.023 = srem i32 %add2.pn22, %shl
  %cmp24 = icmp eq i32 %3, %UnusedShortTermFrameNum.023
  br i1 %cmp24, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %width = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 13
  %height = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 15
  %width_cr = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 14
  %height_cr = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 16
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 114
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %UnusedShortTermFrameNum.025 = phi i32 [ %UnusedShortTermFrameNum.023, %while.body.lr.ph ], [ %UnusedShortTermFrameNum.0, %while.body ]
  %4 = load i32* %width, align 4, !tbaa !3
  %5 = load i32* %height, align 4, !tbaa !3
  %6 = load i32* %width_cr, align 4, !tbaa !3
  %7 = load i32* %height_cr, align 4, !tbaa !3
  %call = tail call %struct.storable_picture* @alloc_storable_picture(i32 0, i32 %4, i32 %5, i32 %6, i32 %7) #7
  %coded_frame = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 23
  store i32 1, i32* %coded_frame, align 4, !tbaa !3
  %pic_num = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 11
  store i32 %UnusedShortTermFrameNum.025, i32* %pic_num, align 4, !tbaa !3
  %non_existing = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 17
  store i32 1, i32* %non_existing, align 4, !tbaa !3
  %is_output = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 16
  store i32 1, i32* %is_output, align 4, !tbaa !3
  store i32 0, i32* %adaptive_ref_pic_buffering_flag, align 4, !tbaa !3
  tail call void @store_picture_in_dpb(%struct.storable_picture* %call) #7
  %add2.pn = add nsw i32 %UnusedShortTermFrameNum.025, 1
  %UnusedShortTermFrameNum.0 = srem i32 %add2.pn, %shl
  %cmp = icmp eq i32 %3, %UnusedShortTermFrameNum.0
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  store i32 %1, i32* %nal_reference_idc, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.colocated_params* @alloc_colocated(i32 %size_x, i32 %size_y, i32 %mb_adaptive_frame_field_flag) #1 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 4880) #6
  %0 = bitcast i8* %call to %struct.colocated_params*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8]* @.str21, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %size_x1 = getelementptr inbounds i8* %call, i64 4
  %1 = bitcast i8* %size_x1 to i32*
  store i32 %size_x, i32* %1, align 4, !tbaa !3
  %size_y2 = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %size_y2 to i32*
  store i32 %size_y, i32* %2, align 4, !tbaa !3
  %ref_idx = getelementptr inbounds i8* %call, i64 1600
  %3 = bitcast i8* %ref_idx to i16****
  %div = sdiv i32 %size_x, 4
  %div3 = sdiv i32 %size_y, 4
  %call4 = tail call i32 @get_mem3Dshort(i16**** %3, i32 2, i32 %div, i32 %div3) #6
  %ref_pic_id = getelementptr inbounds i8* %call, i64 1608
  %4 = bitcast i8* %ref_pic_id to i64****
  %call7 = tail call i32 @get_mem3Dint64(i64**** %4, i32 2, i32 %div, i32 %div3) #6
  %mv = getelementptr inbounds i8* %call, i64 1616
  %5 = bitcast i8* %mv to i16*****
  %call10 = tail call i32 @get_mem4Dshort(i16***** %5, i32 2, i32 %div, i32 %div3, i32 2) #6
  %moving_block = getelementptr inbounds i8* %call, i64 1624
  %6 = bitcast i8* %moving_block to i8***
  %call13 = tail call i32 @get_mem2D(i8*** %6, i32 %div, i32 %div3) #6
  %field_frame = getelementptr inbounds i8* %call, i64 4872
  %7 = bitcast i8* %field_frame to i8***
  %call16 = tail call i32 @get_mem2D(i8*** %7, i32 %div, i32 %div3) #6
  %tobool = icmp eq i32 %mb_adaptive_frame_field_flag, 0
  br i1 %tobool, label %if.end50, label %if.then17

if.then17:                                        ; preds = %if.end
  %top_ref_idx = getelementptr inbounds i8* %call, i64 3216
  %8 = bitcast i8* %top_ref_idx to i16****
  %div20 = sdiv i32 %size_y, 8
  %call21 = tail call i32 @get_mem3Dshort(i16**** %8, i32 2, i32 %div, i32 %div20) #6
  %top_ref_pic_id = getelementptr inbounds i8* %call, i64 3224
  %9 = bitcast i8* %top_ref_pic_id to i64****
  %call25 = tail call i32 @get_mem3Dint64(i64**** %9, i32 2, i32 %div, i32 %div20) #6
  %top_mv = getelementptr inbounds i8* %call, i64 3232
  %10 = bitcast i8* %top_mv to i16*****
  %call29 = tail call i32 @get_mem4Dshort(i16***** %10, i32 2, i32 %div, i32 %div20, i32 2) #6
  %top_moving_block = getelementptr inbounds i8* %call, i64 3240
  %11 = bitcast i8* %top_moving_block to i8***
  %call33 = tail call i32 @get_mem2D(i8*** %11, i32 %div, i32 %div20) #6
  %bottom_ref_idx = getelementptr inbounds i8* %call, i64 4832
  %12 = bitcast i8* %bottom_ref_idx to i16****
  %call37 = tail call i32 @get_mem3Dshort(i16**** %12, i32 2, i32 %div, i32 %div20) #6
  %bottom_ref_pic_id = getelementptr inbounds i8* %call, i64 4840
  %13 = bitcast i8* %bottom_ref_pic_id to i64****
  %call41 = tail call i32 @get_mem3Dint64(i64**** %13, i32 2, i32 %div, i32 %div20) #6
  %bottom_mv = getelementptr inbounds i8* %call, i64 4848
  %14 = bitcast i8* %bottom_mv to i16*****
  %call45 = tail call i32 @get_mem4Dshort(i16***** %14, i32 2, i32 %div, i32 %div20, i32 2) #6
  %bottom_moving_block = getelementptr inbounds i8* %call, i64 4856
  %15 = bitcast i8* %bottom_moving_block to i8***
  %call49 = tail call i32 @get_mem2D(i8*** %15, i32 %div, i32 %div20) #6
  br label %if.end50

if.end50:                                         ; preds = %if.end, %if.then17
  %mb_adaptive_frame_field_flag51 = bitcast i8* %call to i32*
  store i32 %mb_adaptive_frame_field_flag, i32* %mb_adaptive_frame_field_flag51, align 4, !tbaa !3
  ret %struct.colocated_params* %0
}

; Function Attrs: nounwind optsize uwtable
define void @free_colocated(%struct.colocated_params* %p) #1 {
entry:
  %tobool = icmp eq %struct.colocated_params* %p, null
  br i1 %tobool, label %if.end27, label %if.then

if.then:                                          ; preds = %entry
  %ref_idx = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 4
  %0 = load i16**** %ref_idx, align 8, !tbaa !0
  tail call void @free_mem3Dshort(i16*** %0, i32 2) #6
  %ref_pic_id = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 5
  %1 = load i64**** %ref_pic_id, align 8, !tbaa !0
  tail call void @free_mem3Dint64(i64*** %1, i32 2) #6
  %mv = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 6
  %2 = load i16***** %mv, align 8, !tbaa !0
  %size_x = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 1
  %3 = load i32* %size_x, align 4, !tbaa !3
  %div = sdiv i32 %3, 4
  tail call void @free_mem4Dshort(i16**** %2, i32 2, i32 %div) #6
  %moving_block = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 7
  %4 = load i8*** %moving_block, align 8, !tbaa !0
  %tobool1 = icmp eq i8** %4, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free_mem2D(i8** %4) #6
  store i8** null, i8*** %moving_block, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %field_frame = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 19
  %5 = load i8*** %field_frame, align 8, !tbaa !0
  %tobool5 = icmp eq i8** %5, null
  br i1 %tobool5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @free_mem2D(i8** %5) #6
  store i8** null, i8*** %field_frame, align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then6
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 0
  %6 = load i32* %mb_adaptive_frame_field_flag, align 4, !tbaa !3
  %tobool10 = icmp eq i32 %6, 0
  br i1 %tobool10, label %if.end26, label %if.then11

if.then11:                                        ; preds = %if.end9
  %top_ref_idx = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 9
  %7 = load i16**** %top_ref_idx, align 8, !tbaa !0
  tail call void @free_mem3Dshort(i16*** %7, i32 2) #6
  %top_ref_pic_id = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 10
  %8 = load i64**** %top_ref_pic_id, align 8, !tbaa !0
  tail call void @free_mem3Dint64(i64*** %8, i32 2) #6
  %top_mv = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 11
  %9 = load i16***** %top_mv, align 8, !tbaa !0
  %10 = load i32* %size_x, align 4, !tbaa !3
  %div13 = sdiv i32 %10, 4
  tail call void @free_mem4Dshort(i16**** %9, i32 2, i32 %div13) #6
  %top_moving_block = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 12
  %11 = load i8*** %top_moving_block, align 8, !tbaa !0
  %tobool14 = icmp eq i8** %11, null
  br i1 %tobool14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.then11
  tail call void @free_mem2D(i8** %11) #6
  store i8** null, i8*** %top_moving_block, align 8, !tbaa !0
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.then15
  %bottom_ref_idx = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 14
  %12 = load i16**** %bottom_ref_idx, align 8, !tbaa !0
  tail call void @free_mem3Dshort(i16*** %12, i32 2) #6
  %bottom_ref_pic_id = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 15
  %13 = load i64**** %bottom_ref_pic_id, align 8, !tbaa !0
  tail call void @free_mem3Dint64(i64*** %13, i32 2) #6
  %bottom_mv = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 16
  %14 = load i16***** %bottom_mv, align 8, !tbaa !0
  %15 = load i32* %size_x, align 4, !tbaa !3
  %div20 = sdiv i32 %15, 4
  tail call void @free_mem4Dshort(i16**** %14, i32 2, i32 %div20) #6
  %bottom_moving_block = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 17
  %16 = load i8*** %bottom_moving_block, align 8, !tbaa !0
  %tobool21 = icmp eq i8** %16, null
  br i1 %tobool21, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end18
  tail call void @free_mem2D(i8** %16) #6
  br label %if.end26

if.end26:                                         ; preds = %if.end18, %if.end9, %if.then22
  %17 = bitcast %struct.colocated_params* %p to i8*
  tail call void @free(i8* %17) #6
  br label %if.end27

if.end27:                                         ; preds = %entry, %if.end26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @compute_colocated(%struct.colocated_params* %p, %struct.storable_picture*** nocapture %listX) #1 {
entry:
  %arrayidx = getelementptr inbounds %struct.storable_picture*** %listX, i64 1
  %0 = load %struct.storable_picture*** %arrayidx, align 8, !tbaa !0
  %1 = load %struct.storable_picture** %0, align 8, !tbaa !0
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 90
  %3 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.storable_picture*** %listX, i64 3
  %4 = load %struct.storable_picture*** %arrayidx2, align 8, !tbaa !0
  %5 = load %struct.storable_picture** %4, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds %struct.storable_picture*** %listX, i64 5
  %6 = load %struct.storable_picture*** %arrayidx4, align 8, !tbaa !0
  %7 = load %struct.storable_picture** %6, align 8, !tbaa !0
  br label %if.end22

if.else:                                          ; preds = %entry
  %structure = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 7
  %8 = load i32* %structure, align 4, !tbaa !3
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end22, label %if.then6

if.then6:                                         ; preds = %if.else
  %structure8 = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 0
  %9 = load i32* %structure8, align 4, !tbaa !1
  %cmp9 = icmp eq i32 %8, %9
  br i1 %cmp9, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %coded_frame = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 23
  %10 = load i32* %coded_frame, align 4, !tbaa !3
  %tobool10 = icmp eq i32 %10, 0
  br i1 %tobool10, label %if.end22, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %cmp13 = icmp eq i32 %8, 1
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.then11
  %top_field = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 38
  %11 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  br label %if.end22

if.else17:                                        ; preds = %if.then11
  %bottom_field = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 39
  %12 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.then6, %if.else, %if.then14, %if.else17, %if.then
  %fs_bottom.0 = phi %struct.storable_picture* [ %7, %if.then ], [ %11, %if.then14 ], [ %12, %if.else17 ], [ %1, %land.lhs.true ], [ %1, %if.then6 ], [ %1, %if.else ]
  %fs_top.0 = phi %struct.storable_picture* [ %5, %if.then ], [ %11, %if.then14 ], [ %12, %if.else17 ], [ %1, %land.lhs.true ], [ %1, %if.then6 ], [ %1, %if.else ]
  %fs.0 = phi %struct.storable_picture* [ %1, %if.then ], [ %11, %if.then14 ], [ %12, %if.else17 ], [ %1, %land.lhs.true ], [ %1, %if.then6 ], [ %1, %if.else ]
  %13 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %13, i64 0, i32 25
  %14 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool23 = icmp eq i32 %14, 0
  br i1 %tobool23, label %for.cond.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end22
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %13, i64 0, i32 27
  %15 = load i32* %direct_8x8_inference_flag, align 4, !tbaa !1
  %tobool24 = icmp eq i32 %15, 0
  br i1 %tobool24, label %if.end395, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false, %if.end22
  %size_y = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 19
  %16 = load i32* %size_y, align 4, !tbaa !3
  %cmp263520 = icmp sgt i32 %16, 3
  br i1 %cmp263520, label %for.cond27.preheader.lr.ph, label %if.end395

for.cond27.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %size_x = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 18
  %mv287 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 35
  %mv294 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 6
  %ref_idx343 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 32
  %ref_idx349 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 4
  %ref_id367 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 34
  %ref_pic_id373 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 5
  %is_long_term389 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 14
  %is_long_term390 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 18
  %field_frame = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 37
  %poc39 = getelementptr inbounds %struct.storable_picture* %fs_bottom.0, i64 0, i32 1
  %poc41 = getelementptr inbounds %struct.storable_picture* %fs_top.0, i64 0, i32 1
  %mv = getelementptr inbounds %struct.storable_picture* %fs_top.0, i64 0, i32 35
  %ref_idx = getelementptr inbounds %struct.storable_picture* %fs_top.0, i64 0, i32 32
  %is_long_term = getelementptr inbounds %struct.storable_picture* %fs_top.0, i64 0, i32 14
  %mv164 = getelementptr inbounds %struct.storable_picture* %fs_bottom.0, i64 0, i32 35
  %ref_idx224 = getelementptr inbounds %struct.storable_picture* %fs_bottom.0, i64 0, i32 32
  %is_long_term281 = getelementptr inbounds %struct.storable_picture* %fs_bottom.0, i64 0, i32 14
  %.pre3557 = load i32* %size_x, align 4, !tbaa !3
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond27.preheader.lr.ph, %for.inc392
  %17 = phi i32 [ %16, %for.cond27.preheader.lr.ph ], [ %162, %for.inc392 ]
  %18 = phi i32 [ %.pre3557, %for.cond27.preheader.lr.ph ], [ %163, %for.inc392 ]
  %indvars.iv3543 = phi i64 [ 0, %for.cond27.preheader.lr.ph ], [ %indvars.iv.next3544, %for.inc392 ]
  %cmp293516 = icmp sgt i32 %18, 3
  br i1 %cmp293516, label %for.body30.lr.ph, label %for.inc392

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %19 = trunc i64 %indvars.iv3543 to i32
  %div47 = sdiv i32 %19, 2
  %idxprom48 = sext i32 %div47 to i64
  %div132 = sdiv i32 %19, 8
  %mul = shl i32 %div132, 2
  %add = add nsw i32 %mul, %div47
  %idxprom133 = sext i32 %add to i64
  %add250 = add i32 %div47, 4
  %add251 = add i32 %add250, %mul
  %idxprom252 = sext i32 %add251 to i64
  br label %for.body30

for.body30:                                       ; preds = %for.inc, %for.body30.lr.ph
  %indvars.iv3541 = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next3542, %for.inc ]
  %20 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag31 = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 90
  %21 = load i32* %MbaffFrameFlag31, align 4, !tbaa !3
  %tobool32 = icmp eq i32 %21, 0
  br i1 %tobool32, label %if.else284, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %for.body30
  %22 = load i8*** %field_frame, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i8** %22, i64 %indvars.iv3541
  %23 = load i8** %arrayidx35, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i8* %23, i64 %indvars.iv3543
  %24 = load i8* %arrayidx36, align 1, !tbaa !1
  %tobool37 = icmp eq i8 %24, 0
  br i1 %tobool37, label %if.else284, label %if.then38

if.then38:                                        ; preds = %land.lhs.true33
  %25 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %poc = getelementptr inbounds %struct.storable_picture* %25, i64 0, i32 1
  %26 = load i32* %poc, align 4, !tbaa !3
  %27 = load i32* %poc39, align 4, !tbaa !3
  %sub = sub nsw i32 %26, %27
  %ispos3475 = icmp sgt i32 %sub, -1
  %neg3476 = sub i32 0, %sub
  %28 = select i1 %ispos3475, i32 %sub, i32 %neg3476
  %29 = load i32* %poc41, align 4, !tbaa !3
  %sub42 = sub nsw i32 %26, %29
  %ispos3477 = icmp sgt i32 %sub42, -1
  %neg3478 = sub i32 0, %sub42
  %30 = select i1 %ispos3477, i32 %sub42, i32 %neg3478
  %cmp44 = icmp sgt i32 %28, %30
  br i1 %cmp44, label %if.then46, label %if.else160

if.then46:                                        ; preds = %if.then38
  %31 = load i16***** %mv, align 8, !tbaa !0
  %32 = load i16**** %31, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i16*** %32, i64 %indvars.iv3541
  %33 = load i16*** %arrayidx51, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds i16** %33, i64 %idxprom48
  %34 = load i16** %arrayidx52, align 8, !tbaa !0
  %35 = load i16* %34, align 2, !tbaa !5
  %36 = load i16***** %mv294, align 8, !tbaa !0
  %37 = load i16**** %36, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds i16*** %37, i64 %indvars.iv3541
  %38 = load i16*** %arrayidx58, align 8, !tbaa !0
  %arrayidx59 = getelementptr inbounds i16** %38, i64 %indvars.iv3543
  %39 = load i16** %arrayidx59, align 8, !tbaa !0
  store i16 %35, i16* %39, align 2, !tbaa !5
  %arrayidx68 = getelementptr inbounds i16* %34, i64 1
  %40 = load i16* %arrayidx68, align 2, !tbaa !5
  %arrayidx75 = getelementptr inbounds i16* %39, i64 1
  store i16 %40, i16* %arrayidx75, align 2, !tbaa !5
  %arrayidx80 = getelementptr inbounds i16**** %31, i64 1
  %41 = load i16**** %arrayidx80, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds i16*** %41, i64 %indvars.iv3541
  %42 = load i16*** %arrayidx81, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i16** %42, i64 %idxprom48
  %43 = load i16** %arrayidx82, align 8, !tbaa !0
  %44 = load i16* %43, align 2, !tbaa !5
  %arrayidx87 = getelementptr inbounds i16**** %36, i64 1
  %45 = load i16**** %arrayidx87, align 8, !tbaa !0
  %arrayidx88 = getelementptr inbounds i16*** %45, i64 %indvars.iv3541
  %46 = load i16*** %arrayidx88, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i16** %46, i64 %indvars.iv3543
  %47 = load i16** %arrayidx89, align 8, !tbaa !0
  store i16 %44, i16* %47, align 2, !tbaa !5
  %arrayidx98 = getelementptr inbounds i16* %43, i64 1
  %48 = load i16* %arrayidx98, align 2, !tbaa !5
  %arrayidx105 = getelementptr inbounds i16* %47, i64 1
  store i16 %48, i16* %arrayidx105, align 2, !tbaa !5
  %49 = load i16**** %ref_idx, align 8, !tbaa !0
  %50 = load i16*** %49, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds i16** %50, i64 %indvars.iv3541
  %51 = load i16** %arrayidx110, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds i16* %51, i64 %idxprom48
  %52 = load i16* %arrayidx111, align 2, !tbaa !5
  %53 = load i16**** %ref_idx349, align 8, !tbaa !0
  %54 = load i16*** %53, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i16** %54, i64 %indvars.iv3541
  %55 = load i16** %arrayidx116, align 8, !tbaa !0
  %arrayidx117 = getelementptr inbounds i16* %55, i64 %indvars.iv3543
  store i16 %52, i16* %arrayidx117, align 2, !tbaa !5
  %arrayidx122 = getelementptr inbounds i16*** %49, i64 1
  %56 = load i16*** %arrayidx122, align 8, !tbaa !0
  %arrayidx123 = getelementptr inbounds i16** %56, i64 %indvars.iv3541
  %57 = load i16** %arrayidx123, align 8, !tbaa !0
  %arrayidx124 = getelementptr inbounds i16* %57, i64 %idxprom48
  %58 = load i16* %arrayidx124, align 2, !tbaa !5
  %arrayidx128 = getelementptr inbounds i16*** %53, i64 1
  %59 = load i16*** %arrayidx128, align 8, !tbaa !0
  %arrayidx129 = getelementptr inbounds i16** %59, i64 %indvars.iv3541
  %60 = load i16** %arrayidx129, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i16* %60, i64 %indvars.iv3543
  store i16 %58, i16* %arrayidx130, align 2, !tbaa !5
  %61 = load i64**** %ref_id367, align 8, !tbaa !0
  %62 = load i64*** %61, align 8, !tbaa !0
  %arrayidx136 = getelementptr inbounds i64** %62, i64 %indvars.iv3541
  %63 = load i64** %arrayidx136, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds i64* %63, i64 %idxprom133
  %64 = load i64* %arrayidx137, align 8, !tbaa !4
  %65 = load i64**** %ref_pic_id373, align 8, !tbaa !0
  %66 = load i64*** %65, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds i64** %66, i64 %indvars.iv3541
  %67 = load i64** %arrayidx141, align 8, !tbaa !0
  %arrayidx142 = getelementptr inbounds i64* %67, i64 %indvars.iv3543
  store i64 %64, i64* %arrayidx142, align 8, !tbaa !4
  %arrayidx150 = getelementptr inbounds i64*** %61, i64 1
  %68 = load i64*** %arrayidx150, align 8, !tbaa !0
  %arrayidx151 = getelementptr inbounds i64** %68, i64 %indvars.iv3541
  %69 = load i64** %arrayidx151, align 8, !tbaa !0
  %arrayidx152 = getelementptr inbounds i64* %69, i64 %idxprom133
  %70 = load i64* %arrayidx152, align 8, !tbaa !4
  %arrayidx156 = getelementptr inbounds i64*** %65, i64 1
  %71 = load i64*** %arrayidx156, align 8, !tbaa !0
  %arrayidx157 = getelementptr inbounds i64** %71, i64 %indvars.iv3541
  %72 = load i64** %arrayidx157, align 8, !tbaa !0
  %arrayidx158 = getelementptr inbounds i64* %72, i64 %indvars.iv3543
  store i64 %70, i64* %arrayidx158, align 8, !tbaa !4
  %73 = load i32* %is_long_term, align 4, !tbaa !3
  store i32 %73, i32* %is_long_term390, align 4, !tbaa !3
  br label %for.inc

if.else160:                                       ; preds = %if.then38
  %74 = load i16***** %mv164, align 8, !tbaa !0
  %75 = load i16**** %74, align 8, !tbaa !0
  %arrayidx166 = getelementptr inbounds i16*** %75, i64 %indvars.iv3541
  %76 = load i16*** %arrayidx166, align 8, !tbaa !0
  %arrayidx167 = getelementptr inbounds i16** %76, i64 %idxprom48
  %77 = load i16** %arrayidx167, align 8, !tbaa !0
  %78 = load i16* %77, align 2, !tbaa !5
  %79 = load i16***** %mv294, align 8, !tbaa !0
  %80 = load i16**** %79, align 8, !tbaa !0
  %arrayidx173 = getelementptr inbounds i16*** %80, i64 %indvars.iv3541
  %81 = load i16*** %arrayidx173, align 8, !tbaa !0
  %arrayidx174 = getelementptr inbounds i16** %81, i64 %indvars.iv3543
  %82 = load i16** %arrayidx174, align 8, !tbaa !0
  store i16 %78, i16* %82, align 2, !tbaa !5
  %arrayidx183 = getelementptr inbounds i16* %77, i64 1
  %83 = load i16* %arrayidx183, align 2, !tbaa !5
  %arrayidx190 = getelementptr inbounds i16* %82, i64 1
  store i16 %83, i16* %arrayidx190, align 2, !tbaa !5
  %arrayidx195 = getelementptr inbounds i16**** %74, i64 1
  %84 = load i16**** %arrayidx195, align 8, !tbaa !0
  %arrayidx196 = getelementptr inbounds i16*** %84, i64 %indvars.iv3541
  %85 = load i16*** %arrayidx196, align 8, !tbaa !0
  %arrayidx197 = getelementptr inbounds i16** %85, i64 %idxprom48
  %86 = load i16** %arrayidx197, align 8, !tbaa !0
  %87 = load i16* %86, align 2, !tbaa !5
  %arrayidx202 = getelementptr inbounds i16**** %79, i64 1
  %88 = load i16**** %arrayidx202, align 8, !tbaa !0
  %arrayidx203 = getelementptr inbounds i16*** %88, i64 %indvars.iv3541
  %89 = load i16*** %arrayidx203, align 8, !tbaa !0
  %arrayidx204 = getelementptr inbounds i16** %89, i64 %indvars.iv3543
  %90 = load i16** %arrayidx204, align 8, !tbaa !0
  store i16 %87, i16* %90, align 2, !tbaa !5
  %arrayidx213 = getelementptr inbounds i16* %86, i64 1
  %91 = load i16* %arrayidx213, align 2, !tbaa !5
  %arrayidx220 = getelementptr inbounds i16* %90, i64 1
  store i16 %91, i16* %arrayidx220, align 2, !tbaa !5
  %92 = load i16**** %ref_idx224, align 8, !tbaa !0
  %93 = load i16*** %92, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds i16** %93, i64 %indvars.iv3541
  %94 = load i16** %arrayidx226, align 8, !tbaa !0
  %arrayidx227 = getelementptr inbounds i16* %94, i64 %idxprom48
  %95 = load i16* %arrayidx227, align 2, !tbaa !5
  %96 = load i16**** %ref_idx349, align 8, !tbaa !0
  %97 = load i16*** %96, align 8, !tbaa !0
  %arrayidx232 = getelementptr inbounds i16** %97, i64 %indvars.iv3541
  %98 = load i16** %arrayidx232, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i16* %98, i64 %indvars.iv3543
  store i16 %95, i16* %arrayidx233, align 2, !tbaa !5
  %arrayidx238 = getelementptr inbounds i16*** %92, i64 1
  %99 = load i16*** %arrayidx238, align 8, !tbaa !0
  %arrayidx239 = getelementptr inbounds i16** %99, i64 %indvars.iv3541
  %100 = load i16** %arrayidx239, align 8, !tbaa !0
  %arrayidx240 = getelementptr inbounds i16* %100, i64 %idxprom48
  %101 = load i16* %arrayidx240, align 2, !tbaa !5
  %arrayidx244 = getelementptr inbounds i16*** %96, i64 1
  %102 = load i16*** %arrayidx244, align 8, !tbaa !0
  %arrayidx245 = getelementptr inbounds i16** %102, i64 %indvars.iv3541
  %103 = load i16** %arrayidx245, align 8, !tbaa !0
  %arrayidx246 = getelementptr inbounds i16* %103, i64 %indvars.iv3543
  store i16 %101, i16* %arrayidx246, align 2, !tbaa !5
  %104 = load i64**** %ref_id367, align 8, !tbaa !0
  %105 = load i64*** %104, align 8, !tbaa !0
  %arrayidx256 = getelementptr inbounds i64** %105, i64 %indvars.iv3541
  %106 = load i64** %arrayidx256, align 8, !tbaa !0
  %arrayidx257 = getelementptr inbounds i64* %106, i64 %idxprom252
  %107 = load i64* %arrayidx257, align 8, !tbaa !4
  %108 = load i64**** %ref_pic_id373, align 8, !tbaa !0
  %109 = load i64*** %108, align 8, !tbaa !0
  %arrayidx262 = getelementptr inbounds i64** %109, i64 %indvars.iv3541
  %110 = load i64** %arrayidx262, align 8, !tbaa !0
  %arrayidx263 = getelementptr inbounds i64* %110, i64 %indvars.iv3543
  store i64 %107, i64* %arrayidx263, align 8, !tbaa !4
  %arrayidx272 = getelementptr inbounds i64*** %104, i64 1
  %111 = load i64*** %arrayidx272, align 8, !tbaa !0
  %arrayidx273 = getelementptr inbounds i64** %111, i64 %indvars.iv3541
  %112 = load i64** %arrayidx273, align 8, !tbaa !0
  %arrayidx274 = getelementptr inbounds i64* %112, i64 %idxprom252
  %113 = load i64* %arrayidx274, align 8, !tbaa !4
  %arrayidx278 = getelementptr inbounds i64*** %108, i64 1
  %114 = load i64*** %arrayidx278, align 8, !tbaa !0
  %arrayidx279 = getelementptr inbounds i64** %114, i64 %indvars.iv3541
  %115 = load i64** %arrayidx279, align 8, !tbaa !0
  %arrayidx280 = getelementptr inbounds i64* %115, i64 %indvars.iv3543
  store i64 %113, i64* %arrayidx280, align 8, !tbaa !4
  %116 = load i32* %is_long_term281, align 4, !tbaa !3
  store i32 %116, i32* %is_long_term390, align 4, !tbaa !3
  br label %for.inc

if.else284:                                       ; preds = %land.lhs.true33, %for.body30
  %117 = load i16***** %mv287, align 8, !tbaa !0
  %118 = load i16**** %117, align 8, !tbaa !0
  %arrayidx289 = getelementptr inbounds i16*** %118, i64 %indvars.iv3541
  %119 = load i16*** %arrayidx289, align 8, !tbaa !0
  %arrayidx290 = getelementptr inbounds i16** %119, i64 %indvars.iv3543
  %120 = load i16** %arrayidx290, align 8, !tbaa !0
  %121 = load i16* %120, align 2, !tbaa !5
  %122 = load i16***** %mv294, align 8, !tbaa !0
  %123 = load i16**** %122, align 8, !tbaa !0
  %arrayidx296 = getelementptr inbounds i16*** %123, i64 %indvars.iv3541
  %124 = load i16*** %arrayidx296, align 8, !tbaa !0
  %arrayidx297 = getelementptr inbounds i16** %124, i64 %indvars.iv3543
  %125 = load i16** %arrayidx297, align 8, !tbaa !0
  store i16 %121, i16* %125, align 2, !tbaa !5
  %arrayidx305 = getelementptr inbounds i16* %120, i64 1
  %126 = load i16* %arrayidx305, align 2, !tbaa !5
  %arrayidx312 = getelementptr inbounds i16* %125, i64 1
  store i16 %126, i16* %arrayidx312, align 2, !tbaa !5
  %arrayidx316 = getelementptr inbounds i16**** %117, i64 1
  %127 = load i16**** %arrayidx316, align 8, !tbaa !0
  %arrayidx317 = getelementptr inbounds i16*** %127, i64 %indvars.iv3541
  %128 = load i16*** %arrayidx317, align 8, !tbaa !0
  %arrayidx318 = getelementptr inbounds i16** %128, i64 %indvars.iv3543
  %129 = load i16** %arrayidx318, align 8, !tbaa !0
  %130 = load i16* %129, align 2, !tbaa !5
  %arrayidx323 = getelementptr inbounds i16**** %122, i64 1
  %131 = load i16**** %arrayidx323, align 8, !tbaa !0
  %arrayidx324 = getelementptr inbounds i16*** %131, i64 %indvars.iv3541
  %132 = load i16*** %arrayidx324, align 8, !tbaa !0
  %arrayidx325 = getelementptr inbounds i16** %132, i64 %indvars.iv3543
  %133 = load i16** %arrayidx325, align 8, !tbaa !0
  store i16 %130, i16* %133, align 2, !tbaa !5
  %arrayidx333 = getelementptr inbounds i16* %129, i64 1
  %134 = load i16* %arrayidx333, align 2, !tbaa !5
  %arrayidx340 = getelementptr inbounds i16* %133, i64 1
  store i16 %134, i16* %arrayidx340, align 2, !tbaa !5
  %135 = load i16**** %ref_idx343, align 8, !tbaa !0
  %136 = load i16*** %135, align 8, !tbaa !0
  %arrayidx345 = getelementptr inbounds i16** %136, i64 %indvars.iv3541
  %137 = load i16** %arrayidx345, align 8, !tbaa !0
  %arrayidx346 = getelementptr inbounds i16* %137, i64 %indvars.iv3543
  %138 = load i16* %arrayidx346, align 2, !tbaa !5
  %139 = load i16**** %ref_idx349, align 8, !tbaa !0
  %140 = load i16*** %139, align 8, !tbaa !0
  %arrayidx351 = getelementptr inbounds i16** %140, i64 %indvars.iv3541
  %141 = load i16** %arrayidx351, align 8, !tbaa !0
  %arrayidx352 = getelementptr inbounds i16* %141, i64 %indvars.iv3543
  store i16 %138, i16* %arrayidx352, align 2, !tbaa !5
  %arrayidx356 = getelementptr inbounds i16*** %135, i64 1
  %142 = load i16*** %arrayidx356, align 8, !tbaa !0
  %arrayidx357 = getelementptr inbounds i16** %142, i64 %indvars.iv3541
  %143 = load i16** %arrayidx357, align 8, !tbaa !0
  %arrayidx358 = getelementptr inbounds i16* %143, i64 %indvars.iv3543
  %144 = load i16* %arrayidx358, align 2, !tbaa !5
  %arrayidx362 = getelementptr inbounds i16*** %139, i64 1
  %145 = load i16*** %arrayidx362, align 8, !tbaa !0
  %arrayidx363 = getelementptr inbounds i16** %145, i64 %indvars.iv3541
  %146 = load i16** %arrayidx363, align 8, !tbaa !0
  %arrayidx364 = getelementptr inbounds i16* %146, i64 %indvars.iv3543
  store i16 %144, i16* %arrayidx364, align 2, !tbaa !5
  %147 = load i64**** %ref_id367, align 8, !tbaa !0
  %148 = load i64*** %147, align 8, !tbaa !0
  %arrayidx369 = getelementptr inbounds i64** %148, i64 %indvars.iv3541
  %149 = load i64** %arrayidx369, align 8, !tbaa !0
  %arrayidx370 = getelementptr inbounds i64* %149, i64 %indvars.iv3543
  %150 = load i64* %arrayidx370, align 8, !tbaa !4
  %151 = load i64**** %ref_pic_id373, align 8, !tbaa !0
  %152 = load i64*** %151, align 8, !tbaa !0
  %arrayidx375 = getelementptr inbounds i64** %152, i64 %indvars.iv3541
  %153 = load i64** %arrayidx375, align 8, !tbaa !0
  %arrayidx376 = getelementptr inbounds i64* %153, i64 %indvars.iv3543
  store i64 %150, i64* %arrayidx376, align 8, !tbaa !4
  %arrayidx380 = getelementptr inbounds i64*** %147, i64 1
  %154 = load i64*** %arrayidx380, align 8, !tbaa !0
  %arrayidx381 = getelementptr inbounds i64** %154, i64 %indvars.iv3541
  %155 = load i64** %arrayidx381, align 8, !tbaa !0
  %arrayidx382 = getelementptr inbounds i64* %155, i64 %indvars.iv3543
  %156 = load i64* %arrayidx382, align 8, !tbaa !4
  %arrayidx386 = getelementptr inbounds i64*** %151, i64 1
  %157 = load i64*** %arrayidx386, align 8, !tbaa !0
  %arrayidx387 = getelementptr inbounds i64** %157, i64 %indvars.iv3541
  %158 = load i64** %arrayidx387, align 8, !tbaa !0
  %arrayidx388 = getelementptr inbounds i64* %158, i64 %indvars.iv3543
  store i64 %156, i64* %arrayidx388, align 8, !tbaa !4
  %159 = load i32* %is_long_term389, align 4, !tbaa !3
  store i32 %159, i32* %is_long_term390, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.else284, %if.else160, %if.then46
  %indvars.iv.next3542 = add i64 %indvars.iv3541, 1
  %160 = load i32* %size_x, align 4, !tbaa !3
  %div28 = sdiv i32 %160, 4
  %161 = trunc i64 %indvars.iv.next3542 to i32
  %cmp29 = icmp slt i32 %161, %div28
  br i1 %cmp29, label %for.body30, label %for.cond27.for.inc392_crit_edge

for.cond27.for.inc392_crit_edge:                  ; preds = %for.inc
  %.pre3558 = load i32* %size_y, align 4, !tbaa !3
  br label %for.inc392

for.inc392:                                       ; preds = %for.cond27.for.inc392_crit_edge, %for.cond27.preheader
  %162 = phi i32 [ %.pre3558, %for.cond27.for.inc392_crit_edge ], [ %17, %for.cond27.preheader ]
  %163 = phi i32 [ %160, %for.cond27.for.inc392_crit_edge ], [ %18, %for.cond27.preheader ]
  %indvars.iv.next3544 = add i64 %indvars.iv3543, 1
  %div = sdiv i32 %162, 4
  %164 = trunc i64 %indvars.iv.next3544 to i32
  %cmp26 = icmp slt i32 %164, %div
  br i1 %cmp26, label %for.cond27.preheader, label %for.cond.if.end395.loopexit_crit_edge

for.cond.if.end395.loopexit_crit_edge:            ; preds = %for.inc392
  %.pre.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end395

if.end395:                                        ; preds = %for.cond.preheader, %for.cond.if.end395.loopexit_crit_edge, %lor.lhs.false
  %165 = phi %struct.ImageParameters* [ %2, %lor.lhs.false ], [ %.pre.pre, %for.cond.if.end395.loopexit_crit_edge ], [ %2, %for.cond.preheader ]
  %structure396 = getelementptr inbounds %struct.ImageParameters* %165, i64 0, i32 7
  %166 = load i32* %structure396, align 4, !tbaa !3
  %tobool397 = icmp eq i32 %166, 0
  br i1 %tobool397, label %lor.lhs.false398, label %for.cond402.preheader

lor.lhs.false398:                                 ; preds = %if.end395
  %MbaffFrameFlag399 = getelementptr inbounds %struct.ImageParameters* %165, i64 0, i32 90
  %167 = load i32* %MbaffFrameFlag399, align 4, !tbaa !3
  %tobool400 = icmp eq i32 %167, 0
  br i1 %tobool400, label %if.end1530, label %for.cond402.preheader

for.cond402.preheader:                            ; preds = %lor.lhs.false398, %if.end395
  %size_x403 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 18
  %168 = load i32* %size_x403, align 4, !tbaa !3
  %cmp4053513 = icmp sgt i32 %168, 3
  br i1 %cmp4053513, label %for.cond408.preheader.lr.ph, label %if.end1530

for.cond408.preheader.lr.ph:                      ; preds = %for.cond402.preheader
  %size_y409 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 19
  %mv429 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 35
  %mv436 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 6
  %ref_idx549 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 32
  %ref_idx559 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 4
  %ref_pic_id565 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 5
  %is_long_term723 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 14
  %is_long_term724 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 18
  %moving_block = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 7
  %ref_id712 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 34
  %mv834 = getelementptr inbounds %struct.storable_picture* %fs_bottom.0, i64 0, i32 35
  %bottom_mv = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 16
  %ref_idx953 = getelementptr inbounds %struct.storable_picture* %fs_bottom.0, i64 0, i32 32
  %bottom_ref_idx = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 14
  %ref_id1008 = getelementptr inbounds %struct.storable_picture* %fs_bottom.0, i64 0, i32 34
  %bottom_ref_pic_id = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 15
  %is_long_term1049 = getelementptr inbounds %struct.storable_picture* %fs_bottom.0, i64 0, i32 14
  %bottom_moving_block = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 17
  %mv1161 = getelementptr inbounds %struct.storable_picture* %fs_top.0, i64 0, i32 35
  %top_mv = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 11
  %ref_idx1280 = getelementptr inbounds %struct.storable_picture* %fs_top.0, i64 0, i32 32
  %top_ref_idx = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 9
  %ref_id1335 = getelementptr inbounds %struct.storable_picture* %fs_top.0, i64 0, i32 34
  %top_ref_pic_id = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 10
  %is_long_term1376 = getelementptr inbounds %struct.storable_picture* %fs_top.0, i64 0, i32 14
  %top_moving_block = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 12
  %field_frame1477 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 37
  %.pre3550 = load i32* %size_y409, align 4, !tbaa !3
  br label %for.cond408.preheader

for.cond408.preheader:                            ; preds = %for.cond408.preheader.lr.ph, %for.inc1527
  %169 = phi i32 [ %168, %for.cond408.preheader.lr.ph ], [ %374, %for.inc1527 ]
  %170 = phi i32 [ %.pre3550, %for.cond408.preheader.lr.ph ], [ %375, %for.inc1527 ]
  %indvars.iv3539 = phi i64 [ 0, %for.cond408.preheader.lr.ph ], [ %indvars.iv.next3540, %for.inc1527 ]
  %cmp4113509 = icmp sgt i32 %170, 7
  br i1 %cmp4113509, label %for.body413.lr.ph, label %for.inc1527

for.body413.lr.ph:                                ; preds = %for.cond408.preheader
  %and825 = and i64 %indvars.iv3539, 2
  %tobool826 = icmp ne i64 %and825, 0
  %or828 = or i64 %indvars.iv3539, 1
  %and830 = and i64 %indvars.iv3539, 4294967294
  %cond832 = select i1 %tobool826, i64 %or828, i64 %and830
  %sext3565 = shl i64 %cond832, 32
  %idxprom833 = ashr exact i64 %sext3565, 32
  br label %for.body413

for.body413:                                      ; preds = %for.inc1524, %for.body413.lr.ph
  %indvars.iv3537 = phi i64 [ 0, %for.body413.lr.ph ], [ %indvars.iv.next3538, %for.inc1524 ]
  %171 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag414 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 90
  %172 = load i32* %MbaffFrameFlag414, align 4, !tbaa !3
  %tobool415 = icmp eq i32 %172, 0
  %173 = trunc i64 %indvars.iv3537 to i32
  %and816 = and i32 %173, 2
  %tobool817 = icmp ne i32 %and816, 0
  %or819 = or i64 %indvars.iv3537, 1
  %and821 = and i64 %indvars.iv3537, 4294967294
  %cond823 = select i1 %tobool817, i64 %or819, i64 %and821
  %sext3566 = shl i64 %cond823, 32
  %idxprom824 = ashr exact i64 %sext3566, 32
  br i1 %tobool415, label %cond.end, label %cond.end822

cond.end:                                         ; preds = %for.body413
  %174 = load i16***** %mv429, align 8, !tbaa !0
  %175 = load i16**** %174, align 8, !tbaa !0
  %arrayidx431 = getelementptr inbounds i16*** %175, i64 %idxprom833
  %176 = load i16*** %arrayidx431, align 8, !tbaa !0
  %arrayidx432 = getelementptr inbounds i16** %176, i64 %idxprom824
  %177 = load i16** %arrayidx432, align 8, !tbaa !0
  %178 = load i16* %177, align 2, !tbaa !5
  %179 = load i16***** %mv436, align 8, !tbaa !0
  %180 = load i16**** %179, align 8, !tbaa !0
  %arrayidx438 = getelementptr inbounds i16*** %180, i64 %indvars.iv3539
  %181 = load i16*** %arrayidx438, align 8, !tbaa !0
  %arrayidx439 = getelementptr inbounds i16** %181, i64 %indvars.iv3537
  %182 = load i16** %arrayidx439, align 8, !tbaa !0
  store i16 %178, i16* %182, align 2, !tbaa !5
  %arrayidx463 = getelementptr inbounds i16* %177, i64 1
  %183 = load i16* %arrayidx463, align 2, !tbaa !5
  %arrayidx470 = getelementptr inbounds i16* %182, i64 1
  store i16 %183, i16* %arrayidx470, align 2, !tbaa !5
  %arrayidx490 = getelementptr inbounds i16**** %174, i64 1
  %184 = load i16**** %arrayidx490, align 8, !tbaa !0
  %arrayidx491 = getelementptr inbounds i16*** %184, i64 %idxprom833
  %185 = load i16*** %arrayidx491, align 8, !tbaa !0
  %arrayidx492 = getelementptr inbounds i16** %185, i64 %idxprom824
  %186 = load i16** %arrayidx492, align 8, !tbaa !0
  %187 = load i16* %186, align 2, !tbaa !5
  %arrayidx497 = getelementptr inbounds i16**** %179, i64 1
  %188 = load i16**** %arrayidx497, align 8, !tbaa !0
  %arrayidx498 = getelementptr inbounds i16*** %188, i64 %indvars.iv3539
  %189 = load i16*** %arrayidx498, align 8, !tbaa !0
  %arrayidx499 = getelementptr inbounds i16** %189, i64 %indvars.iv3537
  %190 = load i16** %arrayidx499, align 8, !tbaa !0
  store i16 %187, i16* %190, align 2, !tbaa !5
  %arrayidx523 = getelementptr inbounds i16* %186, i64 1
  %191 = load i16* %arrayidx523, align 2, !tbaa !5
  %arrayidx530 = getelementptr inbounds i16* %190, i64 1
  store i16 %191, i16* %arrayidx530, align 2, !tbaa !5
  %192 = load i16**** %ref_idx549, align 8, !tbaa !0
  %193 = load i16*** %192, align 8, !tbaa !0
  %arrayidx551 = getelementptr inbounds i16** %193, i64 %idxprom833
  %194 = load i16** %arrayidx551, align 8, !tbaa !0
  %arrayidx552 = getelementptr inbounds i16* %194, i64 %idxprom824
  %195 = load i16* %arrayidx552, align 2, !tbaa !5
  %cmp554 = icmp eq i16 %195, -1
  %196 = load i16**** %ref_idx559, align 8, !tbaa !0
  %197 = load i16*** %196, align 8, !tbaa !0
  %arrayidx561 = getelementptr inbounds i16** %197, i64 %indvars.iv3539
  %198 = load i16** %arrayidx561, align 8, !tbaa !0
  %arrayidx562 = getelementptr inbounds i16* %198, i64 %indvars.iv3537
  br i1 %cmp554, label %if.then556, label %if.else569

if.then556:                                       ; preds = %cond.end
  store i16 -1, i16* %arrayidx562, align 2, !tbaa !5
  %199 = load i64**** %ref_pic_id565, align 8, !tbaa !0
  %200 = load i64*** %199, align 8, !tbaa !0
  %arrayidx567 = getelementptr inbounds i64** %200, i64 %indvars.iv3539
  %201 = load i64** %arrayidx567, align 8, !tbaa !0
  %arrayidx568 = getelementptr inbounds i64* %201, i64 %indvars.iv3537
  store i64 -1, i64* %arrayidx568, align 8, !tbaa !4
  br label %if.end626

if.else569:                                       ; preds = %cond.end
  store i16 %195, i16* %arrayidx562, align 2, !tbaa !5
  %202 = load i64**** %ref_id712, align 8, !tbaa !0
  %203 = load i64*** %202, align 8, !tbaa !0
  %arrayidx618 = getelementptr inbounds i64** %203, i64 %idxprom833
  %204 = load i64** %arrayidx618, align 8, !tbaa !0
  %arrayidx619 = getelementptr inbounds i64* %204, i64 %idxprom824
  %205 = load i64* %arrayidx619, align 8, !tbaa !4
  %206 = load i64**** %ref_pic_id565, align 8, !tbaa !0
  %207 = load i64*** %206, align 8, !tbaa !0
  %arrayidx624 = getelementptr inbounds i64** %207, i64 %indvars.iv3539
  %208 = load i64** %arrayidx624, align 8, !tbaa !0
  %arrayidx625 = getelementptr inbounds i64* %208, i64 %indvars.iv3537
  store i64 %205, i64* %arrayidx625, align 8, !tbaa !4
  br label %if.end626

if.end626:                                        ; preds = %if.else569, %if.then556
  %209 = phi i64*** [ %206, %if.else569 ], [ %199, %if.then556 ]
  %arrayidx646 = getelementptr inbounds i16*** %192, i64 1
  %210 = load i16*** %arrayidx646, align 8, !tbaa !0
  %arrayidx647 = getelementptr inbounds i16** %210, i64 %idxprom833
  %211 = load i16** %arrayidx647, align 8, !tbaa !0
  %arrayidx648 = getelementptr inbounds i16* %211, i64 %idxprom824
  %212 = load i16* %arrayidx648, align 2, !tbaa !5
  %cmp650 = icmp eq i16 %212, -1
  %arrayidx656 = getelementptr inbounds i16*** %196, i64 1
  %213 = load i16*** %arrayidx656, align 8, !tbaa !0
  %arrayidx657 = getelementptr inbounds i16** %213, i64 %indvars.iv3539
  %214 = load i16** %arrayidx657, align 8, !tbaa !0
  %arrayidx658 = getelementptr inbounds i16* %214, i64 %indvars.iv3537
  br i1 %cmp650, label %if.then652, label %if.else665

if.then652:                                       ; preds = %if.end626
  store i16 -1, i16* %arrayidx658, align 2, !tbaa !5
  %arrayidx662 = getelementptr inbounds i64*** %209, i64 1
  %215 = load i64*** %arrayidx662, align 8, !tbaa !0
  %arrayidx663 = getelementptr inbounds i64** %215, i64 %indvars.iv3539
  %216 = load i64** %arrayidx663, align 8, !tbaa !0
  %arrayidx664 = getelementptr inbounds i64* %216, i64 %indvars.iv3537
  store i64 -1, i64* %arrayidx664, align 8, !tbaa !4
  br label %if.end722

if.else665:                                       ; preds = %if.end626
  store i16 %212, i16* %arrayidx658, align 2, !tbaa !5
  %217 = load i64**** %ref_id712, align 8, !tbaa !0
  %arrayidx713 = getelementptr inbounds i64*** %217, i64 1
  %218 = load i64*** %arrayidx713, align 8, !tbaa !0
  %arrayidx714 = getelementptr inbounds i64** %218, i64 %idxprom833
  %219 = load i64** %arrayidx714, align 8, !tbaa !0
  %arrayidx715 = getelementptr inbounds i64* %219, i64 %idxprom824
  %220 = load i64* %arrayidx715, align 8, !tbaa !4
  %arrayidx719 = getelementptr inbounds i64*** %209, i64 1
  %221 = load i64*** %arrayidx719, align 8, !tbaa !0
  %arrayidx720 = getelementptr inbounds i64** %221, i64 %indvars.iv3539
  %222 = load i64** %arrayidx720, align 8, !tbaa !0
  %arrayidx721 = getelementptr inbounds i64* %222, i64 %indvars.iv3537
  store i64 %220, i64* %arrayidx721, align 8, !tbaa !4
  br label %if.end722

if.end722:                                        ; preds = %if.else665, %if.then652
  %223 = phi i16 [ %212, %if.else665 ], [ -1, %if.then652 ]
  %224 = load i32* %is_long_term723, align 4, !tbaa !3
  store i32 %224, i32* %is_long_term724, align 4, !tbaa !3
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 78
  %225 = load i32* %direct_spatial_mv_pred_flag, align 4, !tbaa !3
  %cmp725 = icmp eq i32 %225, 1
  br i1 %cmp725, label %if.then727, label %for.inc1524

if.then727:                                       ; preds = %if.end722
  %tobool729 = icmp eq i32 %224, 0
  %226 = load i16* %arrayidx562, align 2, !tbaa !5
  %cmp738 = icmp eq i16 %226, 0
  %or.cond = and i1 %tobool729, %cmp738
  br i1 %or.cond, label %land.lhs.true740, label %lor.rhs

land.lhs.true740:                                 ; preds = %if.then727
  %227 = load i16* %182, align 2, !tbaa !5
  %conv748 = sext i16 %227 to i32
  %ispos3453 = icmp sgt i16 %227, -1
  %neg3454 = sub i32 0, %conv748
  %228 = select i1 %ispos3453, i32 %conv748, i32 %neg3454
  %cmp750 = icmp ult i32 %228, 2
  br i1 %cmp750, label %land.lhs.true752, label %lor.rhs.thread

land.lhs.true752:                                 ; preds = %land.lhs.true740
  %229 = load i16* %arrayidx470, align 2, !tbaa !5
  %conv760 = sext i16 %229 to i32
  %ispos3455 = icmp sgt i16 %229, -1
  %neg3456 = sub i32 0, %conv760
  %230 = select i1 %ispos3455, i32 %conv760, i32 %neg3456
  %cmp763 = icmp ult i32 %230, 2
  br i1 %cmp763, label %lor.end, label %lor.rhs.thread

lor.rhs.thread:                                   ; preds = %land.lhs.true752, %land.lhs.true740
  br label %lor.end

lor.rhs:                                          ; preds = %if.then727
  %cmp772 = icmp eq i16 %226, -1
  %cmp782 = icmp eq i16 %223, 0
  %or.cond3572 = and i1 %cmp772, %cmp782
  br i1 %or.cond3572, label %land.lhs.true784, label %lor.end

land.lhs.true784:                                 ; preds = %lor.rhs
  %231 = load i16* %190, align 2, !tbaa !5
  %conv792 = sext i16 %231 to i32
  %ispos3449 = icmp sgt i16 %231, -1
  %neg3450 = sub i32 0, %conv792
  %232 = select i1 %ispos3449, i32 %conv792, i32 %neg3450
  %cmp795 = icmp ult i32 %232, 2
  br i1 %cmp795, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %land.lhs.true784
  %233 = load i16* %arrayidx530, align 2, !tbaa !5
  %conv804 = sext i16 %233 to i32
  %ispos3451 = icmp sgt i16 %233, -1
  %neg3452 = sub i32 0, %conv804
  %234 = select i1 %ispos3451, i32 %conv804, i32 %neg3452
  %phitmp3448 = icmp ugt i32 %234, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.thread, %lor.rhs, %land.lhs.true784, %land.rhs, %land.lhs.true752
  %235 = phi i1 [ false, %land.lhs.true752 ], [ true, %land.lhs.true784 ], [ true, %lor.rhs ], [ %phitmp3448, %land.rhs ], [ true, %lor.rhs.thread ]
  %conv809 = zext i1 %235 to i8
  %236 = load i8*** %moving_block, align 8, !tbaa !0
  %arrayidx812 = getelementptr inbounds i8** %236, i64 %indvars.iv3539
  %237 = load i8** %arrayidx812, align 8, !tbaa !0
  %arrayidx813 = getelementptr inbounds i8* %237, i64 %indvars.iv3537
  store i8 %conv809, i8* %arrayidx813, align 1, !tbaa !1
  br label %for.inc1524

cond.end822:                                      ; preds = %for.body413
  %238 = load i16***** %mv834, align 8, !tbaa !0
  %239 = load i16**** %238, align 8, !tbaa !0
  %arrayidx836 = getelementptr inbounds i16*** %239, i64 %idxprom833
  %240 = load i16*** %arrayidx836, align 8, !tbaa !0
  %arrayidx837 = getelementptr inbounds i16** %240, i64 %idxprom824
  %241 = load i16** %arrayidx837, align 8, !tbaa !0
  %242 = load i16* %241, align 2, !tbaa !5
  %243 = load i16***** %bottom_mv, align 8, !tbaa !0
  %244 = load i16**** %243, align 8, !tbaa !0
  %arrayidx842 = getelementptr inbounds i16*** %244, i64 %indvars.iv3539
  %245 = load i16*** %arrayidx842, align 8, !tbaa !0
  %arrayidx843 = getelementptr inbounds i16** %245, i64 %indvars.iv3537
  %246 = load i16** %arrayidx843, align 8, !tbaa !0
  store i16 %242, i16* %246, align 2, !tbaa !5
  %arrayidx867 = getelementptr inbounds i16* %241, i64 1
  %247 = load i16* %arrayidx867, align 2, !tbaa !5
  %arrayidx874 = getelementptr inbounds i16* %246, i64 1
  store i16 %247, i16* %arrayidx874, align 2, !tbaa !5
  %arrayidx894 = getelementptr inbounds i16**** %238, i64 1
  %248 = load i16**** %arrayidx894, align 8, !tbaa !0
  %arrayidx895 = getelementptr inbounds i16*** %248, i64 %idxprom833
  %249 = load i16*** %arrayidx895, align 8, !tbaa !0
  %arrayidx896 = getelementptr inbounds i16** %249, i64 %idxprom824
  %250 = load i16** %arrayidx896, align 8, !tbaa !0
  %251 = load i16* %250, align 2, !tbaa !5
  %arrayidx901 = getelementptr inbounds i16**** %243, i64 1
  %252 = load i16**** %arrayidx901, align 8, !tbaa !0
  %arrayidx902 = getelementptr inbounds i16*** %252, i64 %indvars.iv3539
  %253 = load i16*** %arrayidx902, align 8, !tbaa !0
  %arrayidx903 = getelementptr inbounds i16** %253, i64 %indvars.iv3537
  %254 = load i16** %arrayidx903, align 8, !tbaa !0
  store i16 %251, i16* %254, align 2, !tbaa !5
  %arrayidx927 = getelementptr inbounds i16* %250, i64 1
  %255 = load i16* %arrayidx927, align 2, !tbaa !5
  %arrayidx934 = getelementptr inbounds i16* %254, i64 1
  store i16 %255, i16* %arrayidx934, align 2, !tbaa !5
  %256 = load i16**** %ref_idx953, align 8, !tbaa !0
  %257 = load i16*** %256, align 8, !tbaa !0
  %arrayidx955 = getelementptr inbounds i16** %257, i64 %idxprom833
  %258 = load i16** %arrayidx955, align 8, !tbaa !0
  %arrayidx956 = getelementptr inbounds i16* %258, i64 %idxprom824
  %259 = load i16* %arrayidx956, align 2, !tbaa !5
  %260 = load i16**** %bottom_ref_idx, align 8, !tbaa !0
  %261 = load i16*** %260, align 8, !tbaa !0
  %arrayidx960 = getelementptr inbounds i16** %261, i64 %indvars.iv3539
  %262 = load i16** %arrayidx960, align 8, !tbaa !0
  %arrayidx961 = getelementptr inbounds i16* %262, i64 %indvars.iv3537
  store i16 %259, i16* %arrayidx961, align 2, !tbaa !5
  %arrayidx981 = getelementptr inbounds i16*** %256, i64 1
  %263 = load i16*** %arrayidx981, align 8, !tbaa !0
  %arrayidx982 = getelementptr inbounds i16** %263, i64 %idxprom833
  %264 = load i16** %arrayidx982, align 8, !tbaa !0
  %arrayidx983 = getelementptr inbounds i16* %264, i64 %idxprom824
  %265 = load i16* %arrayidx983, align 2, !tbaa !5
  %arrayidx987 = getelementptr inbounds i16*** %260, i64 1
  %266 = load i16*** %arrayidx987, align 8, !tbaa !0
  %arrayidx988 = getelementptr inbounds i16** %266, i64 %indvars.iv3539
  %267 = load i16** %arrayidx988, align 8, !tbaa !0
  %arrayidx989 = getelementptr inbounds i16* %267, i64 %indvars.iv3537
  store i16 %265, i16* %arrayidx989, align 2, !tbaa !5
  %268 = load i64**** %ref_id1008, align 8, !tbaa !0
  %269 = load i64*** %268, align 8, !tbaa !0
  %arrayidx1010 = getelementptr inbounds i64** %269, i64 %idxprom833
  %270 = load i64** %arrayidx1010, align 8, !tbaa !0
  %arrayidx1011 = getelementptr inbounds i64* %270, i64 %idxprom824
  %271 = load i64* %arrayidx1011, align 8, !tbaa !4
  %272 = load i64**** %bottom_ref_pic_id, align 8, !tbaa !0
  %273 = load i64*** %272, align 8, !tbaa !0
  %arrayidx1015 = getelementptr inbounds i64** %273, i64 %indvars.iv3539
  %274 = load i64** %arrayidx1015, align 8, !tbaa !0
  %arrayidx1016 = getelementptr inbounds i64* %274, i64 %indvars.iv3537
  store i64 %271, i64* %arrayidx1016, align 8, !tbaa !4
  %arrayidx1036 = getelementptr inbounds i64*** %268, i64 1
  %275 = load i64*** %arrayidx1036, align 8, !tbaa !0
  %arrayidx1037 = getelementptr inbounds i64** %275, i64 %idxprom833
  %276 = load i64** %arrayidx1037, align 8, !tbaa !0
  %arrayidx1038 = getelementptr inbounds i64* %276, i64 %idxprom824
  %277 = load i64* %arrayidx1038, align 8, !tbaa !4
  %arrayidx1042 = getelementptr inbounds i64*** %272, i64 1
  %278 = load i64*** %arrayidx1042, align 8, !tbaa !0
  %arrayidx1043 = getelementptr inbounds i64** %278, i64 %indvars.iv3539
  %279 = load i64** %arrayidx1043, align 8, !tbaa !0
  %arrayidx1044 = getelementptr inbounds i64* %279, i64 %indvars.iv3537
  store i64 %277, i64* %arrayidx1044, align 8, !tbaa !4
  %direct_spatial_mv_pred_flag1045 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 78
  %280 = load i32* %direct_spatial_mv_pred_flag1045, align 4, !tbaa !3
  %cmp1046 = icmp eq i32 %280, 1
  br i1 %cmp1046, label %if.then1048, label %if.end1142

if.then1048:                                      ; preds = %cond.end822
  %281 = load i32* %is_long_term1049, align 4, !tbaa !3
  %tobool1050 = icmp eq i32 %281, 0
  %282 = load i16* %arrayidx961, align 2, !tbaa !5
  %cmp1059 = icmp eq i16 %282, 0
  %or.cond3573 = and i1 %tobool1050, %cmp1059
  br i1 %or.cond3573, label %land.lhs.true1061, label %lor.rhs1087

land.lhs.true1061:                                ; preds = %if.then1048
  %283 = load i16* %246, align 2, !tbaa !5
  %conv1069 = sext i16 %283 to i32
  %ispos3471 = icmp sgt i16 %283, -1
  %neg3472 = sub i32 0, %conv1069
  %284 = select i1 %ispos3471, i32 %conv1069, i32 %neg3472
  %cmp1072 = icmp ult i32 %284, 2
  br i1 %cmp1072, label %land.lhs.true1074, label %lor.rhs1087.thread

land.lhs.true1074:                                ; preds = %land.lhs.true1061
  %285 = load i16* %arrayidx874, align 2, !tbaa !5
  %conv1082 = sext i16 %285 to i32
  %ispos3473 = icmp sgt i16 %285, -1
  %neg3474 = sub i32 0, %conv1082
  %286 = select i1 %ispos3473, i32 %conv1082, i32 %neg3474
  %cmp1085 = icmp ult i32 %286, 2
  br i1 %cmp1085, label %lor.end1134, label %lor.rhs1087.thread

lor.rhs1087.thread:                               ; preds = %land.lhs.true1074, %land.lhs.true1061
  br label %lor.end1134

lor.rhs1087:                                      ; preds = %if.then1048
  %cmp1095 = icmp eq i16 %282, -1
  %cmp1105 = icmp eq i16 %265, 0
  %or.cond3574 = and i1 %cmp1095, %cmp1105
  br i1 %or.cond3574, label %land.lhs.true1107, label %lor.end1134

land.lhs.true1107:                                ; preds = %lor.rhs1087
  %287 = load i16* %254, align 2, !tbaa !5
  %conv1115 = sext i16 %287 to i32
  %ispos3467 = icmp sgt i16 %287, -1
  %neg3468 = sub i32 0, %conv1115
  %288 = select i1 %ispos3467, i32 %conv1115, i32 %neg3468
  %cmp1118 = icmp ult i32 %288, 2
  br i1 %cmp1118, label %land.rhs1120, label %lor.end1134

land.rhs1120:                                     ; preds = %land.lhs.true1107
  %289 = load i16* %arrayidx934, align 2, !tbaa !5
  %conv1128 = sext i16 %289 to i32
  %ispos3469 = icmp sgt i16 %289, -1
  %neg3470 = sub i32 0, %conv1128
  %290 = select i1 %ispos3469, i32 %conv1128, i32 %neg3470
  %phitmp3466 = icmp ugt i32 %290, 1
  br label %lor.end1134

lor.end1134:                                      ; preds = %lor.rhs1087.thread, %lor.rhs1087, %land.lhs.true1107, %land.rhs1120, %land.lhs.true1074
  %291 = phi i1 [ false, %land.lhs.true1074 ], [ true, %land.lhs.true1107 ], [ true, %lor.rhs1087 ], [ %phitmp3466, %land.rhs1120 ], [ true, %lor.rhs1087.thread ]
  %conv1137 = zext i1 %291 to i8
  %292 = load i8*** %bottom_moving_block, align 8, !tbaa !0
  %arrayidx1140 = getelementptr inbounds i8** %292, i64 %indvars.iv3539
  %293 = load i8** %arrayidx1140, align 8, !tbaa !0
  %arrayidx1141 = getelementptr inbounds i8* %293, i64 %indvars.iv3537
  store i8 %conv1137, i8* %arrayidx1141, align 1, !tbaa !1
  %.pre3552 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %direct_spatial_mv_pred_flag1372.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre3552, i64 0, i32 78
  %.pre3553 = load i32* %direct_spatial_mv_pred_flag1372.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1142

if.end1142:                                       ; preds = %cond.end822, %lor.end1134
  %294 = phi i32 [ %.pre3553, %lor.end1134 ], [ %280, %cond.end822 ]
  %295 = load i16***** %mv1161, align 8, !tbaa !0
  %296 = load i16**** %295, align 8, !tbaa !0
  %arrayidx1163 = getelementptr inbounds i16*** %296, i64 %idxprom833
  %297 = load i16*** %arrayidx1163, align 8, !tbaa !0
  %arrayidx1164 = getelementptr inbounds i16** %297, i64 %idxprom824
  %298 = load i16** %arrayidx1164, align 8, !tbaa !0
  %299 = load i16* %298, align 2, !tbaa !5
  %300 = load i16***** %top_mv, align 8, !tbaa !0
  %301 = load i16**** %300, align 8, !tbaa !0
  %arrayidx1169 = getelementptr inbounds i16*** %301, i64 %indvars.iv3539
  %302 = load i16*** %arrayidx1169, align 8, !tbaa !0
  %arrayidx1170 = getelementptr inbounds i16** %302, i64 %indvars.iv3537
  %303 = load i16** %arrayidx1170, align 8, !tbaa !0
  store i16 %299, i16* %303, align 2, !tbaa !5
  %arrayidx1194 = getelementptr inbounds i16* %298, i64 1
  %304 = load i16* %arrayidx1194, align 2, !tbaa !5
  %arrayidx1201 = getelementptr inbounds i16* %303, i64 1
  store i16 %304, i16* %arrayidx1201, align 2, !tbaa !5
  %arrayidx1221 = getelementptr inbounds i16**** %295, i64 1
  %305 = load i16**** %arrayidx1221, align 8, !tbaa !0
  %arrayidx1222 = getelementptr inbounds i16*** %305, i64 %idxprom833
  %306 = load i16*** %arrayidx1222, align 8, !tbaa !0
  %arrayidx1223 = getelementptr inbounds i16** %306, i64 %idxprom824
  %307 = load i16** %arrayidx1223, align 8, !tbaa !0
  %308 = load i16* %307, align 2, !tbaa !5
  %arrayidx1228 = getelementptr inbounds i16**** %300, i64 1
  %309 = load i16**** %arrayidx1228, align 8, !tbaa !0
  %arrayidx1229 = getelementptr inbounds i16*** %309, i64 %indvars.iv3539
  %310 = load i16*** %arrayidx1229, align 8, !tbaa !0
  %arrayidx1230 = getelementptr inbounds i16** %310, i64 %indvars.iv3537
  %311 = load i16** %arrayidx1230, align 8, !tbaa !0
  store i16 %308, i16* %311, align 2, !tbaa !5
  %arrayidx1254 = getelementptr inbounds i16* %307, i64 1
  %312 = load i16* %arrayidx1254, align 2, !tbaa !5
  %arrayidx1261 = getelementptr inbounds i16* %311, i64 1
  store i16 %312, i16* %arrayidx1261, align 2, !tbaa !5
  %313 = load i16**** %ref_idx1280, align 8, !tbaa !0
  %314 = load i16*** %313, align 8, !tbaa !0
  %arrayidx1282 = getelementptr inbounds i16** %314, i64 %idxprom833
  %315 = load i16** %arrayidx1282, align 8, !tbaa !0
  %arrayidx1283 = getelementptr inbounds i16* %315, i64 %idxprom824
  %316 = load i16* %arrayidx1283, align 2, !tbaa !5
  %317 = load i16**** %top_ref_idx, align 8, !tbaa !0
  %318 = load i16*** %317, align 8, !tbaa !0
  %arrayidx1287 = getelementptr inbounds i16** %318, i64 %indvars.iv3539
  %319 = load i16** %arrayidx1287, align 8, !tbaa !0
  %arrayidx1288 = getelementptr inbounds i16* %319, i64 %indvars.iv3537
  store i16 %316, i16* %arrayidx1288, align 2, !tbaa !5
  %arrayidx1308 = getelementptr inbounds i16*** %313, i64 1
  %320 = load i16*** %arrayidx1308, align 8, !tbaa !0
  %arrayidx1309 = getelementptr inbounds i16** %320, i64 %idxprom833
  %321 = load i16** %arrayidx1309, align 8, !tbaa !0
  %arrayidx1310 = getelementptr inbounds i16* %321, i64 %idxprom824
  %322 = load i16* %arrayidx1310, align 2, !tbaa !5
  %arrayidx1314 = getelementptr inbounds i16*** %317, i64 1
  %323 = load i16*** %arrayidx1314, align 8, !tbaa !0
  %arrayidx1315 = getelementptr inbounds i16** %323, i64 %indvars.iv3539
  %324 = load i16** %arrayidx1315, align 8, !tbaa !0
  %arrayidx1316 = getelementptr inbounds i16* %324, i64 %indvars.iv3537
  store i16 %322, i16* %arrayidx1316, align 2, !tbaa !5
  %325 = load i64**** %ref_id1335, align 8, !tbaa !0
  %326 = load i64*** %325, align 8, !tbaa !0
  %arrayidx1337 = getelementptr inbounds i64** %326, i64 %idxprom833
  %327 = load i64** %arrayidx1337, align 8, !tbaa !0
  %arrayidx1338 = getelementptr inbounds i64* %327, i64 %idxprom824
  %328 = load i64* %arrayidx1338, align 8, !tbaa !4
  %329 = load i64**** %top_ref_pic_id, align 8, !tbaa !0
  %330 = load i64*** %329, align 8, !tbaa !0
  %arrayidx1342 = getelementptr inbounds i64** %330, i64 %indvars.iv3539
  %331 = load i64** %arrayidx1342, align 8, !tbaa !0
  %arrayidx1343 = getelementptr inbounds i64* %331, i64 %indvars.iv3537
  store i64 %328, i64* %arrayidx1343, align 8, !tbaa !4
  %arrayidx1363 = getelementptr inbounds i64*** %325, i64 1
  %332 = load i64*** %arrayidx1363, align 8, !tbaa !0
  %arrayidx1364 = getelementptr inbounds i64** %332, i64 %idxprom833
  %333 = load i64** %arrayidx1364, align 8, !tbaa !0
  %arrayidx1365 = getelementptr inbounds i64* %333, i64 %idxprom824
  %334 = load i64* %arrayidx1365, align 8, !tbaa !4
  %arrayidx1369 = getelementptr inbounds i64*** %329, i64 1
  %335 = load i64*** %arrayidx1369, align 8, !tbaa !0
  %arrayidx1370 = getelementptr inbounds i64** %335, i64 %indvars.iv3539
  %336 = load i64** %arrayidx1370, align 8, !tbaa !0
  %arrayidx1371 = getelementptr inbounds i64* %336, i64 %indvars.iv3537
  store i64 %334, i64* %arrayidx1371, align 8, !tbaa !4
  %cmp1373 = icmp eq i32 %294, 1
  br i1 %cmp1373, label %if.then1375, label %if.end1469

if.then1375:                                      ; preds = %if.end1142
  %337 = load i32* %is_long_term1376, align 4, !tbaa !3
  %tobool1377 = icmp eq i32 %337, 0
  %338 = load i16* %arrayidx1288, align 2, !tbaa !5
  %cmp1386 = icmp eq i16 %338, 0
  %or.cond3575 = and i1 %tobool1377, %cmp1386
  br i1 %or.cond3575, label %land.lhs.true1388, label %lor.rhs1414

land.lhs.true1388:                                ; preds = %if.then1375
  %339 = load i16* %303, align 2, !tbaa !5
  %conv1396 = sext i16 %339 to i32
  %ispos3462 = icmp sgt i16 %339, -1
  %neg3463 = sub i32 0, %conv1396
  %340 = select i1 %ispos3462, i32 %conv1396, i32 %neg3463
  %cmp1399 = icmp ult i32 %340, 2
  br i1 %cmp1399, label %land.lhs.true1401, label %lor.rhs1414.thread

land.lhs.true1401:                                ; preds = %land.lhs.true1388
  %341 = load i16* %arrayidx1201, align 2, !tbaa !5
  %conv1409 = sext i16 %341 to i32
  %ispos3464 = icmp sgt i16 %341, -1
  %neg3465 = sub i32 0, %conv1409
  %342 = select i1 %ispos3464, i32 %conv1409, i32 %neg3465
  %cmp1412 = icmp ult i32 %342, 2
  br i1 %cmp1412, label %lor.end1461, label %lor.rhs1414.thread

lor.rhs1414.thread:                               ; preds = %land.lhs.true1401, %land.lhs.true1388
  br label %lor.end1461

lor.rhs1414:                                      ; preds = %if.then1375
  %cmp1422 = icmp eq i16 %338, -1
  %cmp1432 = icmp eq i16 %322, 0
  %or.cond3576 = and i1 %cmp1422, %cmp1432
  br i1 %or.cond3576, label %land.lhs.true1434, label %lor.end1461

land.lhs.true1434:                                ; preds = %lor.rhs1414
  %343 = load i16* %311, align 2, !tbaa !5
  %conv1442 = sext i16 %343 to i32
  %ispos3458 = icmp sgt i16 %343, -1
  %neg3459 = sub i32 0, %conv1442
  %344 = select i1 %ispos3458, i32 %conv1442, i32 %neg3459
  %cmp1445 = icmp ult i32 %344, 2
  br i1 %cmp1445, label %land.rhs1447, label %lor.end1461

land.rhs1447:                                     ; preds = %land.lhs.true1434
  %345 = load i16* %arrayidx1261, align 2, !tbaa !5
  %conv1455 = sext i16 %345 to i32
  %ispos3460 = icmp sgt i16 %345, -1
  %neg3461 = sub i32 0, %conv1455
  %346 = select i1 %ispos3460, i32 %conv1455, i32 %neg3461
  %phitmp3457 = icmp ugt i32 %346, 1
  br label %lor.end1461

lor.end1461:                                      ; preds = %lor.rhs1414.thread, %lor.rhs1414, %land.lhs.true1434, %land.rhs1447, %land.lhs.true1401
  %347 = phi i1 [ false, %land.lhs.true1401 ], [ true, %land.lhs.true1434 ], [ true, %lor.rhs1414 ], [ %phitmp3457, %land.rhs1447 ], [ true, %lor.rhs1414.thread ]
  %conv1464 = zext i1 %347 to i8
  %348 = load i8*** %top_moving_block, align 8, !tbaa !0
  %arrayidx1467 = getelementptr inbounds i8** %348, i64 %indvars.iv3539
  %349 = load i8** %arrayidx1467, align 8, !tbaa !0
  %arrayidx1468 = getelementptr inbounds i8* %349, i64 %indvars.iv3537
  store i8 %conv1464, i8* %arrayidx1468, align 1, !tbaa !1
  %.pre3554 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %direct_spatial_mv_pred_flag1470.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre3554, i64 0, i32 78
  %.pre3555 = load i32* %direct_spatial_mv_pred_flag1470.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1469

if.end1469:                                       ; preds = %lor.end1461, %if.end1142
  %350 = phi i32 [ %.pre3555, %lor.end1461 ], [ %294, %if.end1142 ]
  %cmp1471 = icmp eq i32 %350, 0
  br i1 %cmp1471, label %land.lhs.true1473, label %for.inc1524

land.lhs.true1473:                                ; preds = %if.end1469
  %mul1474 = shl nsw i32 %173, 1
  %idxprom1475 = sext i32 %mul1474 to i64
  %351 = load i8*** %field_frame1477, align 8, !tbaa !0
  %arrayidx1478 = getelementptr inbounds i8** %351, i64 %indvars.iv3539
  %352 = load i8** %arrayidx1478, align 8, !tbaa !0
  %arrayidx1479 = getelementptr inbounds i8* %352, i64 %idxprom1475
  %353 = load i8* %arrayidx1479, align 1, !tbaa !1
  %tobool1480 = icmp eq i8 %353, 0
  br i1 %tobool1480, label %if.then1481, label %for.inc1524

if.then1481:                                      ; preds = %land.lhs.true1473
  %354 = load i16***** %top_mv, align 8, !tbaa !0
  %355 = load i16**** %354, align 8, !tbaa !0
  %arrayidx1486 = getelementptr inbounds i16*** %355, i64 %indvars.iv3539
  %356 = load i16*** %arrayidx1486, align 8, !tbaa !0
  %arrayidx1487 = getelementptr inbounds i16** %356, i64 %indvars.iv3537
  %357 = load i16** %arrayidx1487, align 8, !tbaa !0
  %arrayidx1488 = getelementptr inbounds i16* %357, i64 1
  %358 = load i16* %arrayidx1488, align 2, !tbaa !5
  %conv1489 = sext i16 %358 to i32
  %div1490 = sdiv i32 %conv1489, 2
  %conv1491 = trunc i32 %div1490 to i16
  store i16 %conv1491, i16* %arrayidx1488, align 2, !tbaa !5
  %arrayidx1495 = getelementptr inbounds i16**** %354, i64 1
  %359 = load i16**** %arrayidx1495, align 8, !tbaa !0
  %arrayidx1496 = getelementptr inbounds i16*** %359, i64 %indvars.iv3539
  %360 = load i16*** %arrayidx1496, align 8, !tbaa !0
  %arrayidx1497 = getelementptr inbounds i16** %360, i64 %indvars.iv3537
  %361 = load i16** %arrayidx1497, align 8, !tbaa !0
  %arrayidx1498 = getelementptr inbounds i16* %361, i64 1
  %362 = load i16* %arrayidx1498, align 2, !tbaa !5
  %conv1499 = sext i16 %362 to i32
  %div1500 = sdiv i32 %conv1499, 2
  %conv1501 = trunc i32 %div1500 to i16
  store i16 %conv1501, i16* %arrayidx1498, align 2, !tbaa !5
  %363 = load i16***** %bottom_mv, align 8, !tbaa !0
  %364 = load i16**** %363, align 8, !tbaa !0
  %arrayidx1506 = getelementptr inbounds i16*** %364, i64 %indvars.iv3539
  %365 = load i16*** %arrayidx1506, align 8, !tbaa !0
  %arrayidx1507 = getelementptr inbounds i16** %365, i64 %indvars.iv3537
  %366 = load i16** %arrayidx1507, align 8, !tbaa !0
  %arrayidx1508 = getelementptr inbounds i16* %366, i64 1
  %367 = load i16* %arrayidx1508, align 2, !tbaa !5
  %conv1509 = sext i16 %367 to i32
  %div1510 = sdiv i32 %conv1509, 2
  %conv1511 = trunc i32 %div1510 to i16
  store i16 %conv1511, i16* %arrayidx1508, align 2, !tbaa !5
  %arrayidx1515 = getelementptr inbounds i16**** %363, i64 1
  %368 = load i16**** %arrayidx1515, align 8, !tbaa !0
  %arrayidx1516 = getelementptr inbounds i16*** %368, i64 %indvars.iv3539
  %369 = load i16*** %arrayidx1516, align 8, !tbaa !0
  %arrayidx1517 = getelementptr inbounds i16** %369, i64 %indvars.iv3537
  %370 = load i16** %arrayidx1517, align 8, !tbaa !0
  %arrayidx1518 = getelementptr inbounds i16* %370, i64 1
  %371 = load i16* %arrayidx1518, align 2, !tbaa !5
  %conv1519 = sext i16 %371 to i32
  %div1520 = sdiv i32 %conv1519, 2
  %conv1521 = trunc i32 %div1520 to i16
  store i16 %conv1521, i16* %arrayidx1518, align 2, !tbaa !5
  br label %for.inc1524

for.inc1524:                                      ; preds = %land.lhs.true1473, %lor.end, %if.end722, %if.then1481, %if.end1469
  %indvars.iv.next3538 = add i64 %indvars.iv3537, 1
  %372 = load i32* %size_y409, align 4, !tbaa !3
  %div410 = sdiv i32 %372, 8
  %373 = trunc i64 %indvars.iv.next3538 to i32
  %cmp411 = icmp slt i32 %373, %div410
  br i1 %cmp411, label %for.body413, label %for.cond408.for.inc1527_crit_edge

for.cond408.for.inc1527_crit_edge:                ; preds = %for.inc1524
  %.pre3551 = load i32* %size_x403, align 4, !tbaa !3
  br label %for.inc1527

for.inc1527:                                      ; preds = %for.cond408.for.inc1527_crit_edge, %for.cond408.preheader
  %374 = phi i32 [ %.pre3551, %for.cond408.for.inc1527_crit_edge ], [ %169, %for.cond408.preheader ]
  %375 = phi i32 [ %372, %for.cond408.for.inc1527_crit_edge ], [ %170, %for.cond408.preheader ]
  %indvars.iv.next3540 = add i64 %indvars.iv3539, 1
  %div404 = sdiv i32 %374, 4
  %376 = trunc i64 %indvars.iv.next3540 to i32
  %cmp405 = icmp slt i32 %376, %div404
  br i1 %cmp405, label %for.cond408.preheader, label %if.end1530

if.end1530:                                       ; preds = %for.cond402.preheader, %for.inc1527, %lor.lhs.false398
  %377 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag1531 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %377, i64 0, i32 25
  %378 = load i32* %frame_mbs_only_flag1531, align 4, !tbaa !1
  %tobool1532 = icmp eq i32 %378, 0
  br i1 %tobool1532, label %if.then1536, label %lor.lhs.false1533

lor.lhs.false1533:                                ; preds = %if.end1530
  %direct_8x8_inference_flag1534 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %377, i64 0, i32 27
  %379 = load i32* %direct_8x8_inference_flag1534, align 4, !tbaa !1
  %tobool1535 = icmp eq i32 %379, 0
  br i1 %tobool1535, label %for.cond1839.preheader, label %if.then1536

if.then1536:                                      ; preds = %lor.lhs.false1533, %if.end1530
  %380 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %structure1537 = getelementptr inbounds %struct.ImageParameters* %380, i64 0, i32 7
  %381 = load i32* %structure1537, align 4, !tbaa !3
  %tobool1538 = icmp eq i32 %381, 0
  br i1 %tobool1538, label %for.cond1540.preheader, label %for.cond1839.preheader

for.cond1540.preheader:                           ; preds = %if.then1536
  %size_y1541 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 19
  %382 = load i32* %size_y1541, align 4, !tbaa !3
  %cmp15433506 = icmp sgt i32 %382, 3
  br i1 %cmp15433506, label %for.cond1546.preheader.lr.ph, label %for.cond1839.preheader

for.cond1546.preheader.lr.ph:                     ; preds = %for.cond1540.preheader
  %size_x1547 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 18
  %field_frame1554 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 37
  %bottom_field1560 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 39
  %top_field1565 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 38
  %mv1583 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 6
  %ref_idx1646 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 4
  %ref_id1670 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 34
  %ref_pic_id1676 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 5
  %is_long_term1698 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 18
  %.pre3545 = load i32* %size_x1547, align 4, !tbaa !3
  br label %for.cond1546.preheader

for.cond1546.preheader:                           ; preds = %for.cond1546.preheader.lr.ph, %for.inc1834
  %383 = phi i32 [ %382, %for.cond1546.preheader.lr.ph ], [ %486, %for.inc1834 ]
  %384 = phi i32 [ %.pre3545, %for.cond1546.preheader.lr.ph ], [ %487, %for.inc1834 ]
  %indvars.iv3535 = phi i64 [ 0, %for.cond1546.preheader.lr.ph ], [ %indvars.iv.next3536, %for.inc1834 ]
  %cmp15493503 = icmp sgt i32 %384, 3
  br i1 %cmp15493503, label %for.body1551.lr.ph, label %for.inc1834

for.body1551.lr.ph:                               ; preds = %for.cond1546.preheader
  %385 = trunc i64 %indvars.iv3535 to i32
  %div1572 = sdiv i32 %385, 2
  %idxprom1573 = sext i32 %div1572 to i64
  %div1665 = sdiv i32 %385, 8
  %mul1666 = shl i32 %div1665, 2
  %add1667 = add nsw i32 %mul1666, %div1572
  %idxprom1668 = sext i32 %add1667 to i64
  %add1795 = add i32 %div1572, 4
  %add1796 = add i32 %add1795, %mul1666
  %idxprom1797 = sext i32 %add1796 to i64
  br label %for.body1551

for.cond1839.preheader:                           ; preds = %for.cond1540.preheader, %for.inc1834, %if.then1536, %lor.lhs.false1533
  %size_y1840 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 19
  %386 = load i32* %size_y1840, align 4, !tbaa !3
  %cmp18423500 = icmp sgt i32 %386, 3
  br i1 %cmp18423500, label %for.cond1845.preheader.lr.ph, label %for.end2301

for.cond1845.preheader.lr.ph:                     ; preds = %for.cond1839.preheader
  %size_x1846 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 18
  %mv1875 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 6
  %ref_idx1995 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 4
  %ref_pic_id2051 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 5
  %is_long_term2195 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 14
  %is_long_term2196 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 18
  %moving_block2292 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 7
  %mv2092 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 35
  %ref_idx2148 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 32
  %ref_id2172 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 34
  %.pre3548 = load i32* %size_x1846, align 4, !tbaa !3
  br label %for.cond1845.preheader

for.body1551:                                     ; preds = %for.inc1831, %for.body1551.lr.ph
  %indvars.iv3533 = phi i64 [ 0, %for.body1551.lr.ph ], [ %indvars.iv.next3534, %for.inc1831 ]
  %387 = load i8*** %field_frame1554, align 8, !tbaa !0
  %arrayidx1555 = getelementptr inbounds i8** %387, i64 %indvars.iv3533
  %388 = load i8** %arrayidx1555, align 8, !tbaa !0
  %arrayidx1556 = getelementptr inbounds i8* %388, i64 %indvars.iv3535
  %389 = load i8* %arrayidx1556, align 1, !tbaa !1
  %tobool1557 = icmp eq i8 %389, 0
  br i1 %tobool1557, label %for.inc1831, label %if.then1558

if.then1558:                                      ; preds = %for.body1551
  %390 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %poc1559 = getelementptr inbounds %struct.storable_picture* %390, i64 0, i32 1
  %391 = load i32* %poc1559, align 4, !tbaa !3
  %392 = load %struct.storable_picture** %bottom_field1560, align 8, !tbaa !0
  %poc1561 = getelementptr inbounds %struct.storable_picture* %392, i64 0, i32 1
  %393 = load i32* %poc1561, align 4, !tbaa !3
  %sub1562 = sub nsw i32 %391, %393
  %ispos3444 = icmp sgt i32 %sub1562, -1
  %neg3445 = sub i32 0, %sub1562
  %394 = select i1 %ispos3444, i32 %sub1562, i32 %neg3445
  %395 = load %struct.storable_picture** %top_field1565, align 8, !tbaa !0
  %poc1566 = getelementptr inbounds %struct.storable_picture* %395, i64 0, i32 1
  %396 = load i32* %poc1566, align 4, !tbaa !3
  %sub1567 = sub nsw i32 %391, %396
  %ispos3446 = icmp sgt i32 %sub1567, -1
  %neg3447 = sub i32 0, %sub1567
  %397 = select i1 %ispos3446, i32 %sub1567, i32 %neg3447
  %cmp1569 = icmp sgt i32 %394, %397
  br i1 %cmp1569, label %if.then1571, label %if.else1699

if.then1571:                                      ; preds = %if.then1558
  %mv1576 = getelementptr inbounds %struct.storable_picture* %395, i64 0, i32 35
  %398 = load i16***** %mv1576, align 8, !tbaa !0
  %399 = load i16**** %398, align 8, !tbaa !0
  %arrayidx1578 = getelementptr inbounds i16*** %399, i64 %indvars.iv3533
  %400 = load i16*** %arrayidx1578, align 8, !tbaa !0
  %arrayidx1579 = getelementptr inbounds i16** %400, i64 %idxprom1573
  %401 = load i16** %arrayidx1579, align 8, !tbaa !0
  %402 = load i16* %401, align 2, !tbaa !5
  %403 = load i16***** %mv1583, align 8, !tbaa !0
  %404 = load i16**** %403, align 8, !tbaa !0
  %arrayidx1585 = getelementptr inbounds i16*** %404, i64 %indvars.iv3533
  %405 = load i16*** %arrayidx1585, align 8, !tbaa !0
  %arrayidx1586 = getelementptr inbounds i16** %405, i64 %indvars.iv3535
  %406 = load i16** %arrayidx1586, align 8, !tbaa !0
  store i16 %402, i16* %406, align 2, !tbaa !5
  %arrayidx1596 = getelementptr inbounds i16* %401, i64 1
  %407 = load i16* %arrayidx1596, align 2, !tbaa !5
  %arrayidx1603 = getelementptr inbounds i16* %406, i64 1
  store i16 %407, i16* %arrayidx1603, align 2, !tbaa !5
  %arrayidx1609 = getelementptr inbounds i16**** %398, i64 1
  %408 = load i16**** %arrayidx1609, align 8, !tbaa !0
  %arrayidx1610 = getelementptr inbounds i16*** %408, i64 %indvars.iv3533
  %409 = load i16*** %arrayidx1610, align 8, !tbaa !0
  %arrayidx1611 = getelementptr inbounds i16** %409, i64 %idxprom1573
  %410 = load i16** %arrayidx1611, align 8, !tbaa !0
  %411 = load i16* %410, align 2, !tbaa !5
  %arrayidx1616 = getelementptr inbounds i16**** %403, i64 1
  %412 = load i16**** %arrayidx1616, align 8, !tbaa !0
  %arrayidx1617 = getelementptr inbounds i16*** %412, i64 %indvars.iv3533
  %413 = load i16*** %arrayidx1617, align 8, !tbaa !0
  %arrayidx1618 = getelementptr inbounds i16** %413, i64 %indvars.iv3535
  %414 = load i16** %arrayidx1618, align 8, !tbaa !0
  store i16 %411, i16* %414, align 2, !tbaa !5
  %arrayidx1628 = getelementptr inbounds i16* %410, i64 1
  %415 = load i16* %arrayidx1628, align 2, !tbaa !5
  %arrayidx1635 = getelementptr inbounds i16* %414, i64 1
  store i16 %415, i16* %arrayidx1635, align 2, !tbaa !5
  %ref_idx1640 = getelementptr inbounds %struct.storable_picture* %395, i64 0, i32 32
  %416 = load i16**** %ref_idx1640, align 8, !tbaa !0
  %417 = load i16*** %416, align 8, !tbaa !0
  %arrayidx1642 = getelementptr inbounds i16** %417, i64 %indvars.iv3533
  %418 = load i16** %arrayidx1642, align 8, !tbaa !0
  %arrayidx1643 = getelementptr inbounds i16* %418, i64 %idxprom1573
  %419 = load i16* %arrayidx1643, align 2, !tbaa !5
  %420 = load i16**** %ref_idx1646, align 8, !tbaa !0
  %421 = load i16*** %420, align 8, !tbaa !0
  %arrayidx1648 = getelementptr inbounds i16** %421, i64 %indvars.iv3533
  %422 = load i16** %arrayidx1648, align 8, !tbaa !0
  %arrayidx1649 = getelementptr inbounds i16* %422, i64 %indvars.iv3535
  store i16 %419, i16* %arrayidx1649, align 2, !tbaa !5
  %arrayidx1655 = getelementptr inbounds i16*** %416, i64 1
  %423 = load i16*** %arrayidx1655, align 8, !tbaa !0
  %arrayidx1656 = getelementptr inbounds i16** %423, i64 %indvars.iv3533
  %424 = load i16** %arrayidx1656, align 8, !tbaa !0
  %arrayidx1657 = getelementptr inbounds i16* %424, i64 %idxprom1573
  %425 = load i16* %arrayidx1657, align 2, !tbaa !5
  %arrayidx1661 = getelementptr inbounds i16*** %420, i64 1
  %426 = load i16*** %arrayidx1661, align 8, !tbaa !0
  %arrayidx1662 = getelementptr inbounds i16** %426, i64 %indvars.iv3533
  %427 = load i16** %arrayidx1662, align 8, !tbaa !0
  %arrayidx1663 = getelementptr inbounds i16* %427, i64 %indvars.iv3535
  store i16 %425, i16* %arrayidx1663, align 2, !tbaa !5
  %428 = load i64**** %ref_id1670, align 8, !tbaa !0
  %429 = load i64*** %428, align 8, !tbaa !0
  %arrayidx1672 = getelementptr inbounds i64** %429, i64 %indvars.iv3533
  %430 = load i64** %arrayidx1672, align 8, !tbaa !0
  %arrayidx1673 = getelementptr inbounds i64* %430, i64 %idxprom1668
  %431 = load i64* %arrayidx1673, align 8, !tbaa !4
  %432 = load i64**** %ref_pic_id1676, align 8, !tbaa !0
  %433 = load i64*** %432, align 8, !tbaa !0
  %arrayidx1678 = getelementptr inbounds i64** %433, i64 %indvars.iv3533
  %434 = load i64** %arrayidx1678, align 8, !tbaa !0
  %arrayidx1679 = getelementptr inbounds i64* %434, i64 %indvars.iv3535
  store i64 %431, i64* %arrayidx1679, align 8, !tbaa !4
  %arrayidx1687 = getelementptr inbounds i64*** %428, i64 1
  %435 = load i64*** %arrayidx1687, align 8, !tbaa !0
  %arrayidx1688 = getelementptr inbounds i64** %435, i64 %indvars.iv3533
  %436 = load i64** %arrayidx1688, align 8, !tbaa !0
  %arrayidx1689 = getelementptr inbounds i64* %436, i64 %idxprom1668
  %437 = load i64* %arrayidx1689, align 8, !tbaa !4
  %arrayidx1693 = getelementptr inbounds i64*** %432, i64 1
  %438 = load i64*** %arrayidx1693, align 8, !tbaa !0
  %arrayidx1694 = getelementptr inbounds i64** %438, i64 %indvars.iv3533
  %439 = load i64** %arrayidx1694, align 8, !tbaa !0
  %arrayidx1695 = getelementptr inbounds i64* %439, i64 %indvars.iv3535
  store i64 %437, i64* %arrayidx1695, align 8, !tbaa !4
  %is_long_term1697 = getelementptr inbounds %struct.storable_picture* %395, i64 0, i32 14
  %440 = load i32* %is_long_term1697, align 4, !tbaa !3
  store i32 %440, i32* %is_long_term1698, align 4, !tbaa !3
  br label %for.inc1831

if.else1699:                                      ; preds = %if.then1558
  %mv1704 = getelementptr inbounds %struct.storable_picture* %392, i64 0, i32 35
  %441 = load i16***** %mv1704, align 8, !tbaa !0
  %442 = load i16**** %441, align 8, !tbaa !0
  %arrayidx1706 = getelementptr inbounds i16*** %442, i64 %indvars.iv3533
  %443 = load i16*** %arrayidx1706, align 8, !tbaa !0
  %arrayidx1707 = getelementptr inbounds i16** %443, i64 %idxprom1573
  %444 = load i16** %arrayidx1707, align 8, !tbaa !0
  %445 = load i16* %444, align 2, !tbaa !5
  %446 = load i16***** %mv1583, align 8, !tbaa !0
  %447 = load i16**** %446, align 8, !tbaa !0
  %arrayidx1713 = getelementptr inbounds i16*** %447, i64 %indvars.iv3533
  %448 = load i16*** %arrayidx1713, align 8, !tbaa !0
  %arrayidx1714 = getelementptr inbounds i16** %448, i64 %indvars.iv3535
  %449 = load i16** %arrayidx1714, align 8, !tbaa !0
  store i16 %445, i16* %449, align 2, !tbaa !5
  %arrayidx1724 = getelementptr inbounds i16* %444, i64 1
  %450 = load i16* %arrayidx1724, align 2, !tbaa !5
  %arrayidx1731 = getelementptr inbounds i16* %449, i64 1
  store i16 %450, i16* %arrayidx1731, align 2, !tbaa !5
  %arrayidx1737 = getelementptr inbounds i16**** %441, i64 1
  %451 = load i16**** %arrayidx1737, align 8, !tbaa !0
  %arrayidx1738 = getelementptr inbounds i16*** %451, i64 %indvars.iv3533
  %452 = load i16*** %arrayidx1738, align 8, !tbaa !0
  %arrayidx1739 = getelementptr inbounds i16** %452, i64 %idxprom1573
  %453 = load i16** %arrayidx1739, align 8, !tbaa !0
  %454 = load i16* %453, align 2, !tbaa !5
  %arrayidx1744 = getelementptr inbounds i16**** %446, i64 1
  %455 = load i16**** %arrayidx1744, align 8, !tbaa !0
  %arrayidx1745 = getelementptr inbounds i16*** %455, i64 %indvars.iv3533
  %456 = load i16*** %arrayidx1745, align 8, !tbaa !0
  %arrayidx1746 = getelementptr inbounds i16** %456, i64 %indvars.iv3535
  %457 = load i16** %arrayidx1746, align 8, !tbaa !0
  store i16 %454, i16* %457, align 2, !tbaa !5
  %arrayidx1756 = getelementptr inbounds i16* %453, i64 1
  %458 = load i16* %arrayidx1756, align 2, !tbaa !5
  %arrayidx1763 = getelementptr inbounds i16* %457, i64 1
  store i16 %458, i16* %arrayidx1763, align 2, !tbaa !5
  %ref_idx1768 = getelementptr inbounds %struct.storable_picture* %392, i64 0, i32 32
  %459 = load i16**** %ref_idx1768, align 8, !tbaa !0
  %460 = load i16*** %459, align 8, !tbaa !0
  %arrayidx1770 = getelementptr inbounds i16** %460, i64 %indvars.iv3533
  %461 = load i16** %arrayidx1770, align 8, !tbaa !0
  %arrayidx1771 = getelementptr inbounds i16* %461, i64 %idxprom1573
  %462 = load i16* %arrayidx1771, align 2, !tbaa !5
  %463 = load i16**** %ref_idx1646, align 8, !tbaa !0
  %464 = load i16*** %463, align 8, !tbaa !0
  %arrayidx1776 = getelementptr inbounds i16** %464, i64 %indvars.iv3533
  %465 = load i16** %arrayidx1776, align 8, !tbaa !0
  %arrayidx1777 = getelementptr inbounds i16* %465, i64 %indvars.iv3535
  store i16 %462, i16* %arrayidx1777, align 2, !tbaa !5
  %arrayidx1783 = getelementptr inbounds i16*** %459, i64 1
  %466 = load i16*** %arrayidx1783, align 8, !tbaa !0
  %arrayidx1784 = getelementptr inbounds i16** %466, i64 %indvars.iv3533
  %467 = load i16** %arrayidx1784, align 8, !tbaa !0
  %arrayidx1785 = getelementptr inbounds i16* %467, i64 %idxprom1573
  %468 = load i16* %arrayidx1785, align 2, !tbaa !5
  %arrayidx1789 = getelementptr inbounds i16*** %463, i64 1
  %469 = load i16*** %arrayidx1789, align 8, !tbaa !0
  %arrayidx1790 = getelementptr inbounds i16** %469, i64 %indvars.iv3533
  %470 = load i16** %arrayidx1790, align 8, !tbaa !0
  %arrayidx1791 = getelementptr inbounds i16* %470, i64 %indvars.iv3535
  store i16 %468, i16* %arrayidx1791, align 2, !tbaa !5
  %471 = load i64**** %ref_id1670, align 8, !tbaa !0
  %472 = load i64*** %471, align 8, !tbaa !0
  %arrayidx1801 = getelementptr inbounds i64** %472, i64 %indvars.iv3533
  %473 = load i64** %arrayidx1801, align 8, !tbaa !0
  %arrayidx1802 = getelementptr inbounds i64* %473, i64 %idxprom1797
  %474 = load i64* %arrayidx1802, align 8, !tbaa !4
  %475 = load i64**** %ref_pic_id1676, align 8, !tbaa !0
  %476 = load i64*** %475, align 8, !tbaa !0
  %arrayidx1807 = getelementptr inbounds i64** %476, i64 %indvars.iv3533
  %477 = load i64** %arrayidx1807, align 8, !tbaa !0
  %arrayidx1808 = getelementptr inbounds i64* %477, i64 %indvars.iv3535
  store i64 %474, i64* %arrayidx1808, align 8, !tbaa !4
  %arrayidx1817 = getelementptr inbounds i64*** %471, i64 1
  %478 = load i64*** %arrayidx1817, align 8, !tbaa !0
  %arrayidx1818 = getelementptr inbounds i64** %478, i64 %indvars.iv3533
  %479 = load i64** %arrayidx1818, align 8, !tbaa !0
  %arrayidx1819 = getelementptr inbounds i64* %479, i64 %idxprom1797
  %480 = load i64* %arrayidx1819, align 8, !tbaa !4
  %arrayidx1823 = getelementptr inbounds i64*** %475, i64 1
  %481 = load i64*** %arrayidx1823, align 8, !tbaa !0
  %arrayidx1824 = getelementptr inbounds i64** %481, i64 %indvars.iv3533
  %482 = load i64** %arrayidx1824, align 8, !tbaa !0
  %arrayidx1825 = getelementptr inbounds i64* %482, i64 %indvars.iv3535
  store i64 %480, i64* %arrayidx1825, align 8, !tbaa !4
  %is_long_term1827 = getelementptr inbounds %struct.storable_picture* %392, i64 0, i32 14
  %483 = load i32* %is_long_term1827, align 4, !tbaa !3
  store i32 %483, i32* %is_long_term1698, align 4, !tbaa !3
  br label %for.inc1831

for.inc1831:                                      ; preds = %for.body1551, %if.else1699, %if.then1571
  %indvars.iv.next3534 = add i64 %indvars.iv3533, 1
  %484 = load i32* %size_x1547, align 4, !tbaa !3
  %div1548 = sdiv i32 %484, 4
  %485 = trunc i64 %indvars.iv.next3534 to i32
  %cmp1549 = icmp slt i32 %485, %div1548
  br i1 %cmp1549, label %for.body1551, label %for.cond1546.for.inc1834_crit_edge

for.cond1546.for.inc1834_crit_edge:               ; preds = %for.inc1831
  %.pre3559 = load i32* %size_y1541, align 4, !tbaa !3
  br label %for.inc1834

for.inc1834:                                      ; preds = %for.cond1546.preheader, %for.cond1546.for.inc1834_crit_edge
  %486 = phi i32 [ %.pre3559, %for.cond1546.for.inc1834_crit_edge ], [ %383, %for.cond1546.preheader ]
  %487 = phi i32 [ %484, %for.cond1546.for.inc1834_crit_edge ], [ %384, %for.cond1546.preheader ]
  %indvars.iv.next3536 = add i64 %indvars.iv3535, 1
  %div1542 = sdiv i32 %486, 4
  %488 = trunc i64 %indvars.iv.next3536 to i32
  %cmp1543 = icmp slt i32 %488, %div1542
  br i1 %cmp1543, label %for.cond1546.preheader, label %for.cond1839.preheader

for.cond1845.preheader:                           ; preds = %for.cond1845.preheader.lr.ph, %for.inc2299
  %489 = phi i32 [ %386, %for.cond1845.preheader.lr.ph ], [ %590, %for.inc2299 ]
  %490 = phi i32 [ %.pre3548, %for.cond1845.preheader.lr.ph ], [ %591, %for.inc2299 ]
  %indvars.iv3531 = phi i64 [ 0, %for.cond1845.preheader.lr.ph ], [ %indvars.iv.next3532, %for.inc2299 ]
  %cmp18483497 = icmp sgt i32 %490, 3
  br i1 %cmp18483497, label %for.body1850.lr.ph, label %for.inc2299

for.body1850.lr.ph:                               ; preds = %for.cond1845.preheader
  %and1857 = and i64 %indvars.iv3531, 2
  %tobool1858 = icmp ne i64 %and1857, 0
  %or1860 = or i64 %indvars.iv3531, 1
  %and1862 = and i64 %indvars.iv3531, 4294967294
  %cond1864 = select i1 %tobool1858, i64 %or1860, i64 %and1862
  %sext = shl i64 %cond1864, 32
  %idxprom1865 = ashr exact i64 %sext, 32
  br label %for.body1850

for.body1850:                                     ; preds = %for.inc2296, %for.body1850.lr.ph
  %indvars.iv3529 = phi i64 [ 0, %for.body1850.lr.ph ], [ %indvars.iv.next3530, %for.inc2296 ]
  %491 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag1851 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %491, i64 0, i32 25
  %492 = load i32* %frame_mbs_only_flag1851, align 4, !tbaa !1
  %tobool1852 = icmp eq i32 %492, 0
  br i1 %tobool1852, label %if.then1856, label %lor.lhs.false1853

lor.lhs.false1853:                                ; preds = %for.body1850
  %direct_8x8_inference_flag1854 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %491, i64 0, i32 27
  %493 = load i32* %direct_8x8_inference_flag1854, align 4, !tbaa !1
  %tobool1855 = icmp eq i32 %493, 0
  br i1 %tobool1855, label %if.else2089, label %if.then1856

if.then1856:                                      ; preds = %lor.lhs.false1853, %for.body1850
  %and1866 = and i64 %indvars.iv3529, 2
  %tobool1867 = icmp ne i64 %and1866, 0
  %or1869 = or i64 %indvars.iv3529, 1
  %and1871 = and i64 %indvars.iv3529, 4294967294
  %cond1873 = select i1 %tobool1867, i64 %or1869, i64 %and1871
  %sext3564 = shl i64 %cond1873, 32
  %idxprom1874 = ashr exact i64 %sext3564, 32
  %494 = load i16***** %mv1875, align 8, !tbaa !0
  %495 = load i16**** %494, align 8, !tbaa !0
  %arrayidx1877 = getelementptr inbounds i16*** %495, i64 %idxprom1874
  %496 = load i16*** %arrayidx1877, align 8, !tbaa !0
  %arrayidx1878 = getelementptr inbounds i16** %496, i64 %idxprom1865
  %497 = load i16** %arrayidx1878, align 8, !tbaa !0
  %498 = load i16* %497, align 2, !tbaa !5
  %arrayidx1884 = getelementptr inbounds i16*** %495, i64 %indvars.iv3529
  %499 = load i16*** %arrayidx1884, align 8, !tbaa !0
  %arrayidx1885 = getelementptr inbounds i16** %499, i64 %indvars.iv3531
  %500 = load i16** %arrayidx1885, align 8, !tbaa !0
  store i16 %498, i16* %500, align 2, !tbaa !5
  %arrayidx1909 = getelementptr inbounds i16* %497, i64 1
  %501 = load i16* %arrayidx1909, align 2, !tbaa !5
  %arrayidx1916 = getelementptr inbounds i16* %500, i64 1
  store i16 %501, i16* %arrayidx1916, align 2, !tbaa !5
  %arrayidx1936 = getelementptr inbounds i16**** %494, i64 1
  %502 = load i16**** %arrayidx1936, align 8, !tbaa !0
  %arrayidx1937 = getelementptr inbounds i16*** %502, i64 %idxprom1874
  %503 = load i16*** %arrayidx1937, align 8, !tbaa !0
  %arrayidx1938 = getelementptr inbounds i16** %503, i64 %idxprom1865
  %504 = load i16** %arrayidx1938, align 8, !tbaa !0
  %505 = load i16* %504, align 2, !tbaa !5
  %arrayidx1944 = getelementptr inbounds i16*** %502, i64 %indvars.iv3529
  %506 = load i16*** %arrayidx1944, align 8, !tbaa !0
  %arrayidx1945 = getelementptr inbounds i16** %506, i64 %indvars.iv3531
  %507 = load i16** %arrayidx1945, align 8, !tbaa !0
  store i16 %505, i16* %507, align 2, !tbaa !5
  %arrayidx1969 = getelementptr inbounds i16* %504, i64 1
  %508 = load i16* %arrayidx1969, align 2, !tbaa !5
  %arrayidx1976 = getelementptr inbounds i16* %507, i64 1
  store i16 %508, i16* %arrayidx1976, align 2, !tbaa !5
  %509 = load i16**** %ref_idx1995, align 8, !tbaa !0
  %510 = load i16*** %509, align 8, !tbaa !0
  %arrayidx1997 = getelementptr inbounds i16** %510, i64 %idxprom1874
  %511 = load i16** %arrayidx1997, align 8, !tbaa !0
  %arrayidx1998 = getelementptr inbounds i16* %511, i64 %idxprom1865
  %512 = load i16* %arrayidx1998, align 2, !tbaa !5
  %arrayidx2003 = getelementptr inbounds i16** %510, i64 %indvars.iv3529
  %513 = load i16** %arrayidx2003, align 8, !tbaa !0
  %arrayidx2004 = getelementptr inbounds i16* %513, i64 %indvars.iv3531
  store i16 %512, i16* %arrayidx2004, align 2, !tbaa !5
  %arrayidx2024 = getelementptr inbounds i16*** %509, i64 1
  %514 = load i16*** %arrayidx2024, align 8, !tbaa !0
  %arrayidx2025 = getelementptr inbounds i16** %514, i64 %idxprom1874
  %515 = load i16** %arrayidx2025, align 8, !tbaa !0
  %arrayidx2026 = getelementptr inbounds i16* %515, i64 %idxprom1865
  %516 = load i16* %arrayidx2026, align 2, !tbaa !5
  %arrayidx2031 = getelementptr inbounds i16** %514, i64 %indvars.iv3529
  %517 = load i16** %arrayidx2031, align 8, !tbaa !0
  %arrayidx2032 = getelementptr inbounds i16* %517, i64 %indvars.iv3531
  store i16 %516, i16* %arrayidx2032, align 2, !tbaa !5
  %518 = load i64**** %ref_pic_id2051, align 8, !tbaa !0
  %519 = load i64*** %518, align 8, !tbaa !0
  %arrayidx2053 = getelementptr inbounds i64** %519, i64 %idxprom1874
  %520 = load i64** %arrayidx2053, align 8, !tbaa !0
  %arrayidx2054 = getelementptr inbounds i64* %520, i64 %idxprom1865
  %521 = load i64* %arrayidx2054, align 8, !tbaa !4
  %arrayidx2059 = getelementptr inbounds i64** %519, i64 %indvars.iv3529
  %522 = load i64** %arrayidx2059, align 8, !tbaa !0
  %arrayidx2060 = getelementptr inbounds i64* %522, i64 %indvars.iv3531
  store i64 %521, i64* %arrayidx2060, align 8, !tbaa !4
  %arrayidx2080 = getelementptr inbounds i64*** %518, i64 1
  %523 = load i64*** %arrayidx2080, align 8, !tbaa !0
  %arrayidx2081 = getelementptr inbounds i64** %523, i64 %idxprom1874
  %524 = load i64** %arrayidx2081, align 8, !tbaa !0
  %arrayidx2082 = getelementptr inbounds i64* %524, i64 %idxprom1865
  %525 = load i64* %arrayidx2082, align 8, !tbaa !4
  %arrayidx2087 = getelementptr inbounds i64** %523, i64 %indvars.iv3529
  %526 = load i64** %arrayidx2087, align 8, !tbaa !0
  %arrayidx2088 = getelementptr inbounds i64* %526, i64 %indvars.iv3531
  store i64 %525, i64* %arrayidx2088, align 8, !tbaa !4
  br label %if.end2194

if.else2089:                                      ; preds = %lor.lhs.false1853
  %527 = load i16***** %mv2092, align 8, !tbaa !0
  %528 = load i16**** %527, align 8, !tbaa !0
  %arrayidx2094 = getelementptr inbounds i16*** %528, i64 %indvars.iv3529
  %529 = load i16*** %arrayidx2094, align 8, !tbaa !0
  %arrayidx2095 = getelementptr inbounds i16** %529, i64 %indvars.iv3531
  %530 = load i16** %arrayidx2095, align 8, !tbaa !0
  %531 = load i16* %530, align 2, !tbaa !5
  %532 = load i16***** %mv1875, align 8, !tbaa !0
  %533 = load i16**** %532, align 8, !tbaa !0
  %arrayidx2101 = getelementptr inbounds i16*** %533, i64 %indvars.iv3529
  %534 = load i16*** %arrayidx2101, align 8, !tbaa !0
  %arrayidx2102 = getelementptr inbounds i16** %534, i64 %indvars.iv3531
  %535 = load i16** %arrayidx2102, align 8, !tbaa !0
  store i16 %531, i16* %535, align 2, !tbaa !5
  %arrayidx2110 = getelementptr inbounds i16* %530, i64 1
  %536 = load i16* %arrayidx2110, align 2, !tbaa !5
  %arrayidx2117 = getelementptr inbounds i16* %535, i64 1
  store i16 %536, i16* %arrayidx2117, align 2, !tbaa !5
  %arrayidx2121 = getelementptr inbounds i16**** %527, i64 1
  %537 = load i16**** %arrayidx2121, align 8, !tbaa !0
  %arrayidx2122 = getelementptr inbounds i16*** %537, i64 %indvars.iv3529
  %538 = load i16*** %arrayidx2122, align 8, !tbaa !0
  %arrayidx2123 = getelementptr inbounds i16** %538, i64 %indvars.iv3531
  %539 = load i16** %arrayidx2123, align 8, !tbaa !0
  %540 = load i16* %539, align 2, !tbaa !5
  %arrayidx2128 = getelementptr inbounds i16**** %532, i64 1
  %541 = load i16**** %arrayidx2128, align 8, !tbaa !0
  %arrayidx2129 = getelementptr inbounds i16*** %541, i64 %indvars.iv3529
  %542 = load i16*** %arrayidx2129, align 8, !tbaa !0
  %arrayidx2130 = getelementptr inbounds i16** %542, i64 %indvars.iv3531
  %543 = load i16** %arrayidx2130, align 8, !tbaa !0
  store i16 %540, i16* %543, align 2, !tbaa !5
  %arrayidx2138 = getelementptr inbounds i16* %539, i64 1
  %544 = load i16* %arrayidx2138, align 2, !tbaa !5
  %arrayidx2145 = getelementptr inbounds i16* %543, i64 1
  store i16 %544, i16* %arrayidx2145, align 2, !tbaa !5
  %545 = load i16**** %ref_idx2148, align 8, !tbaa !0
  %546 = load i16*** %545, align 8, !tbaa !0
  %arrayidx2150 = getelementptr inbounds i16** %546, i64 %indvars.iv3529
  %547 = load i16** %arrayidx2150, align 8, !tbaa !0
  %arrayidx2151 = getelementptr inbounds i16* %547, i64 %indvars.iv3531
  %548 = load i16* %arrayidx2151, align 2, !tbaa !5
  %549 = load i16**** %ref_idx1995, align 8, !tbaa !0
  %550 = load i16*** %549, align 8, !tbaa !0
  %arrayidx2156 = getelementptr inbounds i16** %550, i64 %indvars.iv3529
  %551 = load i16** %arrayidx2156, align 8, !tbaa !0
  %arrayidx2157 = getelementptr inbounds i16* %551, i64 %indvars.iv3531
  store i16 %548, i16* %arrayidx2157, align 2, !tbaa !5
  %arrayidx2161 = getelementptr inbounds i16*** %545, i64 1
  %552 = load i16*** %arrayidx2161, align 8, !tbaa !0
  %arrayidx2162 = getelementptr inbounds i16** %552, i64 %indvars.iv3529
  %553 = load i16** %arrayidx2162, align 8, !tbaa !0
  %arrayidx2163 = getelementptr inbounds i16* %553, i64 %indvars.iv3531
  %554 = load i16* %arrayidx2163, align 2, !tbaa !5
  %arrayidx2167 = getelementptr inbounds i16*** %549, i64 1
  %555 = load i16*** %arrayidx2167, align 8, !tbaa !0
  %arrayidx2168 = getelementptr inbounds i16** %555, i64 %indvars.iv3529
  %556 = load i16** %arrayidx2168, align 8, !tbaa !0
  %arrayidx2169 = getelementptr inbounds i16* %556, i64 %indvars.iv3531
  store i16 %554, i16* %arrayidx2169, align 2, !tbaa !5
  %557 = load i64**** %ref_id2172, align 8, !tbaa !0
  %558 = load i64*** %557, align 8, !tbaa !0
  %arrayidx2174 = getelementptr inbounds i64** %558, i64 %indvars.iv3529
  %559 = load i64** %arrayidx2174, align 8, !tbaa !0
  %arrayidx2175 = getelementptr inbounds i64* %559, i64 %indvars.iv3531
  %560 = load i64* %arrayidx2175, align 8, !tbaa !4
  %561 = load i64**** %ref_pic_id2051, align 8, !tbaa !0
  %562 = load i64*** %561, align 8, !tbaa !0
  %arrayidx2180 = getelementptr inbounds i64** %562, i64 %indvars.iv3529
  %563 = load i64** %arrayidx2180, align 8, !tbaa !0
  %arrayidx2181 = getelementptr inbounds i64* %563, i64 %indvars.iv3531
  store i64 %560, i64* %arrayidx2181, align 8, !tbaa !4
  %arrayidx2185 = getelementptr inbounds i64*** %557, i64 1
  %564 = load i64*** %arrayidx2185, align 8, !tbaa !0
  %arrayidx2186 = getelementptr inbounds i64** %564, i64 %indvars.iv3529
  %565 = load i64** %arrayidx2186, align 8, !tbaa !0
  %arrayidx2187 = getelementptr inbounds i64* %565, i64 %indvars.iv3531
  %566 = load i64* %arrayidx2187, align 8, !tbaa !4
  %arrayidx2191 = getelementptr inbounds i64*** %561, i64 1
  %567 = load i64*** %arrayidx2191, align 8, !tbaa !0
  %arrayidx2192 = getelementptr inbounds i64** %567, i64 %indvars.iv3529
  %568 = load i64** %arrayidx2192, align 8, !tbaa !0
  %arrayidx2193 = getelementptr inbounds i64* %568, i64 %indvars.iv3531
  store i64 %566, i64* %arrayidx2193, align 8, !tbaa !4
  br label %if.end2194

if.end2194:                                       ; preds = %if.else2089, %if.then1856
  %569 = phi i16* [ %535, %if.else2089 ], [ %500, %if.then1856 ]
  %570 = phi i16* [ %551, %if.else2089 ], [ %513, %if.then1856 ]
  %571 = phi i16* [ %543, %if.else2089 ], [ %507, %if.then1856 ]
  %572 = phi i16 [ %554, %if.else2089 ], [ %516, %if.then1856 ]
  %573 = load i32* %is_long_term2195, align 4, !tbaa !3
  store i32 %573, i32* %is_long_term2196, align 4, !tbaa !3
  %574 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %direct_spatial_mv_pred_flag2197 = getelementptr inbounds %struct.ImageParameters* %574, i64 0, i32 78
  %575 = load i32* %direct_spatial_mv_pred_flag2197, align 4, !tbaa !3
  %cmp2198 = icmp eq i32 %575, 1
  br i1 %cmp2198, label %if.then2200, label %for.inc2296

if.then2200:                                      ; preds = %if.end2194
  %tobool2202 = icmp eq i32 %573, 0
  %arrayidx2209 = getelementptr inbounds i16* %570, i64 %indvars.iv3531
  %576 = load i16* %arrayidx2209, align 2, !tbaa !5
  %cmp2211 = icmp eq i16 %576, 0
  %or.cond3577 = and i1 %tobool2202, %cmp2211
  br i1 %or.cond3577, label %land.lhs.true2213, label %lor.rhs2239

land.lhs.true2213:                                ; preds = %if.then2200
  %577 = load i16* %569, align 2, !tbaa !5
  %conv2221 = sext i16 %577 to i32
  %ispos3440 = icmp sgt i16 %577, -1
  %neg3441 = sub i32 0, %conv2221
  %578 = select i1 %ispos3440, i32 %conv2221, i32 %neg3441
  %cmp2224 = icmp ult i32 %578, 2
  br i1 %cmp2224, label %land.lhs.true2226, label %lor.rhs2239.thread

land.lhs.true2226:                                ; preds = %land.lhs.true2213
  %arrayidx2233 = getelementptr inbounds i16* %569, i64 1
  %579 = load i16* %arrayidx2233, align 2, !tbaa !5
  %conv2234 = sext i16 %579 to i32
  %ispos3442 = icmp sgt i16 %579, -1
  %neg3443 = sub i32 0, %conv2234
  %580 = select i1 %ispos3442, i32 %conv2234, i32 %neg3443
  %cmp2237 = icmp ult i32 %580, 2
  br i1 %cmp2237, label %lor.end2286, label %lor.rhs2239.thread

lor.rhs2239.thread:                               ; preds = %land.lhs.true2226, %land.lhs.true2213
  br label %lor.end2286

lor.rhs2239:                                      ; preds = %if.then2200
  %cmp2247 = icmp eq i16 %576, -1
  %cmp2257 = icmp eq i16 %572, 0
  %or.cond3578 = and i1 %cmp2247, %cmp2257
  br i1 %or.cond3578, label %land.lhs.true2259, label %lor.end2286

land.lhs.true2259:                                ; preds = %lor.rhs2239
  %581 = load i16* %571, align 2, !tbaa !5
  %conv2267 = sext i16 %581 to i32
  %ispos3436 = icmp sgt i16 %581, -1
  %neg3437 = sub i32 0, %conv2267
  %582 = select i1 %ispos3436, i32 %conv2267, i32 %neg3437
  %cmp2270 = icmp ult i32 %582, 2
  br i1 %cmp2270, label %land.rhs2272, label %lor.end2286

land.rhs2272:                                     ; preds = %land.lhs.true2259
  %arrayidx2279 = getelementptr inbounds i16* %571, i64 1
  %583 = load i16* %arrayidx2279, align 2, !tbaa !5
  %conv2280 = sext i16 %583 to i32
  %ispos3438 = icmp sgt i16 %583, -1
  %neg3439 = sub i32 0, %conv2280
  %584 = select i1 %ispos3438, i32 %conv2280, i32 %neg3439
  %phitmp = icmp ugt i32 %584, 1
  br label %lor.end2286

lor.end2286:                                      ; preds = %lor.rhs2239.thread, %lor.rhs2239, %land.lhs.true2259, %land.rhs2272, %land.lhs.true2226
  %585 = phi i1 [ false, %land.lhs.true2226 ], [ true, %land.lhs.true2259 ], [ true, %lor.rhs2239 ], [ %phitmp, %land.rhs2272 ], [ true, %lor.rhs2239.thread ]
  %conv2289 = zext i1 %585 to i8
  %586 = load i8*** %moving_block2292, align 8, !tbaa !0
  %arrayidx2293 = getelementptr inbounds i8** %586, i64 %indvars.iv3529
  %587 = load i8** %arrayidx2293, align 8, !tbaa !0
  %arrayidx2294 = getelementptr inbounds i8* %587, i64 %indvars.iv3531
  store i8 %conv2289, i8* %arrayidx2294, align 1, !tbaa !1
  br label %for.inc2296

for.inc2296:                                      ; preds = %if.end2194, %lor.end2286
  %indvars.iv.next3530 = add i64 %indvars.iv3529, 1
  %588 = load i32* %size_x1846, align 4, !tbaa !3
  %div1847 = sdiv i32 %588, 4
  %589 = trunc i64 %indvars.iv.next3530 to i32
  %cmp1848 = icmp slt i32 %589, %div1847
  br i1 %cmp1848, label %for.body1850, label %for.cond1845.for.inc2299_crit_edge

for.cond1845.for.inc2299_crit_edge:               ; preds = %for.inc2296
  %.pre3549 = load i32* %size_y1840, align 4, !tbaa !3
  br label %for.inc2299

for.inc2299:                                      ; preds = %for.cond1845.for.inc2299_crit_edge, %for.cond1845.preheader
  %590 = phi i32 [ %.pre3549, %for.cond1845.for.inc2299_crit_edge ], [ %489, %for.cond1845.preheader ]
  %591 = phi i32 [ %588, %for.cond1845.for.inc2299_crit_edge ], [ %490, %for.cond1845.preheader ]
  %indvars.iv.next3532 = add i64 %indvars.iv3531, 1
  %div1841 = sdiv i32 %590, 4
  %592 = trunc i64 %indvars.iv.next3532 to i32
  %cmp1842 = icmp slt i32 %592, %div1841
  br i1 %cmp1842, label %for.cond1845.preheader, label %for.end2301

for.end2301:                                      ; preds = %for.inc2299, %for.cond1839.preheader
  %593 = phi i32 [ %386, %for.cond1839.preheader ], [ %590, %for.inc2299 ]
  %594 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %direct_spatial_mv_pred_flag2302 = getelementptr inbounds %struct.ImageParameters* %594, i64 0, i32 78
  %595 = load i32* %direct_spatial_mv_pred_flag2302, align 4, !tbaa !3
  %cmp2303 = icmp eq i32 %595, 0
  br i1 %cmp2303, label %for.cond2306.preheader, label %if.end2624

for.cond2306.preheader:                           ; preds = %for.end2301
  %cmp23093494 = icmp sgt i32 %593, 3
  br i1 %cmp23093494, label %for.cond2312.preheader.lr.ph, label %for.cond2402.preheader

for.cond2312.preheader.lr.ph:                     ; preds = %for.cond2306.preheader
  %size_x2313 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 18
  %field_frame2326 = getelementptr inbounds %struct.storable_picture* %fs.0, i64 0, i32 37
  %mv2376 = getelementptr inbounds %struct.colocated_params* %p, i64 0, i32 6
  %.pre3547 = load i32* %size_x2313, align 4, !tbaa !3
  br label %for.cond2312.preheader

for.cond2312.preheader:                           ; preds = %for.cond2312.preheader.lr.ph, %for.inc2399
  %indvars.iv3527 = phi i64 [ 0, %for.cond2312.preheader.lr.ph ], [ %indvars.iv.next3528, %for.inc2399 ]
  %cmp23153489 = icmp sgt i32 %.pre3547, 3
  br i1 %cmp23153489, label %for.body2317, label %for.inc2399

for.cond2402.preheader:                           ; preds = %for.inc2399, %for.cond2306.preheader
  %MbaffFrameFlag24033483 = getelementptr inbounds %struct.ImageParameters* %594, i64 0, i32 90
  %596 = load i32* %MbaffFrameFlag24033483, align 4, !tbaa !3
  %mul24043484 = shl nsw i32 %596, 2
  %add240534343485 = or i32 %mul24043484, 2
  %cmp24063486 = icmp sgt i32 %add240534343485, 0
  br i1 %cmp24063486, label %for.cond2409.preheader.lr.ph, label %if.end2624

for.cond2409.preheader.lr.ph:                     ; preds = %for.cond2402.preheader
  %597 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %poc2418 = getelementptr inbounds %struct.storable_picture* %597, i64 0, i32 1
  %top_poc = getelementptr inbounds %struct.storable_picture* %597, i64 0, i32 2
  %bottom_poc = getelementptr inbounds %struct.storable_picture* %597, i64 0, i32 3
  br label %for.cond2409.preheader

for.body2317:                                     ; preds = %for.cond2312.preheader, %for.inc2396
  %indvars.iv3525 = phi i64 [ %indvars.iv.next3526, %for.inc2396 ], [ 0, %for.cond2312.preheader ]
  %MbaffFrameFlag2318 = getelementptr inbounds %struct.ImageParameters* %594, i64 0, i32 90
  %598 = load i32* %MbaffFrameFlag2318, align 4, !tbaa !3
  %tobool2319 = icmp eq i32 %598, 0
  br i1 %tobool2319, label %land.lhs.true2320, label %land.lhs.true2334

land.lhs.true2320:                                ; preds = %for.body2317
  %structure2321 = getelementptr inbounds %struct.ImageParameters* %594, i64 0, i32 7
  %599 = load i32* %structure2321, align 4, !tbaa !3
  %tobool2322 = icmp eq i32 %599, 0
  br i1 %tobool2322, label %land.lhs.true2323, label %if.else2363

land.lhs.true2323:                                ; preds = %land.lhs.true2320
  %600 = load i8*** %field_frame2326, align 8, !tbaa !0
  %arrayidx2327 = getelementptr inbounds i8** %600, i64 %indvars.iv3525
  %601 = load i8** %arrayidx2327, align 8, !tbaa !0
  %arrayidx2328 = getelementptr inbounds i8* %601, i64 %indvars.iv3527
  %602 = load i8* %arrayidx2328, align 1, !tbaa !1
  %tobool2330 = icmp eq i8 %602, 0
  br i1 %tobool2330, label %lor.lhs.false2331, label %if.then2342

lor.lhs.false2331:                                ; preds = %land.lhs.true2323
  br i1 %tobool2319, label %if.else2363, label %land.lhs.true2334

land.lhs.true2334:                                ; preds = %for.body2317, %lor.lhs.false2331
  %603 = load i8*** %field_frame2326, align 8, !tbaa !0
  %arrayidx2338 = getelementptr inbounds i8** %603, i64 %indvars.iv3525
  %604 = load i8** %arrayidx2338, align 8, !tbaa !0
  %arrayidx2339 = getelementptr inbounds i8* %604, i64 %indvars.iv3527
  %605 = load i8* %arrayidx2339, align 1, !tbaa !1
  %tobool2341 = icmp eq i8 %605, 0
  br i1 %tobool2341, label %if.else2363, label %if.then2342

if.then2342:                                      ; preds = %land.lhs.true2334, %land.lhs.true2323
  %606 = load i16***** %mv2376, align 8, !tbaa !0
  %607 = load i16**** %606, align 8, !tbaa !0
  %arrayidx2347 = getelementptr inbounds i16*** %607, i64 %indvars.iv3525
  %608 = load i16*** %arrayidx2347, align 8, !tbaa !0
  %arrayidx2348 = getelementptr inbounds i16** %608, i64 %indvars.iv3527
  %609 = load i16** %arrayidx2348, align 8, !tbaa !0
  %arrayidx2349 = getelementptr inbounds i16* %609, i64 1
  %610 = load i16* %arrayidx2349, align 2, !tbaa !5
  %mul2351 = shl i16 %610, 1
  store i16 %mul2351, i16* %arrayidx2349, align 2, !tbaa !5
  %arrayidx2356 = getelementptr inbounds i16**** %606, i64 1
  %611 = load i16**** %arrayidx2356, align 8, !tbaa !0
  %arrayidx2357 = getelementptr inbounds i16*** %611, i64 %indvars.iv3525
  %612 = load i16*** %arrayidx2357, align 8, !tbaa !0
  %arrayidx2358 = getelementptr inbounds i16** %612, i64 %indvars.iv3527
  %613 = load i16** %arrayidx2358, align 8, !tbaa !0
  %arrayidx2359 = getelementptr inbounds i16* %613, i64 1
  %614 = load i16* %arrayidx2359, align 2, !tbaa !5
  %mul2361 = shl i16 %614, 1
  store i16 %mul2361, i16* %arrayidx2359, align 2, !tbaa !5
  br label %for.inc2396

if.else2363:                                      ; preds = %land.lhs.true2320, %land.lhs.true2334, %lor.lhs.false2331
  %structure2364 = getelementptr inbounds %struct.ImageParameters* %594, i64 0, i32 7
  %615 = load i32* %structure2364, align 4, !tbaa !3
  %tobool2365 = icmp eq i32 %615, 0
  br i1 %tobool2365, label %for.inc2396, label %land.lhs.true2366

land.lhs.true2366:                                ; preds = %if.else2363
  %616 = load i8*** %field_frame2326, align 8, !tbaa !0
  %arrayidx2370 = getelementptr inbounds i8** %616, i64 %indvars.iv3525
  %617 = load i8** %arrayidx2370, align 8, !tbaa !0
  %arrayidx2371 = getelementptr inbounds i8* %617, i64 %indvars.iv3527
  %618 = load i8* %arrayidx2371, align 1, !tbaa !1
  %tobool2372 = icmp eq i8 %618, 0
  br i1 %tobool2372, label %if.then2373, label %for.inc2396

if.then2373:                                      ; preds = %land.lhs.true2366
  %619 = load i16***** %mv2376, align 8, !tbaa !0
  %620 = load i16**** %619, align 8, !tbaa !0
  %arrayidx2378 = getelementptr inbounds i16*** %620, i64 %indvars.iv3525
  %621 = load i16*** %arrayidx2378, align 8, !tbaa !0
  %arrayidx2379 = getelementptr inbounds i16** %621, i64 %indvars.iv3527
  %622 = load i16** %arrayidx2379, align 8, !tbaa !0
  %arrayidx2380 = getelementptr inbounds i16* %622, i64 1
  %623 = load i16* %arrayidx2380, align 2, !tbaa !5
  %conv2381 = sext i16 %623 to i32
  %div2382 = sdiv i32 %conv2381, 2
  %conv2383 = trunc i32 %div2382 to i16
  store i16 %conv2383, i16* %arrayidx2380, align 2, !tbaa !5
  %arrayidx2387 = getelementptr inbounds i16**** %619, i64 1
  %624 = load i16**** %arrayidx2387, align 8, !tbaa !0
  %arrayidx2388 = getelementptr inbounds i16*** %624, i64 %indvars.iv3525
  %625 = load i16*** %arrayidx2388, align 8, !tbaa !0
  %arrayidx2389 = getelementptr inbounds i16** %625, i64 %indvars.iv3527
  %626 = load i16** %arrayidx2389, align 8, !tbaa !0
  %arrayidx2390 = getelementptr inbounds i16* %626, i64 1
  %627 = load i16* %arrayidx2390, align 2, !tbaa !5
  %conv2391 = sext i16 %627 to i32
  %div2392 = sdiv i32 %conv2391, 2
  %conv2393 = trunc i32 %div2392 to i16
  store i16 %conv2393, i16* %arrayidx2390, align 2, !tbaa !5
  br label %for.inc2396

for.inc2396:                                      ; preds = %land.lhs.true2366, %if.else2363, %if.then2342, %if.then2373
  %indvars.iv.next3526 = add i64 %indvars.iv3525, 1
  %div2314 = sdiv i32 %.pre3547, 4
  %628 = trunc i64 %indvars.iv.next3526 to i32
  %cmp2315 = icmp slt i32 %628, %div2314
  br i1 %cmp2315, label %for.body2317, label %for.inc2399

for.inc2399:                                      ; preds = %for.inc2396, %for.cond2312.preheader
  %indvars.iv.next3528 = add i64 %indvars.iv3527, 1
  %div2308 = sdiv i32 %593, 4
  %629 = trunc i64 %indvars.iv.next3528 to i32
  %cmp2309 = icmp slt i32 %629, %div2308
  br i1 %cmp2309, label %for.cond2312.preheader, label %for.cond2402.preheader

for.cond2409.preheader:                           ; preds = %for.cond2409.preheader.lr.ph, %for.inc2621
  %630 = phi i32 [ %596, %for.cond2409.preheader.lr.ph ], [ %652, %for.inc2621 ]
  %indvars.iv3522 = phi i64 [ 0, %for.cond2409.preheader.lr.ph ], [ %indvars.iv.next3523, %for.inc2621 ]
  %arrayidx2411 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv3522
  %631 = load i32* %arrayidx2411, align 8, !tbaa !3
  %cmp24123481 = icmp sgt i32 %631, 0
  br i1 %cmp24123481, label %for.body2414.lr.ph, label %for.inc2621

for.body2414.lr.ph:                               ; preds = %for.cond2409.preheader
  %632 = trunc i64 %indvars.iv3522 to i32
  %arrayidx2422 = getelementptr inbounds %struct.storable_picture*** %listX, i64 %indvars.iv3522
  %633 = or i64 %indvars.iv3522, 1
  %arrayidx2533 = getelementptr inbounds %struct.storable_picture*** %listX, i64 %633
  %634 = load %struct.storable_picture*** %arrayidx2533, align 8, !tbaa !0
  %635 = load %struct.storable_picture** %634, align 8, !tbaa !0
  %poc2535 = getelementptr inbounds %struct.storable_picture* %635, i64 0, i32 1
  %636 = load %struct.storable_picture*** %arrayidx2422, align 8, !tbaa !0
  br label %for.body2414

for.body2414:                                     ; preds = %for.body2414.lr.ph, %for.inc2618
  %indvars.iv = phi i64 [ 0, %for.body2414.lr.ph ], [ %indvars.iv.next, %for.inc2618 ]
  switch i32 %632, label %if.else2493 [
    i32 0, label %if.then2417
    i32 2, label %if.then2457
  ]

if.then2417:                                      ; preds = %for.body2414
  %637 = load i32* %poc2418, align 4, !tbaa !3
  %arrayidx2423 = getelementptr inbounds %struct.storable_picture** %636, i64 %indvars.iv
  %638 = load %struct.storable_picture** %arrayidx2423, align 8, !tbaa !0
  %poc2424 = getelementptr inbounds %struct.storable_picture* %638, i64 0, i32 1
  %639 = load i32* %poc2424, align 4, !tbaa !3
  %sub2425 = sub nsw i32 %637, %639
  %cmp2426 = icmp slt i32 %sub2425, -128
  br i1 %cmp2426, label %if.end2530, label %cond.false2429

cond.false2429:                                   ; preds = %if.then2417
  %cmp2438 = icmp sgt i32 %sub2425, 127
  %.sub2425 = select i1 %cmp2438, i32 127, i32 %sub2425
  br label %if.end2530

if.then2457:                                      ; preds = %for.body2414
  %640 = load i32* %top_poc, align 4, !tbaa !3
  %arrayidx2462 = getelementptr inbounds %struct.storable_picture** %636, i64 %indvars.iv
  %641 = load %struct.storable_picture** %arrayidx2462, align 8, !tbaa !0
  %poc2463 = getelementptr inbounds %struct.storable_picture* %641, i64 0, i32 1
  %642 = load i32* %poc2463, align 4, !tbaa !3
  %sub2464 = sub nsw i32 %640, %642
  %cmp2465 = icmp slt i32 %sub2464, -128
  br i1 %cmp2465, label %if.end2530, label %cond.false2468

cond.false2468:                                   ; preds = %if.then2457
  %cmp2477 = icmp sgt i32 %sub2464, 127
  %.sub2464 = select i1 %cmp2477, i32 127, i32 %sub2464
  br label %if.end2530

if.else2493:                                      ; preds = %for.body2414
  %643 = load i32* %bottom_poc, align 4, !tbaa !3
  %arrayidx2498 = getelementptr inbounds %struct.storable_picture** %636, i64 %indvars.iv
  %644 = load %struct.storable_picture** %arrayidx2498, align 8, !tbaa !0
  %poc2499 = getelementptr inbounds %struct.storable_picture* %644, i64 0, i32 1
  %645 = load i32* %poc2499, align 4, !tbaa !3
  %sub2500 = sub nsw i32 %643, %645
  %cmp2501 = icmp slt i32 %sub2500, -128
  br i1 %cmp2501, label %if.end2530, label %cond.false2504

cond.false2504:                                   ; preds = %if.else2493
  %cmp2513 = icmp sgt i32 %sub2500, 127
  %.sub2500 = select i1 %cmp2513, i32 127, i32 %sub2500
  br label %if.end2530

if.end2530:                                       ; preds = %cond.false2504, %cond.false2468, %cond.false2429, %if.else2493, %if.then2457, %if.then2417
  %iTRb.0 = phi i32 [ -128, %if.then2417 ], [ %.sub2425, %cond.false2429 ], [ -128, %if.then2457 ], [ %.sub2464, %cond.false2468 ], [ -128, %if.else2493 ], [ %.sub2500, %cond.false2504 ]
  %646 = load i32* %poc2535, align 4, !tbaa !3
  %arrayidx2540 = getelementptr inbounds %struct.storable_picture** %636, i64 %indvars.iv
  %647 = load %struct.storable_picture** %arrayidx2540, align 8, !tbaa !0
  %poc2541 = getelementptr inbounds %struct.storable_picture* %647, i64 0, i32 1
  %648 = load i32* %poc2541, align 4, !tbaa !3
  %sub2542 = sub nsw i32 %646, %648
  %cmp2543 = icmp slt i32 %sub2542, -128
  br i1 %cmp2543, label %if.then2581, label %cond.end2577

cond.end2577:                                     ; preds = %if.end2530
  %cmp2559 = icmp sgt i32 %sub2542, 127
  %.sub2542 = select i1 %cmp2559, i32 127, i32 %sub2542
  %cmp2579 = icmp eq i32 %.sub2542, 0
  br i1 %cmp2579, label %if.else2611, label %if.then2581

if.then2581:                                      ; preds = %if.end2530, %cond.end2577
  %cond25783480 = phi i32 [ %.sub2542, %cond.end2577 ], [ -128, %if.end2530 ]
  %div2582 = sdiv i32 %cond25783480, 2
  %ispos = icmp sgt i32 %cond25783480, -2
  %neg = sub i32 0, %div2582
  %649 = select i1 %ispos, i32 %div2582, i32 %neg
  %add2584 = add nsw i32 %649, 16384
  %div2585 = sdiv i32 %add2584, %cond25783480
  %mul2586 = mul nsw i32 %div2585, %iTRb.0
  %add2587 = add nsw i32 %mul2586, 32
  %shr2588 = ashr i32 %add2587, 6
  %cmp2589 = icmp slt i32 %shr2588, -1024
  br i1 %cmp2589, label %cond.end2605, label %cond.false2592

cond.false2592:                                   ; preds = %if.then2581
  %cmp2596 = icmp sgt i32 %shr2588, 1023
  %.shr2588 = select i1 %cmp2596, i32 1023, i32 %shr2588
  br label %cond.end2605

cond.end2605:                                     ; preds = %cond.false2592, %if.then2581
  %cond2606 = phi i32 [ -1024, %if.then2581 ], [ %.shr2588, %cond.false2592 ]
  %arrayidx2610 = getelementptr inbounds %struct.ImageParameters* %594, i64 0, i32 83, i64 %indvars.iv3522, i64 %indvars.iv
  store i32 %cond2606, i32* %arrayidx2610, align 4, !tbaa !3
  br label %for.inc2618

if.else2611:                                      ; preds = %cond.end2577
  %arrayidx2616 = getelementptr inbounds %struct.ImageParameters* %594, i64 0, i32 83, i64 %indvars.iv3522, i64 %indvars.iv
  store i32 9999, i32* %arrayidx2616, align 4, !tbaa !3
  br label %for.inc2618

for.inc2618:                                      ; preds = %cond.end2605, %if.else2611
  %indvars.iv.next = add i64 %indvars.iv, 1
  %650 = load i32* %arrayidx2411, align 8, !tbaa !3
  %651 = trunc i64 %indvars.iv.next to i32
  %cmp2412 = icmp slt i32 %651, %650
  br i1 %cmp2412, label %for.body2414, label %for.cond2409.for.inc2621_crit_edge

for.cond2409.for.inc2621_crit_edge:               ; preds = %for.inc2618
  %.pre3546 = load i32* %MbaffFrameFlag24033483, align 4, !tbaa !3
  br label %for.inc2621

for.inc2621:                                      ; preds = %for.cond2409.for.inc2621_crit_edge, %for.cond2409.preheader
  %652 = phi i32 [ %.pre3546, %for.cond2409.for.inc2621_crit_edge ], [ %630, %for.cond2409.preheader ]
  %indvars.iv.next3523 = add i64 %indvars.iv3522, 2
  %mul2404 = shl nsw i32 %652, 2
  %add24053434 = or i32 %mul2404, 2
  %653 = trunc i64 %indvars.iv.next3523 to i32
  %cmp2406 = icmp slt i32 %653, %add24053434
  br i1 %cmp2406, label %for.cond2409.preheader, label %if.end2624

if.end2624:                                       ; preds = %for.cond2402.preheader, %for.inc2621, %for.end2301
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @output_one_frame_from_dpb() #1 {
entry:
  %poc = alloca i32, align 4
  %pos = alloca i32, align 4
  %0 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([32 x i8]* @.str22, i64 0, i64 0), i32 150) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @get_smallest_poc(i32* %poc, i32* %pos) #7
  %1 = load i32* %pos, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([31 x i8]* @.str23, i64 0, i64 0), i32 150) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i32* @p_dec, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %2, -1
  br i1 %cmp4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %idxprom = sext i32 %1 to i64
  %3 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.frame_store** %3, i64 %idxprom
  %4 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  call void @write_stored_frame(%struct.frame_store* %4, i32 %2) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end3, %if.then5
  %5 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 7), align 8, !tbaa !3
  %6 = load i32* %poc, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @error(i8* getelementptr inbounds ([38 x i8]* @.str24, i64 0, i64 0), i32 150) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end6, %if.then8
  store i32 %6, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 7), align 8, !tbaa !3
  %idxprom10 = sext i32 %1 to i64
  %7 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds %struct.frame_store** %7, i64 %idxprom10
  %8 = load %struct.frame_store** %arrayidx11, align 8, !tbaa !0
  %call = call fastcc i32 @is_used_for_reference(%struct.frame_store* %8) #7
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call fastcc void @remove_frame_from_dpb(i32 %1) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.then12
  ret void
}

; Function Attrs: optsize
declare void @write_stored_frame(%struct.frame_store*, i32) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @is_used_for_reference(%struct.frame_store* nocapture %fs) #4 {
entry:
  %is_reference = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 1
  %0 = load i32* %is_reference, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %is_used = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 0
  %1 = load i32* %is_used, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.end
  %frame = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  %2 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 15
  %3 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %3, 0
  br i1 %tobool2, label %if.end5, label %return

if.end5:                                          ; preds = %if.then1, %if.end
  %4 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %4, i64 0, i32 25
  %5 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool6 = icmp eq i32 %5, 0
  br i1 %tobool6, label %if.then7, label %if.end25

if.then7:                                         ; preds = %if.end5
  %and = and i32 %1, 1
  %tobool9 = icmp eq i32 %and, 0
  br i1 %tobool9, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.then7
  %top_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  %6 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %used_for_reference11 = getelementptr inbounds %struct.storable_picture* %6, i64 0, i32 15
  %7 = load i32* %used_for_reference11, align 4, !tbaa !3
  %tobool12 = icmp eq i32 %7, 0
  br i1 %tobool12, label %if.end15, label %return

if.end15:                                         ; preds = %if.then10, %if.then7
  %and17 = and i32 %1, 2
  %tobool18 = icmp eq i32 %and17, 0
  br i1 %tobool18, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.end15
  %bottom_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  %8 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %used_for_reference20 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 15
  %9 = load i32* %used_for_reference20, align 4, !tbaa !3
  %tobool21 = icmp eq i32 %9, 0
  br i1 %tobool21, label %if.end25, label %return

if.end25:                                         ; preds = %if.then19, %if.end15, %if.end5
  br label %return

return:                                           ; preds = %if.then19, %if.then10, %if.then1, %entry, %if.end25
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 1, %entry ], [ 1, %if.then1 ], [ 1, %if.then10 ], [ 1, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @remove_frame_from_dpb(i32 %pos) #1 {
entry:
  %idxprom = sext i32 %pos to i64
  %0 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.frame_store** %0, i64 %idxprom
  %1 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %is_used = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 0
  %2 = load i32* %is_used, align 4, !tbaa !3
  switch i32 %2, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb5
    i32 1, label %sw.bb8
    i32 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %frame = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 10
  %3 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %3) #7
  %top_field = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 11
  %4 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %4) #7
  %bottom_field = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 12
  %5 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %5) #7
  %6 = bitcast %struct.storable_picture** %frame to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %bottom_field6 = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 12
  %7 = load %struct.storable_picture** %bottom_field6, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %7) #7
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field6, align 8, !tbaa !0
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %top_field9 = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 11
  %8 = load %struct.storable_picture** %top_field9, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %8) #7
  store %struct.storable_picture* null, %struct.storable_picture** %top_field9, align 8, !tbaa !0
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([25 x i8]* @.str25, i64 0, i64 0), i32 500) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry, %sw.bb8, %sw.bb5, %sw.bb
  %9 = bitcast %struct.frame_store* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 4, i1 false)
  %10 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds %struct.frame_store** %10, i64 %idxprom
  %11 = load %struct.frame_store** %arrayidx13, align 8, !tbaa !0
  %12 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %sub40 = add i32 %12, -1
  %cmp41 = icmp ugt i32 %sub40, %pos
  br i1 %cmp41, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %13 = zext i32 %pos to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %14 = phi %struct.frame_store** [ %10, %for.body.lr.ph ], [ %.pre44, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ %13, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %i.042 = phi i32 [ %pos, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %add = add i32 %i.042, 1
  %idxprom14 = zext i32 %add to i64
  %arrayidx15 = getelementptr inbounds %struct.frame_store** %14, i64 %idxprom14
  %15 = load %struct.frame_store** %arrayidx15, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds %struct.frame_store** %14, i64 %indvars.iv
  store %struct.frame_store* %15, %struct.frame_store** %arrayidx17, align 8, !tbaa !0
  %cmp = icmp ult i32 %add, %sub40
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre44 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %sw.epilog
  %16 = phi %struct.frame_store** [ %.pre, %for.cond.for.end_crit_edge ], [ %10, %sw.epilog ]
  %idxprom19 = zext i32 %sub40 to i64
  %arrayidx20 = getelementptr inbounds %struct.frame_store** %16, i64 %idxprom19
  store %struct.frame_store* %11, %struct.frame_store** %arrayidx20, align 8, !tbaa !0
  store i32 %sub40, i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @remove_unused_frame_from_dpb() #1 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp9 = icmp eq i32 %0, 0
  br i1 %cmp9, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.frame_store** %1, i64 %indvars.iv
  %2 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %is_output = getelementptr inbounds %struct.frame_store* %2, i64 0, i32 8
  %3 = load i32* %is_output, align 4, !tbaa !3
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call = tail call fastcc i32 @is_used_for_reference(%struct.frame_store* %2) #7
  %tobool3 = icmp eq i32 %call, 0
  br i1 %tobool3, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @remove_frame_from_dpb(i32 %i.010) #7
  br label %return

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add i32 %i.010, 1
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp ult i32 %4, %0
  br i1 %cmp, label %for.body, label %return

return:                                           ; preds = %entry, %for.inc, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.inc ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @unmark_long_term_frame_for_reference_by_frame_idx(i32 %long_term_frame_idx) #1 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %cmp8 = icmp eq i32 %0, 0
  br i1 %cmp8, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %1 = phi i32 [ %0, %entry ], [ %5, %for.inc ]
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %idxprom = zext i32 %i.09 to i64
  %2 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.frame_store** %2, i64 %idxprom
  %3 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %long_term_frame_idx1 = getelementptr inbounds %struct.frame_store* %3, i64 0, i32 7
  %4 = load i32* %long_term_frame_idx1, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %4, %long_term_frame_idx
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %3) #7
  %.pre = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %5 = phi i32 [ %1, %for.body ], [ %.pre, %if.then ]
  %inc = add i32 %i.09, 1
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @unmark_long_term_field_for_reference_by_frame_idx(i32 %structure, i32 %long_term_frame_idx, i32 %mark_current, i32 %curr_frame_num, i32 %curr_pic_num) #1 {
entry:
  %cmp = icmp slt i32 %curr_pic_num, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %add = add i32 %0, 4
  %mul = shl i32 2, %add
  %add1 = add nsw i32 %mul, %curr_pic_num
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %curr_pic_num.addr.0 = phi i32 [ %add1, %if.then ], [ %curr_pic_num, %entry ]
  %1 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %cmp2126 = icmp eq i32 %1, 0
  br i1 %cmp2126, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %tobool = icmp eq i32 %mark_current, 0
  %div = sdiv i32 %curr_pic_num.addr.0, 2
  %cmp50 = icmp eq i32 %structure, 2
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %i.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %idxprom = zext i32 %i.0127 to i64
  %2 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.frame_store** %2, i64 %idxprom
  %3 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %long_term_frame_idx3 = getelementptr inbounds %struct.frame_store* %3, i64 0, i32 7
  %4 = load i32* %long_term_frame_idx3, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %4, %long_term_frame_idx
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  switch i32 %structure, label %for.inc [
    i32 1, label %if.then7
    i32 2, label %if.then51
  ]

if.then7:                                         ; preds = %if.then5
  %is_long_term = getelementptr inbounds %struct.frame_store* %3, i64 0, i32 2
  %5 = load i32* %is_long_term, align 4, !tbaa !3
  switch i32 %5, label %if.else21 [
    i32 3, label %if.then11
    i32 1, label %if.then18
  ]

if.then11:                                        ; preds = %if.then7
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %3) #7
  br label %for.inc

if.then18:                                        ; preds = %if.then7
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %3) #7
  br label %if.end49

if.else21:                                        ; preds = %if.then7
  br i1 %tobool, label %if.else37, label %if.then22

if.then22:                                        ; preds = %if.else21
  %6 = load %struct.frame_store** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 10), align 8, !tbaa !0
  %tobool23 = icmp eq %struct.frame_store* %6, null
  br i1 %tobool23, label %if.else33, label %if.then24

if.then24:                                        ; preds = %if.then22
  %cmp27 = icmp eq %struct.frame_store* %6, %3
  br i1 %cmp27, label %lor.lhs.false, label %if.then29

lor.lhs.false:                                    ; preds = %if.then24
  %frame_num = getelementptr inbounds %struct.frame_store* %3, i64 0, i32 5
  %7 = load i32* %frame_num, align 4, !tbaa !3
  %cmp28 = icmp eq i32 %7, %curr_frame_num
  br i1 %cmp28, label %for.inc, label %if.then29

if.then29:                                        ; preds = %lor.lhs.false, %if.then24
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %3) #7
  br label %if.end49

if.else33:                                        ; preds = %if.then22
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %3) #7
  br label %if.end49

if.else37:                                        ; preds = %if.else21
  %frame_num40 = getelementptr inbounds %struct.frame_store* %3, i64 0, i32 5
  %8 = load i32* %frame_num40, align 4, !tbaa !3
  %cmp41 = icmp eq i32 %8, %div
  br i1 %cmp41, label %if.end49, label %if.then42

if.then42:                                        ; preds = %if.else37
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %3) #7
  br label %if.end49

if.end49:                                         ; preds = %if.else37, %if.then29, %if.else33, %if.then42, %if.then18
  br i1 %cmp50, label %if.end49.if.then51_crit_edge, label %for.inc

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  %.pre = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 2), align 8, !tbaa !0
  %arrayidx53.phi.trans.insert = getelementptr inbounds %struct.frame_store** %.pre, i64 %idxprom
  %.pre128 = load %struct.frame_store** %arrayidx53.phi.trans.insert, align 8, !tbaa !0
  br label %if.then51

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %if.then5
  %9 = phi %struct.frame_store* [ %.pre128, %if.end49.if.then51_crit_edge ], [ %3, %if.then5 ]
  %is_long_term54 = getelementptr inbounds %struct.frame_store* %9, i64 0, i32 2
  %10 = load i32* %is_long_term54, align 4, !tbaa !3
  switch i32 %10, label %if.else67 [
    i32 3, label %if.then56
    i32 2, label %if.then64
  ]

if.then56:                                        ; preds = %if.then51
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %9) #7
  br label %for.inc

if.then64:                                        ; preds = %if.then51
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %9) #7
  br label %for.inc

if.else67:                                        ; preds = %if.then51
  br i1 %tobool, label %if.else86, label %if.then69

if.then69:                                        ; preds = %if.else67
  %11 = load %struct.frame_store** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 10), align 8, !tbaa !0
  %tobool70 = icmp eq %struct.frame_store* %11, null
  br i1 %tobool70, label %if.else82, label %if.then71

if.then71:                                        ; preds = %if.then69
  %cmp74 = icmp eq %struct.frame_store* %11, %9
  br i1 %cmp74, label %lor.lhs.false75, label %if.then78

lor.lhs.false75:                                  ; preds = %if.then71
  %frame_num76 = getelementptr inbounds %struct.frame_store* %9, i64 0, i32 5
  %12 = load i32* %frame_num76, align 4, !tbaa !3
  %cmp77 = icmp eq i32 %12, %curr_frame_num
  br i1 %cmp77, label %for.inc, label %if.then78

if.then78:                                        ; preds = %lor.lhs.false75, %if.then71
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %9) #7
  br label %for.inc

if.else82:                                        ; preds = %if.then69
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %9) #7
  br label %for.inc

if.else86:                                        ; preds = %if.else67
  %frame_num89 = getelementptr inbounds %struct.frame_store* %9, i64 0, i32 5
  %13 = load i32* %frame_num89, align 4, !tbaa !3
  %cmp91 = icmp eq i32 %13, %div
  br i1 %cmp91, label %for.inc, label %if.then92

if.then92:                                        ; preds = %if.else86
  tail call fastcc void @unmark_for_long_term_reference(%struct.frame_store* %9) #7
  br label %for.inc

for.inc:                                          ; preds = %if.else86, %lor.lhs.false75, %if.end49, %if.then11, %lor.lhs.false, %if.then5, %for.body, %if.then56, %if.then78, %if.else82, %if.then92, %if.then64
  %inc = add i32 %i.0127, 1
  %14 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 6), align 4, !tbaa !3
  %cmp2 = icmp ult i32 %inc, %14
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  ret void
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
