; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/slice.c'
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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, i32, i8** }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }

@img = external global %struct.ImageParameters*
@input = external global %struct.InputParameters*
@stats = external global %struct.StatParameters*
@Bytes_After_Header = external global i32
@rddata_top_frame_mb = external global %struct.RD_DATA
@rdopt = external global %struct.RD_DATA*
@errortext = external global [300 x i8]
@.str = private unnamed_addr constant [83 x i8] c"Error encoding first MB with spcified parameter, bits of current MB may be too big\00", align 1
@rddata_bot_frame_mb = external global %struct.RD_DATA
@rddata_top_field_mb = external global %struct.RD_DATA
@rddata_bot_field_mb = external global %struct.RD_DATA
@MBPairIsField = external global i32
@rpc_bits_to_go = external global i32
@rpc_bytes_to_go = external global i32
@log2_max_frame_num_minus4 = external global i32
@dpb = external global %struct.decoded_picture_buffer
@enc_picture = external global %struct.storable_picture*
@.str1 = private unnamed_addr constant [71 x i8] c"Too many slices per picture, increase MAXLSICESPERPICTURE in global.h.\00", align 1
@active_pps = external global %struct.pic_parameter_set_rbsp_t*
@listXsize = external global [6 x i32]
@listX = external global [6 x %struct.storable_picture**]
@enc_frame_picture2 = external global %struct.storable_picture*
@Co_located = external global %struct.colocated_params*
@active_sps = external global %struct.seq_parameter_set_rbsp_t*
@.str2 = private unnamed_addr constant [30 x i8] c"malloc_slice: slice structure\00", align 1
@assignSE2partition_NoDP = external global [21 x i32]
@assignSE2partition = external global [2 x i32*]
@assignSE2partition_DP = external global [21 x i32]
@.str3 = private unnamed_addr constant [22 x i8] c"malloc_slice: partArr\00", align 1
@.str4 = private unnamed_addr constant [24 x i8] c"malloc_slice: Bitstream\00", align 1
@.str5 = private unnamed_addr constant [27 x i8] c"malloc_slice: StreamBuffer\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @init_ref_pic_list_reordering() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 10
  store i32 0, i32* %ref_pic_list_reordering_flag_l0, align 4, !tbaa !3
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 14
  store i32 0, i32* %ref_pic_list_reordering_flag_l1, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @start_slice() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 61
  %3 = load i32* %partition_mode, align 4, !tbaa !3
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, i32 1, i32 3
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 49
  %4 = load %struct.Picture** %currentPicture, align 8, !tbaa !0
  %idr_flag = getelementptr inbounds %struct.Picture* %4, i64 0, i32 1
  %5 = load i32* %idr_flag, align 4, !tbaa !3
  %tobool = icmp ne i32 %5, 0
  %.cond = select i1 %tobool, i32 1, i32 %cond
  %tr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 55
  %6 = load i32* %tr, align 4, !tbaa !3
  tail call void @RTPUpdateTimestamp(i32 %6) #4
  %partArr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %header_len.037 = phi i32 [ 0, %entry ], [ %header_len.3, %for.inc ]
  %7 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %bitstream = getelementptr inbounds %struct.datapartition* %7, i64 %indvars.iv, i32 0
  %8 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %write_flag = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 10
  store i32 0, i32* %write_flag, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv to i32
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  %call = tail call i32 (i32, ...)* bitcast (i32 (...)* @SliceHeader to i32 (i32, ...)*)(i32 0) #4
  br label %if.end6

if.else:                                          ; preds = %for.body
  %call4 = tail call i32 (i32, ...)* bitcast (i32 (...)* @Partition_BC_Header to i32 (i32, ...)*)(i32 %9) #4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %call.pn = phi i32 [ %call, %if.then3 ], [ %call4, %if.else ]
  %header_len.1 = add nsw i32 %call.pn, %header_len.037
  %10 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 59
  %11 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %11, 1
  br i1 %cmp7, label %if.then8, label %if.else17

if.then8:                                         ; preds = %if.end6
  %12 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %ee_cabac = getelementptr inbounds %struct.datapartition* %12, i64 %indvars.iv, i32 1
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 1
  %13 = load i32* %bits_to_go, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %13, 8
  %add15 = select i1 %cmp12, i32 0, i32 %13
  %header_len.1.add15 = add nsw i32 %add15, %header_len.1
  tail call void @writeVlcByteAlign(%struct.Bitstream* %8) #4
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 9
  %14 = load i8** %streamBuffer, align 8, !tbaa !0
  %byte_pos = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 0
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 6
  %16 = load i32* %type, align 4, !tbaa !3
  tail call void @arienco_start_encoding(%struct.EncodingEnvironment* %ee_cabac, i8* %14, i32* %byte_pos, i32 %16) #4
  tail call void (...)* @cabac_new_slice() #4
  br label %for.inc

if.else17:                                        ; preds = %if.end6
  tail call void (...)* @CAVLC_init() #4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.else17
  %header_len.3 = phi i32 [ %header_len.1.add15, %if.then8 ], [ %header_len.1, %if.else17 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %17 = trunc i64 %indvars.iv.next to i32
  %cmp1 = icmp slt i32 %17, %.cond
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %18 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode19 = getelementptr inbounds %struct.InputParameters* %18, i64 0, i32 59
  %19 = load i32* %symbol_mode19, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %19, 1
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.end
  tail call void (...)* @init_contexts() #4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end
  ret i32 %header_len.3
}

; Function Attrs: optsize
declare void @RTPUpdateTimestamp(i32) #1

; Function Attrs: optsize
declare i32 @SliceHeader(...) #1

; Function Attrs: optsize
declare i32 @Partition_BC_Header(...) #1

; Function Attrs: optsize
declare void @writeVlcByteAlign(%struct.Bitstream*) #1

; Function Attrs: optsize
declare void @arienco_start_encoding(%struct.EncodingEnvironment*, i8*, i32*, i32) #1

; Function Attrs: optsize
declare void @cabac_new_slice(...) #1

; Function Attrs: optsize
declare void @CAVLC_init(...) #1

; Function Attrs: optsize
declare void @init_contexts(...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @terminate_slice() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 59
  %3 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  tail call void @write_terminating_bit(i16 signext 1) #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %max_part_nr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 4
  %4 = load i32* %max_part_nr, align 4, !tbaa !3
  %cmp148 = icmp sgt i32 %4, 0
  br i1 %cmp148, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %partArr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %5 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %bitstream = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv, i32 0
  %6 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode2 = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 59
  %8 = load i32* %symbol_mode2, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  tail call void @SODBtoRBSP(%struct.Bitstream* %6) #4
  %byte_pos = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 0
  %9 = load i32* %byte_pos, align 4, !tbaa !3
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 9
  %10 = load i8** %streamBuffer, align 8, !tbaa !0
  %call = tail call i32 @RBSPtoEBSP(i8* %10, i32 0, i32 %9, i32 0) #4
  store i32 %call, i32* %byte_pos, align 4, !tbaa !3
  %sub = sub nsw i32 %call, %9
  %mul = shl i32 %sub, 3
  %11 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %em_prev_bits = getelementptr inbounds %struct.StatParameters* %11, i64 0, i32 31
  %12 = load i32** %em_prev_bits, align 8, !tbaa !0
  %13 = load i32* %12, align 4, !tbaa !3
  %add = add nsw i32 %13, %mul
  store i32 %add, i32* %12, align 4, !tbaa !3
  br label %for.inc

if.else:                                          ; preds = %for.body
  %ee_cabac = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv, i32 1
  tail call void @arienco_done_encoding(%struct.EncodingEnvironment* %ee_cabac) #4
  %Ebits_to_go = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv, i32 1, i32 3
  %14 = load i32* %Ebits_to_go, align 4, !tbaa !3
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 1
  store i32 %14, i32* %bits_to_go, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  %byte_pos11 = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 0
  %15 = load i32* %byte_pos11, align 4, !tbaa !3
  %streamBuffer13 = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 9
  %16 = load i8** %streamBuffer13, align 8, !tbaa !0
  %E = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv, i32 1, i32 16
  %17 = load i32* %E, align 4, !tbaa !3
  %call15 = tail call i32 @RBSPtoEBSP(i8* %16, i32 0, i32 %15, i32 %17) #4
  store i32 %call15, i32* %byte_pos11, align 4, !tbaa !3
  %sub18 = sub nsw i32 %call15, %15
  %mul19 = shl i32 %sub18, 3
  %18 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %em_prev_bits20 = getelementptr inbounds %struct.StatParameters* %18, i64 0, i32 31
  %19 = load i32** %em_prev_bits20, align 8, !tbaa !0
  %20 = load i32* %19, align 4, !tbaa !3
  %add21 = add nsw i32 %20, %mul19
  store i32 %add21, i32* %19, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %21 = load i32* %max_part_nr, align 4, !tbaa !3
  %22 = trunc i64 %indvars.iv.next to i32
  %cmp1 = icmp slt i32 %22, %21
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %23 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode23 = getelementptr inbounds %struct.InputParameters* %23, i64 0, i32 59
  %24 = load i32* %symbol_mode23, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %24, 1
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.end
  tail call void (...)* @store_contexts() #4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.end
  ret i32 0
}

; Function Attrs: optsize
declare void @write_terminating_bit(i16 signext) #1

; Function Attrs: optsize
declare void @SODBtoRBSP(%struct.Bitstream*) #1

; Function Attrs: optsize
declare i32 @RBSPtoEBSP(i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @arienco_done_encoding(%struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare void @store_contexts(...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @encode_one_slice(i32 %SliceGroupId, %struct.Picture* nocapture %pic) #0 {
entry:
  %end_of_slice = alloca i32, align 4
  %recode_macroblock = alloca i32, align 4
  store i32 0, i32* %end_of_slice, align 4, !tbaa !1
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 27
  store i32 0, i32* %cod_counter, align 4, !tbaa !3
  %call = call i32 @FmoGetFirstMacroblockInSlice(i32 %SliceGroupId) #4
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentPicture.i = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 49
  %2 = load %struct.Picture** %currentPicture.i, align 8, !tbaa !0
  %current_mb_nr.i = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3
  store i32 %call, i32* %current_mb_nr.i, align 4, !tbaa !3
  %no_slices.i = getelementptr inbounds %struct.Picture* %2, i64 0, i32 0
  %3 = load i32* %no_slices.i, align 4, !tbaa !3
  %inc.i = add nsw i32 %3, 1
  store i32 %inc.i, i32* %no_slices.i, align 4, !tbaa !3
  %cmp.i = icmp sgt i32 %3, 98
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @error(i8* getelementptr inbounds ([71 x i8]* @.str1, i64 0, i64 0), i32 -1) #4
  %.pre.i = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %4 = phi %struct.ImageParameters* [ %.pre.i, %if.then.i ], [ %1, %entry ]
  %width.i.i = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 13
  %5 = load i32* %width.i.i, align 4, !tbaa !3
  %height.i.i = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 15
  %6 = load i32* %height.i.i, align 4, !tbaa !3
  %mul.i.i = shl i32 %5, 2
  %mul1.i.i = mul i32 %mul.i.i, %6
  %call.i.i = call noalias i8* @calloc(i64 1, i64 152) #4
  %7 = bitcast i8* %call.i.i to %struct.Slice*
  %cmp.i.i = icmp eq i8* %call.i.i, null
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0)) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i
  %8 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode.i.i = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 59
  %9 = load i32* %symbol_mode.i.i, align 4, !tbaa !3
  %cmp2.i.i = icmp eq i32 %9, 1
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %call4.i.i = call %struct.MotionInfoContexts* @create_contexts_MotionInfo() #4
  %mot_ctx.i.i = getelementptr inbounds i8* %call.i.i, i64 32
  %10 = bitcast i8* %mot_ctx.i.i to %struct.MotionInfoContexts**
  store %struct.MotionInfoContexts* %call4.i.i, %struct.MotionInfoContexts** %10, align 8, !tbaa !0
  %call5.i.i = call %struct.TextureInfoContexts* @create_contexts_TextureInfo() #4
  %tex_ctx.i.i = getelementptr inbounds i8* %call.i.i, i64 40
  %11 = bitcast i8* %tex_ctx.i.i to %struct.TextureInfoContexts**
  store %struct.TextureInfoContexts* %call5.i.i, %struct.TextureInfoContexts** %11, align 8, !tbaa !0
  %.pre.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i, %if.then3.i.i
  %12 = phi %struct.InputParameters* [ %.pre.i.i, %if.then3.i.i ], [ %8, %if.end.i.i ]
  %partition_mode.i.i = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 61
  %13 = load i32* %partition_mode.i.i, align 4, !tbaa !3
  %cmp7.i.i = icmp eq i32 %13, 0
  %cond.i.i = select i1 %cmp7.i.i, i32 1, i32 3
  %max_part_nr.i.i = getelementptr inbounds i8* %call.i.i, i64 16
  %14 = bitcast i8* %max_part_nr.i.i to i32*
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentPicture.i.i = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 49
  %16 = load %struct.Picture** %currentPicture.i.i, align 8, !tbaa !0
  %idr_flag.i.i = getelementptr inbounds %struct.Picture* %16, i64 0, i32 1
  %17 = load i32* %idr_flag.i.i, align 4, !tbaa !3
  %tobool.i.i = icmp eq i32 %17, 0
  %cond..i.i = select i1 %tobool.i.i, i32 %cond.i.i, i32 1
  store i32 %cond..i.i, i32* %14, align 4, !tbaa !3
  store i32* getelementptr inbounds ([21 x i32]* @assignSE2partition_NoDP, i64 0, i64 0), i32** getelementptr inbounds ([2 x i32*]* @assignSE2partition, i64 0, i64 0), align 8, !tbaa !0
  %18 = load %struct.Picture** %currentPicture.i.i, align 8, !tbaa !0
  %idr_flag12.i.i = getelementptr inbounds %struct.Picture* %18, i64 0, i32 1
  %19 = load i32* %idr_flag12.i.i, align 4, !tbaa !3
  %tobool13.i.i = icmp eq i32 %19, 0
  %cmp15.i.i = icmp eq i32 %13, 1
  %or.cond.i.i = and i1 %tobool13.i.i, %cmp15.i.i
  %storemerge.i.i = select i1 %or.cond.i.i, i32* getelementptr inbounds ([21 x i32]* @assignSE2partition_DP, i64 0, i64 0), i32* getelementptr inbounds ([21 x i32]* @assignSE2partition_NoDP, i64 0, i64 0)
  store i32* %storemerge.i.i, i32** getelementptr inbounds ([2 x i32*]* @assignSE2partition, i64 0, i64 1), align 8, !tbaa !0
  %num_mb.i.i = getelementptr inbounds i8* %call.i.i, i64 20
  %20 = bitcast i8* %num_mb.i.i to i32*
  store i32 0, i32* %20, align 4, !tbaa !3
  %conv55.i.i = zext i32 %cond..i.i to i64
  %call19.i.i = call noalias i8* @calloc(i64 %conv55.i.i, i64 120) #4
  %21 = bitcast i8* %call19.i.i to %struct.datapartition*
  %partArr.i.i = getelementptr inbounds i8* %call.i.i, i64 24
  %22 = bitcast i8* %partArr.i.i to %struct.datapartition**
  store %struct.datapartition* %21, %struct.datapartition** %22, align 8, !tbaa !0
  %cmp20.i.i = icmp eq i8* %call19.i.i, null
  br i1 %cmp20.i.i, label %if.then22.i.i, label %for.body.lr.ph.i.i

if.then22.i.i:                                    ; preds = %if.end6.i.i
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0)) #4
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then22.i.i, %if.end6.i.i
  %conv33.i.i = sext i32 %mul1.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %call28.i.i = call noalias i8* @calloc(i64 1, i64 48) #4
  %23 = bitcast i8* %call28.i.i to %struct.Bitstream*
  %bitstream.i.i = getelementptr inbounds %struct.datapartition* %21, i64 %indvars.iv.i.i, i32 0
  store %struct.Bitstream* %23, %struct.Bitstream** %bitstream.i.i, align 8, !tbaa !0
  %cmp29.i.i = icmp eq i8* %call28.i.i, null
  br i1 %cmp29.i.i, label %if.then31.i.i, label %if.end32.i.i

