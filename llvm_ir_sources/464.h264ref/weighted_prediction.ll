; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/weighted_prediction.c'
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@img = external global %struct.ImageParameters*
@luma_log_weight_denom = external global i32
@chroma_log_weight_denom = external global i32
@wp_luma_round = external global i32
@wp_chroma_round = external global i32
@listXsize = external global [6 x i32]
@wp_weight = external global i32***
@wp_offset = external global i32***
@imgY_org = external global i16**
@listX = external global [6 x %struct.storable_picture**]
@active_pps = external global %struct.pic_parameter_set_rbsp_t*
@enc_picture = external global %struct.storable_picture*
@wbp_weight = external global i32****

; Function Attrs: nounwind optsize uwtable
define void @estimate_weighting_factor_P_slice(i32 %select_offset) #0 {
entry:
  %default_weight = alloca [3 x i32], align 4
  %default_weight664 = bitcast [3 x i32]* %default_weight to i8*
  %weight = alloca [2 x [15 x [3 x i32]]], align 16
  %offset = alloca [2 x [15 x [3 x i32]]], align 16
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem594 = shl i32 %2, 1
  %5 = and i32 %rem594, 2
  %6 = or i32 %5, 4
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 2, %land.lhs.true ], [ 2, %entry ]
  %7 = bitcast [2 x [15 x [3 x i32]]]* %weight to i8*
  call void @llvm.lifetime.start(i64 360, i8* %7) #1
  %8 = bitcast [2 x [15 x [3 x i32]]]* %offset to i8*
  call void @llvm.lifetime.start(i64 360, i8* %8) #1
  store i32 5, i32* @luma_log_weight_denom, align 4, !tbaa !3
  store i32 5, i32* @chroma_log_weight_denom, align 4, !tbaa !3
  store i32 16, i32* @wp_luma_round, align 4, !tbaa !3
  store i32 16, i32* @wp_chroma_round, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 0
  store i32 32, i32* %arrayidx8, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 2
  store i32 32, i32* %arrayidx10, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 1
  store i32 32, i32* %arrayidx11, align 4, !tbaa !3
  %9 = load i32**** @wp_weight, align 8, !tbaa !0
  %10 = load i32**** @wp_offset, align 8, !tbaa !0
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %cond.end, %for.inc51
  %indvars.iv669 = phi i64 [ 0, %cond.end ], [ %indvars.iv.next670, %for.inc51 ]
  %arrayidx14 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv669
  %11 = load i32* %arrayidx14, align 4, !tbaa !3
  %cmp15634 = icmp sgt i32 %11, 0
  br i1 %cmp15634, label %for.cond17.preheader.lr.ph, label %for.inc51

for.cond17.preheader.lr.ph:                       ; preds = %for.cond12.preheader
  %arrayidx33 = getelementptr inbounds i32*** %9, i64 %indvars.iv669
  %12 = load i32*** %arrayidx33, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i32*** %10, i64 %indvars.iv669
  %13 = load i32*** %arrayidx39, align 8, !tbaa !0
  br label %for.cond17.preheader

for.cond54.preheader:                             ; preds = %for.inc51
  %height628 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %14 = load i32* %height628, align 4, !tbaa !3
  %cmp55629 = icmp sgt i32 %14, 0
  %width623 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  br i1 %cmp55629, label %for.cond57.preheader.lr.ph, label %for.cond71.preheader

for.cond57.preheader.lr.ph:                       ; preds = %for.cond54.preheader
  %15 = load i32* %width623, align 4, !tbaa !3
  %cmp58624 = icmp sgt i32 %15, 0
  %16 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond57.preheader

for.cond17.preheader:                             ; preds = %for.cond17.preheader.lr.ph, %for.inc48
  %indvars.iv667 = phi i64 [ 0, %for.cond17.preheader.lr.ph ], [ %indvars.iv.next668, %for.inc48 ]
  %scevgep665 = getelementptr [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv669, i64 %indvars.iv667, i64 0
  %scevgep665666 = bitcast i32* %scevgep665 to i8*
  %scevgep = getelementptr [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv669, i64 %indvars.iv667, i64 0
  %scevgep663 = bitcast i32* %scevgep to i8*
  %arrayidx34 = getelementptr inbounds i32** %12, i64 %indvars.iv667
  %17 = load i32** %arrayidx34, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i32** %13, i64 %indvars.iv667
  %18 = load i32** %arrayidx40, align 8, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep663, i8* %default_weight664, i64 12, i32 4, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %scevgep665666, i8 0, i64 12, i32 4, i1 false)
  br label %for.body19

for.body19:                                       ; preds = %for.body19, %for.cond17.preheader
  %indvars.iv657 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next658, %for.body19 ]
  %arrayidx21 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 %indvars.iv657
  %19 = load i32* %arrayidx21, align 4, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32* %17, i64 %indvars.iv657
  store i32 %19, i32* %arrayidx35, align 4, !tbaa !3
  %arrayidx41 = getelementptr inbounds i32* %18, i64 %indvars.iv657
  store i32 0, i32* %arrayidx41, align 4, !tbaa !3
  %indvars.iv.next658 = add i64 %indvars.iv657, 1
  %lftr.wideiv659 = trunc i64 %indvars.iv.next658 to i32
  %exitcond660 = icmp eq i32 %lftr.wideiv659, 3
  br i1 %exitcond660, label %for.inc48, label %for.body19

for.inc48:                                        ; preds = %for.body19
  %indvars.iv.next668 = add i64 %indvars.iv667, 1
  %20 = load i32* %arrayidx14, align 4, !tbaa !3
  %21 = trunc i64 %indvars.iv.next668 to i32
  %cmp15 = icmp slt i32 %21, %20
  br i1 %cmp15, label %for.cond17.preheader, label %for.inc51

for.inc51:                                        ; preds = %for.inc48, %for.cond12.preheader
  %indvars.iv.next670 = add i64 %indvars.iv669, 1
  %22 = trunc i64 %indvars.iv.next670 to i32
  %cmp = icmp slt i32 %22, %cond4
  br i1 %cmp, label %for.cond12.preheader, label %for.cond54.preheader

for.cond57.preheader:                             ; preds = %for.cond57.preheader.lr.ph, %for.inc68
  %indvars.iv655 = phi i64 [ 0, %for.cond57.preheader.lr.ph ], [ %indvars.iv.next656, %for.inc68 ]
  %dc_org.0630 = phi double [ 0.000000e+00, %for.cond57.preheader.lr.ph ], [ %dc_org.1.lcssa, %for.inc68 ]
  br i1 %cmp58624, label %for.body59.lr.ph, label %for.inc68

for.body59.lr.ph:                                 ; preds = %for.cond57.preheader
  %arrayidx62 = getelementptr inbounds i16** %16, i64 %indvars.iv655
  %23 = load i16** %arrayidx62, align 8, !tbaa !0
  br label %for.body59

for.cond71.preheader:                             ; preds = %for.cond54.preheader, %for.inc68
  %dc_org.0.lcssa = phi double [ %dc_org.1.lcssa, %for.inc68 ], [ 0.000000e+00, %for.cond54.preheader ]
  %cmp108 = icmp eq i32 %select_offset, 0
  %mul117 = fmul double %dc_org.0.lcssa, 3.200000e+01
  %24 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !tbaa !0
  %25 = load i32* @wp_luma_round, align 4, !tbaa !3
  %26 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  br label %for.cond76.preheader

for.body59:                                       ; preds = %for.body59.lr.ph, %for.body59
  %indvars.iv653 = phi i64 [ 0, %for.body59.lr.ph ], [ %indvars.iv.next654, %for.body59 ]
  %dc_org.1625 = phi double [ %dc_org.0630, %for.body59.lr.ph ], [ %add64, %for.body59 ]
  %arrayidx63 = getelementptr inbounds i16* %23, i64 %indvars.iv653
  %27 = load i16* %arrayidx63, align 2, !tbaa !4
  %conv = uitofp i16 %27 to double
  %add64 = fadd double %dc_org.1625, %conv
  %indvars.iv.next654 = add i64 %indvars.iv653, 1
  %28 = trunc i64 %indvars.iv.next654 to i32
  %cmp58 = icmp slt i32 %28, %15
  br i1 %cmp58, label %for.body59, label %for.inc68

for.inc68:                                        ; preds = %for.body59, %for.cond57.preheader
  %dc_org.1.lcssa = phi double [ %dc_org.0630, %for.cond57.preheader ], [ %add64, %for.body59 ]
  %indvars.iv.next656 = add i64 %indvars.iv655, 1
  %29 = trunc i64 %indvars.iv.next656 to i32
  %cmp55 = icmp slt i32 %29, %14
  br i1 %cmp55, label %for.cond57.preheader, label %for.cond71.preheader

for.cond76.preheader:                             ; preds = %for.cond71.preheader, %for.inc407
  %indvars.iv651 = phi i64 [ 0, %for.cond71.preheader ], [ %indvars.iv.next652, %for.inc407 ]
  %arrayidx78 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv651
  %30 = load i32* %arrayidx78, align 4, !tbaa !3
  %cmp79620 = icmp sgt i32 %30, 0
  br i1 %cmp79620, label %for.body81.lr.ph, label %for.inc407

for.body81.lr.ph:                                 ; preds = %for.cond76.preheader
  %arrayidx86 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv651
  %31 = load %struct.storable_picture*** %arrayidx86, align 8, !tbaa !0
  %32 = load i32* %width623, align 4, !tbaa !3
  %mul602 = mul nsw i32 %32, %14
  %cmp95603 = icmp sgt i32 %mul602, 0
  %add300616 = shl i32 %14, 2
  %mul301617 = add i32 %add300616, 32
  %cmp302618 = icmp sgt i32 %mul301617, 0
  br label %for.body81

for.body81:                                       ; preds = %for.body81.lr.ph, %for.inc404
  %indvars.iv649 = phi i64 [ 0, %for.body81.lr.ph ], [ %indvars.iv.next650, %for.inc404 ]
  %arrayidx87 = getelementptr inbounds %struct.storable_picture** %31, i64 %indvars.iv649
  %33 = load %struct.storable_picture** %arrayidx87, align 8, !tbaa !0
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 26
  %34 = load i16** %imgY_11, align 8, !tbaa !0
  %imgY_11_w = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 27
  %35 = load i16** %imgY_11_w, align 8, !tbaa !0
  br i1 %cmp95603, label %for.body97, label %for.end106

for.body97:                                       ; preds = %for.body81, %for.body97
  %indvars.iv641 = phi i64 [ %indvars.iv.next642, %for.body97 ], [ 0, %for.body81 ]
  %36 = phi double [ %add103, %for.body97 ], [ 0.000000e+00, %for.body81 ]
  %arrayidx99 = getelementptr inbounds i16* %34, i64 %indvars.iv641
  %37 = load i16* %arrayidx99, align 2, !tbaa !4
  %conv100 = uitofp i16 %37 to double
  %add103 = fadd double %36, %conv100
  %indvars.iv.next642 = add i64 %indvars.iv641, 1
  %38 = trunc i64 %indvars.iv.next642 to i32
  %cmp95 = icmp slt i32 %38, %mul602
  br i1 %cmp95, label %for.body97, label %for.end106

for.end106:                                       ; preds = %for.body97, %for.body81
  %39 = phi double [ 0.000000e+00, %for.body81 ], [ %add103, %for.body97 ]
  br i1 %cmp108, label %if.then, label %if.else155

if.then:                                          ; preds = %for.end106
  %cmp112 = fcmp une double %39, 0.000000e+00
  br i1 %cmp112, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %if.then
  %arrayidx132 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0
  store i32 32, i32* %arrayidx132, align 4, !tbaa !3
  br label %if.end209

if.end:                                           ; preds = %if.then
  %div = fdiv double %mul117, %39
  %add120 = fadd double %div, 5.000000e-01
  %conv121 = fptosi double %add120 to i32
  %arrayidx126 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0
  store i32 %conv121, i32* %arrayidx126, align 4, !tbaa !3
  %.off = add i32 %conv121, 64
  %40 = icmp ugt i32 %.off, 191
  br i1 %40, label %if.then147, label %if.end209

if.then147:                                       ; preds = %if.end
  %arrayidx137 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0
  store i32 32, i32* %arrayidx137, align 4, !tbaa !3
  br label %if.end209

if.else155:                                       ; preds = %for.end106
  %sub158 = fsub double %dc_org.0.lcssa, %39
  %conv162 = sitofp i32 %mul602 to double
  %div163 = fdiv double %sub158, %conv162
  %add164 = fadd double %div163, 5.000000e-01
  %conv165 = fptosi double %add164 to i32
  %arrayidx170 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0
  store i32 %conv165, i32* %arrayidx170, align 4, !tbaa !3
  %cmp176 = icmp slt i32 %conv165, -128
  br i1 %cmp176, label %cond.end196, label %cond.false179

cond.false179:                                    ; preds = %if.else155
  %cmp185 = icmp sgt i32 %conv165, 127
  %.conv165 = select i1 %cmp185, i32 127, i32 %conv165
  br label %cond.end196

cond.end196:                                      ; preds = %cond.false179, %if.else155
  %cond197 = phi i32 [ -128, %if.else155 ], [ %.conv165, %cond.false179 ]
  store i32 %cond197, i32* %arrayidx170, align 4, !tbaa !3
  %arrayidx208 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0
  store i32 32, i32* %arrayidx208, align 4, !tbaa !3
  br label %if.end209

if.end209:                                        ; preds = %if.end.thread, %if.end, %if.then147, %cond.end196
  %41 = phi i32 [ %conv121, %if.end ], [ 32, %if.then147 ], [ 32, %cond.end196 ], [ 32, %if.end.thread ]
  %arrayidx215 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 1
  store i32 32, i32* %arrayidx215, align 4, !tbaa !3
  %arrayidx221 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 2
  store i32 32, i32* %arrayidx221, align 4, !tbaa !3
  br i1 %cmp95603, label %for.body228.lr.ph, label %for.cond298.loopexit

for.body228.lr.ph:                                ; preds = %if.end209
  %arrayidx243 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0
  %42 = load i32* %arrayidx243, align 4, !tbaa !3
  %mul225 = mul nsw i32 %32, %14
  br label %for.body228

for.body228:                                      ; preds = %for.body228.lr.ph, %cond.end290
  %indvars.iv643 = phi i64 [ 0, %for.body228.lr.ph ], [ %indvars.iv.next644, %cond.end290 ]
  %arrayidx230 = getelementptr inbounds i16* %34, i64 %indvars.iv643
  %43 = load i16* %arrayidx230, align 2, !tbaa !4
  %conv231 = zext i16 %43 to i32
  %mul237 = mul nsw i32 %conv231, %41
  %add238 = add nsw i32 %mul237, %25
  %shr = ashr i32 %add238, %26
  %add244 = add nsw i32 %shr, %42
  %cmp245 = icmp slt i32 %add244, 0
  br i1 %cmp245, label %cond.end290, label %cond.false248

cond.false248:                                    ; preds = %for.body228
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %44 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %cmp266 = icmp sgt i32 %add244, %44
  %.add244 = select i1 %cmp266, i32 %44, i32 %add244
  %phitmp595 = trunc i32 %.add244 to i16
  br label %cond.end290

cond.end290:                                      ; preds = %cond.false248, %for.body228
  %cond291 = phi i16 [ 0, %for.body228 ], [ %phitmp595, %cond.false248 ]
  %arrayidx294 = getelementptr inbounds i16* %35, i64 %indvars.iv643
  store i16 %cond291, i16* %arrayidx294, align 2, !tbaa !4
  %indvars.iv.next644 = add i64 %indvars.iv643, 1
  %45 = trunc i64 %indvars.iv.next644 to i32
  %cmp226 = icmp slt i32 %45, %mul225
  br i1 %cmp226, label %for.body228, label %for.cond298.loopexit

for.cond298.loopexit:                             ; preds = %cond.end290, %if.end209
  br i1 %cmp302618, label %for.cond305.preheader.lr.ph, label %for.inc404

for.cond305.preheader.lr.ph:                      ; preds = %for.cond298.loopexit
  %add307611 = shl i32 %32, 2
  %mul308612 = add i32 %add307611, 32
  %cmp309613 = icmp sgt i32 %mul308612, 0
  %add300 = shl i32 %14, 2
  %mul301 = add i32 %add300, 32
  %arrayidx315 = getelementptr inbounds %struct.storable_picture** %24, i64 %indvars.iv649
  %arrayidx331 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv651, i64 %indvars.iv649, i64 0
  br label %for.cond305.preheader

for.cond305.preheader:                            ; preds = %for.cond305.preheader.lr.ph, %for.inc401
  %indvars.iv647 = phi i64 [ 0, %for.cond305.preheader.lr.ph ], [ %indvars.iv.next648, %for.inc401 ]
  br i1 %cmp309613, label %for.body311.lr.ph, label %for.inc401

for.body311.lr.ph:                                ; preds = %for.cond305.preheader
  %46 = load %struct.storable_picture** %arrayidx315, align 8, !tbaa !0
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %46, i64 0, i32 28
  %47 = load i16*** %imgY_ups, align 8, !tbaa !0
  %arrayidx316 = getelementptr inbounds i16** %47, i64 %indvars.iv647
  %48 = load i16** %arrayidx316, align 8, !tbaa !0
  %49 = load i32* %arrayidx331, align 4, !tbaa !3
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture* %46, i64 0, i32 29
  %50 = load i16*** %imgY_ups_w, align 8, !tbaa !0
  %arrayidx396 = getelementptr inbounds i16** %50, i64 %indvars.iv647
  %51 = load i16** %arrayidx396, align 8, !tbaa !0
  br label %for.body311

