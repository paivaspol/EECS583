; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/decoder.c'
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }

@img = external global %struct.ImageParameters*
@start_frame_no_in_this_IGOP = external global i32
@enc_picture = external global %struct.storable_picture*
@decs = external global %struct.Decoders*
@enc_frame_picture = external global %struct.storable_picture*
@Get_Reference_Pixel.COEF = internal unnamed_addr constant [6 x i32] [i32 1, i32 -5, i32 20, i32 20, i32 -5, i32 1], align 16
@input = external global %struct.InputParameters*

; Function Attrs: nounwind optsize uwtable
define void @decode_one_b8block(i32 %decoder, i32 %mbmode, i32 %b8block, i32 %b8mode, i32 %b8ref) #0 {
entry:
  %mv = alloca [2 x [4 x [4 x i32]]], align 16
  %resY_tmp = alloca [16 x [16 x i32]], align 16
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0
  %1 = load i32* %number, align 4, !tbaa !3
  %2 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub = add i32 %1, -1
  %sub1 = sub i32 %sub, %2
  %num_ref_frames = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 8
  %3 = load i32* %num_ref_frames, align 4, !tbaa !3
  %rem = srem i32 %sub1, %3
  %4 = bitcast [2 x [4 x [4 x i32]]]* %mv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = bitcast [16 x [16 x i32]]* %resY_tmp to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %5) #1
  %rem2 = srem i32 %b8block, 2
  %shl = shl i32 %rem2, 3
  %add = add nsw i32 %shl, 8
  %shr = ashr exact i32 %shl, 2
  %add3 = add nsw i32 %shr, 2
  %div = sdiv i32 %b8block, 2
  %shl4 = shl i32 %div, 3
  %add5 = add nsw i32 %shl4, 8
  %shr6 = ashr exact i32 %shl4, 2
  %add7 = add nsw i32 %shr6, 2
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %6 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %7 = load i32* %pix_x, align 4, !tbaa !3
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %8 = load i32* %pix_y, align 4, !tbaa !3
  %9 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 25
  %10 = load i16*** %imgY, align 8, !tbaa !0
  %idxprom22 = sext i32 %decoder to i64
  %11 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %decY = getelementptr inbounds %struct.Decoders* %11, i64 0, i32 1
  %12 = load i16**** %decY, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i16*** %12, i64 %idxprom22
  %13 = load i16*** %arrayidx23, align 8, !tbaa !0
  %14 = shl i32 %div, 3
  %15 = sext i32 %14 to i64
  %16 = sext i32 %8 to i64
  %17 = shl i32 %rem2, 3
  %18 = sext i32 %17 to i64
  %19 = sext i32 %7 to i64
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond.preheader, %for.inc26
  %indvars.iv461 = phi i64 [ %18, %for.cond.preheader ], [ %indvars.iv.next462, %for.inc26 ]
  %20 = add nsw i64 %19, %indvars.iv461
  br label %for.body11

for.body11:                                       ; preds = %for.cond9.preheader, %for.body11
  %indvars.iv = phi i64 [ %15, %for.cond9.preheader ], [ %indvars.iv.next, %for.body11 ]
  %21 = add nsw i64 %16, %indvars.iv
  %arrayidx = getelementptr inbounds i16** %10, i64 %21
  %22 = load i16** %arrayidx, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i16* %22, i64 %20
  %23 = load i16* %arrayidx15, align 2, !tbaa !4
  %arrayidx24 = getelementptr inbounds i16** %13, i64 %21
  %24 = load i16** %arrayidx24, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i16* %24, i64 %20
  store i16 %23, i16* %arrayidx25, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %25 = trunc i64 %indvars.iv.next to i32
  %cmp10 = icmp slt i32 %25, %add5
  br i1 %cmp10, label %for.body11, label %for.inc26

for.inc26:                                        ; preds = %for.body11
  %indvars.iv.next462 = add i64 %indvars.iv461, 1
  %26 = trunc i64 %indvars.iv.next462 to i32
  %cmp8 = icmp slt i32 %26, %add
  br i1 %cmp8, label %for.cond9.preheader, label %if.end315

if.else:                                          ; preds = %entry
  %cmp29 = icmp eq i32 %mbmode, 0
  br i1 %cmp29, label %land.lhs.true, label %if.else75

land.lhs.true:                                    ; preds = %if.else
  switch i32 %6, label %if.else75 [
    i32 0, label %for.cond37.preheader
    i32 1, label %land.lhs.true34
  ]

land.lhs.true34:                                  ; preds = %land.lhs.true
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 113
  %27 = load i32* %nal_reference_idc, align 4, !tbaa !3
  %cmp35 = icmp sgt i32 %27, 0
  br i1 %cmp35, label %for.cond37.preheader, label %if.else75

for.cond37.preheader:                             ; preds = %land.lhs.true, %land.lhs.true34
  %28 = shl i32 %div, 3
  %29 = sext i32 %28 to i64
  %30 = shl i32 %rem2, 3
  %31 = sext i32 %30 to i64
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond37.preheader, %for.inc50
  %indvars.iv506 = phi i64 [ %31, %for.cond37.preheader ], [ %indvars.iv.next507, %for.inc50 ]
  br label %for.body42

for.cond53.preheader:                             ; preds = %for.inc50
  %32 = sext i32 %shr to i64
  %33 = sext i32 %shr6 to i64
  br label %for.cond56.preheader

for.body42:                                       ; preds = %for.cond40.preheader, %for.body42
  %indvars.iv504 = phi i64 [ %29, %for.cond40.preheader ], [ %indvars.iv.next505, %for.body42 ]
  %arrayidx46 = getelementptr inbounds [16 x [16 x i32]]* %resY_tmp, i64 0, i64 %indvars.iv504, i64 %indvars.iv506
  store i32 0, i32* %arrayidx46, align 4, !tbaa !3
  %indvars.iv.next505 = add i64 %indvars.iv504, 1
  %34 = trunc i64 %indvars.iv.next505 to i32
  %cmp41 = icmp slt i32 %34, %add5
  br i1 %cmp41, label %for.body42, label %for.inc50

for.inc50:                                        ; preds = %for.body42
  %indvars.iv.next507 = add i64 %indvars.iv506, 1
  %35 = trunc i64 %indvars.iv.next507 to i32
  %cmp38 = icmp slt i32 %35, %add
  br i1 %cmp38, label %for.cond40.preheader, label %for.cond53.preheader

for.cond56.preheader:                             ; preds = %for.cond53.preheader, %for.inc72
  %indvars.iv502 = phi i64 [ %33, %for.cond53.preheader ], [ %indvars.iv.next503, %for.inc72 ]
  br label %for.body58

for.body58:                                       ; preds = %for.cond56.preheader, %for.body58
  %indvars.iv498 = phi i64 [ %32, %for.cond56.preheader ], [ %indvars.iv.next499, %for.body58 ]
  %arrayidx63 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %indvars.iv502, i64 %indvars.iv498
  store i32 0, i32* %arrayidx63, align 4, !tbaa !3
  %arrayidx68 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %indvars.iv502, i64 %indvars.iv498
  store i32 0, i32* %arrayidx68, align 4, !tbaa !3
  %indvars.iv.next499 = add i64 %indvars.iv498, 1
  %36 = trunc i64 %indvars.iv.next499 to i32
  %cmp57 = icmp slt i32 %36, %add3
  br i1 %cmp57, label %for.body58, label %for.inc72

for.inc72:                                        ; preds = %for.body58
  %indvars.iv.next503 = add i64 %indvars.iv502, 1
  %37 = trunc i64 %indvars.iv.next503 to i32
  %cmp54 = icmp slt i32 %37, %add7
  br i1 %cmp54, label %for.cond56.preheader, label %if.end171.loopexit456

if.else75:                                        ; preds = %land.lhs.true, %land.lhs.true34, %if.else
  %b8mode.off = add i32 %b8mode, -1
  %38 = icmp ult i32 %b8mode.off, 7
  br i1 %38, label %for.cond80.preheader, label %for.cond125.preheader

for.cond125.preheader:                            ; preds = %if.else75
  %39 = sext i32 %shr to i64
  %40 = sext i32 %shr6 to i64
  br label %for.cond129.preheader

for.cond80.preheader:                             ; preds = %if.else75
  %idxprom86 = sext i32 %b8mode to i64
  %idxprom87 = sext i32 %b8ref to i64
  %all_mv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %41 = load i16******* %all_mv, align 8, !tbaa !0
  %42 = sext i32 %shr to i64
  %43 = sext i32 %shr6 to i64
  br label %for.cond83.preheader

for.cond83.preheader:                             ; preds = %for.cond80.preheader, %for.inc121
  %indvars.iv490 = phi i64 [ %43, %for.cond80.preheader ], [ %indvars.iv.next491, %for.inc121 ]
  br label %for.body85

for.cond149.preheader:                            ; preds = %for.inc146, %for.inc121
  %44 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %resY = getelementptr inbounds %struct.Decoders* %44, i64 0, i32 0
  %45 = load i32*** %resY, align 8, !tbaa !0
  %46 = shl i32 %div, 3
  %47 = sext i32 %46 to i64
  %48 = shl i32 %rem2, 3
  %49 = sext i32 %48 to i64
  br label %for.cond153.preheader

for.body85:                                       ; preds = %for.cond83.preheader, %for.body85
  %indvars.iv488 = phi i64 [ %42, %for.cond83.preheader ], [ %indvars.iv.next489, %for.body85 ]
  %arrayidx90 = getelementptr inbounds i16****** %41, i64 %indvars.iv488
  %50 = load i16****** %arrayidx90, align 8, !tbaa !0
  %arrayidx91 = getelementptr inbounds i16***** %50, i64 %indvars.iv490
  %51 = load i16***** %arrayidx91, align 8, !tbaa !0
  %52 = load i16**** %51, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i16*** %52, i64 %idxprom87
  %53 = load i16*** %arrayidx93, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i16** %53, i64 %idxprom86
  %54 = load i16** %arrayidx94, align 8, !tbaa !0
  %55 = load i16* %54, align 2, !tbaa !4
  %conv = sext i16 %55 to i32
  %arrayidx100 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %indvars.iv490, i64 %indvars.iv488
  store i32 %conv, i32* %arrayidx100, align 4, !tbaa !3
  %arrayidx111 = getelementptr inbounds i16* %54, i64 1
  %56 = load i16* %arrayidx111, align 2, !tbaa !4
  %conv112 = sext i16 %56 to i32
  %arrayidx117 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %indvars.iv490, i64 %indvars.iv488
  store i32 %conv112, i32* %arrayidx117, align 4, !tbaa !3
  %indvars.iv.next489 = add i64 %indvars.iv488, 1
  %57 = trunc i64 %indvars.iv.next489 to i32
  %cmp84 = icmp slt i32 %57, %add3
  br i1 %cmp84, label %for.body85, label %for.inc121

for.inc121:                                       ; preds = %for.body85
  %indvars.iv.next491 = add i64 %indvars.iv490, 1
  %58 = trunc i64 %indvars.iv.next491 to i32
  %cmp81 = icmp slt i32 %58, %add7
  br i1 %cmp81, label %for.cond83.preheader, label %for.cond149.preheader

for.cond129.preheader:                            ; preds = %for.cond125.preheader, %for.inc146
  %indvars.iv496 = phi i64 [ %40, %for.cond125.preheader ], [ %indvars.iv.next497, %for.inc146 ]
  br label %for.body132

for.body132:                                      ; preds = %for.cond129.preheader, %for.body132
  %indvars.iv492 = phi i64 [ %39, %for.cond129.preheader ], [ %indvars.iv.next493, %for.body132 ]
  %arrayidx137 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %indvars.iv496, i64 %indvars.iv492
  store i32 0, i32* %arrayidx137, align 4, !tbaa !3
  %arrayidx142 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %indvars.iv496, i64 %indvars.iv492
  store i32 0, i32* %arrayidx142, align 4, !tbaa !3
  %indvars.iv.next493 = add i64 %indvars.iv492, 1
  %59 = trunc i64 %indvars.iv.next493 to i32
  %cmp130 = icmp slt i32 %59, %add3
  br i1 %cmp130, label %for.body132, label %for.inc146

for.inc146:                                       ; preds = %for.body132
  %indvars.iv.next497 = add i64 %indvars.iv496, 1
  %60 = trunc i64 %indvars.iv.next497 to i32
  %cmp126 = icmp slt i32 %60, %add7
  br i1 %cmp126, label %for.cond129.preheader, label %for.cond149.preheader

for.cond153.preheader:                            ; preds = %for.cond149.preheader, %for.inc168
  %indvars.iv486 = phi i64 [ %49, %for.cond149.preheader ], [ %indvars.iv.next487, %for.inc168 ]
  br label %for.body156

for.body156:                                      ; preds = %for.cond153.preheader, %for.body156
  %indvars.iv484 = phi i64 [ %47, %for.cond153.preheader ], [ %indvars.iv.next485, %for.body156 ]
  %arrayidx159 = getelementptr inbounds i32** %45, i64 %indvars.iv484
  %61 = load i32** %arrayidx159, align 8, !tbaa !0
  %arrayidx160 = getelementptr inbounds i32* %61, i64 %indvars.iv486
  %62 = load i32* %arrayidx160, align 4, !tbaa !3
  %arrayidx164 = getelementptr inbounds [16 x [16 x i32]]* %resY_tmp, i64 0, i64 %indvars.iv484, i64 %indvars.iv486
  store i32 %62, i32* %arrayidx164, align 4, !tbaa !3
  %indvars.iv.next485 = add i64 %indvars.iv484, 1
  %63 = trunc i64 %indvars.iv.next485 to i32
  %cmp154 = icmp slt i32 %63, %add5
  br i1 %cmp154, label %for.body156, label %for.inc168