if.then31.i.i:                                    ; preds = %for.body.i.i
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0)) #4
  %.pre54.i.i = load %struct.Bitstream** %bitstream.i.i, align 8, !tbaa !0
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then31.i.i, %for.body.i.i
  %24 = phi %struct.Bitstream* [ %.pre54.i.i, %if.then31.i.i ], [ %23, %for.body.i.i ]
  %call34.i.i = call noalias i8* @calloc(i64 %conv33.i.i, i64 1) #4
  %streamBuffer.i.i = getelementptr inbounds %struct.Bitstream* %24, i64 0, i32 9
  store i8* %call34.i.i, i8** %streamBuffer.i.i, align 8, !tbaa !0
  %cmp36.i.i = icmp eq i8* %call34.i.i, null
  br i1 %cmp36.i.i, label %if.then38.i.i, label %for.inc.i.i

if.then38.i.i:                                    ; preds = %if.end32.i.i
  call void @no_mem_exit(i8* getelementptr inbounds ([27 x i8]* @.str5, i64 0, i64 0)) #4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then38.i.i, %if.end32.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %25 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp25.i.i = icmp slt i32 %25, %cond..i.i
  br i1 %cmp25.i.i, label %for.body.i.i, label %malloc_slice.exit.i

malloc_slice.exit.i:                              ; preds = %for.inc.i.i
  %26 = load i32* %no_slices.i, align 4, !tbaa !3
  %sub.i = add nsw i32 %26, -1
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds %struct.Picture* %2, i64 0, i32 2, i64 %idxprom.i
  store %struct.Slice* %7, %struct.Slice** %arrayidx.i, align 8, !tbaa !0
  %27 = load i32* %no_slices.i, align 4, !tbaa !3
  %sub4.i = add nsw i32 %27, -1
  %idxprom5.i = sext i32 %sub4.i to i64
  %arrayidx7.i = getelementptr inbounds %struct.Picture* %2, i64 0, i32 2, i64 %idxprom5.i
  %28 = load %struct.Slice** %arrayidx7.i, align 8, !tbaa !0
  %29 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice.i = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 50
  store %struct.Slice* %28, %struct.Slice** %currentSlice.i, align 8, !tbaa !0
  %30 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %tr.i = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 55
  %31 = load i32* %tr.i, align 4, !tbaa !3
  %rem.i = srem i32 %31, 256
  %picture_id.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 0
  store i32 %rem.i, i32* %picture_id.i, align 4, !tbaa !3
  %qp.i = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 10
  %32 = load i32* %qp.i, align 4, !tbaa !3
  %qp8.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 1
  store i32 %32, i32* %qp8.i, align 4, !tbaa !3
  %start_mb_nr.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 3
  store i32 %call, i32* %start_mb_nr.i, align 4, !tbaa !3
  %slice_too_big.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 18
  store i32 (i32)* @dummy_slice_too_big, i32 (i32)** %slice_too_big.i, align 8, !tbaa !0
  %max_part_nr.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 4
  %33 = load i32* %max_part_nr.i, align 4, !tbaa !3
  %cmp9273.i = icmp sgt i32 %33, 0
  br i1 %cmp9273.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %malloc_slice.exit.i
  %partArr.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv283.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next284.i, %for.body.i ]
  %34 = load %struct.datapartition** %partArr.i, align 8, !tbaa !0
  %35 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode.i = getelementptr inbounds %struct.InputParameters* %35, i64 0, i32 59
  %36 = load i32* %symbol_mode.i, align 4, !tbaa !3
  %cmp12.i = icmp eq i32 %36, 0
  %writeSyntaxElement.i = getelementptr inbounds %struct.datapartition* %34, i64 %indvars.iv283.i, i32 2
  %writeSyntaxElement_UVLC.writeSyntaxElement_CABAC.i = select i1 %cmp12.i, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_UVLC, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_CABAC
  store i32 (%struct.syntaxelement*, %struct.datapartition*)* %writeSyntaxElement_UVLC.writeSyntaxElement_CABAC.i, i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement.i, align 8, !tbaa !0
  %bitstream.i = getelementptr inbounds %struct.datapartition* %34, i64 %indvars.iv283.i, i32 0
  %37 = load %struct.Bitstream** %bitstream.i, align 8, !tbaa !0
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %37, i64 0, i32 1
  store i32 8, i32* %bits_to_go.i, align 4, !tbaa !3
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %37, i64 0, i32 0
  store i32 0, i32* %byte_pos.i, align 4, !tbaa !3
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %37, i64 0, i32 2
  store i8 0, i8* %byte_buf.i, align 1, !tbaa !1
  %indvars.iv.next284.i = add i64 %indvars.iv283.i, 1
  %38 = load i32* %max_part_nr.i, align 4, !tbaa !3
  %39 = trunc i64 %indvars.iv.next284.i to i32
  %cmp9.i = icmp slt i32 %39, %38
  br i1 %cmp9.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i, %malloc_slice.exit.i
  %40 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %num_ref_idx_l0_active_minus1.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %40, i64 0, i32 17
  %41 = load i32* %num_ref_idx_l0_active_minus1.i, align 4, !tbaa !3
  %add.i = add nsw i32 %41, 1
  %42 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_ref_idx_l0_active.i = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 79
  store i32 %add.i, i32* %num_ref_idx_l0_active.i, align 4, !tbaa !3
  %num_ref_idx_l1_active_minus1.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %40, i64 0, i32 18
  %43 = load i32* %num_ref_idx_l1_active_minus1.i, align 4, !tbaa !3
  %add17.i = add nsw i32 %43, 1
  %num_ref_idx_l1_active.i = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 80
  store i32 %add17.i, i32* %num_ref_idx_l1_active.i, align 4, !tbaa !3
  %type.i = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 6
  %44 = load i32* %type.i, align 4, !tbaa !3
  %structure.i = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 7
  %45 = load i32* %structure.i, align 4, !tbaa !3
  call void @init_lists(i32 %44, i32 %45) #4
  %46 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  %47 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_ref_idx_l0_active18.i = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 79
  store i32 %46, i32* %num_ref_idx_l0_active18.i, align 4, !tbaa !3
  %48 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %num_ref_idx_l1_active19.i = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 80
  store i32 %48, i32* %num_ref_idx_l1_active19.i, align 4, !tbaa !3
  %type20.i = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 6
  %49 = load i32* %type20.i, align 4, !tbaa !3
  switch i32 %49, label %if.end38.i [
    i32 0, label %land.lhs.true.i
    i32 3, label %land.lhs.true.i
  ]

land.lhs.true.i:                                  ; preds = %for.end.i, %for.end.i
  %50 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %P_List0_refs.i = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 10
  %51 = load i32* %P_List0_refs.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %51, 0
  br i1 %tobool.i, label %if.end38.i, label %if.then24.i

if.then24.i:                                      ; preds = %land.lhs.true.i
  %cmp27.i = icmp slt i32 %46, %51
  %..i = select i1 %cmp27.i, i32 %46, i32 %51
  store i32 %..i, i32* %num_ref_idx_l0_active18.i, align 4, !tbaa !3
  %52 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  %53 = load i32* %P_List0_refs.i, align 4, !tbaa !3
  %cmp32.i = icmp slt i32 %52, %53
  %cond37.i = select i1 %cmp32.i, i32 %52, i32 %53
  store i32 %cond37.i, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  %.pre285.i = load i32* %type20.i, align 4, !tbaa !3
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then24.i, %land.lhs.true.i, %for.end.i
  %54 = phi i32 [ %49, %for.end.i ], [ %49, %land.lhs.true.i ], [ %.pre285.i, %if.then24.i ]
  %cmp40.i = icmp eq i32 %54, 1
  br i1 %cmp40.i, label %if.then41.i, label %if.end82.i

if.then41.i:                                      ; preds = %if.end38.i
  %55 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %B_List0_refs.i = getelementptr inbounds %struct.InputParameters* %55, i64 0, i32 11
  %56 = load i32* %B_List0_refs.i, align 4, !tbaa !3
  %tobool42.i = icmp eq i32 %56, 0
  br i1 %tobool42.i, label %if.end61.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.then41.i
  %57 = load i32* %num_ref_idx_l0_active18.i, align 4, !tbaa !3
  %cmp46.i = icmp slt i32 %57, %56
  %.253.i = select i1 %cmp46.i, i32 %57, i32 %56
  store i32 %.253.i, i32* %num_ref_idx_l0_active18.i, align 4, !tbaa !3
  %58 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  %59 = load i32* %B_List0_refs.i, align 4, !tbaa !3
  %cmp55.i = icmp slt i32 %58, %59
  %cond60.i = select i1 %cmp55.i, i32 %58, i32 %59
  store i32 %cond60.i, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then43.i, %if.then41.i
  %B_List1_refs.i = getelementptr inbounds %struct.InputParameters* %55, i64 0, i32 12
  %60 = load i32* %B_List1_refs.i, align 4, !tbaa !3
  %tobool62.i = icmp eq i32 %60, 0
  br i1 %tobool62.i, label %if.end82.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end61.i
  %61 = load i32* %num_ref_idx_l1_active19.i, align 4, !tbaa !3
  %cmp66.i = icmp slt i32 %61, %60
  %.254.i = select i1 %cmp66.i, i32 %61, i32 %60
  store i32 %.254.i, i32* %num_ref_idx_l1_active19.i, align 4, !tbaa !3
  %62 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %63 = load i32* %B_List1_refs.i, align 4, !tbaa !3
  %cmp75.i = icmp slt i32 %62, %63
  %cond80.i = select i1 %cmp75.i, i32 %62, i32 %63
  store i32 %cond80.i, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then63.i, %if.end61.i, %if.end38.i
  %nal_reference_idc.i = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 113
  %64 = load i32* %nal_reference_idc.i, align 4, !tbaa !3
  %tobool83.i = icmp eq i32 %64, 0
  br i1 %tobool83.i, label %if.end91.i, label %land.lhs.true84.i