for.body311:                                      ; preds = %for.body311.lr.ph, %cond.end389
  %indvars.iv645 = phi i64 [ 0, %for.body311.lr.ph ], [ %indvars.iv.next646, %cond.end389 ]
  %arrayidx317 = getelementptr inbounds i16* %48, i64 %indvars.iv645
  %52 = load i16* %arrayidx317, align 2, !tbaa !4
  %conv318 = zext i16 %52 to i32
  %mul324 = mul nsw i32 %conv318, %41
  %add325 = add nsw i32 %mul324, %25
  %shr326 = ashr i32 %add325, %26
  %add332 = add nsw i32 %shr326, %49
  %cmp333 = icmp slt i32 %add332, 0
  br i1 %cmp333, label %cond.end389, label %cond.false336

cond.false336:                                    ; preds = %for.body311
  %max_imgpel_value359 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %53 = load i32* %max_imgpel_value359, align 4, !tbaa !3
  %cmp360 = icmp sgt i32 %add332, %53
  %.add332 = select i1 %cmp360, i32 %53, i32 %add332
  %phitmp = trunc i32 %.add332 to i16
  br label %cond.end389

cond.end389:                                      ; preds = %cond.false336, %for.body311
  %cond390 = phi i16 [ 0, %for.body311 ], [ %phitmp, %cond.false336 ]
  %arrayidx397 = getelementptr inbounds i16* %51, i64 %indvars.iv645
  store i16 %cond390, i16* %arrayidx397, align 2, !tbaa !4
  %indvars.iv.next646 = add i64 %indvars.iv645, 1
  %54 = trunc i64 %indvars.iv.next646 to i32
  %cmp309 = icmp slt i32 %54, %mul308612
  br i1 %cmp309, label %for.body311, label %for.inc401

for.inc401:                                       ; preds = %cond.end389, %for.cond305.preheader
  %indvars.iv.next648 = add i64 %indvars.iv647, 1
  %55 = trunc i64 %indvars.iv.next648 to i32
  %cmp302 = icmp slt i32 %55, %mul301
  br i1 %cmp302, label %for.cond305.preheader, label %for.inc404

for.inc404:                                       ; preds = %for.inc401, %for.cond298.loopexit
  %indvars.iv.next650 = add i64 %indvars.iv649, 1
  %56 = trunc i64 %indvars.iv.next650 to i32
  %cmp79 = icmp slt i32 %56, %30
  br i1 %cmp79, label %for.body81, label %for.inc407

for.inc407:                                       ; preds = %for.inc404, %for.cond76.preheader
  %indvars.iv.next652 = add i64 %indvars.iv651, 1
  %57 = trunc i64 %indvars.iv.next652 to i32
  %cmp73 = icmp slt i32 %57, %cond4
  br i1 %cmp73, label %for.cond76.preheader, label %for.cond415.preheader

for.cond415.preheader:                            ; preds = %for.inc407, %for.inc455
  %indvars.iv639 = phi i64 [ %indvars.iv.next640, %for.inc455 ], [ 0, %for.inc407 ]
  %arrayidx417 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv639
  %58 = load i32* %arrayidx417, align 4, !tbaa !3
  %cmp418597 = icmp sgt i32 %58, 0
  br i1 %cmp418597, label %for.cond421.preheader.lr.ph, label %for.inc455

for.cond421.preheader.lr.ph:                      ; preds = %for.cond415.preheader
  %arrayidx434 = getelementptr inbounds i32*** %9, i64 %indvars.iv639
  %59 = load i32*** %arrayidx434, align 8, !tbaa !0
  %arrayidx446 = getelementptr inbounds i32*** %10, i64 %indvars.iv639
  %60 = load i32*** %arrayidx446, align 8, !tbaa !0
  br label %for.cond421.preheader

for.cond421.preheader:                            ; preds = %for.cond421.preheader.lr.ph, %for.inc452
  %indvars.iv637 = phi i64 [ 0, %for.cond421.preheader.lr.ph ], [ %indvars.iv.next638, %for.inc452 ]
  %arrayidx435 = getelementptr inbounds i32** %59, i64 %indvars.iv637
  %61 = load i32** %arrayidx435, align 8, !tbaa !0
  %arrayidx447 = getelementptr inbounds i32** %60, i64 %indvars.iv637
  %62 = load i32** %arrayidx447, align 8, !tbaa !0
  br label %for.body424

for.body424:                                      ; preds = %for.body424, %for.cond421.preheader
  %indvars.iv = phi i64 [ 0, %for.cond421.preheader ], [ %indvars.iv.next, %for.body424 ]
  %arrayidx430 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv639, i64 %indvars.iv637, i64 %indvars.iv
  %63 = load i32* %arrayidx430, align 4, !tbaa !3
  %arrayidx436 = getelementptr inbounds i32* %61, i64 %indvars.iv
  store i32 %63, i32* %arrayidx436, align 4, !tbaa !3
  %arrayidx442 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv639, i64 %indvars.iv637, i64 %indvars.iv
  %64 = load i32* %arrayidx442, align 4, !tbaa !3
  %arrayidx448 = getelementptr inbounds i32* %62, i64 %indvars.iv
  store i32 %64, i32* %arrayidx448, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc452, label %for.body424

for.inc452:                                       ; preds = %for.body424
  %indvars.iv.next638 = add i64 %indvars.iv637, 1
  %65 = load i32* %arrayidx417, align 4, !tbaa !3
  %66 = trunc i64 %indvars.iv.next638 to i32
  %cmp418 = icmp slt i32 %66, %65
  br i1 %cmp418, label %for.cond421.preheader, label %for.inc455

for.inc455:                                       ; preds = %for.inc452, %for.cond415.preheader
  %indvars.iv.next640 = add i64 %indvars.iv639, 1
  %67 = trunc i64 %indvars.iv.next640 to i32
  %cmp412 = icmp slt i32 %67, %cond4
  br i1 %cmp412, label %for.cond415.preheader, label %for.end457

for.end457:                                       ; preds = %for.inc455
  call void @llvm.lifetime.end(i64 360, i8* %8) #1
  call void @llvm.lifetime.end(i64 360, i8* %7) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @estimate_weighting_factor_B_slice() #0 {
entry:
  %default_weight = alloca [3 x i32], align 4
  %default_weight1285 = bitcast [3 x i32]* %default_weight to i8*
  %weight = alloca [6 x [15 x [3 x i32]]], align 16
  %offset = alloca [6 x [15 x [3 x i32]]], align 16
  %im_weight = alloca [6 x [15 x [15 x [3 x i32]]]], align 16
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem1117 = shl i32 %2, 1
  %5 = and i32 %rem1117, 2
  %6 = or i32 %5, 4
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 2, %land.lhs.true ], [ 2, %entry ]
  %7 = bitcast [6 x [15 x [3 x i32]]]* %weight to i8*
  call void @llvm.lifetime.start(i64 1080, i8* %7) #1
  %8 = bitcast [6 x [15 x [3 x i32]]]* %offset to i8*
  call void @llvm.lifetime.start(i64 1080, i8* %8) #1
  %9 = bitcast [6 x [15 x [15 x [3 x i32]]]]* %im_weight to i8*
  call void @llvm.lifetime.start(i64 16200, i8* %9) #1
  %10 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %10, i64 0, i32 20
  %11 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %cmp = icmp eq i32 %11, 2
  %. = select i1 %cmp, i32 5, i32 6
  store i32 %., i32* @luma_log_weight_denom, align 4, !tbaa !3
  store i32 %., i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %sub = add nsw i32 %., -1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* @wp_luma_round, align 4, !tbaa !3
  store i32 %shl, i32* @wp_chroma_round, align 4, !tbaa !3
  %shl7 = shl i32 1, %.
  %arrayidx8 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 0
  store i32 %shl7, i32* %arrayidx8, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 1
  store i32 %shl7, i32* %arrayidx10, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 2
  store i32 %shl7, i32* %arrayidx12, align 4, !tbaa !3
  %12 = load i32**** @wp_weight, align 8, !tbaa !0
  %13 = load i32**** @wp_offset, align 8, !tbaa !0
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %cond.end, %for.inc53
  %indvars.iv1288 = phi i64 [ 0, %cond.end ], [ %indvars.iv.next1289, %for.inc53 ]
  %arrayidx16 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv1288
  %14 = load i32* %arrayidx16, align 4, !tbaa !3
  %cmp171208 = icmp sgt i32 %14, 0
  br i1 %cmp171208, label %for.cond19.preheader.lr.ph, label %for.inc53

for.cond19.preheader.lr.ph:                       ; preds = %for.cond14.preheader
  %arrayidx27 = getelementptr inbounds i32*** %12, i64 %indvars.iv1288
  %15 = load i32*** %arrayidx27, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i32*** %13, i64 %indvars.iv1288
  %16 = load i32*** %arrayidx33, align 8, !tbaa !0
  br label %for.cond19.preheader

for.cond56.preheader:                             ; preds = %for.inc53
  %17 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  %cmp571205 = icmp sgt i32 %17, 0
  br i1 %cmp571205, label %for.cond59.preheader.lr.ph, label %for.end247

for.cond59.preheader.lr.ph:                       ; preds = %for.cond56.preheader
  %18 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %19 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !tbaa !0
  %20 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %poc92 = getelementptr inbounds %struct.storable_picture* %20, i64 0, i32 1
  %.pre1293 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  br label %for.cond59.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.lr.ph, %for.inc50
  %indvars.iv1286 = phi i64 [ 0, %for.cond19.preheader.lr.ph ], [ %indvars.iv.next1287, %for.inc50 ]
  %scevgep1283 = getelementptr [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1288, i64 %indvars.iv1286, i64 0
  %scevgep12831284 = bitcast i32* %scevgep1283 to i8*
  %scevgep = getelementptr [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1288, i64 %indvars.iv1286, i64 0
  %scevgep1282 = bitcast i32* %scevgep to i8*
  %arrayidx28 = getelementptr inbounds i32** %15, i64 %indvars.iv1286
  %21 = load i32** %arrayidx28, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32** %16, i64 %indvars.iv1286
  %22 = load i32** %arrayidx34, align 8, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* %scevgep1282, i8 0, i64 12, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep12831284, i8* %default_weight1285, i64 12, i32 4, i1 false)
  br label %for.body21

for.body21:                                       ; preds = %for.body21, %for.cond19.preheader
  %indvars.iv1276 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next1277, %for.body21 ]
  %arrayidx23 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 %indvars.iv1276
  %23 = load i32* %arrayidx23, align 4, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32* %21, i64 %indvars.iv1276
  store i32 %23, i32* %arrayidx29, align 4, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32* %22, i64 %indvars.iv1276
  store i32 0, i32* %arrayidx35, align 4, !tbaa !3
  %indvars.iv.next1277 = add i64 %indvars.iv1276, 1
  %lftr.wideiv1278 = trunc i64 %indvars.iv.next1277 to i32
  %exitcond1279 = icmp eq i32 %lftr.wideiv1278, 3
  br i1 %exitcond1279, label %for.inc50, label %for.body21

for.inc50:                                        ; preds = %for.body21
  %indvars.iv.next1287 = add i64 %indvars.iv1286, 1
  %24 = load i32* %arrayidx16, align 4, !tbaa !3
  %25 = trunc i64 %indvars.iv.next1287 to i32
  %cmp17 = icmp slt i32 %25, %24
  br i1 %cmp17, label %for.cond19.preheader, label %for.inc53

for.inc53:                                        ; preds = %for.inc50, %for.cond14.preheader
  %indvars.iv.next1289 = add i64 %indvars.iv1288, 1
  %26 = trunc i64 %indvars.iv.next1289 to i32
  %cmp13 = icmp slt i32 %26, %cond4
  br i1 %cmp13, label %for.cond14.preheader, label %for.cond56.preheader

for.cond59.preheader:                             ; preds = %for.cond59.preheader.lr.ph, %for.inc245
  %indvars.iv1274 = phi i64 [ 0, %for.cond59.preheader.lr.ph ], [ %indvars.iv.next1275, %for.inc245 ]
  %cmp601203 = icmp sgt i32 %.pre1293, 0
  br i1 %cmp601203, label %for.body61.lr.ph, label %for.inc245

for.body61.lr.ph:                                 ; preds = %for.cond59.preheader
  %arrayidx65 = getelementptr inbounds %struct.storable_picture** %19, i64 %indvars.iv1274
  %27 = load %struct.storable_picture** %arrayidx65, align 8, !tbaa !0
  %poc66 = getelementptr inbounds %struct.storable_picture* %27, i64 0, i32 1
  %.pre1294 = load i32* %poc66, align 4, !tbaa !3
  br label %for.body61

for.body61:                                       ; preds = %for.body61.lr.ph, %for.inc242
  %indvars.iv1272 = phi i64 [ 0, %for.body61.lr.ph ], [ %indvars.iv.next1273, %for.inc242 ]
  %arrayidx63 = getelementptr inbounds %struct.storable_picture** %18, i64 %indvars.iv1272
  %28 = load %struct.storable_picture** %arrayidx63, align 8, !tbaa !0
  %poc = getelementptr inbounds %struct.storable_picture* %28, i64 0, i32 1
  %29 = load i32* %poc, align 4, !tbaa !3
  %sub67 = sub nsw i32 %29, %.pre1294
  %cmp68 = icmp slt i32 %sub67, -128
  br i1 %cmp68, label %cond.end90, label %cond.false70

cond.false70:                                     ; preds = %for.body61
  %cmp78 = icmp sgt i32 %sub67, 127
  %.sub67 = select i1 %cmp78, i32 127, i32 %sub67
  br label %cond.end90

cond.end90:                                       ; preds = %for.body61, %cond.false70
  %cond91 = phi i32 [ %.sub67, %cond.false70 ], [ -128, %for.body61 ]
  %30 = load i32* %poc92, align 4, !tbaa !3
  %sub96 = sub nsw i32 %30, %.pre1294
  %cmp97 = icmp slt i32 %sub96, -128
  br i1 %cmp97, label %cond.end115, label %cond.false99

cond.false99:                                     ; preds = %cond.end90
  %cmp105 = icmp sgt i32 %sub96, 127
  %.sub96 = select i1 %cmp105, i32 127, i32 %sub96
  br label %cond.end115

cond.end115:                                      ; preds = %cond.false99, %cond.end90
  %cond116 = phi i32 [ -128, %cond.end90 ], [ %.sub96, %cond.false99 ]
  %cmp120 = icmp eq i32 %cond91, 0
  %div = sdiv i32 %cond91, 2
  %ispos = icmp sgt i32 %cond91, -2
  %neg = sub i32 0, %div
  %31 = select i1 %ispos, i32 %div, i32 %neg
  %add155 = add nsw i32 %31, 16384
  br label %for.body119

for.body119:                                      ; preds = %for.inc239, %cond.end115
  %indvars.iv1268 = phi i64 [ 0, %cond.end115 ], [ %indvars.iv.next1269, %for.inc239 ]
  br i1 %cmp120, label %if.then121, label %if.else154

if.then121:                                       ; preds = %for.body119
  %arrayidx123 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 %indvars.iv1268
  %32 = load i32* %arrayidx123, align 4, !tbaa !3
  %arrayidx130 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv1274, i64 %indvars.iv1272, i64 %indvars.iv1268
  store i32 %32, i32* %arrayidx130, align 4, !tbaa !3
  %arrayidx139 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv1274, i64 %indvars.iv1272, i64 %indvars.iv1268
  store i32 %32, i32* %arrayidx139, align 4, !tbaa !3
  br label %for.inc239

if.else154:                                       ; preds = %for.body119
  %div156 = sdiv i32 %add155, %cond91
  %mul = mul nsw i32 %div156, %cond116
  %add157 = add nsw i32 %mul, 32
  %shr = ashr i32 %add157, 6
  %cmp158 = icmp slt i32 %shr, -1024
  br i1 %cmp158, label %cond.end172.thread, label %cond.end172

cond.end172.thread:                               ; preds = %if.else154
  %arrayidx1811119 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv1274, i64 %indvars.iv1272, i64 %indvars.iv1268
  store i32 -256, i32* %arrayidx1811119, align 4, !tbaa !3
  br label %if.then198

cond.end172:                                      ; preds = %if.else154
  %cmp164 = icmp sgt i32 %shr, 1023
  %phitmp1115 = ashr i32 %add157, 8
  %.phitmp1115 = select i1 %cmp164, i32 255, i32 %phitmp1115
  %arrayidx181 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv1274, i64 %indvars.iv1272, i64 %indvars.iv1268
  store i32 %.phitmp1115, i32* %arrayidx181, align 4, !tbaa !3
  %.phitmp1115.off = add i32 %.phitmp1115, 64
  %33 = icmp ugt i32 %.phitmp1115.off, 192
  br i1 %33, label %if.then198, label %if.end208

if.then198:                                       ; preds = %cond.end172, %cond.end172.thread
  %arrayidx1811126 = phi i32* [ %arrayidx1811119, %cond.end172.thread ], [ %arrayidx181, %cond.end172 ]
  %arrayidx200 = getelementptr inbounds [3 x i32]* %default_weight, i64 0, i64 %indvars.iv1268
  %34 = load i32* %arrayidx200, align 4, !tbaa !3
  store i32 %34, i32* %arrayidx1811126, align 4, !tbaa !3
  br label %if.end208