for.inc168:                                       ; preds = %for.body156
  %indvars.iv.next487 = add i64 %indvars.iv486, 1
  %64 = trunc i64 %indvars.iv.next487 to i32
  %cmp150 = icmp slt i32 %64, %add
  br i1 %cmp150, label %for.cond153.preheader, label %if.end171

if.end171.loopexit456:                            ; preds = %for.inc72
  %b8mode.off434.pre = add i32 %b8mode, -1
  br label %if.end171

if.end171:                                        ; preds = %for.inc168, %if.end171.loopexit456
  %b8mode.off434.pre-phi = phi i32 [ %b8mode.off434.pre, %if.end171.loopexit456 ], [ %b8mode.off, %for.inc168 ]
  %65 = icmp ult i32 %b8mode.off434.pre-phi, 7
  br i1 %65, label %for.cond193.preheader, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %if.end171
  br i1 %cmp29, label %land.lhs.true180, label %for.cond280.preheader

for.cond280.preheader:                            ; preds = %land.lhs.true188, %land.lhs.true180, %lor.lhs.false177
  %pix_x288 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %66 = load i32* %pix_x288, align 4, !tbaa !3
  %pix_y291 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %67 = load i32* %pix_y291, align 4, !tbaa !3
  %68 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY294 = getelementptr inbounds %struct.storable_picture* %68, i64 0, i32 25
  %69 = load i16*** %imgY294, align 8, !tbaa !0
  %idxprom303 = sext i32 %decoder to i64
  %70 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %decY304 = getelementptr inbounds %struct.Decoders* %70, i64 0, i32 1
  %71 = load i16**** %decY304, align 8, !tbaa !0
  %arrayidx305 = getelementptr inbounds i16*** %71, i64 %idxprom303
  %72 = load i16*** %arrayidx305, align 8, !tbaa !0
  %73 = shl i32 %div, 3
  %74 = sext i32 %73 to i64
  %75 = sext i32 %67 to i64
  %76 = shl i32 %rem2, 3
  %77 = sext i32 %76 to i64
  %78 = sext i32 %66 to i64
  br label %for.cond284.preheader

land.lhs.true180:                                 ; preds = %lor.lhs.false177
  switch i32 %6, label %for.cond280.preheader [
    i32 0, label %for.cond193.preheader
    i32 1, label %land.lhs.true188
  ]

land.lhs.true188:                                 ; preds = %land.lhs.true180
  %nal_reference_idc189 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 113
  %79 = load i32* %nal_reference_idc189, align 4, !tbaa !3
  %cmp190 = icmp sgt i32 %79, 0
  br i1 %cmp190, label %for.cond193.preheader, label %for.cond280.preheader

for.cond193.preheader:                            ; preds = %land.lhs.true180, %if.end171, %land.lhs.true188
  %sub213 = sub i32 -2, %b8ref
  %idxprom220 = sext i32 %decoder to i64
  %80 = sext i32 %shr to i64
  %81 = sext i32 %shr6 to i64
  br label %for.cond197.preheader

for.cond197.preheader:                            ; preds = %for.cond193.preheader, %for.inc276
  %indvars.iv476 = phi i64 [ %81, %for.cond193.preheader ], [ %indvars.iv.next477, %for.inc276 ]
  %ref_inx.0443 = phi i32 [ %rem, %for.cond193.preheader ], [ %ref_inx.2, %for.inc276 ]
  %82 = trunc i64 %indvars.iv476 to i32
  %mul243 = shl i32 %82, 2
  %83 = sext i32 %mul243 to i64
  br label %for.body200

for.body200:                                      ; preds = %for.inc273, %for.cond197.preheader
  %indvars.iv474 = phi i64 [ %80, %for.cond197.preheader ], [ %indvars.iv.next475, %for.inc273 ]
  %ref_inx.1440 = phi i32 [ %ref_inx.0443, %for.cond197.preheader ], [ %ref_inx.2, %for.inc273 ]
  %84 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_x201 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 31
  %85 = load i32* %block_x201, align 4, !tbaa !3
  %86 = trunc i64 %indvars.iv474 to i32
  %add202 = add nsw i32 %85, %86
  %block_y203 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 32
  %87 = load i32* %block_y203, align 4, !tbaa !3
  %add204 = add nsw i32 %87, %82
  %type205 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 6
  %88 = load i32* %type205, align 4, !tbaa !3
  %cmp206 = icmp eq i32 %88, 1
  br i1 %cmp206, label %land.lhs.true208, label %if.end218

land.lhs.true208:                                 ; preds = %for.body200
  %89 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %90 = load %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  %cmp209 = icmp eq %struct.storable_picture* %89, %90
  br i1 %cmp209, label %if.end218, label %if.then211

if.then211:                                       ; preds = %land.lhs.true208
  %number212 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 0
  %91 = load i32* %number212, align 4, !tbaa !3
  %92 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub214 = add i32 %sub213, %91
  %sub215 = sub i32 %sub214, %92
  %num_ref_frames216 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 8
  %93 = load i32* %num_ref_frames216, align 4, !tbaa !3
  %rem217 = srem i32 %sub215, %93
  br label %if.end218

if.end218:                                        ; preds = %land.lhs.true208, %for.body200, %if.then211
  %ref_inx.2 = phi i32 [ %rem217, %if.then211 ], [ %ref_inx.1440, %for.body200 ], [ %ref_inx.1440, %land.lhs.true208 ]
  %idxprom219 = sext i32 %ref_inx.2 to i64
  %94 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %decref = getelementptr inbounds %struct.Decoders* %94, i64 0, i32 2
  %95 = load i16***** %decref, align 8, !tbaa !0
  %arrayidx221 = getelementptr inbounds i16**** %95, i64 %idxprom220
  %96 = load i16**** %arrayidx221, align 8, !tbaa !0
  %arrayidx222 = getelementptr inbounds i16*** %96, i64 %idxprom219
  %97 = load i16*** %arrayidx222, align 8, !tbaa !0
  %arrayidx227 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %indvars.iv476, i64 %indvars.iv474
  %98 = load i32* %arrayidx227, align 4, !tbaa !3
  %arrayidx232 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %indvars.iv476, i64 %indvars.iv474
  %99 = load i32* %arrayidx232, align 4, !tbaa !3
  %RefBlock = getelementptr inbounds %struct.Decoders* %94, i64 0, i32 4
  %100 = load i16*** %RefBlock, align 8, !tbaa !0
  call void @Get_Reference_Block(i16** %97, i32 %add204, i32 %add202, i32 %98, i32 %99, i16** %100) #5
  %mul = shl i32 %86, 2
  %101 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %RefBlock250 = getelementptr inbounds %struct.Decoders* %101, i64 0, i32 4
  %102 = load i16*** %RefBlock250, align 8, !tbaa !0
  %mul256 = shl i32 %add202, 2
  %mul259 = shl i32 %add204, 2
  %decY263 = getelementptr inbounds %struct.Decoders* %101, i64 0, i32 1
  %103 = load i16**** %decY263, align 8, !tbaa !0
  %arrayidx264 = getelementptr inbounds i16*** %103, i64 %idxprom220
  %104 = load i16*** %arrayidx264, align 8, !tbaa !0
  %105 = sext i32 %mul256 to i64
  %106 = sext i32 %mul to i64
  %107 = sext i32 %mul259 to i64
  br label %for.cond237.preheader

for.cond237.preheader:                            ; preds = %for.inc270, %if.end218
  %indvars.iv468 = phi i64 [ 0, %if.end218 ], [ %indvars.iv.next469, %for.inc270 ]
  %108 = add nsw i64 %indvars.iv468, %83
  %arrayidx251 = getelementptr inbounds i16** %102, i64 %indvars.iv468
  %109 = load i16** %arrayidx251, align 8, !tbaa !0
  %110 = add nsw i64 %indvars.iv468, %107
  %arrayidx265 = getelementptr inbounds i16** %104, i64 %110
  %111 = load i16** %arrayidx265, align 8, !tbaa !0
  br label %for.body240

for.body240:                                      ; preds = %for.body240, %for.cond237.preheader
  %indvars.iv464 = phi i64 [ 0, %for.cond237.preheader ], [ %indvars.iv.next465, %for.body240 ]
  %112 = add nsw i64 %indvars.iv464, %106
  %arrayidx247 = getelementptr inbounds [16 x [16 x i32]]* %resY_tmp, i64 0, i64 %108, i64 %112
  %113 = load i32* %arrayidx247, align 4, !tbaa !3
  %arrayidx252 = getelementptr inbounds i16* %109, i64 %indvars.iv464
  %114 = load i16* %arrayidx252, align 2, !tbaa !4
  %conv253 = zext i16 %114 to i32
  %add254 = add nsw i32 %conv253, %113
  %conv255 = trunc i32 %add254 to i16
  %115 = add nsw i64 %indvars.iv464, %105
  %arrayidx266 = getelementptr inbounds i16* %111, i64 %115
  store i16 %conv255, i16* %arrayidx266, align 2, !tbaa !4
  %indvars.iv.next465 = add i64 %indvars.iv464, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next465 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc270, label %for.body240

for.inc270:                                       ; preds = %for.body240
  %indvars.iv.next469 = add i64 %indvars.iv468, 1
  %lftr.wideiv472 = trunc i64 %indvars.iv.next469 to i32
  %exitcond473 = icmp eq i32 %lftr.wideiv472, 4
  br i1 %exitcond473, label %for.inc273, label %for.cond237.preheader

for.inc273:                                       ; preds = %for.inc270
  %indvars.iv.next475 = add i64 %indvars.iv474, 1
  %116 = trunc i64 %indvars.iv.next475 to i32
  %cmp198 = icmp slt i32 %116, %add3
  br i1 %cmp198, label %for.body200, label %for.inc276

for.inc276:                                       ; preds = %for.inc273
  %indvars.iv.next477 = add i64 %indvars.iv476, 1
  %117 = trunc i64 %indvars.iv.next477 to i32
  %cmp194 = icmp slt i32 %117, %add7
  br i1 %cmp194, label %for.cond197.preheader, label %if.end315

for.cond284.preheader:                            ; preds = %for.cond280.preheader, %for.inc311
  %indvars.iv481 = phi i64 [ %77, %for.cond280.preheader ], [ %indvars.iv.next482, %for.inc311 ]
  %118 = add nsw i64 %78, %indvars.iv481
  br label %for.body287

for.body287:                                      ; preds = %for.cond284.preheader, %for.body287
  %indvars.iv478 = phi i64 [ %74, %for.cond284.preheader ], [ %indvars.iv.next479, %for.body287 ]
  %119 = add nsw i64 %75, %indvars.iv478
  %arrayidx295 = getelementptr inbounds i16** %69, i64 %119
  %120 = load i16** %arrayidx295, align 8, !tbaa !0
  %arrayidx296 = getelementptr inbounds i16* %120, i64 %118
  %121 = load i16* %arrayidx296, align 2, !tbaa !4
  %arrayidx306 = getelementptr inbounds i16** %72, i64 %119
  %122 = load i16** %arrayidx306, align 8, !tbaa !0
  %arrayidx307 = getelementptr inbounds i16* %122, i64 %118
  store i16 %121, i16* %arrayidx307, align 2, !tbaa !4
  %indvars.iv.next479 = add i64 %indvars.iv478, 1
  %123 = trunc i64 %indvars.iv.next479 to i32
  %cmp285 = icmp slt i32 %123, %add5
  br i1 %cmp285, label %for.body287, label %for.inc311

for.inc311:                                       ; preds = %for.body287
  %indvars.iv.next482 = add i64 %indvars.iv481, 1
  %124 = trunc i64 %indvars.iv.next482 to i32
  %cmp281 = icmp slt i32 %124, %add
  br i1 %cmp281, label %for.cond284.preheader, label %if.end315

if.end315:                                        ; preds = %for.inc311, %for.inc276, %for.inc26
  call void @llvm.lifetime.end(i64 1024, i8* %5) #1
  call void @llvm.lifetime.end(i64 128, i8* %4) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @Get_Reference_Block(i16** nocapture %imY, i32 %block_y, i32 %block_x, i32 %mvhor, i32 %mvver, i16** nocapture %out) #0 {
entry:
  %mul1 = shl i32 %block_y, 4
  %add = add nsw i32 %mul1, %mvver
  %mul3 = shl i32 %block_x, 4
  %add4 = add nsw i32 %mul3, %mvhor
  %0 = zext i32 %add4 to i64
  %1 = zext i32 %add to i64
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc14, %entry
  %indvars.iv27 = phi i64 [ 0, %entry ], [ %indvars.iv.next28, %for.inc14 ]
  %2 = shl i64 %indvars.iv27, 2
  %3 = add nsw i64 %1, %2
  %arrayidx = getelementptr inbounds i16** %out, i64 %indvars.iv27
  %.pre = load i16** %arrayidx, align 8, !tbaa !0
  br label %for.body7

for.body7:                                        ; preds = %for.body7, %for.cond5.preheader
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.body7 ]
  %4 = shl i64 %indvars.iv, 2
  %5 = add nsw i64 %0, %4
  %6 = trunc i64 %5 to i32
  %7 = trunc i64 %3 to i32
  %call = tail call zeroext i8 @Get_Reference_Pixel(i16** %imY, i32 %7, i32 %6) #5
  %conv = zext i8 %call to i16
  %arrayidx13 = getelementptr inbounds i16* %.pre, i64 %indvars.iv
  store i16 %conv, i16* %arrayidx13, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc14, label %for.body7

for.inc14:                                        ; preds = %for.body7
  %indvars.iv.next28 = add i64 %indvars.iv27, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv.next28 to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, 4
  br i1 %exitcond32, label %for.end16, label %for.cond5.preheader

