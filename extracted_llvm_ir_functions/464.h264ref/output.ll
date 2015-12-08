; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/output.c'
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
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }

@write_out_picture.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@write_out_picture.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@img = external global %struct.ImageParameters*
@input = external global %struct.InputParameters*
@.str1 = private unnamed_addr constant [23 x i8] c"write_out_picture: buf\00", align 1
@active_sps = external global %struct.seq_parameter_set_rbsp_t*
@out_buffer = common global %struct.frame_store* null, align 8

; Function Attrs: nounwind optsize readnone uwtable
define i32 @testEndian() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @img2buf(i16** nocapture %imgX, i8* nocapture %buf, i32 %size_x, i32 %size_y, i32 %symbol_size_in_bytes, i32 %crop_left, i32 %crop_right, i32 %crop_top, i32 %crop_bottom) #1 {
entry:
  %sub = sub nsw i32 %size_x, %crop_left
  %sub1 = sub i32 %sub, %crop_right
  %cmp88 = icmp ugt i32 %symbol_size_in_bytes, 2
  br i1 %cmp88, label %if.then90, label %if.else94

if.then90:                                        ; preds = %entry
  %sub2 = sub i32 %size_y, %crop_top
  %sub3 = sub i32 %sub2, %crop_bottom
  %mul91 = mul i32 %sub1, %symbol_size_in_bytes
  %mul92 = mul i32 %mul91, %sub3
  %conv93 = sext i32 %mul92 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %buf, i8 0, i64 %conv93, i32 1, i1 false)
  br label %if.end

if.else94:                                        ; preds = %entry
  %phitmp = sext i32 %symbol_size_in_bytes to i64
  br label %if.end

if.end:                                           ; preds = %if.else94, %if.then90
  %size.0 = phi i64 [ 2, %if.then90 ], [ %phitmp, %if.else94 ]
  %sub96 = sub nsw i32 %size_y, %crop_bottom
  %cmp97206 = icmp sgt i32 %sub96, %crop_top
  br i1 %cmp97206, label %for.cond100.preheader.lr.ph, label %if.end123

for.cond100.preheader.lr.ph:                      ; preds = %if.end
  %sub101 = sub nsw i32 %size_x, %crop_right
  %cmp102204 = icmp sgt i32 %sub101, %crop_left
  %0 = sext i32 %crop_left to i64
  %1 = sext i32 %crop_top to i64
  br label %for.cond100.preheader

for.cond100.preheader:                            ; preds = %for.cond100.preheader.lr.ph, %for.inc120
  %indvars.iv208 = phi i64 [ %1, %for.cond100.preheader.lr.ph ], [ %indvars.iv.next209, %for.inc120 ]
  br i1 %cmp102204, label %for.body104.lr.ph, label %for.inc120

for.body104.lr.ph:                                ; preds = %for.cond100.preheader
  %2 = trunc i64 %indvars.iv208 to i32
  %sub106 = sub nsw i32 %2, %crop_top
  %mul107 = mul nsw i32 %sub106, %sub1
  %sub105 = sub i32 %mul107, %crop_left
  %arrayidx114 = getelementptr inbounds i16** %imgX, i64 %indvars.iv208
  br label %for.body104

for.body104:                                      ; preds = %for.body104.lr.ph, %for.body104
  %indvars.iv = phi i64 [ %0, %for.body104.lr.ph ], [ %indvars.iv.next, %for.body104 ]
  %3 = trunc i64 %indvars.iv to i32
  %add108 = add i32 %sub105, %3
  %mul109 = mul nsw i32 %add108, %symbol_size_in_bytes
  %idx.ext110 = sext i32 %mul109 to i64
  %add.ptr111 = getelementptr inbounds i8* %buf, i64 %idx.ext110
  %4 = load i16** %arrayidx114, align 8, !tbaa !0
  %arrayidx115 = getelementptr inbounds i16* %4, i64 %indvars.iv
  %5 = bitcast i16* %arrayidx115 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr111, i8* %5, i64 %size.0, i32 1, i1 false)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp102 = icmp slt i32 %6, %sub101
  br i1 %cmp102, label %for.body104, label %for.inc120