land.lhs.true84.i:                                ; preds = %if.end82.i
  %65 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PyramidCoding.i = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 55
  %66 = load i32* %PyramidCoding.i, align 4, !tbaa !3
  %tobool85.i = icmp eq i32 %66, 0
  br i1 %tobool85.i, label %if.end91.i, label %land.lhs.true86.i

land.lhs.true86.i:                                ; preds = %land.lhs.true84.i
  %PocMemoryManagement.i = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 58
  %67 = load i32* %PocMemoryManagement.i, align 4, !tbaa !3
  %tobool87.i = icmp eq i32 %67, 0
  br i1 %tobool87.i, label %if.end91.i, label %land.lhs.true88.i

land.lhs.true88.i:                                ; preds = %land.lhs.true86.i
  %68 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %69 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 3), align 8, !tbaa !3
  %cmp89.i = icmp eq i32 %68, %69
  br i1 %cmp89.i, label %if.then90.i, label %if.end91.i

if.then90.i:                                      ; preds = %land.lhs.true88.i
  %frame_num.i = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 105
  %70 = load i32* %frame_num.i, align 4, !tbaa !3
  call void @poc_based_ref_management(i32 %70) #4
  %.pre286.i = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then90.i, %land.lhs.true88.i, %land.lhs.true86.i, %land.lhs.true84.i, %if.end82.i
  %71 = phi %struct.ImageParameters* [ %47, %land.lhs.true86.i ], [ %47, %land.lhs.true84.i ], [ %47, %if.end82.i ], [ %.pre286.i, %if.then90.i ], [ %47, %land.lhs.true88.i ]
  %currentSlice.i.i = getelementptr inbounds %struct.ImageParameters* %71, i64 0, i32 50
  %72 = load %struct.Slice** %currentSlice.i.i, align 8, !tbaa !0
  %ref_pic_list_reordering_flag_l0.i.i = getelementptr inbounds %struct.Slice* %72, i64 0, i32 10
  store i32 0, i32* %ref_pic_list_reordering_flag_l0.i.i, align 4, !tbaa !3
  %ref_pic_list_reordering_flag_l1.i.i = getelementptr inbounds %struct.Slice* %72, i64 0, i32 14
  store i32 0, i32* %ref_pic_list_reordering_flag_l1.i.i, align 4, !tbaa !3
  %type92.i = getelementptr inbounds %struct.ImageParameters* %71, i64 0, i32 6
  %73 = load i32* %type92.i, align 4, !tbaa !3
  %cmp93.i = icmp eq i32 %73, 0
  br i1 %cmp93.i, label %land.lhs.true94.i, label %if.end169.i

land.lhs.true94.i:                                ; preds = %if.end91.i
  %74 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PyramidCoding95.i = getelementptr inbounds %struct.InputParameters* %74, i64 0, i32 55
  %75 = load i32* %PyramidCoding95.i, align 4, !tbaa !3
  %tobool96.i = icmp eq i32 %75, 0
  br i1 %tobool96.i, label %if.end169.i, label %land.lhs.true97.i

land.lhs.true97.i:                                ; preds = %land.lhs.true94.i
  %PyramidRefReorder.i = getelementptr inbounds %struct.InputParameters* %74, i64 0, i32 57
  %76 = load i32* %PyramidRefReorder.i, align 4, !tbaa !3
  %tobool98.i = icmp eq i32 %76, 0
  br i1 %tobool98.i, label %if.end169.i, label %if.then99.i

if.then99.i:                                      ; preds = %land.lhs.true97.i
  call void @alloc_ref_pic_list_reordering_buffer(%struct.Slice* %28) #4
  %77 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type101.i = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 6
  %78 = load i32* %type101.i, align 4, !tbaa !3
  switch i32 %78, label %for.cond107.preheader.i [
    i32 2, label %if.end139.i
    i32 4, label %if.end139.i
  ]

for.cond107.preheader.i:                          ; preds = %if.then99.i
  %num_ref_idx_l0_active108269.i = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 79
  %79 = load i32* %num_ref_idx_l0_active108269.i, align 4, !tbaa !3
  %cmp110271.i = icmp sgt i32 %79, -1
  br i1 %cmp110271.i, label %for.body111.lr.ph.i, label %for.end120.i

for.body111.lr.ph.i:                              ; preds = %for.cond107.preheader.i
  %remapping_of_pic_nums_idc_l0.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 11
  %80 = load i32** %remapping_of_pic_nums_idc_l0.i, align 8, !tbaa !0
  %abs_diff_pic_num_minus1_l0.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 12
  %81 = load i32** %abs_diff_pic_num_minus1_l0.i, align 8, !tbaa !0
  %long_term_pic_idx_l0.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 13
  %82 = load i32** %long_term_pic_idx_l0.i, align 8, !tbaa !0
  br label %for.body111.i

for.body111.i:                                    ; preds = %for.body111.i, %for.body111.lr.ph.i
  %indvars.iv281.i = phi i64 [ 0, %for.body111.lr.ph.i ], [ %indvars.iv.next282.i, %for.body111.i ]
  %arrayidx113.i = getelementptr inbounds i32* %80, i64 %indvars.iv281.i
  store i32 3, i32* %arrayidx113.i, align 4, !tbaa !3
  %arrayidx115.i = getelementptr inbounds i32* %81, i64 %indvars.iv281.i
  store i32 0, i32* %arrayidx115.i, align 4, !tbaa !3
  %arrayidx117.i = getelementptr inbounds i32* %82, i64 %indvars.iv281.i
  store i32 0, i32* %arrayidx117.i, align 4, !tbaa !3
  %indvars.iv.next282.i = add i64 %indvars.iv281.i, 1
  %83 = load i32* %num_ref_idx_l0_active108269.i, align 4, !tbaa !3
  %84 = trunc i64 %indvars.iv281.i to i32
  %cmp110.i = icmp slt i32 %84, %83
  br i1 %cmp110.i, label %for.body111.i, label %for.cond107.for.end120_crit_edge.i

for.cond107.for.end120_crit_edge.i:               ; preds = %for.body111.i
  %.pre288.i = load i32* %type101.i, align 4, !tbaa !3
  br label %for.end120.i

for.end120.i:                                     ; preds = %for.cond107.for.end120_crit_edge.i, %for.cond107.preheader.i
  %85 = phi i32 [ %83, %for.cond107.for.end120_crit_edge.i ], [ %79, %for.cond107.preheader.i ]
  %86 = phi i32 [ %.pre288.i, %for.cond107.for.end120_crit_edge.i ], [ %78, %for.cond107.preheader.i ]
  %cmp122.i = icmp eq i32 %86, 1
  br i1 %cmp122.i, label %for.cond124.preheader.i, label %if.end139.i

for.cond124.preheader.i:                          ; preds = %for.end120.i
  %num_ref_idx_l1_active125265.i = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 80
  %87 = load i32* %num_ref_idx_l1_active125265.i, align 4, !tbaa !3
  %cmp127267.i = icmp sgt i32 %87, -1
  br i1 %cmp127267.i, label %for.body128.lr.ph.i, label %if.then145.i

for.body128.lr.ph.i:                              ; preds = %for.cond124.preheader.i
  %remapping_of_pic_nums_idc_l1.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 15
  %88 = load i32** %remapping_of_pic_nums_idc_l1.i, align 8, !tbaa !0
  %abs_diff_pic_num_minus1_l1.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 16
  %89 = load i32** %abs_diff_pic_num_minus1_l1.i, align 8, !tbaa !0
  %long_term_pic_idx_l1.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 17
  %90 = load i32** %long_term_pic_idx_l1.i, align 8, !tbaa !0
  br label %for.body128.i

for.body128.i:                                    ; preds = %for.body128.i, %for.body128.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body128.lr.ph.i ], [ %indvars.iv.next.i, %for.body128.i ]
  %arrayidx130.i = getelementptr inbounds i32* %88, i64 %indvars.iv.i
  store i32 3, i32* %arrayidx130.i, align 4, !tbaa !3
  %arrayidx132.i = getelementptr inbounds i32* %89, i64 %indvars.iv.i
  store i32 0, i32* %arrayidx132.i, align 4, !tbaa !3
  %arrayidx134.i = getelementptr inbounds i32* %90, i64 %indvars.iv.i
  store i32 0, i32* %arrayidx134.i, align 4, !tbaa !3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %91 = load i32* %num_ref_idx_l1_active125265.i, align 4, !tbaa !3
  %92 = trunc i64 %indvars.iv.i to i32
  %cmp127.i = icmp slt i32 %92, %91
  br i1 %cmp127.i, label %for.body128.i, label %for.cond124.if.end139.loopexit_crit_edge.i

for.cond124.if.end139.loopexit_crit_edge.i:       ; preds = %for.body128.i
  %.pre287.pre.i = load i32* %type101.i, align 4, !tbaa !3
  br label %if.end139.i

if.end139.i:                                      ; preds = %for.cond124.if.end139.loopexit_crit_edge.i, %for.end120.i, %if.then99.i, %if.then99.i
  %93 = phi i32 [ %78, %if.then99.i ], [ %78, %if.then99.i ], [ %86, %for.end120.i ], [ %.pre287.pre.i, %for.cond124.if.end139.loopexit_crit_edge.i ]
  switch i32 %93, label %if.end139.i.if.then145.i_crit_edge [
    i32 2, label %if.end169.i
    i32 4, label %if.end169.i
  ]

if.end139.i.if.then145.i_crit_edge:               ; preds = %if.end139.i
  %num_ref_idx_l0_active146.i.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 79
  %.pre175 = load i32* %num_ref_idx_l0_active146.i.phi.trans.insert, align 4, !tbaa !3
  br label %if.then145.i

if.then145.i:                                     ; preds = %for.cond124.preheader.i, %if.end139.i.if.then145.i_crit_edge
  %94 = phi i32 [ %.pre175, %if.end139.i.if.then145.i_crit_edge ], [ %85, %for.cond124.preheader.i ]
  %95 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !tbaa !0
  %remapping_of_pic_nums_idc_l0147.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 11
  %96 = load i32** %remapping_of_pic_nums_idc_l0147.i, align 8, !tbaa !0
  %abs_diff_pic_num_minus1_l0148.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 12
  %97 = load i32** %abs_diff_pic_num_minus1_l0148.i, align 8, !tbaa !0
  %long_term_pic_idx_l0149.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 13
  call void @poc_ref_pic_reorder(%struct.storable_picture** %95, i32 %94, i32* %96, i32* %97, i32* undef, i32 undef, i32 0) #4
  %98 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !tbaa !0
  %99 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_ref_idx_l0_active150.i = getelementptr inbounds %struct.ImageParameters* %99, i64 0, i32 79
  %100 = load i32* %num_ref_idx_l0_active150.i, align 4, !tbaa !3
  %sub151.i = add nsw i32 %100, -1
  %101 = load i32** %remapping_of_pic_nums_idc_l0147.i, align 8, !tbaa !0
  %102 = load i32** %abs_diff_pic_num_minus1_l0148.i, align 8, !tbaa !0
  %103 = load i32** %long_term_pic_idx_l0149.i, align 8, !tbaa !0
  call void @reorder_ref_pic_list(%struct.storable_picture** %98, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), i32 %sub151.i, i32* %101, i32* %102, i32* %103) #4
  %104 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type155.i = getelementptr inbounds %struct.ImageParameters* %104, i64 0, i32 6
  %105 = load i32* %type155.i, align 4, !tbaa !3
  %cmp156.i = icmp eq i32 %105, 1
  br i1 %cmp156.i, label %if.then157.i, label %if.end169.i