for.end16:                                        ; preds = %for.inc14
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readnone uwtable
define void @decode_one_mb(i32 %decoder, %struct.macroblock* nocapture %currMB) #2 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define zeroext i8 @Get_Reference_Pixel(i16** nocapture %imY, i32 %y_pos, i32 %x_pos) #3 {
entry:
  %tmp_res = alloca [6 x i32], align 16
  %and = and i32 %x_pos, 3
  %and1 = and i32 %y_pos, 3
  %sub = sub nsw i32 %x_pos, %and
  %div = sdiv i32 %sub, 4
  %sub2 = sub nsw i32 %y_pos, %and1
  %div3 = sdiv i32 %sub2, 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %1 = load i32* %width, align 4, !tbaa !3
  %sub4 = add nsw i32 %1, -1
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %2 = load i32* %height, align 4, !tbaa !3
  %sub5 = add nsw i32 %2, -1
  %3 = or i32 %x_pos, %y_pos
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp7 = icmp slt i32 %sub4, %div
  %cond = select i1 %cmp7, i32 %sub4, i32 %div
  %cmp8 = icmp slt i32 %cond, 0
  %phitmp1221 = sext i32 %cond to i64
  %.phitmp1221 = select i1 %cmp8, i64 0, i64 %phitmp1221
  %cmp18 = icmp slt i32 %sub5, %div3
  %cond22 = select i1 %cmp18, i32 %sub5, i32 %div3
  %cmp23 = icmp slt i32 %cond22, 0
  %phitmp1222 = sext i32 %cond22 to i64
  %cond32 = select i1 %cmp23, i64 0, i64 %phitmp1222
  %arrayidx = getelementptr inbounds i16** %imY, i64 %cond32
  %6 = load i16** %arrayidx, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i16* %6, i64 %.phitmp1221
  %7 = load i16* %arrayidx34, align 2, !tbaa !4
  %conv = zext i16 %7 to i32
  br label %if.end926

if.else:                                          ; preds = %entry
  %cmp6 = icmp eq i32 %and1, 0
  br i1 %cmp6, label %if.then37, label %if.else179

if.then37:                                        ; preds = %if.else
  %cmp38 = icmp slt i32 %sub5, %div3
  %cond43 = select i1 %cmp38, i32 %sub5, i32 %div3
  %cmp44 = icmp slt i32 %cond43, 0
  %phitmp1219 = sext i32 %cond43 to i64
  %.phitmp1219 = select i1 %cmp44, i64 0, i64 %phitmp1219
  %arrayidx81 = getelementptr inbounds i16** %imY, i64 %.phitmp1219
  %8 = load i16** %arrayidx81, align 8, !tbaa !0
  %9 = zext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %if.then37
  %indvars.iv = phi i64 [ -2, %if.then37 ], [ %indvars.iv.next, %for.body ]
  %result.01240 = phi i32 [ 0, %if.then37 ], [ %add87, %for.body ]
  %10 = add nsw i64 %indvars.iv, %9
  %11 = trunc i64 %10 to i32
  %cmp58 = icmp sle i32 %1, %11
  %sub4.add = select i1 %cmp58, i32 %sub4, i32 %11
  %cmp65 = icmp slt i32 %sub4.add, 0
  %12 = sext i32 %sub4.add to i64
  %idxprom79 = select i1 %cmp65, i64 0, i64 %12
  %arrayidx82 = getelementptr inbounds i16* %8, i64 %idxprom79
  %13 = load i16* %arrayidx82, align 2, !tbaa !4
  %conv83 = zext i16 %13 to i32
  %14 = add nsw i64 %indvars.iv, 2
  %arrayidx86 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %14
  %15 = load i32* %arrayidx86, align 4, !tbaa !3
  %mul = mul nsw i32 %conv83, %15
  %add87 = add nsw i32 %mul, %result.01240
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %16 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %add88 = add nsw i32 %add87, 16
  %div89 = sdiv i32 %add88, 32
  %cmp90 = icmp slt i32 %16, %div89
  %.div89 = select i1 %cmp90, i32 %16, i32 %div89
  %cmp99 = icmp slt i32 %.div89, 0
  %..div89 = select i1 %cmp99, i32 0, i32 %.div89
  switch i32 %and, label %if.end926 [
    i32 1, label %if.then119
    i32 3, label %if.then148
  ]

if.then119:                                       ; preds = %for.end
  %cmp120 = icmp slt i32 %sub4, %div
  %cond125 = select i1 %cmp120, i32 %sub4, i32 %div
  %cmp126 = icmp slt i32 %cond125, 0
  %phitmp1220 = sext i32 %cond125 to i64
  %.phitmp1220 = select i1 %cmp126, i64 0, i64 %phitmp1220
  %arrayidx141 = getelementptr inbounds i16* %8, i64 %.phitmp1220
  %17 = load i16* %arrayidx141, align 2, !tbaa !4
  %conv142 = zext i16 %17 to i32
  %add143 = add nsw i32 %conv142, %..div89
  %div144 = sdiv i32 %add143, 2
  br label %if.end926

if.then148:                                       ; preds = %for.end
  %add149 = add nsw i32 %div, 1
  %cmp150 = icmp sle i32 %1, %add149
  %sub4.add149 = select i1 %cmp150, i32 %sub4, i32 %add149
  %cmp157 = icmp slt i32 %sub4.add149, 0
  %18 = sext i32 %sub4.add149 to i64
  %idxprom171 = select i1 %cmp157, i64 0, i64 %18
  %arrayidx174 = getelementptr inbounds i16* %8, i64 %idxprom171
  %19 = load i16* %arrayidx174, align 2, !tbaa !4
  %conv175 = zext i16 %19 to i32
  %add176 = add nsw i32 %conv175, %..div89
  %div177 = sdiv i32 %add176, 2
  br label %if.end926

if.else179:                                       ; preds = %if.else
  switch i32 %and, label %if.else534 [
    i32 0, label %if.then182
    i32 2, label %for.cond337.preheader
  ]

for.cond337.preheader:                            ; preds = %if.else179
  %20 = zext i32 %div to i64
  %21 = zext i32 %div3 to i64
  br label %for.body340

if.then182:                                       ; preds = %if.else179
  %cmp183 = icmp slt i32 %sub4, %div
  %cond188 = select i1 %cmp183, i32 %sub4, i32 %div
  %cmp189 = icmp slt i32 %cond188, 0
  %phitmp1217 = sext i32 %cond188 to i64
  %.phitmp1217 = select i1 %cmp189, i64 0, i64 %phitmp1217
  %22 = zext i32 %div3 to i64
  br label %for.body204

for.body204:                                      ; preds = %for.body204, %if.then182
  %indvars.iv1288 = phi i64 [ -2, %if.then182 ], [ %indvars.iv.next1289, %for.body204 ]
  %result.11251 = phi i32 [ 0, %if.then182 ], [ %add236, %for.body204 ]
  %23 = add nsw i64 %indvars.iv1288, %22
  %24 = trunc i64 %23 to i32
  %cmp206 = icmp sle i32 %2, %24
  %sub5.add205 = select i1 %cmp206, i32 %sub5, i32 %24
  %cmp213 = icmp slt i32 %sub5.add205, 0
  %25 = sext i32 %sub5.add205 to i64
  %idxprom228 = select i1 %cmp213, i64 0, i64 %25
  %arrayidx229 = getelementptr inbounds i16** %imY, i64 %idxprom228
  %26 = load i16** %arrayidx229, align 8, !tbaa !0
  %arrayidx230 = getelementptr inbounds i16* %26, i64 %.phitmp1217
  %27 = load i16* %arrayidx230, align 2, !tbaa !4
  %conv231 = zext i16 %27 to i32
  %28 = add nsw i64 %indvars.iv1288, 2
  %arrayidx234 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %28
  %29 = load i32* %arrayidx234, align 4, !tbaa !3
  %mul235 = mul nsw i32 %conv231, %29
  %add236 = add nsw i32 %mul235, %result.11251
  %indvars.iv.next1289 = add i64 %indvars.iv1288, 1
  %lftr.wideiv1292 = trunc i64 %indvars.iv.next1289 to i32
  %exitcond1293 = icmp eq i32 %lftr.wideiv1292, 4
  br i1 %exitcond1293, label %for.end239, label %for.body204

for.end239:                                       ; preds = %for.body204
  %max_imgpel_value240 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %30 = load i32* %max_imgpel_value240, align 4, !tbaa !3
  %add241 = add nsw i32 %add236, 16
  %div242 = sdiv i32 %add241, 32
  %cmp243 = icmp slt i32 %30, %div242
  %.div242 = select i1 %cmp243, i32 %30, i32 %div242
  %cmp252 = icmp slt i32 %.div242, 0
  %..div242 = select i1 %cmp252, i32 0, i32 %.div242
  switch i32 %and1, label %if.end926 [
    i32 1, label %if.then272
    i32 3, label %if.then301
  ]

if.then272:                                       ; preds = %for.end239
  %cmp274 = icmp slt i32 %sub5, %div3
  %cond279 = select i1 %cmp274, i32 %sub5, i32 %div3
  %cmp280 = icmp slt i32 %cond279, 0
  %phitmp1218 = sext i32 %cond279 to i64
  %.phitmp1218 = select i1 %cmp280, i64 0, i64 %phitmp1218
  %arrayidx293 = getelementptr inbounds i16** %imY, i64 %.phitmp1218
  %31 = load i16** %arrayidx293, align 8, !tbaa !0
  %arrayidx294 = getelementptr inbounds i16* %31, i64 %.phitmp1217
  %32 = load i16* %arrayidx294, align 2, !tbaa !4
  %conv295 = zext i16 %32 to i32
  %add296 = add nsw i32 %conv295, %..div242
  %div297 = sdiv i32 %add296, 2
  br label %if.end926

if.then301:                                       ; preds = %for.end239
  %add303 = add nsw i32 %div3, 1
  %cmp304 = icmp sle i32 %2, %add303
  %sub5.add303 = select i1 %cmp304, i32 %sub5, i32 %add303
  %cmp311 = icmp slt i32 %sub5.add303, 0
  %33 = sext i32 %sub5.add303 to i64
  %idxprom325 = select i1 %cmp311, i64 0, i64 %33
  %arrayidx326 = getelementptr inbounds i16** %imY, i64 %idxprom325
  %34 = load i16** %arrayidx326, align 8, !tbaa !0
  %arrayidx327 = getelementptr inbounds i16* %34, i64 %.phitmp1217
  %35 = load i16* %arrayidx327, align 2, !tbaa !4
  %conv328 = zext i16 %35 to i32
  %add329 = add nsw i32 %conv328, %..div242
  %div330 = sdiv i32 %add329, 2
  br label %if.end926

for.body340:                                      ; preds = %for.end401, %for.cond337.preheader
  %indvars.iv1305 = phi i64 [ -2, %for.cond337.preheader ], [ %indvars.iv.next1306, %for.end401 ]
  %36 = add nsw i64 %indvars.iv1305, %21
  %37 = trunc i64 %36 to i32
  %cmp342 = icmp sle i32 %2, %37
  %sub5.add341 = select i1 %cmp342, i32 %sub5, i32 %37
  %cmp349 = icmp slt i32 %sub5.add341, 0
  %38 = sext i32 %sub5.add341 to i64
  %idxprom390 = select i1 %cmp349, i64 0, i64 %38
  %arrayidx391 = getelementptr inbounds i16** %imY, i64 %idxprom390
  %39 = load i16** %arrayidx391, align 8, !tbaa !0
  br label %for.body366

for.body366:                                      ; preds = %for.body366, %for.body340
  %indvars.iv1299 = phi i64 [ -2, %for.body340 ], [ %indvars.iv.next1300, %for.body366 ]
  %result.21255 = phi i32 [ 0, %for.body340 ], [ %add398, %for.body366 ]
  %40 = add nsw i64 %indvars.iv1299, %20
  %41 = trunc i64 %40 to i32
  %cmp368 = icmp sle i32 %1, %41
  %sub4.add367 = select i1 %cmp368, i32 %sub4, i32 %41
  %cmp375 = icmp slt i32 %sub4.add367, 0
  %42 = sext i32 %sub4.add367 to i64
  %idxprom389 = select i1 %cmp375, i64 0, i64 %42
  %arrayidx392 = getelementptr inbounds i16* %39, i64 %idxprom389
  %43 = load i16* %arrayidx392, align 2, !tbaa !4
  %conv393 = zext i16 %43 to i32
  %44 = add nsw i64 %indvars.iv1299, 2
  %arrayidx396 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %44
  %45 = load i32* %arrayidx396, align 4, !tbaa !3
  %mul397 = mul nsw i32 %conv393, %45
  %add398 = add nsw i32 %mul397, %result.21255
  %indvars.iv.next1300 = add i64 %indvars.iv1299, 1
  %lftr.wideiv1303 = trunc i64 %indvars.iv.next1300 to i32
  %exitcond1304 = icmp eq i32 %lftr.wideiv1303, 4
  br i1 %exitcond1304, label %for.end401, label %for.body366

for.end401:                                       ; preds = %for.body366
  %46 = add nsw i64 %indvars.iv1305, 2
  %arrayidx404 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 %46
  store i32 %add398, i32* %arrayidx404, align 4, !tbaa !3
  %indvars.iv.next1306 = add i64 %indvars.iv1305, 1
  %lftr.wideiv1309 = trunc i64 %indvars.iv.next1306 to i32
  %exitcond1310 = icmp eq i32 %lftr.wideiv1309, 4
  br i1 %exitcond1310, label %for.body411, label %for.body340