for.inc120:                                       ; preds = %for.body104, %for.cond100.preheader
  %indvars.iv.next209 = add i64 %indvars.iv208, 1
  %7 = trunc i64 %indvars.iv.next209 to i32
  %cmp97 = icmp slt i32 %7, %sub96
  br i1 %cmp97, label %for.cond100.preheader, label %if.end123

if.end123:                                        ; preds = %for.inc120, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @write_picture(%struct.storable_picture* %p, i32 %p_out, i32 %real_structure) #1 {
entry:
  tail call void @write_out_picture(%struct.storable_picture* %p, i32 %p_out) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_out_picture(%struct.storable_picture* %p, i32 %p_out) #1 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pic_unit_size_on_disk = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 148
  %1 = load i32* %pic_unit_size_on_disk, align 4, !tbaa !3
  %div = sdiv i32 %1, 8
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 139
  %3 = load i32* %rgb_input_flag, align 4, !tbaa !3
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %yuv_format = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 18
  %4 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, 3
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %non_existing = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 17
  %6 = load i32* %non_existing, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %6, 0
  br i1 %tobool1, label %if.end, label %return

if.end:                                           ; preds = %land.end
  %frame_cropping_flag = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 43
  %7 = load i32* %frame_cropping_flag, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %7, 0
  br i1 %tobool2, label %if.end20, label %if.then3

if.then3:                                         ; preds = %if.end
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 41
  %8 = load i32* %chroma_format_idc, align 4, !tbaa !3
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [4 x i32]* @write_out_picture.SubWidthC, i64 0, i64 %idxprom
  %9 = load i32* %arrayidx, align 4, !tbaa !3
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 44
  %10 = load i32* %frame_cropping_rect_left_offset, align 4, !tbaa !3
  %mul = mul nsw i32 %10, %9
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 45
  %11 = load i32* %frame_cropping_rect_right_offset, align 4, !tbaa !3
  %mul7 = mul nsw i32 %11, %9
  %arrayidx10 = getelementptr inbounds [4 x i32]* @write_out_picture.SubHeightC, i64 0, i64 %idxprom
  %12 = load i32* %arrayidx10, align 4, !tbaa !3
  %frame_mbs_only_flag = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 42
  %13 = load i32* %frame_mbs_only_flag, align 4, !tbaa !3
  %sub = sub nsw i32 2, %13
  %mul11 = mul nsw i32 %sub, %12
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 46
  %14 = load i32* %frame_cropping_rect_top_offset, align 4, !tbaa !3
  %mul12 = mul nsw i32 %mul11, %14
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 47
  %15 = load i32* %frame_cropping_rect_bottom_offset, align 4, !tbaa !3
  %mul19 = mul nsw i32 %mul11, %15
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then3
  %crop_bottom.0 = phi i32 [ %mul19, %if.then3 ], [ 0, %if.end ]
  %crop_top.0 = phi i32 [ %mul12, %if.then3 ], [ 0, %if.end ]
  %crop_right.0 = phi i32 [ %mul7, %if.then3 ], [ 0, %if.end ]
  %crop_left.0 = phi i32 [ %mul, %if.then3 ], [ 0, %if.end ]
  %size_x = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 18
  %16 = load i32* %size_x, align 4, !tbaa !3
  %size_y = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 19
  %17 = load i32* %size_y, align 4, !tbaa !3
  %mul21 = mul i32 %16, %div
  %mul22 = mul i32 %mul21, %17
  %conv = sext i32 %mul22 to i64
  %call = tail call noalias i8* @malloc(i64 %conv) #6
  %cmp23 = icmp eq i8* %call, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end20
  br i1 %5, label %if.then28, label %if.end81