if.then157.i:                                     ; preds = %if.then145.i
  %num_ref_idx_l1_active158.i = getelementptr inbounds %struct.ImageParameters* %104, i64 0, i32 80
  %106 = load i32* %num_ref_idx_l1_active158.i, align 4, !tbaa !3
  %107 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %remapping_of_pic_nums_idc_l1159.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 15
  %108 = load i32** %remapping_of_pic_nums_idc_l1159.i, align 8, !tbaa !0
  %abs_diff_pic_num_minus1_l1160.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 16
  %109 = load i32** %abs_diff_pic_num_minus1_l1160.i, align 8, !tbaa !0
  %long_term_pic_idx_l1161.i = getelementptr inbounds %struct.Slice* %28, i64 0, i32 17
  call void @poc_ref_pic_reorder(%struct.storable_picture** %107, i32 %106, i32* %108, i32* %109, i32* undef, i32 undef, i32 1) #4
  %110 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %111 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_ref_idx_l1_active162.i = getelementptr inbounds %struct.ImageParameters* %111, i64 0, i32 80
  %112 = load i32* %num_ref_idx_l1_active162.i, align 4, !tbaa !3
  %sub163.i = add nsw i32 %112, -1
  %113 = load i32** %remapping_of_pic_nums_idc_l1159.i, align 8, !tbaa !0
  %114 = load i32** %abs_diff_pic_num_minus1_l1160.i, align 8, !tbaa !0
  %115 = load i32** %long_term_pic_idx_l1161.i, align 8, !tbaa !0
  call void @reorder_ref_pic_list(%struct.storable_picture** %110, i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), i32 %sub163.i, i32* %113, i32* %114, i32* %115) #4
  %.pre290.i = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then157.i, %if.then145.i, %if.end139.i, %if.end139.i, %land.lhs.true97.i, %land.lhs.true94.i, %if.end91.i
  %116 = phi %struct.ImageParameters* [ %77, %if.end139.i ], [ %77, %if.end139.i ], [ %71, %land.lhs.true97.i ], [ %71, %land.lhs.true94.i ], [ %.pre290.i, %if.then157.i ], [ %104, %if.then145.i ], [ %71, %if.end91.i ]
  %structure170.i = getelementptr inbounds %struct.ImageParameters* %116, i64 0, i32 7
  %117 = load i32* %structure170.i, align 4, !tbaa !3
  %cmp171.i = icmp eq i32 %117, 0
  br i1 %cmp171.i, label %if.then172.i, label %if.end173.i

if.then172.i:                                     ; preds = %if.end169.i
  call void (...)* @init_mbaff_lists() #4
  %.pre291.i = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.then172.i, %if.end169.i
  %118 = phi %struct.ImageParameters* [ %.pre291.i, %if.then172.i ], [ %116, %if.end169.i ]
  %type174.i = getelementptr inbounds %struct.ImageParameters* %118, i64 0, i32 6
  %119 = load i32* %type174.i, align 4, !tbaa !3
  %cmp175.i = icmp eq i32 %119, 2
  br i1 %cmp175.i, label %if.end202.i, label %land.lhs.true176.i

land.lhs.true176.i:                               ; preds = %if.end173.i
  %120 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_pred_flag.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %120, i64 0, i32 19
  %121 = load i32* %weighted_pred_flag.i, align 4, !tbaa !1
  %cmp177.i = icmp eq i32 %121, 1
  br i1 %cmp177.i, label %if.then183.i, label %lor.lhs.false178.i

lor.lhs.false178.i:                               ; preds = %land.lhs.true176.i
  %weighted_bipred_idc.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %120, i64 0, i32 20
  %122 = load i32* %weighted_bipred_idc.i, align 4, !tbaa !3
  %cmp179.i = icmp ne i32 %122, 0
  %cmp182.i = icmp eq i32 %119, 1
  %or.cond.i = and i1 %cmp179.i, %cmp182.i
  br i1 %or.cond.i, label %if.then183.i, label %if.end202.i

if.then183.i:                                     ; preds = %lor.lhs.false178.i, %land.lhs.true176.i
  switch i32 %119, label %if.else200.i [
    i32 0, label %if.then189.i
    i32 3, label %if.then189.i
  ]

if.then189.i:                                     ; preds = %if.then183.i, %if.then183.i
  %123 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %GenerateMultiplePPS.i = getelementptr inbounds %struct.InputParameters* %123, i64 0, i32 15
  %124 = load i32* %GenerateMultiplePPS.i, align 4, !tbaa !3
  %tobool190.i = icmp eq i32 %124, 0
  br i1 %tobool190.i, label %if.else198.i, label %land.lhs.true191.i

land.lhs.true191.i:                               ; preds = %if.then189.i
  %RDPictureDecision.i = getelementptr inbounds %struct.InputParameters* %123, i64 0, i32 49
  %125 = load i32* %RDPictureDecision.i, align 4, !tbaa !3
  %tobool192.i = icmp eq i32 %125, 0
  br i1 %tobool192.i, label %if.else198.i, label %if.then193.i

if.then193.i:                                     ; preds = %land.lhs.true191.i
  %126 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %127 = load %struct.storable_picture** @enc_frame_picture2, align 8, !tbaa !0
  %cmp194.i = icmp eq %struct.storable_picture* %126, %127
  br i1 %cmp194.i, label %if.then195.i, label %if.else196.i

if.then195.i:                                     ; preds = %if.then193.i
  call void @estimate_weighting_factor_P_slice(i32 0) #4
  br label %if.end202.i

if.else196.i:                                     ; preds = %if.then193.i
  call void @estimate_weighting_factor_P_slice(i32 1) #4
  br label %if.end202.i

if.else198.i:                                     ; preds = %land.lhs.true191.i, %if.then189.i
  call void @estimate_weighting_factor_P_slice(i32 0) #4
  br label %if.end202.i

if.else200.i:                                     ; preds = %if.then183.i
  call void (...)* @estimate_weighting_factor_B_slice() #4
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.else200.i, %if.else198.i, %if.else196.i, %if.then195.i, %lor.lhs.false178.i, %if.end173.i
  %128 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  %cmp210.i.i = icmp sgt i32 %128, 0
  br i1 %cmp210.i.i, label %for.body.lr.ph.i255.i, label %for.cond29.preheader.i.i

for.body.lr.ph.i255.i:                            ; preds = %if.end202.i
  %.pre221.i.i = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !tbaa !0
  %.pre222.i.i = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  br label %for.body.i259.i

for.cond29.preheader.i.i:                         ; preds = %for.body.i259.i, %if.end202.i
  %129 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %cmp30208.i.i = icmp sgt i32 %129, 0
  br i1 %cmp30208.i.i, label %for.body32.lr.ph.i.i, label %for.end79.i.i

for.body32.lr.ph.i.i:                             ; preds = %for.cond29.preheader.i.i
  %.pre219.i.i = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %.pre220.i.i = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  br label %for.body32.i.i

for.body.i259.i:                                  ; preds = %for.body.i259.i, %for.body.lr.ph.i255.i
  %indvars.iv216.i.i = phi i64 [ 0, %for.body.lr.ph.i255.i ], [ %indvars.iv.next217.i.i, %for.body.i259.i ]
  %arrayidx.i.i = getelementptr inbounds %struct.storable_picture** %.pre221.i.i, i64 %indvars.iv216.i.i
  %130 = load %struct.storable_picture** %arrayidx.i.i, align 8, !tbaa !0
  %poc.i.i = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 1
  %131 = load i32* %poc.i.i, align 4, !tbaa !3
  %mul.i256.i = shl nsw i32 %131, 1
  %structure.i.i = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 0
  %132 = load i32* %structure.i.i, align 4, !tbaa !1
  %cmp3.i.i = icmp eq i32 %132, 2
  %cond.i257.i = zext i1 %cmp3.i.i to i32
  %add.i.i = or i32 %cond.i257.i, %mul.i256.i
  %conv.i.i = sext i32 %add.i.i to i64
  %arrayidx6.i.i = getelementptr inbounds %struct.storable_picture* %.pre222.i.i, i64 0, i32 6, i64 0, i64 %indvars.iv216.i.i
  store i64 %conv.i.i, i64* %arrayidx6.i.i, align 8, !tbaa !4
  %frame_poc.i.i = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 4
  %133 = load i32* %frame_poc.i.i, align 4, !tbaa !3
  %mul9.i.i = shl nsw i32 %133, 1
  %conv10.i.i = sext i32 %mul9.i.i to i64
  %arrayidx13.i.i = getelementptr inbounds %struct.storable_picture* %.pre222.i.i, i64 0, i32 7, i64 0, i64 %indvars.iv216.i.i
  store i64 %conv10.i.i, i64* %arrayidx13.i.i, align 8, !tbaa !4
  %top_poc.i.i = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 2
  %134 = load i32* %top_poc.i.i, align 4, !tbaa !3
  %mul16.i.i = shl nsw i32 %134, 1
  %conv17.i.i = sext i32 %mul16.i.i to i64
  %arrayidx20.i.i = getelementptr inbounds %struct.storable_picture* %.pre222.i.i, i64 0, i32 8, i64 0, i64 %indvars.iv216.i.i
  store i64 %conv17.i.i, i64* %arrayidx20.i.i, align 8, !tbaa !4
  %bottom_poc.i.i = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 3
  %135 = load i32* %bottom_poc.i.i, align 4, !tbaa !3
  %mul23.i.i = shl nsw i32 %135, 1
  %add24204.i.i = or i32 %mul23.i.i, 1
  %conv25.i.i = sext i32 %add24204.i.i to i64
  %arrayidx28.i.i = getelementptr inbounds %struct.storable_picture* %.pre222.i.i, i64 0, i32 9, i64 0, i64 %indvars.iv216.i.i
  store i64 %conv25.i.i, i64* %arrayidx28.i.i, align 8, !tbaa !4
  %indvars.iv.next217.i.i = add i64 %indvars.iv216.i.i, 1
  %lftr.wideiv170 = trunc i64 %indvars.iv.next217.i.i to i32
  %exitcond171 = icmp eq i32 %lftr.wideiv170, %128
  br i1 %exitcond171, label %for.cond29.preheader.i.i, label %for.body.i259.i

for.body32.i.i:                                   ; preds = %for.body32.i.i, %for.body32.lr.ph.i.i
  %indvars.iv214.i.i = phi i64 [ 0, %for.body32.lr.ph.i.i ], [ %indvars.iv.next215.i.i, %for.body32.i.i ]
  %arrayidx34.i.i = getelementptr inbounds %struct.storable_picture** %.pre219.i.i, i64 %indvars.iv214.i.i
  %136 = load %struct.storable_picture** %arrayidx34.i.i, align 8, !tbaa !0
  %poc35.i.i = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 1
  %137 = load i32* %poc35.i.i, align 4, !tbaa !3
  %mul36.i.i = shl nsw i32 %137, 1
  %structure39.i.i = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 0
  %138 = load i32* %structure39.i.i, align 4, !tbaa !1
  %cmp40.i.i = icmp eq i32 %138, 2
  %cond42.i.i = zext i1 %cmp40.i.i to i32
  %add43.i.i = or i32 %cond42.i.i, %mul36.i.i
  %conv44.i.i = sext i32 %add43.i.i to i64
  %arrayidx48.i.i = getelementptr inbounds %struct.storable_picture* %.pre220.i.i, i64 0, i32 6, i64 1, i64 %indvars.iv214.i.i
  store i64 %conv44.i.i, i64* %arrayidx48.i.i, align 8, !tbaa !4
  %frame_poc51.i.i = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 4
  %139 = load i32* %frame_poc51.i.i, align 4, !tbaa !3
  %mul52.i.i = shl nsw i32 %139, 1
  %conv53.i.i = sext i32 %mul52.i.i to i64
  %arrayidx57.i.i = getelementptr inbounds %struct.storable_picture* %.pre220.i.i, i64 0, i32 7, i64 1, i64 %indvars.iv214.i.i
  store i64 %conv53.i.i, i64* %arrayidx57.i.i, align 8, !tbaa !4
  %top_poc60.i.i = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 2
  %140 = load i32* %top_poc60.i.i, align 4, !tbaa !3
  %mul61.i.i = shl nsw i32 %140, 1
  %conv62.i.i = sext i32 %mul61.i.i to i64
  %arrayidx66.i.i = getelementptr inbounds %struct.storable_picture* %.pre220.i.i, i64 0, i32 8, i64 1, i64 %indvars.iv214.i.i
  store i64 %conv62.i.i, i64* %arrayidx66.i.i, align 8, !tbaa !4
  %bottom_poc69.i.i = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 3
  %141 = load i32* %bottom_poc69.i.i, align 4, !tbaa !3
  %mul70.i.i = shl nsw i32 %141, 1
  %add71203.i.i = or i32 %mul70.i.i, 1
  %conv72.i.i = sext i32 %add71203.i.i to i64
  %arrayidx76.i.i = getelementptr inbounds %struct.storable_picture* %.pre220.i.i, i64 0, i32 9, i64 1, i64 %indvars.iv214.i.i
  store i64 %conv72.i.i, i64* %arrayidx76.i.i, align 8, !tbaa !4
  %indvars.iv.next215.i.i = add i64 %indvars.iv214.i.i, 1
  %lftr.wideiv168 = trunc i64 %indvars.iv.next215.i.i to i32
  %exitcond169 = icmp eq i32 %lftr.wideiv168, %129
  br i1 %exitcond169, label %for.end79.i.i, label %for.body32.i.i

for.end79.i.i:                                    ; preds = %for.body32.i.i, %for.cond29.preheader.i.i
  %142 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag.i.i = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %142, i64 0, i32 25
  %143 = load i32* %frame_mbs_only_flag.i.i, align 4, !tbaa !1
  %tobool.i260.i = icmp eq i32 %143, 0
  br i1 %tobool.i260.i, label %if.then.i261.i, label %set_ref_pic_num.exit.i