for.body411:                                      ; preds = %for.end401, %for.body411
  %indvars.iv1294 = phi i64 [ %indvars.iv.next1295, %for.body411 ], [ -2, %for.end401 ]
  %result.31253 = phi i32 [ %add419, %for.body411 ], [ 0, %for.end401 ]
  %47 = add nsw i64 %indvars.iv1294, 2
  %arrayidx414 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 %47
  %48 = load i32* %arrayidx414, align 4, !tbaa !3
  %arrayidx417 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %47
  %49 = load i32* %arrayidx417, align 4, !tbaa !3
  %mul418 = mul nsw i32 %49, %48
  %add419 = add nsw i32 %mul418, %result.31253
  %indvars.iv.next1295 = add i64 %indvars.iv1294, 1
  %lftr.wideiv1297 = trunc i64 %indvars.iv.next1295 to i32
  %exitcond1298 = icmp eq i32 %lftr.wideiv1297, 4
  br i1 %exitcond1298, label %for.end422, label %for.body411

for.end422:                                       ; preds = %for.body411
  %max_imgpel_value423 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %50 = load i32* %max_imgpel_value423, align 4, !tbaa !3
  %add424 = add nsw i32 %add419, 512
  %div425 = sdiv i32 %add424, 1024
  %cmp426 = icmp slt i32 %50, %div425
  %.div425 = select i1 %cmp426, i32 %50, i32 %div425
  %cmp435 = icmp slt i32 %.div425, 0
  %..div425 = select i1 %cmp435, i32 0, i32 %.div425
  switch i32 %and1, label %if.end926 [
    i32 1, label %if.then455
    i32 3, label %if.then495
  ]

if.then455:                                       ; preds = %for.end422
  %arrayidx457 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 2
  %51 = load i32* %arrayidx457, align 8, !tbaa !3
  %add458 = add nsw i32 %51, 16
  %div459 = sdiv i32 %add458, 32
  %cmp460 = icmp slt i32 %50, %div459
  %.div459 = select i1 %cmp460, i32 %50, i32 %div459
  %cmp470 = icmp slt i32 %.div459, 0
  %..div459 = select i1 %cmp470, i32 0, i32 %.div459
  %add490 = add nsw i32 %..div459, %..div425
  %div491 = sdiv i32 %add490, 2
  br label %if.end926

if.then495:                                       ; preds = %for.end422
  %arrayidx497 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 3
  %52 = load i32* %arrayidx497, align 4, !tbaa !3
  %add498 = add nsw i32 %52, 16
  %div499 = sdiv i32 %add498, 32
  %cmp500 = icmp slt i32 %50, %div499
  %.div499 = select i1 %cmp500, i32 %50, i32 %div499
  %cmp510 = icmp slt i32 %.div499, 0
  %..div499 = select i1 %cmp510, i32 0, i32 %.div499
  %add530 = add nsw i32 %..div499, %..div425
  %div531 = sdiv i32 %add530, 2
  br label %if.end926

if.else534:                                       ; preds = %if.else179
  %cmp535 = icmp eq i32 %and1, 2
  br i1 %cmp535, label %for.cond538.preheader, label %if.else731

for.cond538.preheader:                            ; preds = %if.else534
  %53 = zext i32 %div3 to i64
  %54 = zext i32 %div to i64
  br label %for.body541

for.body541:                                      ; preds = %for.end602, %for.cond538.preheader
  %indvars.iv1270 = phi i64 [ -2, %for.cond538.preheader ], [ %indvars.iv.next1271, %for.end602 ]
  %55 = add nsw i64 %indvars.iv1270, %54
  %56 = trunc i64 %55 to i32
  %cmp543 = icmp sle i32 %1, %56
  %sub4.add542 = select i1 %cmp543, i32 %sub4, i32 %56
  %cmp550 = icmp slt i32 %sub4.add542, 0
  %57 = sext i32 %sub4.add542 to i64
  %idxprom590 = select i1 %cmp550, i64 0, i64 %57
  br label %for.body567

for.body567:                                      ; preds = %for.body567, %for.body541
  %indvars.iv1264 = phi i64 [ -2, %for.body541 ], [ %indvars.iv.next1265, %for.body567 ]
  %result.41244 = phi i32 [ 0, %for.body541 ], [ %add599, %for.body567 ]
  %58 = add nsw i64 %indvars.iv1264, %53
  %59 = trunc i64 %58 to i32
  %cmp569 = icmp sle i32 %2, %59
  %sub5.add568 = select i1 %cmp569, i32 %sub5, i32 %59
  %cmp576 = icmp slt i32 %sub5.add568, 0
  %60 = sext i32 %sub5.add568 to i64
  %idxprom591 = select i1 %cmp576, i64 0, i64 %60
  %arrayidx592 = getelementptr inbounds i16** %imY, i64 %idxprom591
  %61 = load i16** %arrayidx592, align 8, !tbaa !0
  %arrayidx593 = getelementptr inbounds i16* %61, i64 %idxprom590
  %62 = load i16* %arrayidx593, align 2, !tbaa !4
  %conv594 = zext i16 %62 to i32
  %63 = add nsw i64 %indvars.iv1264, 2
  %arrayidx597 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %63
  %64 = load i32* %arrayidx597, align 4, !tbaa !3
  %mul598 = mul nsw i32 %conv594, %64
  %add599 = add nsw i32 %mul598, %result.41244
  %indvars.iv.next1265 = add i64 %indvars.iv1264, 1
  %lftr.wideiv1268 = trunc i64 %indvars.iv.next1265 to i32
  %exitcond1269 = icmp eq i32 %lftr.wideiv1268, 4
  br i1 %exitcond1269, label %for.end602, label %for.body567

for.end602:                                       ; preds = %for.body567
  %65 = add nsw i64 %indvars.iv1270, 2
  %arrayidx605 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 %65
  store i32 %add599, i32* %arrayidx605, align 4, !tbaa !3
  %indvars.iv.next1271 = add i64 %indvars.iv1270, 1
  %lftr.wideiv1274 = trunc i64 %indvars.iv.next1271 to i32
  %exitcond1275 = icmp eq i32 %lftr.wideiv1274, 4
  br i1 %exitcond1275, label %for.body612, label %for.body541

for.body612:                                      ; preds = %for.end602, %for.body612
  %indvars.iv1259 = phi i64 [ %indvars.iv.next1260, %for.body612 ], [ -2, %for.end602 ]
  %result.51242 = phi i32 [ %add620, %for.body612 ], [ 0, %for.end602 ]
  %66 = add nsw i64 %indvars.iv1259, 2
  %arrayidx615 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 %66
  %67 = load i32* %arrayidx615, align 4, !tbaa !3
  %arrayidx618 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %66
  %68 = load i32* %arrayidx618, align 4, !tbaa !3
  %mul619 = mul nsw i32 %68, %67
  %add620 = add nsw i32 %mul619, %result.51242
  %indvars.iv.next1260 = add i64 %indvars.iv1259, 1
  %lftr.wideiv1262 = trunc i64 %indvars.iv.next1260 to i32
  %exitcond1263 = icmp eq i32 %lftr.wideiv1262, 4
  br i1 %exitcond1263, label %for.end623, label %for.body612

for.end623:                                       ; preds = %for.body612
  %max_imgpel_value624 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %69 = load i32* %max_imgpel_value624, align 4, !tbaa !3
  %add625 = add nsw i32 %add620, 512
  %div626 = sdiv i32 %add625, 1024
  %cmp627 = icmp slt i32 %69, %div626
  %.div626 = select i1 %cmp627, i32 %69, i32 %div626
  %cmp636 = icmp slt i32 %.div626, 0
  %..div626 = select i1 %cmp636, i32 0, i32 %.div626
  %cmp654 = icmp eq i32 %and, 1
  br i1 %cmp654, label %if.then656, label %if.else693

if.then656:                                       ; preds = %for.end623
  %arrayidx658 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 2
  %70 = load i32* %arrayidx658, align 8, !tbaa !3
  %add659 = add nsw i32 %70, 16
  %div660 = sdiv i32 %add659, 32
  %cmp661 = icmp slt i32 %69, %div660
  %.div660 = select i1 %cmp661, i32 %69, i32 %div660
  %cmp671 = icmp slt i32 %.div660, 0
  %..div660 = select i1 %cmp671, i32 0, i32 %.div660
  %add691 = add nsw i32 %..div660, %..div626
  %div692 = sdiv i32 %add691, 2
  br label %if.end926

if.else693:                                       ; preds = %for.end623
  %arrayidx695 = getelementptr inbounds [6 x i32]* %tmp_res, i64 0, i64 3
  %71 = load i32* %arrayidx695, align 4, !tbaa !3
  %add696 = add nsw i32 %71, 16
  %div697 = sdiv i32 %add696, 32
  %cmp698 = icmp slt i32 %69, %div697
  %.div697 = select i1 %cmp698, i32 %69, i32 %div697
  %cmp708 = icmp slt i32 %.div697, 0
  %..div697 = select i1 %cmp708, i32 0, i32 %.div697
  %add728 = add nsw i32 %..div697, %..div626
  %div729 = sdiv i32 %add728, 2
  br label %if.end926

if.else731:                                       ; preds = %if.else534
  %not.cmp732 = icmp ne i32 %and1, 1
  %add736 = zext i1 %not.cmp732 to i32
  %cond738 = add nsw i32 %div3, %add736
  %cmp739 = icmp slt i32 %sub5, %cond738
  %cond744 = select i1 %cmp739, i32 %sub5, i32 %cond738
  %cmp745 = icmp slt i32 %cond744, 0
  %phitmp1216 = sext i32 %cond744 to i64
  %.phitmp1216 = select i1 %cmp745, i64 0, i64 %phitmp1216
  %arrayidx785 = getelementptr inbounds i16** %imY, i64 %.phitmp1216
  %72 = load i16** %arrayidx785, align 8, !tbaa !0
  %73 = zext i32 %div to i64
  br label %for.body760

for.body760:                                      ; preds = %for.body760, %if.else731
  %indvars.iv1282 = phi i64 [ -2, %if.else731 ], [ %indvars.iv.next1283, %for.body760 ]
  %result.61249 = phi i32 [ 0, %if.else731 ], [ %add792, %for.body760 ]
  %74 = add nsw i64 %indvars.iv1282, %73
  %75 = trunc i64 %74 to i32
  %cmp762 = icmp sle i32 %1, %75
  %sub4.add761 = select i1 %cmp762, i32 %sub4, i32 %75
  %cmp769 = icmp slt i32 %sub4.add761, 0
  %76 = sext i32 %sub4.add761 to i64
  %idxprom783 = select i1 %cmp769, i64 0, i64 %76
  %arrayidx786 = getelementptr inbounds i16* %72, i64 %idxprom783
  %77 = load i16* %arrayidx786, align 2, !tbaa !4
  %conv787 = zext i16 %77 to i32
  %78 = add nsw i64 %indvars.iv1282, 2
  %arrayidx790 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %78
  %79 = load i32* %arrayidx790, align 4, !tbaa !3
  %mul791 = mul nsw i32 %conv787, %79
  %add792 = add nsw i32 %mul791, %result.61249
  %indvars.iv.next1283 = add i64 %indvars.iv1282, 1
  %lftr.wideiv1286 = trunc i64 %indvars.iv.next1283 to i32
  %exitcond1287 = icmp eq i32 %lftr.wideiv1286, 4
  br i1 %exitcond1287, label %for.end795, label %for.body760

for.end795:                                       ; preds = %for.body760
  %max_imgpel_value796 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %80 = load i32* %max_imgpel_value796, align 4, !tbaa !3
  %add797 = add nsw i32 %add792, 16
  %div798 = sdiv i32 %add797, 32
  %cmp799 = icmp slt i32 %80, %div798
  %.div798 = select i1 %cmp799, i32 %80, i32 %div798
  %cmp808 = icmp slt i32 %.div798, 0
  %not.cmp826 = icmp ne i32 %and, 1
  %add830 = zext i1 %not.cmp826 to i32
  %cond832 = add nsw i32 %div, %add830
  %cmp833 = icmp slt i32 %sub4, %cond832
  %cond838 = select i1 %cmp833, i32 %sub4, i32 %cond832
  %cmp839 = icmp slt i32 %cond838, 0
  %phitmp = sext i32 %cond838 to i64
  %.phitmp = select i1 %cmp839, i64 0, i64 %phitmp
  %81 = zext i32 %div3 to i64
  br label %for.body854

for.body854:                                      ; preds = %for.body854, %for.end795
  %indvars.iv1276 = phi i64 [ -2, %for.end795 ], [ %indvars.iv.next1277, %for.body854 ]
  %result.71247 = phi i32 [ 0, %for.end795 ], [ %add886, %for.body854 ]
  %82 = add nsw i64 %indvars.iv1276, %81
  %83 = trunc i64 %82 to i32
  %cmp856 = icmp sle i32 %2, %83
  %sub5.add855 = select i1 %cmp856, i32 %sub5, i32 %83
  %cmp863 = icmp slt i32 %sub5.add855, 0
  %84 = sext i32 %sub5.add855 to i64
  %idxprom878 = select i1 %cmp863, i64 0, i64 %84
  %arrayidx879 = getelementptr inbounds i16** %imY, i64 %idxprom878
  %85 = load i16** %arrayidx879, align 8, !tbaa !0
  %arrayidx880 = getelementptr inbounds i16* %85, i64 %.phitmp
  %86 = load i16* %arrayidx880, align 2, !tbaa !4
  %conv881 = zext i16 %86 to i32
  %87 = add nsw i64 %indvars.iv1276, 2
  %arrayidx884 = getelementptr inbounds [6 x i32]* @Get_Reference_Pixel.COEF, i64 0, i64 %87
  %88 = load i32* %arrayidx884, align 4, !tbaa !3
  %mul885 = mul nsw i32 %conv881, %88
  %add886 = add nsw i32 %mul885, %result.71247
  %indvars.iv.next1277 = add i64 %indvars.iv1276, 1
  %lftr.wideiv1280 = trunc i64 %indvars.iv.next1277 to i32
  %exitcond1281 = icmp eq i32 %lftr.wideiv1280, 4
  br i1 %exitcond1281, label %for.end889, label %for.body854