if.end208:                                        ; preds = %cond.end172, %if.then198
  %35 = phi i32 [ %.phitmp1115, %cond.end172 ], [ %34, %if.then198 ]
  %sub216 = sub nsw i32 64, %35
  %arrayidx223 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv1274, i64 %indvars.iv1272, i64 %indvars.iv1268
  store i32 %sub216, i32* %arrayidx223, align 4, !tbaa !3
  br label %for.inc239

for.inc239:                                       ; preds = %if.then121, %if.end208
  %indvars.iv.next1269 = add i64 %indvars.iv1268, 1
  %lftr.wideiv1270 = trunc i64 %indvars.iv.next1269 to i32
  %exitcond1271 = icmp eq i32 %lftr.wideiv1270, 3
  br i1 %exitcond1271, label %for.inc242, label %for.body119

for.inc242:                                       ; preds = %for.inc239
  %indvars.iv.next1273 = add i64 %indvars.iv1272, 1
  %36 = trunc i64 %indvars.iv.next1273 to i32
  %cmp60 = icmp slt i32 %36, %.pre1293
  br i1 %cmp60, label %for.body61, label %for.inc245

for.inc245:                                       ; preds = %for.inc242, %for.cond59.preheader
  %indvars.iv.next1275 = add i64 %indvars.iv1274, 1
  %37 = trunc i64 %indvars.iv.next1275 to i32
  %cmp57 = icmp slt i32 %37, %17
  br i1 %cmp57, label %for.cond59.preheader, label %for.end247

for.end247:                                       ; preds = %for.inc245, %for.cond56.preheader
  %38 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %cmp249 = icmp eq i32 %38, 2
  br i1 %cmp249, label %for.cond251.preheader, label %for.cond432.preheader

for.cond432.preheader:                            ; preds = %for.end247
  %height4331197 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %39 = load i32* %height4331197, align 4, !tbaa !3
  %cmp4341198 = icmp sgt i32 %39, 0
  %width4371193 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  br i1 %cmp4341198, label %for.cond436.preheader.lr.ph, label %for.cond451.preheader

for.cond436.preheader.lr.ph:                      ; preds = %for.cond432.preheader
  %40 = load i32* %width4371193, align 4, !tbaa !3
  %cmp4381194 = icmp sgt i32 %40, 0
  %41 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond436.preheader

for.cond251.preheader:                            ; preds = %for.end247
  br i1 %cmp571205, label %for.cond254.preheader.lr.ph, label %for.cond306.preheader

for.cond254.preheader.lr.ph:                      ; preds = %for.cond251.preheader
  %42 = load i32***** @wbp_weight, align 8, !tbaa !0
  %arrayidx275 = getelementptr inbounds i32**** %42, i64 1
  %.pre = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  br label %for.cond254.preheader

for.cond254.preheader:                            ; preds = %for.cond254.preheader.lr.ph, %for.inc299
  %43 = phi i32 [ %17, %for.cond254.preheader.lr.ph ], [ %56, %for.inc299 ]
  %44 = phi i32 [ %17, %for.cond254.preheader.lr.ph ], [ %57, %for.inc299 ]
  %45 = phi i32 [ %.pre, %for.cond254.preheader.lr.ph ], [ %58, %for.inc299 ]
  %indvars.iv1229 = phi i64 [ 0, %for.cond254.preheader.lr.ph ], [ %indvars.iv.next1230, %for.inc299 ]
  %cmp2551151 = icmp sgt i32 %45, 0
  br i1 %cmp2551151, label %for.cond257.preheader.lr.ph, label %for.inc299

for.cond257.preheader.lr.ph:                      ; preds = %for.cond254.preheader
  %46 = load i32**** %arrayidx275, align 8, !tbaa !0
  %arrayidx276 = getelementptr inbounds i32*** %46, i64 %indvars.iv1229
  %47 = load i32*** %arrayidx276, align 8, !tbaa !0
  %48 = load i32**** %42, align 8, !tbaa !0
  %arrayidx290 = getelementptr inbounds i32*** %48, i64 %indvars.iv1229
  %49 = load i32*** %arrayidx290, align 8, !tbaa !0
  br label %for.cond257.preheader

for.cond257.preheader:                            ; preds = %for.cond257.preheader.lr.ph, %for.inc296
  %indvars.iv1227 = phi i64 [ 0, %for.cond257.preheader.lr.ph ], [ %indvars.iv.next1228, %for.inc296 ]
  %arrayidx277 = getelementptr inbounds i32** %47, i64 %indvars.iv1227
  %50 = load i32** %arrayidx277, align 8, !tbaa !0
  %arrayidx291 = getelementptr inbounds i32** %49, i64 %indvars.iv1227
  %51 = load i32** %arrayidx291, align 8, !tbaa !0
  br label %for.body259

for.body259:                                      ; preds = %for.body259, %for.cond257.preheader
  %indvars.iv1223 = phi i64 [ 0, %for.cond257.preheader ], [ %indvars.iv.next1224, %for.body259 ]
  %arrayidx271 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv1229, i64 %indvars.iv1227, i64 %indvars.iv1223
  %52 = load i32* %arrayidx271, align 4, !tbaa !3
  %arrayidx278 = getelementptr inbounds i32* %50, i64 %indvars.iv1223
  store i32 %52, i32* %arrayidx278, align 4, !tbaa !3
  %arrayidx285 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv1229, i64 %indvars.iv1227, i64 %indvars.iv1223
  %53 = load i32* %arrayidx285, align 4, !tbaa !3
  %arrayidx292 = getelementptr inbounds i32* %51, i64 %indvars.iv1223
  store i32 %53, i32* %arrayidx292, align 4, !tbaa !3
  %indvars.iv.next1224 = add i64 %indvars.iv1223, 1
  %lftr.wideiv1225 = trunc i64 %indvars.iv.next1224 to i32
  %exitcond1226 = icmp eq i32 %lftr.wideiv1225, 3
  br i1 %exitcond1226, label %for.inc296, label %for.body259

for.inc296:                                       ; preds = %for.body259
  %indvars.iv.next1228 = add i64 %indvars.iv1227, 1
  %54 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %55 = trunc i64 %indvars.iv.next1228 to i32
  %cmp255 = icmp slt i32 %55, %54
  br i1 %cmp255, label %for.cond257.preheader, label %for.cond254.for.inc299_crit_edge

for.cond254.for.inc299_crit_edge:                 ; preds = %for.inc296
  %.pre1290 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  br label %for.inc299

for.inc299:                                       ; preds = %for.cond254.for.inc299_crit_edge, %for.cond254.preheader
  %56 = phi i32 [ %.pre1290, %for.cond254.for.inc299_crit_edge ], [ %43, %for.cond254.preheader ]
  %57 = phi i32 [ %.pre1290, %for.cond254.for.inc299_crit_edge ], [ %44, %for.cond254.preheader ]
  %58 = phi i32 [ %54, %for.cond254.for.inc299_crit_edge ], [ %45, %for.cond254.preheader ]
  %indvars.iv.next1230 = add i64 %indvars.iv1229, 1
  %59 = trunc i64 %indvars.iv.next1230 to i32
  %cmp252 = icmp slt i32 %59, %57
  br i1 %cmp252, label %for.cond254.preheader, label %for.cond306.preheader

for.cond306.preheader:                            ; preds = %for.cond251.preheader, %for.inc299, %for.inc347.for.cond306.preheader_crit_edge
  %60 = phi i32 [ %.pre1295, %for.inc347.for.cond306.preheader_crit_edge ], [ %17, %for.cond251.preheader ], [ %56, %for.inc299 ]
  %indvars.iv1221 = phi i64 [ %indvars.iv.next1222, %for.inc347.for.cond306.preheader_crit_edge ], [ 0, %for.cond251.preheader ], [ 0, %for.inc299 ]
  %arrayidx308 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv1221
  %cmp3091147 = icmp sgt i32 %60, 0
  br i1 %cmp3091147, label %for.body310.lr.ph, label %for.inc347

for.body310.lr.ph:                                ; preds = %for.cond306.preheader
  %arrayidx314 = getelementptr inbounds i32*** %12, i64 %indvars.iv1221
  %61 = load i32*** %arrayidx314, align 8, !tbaa !0
  %arrayidx331 = getelementptr inbounds i32*** %13, i64 %indvars.iv1221
  %62 = load i32*** %arrayidx331, align 8, !tbaa !0
  br label %for.body310

for.cond350.preheader:                            ; preds = %for.inc347
  %63 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  %cmp3511145 = icmp sgt i32 %63, 0
  br i1 %cmp3511145, label %for.cond353.preheader.lr.ph, label %if.end840

for.cond353.preheader.lr.ph:                      ; preds = %for.cond350.preheader
  %64 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %cmp3541143 = icmp sgt i32 %64, 0
  %height1128 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %width1129 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %65 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !tbaa !0
  %66 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  br label %for.cond353.preheader

for.body310:                                      ; preds = %for.body310.lr.ph, %for.body310
  %indvars.iv1219 = phi i64 [ 0, %for.body310.lr.ph ], [ %indvars.iv.next1220, %for.body310 ]
  %arrayidx315 = getelementptr inbounds i32** %61, i64 %indvars.iv1219
  %67 = load i32** %arrayidx315, align 8, !tbaa !0
  store i32 %shl7, i32* %67, align 4, !tbaa !3
  %arrayidx322 = getelementptr inbounds i32* %67, i64 1
  store i32 %shl7, i32* %arrayidx322, align 4, !tbaa !3
  %arrayidx328 = getelementptr inbounds i32* %67, i64 2
  store i32 %shl7, i32* %arrayidx328, align 4, !tbaa !3
  %arrayidx332 = getelementptr inbounds i32** %62, i64 %indvars.iv1219
  %68 = load i32** %arrayidx332, align 8, !tbaa !0
  store i32 0, i32* %68, align 4, !tbaa !3
  %arrayidx338 = getelementptr inbounds i32* %68, i64 1
  store i32 0, i32* %arrayidx338, align 4, !tbaa !3
  %arrayidx343 = getelementptr inbounds i32* %68, i64 2
  store i32 0, i32* %arrayidx343, align 4, !tbaa !3
  %indvars.iv.next1220 = add i64 %indvars.iv1219, 1
  %69 = load i32* %arrayidx308, align 4, !tbaa !3
  %70 = trunc i64 %indvars.iv.next1220 to i32
  %cmp309 = icmp slt i32 %70, %69
  br i1 %cmp309, label %for.body310, label %for.inc347

for.inc347:                                       ; preds = %for.body310, %for.cond306.preheader
  %indvars.iv.next1222 = add i64 %indvars.iv1221, 1
  %71 = trunc i64 %indvars.iv.next1222 to i32
  %cmp304 = icmp slt i32 %71, %cond4
  br i1 %cmp304, label %for.inc347.for.cond306.preheader_crit_edge, label %for.cond350.preheader

for.inc347.for.cond306.preheader_crit_edge:       ; preds = %for.inc347
  %arrayidx308.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next1222
  %.pre1295 = load i32* %arrayidx308.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond306.preheader

for.cond353.preheader:                            ; preds = %for.cond353.preheader.lr.ph, %for.inc428
  %indvars.iv1217 = phi i64 [ 0, %for.cond353.preheader.lr.ph ], [ %indvars.iv.next1218, %for.inc428 ]
  br i1 %cmp3541143, label %for.cond356.preheader.lr.ph, label %for.inc428

for.cond356.preheader.lr.ph:                      ; preds = %for.cond353.preheader
  %72 = load i32* %height1128, align 4, !tbaa !3
  %73 = load i32* %width1129, align 4, !tbaa !3
  %mul3571130 = mul nsw i32 %73, %72
  %cmp3581131 = icmp sgt i32 %mul3571130, 0
  %add3831139 = shl i32 %72, 2
  %mul3841140 = add i32 %add3831139, 32
  %cmp3851141 = icmp sgt i32 %mul3841140, 0
  %arrayidx396 = getelementptr inbounds %struct.storable_picture** %65, i64 %indvars.iv1217
  br label %for.cond356.preheader

for.cond356.preheader:                            ; preds = %for.inc425, %for.cond356.preheader.lr.ph
  %indvars.iv1215 = phi i64 [ 0, %for.cond356.preheader.lr.ph ], [ %indvars.iv.next1216, %for.inc425 ]
  br i1 %cmp3581131, label %for.body359.lr.ph, label %for.cond381.loopexit

for.body359.lr.ph:                                ; preds = %for.cond356.preheader
  %74 = load %struct.storable_picture** %arrayidx396, align 8, !tbaa !0
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %74, i64 0, i32 26
  %75 = load i16** %imgY_11, align 8, !tbaa !0
  %imgY_11_w = getelementptr inbounds %struct.storable_picture* %74, i64 0, i32 27
  %76 = load i16** %imgY_11_w, align 8, !tbaa !0
  %arrayidx370 = getelementptr inbounds %struct.storable_picture** %66, i64 %indvars.iv1215
  %77 = load %struct.storable_picture** %arrayidx370, align 8, !tbaa !0
  %imgY_11371 = getelementptr inbounds %struct.storable_picture* %77, i64 0, i32 26
  %78 = load i16** %imgY_11371, align 8, !tbaa !0
  %imgY_11_w376 = getelementptr inbounds %struct.storable_picture* %77, i64 0, i32 27
  %79 = load i16** %imgY_11_w376, align 8, !tbaa !0
  br label %for.body359

for.body359:                                      ; preds = %for.body359.lr.ph, %for.body359
  %indvars.iv = phi i64 [ 0, %for.body359.lr.ph ], [ %indvars.iv.next, %for.body359 ]
  %arrayidx363 = getelementptr inbounds i16* %75, i64 %indvars.iv
  %80 = load i16* %arrayidx363, align 2, !tbaa !4
  %arrayidx367 = getelementptr inbounds i16* %76, i64 %indvars.iv
  store i16 %80, i16* %arrayidx367, align 2, !tbaa !4
  %arrayidx372 = getelementptr inbounds i16* %78, i64 %indvars.iv
  %81 = load i16* %arrayidx372, align 2, !tbaa !4
  %arrayidx377 = getelementptr inbounds i16* %79, i64 %indvars.iv
  store i16 %81, i16* %arrayidx377, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %82 = trunc i64 %indvars.iv.next to i32
  %cmp358 = icmp slt i32 %82, %mul3571130
  br i1 %cmp358, label %for.body359, label %for.cond381.loopexit

for.cond381.loopexit:                             ; preds = %for.body359, %for.cond356.preheader
  br i1 %cmp3851141, label %for.cond387.preheader.lr.ph, label %for.inc425

for.cond387.preheader.lr.ph:                      ; preds = %for.cond381.loopexit
  %add3891134 = shl i32 %73, 2
  %mul3901135 = add i32 %add3891134, 32
  %cmp3911136 = icmp sgt i32 %mul3901135, 0
  %add383 = shl i32 %72, 2
  %mul384 = add i32 %add383, 32
  %arrayidx408 = getelementptr inbounds %struct.storable_picture** %66, i64 %indvars.iv1215
  br label %for.cond387.preheader

for.cond387.preheader:                            ; preds = %for.cond387.preheader.lr.ph, %for.inc422
  %indvars.iv1213 = phi i64 [ 0, %for.cond387.preheader.lr.ph ], [ %indvars.iv.next1214, %for.inc422 ]
  br i1 %cmp3911136, label %for.body392.lr.ph, label %for.inc422

for.body392.lr.ph:                                ; preds = %for.cond387.preheader
  %83 = load %struct.storable_picture** %arrayidx396, align 8, !tbaa !0
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %83, i64 0, i32 28
  %84 = load i16*** %imgY_ups, align 8, !tbaa !0
  %arrayidx397 = getelementptr inbounds i16** %84, i64 %indvars.iv1213
  %85 = load i16** %arrayidx397, align 8, !tbaa !0
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture* %83, i64 0, i32 29
  %86 = load i16*** %imgY_ups_w, align 8, !tbaa !0
  %arrayidx403 = getelementptr inbounds i16** %86, i64 %indvars.iv1213
  %87 = load i16** %arrayidx403, align 8, !tbaa !0
  %88 = load %struct.storable_picture** %arrayidx408, align 8, !tbaa !0
  %imgY_ups409 = getelementptr inbounds %struct.storable_picture* %88, i64 0, i32 28
  %89 = load i16*** %imgY_ups409, align 8, !tbaa !0
  %arrayidx410 = getelementptr inbounds i16** %89, i64 %indvars.iv1213
  %90 = load i16** %arrayidx410, align 8, !tbaa !0
  %imgY_ups_w416 = getelementptr inbounds %struct.storable_picture* %88, i64 0, i32 29
  %91 = load i16*** %imgY_ups_w416, align 8, !tbaa !0
  %arrayidx417 = getelementptr inbounds i16** %91, i64 %indvars.iv1213
  %92 = load i16** %arrayidx417, align 8, !tbaa !0
  br label %for.body392