if.then28:                                        ; preds = %if.end26
  %frame_cropping_rect_left_offset29 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 44
  %18 = load i32* %frame_cropping_rect_left_offset29, align 4, !tbaa !3
  %frame_cropping_rect_right_offset30 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 45
  %19 = load i32* %frame_cropping_rect_right_offset30, align 4, !tbaa !3
  %frame_mbs_only_flag31 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 42
  %20 = load i32* %frame_mbs_only_flag31, align 4, !tbaa !3
  %sub32 = sub nsw i32 2, %20
  %frame_cropping_rect_top_offset33 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 46
  %21 = load i32* %frame_cropping_rect_top_offset33, align 4, !tbaa !3
  %mul34 = mul nsw i32 %sub32, %21
  %frame_cropping_rect_bottom_offset37 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 47
  %22 = load i32* %frame_cropping_rect_bottom_offset37, align 4, !tbaa !3
  %mul38 = mul nsw i32 %22, %sub32
  %imgUV = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 30
  %23 = load i16**** %imgUV, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i16*** %23, i64 1
  %24 = load i16*** %arrayidx39, align 8, !tbaa !0
  %size_x_cr = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 20
  %25 = load i32* %size_x_cr, align 4, !tbaa !3
  %size_y_cr = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 21
  %26 = load i32* %size_y_cr, align 4, !tbaa !3
  tail call void @img2buf(i16** %24, i8* %call, i32 %25, i32 %26, i32 %div, i32 %18, i32 %19, i32 %mul34, i32 %mul38) #5
  %27 = load i32* %size_y_cr, align 4, !tbaa !3
  %mul38255 = add i32 %22, %21
  %sum254 = mul i32 %sub32, %mul38255
  %sub42 = sub i32 %27, %sum254
  %28 = load i32* %size_x_cr, align 4, !tbaa !3
  %sum256 = add i32 %19, %18
  %sub45 = sub i32 %28, %sum256
  %mul46 = mul i32 %sub42, %div
  %mul47 = mul i32 %mul46, %sub45
  %conv48 = sext i32 %mul47 to i64
  %call49 = tail call i64 @write(i32 %p_out, i8* %call, i64 %conv48) #6
  %29 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_cropping_flag50 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %29, i64 0, i32 28
  %30 = load i32* %frame_cropping_flag50, align 4, !tbaa !1
  %tobool51 = icmp eq i32 %30, 0
  br i1 %tobool51, label %if.end81, label %if.then52

if.then52:                                        ; preds = %if.then28
  %chroma_format_idc53 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 41
  %31 = load i32* %chroma_format_idc53, align 4, !tbaa !3
  %idxprom54 = sext i32 %31 to i64
  %arrayidx55 = getelementptr inbounds [4 x i32]* @write_out_picture.SubWidthC, i64 0, i64 %idxprom54
  %32 = load i32* %arrayidx55, align 4, !tbaa !3
  %33 = load i32* %frame_cropping_rect_left_offset29, align 4, !tbaa !3
  %mul57 = mul nsw i32 %33, %32
  %34 = load i32* %frame_cropping_rect_right_offset30, align 4, !tbaa !3
  %mul62 = mul nsw i32 %34, %32
  %arrayidx65 = getelementptr inbounds [4 x i32]* @write_out_picture.SubHeightC, i64 0, i64 %idxprom54
  %35 = load i32* %arrayidx65, align 4, !tbaa !3
  %36 = load i32* %frame_mbs_only_flag31, align 4, !tbaa !3
  %sub67 = sub nsw i32 2, %36
  %mul68 = mul nsw i32 %sub67, %35
  %37 = load i32* %frame_cropping_rect_top_offset33, align 4, !tbaa !3
  %mul70 = mul nsw i32 %mul68, %37
  %38 = load i32* %frame_cropping_rect_bottom_offset37, align 4, !tbaa !3
  %mul78 = mul nsw i32 %mul68, %38
  br label %if.end81