for.end889:                                       ; preds = %for.body854
  %..div798 = select i1 %cmp808, i32 0, i32 %.div798
  %add891 = add nsw i32 %add886, 16
  %div892 = sdiv i32 %add891, 32
  %cmp893 = icmp slt i32 %80, %div892
  %.div892 = select i1 %cmp893, i32 %80, i32 %div892
  %cmp902 = icmp slt i32 %.div892, 0
  %..div892 = select i1 %cmp902, i32 0, i32 %.div892
  %add920 = add nsw i32 %..div892, %..div798
  %div921 = sdiv i32 %add920, 2
  br label %if.end926

if.end926:                                        ; preds = %for.end422, %for.end239, %for.end, %if.then148, %if.then119, %if.then495, %if.then455, %if.then656, %if.else693, %for.end889, %if.then272, %if.then301, %if.then
  %result.8 = phi i32 [ %conv, %if.then ], [ %div144, %if.then119 ], [ %div177, %if.then148 ], [ %div297, %if.then272 ], [ %div330, %if.then301 ], [ %div491, %if.then455 ], [ %div531, %if.then495 ], [ %div692, %if.then656 ], [ %div729, %if.else693 ], [ %div921, %for.end889 ], [ %..div89, %for.end ], [ %..div242, %for.end239 ], [ %..div425, %for.end422 ]
  %conv927 = trunc i32 %result.8 to i8
  ret i8 %conv927
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateDecoders() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %NoOfDecoders15 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 97
  %1 = load i32* %NoOfDecoders15, align 4, !tbaa !3
  %cmp16 = icmp sgt i32 %1, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %2 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %status_map = getelementptr inbounds %struct.Decoders* %2, i64 0, i32 5
  %3 = load i8*** %status_map, align 8, !tbaa !0
  tail call void @Build_Status_Map(i8** %3) #5
  %4 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %decY_best = getelementptr inbounds %struct.Decoders* %4, i64 0, i32 3
  %5 = load i16**** %decY_best, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16*** %5, i64 %indvars.iv
  %6 = load i16*** %arrayidx, align 8, !tbaa !0
  %status_map1 = getelementptr inbounds %struct.Decoders* %4, i64 0, i32 5
  %7 = load i8*** %status_map1, align 8, !tbaa !0
  %decref = getelementptr inbounds %struct.Decoders* %4, i64 0, i32 2
  %8 = load i16***** %decref, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds i16**** %8, i64 %indvars.iv
  %9 = load i16**** %arrayidx3, align 8, !tbaa !0
  tail call void @Error_Concealment(i16** %6, i8** %7, i16*** %9) #5
  %10 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %decY_best5 = getelementptr inbounds %struct.Decoders* %10, i64 0, i32 3
  %11 = load i16**** %decY_best5, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i16*** %11, i64 %indvars.iv
  %12 = load i16*** %arrayidx6, align 8, !tbaa !0
  %decref8 = getelementptr inbounds %struct.Decoders* %10, i64 0, i32 2
  %13 = load i16***** %decref8, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i16**** %13, i64 %indvars.iv
  %14 = load i16**** %arrayidx9, align 8, !tbaa !0
  tail call void @DecOneForthPix(i16** %12, i16*** %14) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters* %15, i64 0, i32 97
  %16 = load i32* %NoOfDecoders, align 4, !tbaa !3
  %17 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %17, %16
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Build_Status_Map(i8** nocapture %s_map) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %1 = load i32* %height, align 4, !tbaa !3
  %div = sdiv i32 %1, 16
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %2 = load i32* %width, align 4, !tbaa !3
  %div1 = sdiv i32 %2, 16
  %cmp78 = icmp sgt i32 %1, 15
  br i1 %cmp78, label %for.cond2.preheader.lr.ph, label %for.end55

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %cmp371 = icmp sgt i32 %2, 15
  %3 = icmp sgt i32 %div1, 1
  %smax = select i1 %3, i32 %div1, i32 1
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.inc53
  %indvars.iv85 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next86, %for.inc53 ]
  %packet_lost.082 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %packet_lost.1.lcssa, %for.inc53 ]
  %mb.080 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %mb.1.lcssa, %for.inc53 ]
  %slice.079 = phi i32 [ -1, %for.cond2.preheader.lr.ph ], [ %slice.1.lcssa, %for.inc53 ]
  br i1 %cmp371, label %for.body4.lr.ph, label %for.inc53

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %arrayidx35 = getelementptr inbounds i8** %s_map, i64 %indvars.iv85
  %4 = sext i32 %mb.080 to i64
  br label %for.body4

for.body4:                                        ; preds = %if.end50.for.body4_crit_edge, %for.body4.lr.ph
  %indvars.iv83 = phi i64 [ %4, %for.body4.lr.ph ], [ %indvars.iv.next84, %if.end50.for.body4_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next, %if.end50.for.body4_crit_edge ]
  %packet_lost.175 = phi i32 [ %packet_lost.082, %for.body4.lr.ph ], [ %packet_lost.5, %if.end50.for.body4_crit_edge ]
  %slice.172 = phi i32 [ %slice.079, %for.body4.lr.ph ], [ %slice.2, %if.end50.for.body4_crit_edge ]
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %slice_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 22
  %6 = load i32* %slice_mode, align 4, !tbaa !3
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body4
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 51
  %8 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %slice_nr = getelementptr inbounds %struct.macroblock* %8, i64 %indvars.iv83, i32 1
  %9 = load i32* %slice_nr, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %9, %slice.172
  br i1 %cmp5, label %if.end30, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body4
  %call = tail call double @spec_rand() #6
  %mul = fmul double %call, 0x41DFFFFFFFC00000
  %div6 = fdiv double %mul, 0x41DFFFFFFFC00000
  %mul7 = fmul double %div6, 1.000000e+02
  %10 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %LossRateC = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 96
  %11 = load i32* %LossRateC, align 4, !tbaa !3
  %conv = sitofp i32 %11 to double
  %cmp8 = fcmp olt double %mul7, %conv
  %packet_lost.2 = select i1 %cmp8, i32 3, i32 0
  %call11 = tail call double @spec_rand() #6
  %mul12 = fmul double %call11, 0x41DFFFFFFFC00000
  %div13 = fdiv double %mul12, 0x41DFFFFFFFC00000
  %mul14 = fmul double %div13, 1.000000e+02
  %12 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %LossRateB = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 95
  %13 = load i32* %LossRateB, align 4, !tbaa !3
  %conv15 = sitofp i32 %13 to double
  %cmp16 = fcmp olt double %mul14, %conv15
  %add19 = add nsw i32 %packet_lost.2, 2
  %packet_lost.3 = select i1 %cmp16, i32 %add19, i32 %packet_lost.2
  %call21 = tail call double @spec_rand() #6
  %mul22 = fmul double %call21, 0x41DFFFFFFFC00000
  %div23 = fdiv double %mul22, 0x41DFFFFFFFC00000
  %mul24 = fmul double %div23, 1.000000e+02
  %14 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %LossRateA = getelementptr inbounds %struct.InputParameters* %14, i64 0, i32 94
  %15 = load i32* %LossRateA, align 4, !tbaa !3
  %conv25 = sitofp i32 %15 to double
  %cmp26 = fcmp olt double %mul24, %conv25
  %packet_lost.4 = select i1 %cmp26, i32 1, i32 %packet_lost.3
  %inc = add nsw i32 %slice.172, 1
  br label %if.end30

if.end30:                                         ; preds = %lor.lhs.false, %if.then
  %slice.2 = phi i32 [ %inc, %if.then ], [ %slice.172, %lor.lhs.false ]
  %packet_lost.5 = phi i32 [ %packet_lost.4, %if.then ], [ %packet_lost.175, %lor.lhs.false ]
  %tobool31 = icmp eq i32 %packet_lost.5, 0
  br i1 %tobool31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end30
  %16 = load i8** %arrayidx35, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i8* %16, i64 %indvars.iv
  store i8 0, i8* %arrayidx36, align 1, !tbaa !1
  br label %if.end50

if.else:                                          ; preds = %if.end30
  %conv37 = trunc i32 %packet_lost.5 to i8
  %17 = load i8** %arrayidx35, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i8* %17, i64 %indvars.iv
  store i8 %conv37, i8* %arrayidx41, align 1, !tbaa !1
  %18 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %18, i64 0, i32 61
  %19 = load i32* %partition_mode, align 4, !tbaa !3
  %cmp42 = icmp eq i32 %19, 0
  br i1 %cmp42, label %if.then44, label %if.end50

if.then44:                                        ; preds = %if.else
  %20 = load i8** %arrayidx35, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i8* %20, i64 %indvars.iv
  store i8 1, i8* %arrayidx48, align 1, !tbaa !1
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then44, %if.then32
  %indvars.iv.next = add i64 %indvars.iv, 1
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %21, %div1
  br i1 %cmp3, label %if.end50.for.body4_crit_edge, label %for.cond2.for.inc53_crit_edge

if.end50.for.body4_crit_edge:                     ; preds = %if.end50
  %indvars.iv.next84 = add i64 %indvars.iv83, 1
  br label %for.body4

for.cond2.for.inc53_crit_edge:                    ; preds = %if.end50
  %22 = add i32 %smax, %mb.080
  br label %for.inc53

for.inc53:                                        ; preds = %for.cond2.for.inc53_crit_edge, %for.cond2.preheader
  %packet_lost.1.lcssa = phi i32 [ %packet_lost.5, %for.cond2.for.inc53_crit_edge ], [ %packet_lost.082, %for.cond2.preheader ]
  %mb.1.lcssa = phi i32 [ %22, %for.cond2.for.inc53_crit_edge ], [ %mb.080, %for.cond2.preheader ]
  %slice.1.lcssa = phi i32 [ %slice.2, %for.cond2.for.inc53_crit_edge ], [ %slice.079, %for.cond2.preheader ]
  %indvars.iv.next86 = add i64 %indvars.iv85, 1
  %23 = trunc i64 %indvars.iv.next86 to i32
  %cmp = icmp slt i32 %23, %div
  br i1 %cmp, label %for.cond2.preheader, label %for.end55

for.end55:                                        ; preds = %for.inc53, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Error_Concealment(i16** nocapture %inY, i8** nocapture %s_map, i16*** nocapture %refY) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %1 = load i32* %height, align 4, !tbaa !3
  %div = sdiv i32 %1, 16
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %2 = load i32* %width, align 4, !tbaa !3
  %div1 = sdiv i32 %2, 16
  %cmp19 = icmp sgt i32 %1, 15
  br i1 %cmp19, label %for.cond2.preheader.lr.ph, label %for.end9

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %cmp317 = icmp sgt i32 %2, 15
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.inc7
  %indvars.iv21 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next22, %for.inc7 ]
  br i1 %cmp317, label %for.body4.lr.ph, label %for.inc7

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %arrayidx = getelementptr inbounds i8** %s_map, i64 %indvars.iv21
  br label %for.body4

for.body4:                                        ; preds = %for.inc, %for.body4.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %3 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i8* %3, i64 %indvars.iv
  %4 = load i8* %arrayidx6, align 1, !tbaa !1
  %tobool = icmp eq i8 %4, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body4
  %5 = trunc i64 %indvars.iv to i32
  %6 = trunc i64 %indvars.iv21 to i32
  tail call void @Conceal_Error(i16** %inY, i32 %6, i32 %5, i16*** %refY, i8** %s_map) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %7, %div1
  br i1 %cmp3, label %for.body4, label %for.inc7

for.inc7:                                         ; preds = %for.inc, %for.cond2.preheader
  %indvars.iv.next22 = add i64 %indvars.iv21, 1
  %8 = trunc i64 %indvars.iv.next22 to i32
  %cmp = icmp slt i32 %8, %div
  br i1 %cmp, label %for.cond2.preheader, label %for.end9

for.end9:                                         ; preds = %for.inc7, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DecOneForthPix(i16** nocapture %dY, i16*** nocapture %dref) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %height8 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %1 = load i32* %height8, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %1, 0
  br i1 %cmp9, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 84
  %2 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %3 = load i32* %number, align 4, !tbaa !3
  %4 = load i32* %buf_cycle, align 4, !tbaa !3
  %sub = sub nsw i32 %3, %2
  %rem = srem i32 %sub, %4
  %idxprom1 = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i16*** %dref, i64 %idxprom1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %5 = phi %struct.ImageParameters* [ %0, %for.body.lr.ph ], [ %12, %for.body ]
  %6 = load i16*** %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i16** %6, i64 %indvars.iv
  %7 = load i16** %arrayidx2, align 8, !tbaa !0
  %8 = bitcast i16* %7 to i8*
  %arrayidx4 = getelementptr inbounds i16** %dY, i64 %indvars.iv
  %9 = load i16** %arrayidx4, align 8, !tbaa !0
  %10 = bitcast i16* %9 to i8*
  %width = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 13
  %11 = load i32* %width, align 4, !tbaa !3
  %conv = sext i32 %11 to i64
  %mul = shl nsw i64 %conv, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %10, i64 %mul, i32 2, i1 false)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %height = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 15
  %13 = load i32* %height, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %14, %13
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define void @compute_residue_b8block(i32 %b8block, i32 %i16mode) #0 {
entry:
  %rem = srem i32 %b8block, 2
  %shl = shl i32 %rem, 3
  %add = add nsw i32 %shl, 8
  %div = sdiv i32 %b8block, 2
  %shl1 = shl i32 %div, 3
  %add2 = add nsw i32 %shl1, 8
  %cmp = icmp sgt i32 %i16mode, -1
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %1 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 25
  %2 = load i16*** %imgY, align 8, !tbaa !0
  br i1 %cmp, label %for.cond.preheader, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %entry
  %3 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %resY51 = getelementptr inbounds %struct.Decoders* %3, i64 0, i32 0
  %4 = load i32*** %resY51, align 8, !tbaa !0
  %5 = shl i32 %div, 3
  %6 = sext i32 %5 to i64
  %7 = shl i32 %rem, 3
  %8 = sext i32 %7 to i64
  br label %for.cond29.preheader