for.body392:                                      ; preds = %for.body392.lr.ph, %for.body392
  %indvars.iv1211 = phi i64 [ 0, %for.body392.lr.ph ], [ %indvars.iv.next1212, %for.body392 ]
  %arrayidx398 = getelementptr inbounds i16* %85, i64 %indvars.iv1211
  %93 = load i16* %arrayidx398, align 2, !tbaa !4
  %arrayidx404 = getelementptr inbounds i16* %87, i64 %indvars.iv1211
  store i16 %93, i16* %arrayidx404, align 2, !tbaa !4
  %arrayidx411 = getelementptr inbounds i16* %90, i64 %indvars.iv1211
  %94 = load i16* %arrayidx411, align 2, !tbaa !4
  %arrayidx418 = getelementptr inbounds i16* %92, i64 %indvars.iv1211
  store i16 %94, i16* %arrayidx418, align 2, !tbaa !4
  %indvars.iv.next1212 = add i64 %indvars.iv1211, 1
  %95 = trunc i64 %indvars.iv.next1212 to i32
  %cmp391 = icmp slt i32 %95, %mul3901135
  br i1 %cmp391, label %for.body392, label %for.inc422

for.inc422:                                       ; preds = %for.body392, %for.cond387.preheader
  %indvars.iv.next1214 = add i64 %indvars.iv1213, 1
  %96 = trunc i64 %indvars.iv.next1214 to i32
  %cmp385 = icmp slt i32 %96, %mul384
  br i1 %cmp385, label %for.cond387.preheader, label %for.inc425

for.inc425:                                       ; preds = %for.inc422, %for.cond381.loopexit
  %indvars.iv.next1216 = add i64 %indvars.iv1215, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1216 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %64
  br i1 %exitcond, label %for.inc428, label %for.cond356.preheader

for.inc428:                                       ; preds = %for.inc425, %for.cond353.preheader
  %indvars.iv.next1218 = add i64 %indvars.iv1217, 1
  %97 = trunc i64 %indvars.iv.next1218 to i32
  %cmp351 = icmp slt i32 %97, %63
  br i1 %cmp351, label %for.cond353.preheader, label %if.end840

for.cond436.preheader:                            ; preds = %for.cond436.preheader.lr.ph, %for.inc448
  %indvars.iv1266 = phi i64 [ 0, %for.cond436.preheader.lr.ph ], [ %indvars.iv.next1267, %for.inc448 ]
  %dc_org.01199 = phi double [ 0.000000e+00, %for.cond436.preheader.lr.ph ], [ %dc_org.1.lcssa, %for.inc448 ]
  br i1 %cmp4381194, label %for.body439.lr.ph, label %for.inc448

for.body439.lr.ph:                                ; preds = %for.cond436.preheader
  %arrayidx442 = getelementptr inbounds i16** %41, i64 %indvars.iv1266
  %98 = load i16** %arrayidx442, align 8, !tbaa !0
  br label %for.body439

for.cond451.preheader:                            ; preds = %for.cond432.preheader, %for.inc448
  %dc_org.0.lcssa = phi double [ %dc_org.1.lcssa, %for.inc448 ], [ 0.000000e+00, %for.cond432.preheader ]
  %conv502 = sitofp i32 %shl7 to double
  %mul503 = fmul double %dc_org.0.lcssa, %conv502
  %99 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !tbaa !0
  %100 = load i32* @wp_luma_round, align 4, !tbaa !3
  %101 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  br label %for.cond456.preheader

for.body439:                                      ; preds = %for.body439.lr.ph, %for.body439
  %indvars.iv1264 = phi i64 [ 0, %for.body439.lr.ph ], [ %indvars.iv.next1265, %for.body439 ]
  %dc_org.11195 = phi double [ %dc_org.01199, %for.body439.lr.ph ], [ %add444, %for.body439 ]
  %arrayidx443 = getelementptr inbounds i16* %98, i64 %indvars.iv1264
  %102 = load i16* %arrayidx443, align 2, !tbaa !4
  %conv = uitofp i16 %102 to double
  %add444 = fadd double %dc_org.11195, %conv
  %indvars.iv.next1265 = add i64 %indvars.iv1264, 1
  %103 = trunc i64 %indvars.iv.next1265 to i32
  %cmp438 = icmp slt i32 %103, %40
  br i1 %cmp438, label %for.body439, label %for.inc448

for.inc448:                                       ; preds = %for.body439, %for.cond436.preheader
  %dc_org.1.lcssa = phi double [ %dc_org.01199, %for.cond436.preheader ], [ %add444, %for.body439 ]
  %indvars.iv.next1267 = add i64 %indvars.iv1266, 1
  %104 = trunc i64 %indvars.iv.next1267 to i32
  %cmp434 = icmp slt i32 %104, %39
  br i1 %cmp434, label %for.cond436.preheader, label %for.cond451.preheader

for.cond456.preheader:                            ; preds = %for.inc682.for.cond456.preheader_crit_edge, %for.cond451.preheader
  %105 = phi i32 [ %17, %for.cond451.preheader ], [ %.pre1296, %for.inc682.for.cond456.preheader_crit_edge ]
  %indvars.iv1262 = phi i64 [ 0, %for.cond451.preheader ], [ %indvars.iv.next1263, %for.inc682.for.cond456.preheader_crit_edge ]
  %cmp4591190 = icmp sgt i32 %105, 0
  br i1 %cmp4591190, label %for.body461.lr.ph, label %for.inc682

for.body461.lr.ph:                                ; preds = %for.cond456.preheader
  %arrayidx468 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv1262
  %106 = load %struct.storable_picture*** %arrayidx468, align 8, !tbaa !0
  %107 = load i32* %width4371193, align 4, !tbaa !3
  %mul4791171 = mul nsw i32 %107, %39
  %cmp4801172 = icmp sgt i32 %mul4791171, 0
  %add6031186 = shl i32 %39, 2
  %mul6041187 = add i32 %add6031186, 32
  %cmp6051188 = icmp sgt i32 %mul6041187, 0
  br label %for.body461

for.body461:                                      ; preds = %for.body461.lr.ph, %for.inc679
  %indvars.iv1259 = phi i64 [ 0, %for.body461.lr.ph ], [ %indvars.iv.next1260, %for.inc679 ]
  %arrayidx469 = getelementptr inbounds %struct.storable_picture** %106, i64 %indvars.iv1259
  %108 = load %struct.storable_picture** %arrayidx469, align 8, !tbaa !0
  %imgY_11470 = getelementptr inbounds %struct.storable_picture* %108, i64 0, i32 26
  %109 = load i16** %imgY_11470, align 8, !tbaa !0
  %imgY_11_w475 = getelementptr inbounds %struct.storable_picture* %108, i64 0, i32 27
  %110 = load i16** %imgY_11_w475, align 8, !tbaa !0
  br i1 %cmp4801172, label %for.body482, label %if.end513

for.body482:                                      ; preds = %for.body461, %for.body482
  %indvars.iv1251 = phi i64 [ %indvars.iv.next1252, %for.body482 ], [ 0, %for.body461 ]
  %add4901174 = phi double [ %add490, %for.body482 ], [ 0.000000e+00, %for.body461 ]
  %arrayidx484 = getelementptr inbounds i16* %109, i64 %indvars.iv1251
  %111 = load i16* %arrayidx484, align 2, !tbaa !4
  %conv485 = uitofp i16 %111 to double
  %add490 = fadd double %add4901174, %conv485
  %indvars.iv.next1252 = add i64 %indvars.iv1251, 1
  %112 = trunc i64 %indvars.iv.next1252 to i32
  %cmp480 = icmp slt i32 %112, %mul4791171
  br i1 %cmp480, label %for.body482, label %for.end493

for.end493:                                       ; preds = %for.body482
  %cmp498 = fcmp une double %add490, 0.000000e+00
  br i1 %cmp498, label %if.then500, label %if.end513

if.then500:                                       ; preds = %for.end493
  %div508 = fdiv double %mul503, %add490
  %add509 = fadd double %div508, 5.000000e-01
  %conv510 = fptosi double %add509 to i32
  br label %if.end513

if.end513:                                        ; preds = %for.body461, %for.end493, %if.then500
  %wf_weight.0 = phi i32 [ %conv510, %if.then500 ], [ %shl7, %for.end493 ], [ %shl7, %for.body461 ]
  %wf_weight.0.off = add i32 %wf_weight.0, 64
  %113 = icmp ugt i32 %wf_weight.0.off, 191
  %.wf_weight.0 = select i1 %113, i32 %shl7, i32 %wf_weight.0
  %arrayidx526 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 0
  store i32 %.wf_weight.0, i32* %arrayidx526, align 4, !tbaa !3
  %arrayidx532 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 1
  store i32 %shl7, i32* %arrayidx532, align 4, !tbaa !3
  %arrayidx538 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 2
  store i32 %shl7, i32* %arrayidx538, align 4, !tbaa !3
  %arrayidx543 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 0
  store i32 0, i32* %arrayidx543, align 4, !tbaa !3
  %arrayidx548 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 1
  store i32 0, i32* %arrayidx548, align 4, !tbaa !3
  %arrayidx553 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1262, i64 %indvars.iv1259, i64 2
  store i32 0, i32* %arrayidx553, align 4, !tbaa !3
  br i1 %cmp4801172, label %for.body560.lr.ph, label %for.cond601.loopexit

for.body560.lr.ph:                                ; preds = %if.end513
  %mul557 = mul nsw i32 %107, %39
  br label %for.body560

for.body560:                                      ; preds = %for.body560.lr.ph, %cond.end593
  %indvars.iv1253 = phi i64 [ 0, %for.body560.lr.ph ], [ %indvars.iv.next1254, %cond.end593 ]
  %arrayidx562 = getelementptr inbounds i16* %109, i64 %indvars.iv1253
  %114 = load i16* %arrayidx562, align 2, !tbaa !4
  %conv563 = zext i16 %114 to i32
  %mul564 = mul nsw i32 %conv563, %.wf_weight.0
  %add565 = add nsw i32 %mul564, %100
  %shr566 = ashr i32 %add565, %101
  %cmp568 = icmp slt i32 %shr566, 0
  br i1 %cmp568, label %cond.end593, label %cond.false571

cond.false571:                                    ; preds = %for.body560
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %115 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %cmp579 = icmp sgt i32 %shr566, %115
  %.shr566 = select i1 %cmp579, i32 %115, i32 %shr566
  %phitmp1127 = trunc i32 %.shr566 to i16
  br label %cond.end593

cond.end593:                                      ; preds = %cond.false571, %for.body560
  %cond594 = phi i16 [ 0, %for.body560 ], [ %phitmp1127, %cond.false571 ]
  %arrayidx597 = getelementptr inbounds i16* %110, i64 %indvars.iv1253
  store i16 %cond594, i16* %arrayidx597, align 2, !tbaa !4
  %indvars.iv.next1254 = add i64 %indvars.iv1253, 1
  %116 = trunc i64 %indvars.iv.next1254 to i32
  %cmp558 = icmp slt i32 %116, %mul557
  br i1 %cmp558, label %for.body560, label %for.cond601.loopexit

for.cond601.loopexit:                             ; preds = %cond.end593, %if.end513
  br i1 %cmp6051188, label %for.cond608.preheader.lr.ph, label %for.inc679

for.cond608.preheader.lr.ph:                      ; preds = %for.cond601.loopexit
  %add6101181 = shl i32 %107, 2
  %mul6111182 = add i32 %add6101181, 32
  %cmp6121183 = icmp sgt i32 %mul6111182, 0
  %add603 = shl i32 %39, 2
  %mul604 = add i32 %add603, 32
  %arrayidx618 = getelementptr inbounds %struct.storable_picture** %99, i64 %indvars.iv1259
  br label %for.cond608.preheader

for.cond608.preheader:                            ; preds = %for.cond608.preheader.lr.ph, %for.inc676
  %indvars.iv1257 = phi i64 [ 0, %for.cond608.preheader.lr.ph ], [ %indvars.iv.next1258, %for.inc676 ]
  br i1 %cmp6121183, label %for.body614.lr.ph, label %for.inc676

for.body614.lr.ph:                                ; preds = %for.cond608.preheader
  %117 = load %struct.storable_picture** %arrayidx618, align 8, !tbaa !0
  %imgY_ups619 = getelementptr inbounds %struct.storable_picture* %117, i64 0, i32 28
  %118 = load i16*** %imgY_ups619, align 8, !tbaa !0
  %arrayidx620 = getelementptr inbounds i16** %118, i64 %indvars.iv1257
  %119 = load i16** %arrayidx620, align 8, !tbaa !0
  %imgY_ups_w670 = getelementptr inbounds %struct.storable_picture* %117, i64 0, i32 29
  %120 = load i16*** %imgY_ups_w670, align 8, !tbaa !0
  %arrayidx671 = getelementptr inbounds i16** %120, i64 %indvars.iv1257
  %121 = load i16** %arrayidx671, align 8, !tbaa !0
  br label %for.body614

for.body614:                                      ; preds = %for.body614.lr.ph, %cond.end663
  %indvars.iv1255 = phi i64 [ 0, %for.body614.lr.ph ], [ %indvars.iv.next1256, %cond.end663 ]
  %arrayidx621 = getelementptr inbounds i16* %119, i64 %indvars.iv1255
  %122 = load i16* %arrayidx621, align 2, !tbaa !4
  %conv622 = zext i16 %122 to i32
  %mul623 = mul nsw i32 %conv622, %.wf_weight.0
  %add624 = add nsw i32 %mul623, %100
  %shr625 = ashr i32 %add624, %101
  %cmp627 = icmp slt i32 %shr625, 0
  br i1 %cmp627, label %cond.end663, label %cond.false630

cond.false630:                                    ; preds = %for.body614
  %max_imgpel_value643 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %123 = load i32* %max_imgpel_value643, align 4, !tbaa !3
  %cmp644 = icmp sgt i32 %shr625, %123
  %.shr625 = select i1 %cmp644, i32 %123, i32 %shr625
  %phitmp = trunc i32 %.shr625 to i16
  br label %cond.end663

cond.end663:                                      ; preds = %cond.false630, %for.body614
  %cond664 = phi i16 [ 0, %for.body614 ], [ %phitmp, %cond.false630 ]
  %arrayidx672 = getelementptr inbounds i16* %121, i64 %indvars.iv1255
  store i16 %cond664, i16* %arrayidx672, align 2, !tbaa !4
  %indvars.iv.next1256 = add i64 %indvars.iv1255, 1
  %124 = trunc i64 %indvars.iv.next1256 to i32
  %cmp612 = icmp slt i32 %124, %mul6111182
  br i1 %cmp612, label %for.body614, label %for.inc676

for.inc676:                                       ; preds = %cond.end663, %for.cond608.preheader
  %indvars.iv.next1258 = add i64 %indvars.iv1257, 1
  %125 = trunc i64 %indvars.iv.next1258 to i32
  %cmp605 = icmp slt i32 %125, %mul604
  br i1 %cmp605, label %for.cond608.preheader, label %for.inc679

for.inc679:                                       ; preds = %for.inc676, %for.cond601.loopexit
  %indvars.iv.next1260 = add i64 %indvars.iv1259, 1
  %126 = trunc i64 %indvars.iv.next1260 to i32
  %cmp459 = icmp slt i32 %126, %105
  br i1 %cmp459, label %for.body461, label %for.inc682

for.inc682:                                       ; preds = %for.inc679, %for.cond456.preheader
  %indvars.iv.next1263 = add i64 %indvars.iv1262, 1
  %127 = trunc i64 %indvars.iv.next1263 to i32
  %cmp453 = icmp slt i32 %127, %cond4
  br i1 %cmp453, label %for.inc682.for.cond456.preheader_crit_edge, label %for.end684

for.inc682.for.cond456.preheader_crit_edge:       ; preds = %for.inc682
  %arrayidx458.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next1263
  %.pre1296 = load i32* %arrayidx458.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond456.preheader

for.end684:                                       ; preds = %for.inc682
  %cmp686 = icmp eq i32 %38, 1
  br i1 %cmp686, label %for.cond694.preheader, label %for.cond743.preheader

for.cond694.preheader:                            ; preds = %for.end684, %for.inc734.for.cond694.preheader_crit_edge
  %128 = phi i32 [ %.pre1297, %for.inc734.for.cond694.preheader_crit_edge ], [ %17, %for.end684 ]
  %indvars.iv1245 = phi i64 [ %indvars.iv.next1246, %for.inc734.for.cond694.preheader_crit_edge ], [ 0, %for.end684 ]
  %arrayidx696 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv1245
  %cmp6971162 = icmp sgt i32 %128, 0
  br i1 %cmp6971162, label %for.cond700.preheader.lr.ph, label %for.inc734

for.cond700.preheader.lr.ph:                      ; preds = %for.cond694.preheader
  %arrayidx713 = getelementptr inbounds i32*** %12, i64 %indvars.iv1245
  %129 = load i32*** %arrayidx713, align 8, !tbaa !0
  %arrayidx725 = getelementptr inbounds i32*** %13, i64 %indvars.iv1245
  %130 = load i32*** %arrayidx725, align 8, !tbaa !0
  br label %for.cond700.preheader

for.cond789.preheader:                            ; preds = %for.inc785, %for.inc734
  %131 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  %cmp7901159 = icmp sgt i32 %131, 0
  br i1 %cmp7901159, label %for.cond793.preheader.lr.ph, label %if.end840

for.cond793.preheader.lr.ph:                      ; preds = %for.cond789.preheader
  %132 = load i32***** @wbp_weight, align 8, !tbaa !0
  %arrayidx821 = getelementptr inbounds i32*** %12, i64 1
  %arrayidx827 = getelementptr inbounds i32**** %132, i64 1
  %.pre1291 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  br label %for.cond793.preheader