if.then.i261.i:                                   ; preds = %for.end79.i.i
  %144 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %structure80.i.i = getelementptr inbounds %struct.ImageParameters* %144, i64 0, i32 7
  %145 = load i32* %structure80.i.i, align 4, !tbaa !3
  %cmp81.i.i = icmp eq i32 %145, 0
  br i1 %cmp81.i.i, label %for.cond88.preheader.i.i, label %set_ref_pic_num.exit.i

for.cond88.preheader.i.i:                         ; preds = %if.then.i261.i, %for.inc155.i.i
  %indvars.iv212.i.i = phi i64 [ %indvars.iv.next213.i.i, %for.inc155.i.i ], [ 2, %if.then.i261.i ]
  %arrayidx90.i.i = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv212.i.i
  %146 = load i32* %arrayidx90.i.i, align 4, !tbaa !3
  %cmp91205.i.i = icmp sgt i32 %146, 0
  br i1 %cmp91205.i.i, label %for.body93.lr.ph.i.i, label %for.inc155.i.i

for.body93.lr.ph.i.i:                             ; preds = %for.cond88.preheader.i.i
  %arrayidx96.i.i = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv212.i.i
  %.pre.i262.i = load %struct.storable_picture*** %arrayidx96.i.i, align 8, !tbaa !0
  %.pre218.i.i = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  br label %for.body93.i.i

for.body93.i.i:                                   ; preds = %for.body93.i.i, %for.body93.lr.ph.i.i
  %indvars.iv.i263.i = phi i64 [ 0, %for.body93.lr.ph.i.i ], [ %indvars.iv.next.i264.i, %for.body93.i.i ]
  %arrayidx97.i.i = getelementptr inbounds %struct.storable_picture** %.pre.i262.i, i64 %indvars.iv.i263.i
  %147 = load %struct.storable_picture** %arrayidx97.i.i, align 8, !tbaa !0
  %poc98.i.i = getelementptr inbounds %struct.storable_picture* %147, i64 0, i32 1
  %148 = load i32* %poc98.i.i, align 4, !tbaa !3
  %mul99.i.i = shl nsw i32 %148, 1
  %structure104.i.i = getelementptr inbounds %struct.storable_picture* %147, i64 0, i32 0
  %149 = load i32* %structure104.i.i, align 4, !tbaa !1
  %cmp105.i.i = icmp eq i32 %149, 2
  %cond107.i.i = zext i1 %cmp105.i.i to i32
  %add108.i.i = or i32 %cond107.i.i, %mul99.i.i
  %conv109.i.i = sext i32 %add108.i.i to i64
  %arrayidx114.i.i = getelementptr inbounds %struct.storable_picture* %.pre218.i.i, i64 0, i32 6, i64 %indvars.iv212.i.i, i64 %indvars.iv.i263.i
  store i64 %conv109.i.i, i64* %arrayidx114.i.i, align 8, !tbaa !4
  %frame_poc119.i.i = getelementptr inbounds %struct.storable_picture* %147, i64 0, i32 4
  %150 = load i32* %frame_poc119.i.i, align 4, !tbaa !3
  %mul120.i.i = shl nsw i32 %150, 1
  %conv121.i.i = sext i32 %mul120.i.i to i64
  %arrayidx126.i.i = getelementptr inbounds %struct.storable_picture* %.pre218.i.i, i64 0, i32 7, i64 %indvars.iv212.i.i, i64 %indvars.iv.i263.i
  store i64 %conv121.i.i, i64* %arrayidx126.i.i, align 8, !tbaa !4
  %top_poc131.i.i = getelementptr inbounds %struct.storable_picture* %147, i64 0, i32 2
  %151 = load i32* %top_poc131.i.i, align 4, !tbaa !3
  %mul132.i.i = shl nsw i32 %151, 1
  %conv133.i.i = sext i32 %mul132.i.i to i64
  %arrayidx138.i.i = getelementptr inbounds %struct.storable_picture* %.pre218.i.i, i64 0, i32 8, i64 %indvars.iv212.i.i, i64 %indvars.iv.i263.i
  store i64 %conv133.i.i, i64* %arrayidx138.i.i, align 8, !tbaa !4
  %bottom_poc143.i.i = getelementptr inbounds %struct.storable_picture* %147, i64 0, i32 3
  %152 = load i32* %bottom_poc143.i.i, align 4, !tbaa !3
  %mul144.i.i = shl nsw i32 %152, 1
  %add145202.i.i = or i32 %mul144.i.i, 1
  %conv146.i.i = sext i32 %add145202.i.i to i64
  %arrayidx151.i.i = getelementptr inbounds %struct.storable_picture* %.pre218.i.i, i64 0, i32 9, i64 %indvars.iv212.i.i, i64 %indvars.iv.i263.i
  store i64 %conv146.i.i, i64* %arrayidx151.i.i, align 8, !tbaa !4
  %indvars.iv.next.i264.i = add i64 %indvars.iv.i263.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i264.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %146
  br i1 %exitcond, label %for.inc155.i.i, label %for.body93.i.i

for.inc155.i.i:                                   ; preds = %for.body93.i.i, %for.cond88.preheader.i.i
  %indvars.iv.next213.i.i = add i64 %indvars.iv212.i.i, 1
  %lftr.wideiv166 = trunc i64 %indvars.iv.next213.i.i to i32
  %exitcond167 = icmp eq i32 %lftr.wideiv166, 6
  br i1 %exitcond167, label %set_ref_pic_num.exit.i, label %for.cond88.preheader.i.i

set_ref_pic_num.exit.i:                           ; preds = %for.inc155.i.i, %if.then.i261.i, %for.end79.i.i
  %153 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type203.i = getelementptr inbounds %struct.ImageParameters* %153, i64 0, i32 6
  %154 = load i32* %type203.i, align 4, !tbaa !3
  %cmp204.i = icmp eq i32 %154, 1
  br i1 %cmp204.i, label %if.then205.i, label %init_slice.exit

if.then205.i:                                     ; preds = %set_ref_pic_num.exit.i
  %155 = load %struct.colocated_params** @Co_located, align 8, !tbaa !0
  call void @compute_colocated(%struct.colocated_params* %155, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0)) #4
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %init_slice.exit

init_slice.exit:                                  ; preds = %set_ref_pic_num.exit.i, %if.then205.i
  %156 = phi %struct.ImageParameters* [ %.pre, %if.then205.i ], [ %153, %set_ref_pic_num.exit.i ]
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %156, i64 0, i32 50
  %157 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %partArr = getelementptr inbounds %struct.Slice* %157, i64 0, i32 6
  %158 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %bitstream = getelementptr inbounds %struct.datapartition* %158, i64 0, i32 0
  %159 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %byte_pos = getelementptr inbounds %struct.Bitstream* %159, i64 0, i32 0
  %160 = load i32* %byte_pos, align 4, !tbaa !3
  store i32 %160, i32* @Bytes_After_Header, align 4, !tbaa !3
  %161 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %161, i64 0, i32 59
  %162 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp = icmp eq i32 %162, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %init_slice.exit
  call void (...)* @SetCtxModelNumber() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %init_slice.exit
  %call1 = call i32 @start_slice() #5
  %163 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 119
  %164 = load i32* %NumberofHeaderBits, align 4, !tbaa !3
  %add = add nsw i32 %164, %call1
  store i32 %add, i32* %NumberofHeaderBits, align 4, !tbaa !3
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 139
  %165 = load i32* %BasicUnit, align 4, !tbaa !3
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 136
  %166 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %165, %166
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 121
  %167 = load i32* %NumberofBasicUnitHeaderBits, align 4, !tbaa !3
  %add4 = add nsw i32 %167, %call1
  store i32 %add4, i32* %NumberofBasicUnitHeaderBits, align 4, !tbaa !3
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %168 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_slice = getelementptr inbounds %struct.StatParameters* %168, i64 0, i32 6
  %169 = load i32* %bit_slice, align 4, !tbaa !3
  %add6 = add nsw i32 %169, %call1
  store i32 %add6, i32* %bit_slice, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 6
  %170 = load i32* %type, align 4, !tbaa !3
  %idxprom = sext i32 %170 to i64
  %arrayidx7 = getelementptr inbounds %struct.StatParameters* %168, i64 0, i32 24, i64 %idxprom
  %171 = load i32* %arrayidx7, align 4, !tbaa !3
  %add8 = add nsw i32 %171, %call1
  store i32 %add8, i32* %arrayidx7, align 4, !tbaa !3
  %.pr147 = load i32* %end_of_slice, align 4, !tbaa !1
  %phitmp148 = icmp eq i32 %.pr147, 0
  br i1 %phitmp148, label %while.body, label %while.end

while.body:                                       ; preds = %while.condthread-pre-split.backedge, %if.end5
  %FieldRDCost.0145 = phi double [ %FieldRDCost.0.ph.be, %while.condthread-pre-split.backedge ], [ undef, %if.end5 ]
  %FrameRDCost.0144 = phi double [ %FrameRDCost.0.ph.be, %while.condthread-pre-split.backedge ], [ undef, %if.end5 ]
  %CurrentMbAddr.0143 = phi i32 [ %CurrentMbAddr.0.ph.be, %while.condthread-pre-split.backedge ], [ %call, %if.end5 ]
  %NumberOfCodedMBs.0142 = phi i32 [ %NumberOfCodedMBs.0.ph.be, %while.condthread-pre-split.backedge ], [ 0, %if.end5 ]
  %172 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 90
  %173 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %173, 0
  br i1 %tobool, label %if.then10, label %if.else25

if.then10:                                        ; preds = %while.body
  store i32 0, i32* %recode_macroblock, align 4, !tbaa !1
  store %struct.RD_DATA* @rddata_top_frame_mb, %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  call void @start_macroblock(i32 %CurrentMbAddr.0143, i32 0) #4
  call void @encode_one_macroblock() #4
  call void @write_one_macroblock(i32 1) #4
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock) #4
  %174 = load i32* %recode_macroblock, align 4, !tbaa !1
  %cmp11 = icmp eq i32 %174, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then10
  %call13 = call i32 @FmoGetNextMBNr(i32 %CurrentMbAddr.0143) #4
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  store i32 1, i32* %end_of_slice, align 4, !tbaa !1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then12
  %inc = add nsw i32 %NumberOfCodedMBs.0142, 1
  call void (i32, ...)* bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %call13) #4
  br label %while.condthread-pre-split.backedge

if.else:                                          ; preds = %if.then10
  %175 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %175, i64 0, i32 3
  %176 = load i32* %current_mb_nr, align 4, !tbaa !3
  %call17 = call i32 @FmoGetPreviousMBNr(i32 %176) #4
  %177 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr18 = getelementptr inbounds %struct.ImageParameters* %177, i64 0, i32 3
  store i32 %call17, i32* %current_mb_nr18, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %call17, -1
  br i1 %cmp20, label %if.then21, label %while.condthread-pre-split.backedge

while.condthread-pre-split.backedge:              ; preds = %if.end98, %if.else, %if.then21, %if.end16
  %NumberOfCodedMBs.0.ph.be = phi i32 [ %NumberOfCodedMBs.0142, %if.else ], [ %NumberOfCodedMBs.0142, %if.then21 ], [ %inc, %if.end16 ], [ %inc87, %if.end98 ]
  %CurrentMbAddr.0.ph.be = phi i32 [ %CurrentMbAddr.0143, %if.else ], [ %CurrentMbAddr.0143, %if.then21 ], [ %call13, %if.end16 ], [ %call102, %if.end98 ]
  %FrameRDCost.0.ph.be = phi double [ %FrameRDCost.0144, %if.else ], [ %FrameRDCost.0144, %if.then21 ], [ %FrameRDCost.0144, %if.end16 ], [ %FrameRDCost.1, %if.end98 ]
  %FieldRDCost.0.ph.be = phi double [ %FieldRDCost.0145, %if.else ], [ %FieldRDCost.0145, %if.then21 ], [ %FieldRDCost.0145, %if.end16 ], [ %FieldRDCost.1, %if.end98 ]
  %.pr = load i32* %end_of_slice, align 4, !tbaa !1
  %phitmp = icmp eq i32 %.pr, 0
  br i1 %phitmp, label %while.body, label %while.end

if.then21:                                        ; preds = %if.else
  %call22 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #4
  br label %while.condthread-pre-split.backedge