for.cond.preheader:                               ; preds = %entry
  %idxprom13 = sext i32 %i16mode to i64
  %9 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %resY = getelementptr inbounds %struct.Decoders* %9, i64 0, i32 0
  %10 = load i32*** %resY, align 8, !tbaa !0
  %11 = shl i32 %div, 3
  %12 = sext i32 %11 to i64
  %13 = shl i32 %rem, 3
  %14 = sext i32 %13 to i64
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond.preheader, %for.inc22
  %indvars.iv90 = phi i64 [ %14, %for.cond.preheader ], [ %indvars.iv.next91, %for.inc22 ]
  br label %for.body6

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %12, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %15 = load i32* %pix_x, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv90 to i32
  %add7 = add nsw i32 %15, %16
  %idxprom = sext i32 %add7 to i64
  %17 = load i32* %pix_y, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv to i32
  %add8 = add nsw i32 %17, %18
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx = getelementptr inbounds i16** %2, i64 %idxprom9
  %19 = load i16** %arrayidx, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i16* %19, i64 %idxprom
  %20 = load i16* %arrayidx10, align 2, !tbaa !4
  %conv = zext i16 %20 to i32
  %arrayidx16 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 42, i64 %idxprom13, i64 %indvars.iv, i64 %indvars.iv90
  %21 = load i16* %arrayidx16, align 2, !tbaa !4
  %conv17 = zext i16 %21 to i32
  %sub = sub nsw i32 %conv, %conv17
  %arrayidx20 = getelementptr inbounds i32** %10, i64 %indvars.iv
  %22 = load i32** %arrayidx20, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %22, i64 %indvars.iv90
  store i32 %sub, i32* %arrayidx21, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %23 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %23, %add2
  br i1 %cmp5, label %for.body6, label %for.inc22

for.inc22:                                        ; preds = %for.body6
  %indvars.iv.next91 = add i64 %indvars.iv90, 1
  %24 = trunc i64 %indvars.iv.next91 to i32
  %cmp3 = icmp slt i32 %24, %add
  br i1 %cmp3, label %for.cond4.preheader, label %if.end

for.cond29.preheader:                             ; preds = %for.cond25.preheader, %for.inc57
  %indvars.iv94 = phi i64 [ %8, %for.cond25.preheader ], [ %indvars.iv.next95, %for.inc57 ]
  br label %for.body32

for.body32:                                       ; preds = %for.cond29.preheader, %for.body32
  %indvars.iv92 = phi i64 [ %6, %for.cond29.preheader ], [ %indvars.iv.next93, %for.body32 ]
  %25 = load i32* %pix_x, align 4, !tbaa !3
  %26 = trunc i64 %indvars.iv94 to i32
  %add34 = add nsw i32 %25, %26
  %idxprom35 = sext i32 %add34 to i64
  %27 = load i32* %pix_y, align 4, !tbaa !3
  %28 = trunc i64 %indvars.iv92 to i32
  %add37 = add nsw i32 %27, %28
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx40 = getelementptr inbounds i16** %2, i64 %idxprom38
  %29 = load i16** %arrayidx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i16* %29, i64 %idxprom35
  %30 = load i16* %arrayidx41, align 2, !tbaa !4
  %conv42 = zext i16 %30 to i32
  %arrayidx46 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 45, i64 %indvars.iv94, i64 %indvars.iv92
  %31 = load i16* %arrayidx46, align 2, !tbaa !4
  %conv47 = zext i16 %31 to i32
  %sub48 = sub nsw i32 %conv42, %conv47
  %arrayidx52 = getelementptr inbounds i32** %4, i64 %indvars.iv92
  %32 = load i32** %arrayidx52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i32* %32, i64 %indvars.iv94
  store i32 %sub48, i32* %arrayidx53, align 4, !tbaa !3
  %indvars.iv.next93 = add i64 %indvars.iv92, 1
  %33 = trunc i64 %indvars.iv.next93 to i32
  %cmp30 = icmp slt i32 %33, %add2
  br i1 %cmp30, label %for.body32, label %for.inc57

for.inc57:                                        ; preds = %for.body32
  %indvars.iv.next95 = add i64 %indvars.iv94, 1
  %34 = trunc i64 %indvars.iv.next95 to i32
  %cmp26 = icmp slt i32 %34, %add
  br i1 %cmp26, label %for.cond29.preheader, label %if.end

if.end:                                           ; preds = %for.inc57, %for.inc22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @compute_residue_mb(i32 %i16mode) #0 {
entry:
  tail call void @compute_residue_b8block(i32 0, i32 %i16mode) #5
  tail call void @compute_residue_b8block(i32 1, i32 %i16mode) #5
  tail call void @compute_residue_b8block(i32 2, i32 %i16mode) #5
  tail call void @compute_residue_b8block(i32 3, i32 %i16mode) #5
  ret void
}

; Function Attrs: optsize
declare double @spec_rand() #4

; Function Attrs: nounwind optsize uwtable
define void @Conceal_Error(i16** nocapture %inY, i32 %mb_y, i32 %mb_x, i16*** nocapture %refY, i8** nocapture %s_map) #0 {
entry:
  %mv = alloca [2 x [4 x [4 x i32]]], align 16
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0
  %1 = load i32* %number, align 4, !tbaa !3
  %2 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub = add i32 %1, -1
  %sub1 = sub i32 %sub, %2
  %num_ref_frames = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 8
  %3 = load i32* %num_ref_frames, align 4, !tbaa !3
  %rem = srem i32 %sub1, %3
  %mul = shl nsw i32 %mb_y, 4
  %mul2 = shl nsw i32 %mb_x, 4
  %4 = bitcast [2 x [4 x [4 x i32]]]* %mv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %idxprom = sext i32 %mb_y to i64
  %idxprom3 = sext i32 %mb_x to i64
  %5 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %dec_mb_mode = getelementptr inbounds %struct.Decoders* %5, i64 0, i32 6
  %6 = load i8*** %dec_mb_mode, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %6, i64 %idxprom3
  %7 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds i8* %7, i64 %idxprom
  %8 = load i8* %arrayidx4, align 1, !tbaa !1
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %land.rhs, label %land.end14

land.rhs:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %9 = load i32* %type, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %land.end14, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %cmp9 = icmp eq i32 %9, 1
  br i1 %cmp9, label %land.rhs11, label %land.end14

land.rhs11:                                       ; preds = %lor.rhs
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 113
  %10 = load i32* %nal_reference_idc, align 4, !tbaa !3
  %cmp12 = icmp sgt i32 %10, 0
  br label %land.end14

land.end14:                                       ; preds = %land.rhs, %land.rhs11, %lor.rhs, %entry
  %11 = phi i1 [ false, %entry ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp12, %land.rhs11 ]
  %cmp21 = icmp ne i8 %8, 0
  %cmp29 = icmp ult i8 %8, 4
  %or.cond = and i1 %cmp21, %cmp29
  %cmp37 = icmp eq i8 %8, 8
  %or.cond753 = or i1 %or.cond, %cmp37
  br i1 %or.cond753, label %land.rhs39, label %land.end54

land.rhs39:                                       ; preds = %land.end14
  %type40 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %12 = load i32* %type40, align 4, !tbaa !3
  %cmp41 = icmp eq i32 %12, 0
  br i1 %cmp41, label %land.end54, label %lor.rhs43

lor.rhs43:                                        ; preds = %land.rhs39
  %cmp45 = icmp eq i32 %12, 1
  br i1 %cmp45, label %land.rhs47, label %land.end54

land.rhs47:                                       ; preds = %lor.rhs43
  %nal_reference_idc48 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 113
  %13 = load i32* %nal_reference_idc48, align 4, !tbaa !3
  %cmp49 = icmp sgt i32 %13, 0
  br label %land.end54

land.end54:                                       ; preds = %land.end14, %land.rhs39, %land.rhs47, %lor.rhs43
  %14 = phi i1 [ true, %land.rhs39 ], [ false, %lor.rhs43 ], [ %cmp49, %land.rhs47 ], [ false, %land.end14 ]
  %15 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv56 = getelementptr inbounds %struct.storable_picture* %15, i64 0, i32 35
  %16 = load i16***** %mv56, align 8, !tbaa !0
  %17 = load i16**** %16, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds i8** %s_map, i64 %idxprom
  %18 = load i8** %arrayidx60, align 8, !tbaa !0
  %arrayidx61 = getelementptr inbounds i8* %18, i64 %idxprom3
  %19 = load i8* %arrayidx61, align 1, !tbaa !1
  %conv62 = zext i8 %19 to i32
  switch i32 %conv62, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %for.cond109.preheader
    i32 3, label %sw.bb322
    i32 2, label %sw.bb488
  ]

for.cond109.preheader:                            ; preds = %land.end54
  %mul122 = shl i32 %mb_y, 2
  %mul125 = shl i32 %mb_x, 2
  %add126 = add i32 %mul125, 4
  %20 = sext i32 %mul122 to i64
  br label %for.cond113.preheader

sw.bb:                                            ; preds = %land.end54
  %type63 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %21 = load i32* %type63, align 4, !tbaa !3
  %cmp64 = icmp eq i32 %21, 2
  br i1 %cmp64, label %for.cond88.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb
  %idxprom75 = sext i32 %rem to i64
  %arrayidx76 = getelementptr inbounds i16*** %refY, i64 %idxprom75
  %22 = load i16*** %arrayidx76, align 8, !tbaa !0
  %23 = sext i32 %mul2 to i64
  %24 = sext i32 %mul to i64
  br label %for.cond68.preheader

for.cond88.preheader:                             ; preds = %sw.bb
  %25 = sext i32 %mul2 to i64
  %26 = sext i32 %mul to i64
  br label %for.cond92.preheader

for.cond68.preheader:                             ; preds = %for.inc85, %for.cond.preheader
  %indvars.iv807 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next808, %for.inc85 ]
  %27 = add nsw i64 %indvars.iv807, %24
  %arrayidx77 = getelementptr inbounds i16** %22, i64 %27
  %28 = load i16** %arrayidx77, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds i16** %inY, i64 %27
  %29 = load i16** %arrayidx83, align 8, !tbaa !0
  br label %for.body71

for.body71:                                       ; preds = %for.body71, %for.cond68.preheader
  %indvars.iv801 = phi i64 [ 0, %for.cond68.preheader ], [ %indvars.iv.next802, %for.body71 ]
  %30 = add nsw i64 %indvars.iv801, %23
  %arrayidx78 = getelementptr inbounds i16* %28, i64 %30
  %31 = load i16* %arrayidx78, align 2, !tbaa !4
  %arrayidx84 = getelementptr inbounds i16* %29, i64 %30
  store i16 %31, i16* %arrayidx84, align 2, !tbaa !4
  %indvars.iv.next802 = add i64 %indvars.iv801, 1
  %lftr.wideiv804 = trunc i64 %indvars.iv.next802 to i32
  %exitcond805 = icmp eq i32 %lftr.wideiv804, 16
  br i1 %exitcond805, label %for.inc85, label %for.body71

for.inc85:                                        ; preds = %for.body71
  %indvars.iv.next808 = add i64 %indvars.iv807, 1
  %lftr.wideiv810 = trunc i64 %indvars.iv.next808 to i32
  %exitcond811 = icmp eq i32 %lftr.wideiv810, 16
  br i1 %exitcond811, label %sw.epilog, label %for.cond68.preheader

for.cond92.preheader:                             ; preds = %for.inc105, %for.cond88.preheader
  %indvars.iv796 = phi i64 [ 0, %for.cond88.preheader ], [ %indvars.iv.next797, %for.inc105 ]
  %32 = add nsw i64 %indvars.iv796, %26
  %arrayidx100 = getelementptr inbounds i16** %inY, i64 %32
  %33 = load i16** %arrayidx100, align 8, !tbaa !0
  br label %for.body95

for.body95:                                       ; preds = %for.body95, %for.cond92.preheader
  %indvars.iv = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next, %for.body95 ]
  %34 = add nsw i64 %indvars.iv, %25
  %arrayidx101 = getelementptr inbounds i16* %33, i64 %34
  store i16 127, i16* %arrayidx101, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.inc105, label %for.body95

for.inc105:                                       ; preds = %for.body95
  %indvars.iv.next797 = add i64 %indvars.iv796, 1
  %lftr.wideiv799 = trunc i64 %indvars.iv.next797 to i32
  %exitcond800 = icmp eq i32 %lftr.wideiv799, 16
  br i1 %exitcond800, label %sw.epilog, label %for.cond92.preheader

for.cond113.preheader:                            ; preds = %for.inc145, %for.cond109.preheader
  %indvars.iv869 = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next870, %for.inc145 ]
  %35 = add nsw i64 %indvars.iv869, %20
  br label %for.cond117.preheader

for.cond148.preheader:                            ; preds = %for.inc145
  %type166 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %36 = load i32* %type166, align 4, !tbaa !3
  %cmp167 = icmp eq i32 %36, 2
  br i1 %cmp167, label %for.cond301.preheader, label %if.then169

for.cond117.preheader:                            ; preds = %for.inc142, %for.cond113.preheader
  %indvars.iv865 = phi i64 [ 0, %for.cond113.preheader ], [ %indvars.iv.next866, %for.inc142 ]
  %37 = trunc i64 %indvars.iv865 to i32
  %add127 = add i32 %add126, %37
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds i16*** %17, i64 %idxprom128
  %38 = load i16*** %arrayidx129, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i16** %38, i64 %35
  %39 = load i16** %arrayidx130, align 8, !tbaa !0
  br label %for.body120