for.cond700.preheader:                            ; preds = %for.cond700.preheader.lr.ph, %for.inc731
  %indvars.iv1243 = phi i64 [ 0, %for.cond700.preheader.lr.ph ], [ %indvars.iv.next1244, %for.inc731 ]
  %arrayidx714 = getelementptr inbounds i32** %129, i64 %indvars.iv1243
  %133 = load i32** %arrayidx714, align 8, !tbaa !0
  %arrayidx726 = getelementptr inbounds i32** %130, i64 %indvars.iv1243
  %134 = load i32** %arrayidx726, align 8, !tbaa !0
  br label %for.body703

for.body703:                                      ; preds = %for.body703, %for.cond700.preheader
  %indvars.iv1239 = phi i64 [ 0, %for.cond700.preheader ], [ %indvars.iv.next1240, %for.body703 ]
  %arrayidx709 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1245, i64 %indvars.iv1243, i64 %indvars.iv1239
  %135 = load i32* %arrayidx709, align 4, !tbaa !3
  %arrayidx715 = getelementptr inbounds i32* %133, i64 %indvars.iv1239
  store i32 %135, i32* %arrayidx715, align 4, !tbaa !3
  %arrayidx721 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1245, i64 %indvars.iv1243, i64 %indvars.iv1239
  %136 = load i32* %arrayidx721, align 4, !tbaa !3
  %arrayidx727 = getelementptr inbounds i32* %134, i64 %indvars.iv1239
  store i32 %136, i32* %arrayidx727, align 4, !tbaa !3
  %indvars.iv.next1240 = add i64 %indvars.iv1239, 1
  %lftr.wideiv1241 = trunc i64 %indvars.iv.next1240 to i32
  %exitcond1242 = icmp eq i32 %lftr.wideiv1241, 3
  br i1 %exitcond1242, label %for.inc731, label %for.body703

for.inc731:                                       ; preds = %for.body703
  %indvars.iv.next1244 = add i64 %indvars.iv1243, 1
  %137 = load i32* %arrayidx696, align 4, !tbaa !3
  %138 = trunc i64 %indvars.iv.next1244 to i32
  %cmp697 = icmp slt i32 %138, %137
  br i1 %cmp697, label %for.cond700.preheader, label %for.inc734

for.inc734:                                       ; preds = %for.inc731, %for.cond694.preheader
  %indvars.iv.next1246 = add i64 %indvars.iv1245, 1
  %139 = trunc i64 %indvars.iv.next1246 to i32
  %cmp691 = icmp slt i32 %139, %cond4
  br i1 %cmp691, label %for.inc734.for.cond694.preheader_crit_edge, label %for.cond789.preheader

for.inc734.for.cond694.preheader_crit_edge:       ; preds = %for.inc734
  %arrayidx696.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next1246
  %.pre1297 = load i32* %arrayidx696.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond694.preheader

for.cond743.preheader:                            ; preds = %for.end684, %for.inc785.for.cond743.preheader_crit_edge
  %140 = phi i32 [ %.pre1298, %for.inc785.for.cond743.preheader_crit_edge ], [ %17, %for.end684 ]
  %indvars.iv1249 = phi i64 [ %indvars.iv.next1250, %for.inc785.for.cond743.preheader_crit_edge ], [ 0, %for.end684 ]
  %arrayidx745 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv1249
  %cmp7461165 = icmp sgt i32 %140, 0
  br i1 %cmp7461165, label %for.body748.lr.ph, label %for.inc785

for.body748.lr.ph:                                ; preds = %for.cond743.preheader
  %arrayidx752 = getelementptr inbounds i32*** %12, i64 %indvars.iv1249
  %141 = load i32*** %arrayidx752, align 8, !tbaa !0
  %arrayidx769 = getelementptr inbounds i32*** %13, i64 %indvars.iv1249
  %142 = load i32*** %arrayidx769, align 8, !tbaa !0
  br label %for.body748

for.body748:                                      ; preds = %for.body748, %for.body748.lr.ph
  %indvars.iv1247 = phi i64 [ 0, %for.body748.lr.ph ], [ %indvars.iv.next1248, %for.body748 ]
  %143 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %shl749 = shl i32 1, %143
  %arrayidx753 = getelementptr inbounds i32** %141, i64 %indvars.iv1247
  %144 = load i32** %arrayidx753, align 8, !tbaa !0
  store i32 %shl749, i32* %144, align 4, !tbaa !3
  %145 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %shl755 = shl i32 1, %145
  %arrayidx760 = getelementptr inbounds i32* %144, i64 1
  store i32 %shl755, i32* %arrayidx760, align 4, !tbaa !3
  %146 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %shl761 = shl i32 1, %146
  %arrayidx766 = getelementptr inbounds i32* %144, i64 2
  store i32 %shl761, i32* %arrayidx766, align 4, !tbaa !3
  %arrayidx770 = getelementptr inbounds i32** %142, i64 %indvars.iv1247
  %147 = load i32** %arrayidx770, align 8, !tbaa !0
  store i32 0, i32* %147, align 4, !tbaa !3
  %arrayidx776 = getelementptr inbounds i32* %147, i64 1
  store i32 0, i32* %arrayidx776, align 4, !tbaa !3
  %arrayidx781 = getelementptr inbounds i32* %147, i64 2
  store i32 0, i32* %arrayidx781, align 4, !tbaa !3
  %indvars.iv.next1248 = add i64 %indvars.iv1247, 1
  %148 = load i32* %arrayidx745, align 4, !tbaa !3
  %149 = trunc i64 %indvars.iv.next1248 to i32
  %cmp746 = icmp slt i32 %149, %148
  br i1 %cmp746, label %for.body748, label %for.inc785

for.inc785:                                       ; preds = %for.body748, %for.cond743.preheader
  %indvars.iv.next1250 = add i64 %indvars.iv1249, 1
  %150 = trunc i64 %indvars.iv.next1250 to i32
  %cmp740 = icmp slt i32 %150, %cond4
  br i1 %cmp740, label %for.inc785.for.cond743.preheader_crit_edge, label %for.cond789.preheader

for.inc785.for.cond743.preheader_crit_edge:       ; preds = %for.inc785
  %arrayidx745.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next1250
  %.pre1298 = load i32* %arrayidx745.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond743.preheader

for.cond793.preheader:                            ; preds = %for.cond793.preheader.lr.ph, %for.inc837
  %151 = phi i32 [ %131, %for.cond793.preheader.lr.ph ], [ %167, %for.inc837 ]
  %152 = phi i32 [ %.pre1291, %for.cond793.preheader.lr.ph ], [ %168, %for.inc837 ]
  %indvars.iv1237 = phi i64 [ 0, %for.cond793.preheader.lr.ph ], [ %indvars.iv.next1238, %for.inc837 ]
  %cmp7941156 = icmp sgt i32 %152, 0
  br i1 %cmp7941156, label %for.cond797.preheader.lr.ph, label %for.inc837

for.cond797.preheader.lr.ph:                      ; preds = %for.cond793.preheader
  %153 = load i32*** %12, align 8, !tbaa !0
  %arrayidx810 = getelementptr inbounds i32** %153, i64 %indvars.iv1237
  %154 = load i32** %arrayidx810, align 8, !tbaa !0
  %155 = load i32**** %132, align 8, !tbaa !0
  %arrayidx816 = getelementptr inbounds i32*** %155, i64 %indvars.iv1237
  %156 = load i32*** %arrayidx816, align 8, !tbaa !0
  %157 = load i32*** %arrayidx821, align 8, !tbaa !0
  %158 = load i32**** %arrayidx827, align 8, !tbaa !0
  %arrayidx828 = getelementptr inbounds i32*** %158, i64 %indvars.iv1237
  %159 = load i32*** %arrayidx828, align 8, !tbaa !0
  br label %for.cond797.preheader

for.cond797.preheader:                            ; preds = %for.cond797.preheader.lr.ph, %for.inc834
  %indvars.iv1235 = phi i64 [ 0, %for.cond797.preheader.lr.ph ], [ %indvars.iv.next1236, %for.inc834 ]
  %arrayidx817 = getelementptr inbounds i32** %156, i64 %indvars.iv1235
  %160 = load i32** %arrayidx817, align 8, !tbaa !0
  %arrayidx822 = getelementptr inbounds i32** %157, i64 %indvars.iv1235
  %161 = load i32** %arrayidx822, align 8, !tbaa !0
  %arrayidx829 = getelementptr inbounds i32** %159, i64 %indvars.iv1235
  %162 = load i32** %arrayidx829, align 8, !tbaa !0
  br label %for.body800

for.body800:                                      ; preds = %for.body800, %for.cond797.preheader
  %indvars.iv1231 = phi i64 [ 0, %for.cond797.preheader ], [ %indvars.iv.next1232, %for.body800 ]
  %arrayidx811 = getelementptr inbounds i32* %154, i64 %indvars.iv1231
  %163 = load i32* %arrayidx811, align 4, !tbaa !3
  %arrayidx818 = getelementptr inbounds i32* %160, i64 %indvars.iv1231
  store i32 %163, i32* %arrayidx818, align 4, !tbaa !3
  %arrayidx823 = getelementptr inbounds i32* %161, i64 %indvars.iv1231
  %164 = load i32* %arrayidx823, align 4, !tbaa !3
  %arrayidx830 = getelementptr inbounds i32* %162, i64 %indvars.iv1231
  store i32 %164, i32* %arrayidx830, align 4, !tbaa !3
  %indvars.iv.next1232 = add i64 %indvars.iv1231, 1
  %lftr.wideiv1233 = trunc i64 %indvars.iv.next1232 to i32
  %exitcond1234 = icmp eq i32 %lftr.wideiv1233, 3
  br i1 %exitcond1234, label %for.inc834, label %for.body800

for.inc834:                                       ; preds = %for.body800
  %indvars.iv.next1236 = add i64 %indvars.iv1235, 1
  %165 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %166 = trunc i64 %indvars.iv.next1236 to i32
  %cmp794 = icmp slt i32 %166, %165
  br i1 %cmp794, label %for.cond797.preheader, label %for.cond793.for.inc837_crit_edge

for.cond793.for.inc837_crit_edge:                 ; preds = %for.inc834
  %.pre1292 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  br label %for.inc837

for.inc837:                                       ; preds = %for.cond793.for.inc837_crit_edge, %for.cond793.preheader
  %167 = phi i32 [ %.pre1292, %for.cond793.for.inc837_crit_edge ], [ %151, %for.cond793.preheader ]
  %168 = phi i32 [ %165, %for.cond793.for.inc837_crit_edge ], [ %152, %for.cond793.preheader ]
  %indvars.iv.next1238 = add i64 %indvars.iv1237, 1
  %169 = trunc i64 %indvars.iv.next1238 to i32
  %cmp790 = icmp slt i32 %169, %167
  br i1 %cmp790, label %for.cond793.preheader, label %if.end840

if.end840:                                        ; preds = %for.cond789.preheader, %for.inc837, %for.cond350.preheader, %for.inc428
  call void @llvm.lifetime.end(i64 16200, i8* %9) #1
  call void @llvm.lifetime.end(i64 1080, i8* %8) #1
  call void @llvm.lifetime.end(i64 1080, i8* %7) #1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @test_wp_P_slice(i32 %select_offset) #0 {
entry:
  %weight = alloca [2 x [15 x [3 x i32]]], align 16
  %offset = alloca [2 x [15 x [3 x i32]]], align 16
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem351 = shl i32 %2, 1
  %5 = and i32 %rem351, 2
  %6 = or i32 %5, 4
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 2, %land.lhs.true ], [ 2, %entry ]
  %7 = bitcast [2 x [15 x [3 x i32]]]* %weight to i8*
  call void @llvm.lifetime.start(i64 360, i8* %7) #1
  %8 = bitcast [2 x [15 x [3 x i32]]]* %offset to i8*
  call void @llvm.lifetime.start(i64 360, i8* %8) #1
  store i32 5, i32* @luma_log_weight_denom, align 4, !tbaa !3
  store i32 5, i32* @chroma_log_weight_denom, align 4, !tbaa !3
  store i32 16, i32* @wp_luma_round, align 4, !tbaa !3
  store i32 16, i32* @wp_chroma_round, align 4, !tbaa !3
  %9 = load i32**** @wp_weight, align 8, !tbaa !0
  %10 = load i32**** @wp_offset, align 8, !tbaa !0
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %cond.end, %for.inc44
  %indvars.iv402 = phi i64 [ 0, %cond.end ], [ %indvars.iv.next403, %for.inc44 ]
  %arrayidx11 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv402
  %11 = load i32* %arrayidx11, align 4, !tbaa !3
  %cmp12378 = icmp sgt i32 %11, 0
  br i1 %cmp12378, label %for.cond14.preheader.lr.ph, label %for.inc44

for.cond14.preheader.lr.ph:                       ; preds = %for.cond9.preheader
  %arrayidx26 = getelementptr inbounds i32*** %9, i64 %indvars.iv402
  %12 = load i32*** %arrayidx26, align 8, !tbaa !0
  %arrayidx32 = getelementptr inbounds i32*** %10, i64 %indvars.iv402
  %13 = load i32*** %arrayidx32, align 8, !tbaa !0
  br label %for.cond14.preheader

for.cond47.preheader:                             ; preds = %for.inc44
  %height372 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %14 = load i32* %height372, align 4, !tbaa !3
  %cmp48373 = icmp sgt i32 %14, 0
  %width367 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  br i1 %cmp48373, label %for.cond50.preheader.lr.ph, label %for.cond64.preheader

for.cond50.preheader.lr.ph:                       ; preds = %for.cond47.preheader
  %15 = load i32* %width367, align 4, !tbaa !3
  %cmp51368 = icmp sgt i32 %15, 0
  %16 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond50.preheader

for.cond14.preheader:                             ; preds = %for.cond14.preheader.lr.ph, %for.inc41
  %indvars.iv400 = phi i64 [ 0, %for.cond14.preheader.lr.ph ], [ %indvars.iv.next401, %for.inc41 ]
  %scevgep = getelementptr [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv402, i64 %indvars.iv400, i64 0
  %scevgep399 = bitcast i32* %scevgep to i8*
  %arrayidx27 = getelementptr inbounds i32** %12, i64 %indvars.iv400
  %17 = load i32** %arrayidx27, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i32** %13, i64 %indvars.iv400
  %18 = load i32** %arrayidx33, align 8, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* %scevgep399, i8 0, i64 12, i32 4, i1 false)
  br label %for.body16

for.body16:                                       ; preds = %for.body16, %for.cond14.preheader
  %indvars.iv395 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next396, %for.body16 ]
  %arrayidx22 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv402, i64 %indvars.iv400, i64 %indvars.iv395
  store i32 32, i32* %arrayidx22, align 4, !tbaa !3
  %arrayidx28 = getelementptr inbounds i32* %17, i64 %indvars.iv395
  store i32 32, i32* %arrayidx28, align 4, !tbaa !3
  %arrayidx34 = getelementptr inbounds i32* %18, i64 %indvars.iv395
  store i32 0, i32* %arrayidx34, align 4, !tbaa !3
  %indvars.iv.next396 = add i64 %indvars.iv395, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next396 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc41, label %for.body16

for.inc41:                                        ; preds = %for.body16
  %indvars.iv.next401 = add i64 %indvars.iv400, 1
  %19 = load i32* %arrayidx11, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv.next401 to i32
  %cmp12 = icmp slt i32 %20, %19
  br i1 %cmp12, label %for.cond14.preheader, label %for.inc44

for.inc44:                                        ; preds = %for.inc41, %for.cond9.preheader
  %indvars.iv.next403 = add i64 %indvars.iv402, 1
  %21 = trunc i64 %indvars.iv.next403 to i32
  %cmp = icmp slt i32 %21, %cond4
  br i1 %cmp, label %for.cond9.preheader, label %for.cond47.preheader

for.cond50.preheader:                             ; preds = %for.cond50.preheader.lr.ph, %for.inc61
  %indvars.iv393 = phi i64 [ 0, %for.cond50.preheader.lr.ph ], [ %indvars.iv.next394, %for.inc61 ]
  %dc_org.0374 = phi double [ 0.000000e+00, %for.cond50.preheader.lr.ph ], [ %dc_org.1.lcssa, %for.inc61 ]
  br i1 %cmp51368, label %for.body52.lr.ph, label %for.inc61

for.body52.lr.ph:                                 ; preds = %for.cond50.preheader
  %arrayidx55 = getelementptr inbounds i16** %16, i64 %indvars.iv393
  %22 = load i16** %arrayidx55, align 8, !tbaa !0
  br label %for.body52

for.cond64.preheader:                             ; preds = %for.cond47.preheader, %for.inc61
  %dc_org.0.lcssa = phi double [ %dc_org.1.lcssa, %for.inc61 ], [ 0.000000e+00, %for.cond47.preheader ]
  %cmp100 = icmp eq i32 %select_offset, 0
  %mul108 = fmul double %dc_org.0.lcssa, 3.200000e+01
  br label %for.cond69.preheader

for.body52:                                       ; preds = %for.body52.lr.ph, %for.body52
  %indvars.iv391 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next392, %for.body52 ]
  %dc_org.1369 = phi double [ %dc_org.0374, %for.body52.lr.ph ], [ %add57, %for.body52 ]
  %arrayidx56 = getelementptr inbounds i16* %22, i64 %indvars.iv391
  %23 = load i16* %arrayidx56, align 2, !tbaa !4
  %conv = uitofp i16 %23 to double
  %add57 = fadd double %dc_org.1369, %conv
  %indvars.iv.next392 = add i64 %indvars.iv391, 1
  %24 = trunc i64 %indvars.iv.next392 to i32
  %cmp51 = icmp slt i32 %24, %15
  br i1 %cmp51, label %for.body52, label %for.inc61