if.end81:                                         ; preds = %if.then28, %if.end26, %if.then52
  %crop_bottom.1 = phi i32 [ %mul78, %if.then52 ], [ %crop_bottom.0, %if.end26 ], [ 0, %if.then28 ]
  %crop_top.1 = phi i32 [ %mul70, %if.then52 ], [ %crop_top.0, %if.end26 ], [ 0, %if.then28 ]
  %crop_right.1 = phi i32 [ %mul62, %if.then52 ], [ %crop_right.0, %if.end26 ], [ 0, %if.then28 ]
  %crop_left.1 = phi i32 [ %mul57, %if.then52 ], [ %crop_left.0, %if.end26 ], [ 0, %if.then28 ]
  %imgY = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 25
  %39 = load i16*** %imgY, align 8, !tbaa !0
  %40 = load i32* %size_x, align 4, !tbaa !3
  %41 = load i32* %size_y, align 4, !tbaa !3
  tail call void @img2buf(i16** %39, i8* %call, i32 %40, i32 %41, i32 %div, i32 %crop_left.1, i32 %crop_right.1, i32 %crop_top.1, i32 %crop_bottom.1) #5
  %42 = load i32* %size_y, align 4, !tbaa !3
  %sum = add i32 %crop_top.1, %crop_bottom.1
  %sub86 = sub i32 %42, %sum
  %43 = load i32* %size_x, align 4, !tbaa !3
  %sum247 = add i32 %crop_left.1, %crop_right.1
  %sub89 = sub i32 %43, %sum247
  %mul90 = mul i32 %sub86, %div
  %mul91 = mul i32 %mul90, %sub89
  %conv92 = sext i32 %mul91 to i64
  %call93 = tail call i64 @write(i32 %p_out, i8* %call, i64 %conv92) #6
  %chroma_format_idc94 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 41
  %44 = load i32* %chroma_format_idc94, align 4, !tbaa !3
  %cmp95 = icmp eq i32 %44, 0
  br i1 %cmp95, label %if.end139, label %if.then97

if.then97:                                        ; preds = %if.end81
  %frame_cropping_rect_left_offset98 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 44
  %45 = load i32* %frame_cropping_rect_left_offset98, align 4, !tbaa !3
  %frame_cropping_rect_right_offset99 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 45
  %46 = load i32* %frame_cropping_rect_right_offset99, align 4, !tbaa !3
  %frame_mbs_only_flag100 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 42
  %47 = load i32* %frame_mbs_only_flag100, align 4, !tbaa !3
  %sub101 = sub nsw i32 2, %47
  %frame_cropping_rect_top_offset102 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 46
  %48 = load i32* %frame_cropping_rect_top_offset102, align 4, !tbaa !3
  %mul103 = mul nsw i32 %sub101, %48
  %frame_cropping_rect_bottom_offset106 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 47
  %49 = load i32* %frame_cropping_rect_bottom_offset106, align 4, !tbaa !3
  %mul107 = mul nsw i32 %49, %sub101
  %imgUV108 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 30
  %50 = load i16**** %imgUV108, align 8, !tbaa !0
  %51 = load i16*** %50, align 8, !tbaa !0
  %size_x_cr110 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 20
  %52 = load i32* %size_x_cr110, align 4, !tbaa !3
  %size_y_cr111 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 21
  %53 = load i32* %size_y_cr111, align 4, !tbaa !3
  tail call void @img2buf(i16** %51, i8* %call, i32 %52, i32 %53, i32 %div, i32 %45, i32 %46, i32 %mul103, i32 %mul107) #5
  %54 = load i32* %size_y_cr111, align 4, !tbaa !3
  %mul107249 = add i32 %49, %48
  %sum248 = mul i32 %sub101, %mul107249
  %sub114 = sub i32 %54, %sum248
  %55 = load i32* %size_x_cr110, align 4, !tbaa !3
  %sum250 = add i32 %46, %45
  %sub117 = sub i32 %55, %sum250
  %mul118 = mul i32 %sub114, %div
  %mul119 = mul i32 %mul118, %sub117
  %conv120 = sext i32 %mul119 to i64
  %call121 = tail call i64 @write(i32 %p_out, i8* %call, i64 %conv120) #6
  br i1 %5, label %if.end139, label %if.then123