for.body120:                                      ; preds = %for.body120, %for.cond117.preheader
  %indvars.iv861 = phi i64 [ 0, %for.cond117.preheader ], [ %indvars.iv.next862, %for.body120 ]
  %arrayidx131 = getelementptr inbounds i16* %39, i64 %indvars.iv861
  %40 = load i16* %arrayidx131, align 2, !tbaa !4
  %conv132 = sext i16 %40 to i32
  %arrayidx138 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 %indvars.iv861, i64 %indvars.iv869, i64 %indvars.iv865
  store i32 %conv132, i32* %arrayidx138, align 4, !tbaa !3
  %indvars.iv.next862 = add i64 %indvars.iv861, 1
  %lftr.wideiv863 = trunc i64 %indvars.iv.next862 to i32
  %exitcond864 = icmp eq i32 %lftr.wideiv863, 2
  br i1 %exitcond864, label %for.inc142, label %for.body120

for.inc142:                                       ; preds = %for.body120
  %indvars.iv.next866 = add i64 %indvars.iv865, 1
  %lftr.wideiv867 = trunc i64 %indvars.iv.next866 to i32
  %exitcond868 = icmp eq i32 %lftr.wideiv867, 4
  br i1 %exitcond868, label %for.inc145, label %for.cond117.preheader

for.inc145:                                       ; preds = %for.inc142
  %indvars.iv.next870 = add i64 %indvars.iv869, 1
  %lftr.wideiv872 = trunc i64 %indvars.iv.next870 to i32
  %exitcond873 = icmp eq i32 %lftr.wideiv872, 4
  br i1 %exitcond873, label %for.cond148.preheader, label %for.cond113.preheader

for.cond301.preheader:                            ; preds = %for.cond148.preheader
  %41 = sext i32 %mul2 to i64
  %42 = sext i32 %mul to i64
  br label %for.cond305.preheader

if.then169:                                       ; preds = %for.cond148.preheader
  %idxprom183 = sext i32 %rem to i64
  %arrayidx184 = getelementptr inbounds i16*** %refY, i64 %idxprom183
  br i1 %11, label %for.cond171.preheader, label %if.else199

for.cond171.preheader:                            ; preds = %if.then169
  %43 = load i16*** %arrayidx184, align 8, !tbaa !0
  %44 = sext i32 %mul2 to i64
  %45 = sext i32 %mul to i64
  br label %for.cond175.preheader

for.cond175.preheader:                            ; preds = %for.inc196, %for.cond171.preheader
  %indvars.iv828 = phi i64 [ 0, %for.cond171.preheader ], [ %indvars.iv.next829, %for.inc196 ]
  %46 = add nsw i64 %indvars.iv828, %45
  %arrayidx185 = getelementptr inbounds i16** %43, i64 %46
  %47 = load i16** %arrayidx185, align 8, !tbaa !0
  %arrayidx191 = getelementptr inbounds i16** %inY, i64 %46
  %48 = load i16** %arrayidx191, align 8, !tbaa !0
  br label %for.body178

for.body178:                                      ; preds = %for.body178, %for.cond175.preheader
  %indvars.iv822 = phi i64 [ 0, %for.cond175.preheader ], [ %indvars.iv.next823, %for.body178 ]
  %49 = add nsw i64 %indvars.iv822, %44
  %arrayidx186 = getelementptr inbounds i16* %47, i64 %49
  %50 = load i16* %arrayidx186, align 2, !tbaa !4
  %arrayidx192 = getelementptr inbounds i16* %48, i64 %49
  store i16 %50, i16* %arrayidx192, align 2, !tbaa !4
  %indvars.iv.next823 = add i64 %indvars.iv822, 1
  %lftr.wideiv825 = trunc i64 %indvars.iv.next823 to i32
  %exitcond826 = icmp eq i32 %lftr.wideiv825, 16
  br i1 %exitcond826, label %for.inc196, label %for.body178

for.inc196:                                       ; preds = %for.body178
  %indvars.iv.next829 = add i64 %indvars.iv828, 1
  %lftr.wideiv831 = trunc i64 %indvars.iv.next829 to i32
  %exitcond832 = icmp eq i32 %lftr.wideiv831, 16
  br i1 %exitcond832, label %sw.epilog, label %for.cond175.preheader

if.else199:                                       ; preds = %if.then169
  br i1 %14, label %if.then201, label %for.cond270.preheader

for.cond270.preheader:                            ; preds = %if.else199
  %51 = load i16*** %arrayidx184, align 8, !tbaa !0
  %52 = sext i32 %mul2 to i64
  %53 = sext i32 %mul to i64
  br label %for.cond274.preheader

if.then201:                                       ; preds = %if.else199
  %54 = shl i32 %mb_x, 2
  %55 = sext i32 %54 to i64
  %56 = shl i32 %mb_y, 2
  %57 = sext i32 %56 to i64
  %RefBlock.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.Decoders* %5, i64 0, i32 4
  %.pre936.pre = load i16*** %RefBlock.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  br label %for.body208

for.body208:                                      ; preds = %if.then201, %for.inc266
  %.pre936 = phi i16** [ %.pre936.pre, %if.then201 ], [ %66, %for.inc266 ]
  %indvars.iv846 = phi i64 [ %57, %if.then201 ], [ %indvars.iv.next847, %for.inc266 ]
  %58 = trunc i64 %indvars.iv846 to i32
  %sub222 = sub nsw i32 %58, %mul122
  %idxprom223 = sext i32 %sub222 to i64
  %mul252 = shl i32 %58, 2
  %59 = sext i32 %mul252 to i64
  br label %for.body215

for.body215:                                      ; preds = %for.body208, %for.inc263
  %60 = phi i16** [ %.pre936, %for.body208 ], [ %66, %for.inc263 ]
  %indvars.iv844 = phi i64 [ %55, %for.body208 ], [ %indvars.iv.next845, %for.inc263 ]
  %61 = load i16*** %arrayidx184, align 8, !tbaa !0
  %62 = trunc i64 %indvars.iv844 to i32
  %sub219 = sub nsw i32 %62, %mul125
  %idxprom220 = sext i32 %sub219 to i64
  %arrayidx226 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %idxprom223, i64 %idxprom220
  %63 = load i32* %arrayidx226, align 4, !tbaa !3
  %arrayidx235 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %idxprom223, i64 %idxprom220
  %64 = load i32* %arrayidx235, align 4, !tbaa !3
  call void @Get_Reference_Block(i16** %61, i32 %58, i32 %62, i32 %63, i32 %64, i16** %60) #5
  %65 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %RefBlock246 = getelementptr inbounds %struct.Decoders* %65, i64 0, i32 4
  %66 = load i16*** %RefBlock246, align 8, !tbaa !0
  %mul249 = shl i32 %62, 2
  %67 = sext i32 %mul249 to i64
  br label %for.cond240.preheader

for.cond240.preheader:                            ; preds = %for.inc260, %for.body215
  %indvars.iv839 = phi i64 [ 0, %for.body215 ], [ %indvars.iv.next840, %for.inc260 ]
  %arrayidx247 = getelementptr inbounds i16** %66, i64 %indvars.iv839
  %68 = load i16** %arrayidx247, align 8, !tbaa !0
  %69 = add nsw i64 %indvars.iv839, %59
  %arrayidx255 = getelementptr inbounds i16** %inY, i64 %69
  %70 = load i16** %arrayidx255, align 8, !tbaa !0
  br label %for.body243

for.body243:                                      ; preds = %for.body243, %for.cond240.preheader
  %indvars.iv833 = phi i64 [ 0, %for.cond240.preheader ], [ %indvars.iv.next834, %for.body243 ]
  %arrayidx248 = getelementptr inbounds i16* %68, i64 %indvars.iv833
  %71 = load i16* %arrayidx248, align 2, !tbaa !4
  %72 = add nsw i64 %indvars.iv833, %67
  %arrayidx256 = getelementptr inbounds i16* %70, i64 %72
  store i16 %71, i16* %arrayidx256, align 2, !tbaa !4
  %indvars.iv.next834 = add i64 %indvars.iv833, 1
  %lftr.wideiv836 = trunc i64 %indvars.iv.next834 to i32
  %exitcond837 = icmp eq i32 %lftr.wideiv836, 4
  br i1 %exitcond837, label %for.inc260, label %for.body243

for.inc260:                                       ; preds = %for.body243
  %indvars.iv.next840 = add i64 %indvars.iv839, 1
  %lftr.wideiv842 = trunc i64 %indvars.iv.next840 to i32
  %exitcond843 = icmp eq i32 %lftr.wideiv842, 4
  br i1 %exitcond843, label %for.inc263, label %for.cond240.preheader

for.inc263:                                       ; preds = %for.inc260
  %indvars.iv.next845 = add i64 %indvars.iv844, 1
  %73 = or i32 %mul125, 3
  %cmp213 = icmp slt i32 %62, %73
  br i1 %cmp213, label %for.body215, label %for.inc266

for.inc266:                                       ; preds = %for.inc263
  %indvars.iv.next847 = add i64 %indvars.iv846, 1
  %74 = or i32 %mul122, 3
  %cmp206 = icmp slt i32 %58, %74
  br i1 %cmp206, label %for.body208, label %sw.epilog

for.cond274.preheader:                            ; preds = %for.inc295, %for.cond270.preheader
  %indvars.iv854 = phi i64 [ 0, %for.cond270.preheader ], [ %indvars.iv.next855, %for.inc295 ]
  %75 = add nsw i64 %indvars.iv854, %53
  %arrayidx284 = getelementptr inbounds i16** %51, i64 %75
  %76 = load i16** %arrayidx284, align 8, !tbaa !0
  %arrayidx290 = getelementptr inbounds i16** %inY, i64 %75
  %77 = load i16** %arrayidx290, align 8, !tbaa !0
  br label %for.body277

for.body277:                                      ; preds = %for.body277, %for.cond274.preheader
  %indvars.iv848 = phi i64 [ 0, %for.cond274.preheader ], [ %indvars.iv.next849, %for.body277 ]
  %78 = add nsw i64 %indvars.iv848, %52
  %arrayidx285 = getelementptr inbounds i16* %76, i64 %78
  %79 = load i16* %arrayidx285, align 2, !tbaa !4
  %arrayidx291 = getelementptr inbounds i16* %77, i64 %78
  store i16 %79, i16* %arrayidx291, align 2, !tbaa !4
  %indvars.iv.next849 = add i64 %indvars.iv848, 1
  %lftr.wideiv851 = trunc i64 %indvars.iv.next849 to i32
  %exitcond852 = icmp eq i32 %lftr.wideiv851, 16
  br i1 %exitcond852, label %for.inc295, label %for.body277

for.inc295:                                       ; preds = %for.body277
  %indvars.iv.next855 = add i64 %indvars.iv854, 1
  %lftr.wideiv857 = trunc i64 %indvars.iv.next855 to i32
  %exitcond858 = icmp eq i32 %lftr.wideiv857, 16
  br i1 %exitcond858, label %sw.epilog, label %for.cond274.preheader

for.cond305.preheader:                            ; preds = %for.inc318, %for.cond301.preheader
  %indvars.iv817 = phi i64 [ 0, %for.cond301.preheader ], [ %indvars.iv.next818, %for.inc318 ]
  %80 = add nsw i64 %indvars.iv817, %42
  %arrayidx313 = getelementptr inbounds i16** %inY, i64 %80
  %81 = load i16** %arrayidx313, align 8, !tbaa !0
  br label %for.body308

for.body308:                                      ; preds = %for.body308, %for.cond305.preheader
  %indvars.iv812 = phi i64 [ 0, %for.cond305.preheader ], [ %indvars.iv.next813, %for.body308 ]
  %82 = add nsw i64 %indvars.iv812, %41
  %arrayidx314 = getelementptr inbounds i16* %81, i64 %82
  store i16 127, i16* %arrayidx314, align 2, !tbaa !4
  %indvars.iv.next813 = add i64 %indvars.iv812, 1
  %lftr.wideiv815 = trunc i64 %indvars.iv.next813 to i32
  %exitcond816 = icmp eq i32 %lftr.wideiv815, 16
  br i1 %exitcond816, label %for.inc318, label %for.body308

for.inc318:                                       ; preds = %for.body308
  %indvars.iv.next818 = add i64 %indvars.iv817, 1
  %lftr.wideiv820 = trunc i64 %indvars.iv.next818 to i32
  %exitcond821 = icmp eq i32 %lftr.wideiv820, 16
  br i1 %exitcond821, label %sw.epilog, label %for.cond305.preheader

sw.bb322:                                         ; preds = %land.end54
  %type323 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %83 = load i32* %type323, align 4, !tbaa !3
  %cmp324 = icmp eq i32 %83, 2
  br i1 %cmp324, label %sw.epilog, label %for.cond327.preheader

for.cond327.preheader:                            ; preds = %sw.bb322
  %mul340 = shl i32 %mb_y, 2
  %mul343 = shl i32 %mb_x, 2
  %add344 = add i32 %mul343, 4
  %84 = sext i32 %mul340 to i64
  br label %for.cond331.preheader

for.cond331.preheader:                            ; preds = %for.inc363, %for.cond327.preheader
  %indvars.iv910 = phi i64 [ 0, %for.cond327.preheader ], [ %indvars.iv.next911, %for.inc363 ]
  %85 = add nsw i64 %indvars.iv910, %84
  br label %for.cond335.preheader

for.cond366.preheader:                            ; preds = %for.inc363
  br i1 %11, label %for.cond386.preheader, label %if.else414

for.cond335.preheader:                            ; preds = %for.inc360, %for.cond331.preheader
  %indvars.iv906 = phi i64 [ 0, %for.cond331.preheader ], [ %indvars.iv.next907, %for.inc360 ]
  %86 = trunc i64 %indvars.iv906 to i32
  %add345 = add i32 %add344, %86
  %idxprom346 = sext i32 %add345 to i64
  %arrayidx347 = getelementptr inbounds i16*** %17, i64 %idxprom346
  %87 = load i16*** %arrayidx347, align 8, !tbaa !0
  %arrayidx348 = getelementptr inbounds i16** %87, i64 %85
  %88 = load i16** %arrayidx348, align 8, !tbaa !0
  br label %for.body338