for.inc61:                                        ; preds = %for.body52, %for.cond50.preheader
  %dc_org.1.lcssa = phi double [ %dc_org.0374, %for.cond50.preheader ], [ %add57, %for.body52 ]
  %indvars.iv.next394 = add i64 %indvars.iv393, 1
  %25 = trunc i64 %indvars.iv.next394 to i32
  %cmp48 = icmp slt i32 %25, %14
  br i1 %cmp48, label %for.cond50.preheader, label %for.cond64.preheader

for.cond69.preheader:                             ; preds = %for.cond64.preheader, %for.inc211
  %indvars.iv389 = phi i64 [ 0, %for.cond64.preheader ], [ %indvars.iv.next390, %for.inc211 ]
  %arrayidx71 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv389
  %26 = load i32* %arrayidx71, align 4, !tbaa !3
  %cmp72364 = icmp sgt i32 %26, 0
  br i1 %cmp72364, label %for.body74.lr.ph, label %for.inc211

for.body74.lr.ph:                                 ; preds = %for.cond69.preheader
  %arrayidx79 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv389
  %27 = load %struct.storable_picture*** %arrayidx79, align 8, !tbaa !0
  %28 = load i32* %width367, align 4, !tbaa !3
  %mul361 = mul nsw i32 %28, %14
  %cmp88362 = icmp sgt i32 %mul361, 0
  br label %for.body74

for.body74:                                       ; preds = %for.body74.lr.ph, %if.end197
  %indvars.iv387 = phi i64 [ 0, %for.body74.lr.ph ], [ %indvars.iv.next388, %if.end197 ]
  %arrayidx80 = getelementptr inbounds %struct.storable_picture** %27, i64 %indvars.iv387
  %29 = load %struct.storable_picture** %arrayidx80, align 8, !tbaa !0
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %29, i64 0, i32 26
  %30 = load i16** %imgY_11, align 8, !tbaa !0
  br i1 %cmp88362, label %for.body90, label %for.end99

for.body90:                                       ; preds = %for.body74, %for.body90
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %for.body90 ], [ 0, %for.body74 ]
  %31 = phi double [ %add96, %for.body90 ], [ 0.000000e+00, %for.body74 ]
  %arrayidx92 = getelementptr inbounds i16* %30, i64 %indvars.iv385
  %32 = load i16* %arrayidx92, align 2, !tbaa !4
  %conv93 = uitofp i16 %32 to double
  %add96 = fadd double %31, %conv93
  %indvars.iv.next386 = add i64 %indvars.iv385, 1
  %33 = trunc i64 %indvars.iv.next386 to i32
  %cmp88 = icmp slt i32 %33, %mul361
  br i1 %cmp88, label %for.body90, label %for.end99

for.end99:                                        ; preds = %for.body90, %for.body74
  %34 = phi double [ 0.000000e+00, %for.body74 ], [ %add96, %for.body90 ]
  br i1 %cmp100, label %if.then, label %if.else144

if.then:                                          ; preds = %for.end99
  %cmp104 = fcmp une double %34, 0.000000e+00
  br i1 %cmp104, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %if.then
  %arrayidx122 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 0
  store i32 32, i32* %arrayidx122, align 4, !tbaa !3
  br label %if.end197

if.end:                                           ; preds = %if.then
  %div = fdiv double %mul108, %34
  %add111 = fadd double %div, 5.000000e-01
  %conv112 = fptosi double %add111 to i32
  %arrayidx117 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 0
  store i32 %conv112, i32* %arrayidx117, align 4, !tbaa !3
  %phitmp = add i32 %conv112, 64
  %phitmp404 = icmp ugt i32 %phitmp, 191
  br i1 %phitmp404, label %if.then137, label %if.end197

if.then137:                                       ; preds = %if.end
  %arrayidx127 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 0
  store i32 32, i32* %arrayidx127, align 4, !tbaa !3
  br label %if.end197

if.else144:                                       ; preds = %for.end99
  %sub147 = fsub double %dc_org.0.lcssa, %34
  %conv151 = sitofp i32 %mul361 to double
  %div152 = fdiv double %sub147, %conv151
  %add153 = fadd double %div152, 5.000000e-01
  %conv154 = fptosi double %add153 to i32
  %arrayidx159 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 0
  store i32 %conv154, i32* %arrayidx159, align 4, !tbaa !3
  %cmp165 = icmp slt i32 %conv154, -128
  br i1 %cmp165, label %cond.end185, label %cond.false168

cond.false168:                                    ; preds = %if.else144
  %cmp174 = icmp sgt i32 %conv154, 127
  %.conv154 = select i1 %cmp174, i32 127, i32 %conv154
  br label %cond.end185

cond.end185:                                      ; preds = %cond.false168, %if.else144
  %cond186 = phi i32 [ -128, %if.else144 ], [ %.conv154, %cond.false168 ]
  store i32 %cond186, i32* %arrayidx159, align 4, !tbaa !3
  %arrayidx196 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 0
  store i32 32, i32* %arrayidx196, align 4, !tbaa !3
  br label %if.end197

if.end197:                                        ; preds = %if.end.thread, %if.end, %if.then137, %cond.end185
  %arrayidx202 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 1
  store i32 32, i32* %arrayidx202, align 4, !tbaa !3
  %arrayidx207 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv389, i64 %indvars.iv387, i64 2
  store i32 32, i32* %arrayidx207, align 4, !tbaa !3
  %indvars.iv.next388 = add i64 %indvars.iv387, 1
  %35 = trunc i64 %indvars.iv.next388 to i32
  %cmp72 = icmp slt i32 %35, %26
  br i1 %cmp72, label %for.body74, label %for.inc211

for.inc211:                                       ; preds = %if.end197, %for.cond69.preheader
  %indvars.iv.next390 = add i64 %indvars.iv389, 1
  %36 = trunc i64 %indvars.iv.next390 to i32
  %cmp66 = icmp slt i32 %36, %cond4
  br i1 %cmp66, label %for.cond69.preheader, label %for.cond219.preheader

for.cond219.preheader:                            ; preds = %for.inc211, %for.inc262
  %indvars.iv383 = phi i64 [ %indvars.iv.next384, %for.inc262 ], [ 0, %for.inc211 ]
  %arrayidx221 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv383
  %37 = load i32* %arrayidx221, align 4, !tbaa !3
  %cmp222355 = icmp sgt i32 %37, 0
  br i1 %cmp222355, label %for.cond225.preheader, label %for.inc262

for.cond225.preheader:                            ; preds = %for.cond219.preheader, %for.inc255
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.inc255 ], [ 0, %for.cond219.preheader ]
  br label %for.body228

for.cond225:                                      ; preds = %lor.lhs.false237
  %38 = trunc i64 %indvars.iv.next to i32
  %cmp226 = icmp slt i32 %38, 3
  br i1 %cmp226, label %for.body228, label %for.inc255

for.body228:                                      ; preds = %for.cond225.preheader, %for.cond225
  %indvars.iv = phi i64 [ 0, %for.cond225.preheader ], [ %indvars.iv.next, %for.cond225 ]
  %arrayidx234 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv383, i64 %indvars.iv381, i64 %indvars.iv
  %39 = load i32* %arrayidx234, align 4, !tbaa !3
  %cmp235 = icmp eq i32 %39, 32
  br i1 %cmp235, label %lor.lhs.false237, label %for.end264

lor.lhs.false237:                                 ; preds = %for.body228
  %arrayidx243 = getelementptr inbounds [2 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv383, i64 %indvars.iv381, i64 %indvars.iv
  %40 = load i32* %arrayidx243, align 4, !tbaa !3
  %cmp244 = icmp eq i32 %40, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp244, label %for.cond225, label %for.end264

for.inc255:                                       ; preds = %for.cond225
  %indvars.iv.next382 = add i64 %indvars.iv381, 1
  %41 = trunc i64 %indvars.iv.next382 to i32
  %cmp222 = icmp slt i32 %41, %37
  br i1 %cmp222, label %for.cond225.preheader, label %for.inc262

for.inc262:                                       ; preds = %for.inc255, %for.cond219.preheader
  %indvars.iv.next384 = add i64 %indvars.iv383, 1
  %42 = trunc i64 %indvars.iv.next384 to i32
  %cmp216 = icmp slt i32 %42, %cond4
  br i1 %cmp216, label %for.cond219.preheader, label %for.end264

for.end264:                                       ; preds = %for.inc262, %for.body228, %lor.lhs.false237
  %perform_wp.4 = phi i32 [ 1, %lor.lhs.false237 ], [ 1, %for.body228 ], [ 0, %for.inc262 ]
  call void @llvm.lifetime.end(i64 360, i8* %8) #1
  call void @llvm.lifetime.end(i64 360, i8* %7) #1
  ret i32 %perform_wp.4
}

; Function Attrs: nounwind optsize uwtable
define i32 @test_wp_B_slice(i32 %select_method) #0 {
entry:
  %weight = alloca [6 x [15 x [3 x i32]]], align 16
  %offset = alloca [6 x [15 x [3 x i32]]], align 16
  %im_weight = alloca [6 x [15 x [15 x [3 x i32]]]], align 16
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem883 = shl i32 %2, 1
  %5 = and i32 %rem883, 2
  %6 = or i32 %5, 4
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 2, %land.lhs.true ], [ 2, %entry ]
  %7 = bitcast [6 x [15 x [3 x i32]]]* %weight to i8*
  call void @llvm.lifetime.start(i64 1080, i8* %7) #1
  %8 = bitcast [6 x [15 x [3 x i32]]]* %offset to i8*
  call void @llvm.lifetime.start(i64 1080, i8* %8) #1
  %9 = bitcast [6 x [15 x [15 x [3 x i32]]]]* %im_weight to i8*
  call void @llvm.lifetime.start(i64 16200, i8* %9) #1
  store i32 5, i32* @luma_log_weight_denom, align 4, !tbaa !3
  store i32 5, i32* @chroma_log_weight_denom, align 4, !tbaa !3
  store i32 16, i32* @wp_luma_round, align 4, !tbaa !3
  store i32 16, i32* @wp_chroma_round, align 4, !tbaa !3
  %10 = load i32**** @wp_weight, align 8, !tbaa !0
  %11 = load i32**** @wp_offset, align 8, !tbaa !0
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %cond.end, %for.inc44
  %indvars.iv1003 = phi i64 [ 0, %cond.end ], [ %indvars.iv.next1004, %for.inc44 ]
  %arrayidx11 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv1003
  %12 = load i32* %arrayidx11, align 4, !tbaa !3
  %cmp12938 = icmp sgt i32 %12, 0
  br i1 %cmp12938, label %for.cond14.preheader.lr.ph, label %for.inc44

for.cond14.preheader.lr.ph:                       ; preds = %for.cond9.preheader
  %arrayidx20 = getelementptr inbounds i32*** %10, i64 %indvars.iv1003
  %13 = load i32*** %arrayidx20, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i32*** %11, i64 %indvars.iv1003
  %14 = load i32*** %arrayidx26, align 8, !tbaa !0
  br label %for.cond14.preheader

for.cond47.preheader:                             ; preds = %for.inc44
  %15 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  %cmp48935 = icmp sgt i32 %15, 0
  br i1 %cmp48935, label %for.cond50.preheader.lr.ph, label %for.end229

for.cond50.preheader.lr.ph:                       ; preds = %for.cond47.preheader
  %16 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %cmp51933 = icmp sgt i32 %16, 0
  %17 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 1), align 8, !tbaa !0
  %18 = load %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**]* @listX, i64 0, i64 0), align 8, !tbaa !0
  %19 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %poc83 = getelementptr inbounds %struct.storable_picture* %19, i64 0, i32 1
  br label %for.cond50.preheader

for.cond14.preheader:                             ; preds = %for.cond14.preheader.lr.ph, %for.inc41
  %indvars.iv1001 = phi i64 [ 0, %for.cond14.preheader.lr.ph ], [ %indvars.iv.next1002, %for.inc41 ]
  %scevgep = getelementptr [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv1003, i64 %indvars.iv1001, i64 0
  %scevgep1000 = bitcast i32* %scevgep to i8*
  %arrayidx21 = getelementptr inbounds i32** %13, i64 %indvars.iv1001
  %20 = load i32** %arrayidx21, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i32** %14, i64 %indvars.iv1001
  %21 = load i32** %arrayidx27, align 8, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* %scevgep1000, i8 0, i64 12, i32 4, i1 false)
  br label %for.body16

for.body16:                                       ; preds = %for.body16, %for.cond14.preheader
  %indvars.iv994 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next995, %for.body16 ]
  %arrayidx22 = getelementptr inbounds i32* %20, i64 %indvars.iv994
  store i32 32, i32* %arrayidx22, align 4, !tbaa !3
  %arrayidx28 = getelementptr inbounds i32* %21, i64 %indvars.iv994
  store i32 0, i32* %arrayidx28, align 4, !tbaa !3
  %arrayidx40 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv1003, i64 %indvars.iv1001, i64 %indvars.iv994
  store i32 32, i32* %arrayidx40, align 4, !tbaa !3
  %indvars.iv.next995 = add i64 %indvars.iv994, 1
  %lftr.wideiv996 = trunc i64 %indvars.iv.next995 to i32
  %exitcond997 = icmp eq i32 %lftr.wideiv996, 3
  br i1 %exitcond997, label %for.inc41, label %for.body16

for.inc41:                                        ; preds = %for.body16
  %indvars.iv.next1002 = add i64 %indvars.iv1001, 1
  %22 = load i32* %arrayidx11, align 4, !tbaa !3
  %23 = trunc i64 %indvars.iv.next1002 to i32
  %cmp12 = icmp slt i32 %23, %22
  br i1 %cmp12, label %for.cond14.preheader, label %for.inc44

for.inc44:                                        ; preds = %for.inc41, %for.cond9.preheader
  %indvars.iv.next1004 = add i64 %indvars.iv1003, 1
  %24 = trunc i64 %indvars.iv.next1004 to i32
  %cmp = icmp slt i32 %24, %cond4
  br i1 %cmp, label %for.cond9.preheader, label %for.cond47.preheader

for.cond50.preheader:                             ; preds = %for.cond50.preheader.lr.ph, %for.inc227
  %indvars.iv992 = phi i64 [ 0, %for.cond50.preheader.lr.ph ], [ %indvars.iv.next993, %for.inc227 ]
  br i1 %cmp51933, label %for.body52.lr.ph, label %for.inc227

for.body52.lr.ph:                                 ; preds = %for.cond50.preheader
  %arrayidx56 = getelementptr inbounds %struct.storable_picture** %18, i64 %indvars.iv992
  %25 = load %struct.storable_picture** %arrayidx56, align 8, !tbaa !0
  %poc57 = getelementptr inbounds %struct.storable_picture* %25, i64 0, i32 1
  %26 = load i32* %poc57, align 4, !tbaa !3
  %27 = load i32* %poc83, align 4, !tbaa !3
  %sub87 = sub nsw i32 %27, %26
  %cmp88 = icmp slt i32 %sub87, -128
  %cmp96 = icmp sgt i32 %sub87, 127
  %.sub87 = select i1 %cmp96, i32 127, i32 %sub87
  br label %for.body52

for.body52:                                       ; preds = %for.body52.lr.ph, %for.inc224
  %indvars.iv990 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next991, %for.inc224 ]
  %arrayidx54 = getelementptr inbounds %struct.storable_picture** %17, i64 %indvars.iv990
  %28 = load %struct.storable_picture** %arrayidx54, align 8, !tbaa !0
  %poc = getelementptr inbounds %struct.storable_picture* %28, i64 0, i32 1
  %29 = load i32* %poc, align 4, !tbaa !3
  %sub58 = sub nsw i32 %29, %26
  %cmp59 = icmp slt i32 %sub58, -128
  br i1 %cmp59, label %cond.end81, label %cond.false61

cond.false61:                                     ; preds = %for.body52
  %cmp69 = icmp sgt i32 %sub58, 127
  %.sub58 = select i1 %cmp69, i32 127, i32 %sub58
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false61, %for.body52
  %cond82 = phi i32 [ -128, %for.body52 ], [ %.sub58, %cond.false61 ]
  %..sub87 = select i1 %cmp88, i32 -128, i32 %.sub87
  %cmp111 = icmp eq i32 %cond82, 0
  %div = sdiv i32 %cond82, 2
  %ispos = icmp sgt i32 %cond82, -2
  %neg = sub i32 0, %div
  %30 = select i1 %ispos, i32 %div, i32 %neg
  %add140 = add nsw i32 %30, 16384
  br label %for.body110

for.body110:                                      ; preds = %for.inc221, %cond.end81
  %indvars.iv986 = phi i64 [ 0, %cond.end81 ], [ %indvars.iv.next987, %for.inc221 ]
  br i1 %cmp111, label %if.then, label %if.else

if.then:                                          ; preds = %for.body110
  %arrayidx118 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv992, i64 %indvars.iv990, i64 %indvars.iv986
  store i32 32, i32* %arrayidx118, align 4, !tbaa !3
  %arrayidx125 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv992, i64 %indvars.iv990, i64 %indvars.iv986
  store i32 32, i32* %arrayidx125, align 4, !tbaa !3
  br label %for.inc221