if.else25:                                        ; preds = %while.body
  %178 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %178, i64 0, i32 92
  %179 = load i32* %MbInterlace, align 4, !tbaa !3
  %cmp26 = icmp eq i32 %179, 2
  br i1 %cmp26, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.else25
  store i32 0, i32* %recode_macroblock, align 4, !tbaa !1
  %field_mode = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 81
  store i32 0, i32* %field_mode, align 4, !tbaa !3
  %top_field = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 82
  store i32 0, i32* %top_field, align 4, !tbaa !3
  %write_macroblock = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 140
  store i32 0, i32* %write_macroblock, align 4, !tbaa !3
  %bot_MB = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 141
  store i32 0, i32* %bot_MB, align 4, !tbaa !3
  call void @start_macroblock(i32 %CurrentMbAddr.0143, i32 0) #4
  store %struct.RD_DATA* @rddata_top_frame_mb, %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  call void @encode_one_macroblock() #4
  %180 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %min_rdcost = getelementptr inbounds %struct.RD_DATA* %180, i64 0, i32 0
  %181 = load double* %min_rdcost, align 8, !tbaa !5
  %182 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %bot_MB28 = getelementptr inbounds %struct.ImageParameters* %182, i64 0, i32 141
  store i32 1, i32* %bot_MB28, align 4, !tbaa !3
  %field_mode29 = getelementptr inbounds %struct.ImageParameters* %182, i64 0, i32 81
  store i32 0, i32* %field_mode29, align 4, !tbaa !3
  %add30 = add nsw i32 %CurrentMbAddr.0143, 1
  call void @start_macroblock(i32 %add30, i32 0) #4
  store %struct.RD_DATA* @rddata_bot_frame_mb, %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  call void @encode_one_macroblock() #4
  %183 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %min_rdcost31 = getelementptr inbounds %struct.RD_DATA* %183, i64 0, i32 0
  %184 = load double* %min_rdcost31, align 8, !tbaa !5
  %add32 = fadd double %181, %184
  %.pre172 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %MbInterlace34.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre172, i64 0, i32 92
  %.pre173 = load i32* %MbInterlace34.phi.trans.insert, align 4, !tbaa !3
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.else25
  %185 = phi i32 [ %.pre173, %if.then27 ], [ %179, %if.else25 ]
  %186 = phi %struct.InputParameters* [ %.pre172, %if.then27 ], [ %178, %if.else25 ]
  %FrameRDCost.1 = phi double [ %add32, %if.then27 ], [ %FrameRDCost.0144, %if.else25 ]
  %.off = add i32 %185, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then38, label %if.end52

if.then38:                                        ; preds = %if.end33
  %187 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %bot_MB39 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 141
  store i32 0, i32* %bot_MB39, align 4, !tbaa !3
  %field_mode40 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 81
  store i32 1, i32* %field_mode40, align 4, !tbaa !3
  %top_field41 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 82
  store i32 1, i32* %top_field41, align 4, !tbaa !3
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 84
  %188 = load i32* %buf_cycle, align 4, !tbaa !3
  %shl = shl i32 %188, 1
  store i32 %shl, i32* %buf_cycle, align 4, !tbaa !3
  %num_ref_frames = getelementptr inbounds %struct.InputParameters* %186, i64 0, i32 9
  %189 = load i32* %num_ref_frames, align 4, !tbaa !3
  %shl42 = shl i32 %189, 1
  store i32 %shl42, i32* %num_ref_frames, align 4, !tbaa !3
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 79
  %190 = load i32* %num_ref_idx_l0_active, align 4, !tbaa !3
  %shl43 = shl i32 %190, 1
  %add45178 = or i32 %shl43, 1
  store i32 %add45178, i32* %num_ref_idx_l0_active, align 4, !tbaa !3
  call void @start_macroblock(i32 %CurrentMbAddr.0143, i32 1) #4
  store %struct.RD_DATA* @rddata_top_field_mb, %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  call void @encode_one_macroblock() #4
  %191 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %min_rdcost46 = getelementptr inbounds %struct.RD_DATA* %191, i64 0, i32 0
  %192 = load double* %min_rdcost46, align 8, !tbaa !5
  %193 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %bot_MB47 = getelementptr inbounds %struct.ImageParameters* %193, i64 0, i32 141
  store i32 1, i32* %bot_MB47, align 4, !tbaa !3
  %top_field48 = getelementptr inbounds %struct.ImageParameters* %193, i64 0, i32 82
  store i32 0, i32* %top_field48, align 4, !tbaa !3
  %add49 = add nsw i32 %CurrentMbAddr.0143, 1
  call void @start_macroblock(i32 %add49, i32 1) #4
  store %struct.RD_DATA* @rddata_bot_field_mb, %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  call void @encode_one_macroblock() #4
  %194 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %min_rdcost50 = getelementptr inbounds %struct.RD_DATA* %194, i64 0, i32 0
  %195 = load double* %min_rdcost50, align 8, !tbaa !5
  %add51 = fadd double %192, %195
  %.pre174 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end52

if.end52:                                         ; preds = %if.end33, %if.then38
  %196 = phi %struct.InputParameters* [ %.pre174, %if.then38 ], [ %186, %if.end33 ]
  %FieldRDCost.1 = phi double [ %add51, %if.then38 ], [ %FieldRDCost.0145, %if.end33 ]
  %197 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %write_macroblock_frame = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 142
  store i32 0, i32* %write_macroblock_frame, align 4, !tbaa !3
  %MbInterlace53 = getelementptr inbounds %struct.InputParameters* %196, i64 0, i32 92
  %198 = load i32* %MbInterlace53, align 4, !tbaa !3
  %cmp54 = icmp eq i32 %198, 2
  %cmp55 = fcmp olt double %FrameRDCost.1, %FieldRDCost.1
  %or.cond = and i1 %cmp54, %cmp55
  %field_mode57 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 81
  br i1 %or.cond, label %if.then56, label %if.else65

if.then56:                                        ; preds = %if.end52
  store i32 0, i32* %field_mode57, align 4, !tbaa !3
  %buf_cycle58 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 84
  %199 = load i32* %buf_cycle58, align 4, !tbaa !3
  %shr = ashr i32 %199, 1
  store i32 %shr, i32* %buf_cycle58, align 4, !tbaa !3
  %num_ref_frames59 = getelementptr inbounds %struct.InputParameters* %196, i64 0, i32 9
  %200 = load i32* %num_ref_frames59, align 4, !tbaa !3
  %shr60 = ashr i32 %200, 1
  store i32 %shr60, i32* %num_ref_frames59, align 4, !tbaa !3
  store i32 0, i32* @MBPairIsField, align 4, !tbaa !3
  %num_ref_idx_l0_active61 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 79
  %201 = load i32* %num_ref_idx_l0_active61, align 4, !tbaa !3
  %sub = add nsw i32 %201, -1
  %shr63 = ashr i32 %sub, 1
  store i32 %shr63, i32* %num_ref_idx_l0_active61, align 4, !tbaa !3
  store i32 1, i32* %write_macroblock_frame, align 4, !tbaa !3
  br label %if.end67

if.else65:                                        ; preds = %if.end52
  store i32 1, i32* %field_mode57, align 4, !tbaa !3
  store i32 1, i32* @MBPairIsField, align 4, !tbaa !3
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %if.then56
  %write_macroblock68 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 140
  store i32 1, i32* %write_macroblock68, align 4, !tbaa !3
  %202 = load i32* @MBPairIsField, align 4, !tbaa !3
  %top_field71 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 82
  %not.tobool69 = icmp ne i32 %202, 0
  %. = zext i1 %not.tobool69 to i32
  store i32 %., i32* %top_field71, align 4, !tbaa !3
  %bot_MB75 = getelementptr inbounds %struct.ImageParameters* %197, i64 0, i32 141
  store i32 0, i32* %bot_MB75, align 4, !tbaa !3
  %203 = load i32* %field_mode57, align 4, !tbaa !3
  call void @start_macroblock(i32 %CurrentMbAddr.0143, i32 %203) #4
  %204 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %field_mode77 = getelementptr inbounds %struct.ImageParameters* %204, i64 0, i32 81
  %205 = load i32* %field_mode77, align 4, !tbaa !3
  %tobool78 = icmp ne i32 %205, 0
  %cond = select i1 %tobool78, %struct.RD_DATA* @rddata_top_field_mb, %struct.RD_DATA* @rddata_top_frame_mb
  store %struct.RD_DATA* %cond, %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  call void @copy_rdopt_data(i32 0) #4
  call void @write_one_macroblock(i32 1) #4
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock) #4
  call void (i32, ...)* bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %CurrentMbAddr.0143) #4
  %206 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %bot_MB80 = getelementptr inbounds %struct.ImageParameters* %206, i64 0, i32 141
  store i32 1, i32* %bot_MB80, align 4, !tbaa !3
  %top_field81 = getelementptr inbounds %struct.ImageParameters* %206, i64 0, i32 82
  store i32 0, i32* %top_field81, align 4, !tbaa !3
  %add82 = add nsw i32 %CurrentMbAddr.0143, 1
  %field_mode83 = getelementptr inbounds %struct.ImageParameters* %206, i64 0, i32 81
  %207 = load i32* %field_mode83, align 4, !tbaa !3
  call void @start_macroblock(i32 %add82, i32 %207) #4
  %208 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %field_mode84 = getelementptr inbounds %struct.ImageParameters* %208, i64 0, i32 81
  %209 = load i32* %field_mode84, align 4, !tbaa !3
  %tobool85 = icmp ne i32 %209, 0
  %cond86 = select i1 %tobool85, %struct.RD_DATA* @rddata_bot_field_mb, %struct.RD_DATA* @rddata_bot_frame_mb
  store %struct.RD_DATA* %cond86, %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  call void @copy_rdopt_data(i32 1) #4
  call void @write_one_macroblock(i32 0) #4
  %inc87 = add nsw i32 %NumberOfCodedMBs.0142, 2
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock) #4
  call void (i32, ...)* bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %CurrentMbAddr.0143) #4
  %210 = load i32* @MBPairIsField, align 4, !tbaa !3
  %tobool88 = icmp eq i32 %210, 0
  %.pre176 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %tobool88, label %if.end98, label %if.then89

if.then89:                                        ; preds = %if.end67
  %buf_cycle90 = getelementptr inbounds %struct.ImageParameters* %.pre176, i64 0, i32 84
  %211 = load i32* %buf_cycle90, align 4, !tbaa !3
  %shr91 = ashr i32 %211, 1
  store i32 %shr91, i32* %buf_cycle90, align 4, !tbaa !3
  %212 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %num_ref_frames92 = getelementptr inbounds %struct.InputParameters* %212, i64 0, i32 9
  %213 = load i32* %num_ref_frames92, align 4, !tbaa !3
  %shr93 = ashr i32 %213, 1
  store i32 %shr93, i32* %num_ref_frames92, align 4, !tbaa !3
  %num_ref_idx_l0_active94 = getelementptr inbounds %struct.ImageParameters* %.pre176, i64 0, i32 79
  %214 = load i32* %num_ref_idx_l0_active94, align 4, !tbaa !3
  %sub95 = add nsw i32 %214, -1
  %shr97 = ashr i32 %sub95, 1
  store i32 %shr97, i32* %num_ref_idx_l0_active94, align 4, !tbaa !3
  br label %if.end98

if.end98:                                         ; preds = %if.end67, %if.then89
  %top_field99 = getelementptr inbounds %struct.ImageParameters* %.pre176, i64 0, i32 82
  store i32 0, i32* %top_field99, align 4, !tbaa !3
  %field_mode100 = getelementptr inbounds %struct.ImageParameters* %.pre176, i64 0, i32 81
  store i32 0, i32* %field_mode100, align 4, !tbaa !3
  %call101 = call i32 @FmoGetNextMBNr(i32 %CurrentMbAddr.0143) #4
  %call102 = call i32 @FmoGetNextMBNr(i32 %call101) #4
  %call103 = call i32 @FmoMB2SliceGroup(i32 %call102) #4
  %call104 = call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call103) #4
  %cmp105 = icmp eq i32 %call102, %call104
  br i1 %cmp105, label %while.cond.while.end_crit_edge, label %while.condthread-pre-split.backedge

while.cond.while.end_crit_edge:                   ; preds = %if.end98
  store i32 1, i32* %end_of_slice, align 4, !tbaa !1
  br label %while.end

while.end:                                        ; preds = %if.end5, %while.condthread-pre-split.backedge, %while.cond.while.end_crit_edge
  %NumberOfCodedMBs.0.lcssa = phi i32 [ %inc87, %while.cond.while.end_crit_edge ], [ 0, %if.end5 ], [ %NumberOfCodedMBs.0.ph.be, %while.condthread-pre-split.backedge ]
  %call109 = call i32 @terminate_slice() #5
  ret i32 %NumberOfCodedMBs.0.lcssa
}

; Function Attrs: optsize
declare i32 @FmoGetFirstMacroblockInSlice(i32) #1

; Function Attrs: optsize
declare void @SetCtxModelNumber(...) #1

; Function Attrs: optsize
declare void @start_macroblock(i32, i32) #1

; Function Attrs: optsize
declare void @encode_one_macroblock() #1

; Function Attrs: optsize
declare void @write_one_macroblock(i32) #1