if.then123:                                       ; preds = %if.then97
  %56 = load i16**** %imgUV108, align 8, !tbaa !0
  %arrayidx125 = getelementptr inbounds i16*** %56, i64 1
  %57 = load i16*** %arrayidx125, align 8, !tbaa !0
  %58 = load i32* %size_x_cr110, align 4, !tbaa !3
  %59 = load i32* %size_y_cr111, align 4, !tbaa !3
  tail call void @img2buf(i16** %57, i8* %call, i32 %58, i32 %59, i32 %div, i32 %45, i32 %46, i32 %mul103, i32 %mul107) #5
  %60 = load i32* %size_y_cr111, align 4, !tbaa !3
  %sub130 = sub i32 %60, %sum248
  %61 = load i32* %size_x_cr110, align 4, !tbaa !3
  %sub133 = sub i32 %61, %sum250
  %mul134 = mul i32 %sub130, %div
  %mul135 = mul i32 %mul134, %sub133
  %conv136 = sext i32 %mul135 to i64
  %call137 = tail call i64 @write(i32 %p_out, i8* %call, i64 %conv136) #6
  br label %if.end139

if.end139:                                        ; preds = %if.end81, %if.then97, %if.then123
  tail call void @free(i8* %call) #6
  br label %return

return:                                           ; preds = %land.end, %if.end139
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #4

; Function Attrs: optsize
declare i64 @write(i32, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @init_out_buffer() #1 {
entry:
  %call = tail call %struct.frame_store* (...)* @alloc_frame_store() #6
  store %struct.frame_store* %call, %struct.frame_store** @out_buffer, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.frame_store* @alloc_frame_store(...) #4

; Function Attrs: nounwind optsize uwtable
define void @uninit_out_buffer() #1 {
entry:
  %0 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  tail call void @free_frame_store(%struct.frame_store* %0) #6
  store %struct.frame_store* null, %struct.frame_store** @out_buffer, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @free_frame_store(%struct.frame_store*) #4

; Function Attrs: nounwind optsize uwtable
define void @clear_picture(%struct.storable_picture* nocapture %p) #1 {
entry:
  %size_y = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 19
  %0 = load i32* %size_y, align 4, !tbaa !3
  %cmp50 = icmp sgt i32 %0, 0
  br i1 %cmp50, label %for.body.lr.ph, label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %imgY = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 25
  %size_x = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 18
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body, %entry
  %size_y_cr = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 21
  %1 = load i32* %size_y_cr, align 4, !tbaa !3
  %cmp248 = icmp sgt i32 %1, 0
  br i1 %cmp248, label %for.body4.lr.ph, label %for.end29

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %imgUV = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 30
  %size_x_cr = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 20
  br label %for.body4

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv54 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next55, %for.body ]
  %2 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16** %2, i64 %indvars.iv54
  %3 = load i16** %arrayidx, align 8, !tbaa !0
  %4 = bitcast i16* %3 to i8*
  %5 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 154
  %6 = load i32* %dc_pred_value, align 4, !tbaa !3
  %7 = trunc i32 %6 to i8
  %8 = load i32* %size_x, align 4, !tbaa !3
  %conv = sext i32 %8 to i64
  %mul = shl nsw i64 %conv, 1
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 %7, i64 %mul, i32 2, i1 false)
  %indvars.iv.next55 = add i64 %indvars.iv54, 1
  %9 = load i32* %size_y, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next55 to i32
  %cmp = icmp slt i32 %10, %9
  br i1 %cmp, label %for.body, label %for.cond1.preheader

for.cond14.preheader:                             ; preds = %for.body4
  %cmp1646 = icmp sgt i32 %19, 0
  br i1 %cmp1646, label %for.body18.lr.ph, label %for.end29