if.else:                                          ; preds = %for.body110
  %div141 = sdiv i32 %add140, %cond82
  %mul = mul nsw i32 %div141, %..sub87
  %add142 = add nsw i32 %mul, 32
  %shr = ashr i32 %add142, 6
  %cmp143 = icmp slt i32 %shr, -1024
  br i1 %cmp143, label %cond.end157, label %cond.false145

cond.false145:                                    ; preds = %if.else
  %cmp149 = icmp sgt i32 %shr, 1023
  %phitmp882 = ashr i32 %add142, 8
  %.phitmp882 = select i1 %cmp149, i32 255, i32 %phitmp882
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false145, %if.else
  %cond158 = phi i32 [ -256, %if.else ], [ %.phitmp882, %cond.false145 ]
  %arrayidx166 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv992, i64 %indvars.iv990, i64 %indvars.iv986
  %cond158.off = add i32 %cond158, 64
  %31 = icmp ugt i32 %cond158.off, 192
  %.cond158 = select i1 %31, i32 32, i32 %cond158
  store i32 %.cond158, i32* %arrayidx166, align 4, !tbaa !3
  %sub198 = sub nsw i32 64, %.cond158
  %arrayidx205 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv992, i64 %indvars.iv990, i64 %indvars.iv986
  store i32 %sub198, i32* %arrayidx205, align 4, !tbaa !3
  br label %for.inc221

for.inc221:                                       ; preds = %if.then, %cond.end157
  %indvars.iv.next987 = add i64 %indvars.iv986, 1
  %lftr.wideiv988 = trunc i64 %indvars.iv.next987 to i32
  %exitcond989 = icmp eq i32 %lftr.wideiv988, 3
  br i1 %exitcond989, label %for.inc224, label %for.body110

for.inc224:                                       ; preds = %for.inc221
  %indvars.iv.next991 = add i64 %indvars.iv990, 1
  %32 = trunc i64 %indvars.iv.next991 to i32
  %cmp51 = icmp slt i32 %32, %16
  br i1 %cmp51, label %for.body52, label %for.inc227

for.inc227:                                       ; preds = %for.inc224, %for.cond50.preheader
  %indvars.iv.next993 = add i64 %indvars.iv992, 1
  %33 = trunc i64 %indvars.iv.next993 to i32
  %cmp48 = icmp slt i32 %33, %15
  br i1 %cmp48, label %for.cond50.preheader, label %for.end229

for.end229:                                       ; preds = %for.inc227, %for.cond47.preheader
  %cmp230 = icmp eq i32 %select_method, 1
  br i1 %cmp230, label %for.cond232.preheader, label %for.cond332.preheader

for.cond332.preheader:                            ; preds = %for.end229
  %height926 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %34 = load i32* %height926, align 4, !tbaa !3
  %cmp333927 = icmp sgt i32 %34, 0
  %width922 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  br i1 %cmp333927, label %for.cond335.preheader.lr.ph, label %for.cond349.preheader

for.cond335.preheader.lr.ph:                      ; preds = %for.cond332.preheader
  %35 = load i32* %width922, align 4, !tbaa !3
  %cmp336923 = icmp sgt i32 %35, 0
  %36 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond335.preheader

for.cond232.preheader:                            ; preds = %for.end229
  br i1 %cmp48935, label %for.cond235.preheader.lr.ph, label %for.cond287.preheader

for.cond235.preheader.lr.ph:                      ; preds = %for.cond232.preheader
  %37 = load i32***** @wbp_weight, align 8, !tbaa !0
  %arrayidx256 = getelementptr inbounds i32**** %37, i64 1
  %.pre = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  br label %for.cond235.preheader

for.cond235.preheader:                            ; preds = %for.cond235.preheader.lr.ph, %for.inc280
  %38 = phi i32 [ %15, %for.cond235.preheader.lr.ph ], [ %50, %for.inc280 ]
  %39 = phi i32 [ %.pre, %for.cond235.preheader.lr.ph ], [ %51, %for.inc280 ]
  %indvars.iv953 = phi i64 [ 0, %for.cond235.preheader.lr.ph ], [ %indvars.iv.next954, %for.inc280 ]
  %cmp236895 = icmp sgt i32 %39, 0
  br i1 %cmp236895, label %for.cond238.preheader.lr.ph, label %for.inc280

for.cond238.preheader.lr.ph:                      ; preds = %for.cond235.preheader
  %40 = load i32**** %arrayidx256, align 8, !tbaa !0
  %arrayidx257 = getelementptr inbounds i32*** %40, i64 %indvars.iv953
  %41 = load i32*** %arrayidx257, align 8, !tbaa !0
  %42 = load i32**** %37, align 8, !tbaa !0
  %arrayidx271 = getelementptr inbounds i32*** %42, i64 %indvars.iv953
  %43 = load i32*** %arrayidx271, align 8, !tbaa !0
  br label %for.cond238.preheader

for.cond238.preheader:                            ; preds = %for.cond238.preheader.lr.ph, %for.inc277
  %indvars.iv951 = phi i64 [ 0, %for.cond238.preheader.lr.ph ], [ %indvars.iv.next952, %for.inc277 ]
  %arrayidx258 = getelementptr inbounds i32** %41, i64 %indvars.iv951
  %44 = load i32** %arrayidx258, align 8, !tbaa !0
  %arrayidx272 = getelementptr inbounds i32** %43, i64 %indvars.iv951
  %45 = load i32** %arrayidx272, align 8, !tbaa !0
  br label %for.body240

for.body240:                                      ; preds = %for.body240, %for.cond238.preheader
  %indvars.iv949 = phi i64 [ 0, %for.cond238.preheader ], [ %indvars.iv.next950, %for.body240 ]
  %arrayidx252 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 1, i64 %indvars.iv953, i64 %indvars.iv951, i64 %indvars.iv949
  %46 = load i32* %arrayidx252, align 4, !tbaa !3
  %arrayidx259 = getelementptr inbounds i32* %44, i64 %indvars.iv949
  store i32 %46, i32* %arrayidx259, align 4, !tbaa !3
  %arrayidx266 = getelementptr inbounds [6 x [15 x [15 x [3 x i32]]]]* %im_weight, i64 0, i64 0, i64 %indvars.iv953, i64 %indvars.iv951, i64 %indvars.iv949
  %47 = load i32* %arrayidx266, align 4, !tbaa !3
  %arrayidx273 = getelementptr inbounds i32* %45, i64 %indvars.iv949
  store i32 %47, i32* %arrayidx273, align 4, !tbaa !3
  %indvars.iv.next950 = add i64 %indvars.iv949, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next950 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc277, label %for.body240

for.inc277:                                       ; preds = %for.body240
  %indvars.iv.next952 = add i64 %indvars.iv951, 1
  %48 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %49 = trunc i64 %indvars.iv.next952 to i32
  %cmp236 = icmp slt i32 %49, %48
  br i1 %cmp236, label %for.cond238.preheader, label %for.cond235.for.inc280_crit_edge

for.cond235.for.inc280_crit_edge:                 ; preds = %for.inc277
  %.pre1005 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  br label %for.inc280

for.inc280:                                       ; preds = %for.cond235.for.inc280_crit_edge, %for.cond235.preheader
  %50 = phi i32 [ %.pre1005, %for.cond235.for.inc280_crit_edge ], [ %38, %for.cond235.preheader ]
  %51 = phi i32 [ %48, %for.cond235.for.inc280_crit_edge ], [ %39, %for.cond235.preheader ]
  %indvars.iv.next954 = add i64 %indvars.iv953, 1
  %52 = trunc i64 %indvars.iv.next954 to i32
  %cmp233 = icmp slt i32 %52, %50
  br i1 %cmp233, label %for.cond235.preheader, label %for.cond287.preheader

for.cond287.preheader:                            ; preds = %for.cond232.preheader, %for.inc280, %for.inc328.for.cond287.preheader_crit_edge
  %53 = phi i32 [ %.pre1008, %for.inc328.for.cond287.preheader_crit_edge ], [ %15, %for.cond232.preheader ], [ %50, %for.inc280 ]
  %indvars.iv947 = phi i64 [ %indvars.iv.next948, %for.inc328.for.cond287.preheader_crit_edge ], [ 0, %for.cond232.preheader ], [ 0, %for.inc280 ]
  %arrayidx289 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv947
  %cmp290891 = icmp sgt i32 %53, 0
  br i1 %cmp290891, label %for.body291.lr.ph, label %for.inc328

for.body291.lr.ph:                                ; preds = %for.cond287.preheader
  %arrayidx295 = getelementptr inbounds i32*** %10, i64 %indvars.iv947
  %54 = load i32*** %arrayidx295, align 8, !tbaa !0
  %arrayidx312 = getelementptr inbounds i32*** %11, i64 %indvars.iv947
  %55 = load i32*** %arrayidx312, align 8, !tbaa !0
  br label %for.body291

for.body291:                                      ; preds = %for.body291, %for.body291.lr.ph
  %indvars.iv945 = phi i64 [ 0, %for.body291.lr.ph ], [ %indvars.iv.next946, %for.body291 ]
  %56 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %shl292 = shl i32 1, %56
  %arrayidx296 = getelementptr inbounds i32** %54, i64 %indvars.iv945
  %57 = load i32** %arrayidx296, align 8, !tbaa !0
  store i32 %shl292, i32* %57, align 4, !tbaa !3
  %58 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %shl298 = shl i32 1, %58
  %arrayidx303 = getelementptr inbounds i32* %57, i64 1
  store i32 %shl298, i32* %arrayidx303, align 4, !tbaa !3
  %59 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %shl304 = shl i32 1, %59
  %arrayidx309 = getelementptr inbounds i32* %57, i64 2
  store i32 %shl304, i32* %arrayidx309, align 4, !tbaa !3
  %arrayidx313 = getelementptr inbounds i32** %55, i64 %indvars.iv945
  %60 = load i32** %arrayidx313, align 8, !tbaa !0
  store i32 0, i32* %60, align 4, !tbaa !3
  %arrayidx319 = getelementptr inbounds i32* %60, i64 1
  store i32 0, i32* %arrayidx319, align 4, !tbaa !3
  %arrayidx324 = getelementptr inbounds i32* %60, i64 2
  store i32 0, i32* %arrayidx324, align 4, !tbaa !3
  %indvars.iv.next946 = add i64 %indvars.iv945, 1
  %61 = load i32* %arrayidx289, align 4, !tbaa !3
  %62 = trunc i64 %indvars.iv.next946 to i32
  %cmp290 = icmp slt i32 %62, %61
  br i1 %cmp290, label %for.body291, label %for.inc328

for.inc328:                                       ; preds = %for.body291, %for.cond287.preheader
  %indvars.iv.next948 = add i64 %indvars.iv947, 1
  %63 = trunc i64 %indvars.iv.next948 to i32
  %cmp285 = icmp slt i32 %63, %cond4
  br i1 %cmp285, label %for.inc328.for.cond287.preheader_crit_edge, label %for.cond611.preheader

for.inc328.for.cond287.preheader_crit_edge:       ; preds = %for.inc328
  %arrayidx289.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next948
  %.pre1008 = load i32* %arrayidx289.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond287.preheader

for.cond335.preheader:                            ; preds = %for.cond335.preheader.lr.ph, %for.inc346
  %indvars.iv984 = phi i64 [ 0, %for.cond335.preheader.lr.ph ], [ %indvars.iv.next985, %for.inc346 ]
  %dc_org.0928 = phi double [ 0.000000e+00, %for.cond335.preheader.lr.ph ], [ %dc_org.1.lcssa, %for.inc346 ]
  br i1 %cmp336923, label %for.body337.lr.ph, label %for.inc346

for.body337.lr.ph:                                ; preds = %for.cond335.preheader
  %arrayidx340 = getelementptr inbounds i16** %36, i64 %indvars.iv984
  %64 = load i16** %arrayidx340, align 8, !tbaa !0
  br label %for.body337

for.cond349.preheader:                            ; preds = %for.cond332.preheader, %for.inc346
  %dc_org.0.lcssa = phi double [ %dc_org.1.lcssa, %for.inc346 ], [ 0.000000e+00, %for.cond332.preheader ]
  %mul398 = fmul double %dc_org.0.lcssa, 3.200000e+01
  br label %for.cond354.preheader

for.body337:                                      ; preds = %for.body337.lr.ph, %for.body337
  %indvars.iv982 = phi i64 [ 0, %for.body337.lr.ph ], [ %indvars.iv.next983, %for.body337 ]
  %dc_org.1924 = phi double [ %dc_org.0928, %for.body337.lr.ph ], [ %add342, %for.body337 ]
  %arrayidx341 = getelementptr inbounds i16* %64, i64 %indvars.iv982
  %65 = load i16* %arrayidx341, align 2, !tbaa !4
  %conv = uitofp i16 %65 to double
  %add342 = fadd double %dc_org.1924, %conv
  %indvars.iv.next983 = add i64 %indvars.iv982, 1
  %66 = trunc i64 %indvars.iv.next983 to i32
  %cmp336 = icmp slt i32 %66, %35
  br i1 %cmp336, label %for.body337, label %for.inc346

for.inc346:                                       ; preds = %for.body337, %for.cond335.preheader
  %dc_org.1.lcssa = phi double [ %dc_org.0928, %for.cond335.preheader ], [ %add342, %for.body337 ]
  %indvars.iv.next985 = add i64 %indvars.iv984, 1
  %67 = trunc i64 %indvars.iv.next985 to i32
  %cmp333 = icmp slt i32 %67, %34
  br i1 %cmp333, label %for.cond335.preheader, label %for.cond349.preheader

for.cond354.preheader:                            ; preds = %for.inc448.for.cond354.preheader_crit_edge, %for.cond349.preheader
  %68 = phi i32 [ %15, %for.cond349.preheader ], [ %.pre1009, %for.inc448.for.cond354.preheader_crit_edge ]
  %indvars.iv980 = phi i64 [ 0, %for.cond349.preheader ], [ %indvars.iv.next981, %for.inc448.for.cond354.preheader_crit_edge ]
  %cmp357919 = icmp sgt i32 %68, 0
  br i1 %cmp357919, label %for.body359.lr.ph, label %for.inc448

for.body359.lr.ph:                                ; preds = %for.cond354.preheader
  %arrayidx366 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv980
  %69 = load %struct.storable_picture*** %arrayidx366, align 8, !tbaa !0
  %70 = load i32* %width922, align 4, !tbaa !3
  %mul375915 = mul nsw i32 %70, %34
  %cmp376916 = icmp sgt i32 %mul375915, 0
  br label %for.body359

for.body359:                                      ; preds = %for.body359.lr.ph, %if.end407
  %indvars.iv977 = phi i64 [ 0, %for.body359.lr.ph ], [ %indvars.iv.next978, %if.end407 ]
  %arrayidx367 = getelementptr inbounds %struct.storable_picture** %69, i64 %indvars.iv977
  %71 = load %struct.storable_picture** %arrayidx367, align 8, !tbaa !0
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %71, i64 0, i32 26
  %72 = load i16** %imgY_11, align 8, !tbaa !0
  br i1 %cmp376916, label %for.body378, label %if.end407

for.body378:                                      ; preds = %for.body359, %for.body378
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %for.body378 ], [ 0, %for.body359 ]
  %add386918 = phi double [ %add386, %for.body378 ], [ 0.000000e+00, %for.body359 ]
  %arrayidx380 = getelementptr inbounds i16* %72, i64 %indvars.iv975
  %73 = load i16* %arrayidx380, align 2, !tbaa !4
  %conv381 = uitofp i16 %73 to double
  %add386 = fadd double %add386918, %conv381
  %indvars.iv.next976 = add i64 %indvars.iv975, 1
  %74 = trunc i64 %indvars.iv.next976 to i32
  %cmp376 = icmp slt i32 %74, %mul375915
  br i1 %cmp376, label %for.body378, label %for.end389

for.end389:                                       ; preds = %for.body378
  %cmp394 = fcmp une double %add386, 0.000000e+00
  br i1 %cmp394, label %if.then396, label %if.end407

if.then396:                                       ; preds = %for.end389
  %div403 = fdiv double %mul398, %add386
  %add404 = fadd double %div403, 5.000000e-01
  %conv405 = fptosi double %add404 to i32
  br label %if.end407

if.end407:                                        ; preds = %for.body359, %for.end389, %if.then396
  %wf_weight.0 = phi i32 [ %conv405, %if.then396 ], [ 32, %for.end389 ], [ 32, %for.body359 ]
  %wf_weight.0.off = add i32 %wf_weight.0, 64
  %75 = icmp ugt i32 %wf_weight.0.off, 191
  %.wf_weight.0 = select i1 %75, i32 32, i32 %wf_weight.0
  %arrayidx419 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 0
  store i32 %.wf_weight.0, i32* %arrayidx419, align 4, !tbaa !3
  %arrayidx424 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 1
  store i32 32, i32* %arrayidx424, align 4, !tbaa !3
  %arrayidx429 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 2
  store i32 32, i32* %arrayidx429, align 4, !tbaa !3
  %arrayidx434 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 0
  store i32 0, i32* %arrayidx434, align 4, !tbaa !3
  %arrayidx439 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 1
  store i32 0, i32* %arrayidx439, align 4, !tbaa !3
  %arrayidx444 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv980, i64 %indvars.iv977, i64 2
  store i32 0, i32* %arrayidx444, align 4, !tbaa !3
  %indvars.iv.next978 = add i64 %indvars.iv977, 1
  %76 = trunc i64 %indvars.iv.next978 to i32
  %cmp357 = icmp slt i32 %76, %68
  br i1 %cmp357, label %for.body359, label %for.inc448