; Function Attrs: optsize
declare void @terminate_macroblock(i32*, i32*) #1

; Function Attrs: optsize
declare i32 @FmoGetNextMBNr(i32) #1

; Function Attrs: optsize
declare void @proceed2nextMacroblock(...) #1

; Function Attrs: optsize
declare i32 @FmoGetPreviousMBNr(i32) #1

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @error(i8*, i32) #1

; Function Attrs: optsize
declare void @copy_rdopt_data(i32) #1

; Function Attrs: optsize
declare i32 @FmoGetLastCodedMBOfSliceGroup(i32) #1

; Function Attrs: optsize
declare i32 @FmoMB2SliceGroup(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @free_slice_list(%struct.Picture* nocapture %currPic) #0 {
entry:
  %no_slices = getelementptr inbounds %struct.Picture* %currPic, i64 0, i32 0
  %0 = load i32* %no_slices, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %0, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %free_slice.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %free_slice.exit ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.Picture* %currPic, i64 0, i32 2, i64 %indvars.iv
  %1 = load %struct.Slice** %arrayidx, align 8, !tbaa !0
  %cmp.i = icmp eq %struct.Slice* %1, null
  br i1 %cmp.i, label %free_slice.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.body
  %max_part_nr.i = getelementptr inbounds %struct.Slice* %1, i64 0, i32 4
  %2 = load i32* %max_part_nr.i, align 4, !tbaa !3
  %cmp136.i = icmp sgt i32 %2, 0
  %partArr.i = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  br i1 %cmp136.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.inc.i, %for.cond.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %3 = load %struct.datapartition** %partArr.i, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds %struct.datapartition* %3, i64 %indvars.iv.i
  %cmp2.i = icmp eq %struct.datapartition* %arrayidx.i, null
  br i1 %cmp2.i, label %for.inc.i, label %if.then3.i

if.then3.i:                                       ; preds = %for.body.i
  %bitstream.i = getelementptr inbounds %struct.datapartition* %arrayidx.i, i64 0, i32 0
  %4 = load %struct.Bitstream** %bitstream.i, align 8, !tbaa !0
  %streamBuffer.i = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 9
  %5 = load i8** %streamBuffer.i, align 8, !tbaa !0
  %cmp4.i = icmp eq i8* %5, null
  br i1 %cmp4.i, label %if.end.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  tail call void @free(i8* %5) #4
  %.pr.i = load %struct.Bitstream** %bitstream.i, align 8, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then3.i
  %6 = phi %struct.Bitstream* [ %4, %if.then3.i ], [ %.pr.i, %if.then5.i ]
  %cmp9.i = icmp eq %struct.Bitstream* %6, null
  br i1 %cmp9.i, label %for.inc.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  %7 = bitcast %struct.Bitstream* %6 to i8*
  tail call void @free(i8* %7) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.then10.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %8 = load i32* %max_part_nr.i, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next.i to i32
  %cmp1.i = icmp slt i32 %9, %8
  br i1 %cmp1.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %10 = load %struct.datapartition** %partArr.i, align 8, !tbaa !0
  %cmp15.i = icmp eq %struct.datapartition* %10, null
  br i1 %cmp15.i, label %if.end18.i, label %if.then16.i

if.then16.i:                                      ; preds = %for.end.i
  %11 = bitcast %struct.datapartition* %10 to i8*
  tail call void @free(i8* %11) #4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %for.end.i
  %12 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode.i = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 59
  %13 = load i32* %symbol_mode.i, align 4, !tbaa !3
  %cmp19.i = icmp eq i32 %13, 1
  br i1 %cmp19.i, label %if.then20.i, label %if.end21.i

if.then20.i:                                      ; preds = %if.end18.i
  %mot_ctx.i = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7
  %14 = load %struct.MotionInfoContexts** %mot_ctx.i, align 8, !tbaa !0
  tail call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %14) #4
  %tex_ctx.i = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8
  %15 = load %struct.TextureInfoContexts** %tex_ctx.i, align 8, !tbaa !0
  tail call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %15) #4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.end18.i
  %16 = bitcast %struct.Slice* %1 to i8*
  tail call void @free(i8* %16) #4
  br label %free_slice.exit

free_slice.exit:                                  ; preds = %for.body, %if.end21.i
  store %struct.Slice* null, %struct.Slice** %arrayidx, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %17 = load i32* %no_slices, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %18, %17
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %free_slice.exit, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @modify_redundant_pic_cnt(i8* nocapture %buffer) #0 {
entry:
  %0 = load i32* @rpc_bits_to_go, align 4, !tbaa !3
  %sub = add nsw i32 %0, -1
  %shl = shl i32 1, %sub
  %1 = load i32* @rpc_bytes_to_go, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8* %buffer, i64 %idxprom
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %conv2 = zext i8 %2 to i32
  %or = or i32 %conv2, %shl
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %arrayidx, align 1, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @poc_ref_pic_reorder(%struct.storable_picture** nocapture %list, i32 %num_ref_idx_lX_active, i32* nocapture %remapping_of_pic_nums_idc, i32* nocapture %abs_diff_pic_num_minus1, i32* nocapture %long_term_pic_idx, i32 %weighted_prediction, i32 %list_no) #0 {
entry:
  %default_order = alloca [32 x i32], align 16
  %0 = bitcast [32 x i32]* %default_order to i8*
  %re_order = alloca [32 x i32], align 16
  %tmp_reorder = alloca [32 x i32], align 16
  %1 = bitcast [32 x i32]* %tmp_reorder to i8*
  %list_sign = alloca [32 x i32], align 16
  %poc_diff = alloca [32 x i32], align 16
  call void @llvm.lifetime.start(i64 128, i8* %0) #3
  %2 = bitcast [32 x i32]* %re_order to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #3
  call void @llvm.lifetime.start(i64 128, i8* %1) #3
  %3 = bitcast [32 x i32]* %list_sign to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #3
  %4 = bitcast [32 x i32]* %poc_diff to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #3
  %5 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %add = add i32 %5, 4
  %shl = shl i32 1, %add
  %6 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %structure = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 7
  %7 = load i32* %structure, align 4, !tbaa !3
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %frame_num = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 105
  %8 = load i32* %frame_num, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %entry
  %mul = shl nsw i32 %shl, 1
  %frame_num1 = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 105
  %9 = load i32* %frame_num1, align 4, !tbaa !3
  %mul2 = shl i32 %9, 1
  %add3330 = or i32 %mul2, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %currPicNum.0 = phi i32 [ %8, %if.then ], [ %add3330, %if.else ]
  %maxPicNum.0 = phi i32 [ %shl, %if.then ], [ %mul, %if.else ]
  %cmp4363 = icmp eq i32 %num_ref_idx_lX_active, 0
  br i1 %cmp4363, label %for.cond7.preheader, label %for.body

for.cond7.preheader:                              ; preds = %for.body, %if.end
  %10 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5), align 8, !tbaa !3
  %cmp8361 = icmp eq i32 %10, 0
  br i1 %cmp8361, label %for.body70.lr.ph, label %for.body9.lr.ph

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %11 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 1), align 8, !tbaa !0
  %12 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %poc30 = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 1
  %cmp33 = icmp eq i32 %list_no, 0
  br label %for.body9

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds %struct.storable_picture** %list, i64 %indvars.iv389
  %13 = load %struct.storable_picture** %arrayidx, align 8, !tbaa !0
  %pic_num = getelementptr inbounds %struct.storable_picture* %13, i64 0, i32 11
  %14 = load i32* %pic_num, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds [32 x i32]* %default_order, i64 0, i64 %indvars.iv389
  store i32 %14, i32* %arrayidx6, align 4, !tbaa !3
  %indvars.iv.next390 = add i64 %indvars.iv389, 1
  %lftr.wideiv391 = trunc i64 %indvars.iv.next390 to i32
  %exitcond392 = icmp eq i32 %lftr.wideiv391, %num_ref_idx_lX_active
  br i1 %exitcond392, label %for.cond7.preheader, label %for.body

for.cond67.preheader:                             ; preds = %for.inc64
  %cmp69359 = icmp eq i32 %10, 1
  br i1 %cmp69359, label %for.cond123.preheader, label %for.body70.lr.ph

for.body70.lr.ph:                                 ; preds = %for.cond7.preheader, %for.cond67.preheader
  %15 = phi i32 [ %10, %for.cond67.preheader ], [ 0, %for.cond7.preheader ]
  %sub68 = add i32 %15, -1
  br label %for.body70

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc64
  %indvars.iv387 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next388, %for.inc64 ]
  %arrayidx11 = getelementptr inbounds %struct.frame_store** %11, i64 %indvars.iv387
  %16 = load %struct.frame_store** %arrayidx11, align 8, !tbaa !0
  %frame = getelementptr inbounds %struct.frame_store* %16, i64 0, i32 10
  %17 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %pic_num12 = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 11
  %18 = load i32* %pic_num12, align 4, !tbaa !3
  %arrayidx14 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv387
  store i32 %18, i32* %arrayidx14, align 4, !tbaa !3
  %is_used = getelementptr inbounds %struct.frame_store* %16, i64 0, i32 0
  %19 = load i32* %is_used, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %19, 3
  br i1 %cmp17, label %land.lhs.true, label %for.inc64

land.lhs.true:                                    ; preds = %for.body9
  %used_for_reference = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 15
  %20 = load i32* %used_for_reference, align 4, !tbaa !3
  %tobool = icmp eq i32 %20, 0
  br i1 %tobool, label %for.inc64, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true
  %is_long_term = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 14
  %21 = load i32* %is_long_term, align 4, !tbaa !3
  %tobool25 = icmp eq i32 %21, 0
  br i1 %tobool25, label %if.then26, label %for.inc64

if.then26:                                        ; preds = %land.lhs.true21
  %poc = getelementptr inbounds %struct.storable_picture* %17, i64 0, i32 1
  %22 = load i32* %poc, align 4, !tbaa !3
  %23 = load i32* %poc30, align 4, !tbaa !3
  %sub = sub nsw i32 %22, %23
  %ispos333 = icmp sgt i32 %sub, -1
  %neg334 = sub i32 0, %sub
  %24 = select i1 %ispos333, i32 %sub, i32 %neg334
  %arrayidx32 = getelementptr inbounds [32 x i32]* %poc_diff, i64 0, i64 %indvars.iv387
  store i32 %24, i32* %arrayidx32, align 4, !tbaa !3
  br i1 %cmp33, label %if.then34, label %if.else48

if.then34:                                        ; preds = %if.then26
  %cmp40 = icmp slt i32 %23, %22
  %arrayidx43 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv387
  br i1 %cmp40, label %if.then41, label %if.else44

if.then41:                                        ; preds = %if.then34
  store i32 1, i32* %arrayidx43, align 4, !tbaa !3
  br label %for.inc64

if.else44:                                        ; preds = %if.then34
  store i32 -1, i32* %arrayidx43, align 4, !tbaa !3
  br label %for.inc64

if.else48:                                        ; preds = %if.then26
  %cmp54 = icmp sgt i32 %23, %22
  %arrayidx57 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv387
  br i1 %cmp54, label %if.then55, label %if.else58

if.then55:                                        ; preds = %if.else48
  store i32 1, i32* %arrayidx57, align 4, !tbaa !3
  br label %for.inc64

if.else58:                                        ; preds = %if.else48
  store i32 -1, i32* %arrayidx57, align 4, !tbaa !3
  br label %for.inc64

for.inc64:                                        ; preds = %land.lhs.true21, %land.lhs.true, %for.body9, %if.then55, %if.else58, %if.then41, %if.else44
  %indvars.iv.next388 = add i64 %indvars.iv387, 1
  %25 = trunc i64 %indvars.iv.next388 to i32
  %cmp8 = icmp ult i32 %25, %10
  br i1 %cmp8, label %for.body9, label %for.cond67.preheader

for.cond67.loopexit:                              ; preds = %for.inc117, %for.body70
  %cmp69 = icmp ult i32 %26, %sub68
  %indvars.iv.next379 = add i64 %indvars.iv378, 1
  br i1 %cmp69, label %for.body70, label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %for.cond67.loopexit, %for.cond67.preheader
  br i1 %cmp4363, label %if.end240, label %for.body125

for.body70:                                       ; preds = %for.body70.lr.ph, %for.cond67.loopexit
  %indvars.iv385 = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next386, %for.cond67.loopexit ]
  %indvars.iv378 = phi i64 [ 1, %for.body70.lr.ph ], [ %indvars.iv.next379, %for.cond67.loopexit ]
  %indvars.iv.next386 = add i64 %indvars.iv385, 1
  %26 = trunc i64 %indvars.iv.next386 to i32
  %cmp73356 = icmp ult i32 %26, %15
  br i1 %cmp73356, label %for.body74.lr.ph, label %for.cond67.loopexit