for.body18.lr.ph:                                 ; preds = %for.cond14.preheader
  %imgUV20 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 30
  %size_x_cr24 = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 20
  br label %for.body18

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %indvars.iv52 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next53, %for.body4 ]
  %11 = load i16**** %imgUV, align 8, !tbaa !0
  %12 = load i16*** %11, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i16** %12, i64 %indvars.iv52
  %13 = load i16** %arrayidx7, align 8, !tbaa !0
  %14 = bitcast i16* %13 to i8*
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dc_pred_value8 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 154
  %16 = load i32* %dc_pred_value8, align 4, !tbaa !3
  %17 = trunc i32 %16 to i8
  %18 = load i32* %size_x_cr, align 4, !tbaa !3
  %conv9 = sext i32 %18 to i64
  %mul10 = shl nsw i64 %conv9, 1
  tail call void @llvm.memset.p0i8.i64(i8* %14, i8 %17, i64 %mul10, i32 2, i1 false)
  %indvars.iv.next53 = add i64 %indvars.iv52, 1
  %19 = load i32* %size_y_cr, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv.next53 to i32
  %cmp2 = icmp slt i32 %20, %19
  br i1 %cmp2, label %for.body4, label %for.cond14.preheader

for.body18:                                       ; preds = %for.body18.lr.ph, %for.body18
  %indvars.iv = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next, %for.body18 ]
  %21 = load i16**** %imgUV20, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i16*** %21, i64 1
  %22 = load i16*** %arrayidx21, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i16** %22, i64 %indvars.iv
  %23 = load i16** %arrayidx22, align 8, !tbaa !0
  %24 = bitcast i16* %23 to i8*
  %25 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dc_pred_value23 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 154
  %26 = load i32* %dc_pred_value23, align 4, !tbaa !3
  %27 = trunc i32 %26 to i8
  %28 = load i32* %size_x_cr24, align 4, !tbaa !3
  %conv25 = sext i32 %28 to i64
  %mul26 = shl nsw i64 %conv25, 1
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 %27, i64 %mul26, i32 2, i1 false)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %29 = load i32* %size_y_cr, align 4, !tbaa !3
  %30 = trunc i64 %indvars.iv.next to i32
  %cmp16 = icmp slt i32 %30, %29
  br i1 %cmp16, label %for.body18, label %for.end29

for.end29:                                        ; preds = %for.cond1.preheader, %for.body18, %for.cond14.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_unpaired_field(%struct.frame_store* %fs, i32 %p_out) #1 {
entry:
  %is_used = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 0
  %0 = load i32* %is_used, align 4, !tbaa !3
  %and = and i32 %0, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %top_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  %1 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  %size_x = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 18
  %2 = load i32* %size_x, align 4, !tbaa !3
  %size_y = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 19
  %3 = load i32* %size_y, align 4, !tbaa !3
  %size_x_cr = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 20
  %4 = load i32* %size_x_cr, align 4, !tbaa !3
  %size_y_cr = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 21
  %5 = load i32* %size_y_cr, align 4, !tbaa !3
  %call = tail call %struct.storable_picture* @alloc_storable_picture(i32 2, i32 %2, i32 %3, i32 %4, i32 %5) #6
  %bottom_field = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  store %struct.storable_picture* %call, %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  tail call void @clear_picture(%struct.storable_picture* %call) #5
  tail call void @dpb_combine_field(%struct.frame_store* %fs) #6
  %frame = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  %6 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  tail call void @write_out_picture(%struct.storable_picture* %6, i32 %p_out) #6
  %.pre = load i32* %is_used, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %7 = phi i32 [ %0, %entry ], [ %.pre, %if.then ]
  %and3 = and i32 %7, 2
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.end15, label %if.then5