for.body338:                                      ; preds = %for.body338, %for.cond335.preheader
  %indvars.iv902 = phi i64 [ 0, %for.cond335.preheader ], [ %indvars.iv.next903, %for.body338 ]
  %arrayidx349 = getelementptr inbounds i16* %88, i64 %indvars.iv902
  %89 = load i16* %arrayidx349, align 2, !tbaa !4
  %conv350 = sext i16 %89 to i32
  %arrayidx356 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 %indvars.iv902, i64 %indvars.iv910, i64 %indvars.iv906
  store i32 %conv350, i32* %arrayidx356, align 4, !tbaa !3
  %indvars.iv.next903 = add i64 %indvars.iv902, 1
  %lftr.wideiv904 = trunc i64 %indvars.iv.next903 to i32
  %exitcond905 = icmp eq i32 %lftr.wideiv904, 2
  br i1 %exitcond905, label %for.inc360, label %for.body338

for.inc360:                                       ; preds = %for.body338
  %indvars.iv.next907 = add i64 %indvars.iv906, 1
  %lftr.wideiv908 = trunc i64 %indvars.iv.next907 to i32
  %exitcond909 = icmp eq i32 %lftr.wideiv908, 4
  br i1 %exitcond909, label %for.inc363, label %for.cond335.preheader

for.inc363:                                       ; preds = %for.inc360
  %indvars.iv.next911 = add i64 %indvars.iv910, 1
  %lftr.wideiv913 = trunc i64 %indvars.iv.next911 to i32
  %exitcond914 = icmp eq i32 %lftr.wideiv913, 4
  br i1 %exitcond914, label %for.cond366.preheader, label %for.cond331.preheader

for.cond386.preheader:                            ; preds = %for.cond366.preheader
  %idxprom398 = sext i32 %rem to i64
  %arrayidx399 = getelementptr inbounds i16*** %refY, i64 %idxprom398
  %90 = load i16*** %arrayidx399, align 8, !tbaa !0
  %91 = sext i32 %mul2 to i64
  %92 = sext i32 %mul to i64
  br label %for.cond390.preheader

for.cond390.preheader:                            ; preds = %for.inc411, %for.cond386.preheader
  %indvars.iv880 = phi i64 [ 0, %for.cond386.preheader ], [ %indvars.iv.next881, %for.inc411 ]
  %93 = add nsw i64 %indvars.iv880, %92
  %arrayidx400 = getelementptr inbounds i16** %90, i64 %93
  %94 = load i16** %arrayidx400, align 8, !tbaa !0
  %arrayidx406 = getelementptr inbounds i16** %inY, i64 %93
  %95 = load i16** %arrayidx406, align 8, !tbaa !0
  br label %for.body393

for.body393:                                      ; preds = %for.body393, %for.cond390.preheader
  %indvars.iv874 = phi i64 [ 0, %for.cond390.preheader ], [ %indvars.iv.next875, %for.body393 ]
  %96 = add nsw i64 %indvars.iv874, %91
  %arrayidx401 = getelementptr inbounds i16* %94, i64 %96
  %97 = load i16* %arrayidx401, align 2, !tbaa !4
  %arrayidx407 = getelementptr inbounds i16* %95, i64 %96
  store i16 %97, i16* %arrayidx407, align 2, !tbaa !4
  %indvars.iv.next875 = add i64 %indvars.iv874, 1
  %lftr.wideiv877 = trunc i64 %indvars.iv.next875 to i32
  %exitcond878 = icmp eq i32 %lftr.wideiv877, 16
  br i1 %exitcond878, label %for.inc411, label %for.body393

for.inc411:                                       ; preds = %for.body393
  %indvars.iv.next881 = add i64 %indvars.iv880, 1
  %lftr.wideiv883 = trunc i64 %indvars.iv.next881 to i32
  %exitcond884 = icmp eq i32 %lftr.wideiv883, 16
  br i1 %exitcond884, label %sw.epilog, label %for.cond390.preheader

if.else414:                                       ; preds = %for.cond366.preheader
  br i1 %14, label %if.then416, label %sw.epilog

if.then416:                                       ; preds = %if.else414
  %idxprom431 = sext i32 %rem to i64
  %arrayidx432 = getelementptr inbounds i16*** %refY, i64 %idxprom431
  %98 = shl i32 %mb_x, 2
  %99 = sext i32 %98 to i64
  %100 = shl i32 %mb_y, 2
  %101 = sext i32 %100 to i64
  %RefBlock451.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.Decoders* %5, i64 0, i32 4
  %.pre.pre = load i16*** %RefBlock451.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  br label %for.body423

for.body423:                                      ; preds = %if.then416, %for.inc482
  %.pre = phi i16** [ %.pre.pre, %if.then416 ], [ %110, %for.inc482 ]
  %indvars.iv898 = phi i64 [ %101, %if.then416 ], [ %indvars.iv.next899, %for.inc482 ]
  %102 = trunc i64 %indvars.iv898 to i32
  %sub437 = sub nsw i32 %102, %mul340
  %idxprom438 = sext i32 %sub437 to i64
  %mul468 = shl i32 %102, 2
  %103 = sext i32 %mul468 to i64
  br label %for.body430

for.body430:                                      ; preds = %for.body423, %for.inc479
  %104 = phi i16** [ %.pre, %for.body423 ], [ %110, %for.inc479 ]
  %indvars.iv896 = phi i64 [ %99, %for.body423 ], [ %indvars.iv.next897, %for.inc479 ]
  %105 = load i16*** %arrayidx432, align 8, !tbaa !0
  %106 = trunc i64 %indvars.iv896 to i32
  %sub434 = sub nsw i32 %106, %mul343
  %idxprom435 = sext i32 %sub434 to i64
  %arrayidx441 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 0, i64 %idxprom438, i64 %idxprom435
  %107 = load i32* %arrayidx441, align 4, !tbaa !3
  %arrayidx450 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %mv, i64 0, i64 1, i64 %idxprom438, i64 %idxprom435
  %108 = load i32* %arrayidx450, align 4, !tbaa !3
  call void @Get_Reference_Block(i16** %105, i32 %102, i32 %106, i32 %107, i32 %108, i16** %104) #5
  %109 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %RefBlock462 = getelementptr inbounds %struct.Decoders* %109, i64 0, i32 4
  %110 = load i16*** %RefBlock462, align 8, !tbaa !0
  %mul465 = shl i32 %106, 2
  %111 = sext i32 %mul465 to i64
  br label %for.cond456.preheader

for.cond456.preheader:                            ; preds = %for.inc476, %for.body430
  %indvars.iv891 = phi i64 [ 0, %for.body430 ], [ %indvars.iv.next892, %for.inc476 ]
  %arrayidx463 = getelementptr inbounds i16** %110, i64 %indvars.iv891
  %112 = load i16** %arrayidx463, align 8, !tbaa !0
  %113 = add nsw i64 %indvars.iv891, %103
  %arrayidx471 = getelementptr inbounds i16** %inY, i64 %113
  %114 = load i16** %arrayidx471, align 8, !tbaa !0
  br label %for.body459

for.body459:                                      ; preds = %for.body459, %for.cond456.preheader
  %indvars.iv885 = phi i64 [ 0, %for.cond456.preheader ], [ %indvars.iv.next886, %for.body459 ]
  %arrayidx464 = getelementptr inbounds i16* %112, i64 %indvars.iv885
  %115 = load i16* %arrayidx464, align 2, !tbaa !4
  %116 = add nsw i64 %indvars.iv885, %111
  %arrayidx472 = getelementptr inbounds i16* %114, i64 %116
  store i16 %115, i16* %arrayidx472, align 2, !tbaa !4
  %indvars.iv.next886 = add i64 %indvars.iv885, 1
  %lftr.wideiv888 = trunc i64 %indvars.iv.next886 to i32
  %exitcond889 = icmp eq i32 %lftr.wideiv888, 4
  br i1 %exitcond889, label %for.inc476, label %for.body459

for.inc476:                                       ; preds = %for.body459
  %indvars.iv.next892 = add i64 %indvars.iv891, 1
  %lftr.wideiv894 = trunc i64 %indvars.iv.next892 to i32
  %exitcond895 = icmp eq i32 %lftr.wideiv894, 4
  br i1 %exitcond895, label %for.inc479, label %for.cond456.preheader

for.inc479:                                       ; preds = %for.inc476
  %indvars.iv.next897 = add i64 %indvars.iv896, 1
  %117 = or i32 %mul343, 3
  %cmp428 = icmp slt i32 %106, %117
  br i1 %cmp428, label %for.body430, label %for.inc482

for.inc482:                                       ; preds = %for.inc479
  %indvars.iv.next899 = add i64 %indvars.iv898, 1
  %118 = or i32 %mul340, 3
  %cmp421 = icmp slt i32 %102, %118
  br i1 %cmp421, label %for.body423, label %sw.epilog

sw.bb488:                                         ; preds = %land.end54
  %type489 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %119 = load i32* %type489, align 4, !tbaa !3
  %cmp490 = icmp eq i32 %119, 2
  br i1 %cmp490, label %for.cond525.preheader, label %if.then492

for.cond525.preheader:                            ; preds = %sw.bb488
  %120 = sext i32 %mul2 to i64
  %121 = sext i32 %mul to i64
  br label %for.cond529.preheader

if.then492:                                       ; preds = %sw.bb488
  br i1 %14, label %sw.epilog, label %for.cond495.preheader

for.cond495.preheader:                            ; preds = %if.then492
  %idxprom507 = sext i32 %rem to i64
  %arrayidx508 = getelementptr inbounds i16*** %refY, i64 %idxprom507
  %122 = load i16*** %arrayidx508, align 8, !tbaa !0
  %123 = sext i32 %mul2 to i64
  %124 = sext i32 %mul to i64
  br label %for.cond499.preheader

for.cond499.preheader:                            ; preds = %for.inc520, %for.cond495.preheader
  %indvars.iv931 = phi i64 [ 0, %for.cond495.preheader ], [ %indvars.iv.next932, %for.inc520 ]
  %125 = add nsw i64 %indvars.iv931, %124
  %arrayidx509 = getelementptr inbounds i16** %122, i64 %125
  %126 = load i16** %arrayidx509, align 8, !tbaa !0
  %arrayidx515 = getelementptr inbounds i16** %inY, i64 %125
  %127 = load i16** %arrayidx515, align 8, !tbaa !0
  br label %for.body502

for.body502:                                      ; preds = %for.body502, %for.cond499.preheader
  %indvars.iv925 = phi i64 [ 0, %for.cond499.preheader ], [ %indvars.iv.next926, %for.body502 ]
  %128 = add nsw i64 %indvars.iv925, %123
  %arrayidx510 = getelementptr inbounds i16* %126, i64 %128
  %129 = load i16* %arrayidx510, align 2, !tbaa !4
  %arrayidx516 = getelementptr inbounds i16* %127, i64 %128
  store i16 %129, i16* %arrayidx516, align 2, !tbaa !4
  %indvars.iv.next926 = add i64 %indvars.iv925, 1
  %lftr.wideiv928 = trunc i64 %indvars.iv.next926 to i32
  %exitcond929 = icmp eq i32 %lftr.wideiv928, 16
  br i1 %exitcond929, label %for.inc520, label %for.body502

for.inc520:                                       ; preds = %for.body502
  %indvars.iv.next932 = add i64 %indvars.iv931, 1
  %lftr.wideiv934 = trunc i64 %indvars.iv.next932 to i32
  %exitcond935 = icmp eq i32 %lftr.wideiv934, 16
  br i1 %exitcond935, label %sw.epilog, label %for.cond499.preheader

for.cond529.preheader:                            ; preds = %for.inc542, %for.cond525.preheader
  %indvars.iv920 = phi i64 [ 0, %for.cond525.preheader ], [ %indvars.iv.next921, %for.inc542 ]
  %130 = add nsw i64 %indvars.iv920, %121
  %arrayidx537 = getelementptr inbounds i16** %inY, i64 %130
  %131 = load i16** %arrayidx537, align 8, !tbaa !0
  br label %for.body532

for.body532:                                      ; preds = %for.body532, %for.cond529.preheader
  %indvars.iv915 = phi i64 [ 0, %for.cond529.preheader ], [ %indvars.iv.next916, %for.body532 ]
  %132 = add nsw i64 %indvars.iv915, %120
  %arrayidx538 = getelementptr inbounds i16* %131, i64 %132
  store i16 127, i16* %arrayidx538, align 2, !tbaa !4
  %indvars.iv.next916 = add i64 %indvars.iv915, 1
  %lftr.wideiv918 = trunc i64 %indvars.iv.next916 to i32
  %exitcond919 = icmp eq i32 %lftr.wideiv918, 16
  br i1 %exitcond919, label %for.inc542, label %for.body532

for.inc542:                                       ; preds = %for.body532
  %indvars.iv.next921 = add i64 %indvars.iv920, 1
  %lftr.wideiv923 = trunc i64 %indvars.iv.next921 to i32
  %exitcond924 = icmp eq i32 %lftr.wideiv923, 16
  br i1 %exitcond924, label %sw.epilog, label %for.cond529.preheader

sw.epilog:                                        ; preds = %for.inc520, %for.inc542, %for.inc482, %for.inc411, %for.inc295, %for.inc266, %for.inc196, %for.inc318, %for.inc85, %for.inc105, %sw.bb322, %if.then492, %if.else414, %land.end54
  call void @llvm.lifetime.end(i64 128, i8* %4) #1
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