for.inc448:                                       ; preds = %if.end407, %for.cond354.preheader
  %indvars.iv.next981 = add i64 %indvars.iv980, 1
  %77 = trunc i64 %indvars.iv.next981 to i32
  %cmp351 = icmp slt i32 %77, %cond4
  br i1 %cmp351, label %for.inc448.for.cond354.preheader_crit_edge, label %for.end450

for.inc448.for.cond354.preheader_crit_edge:       ; preds = %for.inc448
  %arrayidx356.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next981
  %.pre1009 = load i32* %arrayidx356.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond354.preheader

for.end450:                                       ; preds = %for.inc448
  %78 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %78, i64 0, i32 20
  %79 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %cmp451 = icmp eq i32 %79, 1
  br i1 %cmp451, label %for.cond459.preheader, label %for.cond508.preheader

for.cond459.preheader:                            ; preds = %for.end450, %for.inc499.for.cond459.preheader_crit_edge
  %80 = phi i32 [ %.pre1010, %for.inc499.for.cond459.preheader_crit_edge ], [ %15, %for.end450 ]
  %indvars.iv969 = phi i64 [ %indvars.iv.next970, %for.inc499.for.cond459.preheader_crit_edge ], [ 0, %for.end450 ]
  %arrayidx461 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv969
  %cmp462906 = icmp sgt i32 %80, 0
  br i1 %cmp462906, label %for.cond465.preheader.lr.ph, label %for.inc499

for.cond465.preheader.lr.ph:                      ; preds = %for.cond459.preheader
  %arrayidx478 = getelementptr inbounds i32*** %10, i64 %indvars.iv969
  %81 = load i32*** %arrayidx478, align 8, !tbaa !0
  %arrayidx490 = getelementptr inbounds i32*** %11, i64 %indvars.iv969
  %82 = load i32*** %arrayidx490, align 8, !tbaa !0
  br label %for.cond465.preheader

for.cond554.preheader:                            ; preds = %for.inc550, %for.inc499
  %83 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  %cmp555903 = icmp sgt i32 %83, 0
  br i1 %cmp555903, label %for.cond558.preheader.lr.ph, label %for.cond611.preheader

for.cond558.preheader.lr.ph:                      ; preds = %for.cond554.preheader
  %84 = load i32***** @wbp_weight, align 8, !tbaa !0
  %arrayidx586 = getelementptr inbounds i32*** %10, i64 1
  %arrayidx592 = getelementptr inbounds i32**** %84, i64 1
  %.pre1006 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  br label %for.cond558.preheader

for.cond465.preheader:                            ; preds = %for.cond465.preheader.lr.ph, %for.inc496
  %indvars.iv967 = phi i64 [ 0, %for.cond465.preheader.lr.ph ], [ %indvars.iv.next968, %for.inc496 ]
  %arrayidx479 = getelementptr inbounds i32** %81, i64 %indvars.iv967
  %85 = load i32** %arrayidx479, align 8, !tbaa !0
  %arrayidx491 = getelementptr inbounds i32** %82, i64 %indvars.iv967
  %86 = load i32** %arrayidx491, align 8, !tbaa !0
  br label %for.body468

for.body468:                                      ; preds = %for.body468, %for.cond465.preheader
  %indvars.iv963 = phi i64 [ 0, %for.cond465.preheader ], [ %indvars.iv.next964, %for.body468 ]
  %arrayidx474 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %weight, i64 0, i64 %indvars.iv969, i64 %indvars.iv967, i64 %indvars.iv963
  %87 = load i32* %arrayidx474, align 4, !tbaa !3
  %arrayidx480 = getelementptr inbounds i32* %85, i64 %indvars.iv963
  store i32 %87, i32* %arrayidx480, align 4, !tbaa !3
  %arrayidx486 = getelementptr inbounds [6 x [15 x [3 x i32]]]* %offset, i64 0, i64 %indvars.iv969, i64 %indvars.iv967, i64 %indvars.iv963
  %88 = load i32* %arrayidx486, align 4, !tbaa !3
  %arrayidx492 = getelementptr inbounds i32* %86, i64 %indvars.iv963
  store i32 %88, i32* %arrayidx492, align 4, !tbaa !3
  %indvars.iv.next964 = add i64 %indvars.iv963, 1
  %lftr.wideiv965 = trunc i64 %indvars.iv.next964 to i32
  %exitcond966 = icmp eq i32 %lftr.wideiv965, 3
  br i1 %exitcond966, label %for.inc496, label %for.body468

for.inc496:                                       ; preds = %for.body468
  %indvars.iv.next968 = add i64 %indvars.iv967, 1
  %89 = load i32* %arrayidx461, align 4, !tbaa !3
  %90 = trunc i64 %indvars.iv.next968 to i32
  %cmp462 = icmp slt i32 %90, %89
  br i1 %cmp462, label %for.cond465.preheader, label %for.inc499

for.inc499:                                       ; preds = %for.inc496, %for.cond459.preheader
  %indvars.iv.next970 = add i64 %indvars.iv969, 1
  %91 = trunc i64 %indvars.iv.next970 to i32
  %cmp456 = icmp slt i32 %91, %cond4
  br i1 %cmp456, label %for.inc499.for.cond459.preheader_crit_edge, label %for.cond554.preheader

for.inc499.for.cond459.preheader_crit_edge:       ; preds = %for.inc499
  %arrayidx461.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next970
  %.pre1010 = load i32* %arrayidx461.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond459.preheader

for.cond508.preheader:                            ; preds = %for.end450, %for.inc550.for.cond508.preheader_crit_edge
  %92 = phi i32 [ %.pre1011, %for.inc550.for.cond508.preheader_crit_edge ], [ %15, %for.end450 ]
  %indvars.iv973 = phi i64 [ %indvars.iv.next974, %for.inc550.for.cond508.preheader_crit_edge ], [ 0, %for.end450 ]
  %arrayidx510 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv973
  %cmp511909 = icmp sgt i32 %92, 0
  br i1 %cmp511909, label %for.body513.lr.ph, label %for.inc550

for.body513.lr.ph:                                ; preds = %for.cond508.preheader
  %arrayidx517 = getelementptr inbounds i32*** %10, i64 %indvars.iv973
  %93 = load i32*** %arrayidx517, align 8, !tbaa !0
  %arrayidx534 = getelementptr inbounds i32*** %11, i64 %indvars.iv973
  %94 = load i32*** %arrayidx534, align 8, !tbaa !0
  br label %for.body513

for.body513:                                      ; preds = %for.body513, %for.body513.lr.ph
  %indvars.iv971 = phi i64 [ 0, %for.body513.lr.ph ], [ %indvars.iv.next972, %for.body513 ]
  %95 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %shl514 = shl i32 1, %95
  %arrayidx518 = getelementptr inbounds i32** %93, i64 %indvars.iv971
  %96 = load i32** %arrayidx518, align 8, !tbaa !0
  store i32 %shl514, i32* %96, align 4, !tbaa !3
  %97 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %shl520 = shl i32 1, %97
  %arrayidx525 = getelementptr inbounds i32* %96, i64 1
  store i32 %shl520, i32* %arrayidx525, align 4, !tbaa !3
  %98 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %shl526 = shl i32 1, %98
  %arrayidx531 = getelementptr inbounds i32* %96, i64 2
  store i32 %shl526, i32* %arrayidx531, align 4, !tbaa !3
  %arrayidx535 = getelementptr inbounds i32** %94, i64 %indvars.iv971
  %99 = load i32** %arrayidx535, align 8, !tbaa !0
  store i32 0, i32* %99, align 4, !tbaa !3
  %arrayidx541 = getelementptr inbounds i32* %99, i64 1
  store i32 0, i32* %arrayidx541, align 4, !tbaa !3
  %arrayidx546 = getelementptr inbounds i32* %99, i64 2
  store i32 0, i32* %arrayidx546, align 4, !tbaa !3
  %indvars.iv.next972 = add i64 %indvars.iv971, 1
  %100 = load i32* %arrayidx510, align 4, !tbaa !3
  %101 = trunc i64 %indvars.iv.next972 to i32
  %cmp511 = icmp slt i32 %101, %100
  br i1 %cmp511, label %for.body513, label %for.inc550

for.inc550:                                       ; preds = %for.body513, %for.cond508.preheader
  %indvars.iv.next974 = add i64 %indvars.iv973, 1
  %102 = trunc i64 %indvars.iv.next974 to i32
  %cmp505 = icmp slt i32 %102, %cond4
  br i1 %cmp505, label %for.inc550.for.cond508.preheader_crit_edge, label %for.cond554.preheader

for.inc550.for.cond508.preheader_crit_edge:       ; preds = %for.inc550
  %arrayidx510.phi.trans.insert = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv.next974
  %.pre1011 = load i32* %arrayidx510.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond508.preheader

for.cond558.preheader:                            ; preds = %for.cond558.preheader.lr.ph, %for.inc602
  %103 = phi i32 [ %83, %for.cond558.preheader.lr.ph ], [ %119, %for.inc602 ]
  %104 = phi i32 [ %.pre1006, %for.cond558.preheader.lr.ph ], [ %120, %for.inc602 ]
  %indvars.iv961 = phi i64 [ 0, %for.cond558.preheader.lr.ph ], [ %indvars.iv.next962, %for.inc602 ]
  %cmp559900 = icmp sgt i32 %104, 0
  br i1 %cmp559900, label %for.cond562.preheader.lr.ph, label %for.inc602

for.cond562.preheader.lr.ph:                      ; preds = %for.cond558.preheader
  %105 = load i32*** %10, align 8, !tbaa !0
  %arrayidx575 = getelementptr inbounds i32** %105, i64 %indvars.iv961
  %106 = load i32** %arrayidx575, align 8, !tbaa !0
  %107 = load i32**** %84, align 8, !tbaa !0
  %arrayidx581 = getelementptr inbounds i32*** %107, i64 %indvars.iv961
  %108 = load i32*** %arrayidx581, align 8, !tbaa !0
  %109 = load i32*** %arrayidx586, align 8, !tbaa !0
  %110 = load i32**** %arrayidx592, align 8, !tbaa !0
  %arrayidx593 = getelementptr inbounds i32*** %110, i64 %indvars.iv961
  %111 = load i32*** %arrayidx593, align 8, !tbaa !0
  br label %for.cond562.preheader

for.cond562.preheader:                            ; preds = %for.cond562.preheader.lr.ph, %for.inc599
  %indvars.iv959 = phi i64 [ 0, %for.cond562.preheader.lr.ph ], [ %indvars.iv.next960, %for.inc599 ]
  %arrayidx582 = getelementptr inbounds i32** %108, i64 %indvars.iv959
  %112 = load i32** %arrayidx582, align 8, !tbaa !0
  %arrayidx587 = getelementptr inbounds i32** %109, i64 %indvars.iv959
  %113 = load i32** %arrayidx587, align 8, !tbaa !0
  %arrayidx594 = getelementptr inbounds i32** %111, i64 %indvars.iv959
  %114 = load i32** %arrayidx594, align 8, !tbaa !0
  br label %for.body565

for.body565:                                      ; preds = %for.body565, %for.cond562.preheader
  %indvars.iv955 = phi i64 [ 0, %for.cond562.preheader ], [ %indvars.iv.next956, %for.body565 ]
  %arrayidx576 = getelementptr inbounds i32* %106, i64 %indvars.iv955
  %115 = load i32* %arrayidx576, align 4, !tbaa !3
  %arrayidx583 = getelementptr inbounds i32* %112, i64 %indvars.iv955
  store i32 %115, i32* %arrayidx583, align 4, !tbaa !3
  %arrayidx588 = getelementptr inbounds i32* %113, i64 %indvars.iv955
  %116 = load i32* %arrayidx588, align 4, !tbaa !3
  %arrayidx595 = getelementptr inbounds i32* %114, i64 %indvars.iv955
  store i32 %116, i32* %arrayidx595, align 4, !tbaa !3
  %indvars.iv.next956 = add i64 %indvars.iv955, 1
  %lftr.wideiv957 = trunc i64 %indvars.iv.next956 to i32
  %exitcond958 = icmp eq i32 %lftr.wideiv957, 3
  br i1 %exitcond958, label %for.inc599, label %for.body565

for.inc599:                                       ; preds = %for.body565
  %indvars.iv.next960 = add i64 %indvars.iv959, 1
  %117 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %118 = trunc i64 %indvars.iv.next960 to i32
  %cmp559 = icmp slt i32 %118, %117
  br i1 %cmp559, label %for.cond562.preheader, label %for.cond558.for.inc602_crit_edge

for.cond558.for.inc602_crit_edge:                 ; preds = %for.inc599
  %.pre1007 = load i32* getelementptr inbounds ([6 x i32]* @listXsize, i64 0, i64 0), align 4, !tbaa !3
  br label %for.inc602

for.inc602:                                       ; preds = %for.cond558.for.inc602_crit_edge, %for.cond558.preheader
  %119 = phi i32 [ %.pre1007, %for.cond558.for.inc602_crit_edge ], [ %103, %for.cond558.preheader ]
  %120 = phi i32 [ %117, %for.cond558.for.inc602_crit_edge ], [ %104, %for.cond558.preheader ]
  %indvars.iv.next962 = add i64 %indvars.iv961, 1
  %121 = trunc i64 %indvars.iv.next962 to i32
  %cmp555 = icmp slt i32 %121, %119
  br i1 %cmp555, label %for.cond558.preheader, label %for.cond611.preheader

for.cond611.preheader:                            ; preds = %for.inc654, %for.inc328, %for.inc602, %for.cond554.preheader
  %indvars.iv943 = phi i64 [ 0, %for.cond554.preheader ], [ 0, %for.inc602 ], [ 0, %for.inc328 ], [ %indvars.iv.next944, %for.inc654 ]
  %arrayidx613 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv943
  %122 = load i32* %arrayidx613, align 4, !tbaa !3
  %cmp614887 = icmp sgt i32 %122, 0
  br i1 %cmp614887, label %for.cond617.preheader.lr.ph, label %for.inc654

for.cond617.preheader.lr.ph:                      ; preds = %for.cond611.preheader
  %arrayidx624 = getelementptr inbounds i32*** %10, i64 %indvars.iv943
  %123 = load i32*** %arrayidx624, align 8, !tbaa !0
  %arrayidx633 = getelementptr inbounds i32*** %11, i64 %indvars.iv943
  br label %for.cond617.preheader

for.cond617.preheader:                            ; preds = %for.cond617.preheader.lr.ph, %for.inc647
  %indvars.iv941 = phi i64 [ 0, %for.cond617.preheader.lr.ph ], [ %indvars.iv.next942, %for.inc647 ]
  %arrayidx625 = getelementptr inbounds i32** %123, i64 %indvars.iv941
  %124 = load i32** %arrayidx625, align 8, !tbaa !0
  br label %for.body620

for.cond617:                                      ; preds = %lor.lhs.false629
  %125 = trunc i64 %indvars.iv.next to i32
  %cmp618 = icmp slt i32 %125, 3
  br i1 %cmp618, label %for.body620, label %for.inc647

for.body620:                                      ; preds = %for.cond617.preheader, %for.cond617
  %indvars.iv = phi i64 [ 0, %for.cond617.preheader ], [ %indvars.iv.next, %for.cond617 ]
  %arrayidx626 = getelementptr inbounds i32* %124, i64 %indvars.iv
  %126 = load i32* %arrayidx626, align 4, !tbaa !3
  %cmp627 = icmp eq i32 %126, 32
  br i1 %cmp627, label %lor.lhs.false629, label %for.end656

lor.lhs.false629:                                 ; preds = %for.body620
  %127 = load i32*** %arrayidx633, align 8, !tbaa !0
  %arrayidx634 = getelementptr inbounds i32** %127, i64 %indvars.iv941
  %128 = load i32** %arrayidx634, align 8, !tbaa !0
  %arrayidx635 = getelementptr inbounds i32* %128, i64 %indvars.iv
  %129 = load i32* %arrayidx635, align 4, !tbaa !3
  %cmp636 = icmp eq i32 %129, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp636, label %for.cond617, label %for.end656

for.inc647:                                       ; preds = %for.cond617
  %indvars.iv.next942 = add i64 %indvars.iv941, 1
  %130 = trunc i64 %indvars.iv.next942 to i32
  %cmp614 = icmp slt i32 %130, %122
  br i1 %cmp614, label %for.cond617.preheader, label %for.inc654

for.inc654:                                       ; preds = %for.inc647, %for.cond611.preheader
  %indvars.iv.next944 = add i64 %indvars.iv943, 1
  %131 = trunc i64 %indvars.iv.next944 to i32
  %cmp608 = icmp slt i32 %131, %cond4
  br i1 %cmp608, label %for.cond611.preheader, label %for.end656

for.end656:                                       ; preds = %for.inc654, %for.body620, %lor.lhs.false629
  %perform_wp.4 = phi i32 [ 1, %lor.lhs.false629 ], [ 1, %for.body620 ], [ 0, %for.inc654 ]
  call void @llvm.lifetime.end(i64 16200, i8* %9) #1
  call void @llvm.lifetime.end(i64 1080, i8* %8) #1
  call void @llvm.lifetime.end(i64 1080, i8* %7) #1
  ret i32 %perform_wp.4
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