if.then5:                                         ; preds = %if.end
  %bottom_field6 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 12
  %8 = load %struct.storable_picture** %bottom_field6, align 8, !tbaa !0
  %size_x7 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 18
  %9 = load i32* %size_x7, align 4, !tbaa !3
  %size_y8 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 19
  %10 = load i32* %size_y8, align 4, !tbaa !3
  %size_x_cr9 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 20
  %11 = load i32* %size_x_cr9, align 4, !tbaa !3
  %size_y_cr10 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 21
  %12 = load i32* %size_y_cr10, align 4, !tbaa !3
  %call11 = tail call %struct.storable_picture* @alloc_storable_picture(i32 1, i32 %9, i32 %10, i32 %11, i32 %12) #6
  %top_field12 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 11
  store %struct.storable_picture* %call11, %struct.storable_picture** %top_field12, align 8, !tbaa !0
  tail call void @clear_picture(%struct.storable_picture* %call11) #5
  tail call void @dpb_combine_field(%struct.frame_store* %fs) #6
  %frame14 = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  %13 = load %struct.storable_picture** %frame14, align 8, !tbaa !0
  tail call void @write_out_picture(%struct.storable_picture* %13, i32 %p_out) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then5
  store i32 3, i32* %is_used, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare void @dpb_combine_field(%struct.frame_store*) #4

; Function Attrs: nounwind optsize uwtable
define void @flush_direct_output(i32 %p_out) #1 {
entry:
  %0 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  tail call void @write_unpaired_field(%struct.frame_store* %0, i32 %p_out) #5
  %1 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %frame = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 10
  %2 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %2) #6
  %3 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %frame1 = getelementptr inbounds %struct.frame_store* %3, i64 0, i32 10
  store %struct.storable_picture* null, %struct.storable_picture** %frame1, align 8, !tbaa !0
  %4 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %top_field = getelementptr inbounds %struct.frame_store* %4, i64 0, i32 11
  %5 = load %struct.storable_picture** %top_field, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %5) #6
  %6 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %top_field2 = getelementptr inbounds %struct.frame_store* %6, i64 0, i32 11
  store %struct.storable_picture* null, %struct.storable_picture** %top_field2, align 8, !tbaa !0
  %7 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %bottom_field = getelementptr inbounds %struct.frame_store* %7, i64 0, i32 12
  %8 = load %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %8) #6
  %9 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %bottom_field3 = getelementptr inbounds %struct.frame_store* %9, i64 0, i32 12
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field3, align 8, !tbaa !0
  %10 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %is_used = getelementptr inbounds %struct.frame_store* %10, i64 0, i32 0
  store i32 0, i32* %is_used, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @free_storable_picture(%struct.storable_picture*) #4

; Function Attrs: nounwind optsize uwtable
define void @write_stored_frame(%struct.frame_store* %fs, i32 %p_out) #1 {
entry:
  tail call void @flush_direct_output(i32 %p_out) #5
  %is_used = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 0
  %0 = load i32* %is_used, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @write_unpaired_field(%struct.frame_store* %fs, i32 %p_out) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %frame = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 10
  %1 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  tail call void @write_out_picture(%struct.storable_picture* %1, i32 %p_out) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %is_output = getelementptr inbounds %struct.frame_store* %fs, i64 0, i32 8
  store i32 1, i32* %is_output, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @direct_output(%struct.storable_picture* %p, i32 %p_out) #1 {