for.body74.lr.ph:                                 ; preds = %for.body70
  %arrayidx76 = getelementptr inbounds [32 x i32]* %poc_diff, i64 0, i64 %indvars.iv385
  %arrayidx101 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv385
  %arrayidx109 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv385
  br label %for.body74

for.body74:                                       ; preds = %for.inc117, %for.body74.lr.ph
  %indvars.iv380 = phi i64 [ %indvars.iv378, %for.body74.lr.ph ], [ %indvars.iv.next381, %for.inc117 ]
  %27 = load i32* %arrayidx76, align 4, !tbaa !3
  %arrayidx78 = getelementptr inbounds [32 x i32]* %poc_diff, i64 0, i64 %indvars.iv380
  %28 = load i32* %arrayidx78, align 4, !tbaa !3
  %cmp79 = icmp sgt i32 %27, %28
  br i1 %cmp79, label %for.body74.if.then91_crit_edge, label %lor.lhs.false

for.body74.if.then91_crit_edge:                   ; preds = %for.body74
  %arrayidx111.phi.trans.insert = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv380
  %.pre = load i32* %arrayidx111.phi.trans.insert, align 4, !tbaa !3
  %.pre393 = load i32* %arrayidx109, align 4, !tbaa !3
  br label %if.then91

lor.lhs.false:                                    ; preds = %for.body74
  %cmp84 = icmp eq i32 %27, %28
  br i1 %cmp84, label %land.lhs.true85, label %for.inc117

land.lhs.true85:                                  ; preds = %lor.lhs.false
  %arrayidx87 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv380
  %29 = load i32* %arrayidx87, align 4, !tbaa !3
  %30 = load i32* %arrayidx109, align 4, !tbaa !3
  %cmp90 = icmp sgt i32 %29, %30
  br i1 %cmp90, label %if.then91, label %for.inc117

if.then91:                                        ; preds = %land.lhs.true85, %for.body74.if.then91_crit_edge
  %31 = phi i32 [ %.pre393, %for.body74.if.then91_crit_edge ], [ %30, %land.lhs.true85 ]
  %32 = phi i32 [ %.pre, %for.body74.if.then91_crit_edge ], [ %29, %land.lhs.true85 ]
  store i32 %28, i32* %arrayidx76, align 4, !tbaa !3
  store i32 %27, i32* %arrayidx78, align 4, !tbaa !3
  %33 = load i32* %arrayidx101, align 4, !tbaa !3
  %arrayidx103 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv380
  %34 = load i32* %arrayidx103, align 4, !tbaa !3
  store i32 %34, i32* %arrayidx101, align 4, !tbaa !3
  store i32 %33, i32* %arrayidx103, align 4, !tbaa !3
  %arrayidx111 = getelementptr inbounds [32 x i32]* %list_sign, i64 0, i64 %indvars.iv380
  store i32 %32, i32* %arrayidx109, align 4, !tbaa !3
  store i32 %31, i32* %arrayidx111, align 4, !tbaa !3
  br label %for.inc117

for.inc117:                                       ; preds = %lor.lhs.false, %land.lhs.true85, %if.then91
  %indvars.iv.next381 = add i64 %indvars.iv380, 1
  %lftr.wideiv383 = trunc i64 %indvars.iv.next381 to i32
  %exitcond384 = icmp eq i32 %lftr.wideiv383, %15
  br i1 %exitcond384, label %for.cond67.loopexit, label %for.body74

for.body125:                                      ; preds = %for.cond123.preheader, %for.body125
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body125 ], [ 0, %for.cond123.preheader ]
  %no_reorder.0353 = phi i32 [ %no_reorder.0., %for.body125 ], [ 1, %for.cond123.preheader ]
  %arrayidx127 = getelementptr inbounds [32 x i32]* %default_order, i64 0, i64 %indvars.iv
  %35 = load i32* %arrayidx127, align 4, !tbaa !3
  %arrayidx129 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv
  %36 = load i32* %arrayidx129, align 4, !tbaa !3
  %cmp130 = icmp eq i32 %35, %36
  %no_reorder.0. = select i1 %cmp130, i32 %no_reorder.0353, i32 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv376 = trunc i64 %indvars.iv.next to i32
  %exitcond377 = icmp eq i32 %lftr.wideiv376, %num_ref_idx_lX_active
  br i1 %exitcond377, label %for.end135, label %for.body125

for.end135:                                       ; preds = %for.body125
  %phitmp = icmp eq i32 %no_reorder.0., 0
  br i1 %phitmp, label %for.cond138.preheader, label %if.end240

for.cond138.preheader:                            ; preds = %for.end135
  br i1 %cmp4363, label %for.end222.thread, label %for.body140.lr.ph

for.end222.thread:                                ; preds = %for.cond138.preheader
  store i32 3, i32* %remapping_of_pic_nums_idc, align 4, !tbaa !3
  br label %for.end234

for.body140.lr.ph:                                ; preds = %for.cond138.preheader
  %37 = add i32 %num_ref_idx_lX_active, -1
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 2
  %40 = add i64 %39, 4
  br label %for.body140

for.body140:                                      ; preds = %for.body212.lr.ph, %for.body140.lr.ph
  %indvars.iv374 = phi i64 [ 0, %for.body140.lr.ph ], [ %indvars.iv.next375, %for.body212.lr.ph ]
  %i.4351 = phi i32 [ 0, %for.body140.lr.ph ], [ %add192, %for.body212.lr.ph ]
  %picNumLXPred.0350 = phi i32 [ %currPicNum.0, %for.body140.lr.ph ], [ %41, %for.body212.lr.ph ]
  %arrayidx142 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %indvars.iv374
  %41 = load i32* %arrayidx142, align 4, !tbaa !3
  %sub143 = sub nsw i32 %41, %picNumLXPred.0350
  %cmp144 = icmp slt i32 %sub143, 1
  %arrayidx147 = getelementptr inbounds i32* %remapping_of_pic_nums_idc, i64 %indvars.iv374
  br i1 %cmp144, label %if.then145, label %if.else160

if.then145:                                       ; preds = %for.body140
  store i32 0, i32* %arrayidx147, align 4, !tbaa !3
  %ispos331 = icmp sgt i32 %sub143, -1
  %neg332 = sub i32 0, %sub143
  %42 = select i1 %ispos331, i32 %sub143, i32 %neg332
  %arrayidx151 = getelementptr inbounds i32* %abs_diff_pic_num_minus1, i64 %indvars.iv374
  %cmp154 = icmp slt i32 %42, 1
  %sub156.sub149.v = select i1 %cmp154, i32 %maxPicNum.0, i32 %42
  %sub156.sub149 = add i32 %sub156.sub149.v, -1
  store i32 %sub156.sub149, i32* %arrayidx151, align 4, !tbaa !3
  br label %for.body176.lr.ph

if.else160:                                       ; preds = %for.body140
  store i32 1, i32* %arrayidx147, align 4, !tbaa !3
  %sub164 = add nsw i32 %sub143, -1
  %arrayidx166 = getelementptr inbounds i32* %abs_diff_pic_num_minus1, i64 %indvars.iv374
  store i32 %sub164, i32* %arrayidx166, align 4, !tbaa !3
  br label %for.body176.lr.ph

for.body176.lr.ph:                                ; preds = %if.then145, %if.else160
  %arrayidx173 = getelementptr inbounds [32 x i32]* %tmp_reorder, i64 0, i64 %indvars.iv374
  store i32 %41, i32* %arrayidx173, align 4, !tbaa !3
  br label %for.body176

for.body176:                                      ; preds = %for.inc189, %for.body176.lr.ph
  %indvars.iv365 = phi i64 [ %indvars.iv374, %for.body176.lr.ph ], [ %indvars.iv.next366, %for.inc189 ]
  %k.0338 = phi i32 [ %i.4351, %for.body176.lr.ph ], [ %k.1, %for.inc189 ]
  %arrayidx178 = getelementptr inbounds [32 x i32]* %default_order, i64 0, i64 %indvars.iv365
  %43 = load i32* %arrayidx178, align 4, !tbaa !3
  %cmp181 = icmp eq i32 %43, %41
  br i1 %cmp181, label %for.inc189, label %if.then182

if.then182:                                       ; preds = %for.body176
  %inc183 = add i32 %k.0338, 1
  %idxprom186 = zext i32 %inc183 to i64
  %arrayidx187 = getelementptr inbounds [32 x i32]* %tmp_reorder, i64 0, i64 %idxprom186
  store i32 %43, i32* %arrayidx187, align 4, !tbaa !3
  br label %for.inc189

for.inc189:                                       ; preds = %for.body176, %if.then182
  %k.1 = phi i32 [ %inc183, %if.then182 ], [ %k.0338, %for.body176 ]
  %indvars.iv.next366 = add i64 %indvars.iv365, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next366 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num_ref_idx_lX_active
  br i1 %exitcond, label %for.end191, label %for.body176

for.end191:                                       ; preds = %for.inc189
  %indvars.iv.next375 = add i64 %indvars.iv374, 1
  %add192 = add i32 %i.4351, 1
  %44 = trunc i64 %indvars.iv.next375 to i32
  %cmp194340 = icmp ult i32 %44, %num_ref_idx_lX_active
  br i1 %cmp194340, label %for.body195, label %for.end222

for.cond193:                                      ; preds = %for.body195
  %cmp194 = icmp ult i32 %inc204, %num_ref_idx_lX_active
  br i1 %cmp194, label %for.body195, label %for.end222

for.body195:                                      ; preds = %for.end191, %for.cond193
  %j.2341 = phi i32 [ %inc204, %for.cond193 ], [ %add192, %for.end191 ]
  %idxprom196 = zext i32 %j.2341 to i64
  %arrayidx197 = getelementptr inbounds [32 x i32]* %tmp_reorder, i64 0, i64 %idxprom196
  %45 = load i32* %arrayidx197, align 4, !tbaa !3
  %arrayidx199 = getelementptr inbounds [32 x i32]* %re_order, i64 0, i64 %idxprom196
  %46 = load i32* %arrayidx199, align 4, !tbaa !3
  %cmp200 = icmp eq i32 %45, %46
  %inc204 = add i32 %j.2341, 1
  br i1 %cmp200, label %for.cond193, label %for.body212.lr.ph

for.body212.lr.ph:                                ; preds = %for.body195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %40, i32 16, i1 false)
  br label %for.body140

for.end222:                                       ; preds = %for.cond193, %for.end191
  %phitmp394 = zext i32 %add192 to i64
  %arrayidx224 = getelementptr inbounds i32* %remapping_of_pic_nums_idc, i64 %phitmp394
  store i32 3, i32* %arrayidx224, align 4, !tbaa !3
  br i1 %cmp4363, label %for.end234, label %for.body227.lr.ph

for.body227.lr.ph:                                ; preds = %for.end222
  %47 = add i32 %num_ref_idx_lX_active, -1
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 2
  %50 = add i64 %49, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %50, i32 16, i1 false)
  br label %for.end234

for.end234:                                       ; preds = %for.end222.thread, %for.end222, %for.body227.lr.ph
  %cmp235 = icmp eq i32 %list_no, 0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 50
  %51 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  br i1 %cmp235, label %if.then236, label %if.else237

if.then236:                                       ; preds = %for.end234
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice* %51, i64 0, i32 10
  store i32 1, i32* %ref_pic_list_reordering_flag_l0, align 4, !tbaa !3
  br label %if.end240

if.else237:                                       ; preds = %for.end234
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice* %51, i64 0, i32 14
  store i32 1, i32* %ref_pic_list_reordering_flag_l1, align 4, !tbaa !3
  br label %if.end240

if.end240:                                        ; preds = %for.cond123.preheader, %if.then236, %if.else237, %for.end135
  call void @llvm.lifetime.end(i64 128, i8* %4) #3
  call void @llvm.lifetime.end(i64 128, i8* %3) #3
  call void @llvm.lifetime.end(i64 128, i8* %1) #3
  call void @llvm.lifetime.end(i64 128, i8* %2) #3
  call void @llvm.lifetime.end(i64 128, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #1

; Function Attrs: optsize
declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #1

; Function Attrs: optsize
declare i32 @dummy_slice_too_big(i32) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_UVLC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: optsize
declare void @init_lists(i32, i32) #1

; Function Attrs: optsize
declare void @poc_based_ref_management(i32) #1

; Function Attrs: optsize
declare void @alloc_ref_pic_list_reordering_buffer(%struct.Slice*) #1

; Function Attrs: optsize
declare void @reorder_ref_pic_list(%struct.storable_picture**, i32*, i32, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare void @init_mbaff_lists(...) #1

; Function Attrs: optsize
declare void @estimate_weighting_factor_P_slice(i32) #1

; Function Attrs: optsize
declare void @estimate_weighting_factor_B_slice(...) #1

; Function Attrs: optsize
declare void @compute_colocated(%struct.colocated_params*, %struct.storable_picture***) #1

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #1

; Function Attrs: optsize
declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #1

; Function Attrs: optsize
declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