entry:
  %structure = getelementptr inbounds %struct.storable_picture* %p, i64 0, i32 0
  %0 = load i32* %structure, align 4, !tbaa !1
  switch i32 %0, label %if.end7 [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

if.then:                                          ; preds = %entry
  tail call void @flush_direct_output(i32 %p_out) #5
  tail call void @write_out_picture(%struct.storable_picture* %p, i32 %p_out) #6
  tail call void @free_storable_picture(%struct.storable_picture* %p) #6
  br label %if.end29

if.then3:                                         ; preds = %entry
  %1 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %is_used = getelementptr inbounds %struct.frame_store* %1, i64 0, i32 0
  %2 = load i32* %is_used, align 4, !tbaa !3
  %and = and i32 %2, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.then3
  tail call void @flush_direct_output(i32 %p_out) #5
  %.pre40 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then4
  %3 = phi %struct.frame_store* [ %1, %if.then3 ], [ %.pre40, %if.then4 ]
  %top_field = getelementptr inbounds %struct.frame_store* %3, i64 0, i32 11
  store %struct.storable_picture* %p, %struct.storable_picture** %top_field, align 8, !tbaa !0
  %4 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %is_used6 = getelementptr inbounds %struct.frame_store* %4, i64 0, i32 0
  %5 = load i32* %is_used6, align 4, !tbaa !3
  %or = or i32 %5, 1
  store i32 %or, i32* %is_used6, align 4, !tbaa !3
  %.pr = load i32* %structure, align 4, !tbaa !1
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.end5
  %6 = phi i32 [ %0, %entry ], [ %.pr, %if.end5 ]
  %cmp9 = icmp eq i32 %6, 2
  %7 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %is_used11 = getelementptr inbounds %struct.frame_store* %7, i64 0, i32 0
  %8 = load i32* %is_used11, align 4, !tbaa !3
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end7
  %and12 = and i32 %8, 2
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  tail call void @flush_direct_output(i32 %p_out) #5
  %.pre = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.then14
  %9 = phi %struct.frame_store* [ %7, %if.then10 ], [ %.pre, %if.then14 ]
  %bottom_field = getelementptr inbounds %struct.frame_store* %9, i64 0, i32 12
  store %struct.storable_picture* %p, %struct.storable_picture** %bottom_field, align 8, !tbaa !0
  %10 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %is_used16 = getelementptr inbounds %struct.frame_store* %10, i64 0, i32 0
  %11 = load i32* %is_used16, align 4, !tbaa !3
  %or17 = or i32 %11, 2
  store i32 %or17, i32* %is_used16, align 4, !tbaa !3
  br label %if.end18

if.end18:                                         ; preds = %if.end7, %if.end15
  %12 = phi i32 [ %or17, %if.end15 ], [ %8, %if.end7 ]
  %13 = phi %struct.frame_store* [ %10, %if.end15 ], [ %7, %if.end7 ]
  %cmp20 = icmp eq i32 %12, 3
  br i1 %cmp20, label %if.then21, label %if.end29

if.then21:                                        ; preds = %if.end18
  tail call void @dpb_combine_field(%struct.frame_store* %13) #6
  %14 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %frame = getelementptr inbounds %struct.frame_store* %14, i64 0, i32 10
  %15 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  tail call void @write_out_picture(%struct.storable_picture* %15, i32 %p_out) #6
  %16 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %frame22 = getelementptr inbounds %struct.frame_store* %16, i64 0, i32 10
  %17 = load %struct.storable_picture** %frame22, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %17) #6
  %18 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %frame23 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 10
  store %struct.storable_picture* null, %struct.storable_picture** %frame23, align 8, !tbaa !0
  %19 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %top_field24 = getelementptr inbounds %struct.frame_store* %19, i64 0, i32 11
  %20 = load %struct.storable_picture** %top_field24, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %20) #6
  %21 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %top_field25 = getelementptr inbounds %struct.frame_store* %21, i64 0, i32 11
  store %struct.storable_picture* null, %struct.storable_picture** %top_field25, align 8, !tbaa !0
  %22 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %bottom_field26 = getelementptr inbounds %struct.frame_store* %22, i64 0, i32 12
  %23 = load %struct.storable_picture** %bottom_field26, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %23) #6
  %24 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %bottom_field27 = getelementptr inbounds %struct.frame_store* %24, i64 0, i32 12
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field27, align 8, !tbaa !0
  %25 = load %struct.frame_store** @out_buffer, align 8, !tbaa !0
  %is_used28 = getelementptr inbounds %struct.frame_store* %25, i64 0, i32 0
  store i32 0, i32* %is_used28, align 4, !tbaa !3
  br label %if.end29

if.end29:                                         ; preds = %if.then, %if.then21, %if.end18
  ret void
}

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
