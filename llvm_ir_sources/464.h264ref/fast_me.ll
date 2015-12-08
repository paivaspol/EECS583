; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c'
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }

@AlphaSec = common global [8 x float] zeroinitializer, align 16
@AlphaThird = common global [8 x float] zeroinitializer, align 16
@input = external global %struct.InputParameters*
@img = external global %struct.ImageParameters*
@quant_coef = internal unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243], [4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243]], [4 x [4 x i32]] [[4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660], [4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660]], [4 x [4 x i32]] [[4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194], [4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194]], [4 x [4 x i32]] [[4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647], [4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647]], [4 x [4 x i32]] [[4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355], [4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355]], [4 x [4 x i32]] [[4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893], [4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893]]], align 16
@Quantize_step = common global float 0.000000e+00, align 4
@Bsize = common global [8 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"get_mem_mv: mv\00", align 1
@flag_intra = common global i32* null, align 8
@.str1 = private unnamed_addr constant [24 x i8] c"get_mem_FME: flag_intra\00", align 1
@McostState = common global i32** null, align 8
@all_mincost = common global i32***** null, align 8
@all_bwmincost = common global i32***** null, align 8
@SearchState = common global i8** null, align 8
@byte_abs = external global i32*
@FastIntegerPelBlockMotionSearch.Hexagon_x = internal unnamed_addr constant [6 x i32] [i32 2, i32 1, i32 -1, i32 -2, i32 -1, i32 1], align 16
@FastIntegerPelBlockMotionSearch.Hexagon_y = internal unnamed_addr constant [6 x i32] [i32 0, i32 -2, i32 -2, i32 0, i32 2, i32 2], align 16
@FastIntegerPelBlockMotionSearch.Big_Hexagon_x = internal unnamed_addr constant [16 x i32] [i32 0, i32 -2, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -2, i32 0, i32 2, i32 4, i32 4, i32 4, i32 4, i32 4, i32 2], align 16
@FastIntegerPelBlockMotionSearch.Big_Hexagon_y = internal unnamed_addr constant [16 x i32] [i32 4, i32 3, i32 2, i32 1, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3], align 16
@listX = external global [6 x %struct.storable_picture**]
@pred_SAD_ref = common global i32 0, align 4
@pred_SAD_space = common global i32 0, align 4
@pred_SAD_uplayer = common global i32 0, align 4
@mvbits = external global i32*
@pred_MV_uplayer = common global [2 x i32] zeroinitializer, align 4
@Bframe_ctr = external global i32
@pred_MV_time = common global [2 x i32] zeroinitializer, align 4
@pred_MV_ref = common global [2 x i32] zeroinitializer, align 4
@spiral_search_x = external global i32*
@spiral_search_y = external global i32*
@PelY_14 = internal unnamed_addr global i16 (i16**, i32, i32, i32, i32)* null, align 8
@FastSubPelBlockMotionSearch.Diamond_x = internal unnamed_addr constant [4 x i32] [i32 -1, i32 0, i32 1, i32 0], align 16
@FastSubPelBlockMotionSearch.Diamond_y = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 16
@flag_intra_SAD = common global i32 0, align 4
@pred_SAD_time = common global i32 0, align 4
@FME_blocktype = common global i32 0, align 4
@Thresh4x4 = common global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define void @DefineThreshold() #0 {
entry:
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 1), align 4, !tbaa !0
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 2), align 8, !tbaa !0
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 3), align 4, !tbaa !0
  store float 0x3F947AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 4), align 16, !tbaa !0
  store float 0x3F9EB851E0000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 5), align 4, !tbaa !0
  store float 0x3F9EB851E0000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 6), align 8, !tbaa !0
  store float 0x3FA47AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 7), align 4, !tbaa !0
  store float 0x3FAEB851E0000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 1), align 4, !tbaa !0
  store float 0x3FB1EB8520000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 2), align 8, !tbaa !0
  store float 0x3FB1EB8520000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 3), align 4, !tbaa !0
  store float 0x3FB47AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 4), align 16, !tbaa !0
  store float 0x3FBEB851E0000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 5), align 4, !tbaa !0
  store float 0x3FBC28F5C0000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 6), align 8, !tbaa !0
  store float 0x3FC3333340000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 7), align 4, !tbaa !0
  tail call void @DefineThresholdMB() #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DefineThresholdMB() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %qpN = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 4
  %1 = load i32* %qpN, align 4, !tbaa !4
  %div = sdiv i32 %1, 6
  %rem = srem i32 %1, 6
  %add = add nsw i32 %div, 15
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6
  %3 = load i32* %type, align 4, !tbaa !4
  %cmp = icmp eq i32 %3, 2
  %shl = shl i32 1, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %div3 = sdiv i32 %shl, 3
  br label %if.end

if.else:                                          ; preds = %entry
  %div5 = sdiv i32 %shl, 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gb_qp_const.0 = phi i32 [ %div3, %if.then ], [ %div5, %if.else ]
  %sub7 = sub nsw i32 %shl, %gb_qp_const.0
  %idxprom = sext i32 %rem to i64
  %arrayidx9 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom, i64 0, i64 0
  %4 = load i32* %arrayidx9, align 16, !tbaa !4
  %div10 = sdiv i32 %sub7, %4
  %conv = sitofp i32 %div10 to float
  %div11 = fdiv float %conv, 0x403670A3E0000000
  store float %div11, float* @Quantize_step, align 4, !tbaa !0
  %mul = fmul float %div11, 2.560000e+02
  store float %mul, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 7), align 4, !tbaa !0
  %mul12 = fmul float %mul, 4.000000e+00
  store float %mul12, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 6), align 8, !tbaa !0
  store float %mul12, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 5), align 4, !tbaa !0
  %mul14 = fmul float %mul12, 4.000000e+00
  store float %mul14, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 4), align 16, !tbaa !0
  %mul15 = fmul float %mul14, 4.000000e+00
  store float %mul15, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 3), align 4, !tbaa !0
  store float %mul15, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 2), align 8, !tbaa !0
  %mul17 = fmul float %mul15, 4.000000e+00
  store float %mul17, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 1), align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_mincost(i32****** nocapture %mv) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %1 = load i32* %width, align 4, !tbaa !4
  %div = sdiv i32 %1, 4
  %conv = sext i32 %div to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #5
  %2 = bitcast i8* %call to i32*****
  store i32***** %2, i32****** %mv, align 8, !tbaa !3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width2109 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 13
  %4 = load i32* %width2109, align 4, !tbaa !4
  %div3110 = sdiv i32 %4, 4
  %cmp4111 = icmp sgt i32 %4, 3
  %height112 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 15
  %5 = load i32* %height112, align 4, !tbaa !4
  br i1 %cmp4111, label %for.body, label %for.end70

for.body:                                         ; preds = %for.inc68, %for.cond.preheader
  %indvars.iv123 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next124, %for.inc68 ]
  %6 = phi i32 [ %5, %for.cond.preheader ], [ %33, %for.inc68 ]
  %div6 = sdiv i32 %6, 4
  %conv7 = sext i32 %div6 to i64
  %call8 = tail call noalias i8* @calloc(i64 %conv7, i64 8) #5
  %7 = bitcast i8* %call8 to i32****
  %8 = load i32****** %mv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32***** %8, i64 %indvars.iv123
  store i32**** %7, i32***** %arrayidx, align 8, !tbaa !3
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then11, label %for.cond13.preheader

if.then11:                                        ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %if.then11, %for.body
  %9 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height14104 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 15
  %10 = load i32* %height14104, align 4, !tbaa !4
  %cmp16106 = icmp sgt i32 %10, 3
  br i1 %cmp16106, label %for.body18, label %for.inc68

for.body18:                                       ; preds = %for.cond13.preheader, %for.inc65
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc65 ], [ 0, %for.cond13.preheader ]
  %11 = phi %struct.ImageParameters* [ %30, %for.inc65 ], [ %9, %for.cond13.preheader ]
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 9
  %12 = load i32* %max_num_references, align 4, !tbaa !4
  %conv19 = sext i32 %12 to i64
  %call20 = tail call noalias i8* @calloc(i64 %conv19, i64 8) #5
  %13 = bitcast i8* %call20 to i32***
  %14 = load i32****** %mv, align 8, !tbaa !3
  %arrayidx23 = getelementptr inbounds i32***** %14, i64 %indvars.iv123
  %15 = load i32***** %arrayidx23, align 8, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32**** %15, i64 %indvars.iv118
  store i32*** %13, i32**** %arrayidx24, align 8, !tbaa !3
  %cmp25 = icmp eq i8* %call20, null
  br i1 %cmp25, label %if.then27, label %for.cond29.preheader

if.then27:                                        ; preds = %for.body18
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %if.then27, %for.body18
  %16 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references30101 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 9
  %17 = load i32* %max_num_references30101, align 4, !tbaa !4
  %cmp31102 = icmp sgt i32 %17, 0
  br i1 %cmp31102, label %for.body33, label %for.inc65

for.body33:                                       ; preds = %for.cond29.preheader, %for.inc62
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.inc62 ], [ 0, %for.cond29.preheader ]
  %call34 = tail call noalias i8* @calloc(i64 9, i64 8) #5
  %18 = bitcast i8* %call34 to i32**
  %19 = load i32****** %mv, align 8, !tbaa !3
  %arrayidx38 = getelementptr inbounds i32***** %19, i64 %indvars.iv123
  %20 = load i32***** %arrayidx38, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds i32**** %20, i64 %indvars.iv118
  %21 = load i32**** %arrayidx39, align 8, !tbaa !3
  %arrayidx40 = getelementptr inbounds i32*** %21, i64 %indvars.iv116
  store i32** %18, i32*** %arrayidx40, align 8, !tbaa !3
  %cmp41 = icmp eq i8* %call34, null
  br i1 %cmp41, label %if.then43, label %for.body48

if.then43:                                        ; preds = %for.body33
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.body48

for.body48:                                       ; preds = %for.body33, %if.then43, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then43 ], [ 0, %for.body33 ]
  %call49 = tail call noalias i8* @calloc(i64 3, i64 4) #5
  %22 = bitcast i8* %call49 to i32*
  %23 = load i32****** %mv, align 8, !tbaa !3
  %arrayidx54 = getelementptr inbounds i32***** %23, i64 %indvars.iv123
  %24 = load i32***** %arrayidx54, align 8, !tbaa !3
  %arrayidx55 = getelementptr inbounds i32**** %24, i64 %indvars.iv118
  %25 = load i32**** %arrayidx55, align 8, !tbaa !3
  %arrayidx56 = getelementptr inbounds i32*** %25, i64 %indvars.iv116
  %26 = load i32*** %arrayidx56, align 8, !tbaa !3
  %arrayidx57 = getelementptr inbounds i32** %26, i64 %indvars.iv
  store i32* %22, i32** %arrayidx57, align 8, !tbaa !3
  %cmp58 = icmp eq i8* %call49, null
  br i1 %cmp58, label %if.then60, label %for.inc

if.then60:                                        ; preds = %for.body48
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body48, %if.then60
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond, label %for.inc62, label %for.body48

for.inc62:                                        ; preds = %for.inc
  %indvars.iv.next117 = add i64 %indvars.iv116, 1
  %27 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references30 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 9
  %28 = load i32* %max_num_references30, align 4, !tbaa !4
  %29 = trunc i64 %indvars.iv.next117 to i32
  %cmp31 = icmp slt i32 %29, %28
  br i1 %cmp31, label %for.body33, label %for.inc65

for.inc65:                                        ; preds = %for.inc62, %for.cond29.preheader
  %30 = phi %struct.ImageParameters* [ %16, %for.cond29.preheader ], [ %27, %for.inc62 ]
  %indvars.iv.next119 = add i64 %indvars.iv118, 1
  %height14 = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 15
  %31 = load i32* %height14, align 4, !tbaa !4
  %div15 = sdiv i32 %31, 4
  %32 = trunc i64 %indvars.iv.next119 to i32
  %cmp16 = icmp slt i32 %32, %div15
  br i1 %cmp16, label %for.body18, label %for.inc68

for.inc68:                                        ; preds = %for.inc65, %for.cond13.preheader
  %33 = phi i32 [ %10, %for.cond13.preheader ], [ %31, %for.inc65 ]
  %34 = phi %struct.ImageParameters* [ %9, %for.cond13.preheader ], [ %30, %for.inc65 ]
  %indvars.iv.next124 = add i64 %indvars.iv123, 1
  %width2 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 13
  %35 = load i32* %width2, align 4, !tbaa !4
  %div3 = sdiv i32 %35, 4
  %36 = trunc i64 %indvars.iv.next124 to i32
  %cmp4 = icmp slt i32 %36, %div3
  br i1 %cmp4, label %for.body, label %for.end70

for.end70:                                        ; preds = %for.inc68, %for.cond.preheader
  %.lcssa108 = phi i32 [ %5, %for.cond.preheader ], [ %33, %for.inc68 ]
  %div3.lcssa = phi i32 [ %div3110, %for.cond.preheader ], [ %div3, %for.inc68 ]
  %.lcssa = phi %struct.ImageParameters* [ %3, %for.cond.preheader ], [ %34, %for.inc68 ]
  %mul = mul nsw i32 %.lcssa108, %div3.lcssa
  %div74 = sdiv i32 %mul, 4
  %max_num_references75 = getelementptr inbounds %struct.ImageParameters* %.lcssa, i64 0, i32 9
  %37 = load i32* %max_num_references75, align 4, !tbaa !4
  %mul76 = mul i32 %div74, 108
  %mul80 = mul i32 %mul76, %37
  ret i32 %mul80
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_bwmincost(i32****** nocapture %mv) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %1 = load i32* %width, align 4, !tbaa !4
  %div = sdiv i32 %1, 4
  %conv = sext i32 %div to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #5
  %2 = bitcast i8* %call to i32*****
  store i32***** %2, i32****** %mv, align 8, !tbaa !3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width2109 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 13
  %4 = load i32* %width2109, align 4, !tbaa !4
  %div3110 = sdiv i32 %4, 4
  %cmp4111 = icmp sgt i32 %4, 3
  %height112 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 15
  %5 = load i32* %height112, align 4, !tbaa !4
  br i1 %cmp4111, label %for.body, label %for.end70

for.body:                                         ; preds = %for.inc68, %for.cond.preheader
  %indvars.iv123 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next124, %for.inc68 ]
  %6 = phi i32 [ %5, %for.cond.preheader ], [ %33, %for.inc68 ]
  %div6 = sdiv i32 %6, 4
  %conv7 = sext i32 %div6 to i64
  %call8 = tail call noalias i8* @calloc(i64 %conv7, i64 8) #5
  %7 = bitcast i8* %call8 to i32****
  %8 = load i32****** %mv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32***** %8, i64 %indvars.iv123
  store i32**** %7, i32***** %arrayidx, align 8, !tbaa !3
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then11, label %for.cond13.preheader

if.then11:                                        ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %if.then11, %for.body
  %9 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height14104 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 15
  %10 = load i32* %height14104, align 4, !tbaa !4
  %cmp16106 = icmp sgt i32 %10, 3
  br i1 %cmp16106, label %for.body18, label %for.inc68

for.body18:                                       ; preds = %for.cond13.preheader, %for.inc65
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc65 ], [ 0, %for.cond13.preheader ]
  %11 = phi %struct.ImageParameters* [ %30, %for.inc65 ], [ %9, %for.cond13.preheader ]
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 9
  %12 = load i32* %max_num_references, align 4, !tbaa !4
  %conv19 = sext i32 %12 to i64
  %call20 = tail call noalias i8* @calloc(i64 %conv19, i64 8) #5
  %13 = bitcast i8* %call20 to i32***
  %14 = load i32****** %mv, align 8, !tbaa !3
  %arrayidx23 = getelementptr inbounds i32***** %14, i64 %indvars.iv123
  %15 = load i32***** %arrayidx23, align 8, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32**** %15, i64 %indvars.iv118
  store i32*** %13, i32**** %arrayidx24, align 8, !tbaa !3
  %cmp25 = icmp eq i8* %call20, null
  br i1 %cmp25, label %if.then27, label %for.cond29.preheader

if.then27:                                        ; preds = %for.body18
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %if.then27, %for.body18
  %16 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references30101 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 9
  %17 = load i32* %max_num_references30101, align 4, !tbaa !4
  %cmp31102 = icmp sgt i32 %17, 0
  br i1 %cmp31102, label %for.body33, label %for.inc65

for.body33:                                       ; preds = %for.cond29.preheader, %for.inc62
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.inc62 ], [ 0, %for.cond29.preheader ]
  %call34 = tail call noalias i8* @calloc(i64 9, i64 8) #5
  %18 = bitcast i8* %call34 to i32**
  %19 = load i32****** %mv, align 8, !tbaa !3
  %arrayidx38 = getelementptr inbounds i32***** %19, i64 %indvars.iv123
  %20 = load i32***** %arrayidx38, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds i32**** %20, i64 %indvars.iv118
  %21 = load i32**** %arrayidx39, align 8, !tbaa !3
  %arrayidx40 = getelementptr inbounds i32*** %21, i64 %indvars.iv116
  store i32** %18, i32*** %arrayidx40, align 8, !tbaa !3
  %cmp41 = icmp eq i8* %call34, null
  br i1 %cmp41, label %if.then43, label %for.body48

if.then43:                                        ; preds = %for.body33
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.body48

for.body48:                                       ; preds = %for.body33, %if.then43, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then43 ], [ 0, %for.body33 ]
  %call49 = tail call noalias i8* @calloc(i64 3, i64 4) #5
  %22 = bitcast i8* %call49 to i32*
  %23 = load i32****** %mv, align 8, !tbaa !3
  %arrayidx54 = getelementptr inbounds i32***** %23, i64 %indvars.iv123
  %24 = load i32***** %arrayidx54, align 8, !tbaa !3
  %arrayidx55 = getelementptr inbounds i32**** %24, i64 %indvars.iv118
  %25 = load i32**** %arrayidx55, align 8, !tbaa !3
  %arrayidx56 = getelementptr inbounds i32*** %25, i64 %indvars.iv116
  %26 = load i32*** %arrayidx56, align 8, !tbaa !3
  %arrayidx57 = getelementptr inbounds i32** %26, i64 %indvars.iv
  store i32* %22, i32** %arrayidx57, align 8, !tbaa !3
  %cmp58 = icmp eq i8* %call49, null
  br i1 %cmp58, label %if.then60, label %for.inc

if.then60:                                        ; preds = %for.body48
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body48, %if.then60
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond, label %for.inc62, label %for.body48

for.inc62:                                        ; preds = %for.inc
  %indvars.iv.next117 = add i64 %indvars.iv116, 1
  %27 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references30 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 9
  %28 = load i32* %max_num_references30, align 4, !tbaa !4
  %29 = trunc i64 %indvars.iv.next117 to i32
  %cmp31 = icmp slt i32 %29, %28
  br i1 %cmp31, label %for.body33, label %for.inc65

for.inc65:                                        ; preds = %for.inc62, %for.cond29.preheader
  %30 = phi %struct.ImageParameters* [ %16, %for.cond29.preheader ], [ %27, %for.inc62 ]
  %indvars.iv.next119 = add i64 %indvars.iv118, 1
  %height14 = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 15
  %31 = load i32* %height14, align 4, !tbaa !4
  %div15 = sdiv i32 %31, 4
  %32 = trunc i64 %indvars.iv.next119 to i32
  %cmp16 = icmp slt i32 %32, %div15
  br i1 %cmp16, label %for.body18, label %for.inc68

for.inc68:                                        ; preds = %for.inc65, %for.cond13.preheader
  %33 = phi i32 [ %10, %for.cond13.preheader ], [ %31, %for.inc65 ]
  %34 = phi %struct.ImageParameters* [ %9, %for.cond13.preheader ], [ %30, %for.inc65 ]
  %indvars.iv.next124 = add i64 %indvars.iv123, 1
  %width2 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 13
  %35 = load i32* %width2, align 4, !tbaa !4
  %div3 = sdiv i32 %35, 4
  %36 = trunc i64 %indvars.iv.next124 to i32
  %cmp4 = icmp slt i32 %36, %div3
  br i1 %cmp4, label %for.body, label %for.end70

for.end70:                                        ; preds = %for.inc68, %for.cond.preheader
  %.lcssa108 = phi i32 [ %5, %for.cond.preheader ], [ %33, %for.inc68 ]
  %div3.lcssa = phi i32 [ %div3110, %for.cond.preheader ], [ %div3, %for.inc68 ]
  %.lcssa = phi %struct.ImageParameters* [ %3, %for.cond.preheader ], [ %34, %for.inc68 ]
  %mul = mul nsw i32 %.lcssa108, %div3.lcssa
  %div74 = sdiv i32 %mul, 4
  %max_num_references75 = getelementptr inbounds %struct.ImageParameters* %.lcssa, i64 0, i32 9
  %37 = load i32* %max_num_references75, align 4, !tbaa !4
  %mul76 = mul i32 %div74, 108
  %mul80 = mul i32 %mul76, %37
  ret i32 %mul80
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_FME() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %1 = load i32* %width, align 4, !tbaa !4
  %shr = ashr i32 %1, 4
  %add = add nsw i32 %shr, 1
  %conv = sext i32 %add to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 4) #5
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** @flag_intra, align 8, !tbaa !3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8]* @.str1, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %search_range = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 8
  %4 = load i32* %search_range, align 4, !tbaa !4
  %mul = shl nsw i32 %4, 1
  %add218 = or i32 %mul, 1
  %call6 = tail call i32 @get_mem2Dint(i32*** @McostState, i32 %add218, i32 %add218) #5
  %call8 = tail call i32 @get_mem_mincost(i32****** @all_mincost) #4
  %add9 = add nsw i32 %call8, %call6
  %call10 = tail call i32 @get_mem_bwmincost(i32****** @all_bwmincost) #4
  %add11 = add nsw i32 %add9, %call10
  %call12 = tail call i32 @get_mem2D(i8*** @SearchState, i32 7, i32 7) #5
  %add13 = add nsw i32 %add11, %call12
  ret i32 %add13
}

; Function Attrs: optsize
declare i32 @get_mem2Dint(i32***, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem2D(i8***, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @free_mem_mincost(i32***** nocapture %mv) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width64 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %1 = load i32* %width64, align 4, !tbaa !4
  %cmp66 = icmp sgt i32 %1, 3
  br i1 %cmp66, label %for.cond1.preheader, label %for.end37

for.cond1.preheader:                              ; preds = %entry, %for.end32
  %2 = phi %struct.ImageParameters* [ %26, %for.end32 ], [ %0, %entry ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.end32 ], [ 0, %entry ]
  %height60 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 15
  %3 = load i32* %height60, align 4, !tbaa !4
  %cmp362 = icmp sgt i32 %3, 3
  %arrayidx28 = getelementptr inbounds i32***** %mv, i64 %indvars.iv72
  br i1 %cmp362, label %for.cond5.preheader, label %for.end32

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.end25
  %4 = phi %struct.ImageParameters* [ %21, %for.end25 ], [ %2, %for.cond1.preheader ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.end25 ], [ 0, %for.cond1.preheader ]
  %max_num_references57 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 9
  %5 = load i32* %max_num_references57, align 4, !tbaa !4
  %cmp658 = icmp sgt i32 %5, 0
  br i1 %cmp658, label %for.cond8.preheader, label %for.end25

for.cond8.preheader:                              ; preds = %for.cond5.preheader, %for.end
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.end ], [ 0, %for.cond5.preheader ]
  br label %for.body10

for.body10:                                       ; preds = %for.body10, %for.cond8.preheader
  %indvars.iv = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next, %for.body10 ]
  %6 = load i32***** %arrayidx28, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds i32**** %6, i64 %indvars.iv70
  %7 = load i32**** %arrayidx14, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32*** %7, i64 %indvars.iv68
  %8 = load i32*** %arrayidx15, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds i32** %8, i64 %indvars.iv
  %9 = load i32** %arrayidx16, align 8, !tbaa !3
  %10 = bitcast i32* %9 to i8*
  tail call void @free(i8* %10) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond, label %for.end, label %for.body10

for.end:                                          ; preds = %for.body10
  %11 = load i32***** %arrayidx28, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds i32**** %11, i64 %indvars.iv70
  %12 = load i32**** %arrayidx21, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds i32*** %12, i64 %indvars.iv68
  %13 = load i32*** %arrayidx22, align 8, !tbaa !3
  %14 = bitcast i32** %13 to i8*
  tail call void @free(i8* %14) #5
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 9
  %16 = load i32* %max_num_references, align 4, !tbaa !4
  %17 = trunc i64 %indvars.iv.next69 to i32
  %cmp6 = icmp slt i32 %17, %16
  br i1 %cmp6, label %for.cond8.preheader, label %for.end25

for.end25:                                        ; preds = %for.end, %for.cond5.preheader
  %18 = load i32***** %arrayidx28, align 8, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32**** %18, i64 %indvars.iv70
  %19 = load i32**** %arrayidx29, align 8, !tbaa !3
  %20 = bitcast i32*** %19 to i8*
  tail call void @free(i8* %20) #5
  %indvars.iv.next71 = add i64 %indvars.iv70, 1
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 15
  %22 = load i32* %height, align 4, !tbaa !4
  %div2 = sdiv i32 %22, 4
  %23 = trunc i64 %indvars.iv.next71 to i32
  %cmp3 = icmp slt i32 %23, %div2
  br i1 %cmp3, label %for.cond5.preheader, label %for.end32

for.end32:                                        ; preds = %for.cond1.preheader, %for.end25
  %24 = load i32***** %arrayidx28, align 8, !tbaa !3
  %25 = bitcast i32**** %24 to i8*
  tail call void @free(i8* %25) #5
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %26 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 13
  %27 = load i32* %width, align 4, !tbaa !4
  %div = sdiv i32 %27, 4
  %28 = trunc i64 %indvars.iv.next73 to i32
  %cmp = icmp slt i32 %28, %div
  br i1 %cmp, label %for.cond1.preheader, label %for.end37

for.end37:                                        ; preds = %for.end32, %entry
  %29 = bitcast i32***** %mv to i8*
  tail call void @free(i8* %29) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @free_mem_bwmincost(i32***** nocapture %mv) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width64 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %1 = load i32* %width64, align 4, !tbaa !4
  %cmp66 = icmp sgt i32 %1, 3
  br i1 %cmp66, label %for.cond1.preheader, label %for.end37

for.cond1.preheader:                              ; preds = %entry, %for.end32
  %2 = phi %struct.ImageParameters* [ %26, %for.end32 ], [ %0, %entry ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.end32 ], [ 0, %entry ]
  %height60 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 15
  %3 = load i32* %height60, align 4, !tbaa !4
  %cmp362 = icmp sgt i32 %3, 3
  %arrayidx28 = getelementptr inbounds i32***** %mv, i64 %indvars.iv72
  br i1 %cmp362, label %for.cond5.preheader, label %for.end32

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.end25
  %4 = phi %struct.ImageParameters* [ %21, %for.end25 ], [ %2, %for.cond1.preheader ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.end25 ], [ 0, %for.cond1.preheader ]
  %max_num_references57 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 9
  %5 = load i32* %max_num_references57, align 4, !tbaa !4
  %cmp658 = icmp sgt i32 %5, 0
  br i1 %cmp658, label %for.cond8.preheader, label %for.end25

for.cond8.preheader:                              ; preds = %for.cond5.preheader, %for.end
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.end ], [ 0, %for.cond5.preheader ]
  br label %for.body10

for.body10:                                       ; preds = %for.body10, %for.cond8.preheader
  %indvars.iv = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next, %for.body10 ]
  %6 = load i32***** %arrayidx28, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds i32**** %6, i64 %indvars.iv70
  %7 = load i32**** %arrayidx14, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32*** %7, i64 %indvars.iv68
  %8 = load i32*** %arrayidx15, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds i32** %8, i64 %indvars.iv
  %9 = load i32** %arrayidx16, align 8, !tbaa !3
  %10 = bitcast i32* %9 to i8*
  tail call void @free(i8* %10) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond, label %for.end, label %for.body10

for.end:                                          ; preds = %for.body10
  %11 = load i32***** %arrayidx28, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds i32**** %11, i64 %indvars.iv70
  %12 = load i32**** %arrayidx21, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds i32*** %12, i64 %indvars.iv68
  %13 = load i32*** %arrayidx22, align 8, !tbaa !3
  %14 = bitcast i32** %13 to i8*
  tail call void @free(i8* %14) #5
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 9
  %16 = load i32* %max_num_references, align 4, !tbaa !4
  %17 = trunc i64 %indvars.iv.next69 to i32
  %cmp6 = icmp slt i32 %17, %16
  br i1 %cmp6, label %for.cond8.preheader, label %for.end25

for.end25:                                        ; preds = %for.end, %for.cond5.preheader
  %18 = load i32***** %arrayidx28, align 8, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32**** %18, i64 %indvars.iv70
  %19 = load i32**** %arrayidx29, align 8, !tbaa !3
  %20 = bitcast i32*** %19 to i8*
  tail call void @free(i8* %20) #5
  %indvars.iv.next71 = add i64 %indvars.iv70, 1
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 15
  %22 = load i32* %height, align 4, !tbaa !4
  %div2 = sdiv i32 %22, 4
  %23 = trunc i64 %indvars.iv.next71 to i32
  %cmp3 = icmp slt i32 %23, %div2
  br i1 %cmp3, label %for.cond5.preheader, label %for.end32

for.end32:                                        ; preds = %for.cond1.preheader, %for.end25
  %24 = load i32***** %arrayidx28, align 8, !tbaa !3
  %25 = bitcast i32**** %24 to i8*
  tail call void @free(i8* %25) #5
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %26 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 13
  %27 = load i32* %width, align 4, !tbaa !4
  %div = sdiv i32 %27, 4
  %28 = trunc i64 %indvars.iv.next73 to i32
  %cmp = icmp slt i32 %28, %div
  br i1 %cmp, label %for.cond1.preheader, label %for.end37

for.end37:                                        ; preds = %for.end32, %entry
  %29 = bitcast i32***** %mv to i8*
  tail call void @free(i8* %29) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem_FME() #0 {
entry:
  %0 = load i32*** @McostState, align 8, !tbaa !3
  tail call void @free_mem2Dint(i32** %0) #5
  %1 = load i32****** @all_mincost, align 8, !tbaa !3
  tail call void @free_mem_mincost(i32***** %1) #4
  %2 = load i32****** @all_bwmincost, align 8, !tbaa !3
  tail call void @free_mem_bwmincost(i32***** %2) #4
  %3 = load i8*** @SearchState, align 8, !tbaa !3
  tail call void @free_mem2D(i8** %3) #5
  %4 = load i32** @flag_intra, align 8, !tbaa !3
  %5 = bitcast i32* %4 to i8*
  tail call void @free(i8* %5) #5
  ret void
}

; Function Attrs: optsize
declare void @free_mem2Dint(i32**) #2

; Function Attrs: optsize
declare void @free_mem2D(i8**) #2

; Function Attrs: nounwind optsize uwtable
define i32 @PartCalMad(i16* %ref_pic, i16** nocapture %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* nocapture %get_ref_line, i32 %blocksize_y, i32 %blocksize_x, i32 %blocksize_x4, i32 %mcost, i32 %min_mcost, i32 %cand_x, i32 %cand_y) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !4
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !4
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !4
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %height2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %5 = load i32* %height2, align 4, !tbaa !4
  %div = sdiv i32 %5, 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %height3 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %6 = load i32* %height3, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %6, %cond.false ]
  %cmp63 = icmp sgt i32 %blocksize_y, 0
  br i1 %cmp63, label %for.body.lr.ph, label %for.end42

for.body.lr.ph:                                   ; preds = %cond.end
  %cmp758 = icmp sgt i32 %blocksize_x4, 0
  %7 = zext i32 %cand_y to i64
  br label %for.body

for.cond:                                         ; preds = %for.end
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %8, %blocksize_y
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end42

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %9 = phi %struct.ImageParameters* [ %0, %for.body.lr.ph ], [ %.pre, %for.cond.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %mcost.addr.065 = phi i32 [ %mcost, %for.body.lr.ph ], [ %mcost.addr.1.lcssa, %for.cond.for.body_crit_edge ]
  %10 = add nsw i64 %indvars.iv, %7
  %width = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 13
  %11 = load i32* %width, align 4, !tbaa !4
  %12 = trunc i64 %10 to i32
  %call = tail call i16* %get_ref_line(i32 %blocksize_x, i16* %ref_pic, i32 %12, i32 %cand_x, i32 %cond, i32 %11) #5
  br i1 %cmp758, label %for.body8.lr.ph, label %for.end

for.body8.lr.ph:                                  ; preds = %for.body
  %arrayidx5 = getelementptr inbounds i16** %orig_pic, i64 %indvars.iv
  %13 = load i16** %arrayidx5, align 8, !tbaa !3
  %14 = load i32** @byte_abs, align 8, !tbaa !3
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body8.lr.ph
  %ref_line.062 = phi i16* [ %call, %for.body8.lr.ph ], [ %incdec.ptr32, %for.body8 ]
  %orig_line.061 = phi i16* [ %13, %for.body8.lr.ph ], [ %incdec.ptr30, %for.body8 ]
  %mcost.addr.160 = phi i32 [ %mcost.addr.065, %for.body8.lr.ph ], [ %add37, %for.body8 ]
  %x4.059 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.body8 ]
  %incdec.ptr = getelementptr inbounds i16* %orig_line.061, i64 1
  %15 = load i16* %orig_line.061, align 2, !tbaa !5
  %conv = zext i16 %15 to i64
  %incdec.ptr9 = getelementptr inbounds i16* %ref_line.062, i64 1
  %16 = load i16* %ref_line.062, align 2, !tbaa !5
  %conv10 = zext i16 %16 to i64
  %sub = sub i64 %conv, %conv10
  %arrayidx12 = getelementptr inbounds i32* %14, i64 %sub
  %17 = load i32* %arrayidx12, align 4, !tbaa !4
  %add13 = add nsw i32 %17, %mcost.addr.160
  %incdec.ptr14 = getelementptr inbounds i16* %orig_line.061, i64 2
  %18 = load i16* %incdec.ptr, align 2, !tbaa !5
  %conv15 = zext i16 %18 to i64
  %incdec.ptr16 = getelementptr inbounds i16* %ref_line.062, i64 2
  %19 = load i16* %incdec.ptr9, align 2, !tbaa !5
  %conv17 = zext i16 %19 to i64
  %sub18 = sub i64 %conv15, %conv17
  %arrayidx20 = getelementptr inbounds i32* %14, i64 %sub18
  %20 = load i32* %arrayidx20, align 4, !tbaa !4
  %add21 = add nsw i32 %add13, %20
  %incdec.ptr22 = getelementptr inbounds i16* %orig_line.061, i64 3
  %21 = load i16* %incdec.ptr14, align 2, !tbaa !5
  %conv23 = zext i16 %21 to i64
  %incdec.ptr24 = getelementptr inbounds i16* %ref_line.062, i64 3
  %22 = load i16* %incdec.ptr16, align 2, !tbaa !5
  %conv25 = zext i16 %22 to i64
  %sub26 = sub i64 %conv23, %conv25
  %arrayidx28 = getelementptr inbounds i32* %14, i64 %sub26
  %23 = load i32* %arrayidx28, align 4, !tbaa !4
  %add29 = add nsw i32 %add21, %23
  %incdec.ptr30 = getelementptr inbounds i16* %orig_line.061, i64 4
  %24 = load i16* %incdec.ptr22, align 2, !tbaa !5
  %conv31 = zext i16 %24 to i64
  %incdec.ptr32 = getelementptr inbounds i16* %ref_line.062, i64 4
  %25 = load i16* %incdec.ptr24, align 2, !tbaa !5
  %conv33 = zext i16 %25 to i64
  %sub34 = sub i64 %conv31, %conv33
  %arrayidx36 = getelementptr inbounds i32* %14, i64 %sub34
  %26 = load i32* %arrayidx36, align 4, !tbaa !4
  %add37 = add nsw i32 %add29, %26
  %inc = add nsw i32 %x4.059, 1
  %exitcond = icmp eq i32 %inc, %blocksize_x4
  br i1 %exitcond, label %for.end, label %for.body8

for.end:                                          ; preds = %for.body8, %for.body
  %mcost.addr.1.lcssa = phi i32 [ %mcost.addr.065, %for.body ], [ %add37, %for.body8 ]
  %cmp38 = icmp slt i32 %mcost.addr.1.lcssa, %min_mcost
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp38, label %for.cond, label %for.end42

for.end42:                                        ; preds = %for.cond, %for.end, %cond.end
  %mcost.addr.2 = phi i32 [ %mcost, %cond.end ], [ %mcost.addr.1.lcssa, %for.end ], [ %mcost.addr.1.lcssa, %for.cond ]
  ret i32 %mcost.addr.2
}

; Function Attrs: nounwind optsize uwtable
define i32 @FastIntegerPelBlockMotionSearch(i16** nocapture %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* nocapture %mv_x, i16* nocapture %mv_y, i32 %search_range, i32 %min_mcost, double %lambda) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !4
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !4
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !4
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem2330 = shl i32 %2, 1
  %5 = and i32 %rem2330, 2
  %6 = add i32 %5, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %idxprom5 = sext i16 %ref to i64
  %add = add nsw i32 %cond4, %list
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom6
  %7 = load %struct.storable_picture*** %arrayidx7, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds %struct.storable_picture** %7, i64 %idxprom5
  %8 = load %struct.storable_picture** %arrayidx8, align 8, !tbaa !3
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 26
  %9 = load i16** %imgY_11, align 8, !tbaa !3
  %mul = fmul double %lambda, 6.553600e+04
  %add9 = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add9 to i32
  %idxprom10 = sext i32 %blocktype to i64
  %10 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 20, i64 %idxprom10, i64 1
  %11 = load i32* %arrayidx12, align 4, !tbaa !4
  %arrayidx16 = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 20, i64 %idxprom10, i64 0
  %12 = load i32* %arrayidx16, align 4, !tbaa !4
  %shr = ashr i32 %12, 2
  %shl = shl i32 %pic_pix_x, 2
  %conv17 = sext i16 %pred_mv_x to i32
  %add18 = add nsw i32 %conv17, %shl
  %shl19 = shl i32 %pic_pix_y, 2
  %conv20 = sext i16 %pred_mv_y to i32
  %add21 = add nsw i32 %conv20, %shl19
  %13 = load i16* %mv_x, align 2, !tbaa !5
  %conv22 = sext i16 %13 to i32
  %add23 = add nsw i32 %conv22, %pic_pix_x
  %14 = load i16* %mv_y, align 2, !tbaa !5
  %conv24 = sext i16 %14 to i32
  %add25 = add nsw i32 %conv24, %pic_pix_y
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 34
  %15 = load i32* %successive_Bframe, align 4, !tbaa !4
  br i1 %tobool, label %cond.false37, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %cond.end
  %current_mb_nr29 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %16 = load i32* %current_mb_nr29, align 4, !tbaa !4
  %idxprom30 = sext i32 %16 to i64
  %mb_data31 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %17 = load %struct.macroblock** %mb_data31, align 8, !tbaa !3
  %mb_field33 = getelementptr inbounds %struct.macroblock* %17, i64 %idxprom30, i32 22
  %18 = load i32* %mb_field33, align 4, !tbaa !4
  %tobool34 = icmp eq i32 %18, 0
  br i1 %tobool34, label %cond.false37, label %cond.true35

cond.true35:                                      ; preds = %land.lhs.true28
  %height36 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %19 = load i32* %height36, align 4, !tbaa !4
  %div = sdiv i32 %19, 2
  br label %cond.end39

cond.false37:                                     ; preds = %land.lhs.true28, %cond.end
  %height38 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %20 = load i32* %height38, align 4, !tbaa !4
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false37, %cond.true35
  %cond40 = phi i32 [ %div, %cond.true35 ], [ %20, %cond.false37 ]
  %cmp = icmp sgt i32 %add23, %search_range
  br i1 %cmp, label %land.lhs.true42, label %if.else

land.lhs.true42:                                  ; preds = %cond.end39
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %21 = load i32* %width, align 4, !tbaa !4
  %sub = xor i32 %search_range, -1
  %sub43 = sub i32 %sub, %12
  %sub44 = add i32 %sub43, %21
  %cmp45 = icmp slt i32 %add23, %sub44
  %cmp48 = icmp sgt i32 %add25, %search_range
  %or.cond = and i1 %cmp45, %cmp48
  br i1 %or.cond, label %land.lhs.true50, label %if.else

land.lhs.true50:                                  ; preds = %land.lhs.true42
  %sub52 = sub i32 %sub, %11
  %sub53 = add i32 %sub52, %cond40
  %cmp54 = icmp slt i32 %add25, %sub53
  br i1 %cmp54, label %if.end, label %if.else

if.else:                                          ; preds = %land.lhs.true50, %land.lhs.true42, %cond.end39
  br label %if.end

if.end:                                           ; preds = %land.lhs.true50, %if.else
  %get_ref_line.0 = phi i16* (i32, i16*, i32, i32, i32, i32)* [ @UMVLineX, %if.else ], [ @FastLineX, %land.lhs.true50 ]
  %22 = load i32*** @McostState, align 8, !tbaa !3
  %23 = load i32** %22, align 8, !tbaa !3
  %24 = bitcast i32* %23 to i8*
  %mul57 = shl nsw i32 %search_range, 1
  %add582269 = or i32 %mul57, 1
  %mul61 = shl i32 %add582269, 2
  %mul62 = mul i32 %mul61, %add582269
  %conv63 = sext i32 %mul62 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 %conv63, i32 4, i1 false)
  %conv64 = sext i16 %ref to i32
  %cmp65 = icmp sgt i16 %ref, 0
  br i1 %cmp65, label %if.then67, label %if.else89

if.then67:                                        ; preds = %if.end
  %25 = load i32* @pred_SAD_ref, align 4, !tbaa !4
  %cmp68 = icmp eq i32 %25, 0
  br i1 %cmp68, label %if.end137, label %if.then70

if.then70:                                        ; preds = %if.then67
  %arrayidx72 = getelementptr inbounds [8 x float]* @Bsize, i64 0, i64 %idxprom10
  %26 = load float* %arrayidx72, align 4, !tbaa !0
  %mul73 = mul nsw i32 %25, %25
  %conv74 = sitofp i32 %mul73 to float
  %div75 = fdiv float %26, %conv74
  %arrayidx77 = getelementptr inbounds [8 x float]* @AlphaSec, i64 0, i64 %idxprom10
  %27 = load float* %arrayidx77, align 4, !tbaa !0
  %sub78 = fsub float %div75, %27
  %arrayidx85 = getelementptr inbounds [8 x float]* @AlphaThird, i64 0, i64 %idxprom10
  %28 = load float* %arrayidx85, align 4, !tbaa !0
  %sub86 = fsub float %div75, %28
  br label %if.end137

if.else89:                                        ; preds = %if.end
  %cmp90 = icmp eq i32 %blocktype, 1
  br i1 %cmp90, label %if.then92, label %if.else114

if.then92:                                        ; preds = %if.else89
  %29 = load i32* @pred_SAD_space, align 4, !tbaa !4
  %cmp93 = icmp eq i32 %29, 0
  br i1 %cmp93, label %if.end137, label %if.then95

if.then95:                                        ; preds = %if.then92
  %arrayidx97 = getelementptr inbounds [8 x float]* @Bsize, i64 0, i64 %idxprom10
  %30 = load float* %arrayidx97, align 4, !tbaa !0
  %mul98 = mul nsw i32 %29, %29
  %conv99 = sitofp i32 %mul98 to float
  %div100 = fdiv float %30, %conv99
  %arrayidx102 = getelementptr inbounds [8 x float]* @AlphaSec, i64 0, i64 %idxprom10
  %31 = load float* %arrayidx102, align 4, !tbaa !0
  %sub103 = fsub float %div100, %31
  %arrayidx110 = getelementptr inbounds [8 x float]* @AlphaThird, i64 0, i64 %idxprom10
  %32 = load float* %arrayidx110, align 4, !tbaa !0
  %sub111 = fsub float %div100, %32
  br label %if.end137

if.else114:                                       ; preds = %if.else89
  %33 = load i32* @pred_SAD_uplayer, align 4, !tbaa !4
  %cmp115 = icmp eq i32 %33, 0
  br i1 %cmp115, label %if.end137, label %if.then117

if.then117:                                       ; preds = %if.else114
  %arrayidx119 = getelementptr inbounds [8 x float]* @Bsize, i64 0, i64 %idxprom10
  %34 = load float* %arrayidx119, align 4, !tbaa !0
  %mul120 = mul nsw i32 %33, %33
  %conv121 = sitofp i32 %mul120 to float
  %div122 = fdiv float %34, %conv121
  %arrayidx124 = getelementptr inbounds [8 x float]* @AlphaSec, i64 0, i64 %idxprom10
  %35 = load float* %arrayidx124, align 4, !tbaa !0
  %sub125 = fsub float %div122, %35
  %arrayidx132 = getelementptr inbounds [8 x float]* @AlphaThird, i64 0, i64 %idxprom10
  %36 = load float* %arrayidx132, align 4, !tbaa !0
  %sub133 = fsub float %div122, %36
  br label %if.end137

if.end137:                                        ; preds = %if.else114, %if.then92, %if.then67, %if.then95, %if.then117, %if.then70
  %betaSec.0 = phi float [ %sub78, %if.then70 ], [ %sub103, %if.then95 ], [ %sub125, %if.then117 ], [ 0.000000e+00, %if.then67 ], [ 0.000000e+00, %if.then92 ], [ 0.000000e+00, %if.else114 ]
  %betaThird.0 = phi float [ %sub86, %if.then70 ], [ %sub111, %if.then95 ], [ %sub133, %if.then117 ], [ 0.000000e+00, %if.then67 ], [ 0.000000e+00, %if.then92 ], [ 0.000000e+00, %if.else114 ]
  %shl138 = shl i32 %add23, 2
  %sub139 = sub nsw i32 %shl138, %add18
  %idxprom140 = sext i32 %sub139 to i64
  %37 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx141 = getelementptr inbounds i32* %37, i64 %idxprom140
  %38 = load i32* %arrayidx141, align 4, !tbaa !4
  %shl142 = shl i32 %add25, 2
  %sub143 = sub nsw i32 %shl142, %add21
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds i32* %37, i64 %idxprom144
  %39 = load i32* %arrayidx145, align 4, !tbaa !4
  %add146 = add nsw i32 %39, %38
  %mul147 = mul nsw i32 %add146, %conv
  %shr148 = ashr i32 %mul147, 16
  %call = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr148, i32 %min_mcost, i32 %add23, i32 %add25) #4
  %idxprom149 = sext i32 %search_range to i64
  %40 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx151 = getelementptr inbounds i32** %40, i64 %idxprom149
  %41 = load i32** %arrayidx151, align 8, !tbaa !3
  %arrayidx152 = getelementptr inbounds i32* %41, i64 %idxprom149
  store i32 %call, i32* %arrayidx152, align 4, !tbaa !4
  %cmp153 = icmp slt i32 %call, %min_mcost
  %add23. = select i1 %cmp153, i32 %add23, i32 0
  %add25. = select i1 %cmp153, i32 %add25, i32 0
  %call.min_mcost = select i1 %cmp153, i32 %call, i32 %min_mcost
  br label %for.body

for.body:                                         ; preds = %for.inc, %if.end137
  %42 = phi i32** [ %40, %if.end137 ], [ %54, %for.inc ]
  %indvars.iv2461 = phi i64 [ 0, %if.end137 ], [ %indvars.iv.next2462, %for.inc ]
  %min_mcost.addr.12424 = phi i32 [ %call.min_mcost, %if.end137 ], [ %min_mcost.addr.2, %for.inc ]
  %best_y.12422 = phi i32 [ %add25., %if.end137 ], [ %best_y.2, %for.inc ]
  %best_x.12421 = phi i32 [ %add23., %if.end137 ], [ %best_x.2, %for.inc ]
  %arrayidx160 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %indvars.iv2461
  %43 = load i32* %arrayidx160, align 4, !tbaa !4
  %add161 = add nsw i32 %43, %add23.
  %arrayidx163 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %indvars.iv2461
  %44 = load i32* %arrayidx163, align 4, !tbaa !4
  %add164 = add nsw i32 %44, %add25.
  %sub165 = sub nsw i32 %add161, %add23
  %ispos2326 = icmp sgt i32 %sub165, -1
  %neg2327 = sub i32 0, %sub165
  %45 = select i1 %ispos2326, i32 %sub165, i32 %neg2327
  %cmp167 = icmp sgt i32 %45, %search_range
  br i1 %cmp167, label %for.inc, label %land.lhs.true169

land.lhs.true169:                                 ; preds = %for.body
  %sub170 = sub nsw i32 %add164, %add25
  %ispos2328 = icmp sgt i32 %sub170, -1
  %neg2329 = sub i32 0, %sub170
  %46 = select i1 %ispos2328, i32 %sub170, i32 %neg2329
  %cmp172 = icmp sgt i32 %46, %search_range
  br i1 %cmp172, label %for.inc, label %if.then174

if.then174:                                       ; preds = %land.lhs.true169
  %add176 = add nsw i32 %sub165, %search_range
  %idxprom177 = sext i32 %add176 to i64
  %add179 = add nsw i32 %sub170, %search_range
  %idxprom180 = sext i32 %add179 to i64
  %arrayidx181 = getelementptr inbounds i32** %42, i64 %idxprom180
  %47 = load i32** %arrayidx181, align 8, !tbaa !3
  %arrayidx182 = getelementptr inbounds i32* %47, i64 %idxprom177
  %48 = load i32* %arrayidx182, align 4, !tbaa !4
  %tobool183 = icmp eq i32 %48, 0
  br i1 %tobool183, label %if.then184, label %for.inc

if.then184:                                       ; preds = %if.then174
  %shl185 = shl i32 %add161, 2
  %sub186 = sub nsw i32 %shl185, %add18
  %idxprom187 = sext i32 %sub186 to i64
  %49 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx188 = getelementptr inbounds i32* %49, i64 %idxprom187
  %50 = load i32* %arrayidx188, align 4, !tbaa !4
  %shl189 = shl i32 %add164, 2
  %sub190 = sub nsw i32 %shl189, %add21
  %idxprom191 = sext i32 %sub190 to i64
  %arrayidx192 = getelementptr inbounds i32* %49, i64 %idxprom191
  %51 = load i32* %arrayidx192, align 4, !tbaa !4
  %add193 = add nsw i32 %51, %50
  %mul194 = mul nsw i32 %add193, %conv
  %shr195 = ashr i32 %mul194, 16
  %call196 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr195, i32 %min_mcost.addr.12424, i32 %add161, i32 %add164) #4
  %52 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx203 = getelementptr inbounds i32** %52, i64 %idxprom180
  %53 = load i32** %arrayidx203, align 8, !tbaa !3
  %arrayidx204 = getelementptr inbounds i32* %53, i64 %idxprom177
  store i32 %call196, i32* %arrayidx204, align 4, !tbaa !4
  %cmp205 = icmp slt i32 %call196, %min_mcost.addr.12424
  %add161.best_x.1 = select i1 %cmp205, i32 %add161, i32 %best_x.12421
  %add164.best_y.1 = select i1 %cmp205, i32 %add164, i32 %best_y.12422
  %call196.min_mcost.addr.1 = select i1 %cmp205, i32 %call196, i32 %min_mcost.addr.12424
  br label %for.inc

for.inc:                                          ; preds = %if.then184, %if.then174, %land.lhs.true169, %for.body
  %54 = phi i32** [ %42, %if.then174 ], [ %42, %land.lhs.true169 ], [ %42, %for.body ], [ %52, %if.then184 ]
  %best_x.2 = phi i32 [ %best_x.12421, %if.then174 ], [ %best_x.12421, %land.lhs.true169 ], [ %best_x.12421, %for.body ], [ %add161.best_x.1, %if.then184 ]
  %best_y.2 = phi i32 [ %best_y.12422, %if.then174 ], [ %best_y.12422, %land.lhs.true169 ], [ %best_y.12422, %for.body ], [ %add164.best_y.1, %if.then184 ]
  %min_mcost.addr.2 = phi i32 [ %min_mcost.addr.12424, %if.then174 ], [ %min_mcost.addr.12424, %land.lhs.true169 ], [ %min_mcost.addr.12424, %for.body ], [ %call196.min_mcost.addr.1, %if.then184 ]
  %indvars.iv.next2462 = add i64 %indvars.iv2461, 1
  %lftr.wideiv2463 = trunc i64 %indvars.iv.next2462 to i32
  %exitcond2464 = icmp eq i32 %lftr.wideiv2463, 4
  br i1 %exitcond2464, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %55 = or i16 %14, %13
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %if.end321, label %if.then215

if.then215:                                       ; preds = %for.end
  %sub216 = sub i32 0, %conv22
  %ispos2318 = icmp sgt i32 %sub216, -1
  %57 = select i1 %ispos2318, i32 %sub216, i32 %conv22
  %cmp218 = icmp sgt i32 %57, %search_range
  br i1 %cmp218, label %if.end261, label %land.lhs.true220

land.lhs.true220:                                 ; preds = %if.then215
  %sub221 = sub i32 0, %conv24
  %ispos2324 = icmp sgt i32 %sub221, -1
  %58 = select i1 %ispos2324, i32 %sub221, i32 %conv24
  %cmp223 = icmp sgt i32 %58, %search_range
  br i1 %cmp223, label %if.end261, label %if.then225

if.then225:                                       ; preds = %land.lhs.true220
  %add227 = sub i32 %search_range, %conv22
  %idxprom228 = sext i32 %add227 to i64
  %add230 = sub i32 %search_range, %conv24
  %idxprom231 = sext i32 %add230 to i64
  %arrayidx232 = getelementptr inbounds i32** %54, i64 %idxprom231
  %59 = load i32** %arrayidx232, align 8, !tbaa !3
  %arrayidx233 = getelementptr inbounds i32* %59, i64 %idxprom228
  %60 = load i32* %arrayidx233, align 4, !tbaa !4
  %tobool234 = icmp eq i32 %60, 0
  br i1 %tobool234, label %if.then235, label %if.end261

if.then235:                                       ; preds = %if.then225
  %sub237 = sub i32 0, %conv17
  %idxprom238 = sext i32 %sub237 to i64
  %61 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx239 = getelementptr inbounds i32* %61, i64 %idxprom238
  %62 = load i32* %arrayidx239, align 4, !tbaa !4
  %sub241 = sub i32 0, %conv20
  %idxprom242 = sext i32 %sub241 to i64
  %arrayidx243 = getelementptr inbounds i32* %61, i64 %idxprom242
  %63 = load i32* %arrayidx243, align 4, !tbaa !4
  %add244 = add nsw i32 %63, %62
  %mul245 = mul nsw i32 %add244, %conv
  %shr246 = ashr i32 %mul245, 16
  %call247 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr246, i32 %min_mcost.addr.2, i32 %pic_pix_x, i32 %pic_pix_y) #4
  %64 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx254 = getelementptr inbounds i32** %64, i64 %idxprom231
  %65 = load i32** %arrayidx254, align 8, !tbaa !3
  %arrayidx255 = getelementptr inbounds i32* %65, i64 %idxprom228
  store i32 %call247, i32* %arrayidx255, align 4, !tbaa !4
  %cmp256 = icmp slt i32 %call247, %min_mcost.addr.2
  %pic_pix_x.best_x.1 = select i1 %cmp256, i32 %pic_pix_x, i32 %best_x.2
  %pic_pix_y.best_y.1 = select i1 %cmp256, i32 %pic_pix_y, i32 %best_y.2
  %call247.min_mcost.addr.1 = select i1 %cmp256, i32 %call247, i32 %min_mcost.addr.2
  br label %if.end261

if.end261:                                        ; preds = %if.then235, %if.then225, %land.lhs.true220, %if.then215
  %66 = phi i32** [ %54, %if.then225 ], [ %54, %land.lhs.true220 ], [ %54, %if.then215 ], [ %64, %if.then235 ]
  %best_x.3 = phi i32 [ %best_x.2, %if.then225 ], [ %best_x.2, %land.lhs.true220 ], [ %best_x.2, %if.then215 ], [ %pic_pix_x.best_x.1, %if.then235 ]
  %best_y.3 = phi i32 [ %best_y.2, %if.then225 ], [ %best_y.2, %land.lhs.true220 ], [ %best_y.2, %if.then215 ], [ %pic_pix_y.best_y.1, %if.then235 ]
  %min_mcost.addr.3 = phi i32 [ %min_mcost.addr.2, %if.then225 ], [ %min_mcost.addr.2, %land.lhs.true220 ], [ %min_mcost.addr.2, %if.then215 ], [ %call247.min_mcost.addr.1, %if.then235 ]
  br label %for.body265

for.body265:                                      ; preds = %for.inc318, %if.end261
  %67 = phi i32** [ %66, %if.end261 ], [ %79, %for.inc318 ]
  %indvars.iv2457 = phi i64 [ 0, %if.end261 ], [ %indvars.iv.next2458, %for.inc318 ]
  %min_mcost.addr.42420 = phi i32 [ %min_mcost.addr.3, %if.end261 ], [ %min_mcost.addr.5, %for.inc318 ]
  %best_y.42418 = phi i32 [ %best_y.3, %if.end261 ], [ %best_y.5, %for.inc318 ]
  %best_x.42417 = phi i32 [ %best_x.3, %if.end261 ], [ %best_x.5, %for.inc318 ]
  %arrayidx267 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %indvars.iv2457
  %68 = load i32* %arrayidx267, align 4, !tbaa !4
  %add268 = add nsw i32 %68, %best_x.3
  %arrayidx270 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %indvars.iv2457
  %69 = load i32* %arrayidx270, align 4, !tbaa !4
  %add271 = add nsw i32 %69, %best_y.3
  %sub272 = sub nsw i32 %add268, %add23
  %ispos2320 = icmp sgt i32 %sub272, -1
  %neg2321 = sub i32 0, %sub272
  %70 = select i1 %ispos2320, i32 %sub272, i32 %neg2321
  %cmp274 = icmp sgt i32 %70, %search_range
  br i1 %cmp274, label %for.inc318, label %land.lhs.true276

land.lhs.true276:                                 ; preds = %for.body265
  %sub277 = sub nsw i32 %add271, %add25
  %ispos2322 = icmp sgt i32 %sub277, -1
  %neg2323 = sub i32 0, %sub277
  %71 = select i1 %ispos2322, i32 %sub277, i32 %neg2323
  %cmp279 = icmp sgt i32 %71, %search_range
  br i1 %cmp279, label %for.inc318, label %if.then281

if.then281:                                       ; preds = %land.lhs.true276
  %add283 = add nsw i32 %sub272, %search_range
  %idxprom284 = sext i32 %add283 to i64
  %add286 = add nsw i32 %sub277, %search_range
  %idxprom287 = sext i32 %add286 to i64
  %arrayidx288 = getelementptr inbounds i32** %67, i64 %idxprom287
  %72 = load i32** %arrayidx288, align 8, !tbaa !3
  %arrayidx289 = getelementptr inbounds i32* %72, i64 %idxprom284
  %73 = load i32* %arrayidx289, align 4, !tbaa !4
  %tobool290 = icmp eq i32 %73, 0
  br i1 %tobool290, label %if.then291, label %for.inc318

if.then291:                                       ; preds = %if.then281
  %shl292 = shl i32 %add268, 2
  %sub293 = sub nsw i32 %shl292, %add18
  %idxprom294 = sext i32 %sub293 to i64
  %74 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx295 = getelementptr inbounds i32* %74, i64 %idxprom294
  %75 = load i32* %arrayidx295, align 4, !tbaa !4
  %shl296 = shl i32 %add271, 2
  %sub297 = sub nsw i32 %shl296, %add21
  %idxprom298 = sext i32 %sub297 to i64
  %arrayidx299 = getelementptr inbounds i32* %74, i64 %idxprom298
  %76 = load i32* %arrayidx299, align 4, !tbaa !4
  %add300 = add nsw i32 %76, %75
  %mul301 = mul nsw i32 %add300, %conv
  %shr302 = ashr i32 %mul301, 16
  %call303 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr302, i32 %min_mcost.addr.42420, i32 %add268, i32 %add271) #4
  %77 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx310 = getelementptr inbounds i32** %77, i64 %idxprom287
  %78 = load i32** %arrayidx310, align 8, !tbaa !3
  %arrayidx311 = getelementptr inbounds i32* %78, i64 %idxprom284
  store i32 %call303, i32* %arrayidx311, align 4, !tbaa !4
  %cmp312 = icmp slt i32 %call303, %min_mcost.addr.42420
  %add268.best_x.4 = select i1 %cmp312, i32 %add268, i32 %best_x.42417
  %add271.best_y.4 = select i1 %cmp312, i32 %add271, i32 %best_y.42418
  %call303.min_mcost.addr.4 = select i1 %cmp312, i32 %call303, i32 %min_mcost.addr.42420
  br label %for.inc318

for.inc318:                                       ; preds = %if.then291, %if.then281, %land.lhs.true276, %for.body265
  %79 = phi i32** [ %67, %if.then281 ], [ %67, %land.lhs.true276 ], [ %67, %for.body265 ], [ %77, %if.then291 ]
  %best_x.5 = phi i32 [ %best_x.42417, %if.then281 ], [ %best_x.42417, %land.lhs.true276 ], [ %best_x.42417, %for.body265 ], [ %add268.best_x.4, %if.then291 ]
  %best_y.5 = phi i32 [ %best_y.42418, %if.then281 ], [ %best_y.42418, %land.lhs.true276 ], [ %best_y.42418, %for.body265 ], [ %add271.best_y.4, %if.then291 ]
  %min_mcost.addr.5 = phi i32 [ %min_mcost.addr.42420, %if.then281 ], [ %min_mcost.addr.42420, %land.lhs.true276 ], [ %min_mcost.addr.42420, %for.body265 ], [ %call303.min_mcost.addr.4, %if.then291 ]
  %indvars.iv.next2458 = add i64 %indvars.iv2457, 1
  %lftr.wideiv2459 = trunc i64 %indvars.iv.next2458 to i32
  %exitcond2460 = icmp eq i32 %lftr.wideiv2459, 4
  br i1 %exitcond2460, label %if.end321, label %for.body265

if.end321:                                        ; preds = %for.inc318, %for.end
  %80 = phi i32** [ %54, %for.end ], [ %79, %for.inc318 ]
  %best_x.6 = phi i32 [ %best_x.2, %for.end ], [ %best_x.5, %for.inc318 ]
  %best_y.6 = phi i32 [ %best_y.2, %for.end ], [ %best_y.5, %for.inc318 ]
  %min_mcost.addr.6 = phi i32 [ %min_mcost.addr.2, %for.end ], [ %min_mcost.addr.5, %for.inc318 ]
  %cmp322 = icmp sgt i32 %blocktype, 1
  br i1 %cmp322, label %if.then324, label %if.end392

if.then324:                                       ; preds = %if.end321
  %81 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 0), align 4, !tbaa !4
  %div325 = sdiv i32 %81, 4
  %add326 = add nsw i32 %div325, %pic_pix_x
  %82 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 1), align 4, !tbaa !4
  %div327 = sdiv i32 %82, 4
  %add328 = add nsw i32 %div327, %pic_pix_y
  %sub329 = sub nsw i32 %add326, %add23
  %ispos2314 = icmp sgt i32 %sub329, -1
  %neg2315 = sub i32 0, %sub329
  %83 = select i1 %ispos2314, i32 %sub329, i32 %neg2315
  %cmp331 = icmp sgt i32 %83, %search_range
  br i1 %cmp331, label %if.end374, label %land.lhs.true333

land.lhs.true333:                                 ; preds = %if.then324
  %sub334 = sub nsw i32 %add328, %add25
  %ispos2316 = icmp sgt i32 %sub334, -1
  %neg2317 = sub i32 0, %sub334
  %84 = select i1 %ispos2316, i32 %sub334, i32 %neg2317
  %cmp336 = icmp sgt i32 %84, %search_range
  br i1 %cmp336, label %if.end374, label %if.then338

if.then338:                                       ; preds = %land.lhs.true333
  %add340 = add nsw i32 %sub329, %search_range
  %idxprom341 = sext i32 %add340 to i64
  %add343 = add nsw i32 %sub334, %search_range
  %idxprom344 = sext i32 %add343 to i64
  %arrayidx345 = getelementptr inbounds i32** %80, i64 %idxprom344
  %85 = load i32** %arrayidx345, align 8, !tbaa !3
  %arrayidx346 = getelementptr inbounds i32* %85, i64 %idxprom341
  %86 = load i32* %arrayidx346, align 4, !tbaa !4
  %tobool347 = icmp eq i32 %86, 0
  br i1 %tobool347, label %if.then348, label %if.end374

if.then348:                                       ; preds = %if.then338
  %shl349 = shl i32 %add326, 2
  %sub350 = sub nsw i32 %shl349, %add18
  %idxprom351 = sext i32 %sub350 to i64
  %87 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx352 = getelementptr inbounds i32* %87, i64 %idxprom351
  %88 = load i32* %arrayidx352, align 4, !tbaa !4
  %shl353 = shl i32 %add328, 2
  %sub354 = sub nsw i32 %shl353, %add21
  %idxprom355 = sext i32 %sub354 to i64
  %arrayidx356 = getelementptr inbounds i32* %87, i64 %idxprom355
  %89 = load i32* %arrayidx356, align 4, !tbaa !4
  %add357 = add nsw i32 %89, %88
  %mul358 = mul nsw i32 %add357, %conv
  %shr359 = ashr i32 %mul358, 16
  %call360 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr359, i32 %min_mcost.addr.6, i32 %add326, i32 %add328) #4
  %90 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx367 = getelementptr inbounds i32** %90, i64 %idxprom344
  %91 = load i32** %arrayidx367, align 8, !tbaa !3
  %arrayidx368 = getelementptr inbounds i32* %91, i64 %idxprom341
  store i32 %call360, i32* %arrayidx368, align 4, !tbaa !4
  %cmp369 = icmp slt i32 %call360, %min_mcost.addr.6
  %add326.best_x.6 = select i1 %cmp369, i32 %add326, i32 %best_x.6
  %add328.best_y.6 = select i1 %cmp369, i32 %add328, i32 %best_y.6
  %call360.min_mcost.addr.6 = select i1 %cmp369, i32 %call360, i32 %min_mcost.addr.6
  br label %if.end374

if.end374:                                        ; preds = %if.then348, %if.then338, %land.lhs.true333, %if.then324
  %92 = phi i32** [ %80, %if.then338 ], [ %80, %land.lhs.true333 ], [ %80, %if.then324 ], [ %90, %if.then348 ]
  %best_x.7 = phi i32 [ %best_x.6, %if.then338 ], [ %best_x.6, %land.lhs.true333 ], [ %best_x.6, %if.then324 ], [ %add326.best_x.6, %if.then348 ]
  %best_y.7 = phi i32 [ %best_y.6, %if.then338 ], [ %best_y.6, %land.lhs.true333 ], [ %best_y.6, %if.then324 ], [ %add328.best_y.6, %if.then348 ]
  %min_mcost.addr.7 = phi i32 [ %min_mcost.addr.6, %if.then338 ], [ %min_mcost.addr.6, %land.lhs.true333 ], [ %min_mcost.addr.6, %if.then324 ], [ %call360.min_mcost.addr.6, %if.then348 ]
  %93 = load i32* @pred_SAD_uplayer, align 4, !tbaa !4
  %sub375 = sub nsw i32 %min_mcost.addr.7, %93
  %conv376 = sitofp i32 %sub375 to float
  %conv377 = sitofp i32 %93 to float
  %mul378 = fmul float %betaThird.0, %conv377
  %cmp379 = fcmp olt float %conv376, %mul378
  br i1 %cmp379, label %for.cond1325.preheader, label %if.else382

for.cond1325.preheader:                           ; preds = %if.else1232, %if.then1214, %if.then1193, %for.end1318, %if.else1102, %if.then1084, %if.then1063, %if.else981, %if.then963, %if.then942, %if.else707, %if.then689, %if.then668, %if.end374
  %94 = phi i32** [ %92, %if.end374 ], [ %153, %if.then668 ], [ %153, %if.then689 ], [ %153, %if.else707 ], [ %199, %if.then942 ], [ %199, %if.then963 ], [ %199, %if.else981 ], [ %217, %if.then1063 ], [ %217, %if.then1084 ], [ %217, %if.else1102 ], [ %251, %for.end1318 ], [ %234, %if.then1193 ], [ %234, %if.then1214 ], [ %234, %if.else1232 ]
  %best_x.29.ph = phi i32 [ %best_x.7, %if.end374 ], [ %best_x.12, %if.then668 ], [ %best_x.12, %if.then689 ], [ %best_x.12, %if.else707 ], [ %best_x.16.lcssa, %if.then942 ], [ %best_x.16.lcssa, %if.then963 ], [ %best_x.16.lcssa, %if.else981 ], [ %best_x.20, %if.then1063 ], [ %best_x.20, %if.then1084 ], [ %best_x.20, %if.else1102 ], [ %best_x.27, %for.end1318 ], [ %best_x.23, %if.then1193 ], [ %best_x.23, %if.then1214 ], [ %best_x.23, %if.else1232 ]
  %best_y.29.ph = phi i32 [ %best_y.7, %if.end374 ], [ %best_y.12, %if.then668 ], [ %best_y.12, %if.then689 ], [ %best_y.12, %if.else707 ], [ %best_y.16.lcssa, %if.then942 ], [ %best_y.16.lcssa, %if.then963 ], [ %best_y.16.lcssa, %if.else981 ], [ %best_y.20, %if.then1063 ], [ %best_y.20, %if.then1084 ], [ %best_y.20, %if.else1102 ], [ %best_y.27, %for.end1318 ], [ %best_y.23, %if.then1193 ], [ %best_y.23, %if.then1214 ], [ %best_y.23, %if.else1232 ]
  %min_mcost.addr.29.ph = phi i32 [ %min_mcost.addr.7, %if.end374 ], [ %min_mcost.addr.12, %if.then668 ], [ %min_mcost.addr.12, %if.then689 ], [ %min_mcost.addr.12, %if.else707 ], [ %min_mcost.addr.16.lcssa, %if.then942 ], [ %min_mcost.addr.16.lcssa, %if.then963 ], [ %min_mcost.addr.16.lcssa, %if.else981 ], [ %min_mcost.addr.20, %if.then1063 ], [ %min_mcost.addr.20, %if.then1084 ], [ %min_mcost.addr.20, %if.else1102 ], [ %min_mcost.addr.27, %for.end1318 ], [ %min_mcost.addr.23, %if.then1193 ], [ %min_mcost.addr.23, %if.then1214 ], [ %min_mcost.addr.23, %if.else1232 ]
  %cmp13262357 = icmp sgt i32 %search_range, 0
  br i1 %cmp13262357, label %for.cond1329.preheader, label %for.end1393

if.else382:                                       ; preds = %if.end374
  %mul386 = fmul float %betaSec.0, %conv377
  %cmp387 = fcmp olt float %conv376, %mul386
  br i1 %cmp387, label %for.cond1256.preheader, label %if.end392

for.cond1256.preheader:                           ; preds = %for.cond1122.preheader, %if.else1240, %if.else1222, %if.else1201, %for.inc1253, %if.else1110, %if.else1092, %if.else1071, %if.else989, %if.else971, %if.else950, %if.else715, %if.else697, %if.else676, %if.else382
  %95 = phi i32** [ %92, %if.else382 ], [ %153, %if.else676 ], [ %153, %if.else697 ], [ %153, %if.else715 ], [ %199, %if.else950 ], [ %199, %if.else971 ], [ %199, %if.else989 ], [ %217, %if.else1071 ], [ %217, %if.else1092 ], [ %217, %if.else1110 ], [ %217, %for.cond1122.preheader ], [ %234, %if.else1240 ], [ %234, %if.else1222 ], [ %234, %if.else1201 ], [ %234, %for.inc1253 ]
  %best_x.25.ph = phi i32 [ %best_x.7, %if.else382 ], [ %best_x.12, %if.else676 ], [ %best_x.12, %if.else697 ], [ %best_x.12, %if.else715 ], [ %best_x.16.lcssa, %if.else950 ], [ %best_x.16.lcssa, %if.else971 ], [ %best_x.16.lcssa, %if.else989 ], [ %best_x.20, %if.else1071 ], [ %best_x.20, %if.else1092 ], [ %best_x.20, %if.else1110 ], [ %best_x.20, %for.cond1122.preheader ], [ %best_x.23, %if.else1240 ], [ %best_x.23, %if.else1222 ], [ %best_x.23, %if.else1201 ], [ %best_x.23, %for.inc1253 ]
  %best_y.25.ph = phi i32 [ %best_y.7, %if.else382 ], [ %best_y.12, %if.else676 ], [ %best_y.12, %if.else697 ], [ %best_y.12, %if.else715 ], [ %best_y.16.lcssa, %if.else950 ], [ %best_y.16.lcssa, %if.else971 ], [ %best_y.16.lcssa, %if.else989 ], [ %best_y.20, %if.else1071 ], [ %best_y.20, %if.else1092 ], [ %best_y.20, %if.else1110 ], [ %best_y.20, %for.cond1122.preheader ], [ %best_y.23, %if.else1240 ], [ %best_y.23, %if.else1222 ], [ %best_y.23, %if.else1201 ], [ %best_y.23, %for.inc1253 ]
  %min_mcost.addr.25.ph = phi i32 [ %min_mcost.addr.7, %if.else382 ], [ %min_mcost.addr.12, %if.else676 ], [ %min_mcost.addr.12, %if.else697 ], [ %min_mcost.addr.12, %if.else715 ], [ %min_mcost.addr.16.lcssa, %if.else950 ], [ %min_mcost.addr.16.lcssa, %if.else971 ], [ %min_mcost.addr.16.lcssa, %if.else989 ], [ %min_mcost.addr.20, %if.else1071 ], [ %min_mcost.addr.20, %if.else1092 ], [ %min_mcost.addr.20, %if.else1110 ], [ %min_mcost.addr.20, %for.cond1122.preheader ], [ %min_mcost.addr.23, %if.else1240 ], [ %min_mcost.addr.23, %if.else1222 ], [ %min_mcost.addr.23, %if.else1201 ], [ %min_mcost.addr.23, %for.inc1253 ]
  %cmp12572369 = icmp sgt i32 %search_range, 0
  br i1 %cmp12572369, label %for.cond1260.preheader, label %for.end1393

if.end392:                                        ; preds = %if.else382, %if.end321
  %96 = phi i32** [ %92, %if.else382 ], [ %80, %if.end321 ]
  %best_x.8 = phi i32 [ %best_x.7, %if.else382 ], [ %best_x.6, %if.end321 ]
  %best_y.8 = phi i32 [ %best_y.7, %if.else382 ], [ %best_y.6, %if.end321 ]
  %min_mcost.addr.8 = phi i32 [ %min_mcost.addr.7, %if.else382 ], [ %min_mcost.addr.6, %if.end321 ]
  %97 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %number = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 0
  %98 = load i32* %number, align 4, !tbaa !4
  %add394 = add nsw i32 %conv64, 1
  %cmp395 = icmp sle i32 %98, %add394
  %cmp399 = icmp eq i16 %ref, -1
  %or.cond2332 = or i1 %cmp395, %cmp399
  br i1 %or.cond2332, label %lor.lhs.false401, label %if.then408

lor.lhs.false401:                                 ; preds = %if.end392
  %cmp402 = icmp eq i32 %list, 1
  br i1 %cmp402, label %land.lhs.true404, label %if.end459

land.lhs.true404:                                 ; preds = %lor.lhs.false401
  %99 = load i32* @Bframe_ctr, align 4, !tbaa !4
  %rem405 = srem i32 %99, %15
  %cmp406 = icmp sgt i32 %rem405, 1
  br i1 %cmp406, label %if.then408, label %if.end459

if.then408:                                       ; preds = %if.end392, %land.lhs.true404
  %100 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_time, i64 0, i64 0), align 4, !tbaa !4
  %div409 = sdiv i32 %100, 4
  %add410 = add nsw i32 %div409, %pic_pix_x
  %101 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_time, i64 0, i64 1), align 4, !tbaa !4
  %div411 = sdiv i32 %101, 4
  %add412 = add nsw i32 %div411, %pic_pix_y
  %sub413 = sub nsw i32 %add410, %add23
  %ispos2310 = icmp sgt i32 %sub413, -1
  %neg2311 = sub i32 0, %sub413
  %102 = select i1 %ispos2310, i32 %sub413, i32 %neg2311
  %cmp415 = icmp sgt i32 %102, %search_range
  br i1 %cmp415, label %if.end459, label %land.lhs.true417

land.lhs.true417:                                 ; preds = %if.then408
  %sub418 = sub nsw i32 %add412, %add25
  %ispos2312 = icmp sgt i32 %sub418, -1
  %neg2313 = sub i32 0, %sub418
  %103 = select i1 %ispos2312, i32 %sub418, i32 %neg2313
  %cmp420 = icmp sgt i32 %103, %search_range
  br i1 %cmp420, label %if.end459, label %if.then422

if.then422:                                       ; preds = %land.lhs.true417
  %add424 = add nsw i32 %sub413, %search_range
  %idxprom425 = sext i32 %add424 to i64
  %add427 = add nsw i32 %sub418, %search_range
  %idxprom428 = sext i32 %add427 to i64
  %arrayidx429 = getelementptr inbounds i32** %96, i64 %idxprom428
  %104 = load i32** %arrayidx429, align 8, !tbaa !3
  %arrayidx430 = getelementptr inbounds i32* %104, i64 %idxprom425
  %105 = load i32* %arrayidx430, align 4, !tbaa !4
  %tobool431 = icmp eq i32 %105, 0
  br i1 %tobool431, label %if.then432, label %if.end459

if.then432:                                       ; preds = %if.then422
  %shl433 = shl i32 %add410, 2
  %sub434 = sub nsw i32 %shl433, %add18
  %idxprom435 = sext i32 %sub434 to i64
  %106 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx436 = getelementptr inbounds i32* %106, i64 %idxprom435
  %107 = load i32* %arrayidx436, align 4, !tbaa !4
  %shl437 = shl i32 %add412, 2
  %sub438 = sub nsw i32 %shl437, %add21
  %idxprom439 = sext i32 %sub438 to i64
  %arrayidx440 = getelementptr inbounds i32* %106, i64 %idxprom439
  %108 = load i32* %arrayidx440, align 4, !tbaa !4
  %add441 = add nsw i32 %108, %107
  %mul442 = mul nsw i32 %add441, %conv
  %shr443 = ashr i32 %mul442, 16
  %call444 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr443, i32 %min_mcost.addr.8, i32 %add410, i32 %add412) #4
  %109 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx451 = getelementptr inbounds i32** %109, i64 %idxprom428
  %110 = load i32** %arrayidx451, align 8, !tbaa !3
  %arrayidx452 = getelementptr inbounds i32* %110, i64 %idxprom425
  store i32 %call444, i32* %arrayidx452, align 4, !tbaa !4
  %cmp453 = icmp slt i32 %call444, %min_mcost.addr.8
  %add410.best_x.8 = select i1 %cmp453, i32 %add410, i32 %best_x.8
  %add412.best_y.8 = select i1 %cmp453, i32 %add412, i32 %best_y.8
  %call444.min_mcost.addr.8 = select i1 %cmp453, i32 %call444, i32 %min_mcost.addr.8
  br label %if.end459

if.end459:                                        ; preds = %if.then432, %if.then422, %land.lhs.true417, %if.then408, %land.lhs.true404, %lor.lhs.false401
  %111 = phi i32** [ %96, %if.then422 ], [ %96, %land.lhs.true417 ], [ %96, %if.then408 ], [ %96, %land.lhs.true404 ], [ %96, %lor.lhs.false401 ], [ %109, %if.then432 ]
  %best_x.9 = phi i32 [ %best_x.8, %if.then422 ], [ %best_x.8, %land.lhs.true417 ], [ %best_x.8, %if.then408 ], [ %best_x.8, %land.lhs.true404 ], [ %best_x.8, %lor.lhs.false401 ], [ %add410.best_x.8, %if.then432 ]
  %best_y.9 = phi i32 [ %best_y.8, %if.then422 ], [ %best_y.8, %land.lhs.true417 ], [ %best_y.8, %if.then408 ], [ %best_y.8, %land.lhs.true404 ], [ %best_y.8, %lor.lhs.false401 ], [ %add412.best_y.8, %if.then432 ]
  %min_mcost.addr.9 = phi i32 [ %min_mcost.addr.8, %if.then422 ], [ %min_mcost.addr.8, %land.lhs.true417 ], [ %min_mcost.addr.8, %if.then408 ], [ %min_mcost.addr.8, %land.lhs.true404 ], [ %min_mcost.addr.8, %lor.lhs.false401 ], [ %call444.min_mcost.addr.8, %if.then432 ]
  %112 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %112, i64 0, i32 91
  %113 = load i32* %PicInterlace, align 4, !tbaa !4
  %cmp460 = icmp eq i32 %113, 1
  %cmp463.not = icmp ne i32 %list, 0
  %cmp65.not = xor i1 %cmp65, true
  %brmerge = or i1 %cmp463.not, %cmp65.not
  br i1 %cmp460, label %if.then462, label %if.else535

if.then462:                                       ; preds = %if.end459
  br i1 %brmerge, label %lor.lhs.false469, label %if.then483

lor.lhs.false469:                                 ; preds = %if.then462
  %114 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %114, i64 0, i32 6
  %115 = load i32* %type, align 4, !tbaa !4
  %cmp470.not = icmp ne i32 %115, 1
  %brmerge2334 = or i1 %cmp470.not, %cmp463.not
  br i1 %brmerge2334, label %if.end605, label %land.lhs.true475

land.lhs.true475:                                 ; preds = %lor.lhs.false469
  switch i16 %ref, label %if.end605 [
    i16 0, label %if.then483
    i16 2, label %if.then483
  ]

if.then483:                                       ; preds = %land.lhs.true475, %land.lhs.true475, %if.then462
  %116 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 0), align 4, !tbaa !4
  %div484 = sdiv i32 %116, 4
  %add485 = add nsw i32 %div484, %pic_pix_x
  %117 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 1), align 4, !tbaa !4
  %div486 = sdiv i32 %117, 4
  %add487 = add nsw i32 %div486, %pic_pix_y
  %sub488 = sub nsw i32 %add485, %add23
  %ispos2306 = icmp sgt i32 %sub488, -1
  %neg2307 = sub i32 0, %sub488
  %118 = select i1 %ispos2306, i32 %sub488, i32 %neg2307
  %cmp490 = icmp sgt i32 %118, %search_range
  br i1 %cmp490, label %if.end605, label %land.lhs.true492

land.lhs.true492:                                 ; preds = %if.then483
  %sub493 = sub nsw i32 %add487, %add25
  %ispos2308 = icmp sgt i32 %sub493, -1
  %neg2309 = sub i32 0, %sub493
  %119 = select i1 %ispos2308, i32 %sub493, i32 %neg2309
  %cmp495 = icmp sgt i32 %119, %search_range
  br i1 %cmp495, label %if.end605, label %if.then497

if.then497:                                       ; preds = %land.lhs.true492
  %add499 = add nsw i32 %sub488, %search_range
  %idxprom500 = sext i32 %add499 to i64
  %add502 = add nsw i32 %sub493, %search_range
  %idxprom503 = sext i32 %add502 to i64
  %arrayidx504 = getelementptr inbounds i32** %111, i64 %idxprom503
  %120 = load i32** %arrayidx504, align 8, !tbaa !3
  %arrayidx505 = getelementptr inbounds i32* %120, i64 %idxprom500
  %121 = load i32* %arrayidx505, align 4, !tbaa !4
  %tobool506 = icmp eq i32 %121, 0
  br i1 %tobool506, label %if.then507, label %if.end605

if.then507:                                       ; preds = %if.then497
  %shl508 = shl i32 %add485, 2
  %sub509 = sub nsw i32 %shl508, %add18
  %idxprom510 = sext i32 %sub509 to i64
  %122 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx511 = getelementptr inbounds i32* %122, i64 %idxprom510
  %123 = load i32* %arrayidx511, align 4, !tbaa !4
  %shl512 = shl i32 %add487, 2
  %sub513 = sub nsw i32 %shl512, %add21
  %idxprom514 = sext i32 %sub513 to i64
  %arrayidx515 = getelementptr inbounds i32* %122, i64 %idxprom514
  %124 = load i32* %arrayidx515, align 4, !tbaa !4
  %add516 = add nsw i32 %124, %123
  %mul517 = mul nsw i32 %add516, %conv
  %shr518 = ashr i32 %mul517, 16
  %call519 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr518, i32 %min_mcost.addr.9, i32 %add485, i32 %add487) #4
  %125 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx526 = getelementptr inbounds i32** %125, i64 %idxprom503
  %126 = load i32** %arrayidx526, align 8, !tbaa !3
  %arrayidx527 = getelementptr inbounds i32* %126, i64 %idxprom500
  store i32 %call519, i32* %arrayidx527, align 4, !tbaa !4
  %cmp528 = icmp slt i32 %call519, %min_mcost.addr.9
  %add485.best_x.9 = select i1 %cmp528, i32 %add485, i32 %best_x.9
  %add487.best_y.9 = select i1 %cmp528, i32 %add487, i32 %best_y.9
  %call519.min_mcost.addr.9 = select i1 %cmp528, i32 %call519, i32 %min_mcost.addr.9
  br label %if.end605

if.else535:                                       ; preds = %if.end459
  br i1 %brmerge, label %lor.lhs.false542, label %if.then553

lor.lhs.false542:                                 ; preds = %if.else535
  %127 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type543 = getelementptr inbounds %struct.ImageParameters* %127, i64 0, i32 6
  %128 = load i32* %type543, align 4, !tbaa !4
  %cmp544.not = icmp ne i32 %128, 1
  %brmerge2339 = or i1 %cmp544.not, %cmp463.not
  %brmerge2339.not = xor i1 %brmerge2339, true
  %cmp551 = icmp eq i16 %ref, 0
  %or.cond2340 = and i1 %cmp551, %brmerge2339.not
  br i1 %or.cond2340, label %if.then553, label %if.end605

if.then553:                                       ; preds = %lor.lhs.false542, %if.else535
  %129 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 0), align 4, !tbaa !4
  %div554 = sdiv i32 %129, 4
  %add555 = add nsw i32 %div554, %pic_pix_x
  %130 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 1), align 4, !tbaa !4
  %div556 = sdiv i32 %130, 4
  %add557 = add nsw i32 %div556, %pic_pix_y
  %sub558 = sub nsw i32 %add555, %add23
  %ispos2302 = icmp sgt i32 %sub558, -1
  %neg2303 = sub i32 0, %sub558
  %131 = select i1 %ispos2302, i32 %sub558, i32 %neg2303
  %cmp560 = icmp sgt i32 %131, %search_range
  br i1 %cmp560, label %if.end605, label %land.lhs.true562

land.lhs.true562:                                 ; preds = %if.then553
  %sub563 = sub nsw i32 %add557, %add25
  %ispos2304 = icmp sgt i32 %sub563, -1
  %neg2305 = sub i32 0, %sub563
  %132 = select i1 %ispos2304, i32 %sub563, i32 %neg2305
  %cmp565 = icmp sgt i32 %132, %search_range
  br i1 %cmp565, label %if.end605, label %if.then567

if.then567:                                       ; preds = %land.lhs.true562
  %add569 = add nsw i32 %sub558, %search_range
  %idxprom570 = sext i32 %add569 to i64
  %add572 = add nsw i32 %sub563, %search_range
  %idxprom573 = sext i32 %add572 to i64
  %arrayidx574 = getelementptr inbounds i32** %111, i64 %idxprom573
  %133 = load i32** %arrayidx574, align 8, !tbaa !3
  %arrayidx575 = getelementptr inbounds i32* %133, i64 %idxprom570
  %134 = load i32* %arrayidx575, align 4, !tbaa !4
  %tobool576 = icmp eq i32 %134, 0
  br i1 %tobool576, label %if.then577, label %if.end605

if.then577:                                       ; preds = %if.then567
  %shl578 = shl i32 %add555, 2
  %sub579 = sub nsw i32 %shl578, %add18
  %idxprom580 = sext i32 %sub579 to i64
  %135 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx581 = getelementptr inbounds i32* %135, i64 %idxprom580
  %136 = load i32* %arrayidx581, align 4, !tbaa !4
  %shl582 = shl i32 %add557, 2
  %sub583 = sub nsw i32 %shl582, %add21
  %idxprom584 = sext i32 %sub583 to i64
  %arrayidx585 = getelementptr inbounds i32* %135, i64 %idxprom584
  %137 = load i32* %arrayidx585, align 4, !tbaa !4
  %add586 = add nsw i32 %137, %136
  %mul587 = mul nsw i32 %add586, %conv
  %shr588 = ashr i32 %mul587, 16
  %call589 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr588, i32 %min_mcost.addr.9, i32 %add555, i32 %add557) #4
  %138 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx596 = getelementptr inbounds i32** %138, i64 %idxprom573
  %139 = load i32** %arrayidx596, align 8, !tbaa !3
  %arrayidx597 = getelementptr inbounds i32* %139, i64 %idxprom570
  store i32 %call589, i32* %arrayidx597, align 4, !tbaa !4
  %cmp598 = icmp slt i32 %call589, %min_mcost.addr.9
  %add555.best_x.9 = select i1 %cmp598, i32 %add555, i32 %best_x.9
  %add557.best_y.9 = select i1 %cmp598, i32 %add557, i32 %best_y.9
  %call589.min_mcost.addr.9 = select i1 %cmp598, i32 %call589, i32 %min_mcost.addr.9
  br label %if.end605

if.end605:                                        ; preds = %if.then577, %if.then507, %lor.lhs.false542, %land.lhs.true475, %lor.lhs.false469, %if.then497, %land.lhs.true492, %if.then483, %if.then567, %land.lhs.true562, %if.then553
  %140 = phi i32** [ %111, %if.then497 ], [ %111, %land.lhs.true492 ], [ %111, %if.then483 ], [ %111, %lor.lhs.false469 ], [ %111, %if.then567 ], [ %111, %land.lhs.true562 ], [ %111, %if.then553 ], [ %111, %lor.lhs.false542 ], [ %111, %land.lhs.true475 ], [ %125, %if.then507 ], [ %138, %if.then577 ]
  %best_x.10 = phi i32 [ %best_x.9, %if.then497 ], [ %best_x.9, %land.lhs.true492 ], [ %best_x.9, %if.then483 ], [ %best_x.9, %lor.lhs.false469 ], [ %best_x.9, %if.then567 ], [ %best_x.9, %land.lhs.true562 ], [ %best_x.9, %if.then553 ], [ %best_x.9, %lor.lhs.false542 ], [ %best_x.9, %land.lhs.true475 ], [ %add485.best_x.9, %if.then507 ], [ %add555.best_x.9, %if.then577 ]
  %best_y.10 = phi i32 [ %best_y.9, %if.then497 ], [ %best_y.9, %land.lhs.true492 ], [ %best_y.9, %if.then483 ], [ %best_y.9, %lor.lhs.false469 ], [ %best_y.9, %if.then567 ], [ %best_y.9, %land.lhs.true562 ], [ %best_y.9, %if.then553 ], [ %best_y.9, %lor.lhs.false542 ], [ %best_y.9, %land.lhs.true475 ], [ %add487.best_y.9, %if.then507 ], [ %add557.best_y.9, %if.then577 ]
  %min_mcost.addr.10 = phi i32 [ %min_mcost.addr.9, %if.then497 ], [ %min_mcost.addr.9, %land.lhs.true492 ], [ %min_mcost.addr.9, %if.then483 ], [ %min_mcost.addr.9, %lor.lhs.false469 ], [ %min_mcost.addr.9, %if.then567 ], [ %min_mcost.addr.9, %land.lhs.true562 ], [ %min_mcost.addr.9, %if.then553 ], [ %min_mcost.addr.9, %lor.lhs.false542 ], [ %min_mcost.addr.9, %land.lhs.true475 ], [ %call519.min_mcost.addr.9, %if.then507 ], [ %call589.min_mcost.addr.9, %if.then577 ]
  br label %for.body609

for.body609:                                      ; preds = %for.inc662, %if.end605
  %141 = phi i32** [ %140, %if.end605 ], [ %153, %for.inc662 ]
  %indvars.iv2453 = phi i64 [ 0, %if.end605 ], [ %indvars.iv.next2454, %for.inc662 ]
  %min_mcost.addr.112416 = phi i32 [ %min_mcost.addr.10, %if.end605 ], [ %min_mcost.addr.12, %for.inc662 ]
  %best_y.112414 = phi i32 [ %best_y.10, %if.end605 ], [ %best_y.12, %for.inc662 ]
  %best_x.112413 = phi i32 [ %best_x.10, %if.end605 ], [ %best_x.12, %for.inc662 ]
  %arrayidx611 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %indvars.iv2453
  %142 = load i32* %arrayidx611, align 4, !tbaa !4
  %add612 = add nsw i32 %142, %best_x.10
  %arrayidx614 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %indvars.iv2453
  %143 = load i32* %arrayidx614, align 4, !tbaa !4
  %add615 = add nsw i32 %143, %best_y.10
  %sub616 = sub nsw i32 %add612, %add23
  %ispos2298 = icmp sgt i32 %sub616, -1
  %neg2299 = sub i32 0, %sub616
  %144 = select i1 %ispos2298, i32 %sub616, i32 %neg2299
  %cmp618 = icmp sgt i32 %144, %search_range
  br i1 %cmp618, label %for.inc662, label %land.lhs.true620

land.lhs.true620:                                 ; preds = %for.body609
  %sub621 = sub nsw i32 %add615, %add25
  %ispos2300 = icmp sgt i32 %sub621, -1
  %neg2301 = sub i32 0, %sub621
  %145 = select i1 %ispos2300, i32 %sub621, i32 %neg2301
  %cmp623 = icmp sgt i32 %145, %search_range
  br i1 %cmp623, label %for.inc662, label %if.then625

if.then625:                                       ; preds = %land.lhs.true620
  %add627 = add nsw i32 %sub616, %search_range
  %idxprom628 = sext i32 %add627 to i64
  %add630 = add nsw i32 %sub621, %search_range
  %idxprom631 = sext i32 %add630 to i64
  %arrayidx632 = getelementptr inbounds i32** %141, i64 %idxprom631
  %146 = load i32** %arrayidx632, align 8, !tbaa !3
  %arrayidx633 = getelementptr inbounds i32* %146, i64 %idxprom628
  %147 = load i32* %arrayidx633, align 4, !tbaa !4
  %tobool634 = icmp eq i32 %147, 0
  br i1 %tobool634, label %if.then635, label %for.inc662

if.then635:                                       ; preds = %if.then625
  %shl636 = shl i32 %add612, 2
  %sub637 = sub nsw i32 %shl636, %add18
  %idxprom638 = sext i32 %sub637 to i64
  %148 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx639 = getelementptr inbounds i32* %148, i64 %idxprom638
  %149 = load i32* %arrayidx639, align 4, !tbaa !4
  %shl640 = shl i32 %add615, 2
  %sub641 = sub nsw i32 %shl640, %add21
  %idxprom642 = sext i32 %sub641 to i64
  %arrayidx643 = getelementptr inbounds i32* %148, i64 %idxprom642
  %150 = load i32* %arrayidx643, align 4, !tbaa !4
  %add644 = add nsw i32 %150, %149
  %mul645 = mul nsw i32 %add644, %conv
  %shr646 = ashr i32 %mul645, 16
  %call647 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr646, i32 %min_mcost.addr.112416, i32 %add612, i32 %add615) #4
  %151 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx654 = getelementptr inbounds i32** %151, i64 %idxprom631
  %152 = load i32** %arrayidx654, align 8, !tbaa !3
  %arrayidx655 = getelementptr inbounds i32* %152, i64 %idxprom628
  store i32 %call647, i32* %arrayidx655, align 4, !tbaa !4
  %cmp656 = icmp slt i32 %call647, %min_mcost.addr.112416
  %add612.best_x.11 = select i1 %cmp656, i32 %add612, i32 %best_x.112413
  %add615.best_y.11 = select i1 %cmp656, i32 %add615, i32 %best_y.112414
  %call647.min_mcost.addr.11 = select i1 %cmp656, i32 %call647, i32 %min_mcost.addr.112416
  br label %for.inc662

for.inc662:                                       ; preds = %if.then635, %if.then625, %land.lhs.true620, %for.body609
  %153 = phi i32** [ %141, %if.then625 ], [ %141, %land.lhs.true620 ], [ %141, %for.body609 ], [ %151, %if.then635 ]
  %best_x.12 = phi i32 [ %best_x.112413, %if.then625 ], [ %best_x.112413, %land.lhs.true620 ], [ %best_x.112413, %for.body609 ], [ %add612.best_x.11, %if.then635 ]
  %best_y.12 = phi i32 [ %best_y.112414, %if.then625 ], [ %best_y.112414, %land.lhs.true620 ], [ %best_y.112414, %for.body609 ], [ %add615.best_y.11, %if.then635 ]
  %min_mcost.addr.12 = phi i32 [ %min_mcost.addr.112416, %if.then625 ], [ %min_mcost.addr.112416, %land.lhs.true620 ], [ %min_mcost.addr.112416, %for.body609 ], [ %call647.min_mcost.addr.11, %if.then635 ]
  %indvars.iv.next2454 = add i64 %indvars.iv2453, 1
  %lftr.wideiv2455 = trunc i64 %indvars.iv.next2454 to i32
  %exitcond2456 = icmp eq i32 %lftr.wideiv2455, 4
  br i1 %exitcond2456, label %for.end664, label %for.body609

for.end664:                                       ; preds = %for.inc662
  br i1 %cmp65, label %if.then668, label %if.else686

if.then668:                                       ; preds = %for.end664
  %154 = load i32* @pred_SAD_ref, align 4, !tbaa !4
  %sub669 = sub nsw i32 %min_mcost.addr.12, %154
  %conv670 = sitofp i32 %sub669 to float
  %conv671 = sitofp i32 %154 to float
  %mul672 = fmul float %betaThird.0, %conv671
  %cmp673 = fcmp olt float %conv670, %mul672
  br i1 %cmp673, label %for.cond1325.preheader, label %if.else676

if.else676:                                       ; preds = %if.then668
  %mul680 = fmul float %betaSec.0, %conv671
  %cmp681 = fcmp olt float %conv670, %mul680
  %cmp727.old.old = icmp sgt i32 %blocktype, 6
  %or.cond2343 = or i1 %cmp681, %cmp727.old.old
  br i1 %or.cond2343, label %for.cond1256.preheader, label %for.cond731.preheader

if.else686:                                       ; preds = %for.end664
  br i1 %cmp322, label %if.then689, label %if.else707

if.then689:                                       ; preds = %if.else686
  %155 = load i32* @pred_SAD_uplayer, align 4, !tbaa !4
  %sub690 = sub nsw i32 %min_mcost.addr.12, %155
  %conv691 = sitofp i32 %sub690 to float
  %conv692 = sitofp i32 %155 to float
  %mul693 = fmul float %betaThird.0, %conv692
  %cmp694 = fcmp olt float %conv691, %mul693
  br i1 %cmp694, label %for.cond1325.preheader, label %if.else697

if.else697:                                       ; preds = %if.then689
  %mul701 = fmul float %betaSec.0, %conv692
  %cmp702 = fcmp olt float %conv691, %mul701
  %cmp727 = icmp sgt i32 %blocktype, 6
  %or.cond2341 = or i1 %cmp702, %cmp727
  br i1 %or.cond2341, label %for.cond1256.preheader, label %for.cond731.preheader

if.else707:                                       ; preds = %if.else686
  %156 = load i32* @pred_SAD_space, align 4, !tbaa !4
  %sub708 = sub nsw i32 %min_mcost.addr.12, %156
  %conv709 = sitofp i32 %sub708 to float
  %conv710 = sitofp i32 %156 to float
  %mul711 = fmul float %betaThird.0, %conv710
  %cmp712 = fcmp olt float %conv709, %mul711
  br i1 %cmp712, label %for.cond1325.preheader, label %if.else715

if.else715:                                       ; preds = %if.else707
  %mul719 = fmul float %betaSec.0, %conv710
  %cmp720 = fcmp olt float %conv709, %mul719
  br i1 %cmp720, label %for.cond1256.preheader, label %for.cond731.preheader

for.cond731.preheader:                            ; preds = %if.else676, %if.else715, %if.else697
  %div732 = sdiv i32 %search_range, 2
  %cmp7332404 = icmp slt i32 %search_range, 2
  br i1 %cmp7332404, label %for.cond835.preheader.thread, label %for.body735.lr.ph

for.cond835.preheader.thread:                     ; preds = %for.cond731.preheader
  %div8362466 = sdiv i32 %search_range, 4
  br label %for.end938

for.body735.lr.ph:                                ; preds = %for.cond731.preheader
  %sub791 = sub nsw i32 %best_y.12, %add25
  %ispos2294 = icmp sgt i32 %sub791, -1
  %neg2295 = sub i32 0, %sub791
  %157 = select i1 %ispos2294, i32 %sub791, i32 %neg2295
  %cmp793 = icmp sgt i32 %157, %search_range
  %add800 = add nsw i32 %sub791, %search_range
  %idxprom801 = sext i32 %add800 to i64
  %shl810 = shl i32 %best_y.12, 2
  %sub811 = sub nsw i32 %shl810, %add21
  %idxprom812 = sext i32 %sub811 to i64
  br label %for.body735

for.cond835.preheader:                            ; preds = %for.inc832
  %div836 = sdiv i32 %search_range, 4
  %cmp8372395 = icmp slt i32 %search_range, 4
  br i1 %cmp8372395, label %for.end938, label %for.body839.lr.ph

for.body839.lr.ph:                                ; preds = %for.cond835.preheader
  %sub843 = sub nsw i32 %best_x.12, %add23
  %ispos2284 = icmp sgt i32 %sub843, -1
  %neg2285 = sub i32 0, %sub843
  %158 = select i1 %ispos2284, i32 %sub843, i32 %neg2285
  %cmp845 = icmp sgt i32 %158, %search_range
  %add901 = add nsw i32 %sub843, %search_range
  %idxprom902 = sext i32 %add901 to i64
  %shl910 = shl i32 %best_x.12, 2
  %sub911 = sub nsw i32 %shl910, %add18
  %idxprom912 = sext i32 %sub911 to i64
  br label %for.body839

for.body735:                                      ; preds = %for.inc832, %for.body735.lr.ph
  %159 = phi i32** [ %178, %for.inc832 ], [ %153, %for.body735.lr.ph ]
  %indvars.iv2451 = phi i64 [ %indvars.iv.next2452, %for.inc832 ], [ 1, %for.body735.lr.ph ]
  %min_mcost.addr.132408 = phi i32 [ %min_mcost.addr.15, %for.inc832 ], [ %min_mcost.addr.12, %for.body735.lr.ph ]
  %best_y.132406 = phi i32 [ %best_y.15, %for.inc832 ], [ %best_y.12, %for.body735.lr.ph ]
  %best_x.132405 = phi i32 [ %best_x.15, %for.inc832 ], [ %best_x.12, %for.body735.lr.ph ]
  %160 = trunc i64 %indvars.iv2451 to i32
  %mul736 = shl nsw i32 %160, 1
  %sub737 = add nsw i32 %mul736, -1
  %add738 = add nsw i32 %sub737, %best_x.12
  %sub739 = sub nsw i32 %add738, %add23
  %ispos2290 = icmp sgt i32 %sub739, -1
  %neg2291 = sub i32 0, %sub739
  %161 = select i1 %ispos2290, i32 %sub739, i32 %neg2291
  %cmp741 = icmp sgt i32 %161, %search_range
  br i1 %cmp741, label %if.end784, label %land.lhs.true743

land.lhs.true743:                                 ; preds = %for.body735
  br i1 %cmp793, label %if.end784, label %if.then748

if.then748:                                       ; preds = %land.lhs.true743
  %add750 = add nsw i32 %sub739, %search_range
  %idxprom751 = sext i32 %add750 to i64
  %arrayidx755 = getelementptr inbounds i32** %159, i64 %idxprom801
  %162 = load i32** %arrayidx755, align 8, !tbaa !3
  %arrayidx756 = getelementptr inbounds i32* %162, i64 %idxprom751
  %163 = load i32* %arrayidx756, align 4, !tbaa !4
  %tobool757 = icmp eq i32 %163, 0
  br i1 %tobool757, label %if.then758, label %if.end784

if.then758:                                       ; preds = %if.then748
  %shl759 = shl i32 %add738, 2
  %sub760 = sub nsw i32 %shl759, %add18
  %idxprom761 = sext i32 %sub760 to i64
  %164 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx762 = getelementptr inbounds i32* %164, i64 %idxprom761
  %165 = load i32* %arrayidx762, align 4, !tbaa !4
  %arrayidx766 = getelementptr inbounds i32* %164, i64 %idxprom812
  %166 = load i32* %arrayidx766, align 4, !tbaa !4
  %add767 = add nsw i32 %166, %165
  %mul768 = mul nsw i32 %add767, %conv
  %shr769 = ashr i32 %mul768, 16
  %call770 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr769, i32 %min_mcost.addr.132408, i32 %add738, i32 %best_y.12) #4
  %167 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx777 = getelementptr inbounds i32** %167, i64 %idxprom801
  %168 = load i32** %arrayidx777, align 8, !tbaa !3
  %arrayidx778 = getelementptr inbounds i32* %168, i64 %idxprom751
  store i32 %call770, i32* %arrayidx778, align 4, !tbaa !4
  %cmp779 = icmp slt i32 %call770, %min_mcost.addr.132408
  %add738.best_x.13 = select i1 %cmp779, i32 %add738, i32 %best_x.132405
  %best_y.11.best_y.13 = select i1 %cmp779, i32 %best_y.12, i32 %best_y.132406
  %call770.min_mcost.addr.13 = select i1 %cmp779, i32 %call770, i32 %min_mcost.addr.132408
  br label %if.end784

if.end784:                                        ; preds = %if.then758, %if.then748, %land.lhs.true743, %for.body735
  %169 = phi i32** [ %159, %if.then748 ], [ %159, %land.lhs.true743 ], [ %159, %for.body735 ], [ %167, %if.then758 ]
  %best_x.14 = phi i32 [ %best_x.132405, %if.then748 ], [ %best_x.132405, %land.lhs.true743 ], [ %best_x.132405, %for.body735 ], [ %add738.best_x.13, %if.then758 ]
  %best_y.14 = phi i32 [ %best_y.132406, %if.then748 ], [ %best_y.132406, %land.lhs.true743 ], [ %best_y.132406, %for.body735 ], [ %best_y.11.best_y.13, %if.then758 ]
  %min_mcost.addr.14 = phi i32 [ %min_mcost.addr.132408, %if.then748 ], [ %min_mcost.addr.132408, %land.lhs.true743 ], [ %min_mcost.addr.132408, %for.body735 ], [ %call770.min_mcost.addr.13, %if.then758 ]
  %sub785 = sub nsw i32 %best_x.12, %sub737
  %sub786 = sub nsw i32 %sub785, %add23
  %ispos2292 = icmp sgt i32 %sub786, -1
  %neg2293 = sub i32 0, %sub786
  %170 = select i1 %ispos2292, i32 %sub786, i32 %neg2293
  %cmp788 = icmp sgt i32 %170, %search_range
  br i1 %cmp788, label %for.inc832, label %land.lhs.true790

land.lhs.true790:                                 ; preds = %if.end784
  br i1 %cmp793, label %for.inc832, label %if.then795

if.then795:                                       ; preds = %land.lhs.true790
  %add797 = add nsw i32 %sub786, %search_range
  %idxprom798 = sext i32 %add797 to i64
  %arrayidx802 = getelementptr inbounds i32** %169, i64 %idxprom801
  %171 = load i32** %arrayidx802, align 8, !tbaa !3
  %arrayidx803 = getelementptr inbounds i32* %171, i64 %idxprom798
  %172 = load i32* %arrayidx803, align 4, !tbaa !4
  %tobool804 = icmp eq i32 %172, 0
  br i1 %tobool804, label %if.then805, label %for.inc832

if.then805:                                       ; preds = %if.then795
  %shl806 = shl i32 %sub785, 2
  %sub807 = sub nsw i32 %shl806, %add18
  %idxprom808 = sext i32 %sub807 to i64
  %173 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx809 = getelementptr inbounds i32* %173, i64 %idxprom808
  %174 = load i32* %arrayidx809, align 4, !tbaa !4
  %arrayidx813 = getelementptr inbounds i32* %173, i64 %idxprom812
  %175 = load i32* %arrayidx813, align 4, !tbaa !4
  %add814 = add nsw i32 %175, %174
  %mul815 = mul nsw i32 %add814, %conv
  %shr816 = ashr i32 %mul815, 16
  %call817 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr816, i32 %min_mcost.addr.14, i32 %sub785, i32 %best_y.12) #4
  %176 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx824 = getelementptr inbounds i32** %176, i64 %idxprom801
  %177 = load i32** %arrayidx824, align 8, !tbaa !3
  %arrayidx825 = getelementptr inbounds i32* %177, i64 %idxprom798
  store i32 %call817, i32* %arrayidx825, align 4, !tbaa !4
  %cmp826 = icmp slt i32 %call817, %min_mcost.addr.14
  %sub785.best_x.14 = select i1 %cmp826, i32 %sub785, i32 %best_x.14
  %best_y.11.best_y.14 = select i1 %cmp826, i32 %best_y.12, i32 %best_y.14
  %call817.min_mcost.addr.14 = select i1 %cmp826, i32 %call817, i32 %min_mcost.addr.14
  br label %for.inc832

for.inc832:                                       ; preds = %if.then805, %if.then795, %land.lhs.true790, %if.end784
  %178 = phi i32** [ %169, %if.then795 ], [ %169, %land.lhs.true790 ], [ %169, %if.end784 ], [ %176, %if.then805 ]
  %best_x.15 = phi i32 [ %best_x.14, %if.then795 ], [ %best_x.14, %land.lhs.true790 ], [ %best_x.14, %if.end784 ], [ %sub785.best_x.14, %if.then805 ]
  %best_y.15 = phi i32 [ %best_y.14, %if.then795 ], [ %best_y.14, %land.lhs.true790 ], [ %best_y.14, %if.end784 ], [ %best_y.11.best_y.14, %if.then805 ]
  %min_mcost.addr.15 = phi i32 [ %min_mcost.addr.14, %if.then795 ], [ %min_mcost.addr.14, %land.lhs.true790 ], [ %min_mcost.addr.14, %if.end784 ], [ %call817.min_mcost.addr.14, %if.then805 ]
  %indvars.iv.next2452 = add i64 %indvars.iv2451, 1
  %cmp733 = icmp slt i32 %160, %div732
  br i1 %cmp733, label %for.body735, label %for.cond835.preheader

for.body839:                                      ; preds = %for.inc936, %for.body839.lr.ph
  %179 = phi i32** [ %198, %for.inc936 ], [ %178, %for.body839.lr.ph ]
  %indvars.iv2449 = phi i64 [ %indvars.iv.next2450, %for.inc936 ], [ 1, %for.body839.lr.ph ]
  %min_mcost.addr.162399 = phi i32 [ %min_mcost.addr.18, %for.inc936 ], [ %min_mcost.addr.15, %for.body839.lr.ph ]
  %best_y.162397 = phi i32 [ %best_y.18, %for.inc936 ], [ %best_y.15, %for.body839.lr.ph ]
  %best_x.162396 = phi i32 [ %best_x.18, %for.inc936 ], [ %best_x.15, %for.body839.lr.ph ]
  %180 = trunc i64 %indvars.iv2449 to i32
  %mul840 = shl nsw i32 %180, 1
  %sub841 = add nsw i32 %mul840, -1
  %add842 = add nsw i32 %sub841, %best_y.12
  br i1 %cmp845, label %for.inc936, label %land.lhs.true847

land.lhs.true847:                                 ; preds = %for.body839
  %sub848 = sub nsw i32 %add842, %add25
  %ispos2288 = icmp sgt i32 %sub848, -1
  %neg2289 = sub i32 0, %sub848
  %181 = select i1 %ispos2288, i32 %sub848, i32 %neg2289
  %cmp850 = icmp sgt i32 %181, %search_range
  br i1 %cmp850, label %land.lhs.true894, label %if.then852

if.then852:                                       ; preds = %land.lhs.true847
  %add857 = add nsw i32 %sub848, %search_range
  %idxprom858 = sext i32 %add857 to i64
  %arrayidx859 = getelementptr inbounds i32** %179, i64 %idxprom858
  %182 = load i32** %arrayidx859, align 8, !tbaa !3
  %arrayidx860 = getelementptr inbounds i32* %182, i64 %idxprom902
  %183 = load i32* %arrayidx860, align 4, !tbaa !4
  %tobool861 = icmp eq i32 %183, 0
  br i1 %tobool861, label %if.then862, label %land.lhs.true894

if.then862:                                       ; preds = %if.then852
  %184 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx866 = getelementptr inbounds i32* %184, i64 %idxprom912
  %185 = load i32* %arrayidx866, align 4, !tbaa !4
  %shl867 = shl i32 %add842, 2
  %sub868 = sub nsw i32 %shl867, %add21
  %idxprom869 = sext i32 %sub868 to i64
  %arrayidx870 = getelementptr inbounds i32* %184, i64 %idxprom869
  %186 = load i32* %arrayidx870, align 4, !tbaa !4
  %add871 = add nsw i32 %186, %185
  %mul872 = mul nsw i32 %add871, %conv
  %shr873 = ashr i32 %mul872, 16
  %call874 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr873, i32 %min_mcost.addr.162399, i32 %best_x.12, i32 %add842) #4
  %187 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx881 = getelementptr inbounds i32** %187, i64 %idxprom858
  %188 = load i32** %arrayidx881, align 8, !tbaa !3
  %arrayidx882 = getelementptr inbounds i32* %188, i64 %idxprom902
  store i32 %call874, i32* %arrayidx882, align 4, !tbaa !4
  %cmp883 = icmp slt i32 %call874, %min_mcost.addr.162399
  %best_x.11.best_x.16 = select i1 %cmp883, i32 %best_x.12, i32 %best_x.162396
  %add842.best_y.16 = select i1 %cmp883, i32 %add842, i32 %best_y.162397
  %call874.min_mcost.addr.16 = select i1 %cmp883, i32 %call874, i32 %min_mcost.addr.162399
  br label %land.lhs.true894

land.lhs.true894:                                 ; preds = %if.then852, %if.then862, %land.lhs.true847
  %189 = phi i32** [ %179, %land.lhs.true847 ], [ %179, %if.then852 ], [ %187, %if.then862 ]
  %min_mcost.addr.172347 = phi i32 [ %min_mcost.addr.162399, %land.lhs.true847 ], [ %min_mcost.addr.162399, %if.then852 ], [ %call874.min_mcost.addr.16, %if.then862 ]
  %best_y.172346 = phi i32 [ %best_y.162397, %land.lhs.true847 ], [ %best_y.162397, %if.then852 ], [ %add842.best_y.16, %if.then862 ]
  %best_x.172345 = phi i32 [ %best_x.162396, %land.lhs.true847 ], [ %best_x.162396, %if.then852 ], [ %best_x.11.best_x.16, %if.then862 ]
  %sub8892348 = sub nsw i32 %best_y.12, %sub841
  %sub895 = sub nsw i32 %sub8892348, %add25
  %ispos2286 = icmp sgt i32 %sub895, -1
  %neg2287 = sub i32 0, %sub895
  %190 = select i1 %ispos2286, i32 %sub895, i32 %neg2287
  %cmp897 = icmp sgt i32 %190, %search_range
  br i1 %cmp897, label %for.inc936, label %if.then899

if.then899:                                       ; preds = %land.lhs.true894
  %add904 = add nsw i32 %sub895, %search_range
  %idxprom905 = sext i32 %add904 to i64
  %arrayidx906 = getelementptr inbounds i32** %189, i64 %idxprom905
  %191 = load i32** %arrayidx906, align 8, !tbaa !3
  %arrayidx907 = getelementptr inbounds i32* %191, i64 %idxprom902
  %192 = load i32* %arrayidx907, align 4, !tbaa !4
  %tobool908 = icmp eq i32 %192, 0
  br i1 %tobool908, label %if.then909, label %for.inc936

if.then909:                                       ; preds = %if.then899
  %193 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx913 = getelementptr inbounds i32* %193, i64 %idxprom912
  %194 = load i32* %arrayidx913, align 4, !tbaa !4
  %shl914 = shl i32 %sub8892348, 2
  %sub915 = sub nsw i32 %shl914, %add21
  %idxprom916 = sext i32 %sub915 to i64
  %arrayidx917 = getelementptr inbounds i32* %193, i64 %idxprom916
  %195 = load i32* %arrayidx917, align 4, !tbaa !4
  %add918 = add nsw i32 %195, %194
  %mul919 = mul nsw i32 %add918, %conv
  %shr920 = ashr i32 %mul919, 16
  %call921 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr920, i32 %min_mcost.addr.172347, i32 %best_x.12, i32 %sub8892348) #4
  %196 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx928 = getelementptr inbounds i32** %196, i64 %idxprom905
  %197 = load i32** %arrayidx928, align 8, !tbaa !3
  %arrayidx929 = getelementptr inbounds i32* %197, i64 %idxprom902
  store i32 %call921, i32* %arrayidx929, align 4, !tbaa !4
  %cmp930 = icmp slt i32 %call921, %min_mcost.addr.172347
  %best_x.11.best_x.17 = select i1 %cmp930, i32 %best_x.12, i32 %best_x.172345
  %sub889.best_y.17 = select i1 %cmp930, i32 %sub8892348, i32 %best_y.172346
  %call921.min_mcost.addr.17 = select i1 %cmp930, i32 %call921, i32 %min_mcost.addr.172347
  br label %for.inc936

for.inc936:                                       ; preds = %for.body839, %if.then909, %if.then899, %land.lhs.true894
  %198 = phi i32** [ %189, %if.then899 ], [ %189, %land.lhs.true894 ], [ %196, %if.then909 ], [ %179, %for.body839 ]
  %best_x.18 = phi i32 [ %best_x.172345, %if.then899 ], [ %best_x.172345, %land.lhs.true894 ], [ %best_x.11.best_x.17, %if.then909 ], [ %best_x.162396, %for.body839 ]
  %best_y.18 = phi i32 [ %best_y.172346, %if.then899 ], [ %best_y.172346, %land.lhs.true894 ], [ %sub889.best_y.17, %if.then909 ], [ %best_y.162397, %for.body839 ]
  %min_mcost.addr.18 = phi i32 [ %min_mcost.addr.172347, %if.then899 ], [ %min_mcost.addr.172347, %land.lhs.true894 ], [ %call921.min_mcost.addr.17, %if.then909 ], [ %min_mcost.addr.162399, %for.body839 ]
  %indvars.iv.next2450 = add i64 %indvars.iv2449, 1
  %cmp837 = icmp slt i32 %180, %div836
  br i1 %cmp837, label %for.body839, label %for.end938

for.end938:                                       ; preds = %for.inc936, %for.cond835.preheader.thread, %for.cond835.preheader
  %cmp83723952469 = phi i1 [ true, %for.cond835.preheader ], [ true, %for.cond835.preheader.thread ], [ %cmp8372395, %for.inc936 ]
  %div8362468 = phi i32 [ %div836, %for.cond835.preheader ], [ %div8362466, %for.cond835.preheader.thread ], [ %div836, %for.inc936 ]
  %199 = phi i32** [ %178, %for.cond835.preheader ], [ %153, %for.cond835.preheader.thread ], [ %198, %for.inc936 ]
  %min_mcost.addr.16.lcssa = phi i32 [ %min_mcost.addr.15, %for.cond835.preheader ], [ %min_mcost.addr.12, %for.cond835.preheader.thread ], [ %min_mcost.addr.18, %for.inc936 ]
  %best_y.16.lcssa = phi i32 [ %best_y.15, %for.cond835.preheader ], [ %best_y.12, %for.cond835.preheader.thread ], [ %best_y.18, %for.inc936 ]
  %best_x.16.lcssa = phi i32 [ %best_x.15, %for.cond835.preheader ], [ %best_x.12, %for.cond835.preheader.thread ], [ %best_x.18, %for.inc936 ]
  br i1 %cmp65, label %if.then942, label %if.else960

if.then942:                                       ; preds = %for.end938
  %200 = load i32* @pred_SAD_ref, align 4, !tbaa !4
  %sub943 = sub nsw i32 %min_mcost.addr.16.lcssa, %200
  %conv944 = sitofp i32 %sub943 to float
  %conv945 = sitofp i32 %200 to float
  %mul946 = fmul float %betaThird.0, %conv945
  %cmp947 = fcmp olt float %conv944, %mul946
  br i1 %cmp947, label %for.cond1325.preheader, label %if.else950

if.else950:                                       ; preds = %if.then942
  %mul954 = fmul float %betaSec.0, %conv945
  %cmp955 = fcmp olt float %conv944, %mul954
  br i1 %cmp955, label %for.cond1256.preheader, label %for.body1004

if.else960:                                       ; preds = %for.end938
  br i1 %cmp322, label %if.then963, label %if.else981

if.then963:                                       ; preds = %if.else960
  %201 = load i32* @pred_SAD_uplayer, align 4, !tbaa !4
  %sub964 = sub nsw i32 %min_mcost.addr.16.lcssa, %201
  %conv965 = sitofp i32 %sub964 to float
  %conv966 = sitofp i32 %201 to float
  %mul967 = fmul float %betaThird.0, %conv966
  %cmp968 = fcmp olt float %conv965, %mul967
  br i1 %cmp968, label %for.cond1325.preheader, label %if.else971

if.else971:                                       ; preds = %if.then963
  %mul975 = fmul float %betaSec.0, %conv966
  %cmp976 = fcmp olt float %conv965, %mul975
  br i1 %cmp976, label %for.cond1256.preheader, label %for.body1004

if.else981:                                       ; preds = %if.else960
  %202 = load i32* @pred_SAD_space, align 4, !tbaa !4
  %sub982 = sub nsw i32 %min_mcost.addr.16.lcssa, %202
  %conv983 = sitofp i32 %sub982 to float
  %conv984 = sitofp i32 %202 to float
  %mul985 = fmul float %betaThird.0, %conv984
  %cmp986 = fcmp olt float %conv983, %mul985
  br i1 %cmp986, label %for.cond1325.preheader, label %if.else989

if.else989:                                       ; preds = %if.else981
  %mul993 = fmul float %betaSec.0, %conv984
  %cmp994 = fcmp olt float %conv983, %mul993
  br i1 %cmp994, label %for.cond1256.preheader, label %for.body1004

for.body1004:                                     ; preds = %for.inc1057, %if.else950, %if.else989, %if.else971
  %203 = phi i32** [ %199, %if.else971 ], [ %199, %if.else989 ], [ %199, %if.else950 ], [ %217, %for.inc1057 ]
  %indvars.iv2445 = phi i64 [ 1, %if.else971 ], [ 1, %if.else989 ], [ 1, %if.else950 ], [ %indvars.iv.next2446, %for.inc1057 ]
  %min_mcost.addr.192394 = phi i32 [ %min_mcost.addr.16.lcssa, %if.else971 ], [ %min_mcost.addr.16.lcssa, %if.else989 ], [ %min_mcost.addr.16.lcssa, %if.else950 ], [ %min_mcost.addr.20, %for.inc1057 ]
  %best_y.192392 = phi i32 [ %best_y.16.lcssa, %if.else971 ], [ %best_y.16.lcssa, %if.else989 ], [ %best_y.16.lcssa, %if.else950 ], [ %best_y.20, %for.inc1057 ]
  %best_x.192391 = phi i32 [ %best_x.16.lcssa, %if.else971 ], [ %best_x.16.lcssa, %if.else989 ], [ %best_x.16.lcssa, %if.else950 ], [ %best_x.20, %for.inc1057 ]
  %204 = load i32** @spiral_search_x, align 8, !tbaa !3
  %arrayidx1006 = getelementptr inbounds i32* %204, i64 %indvars.iv2445
  %205 = load i32* %arrayidx1006, align 4, !tbaa !4
  %add1007 = add nsw i32 %205, %best_x.16.lcssa
  %206 = load i32** @spiral_search_y, align 8, !tbaa !3
  %arrayidx1009 = getelementptr inbounds i32* %206, i64 %indvars.iv2445
  %207 = load i32* %arrayidx1009, align 4, !tbaa !4
  %add1010 = add nsw i32 %207, %best_y.16.lcssa
  %sub1011 = sub nsw i32 %add1007, %add23
  %ispos2280 = icmp sgt i32 %sub1011, -1
  %neg2281 = sub i32 0, %sub1011
  %208 = select i1 %ispos2280, i32 %sub1011, i32 %neg2281
  %cmp1013 = icmp sgt i32 %208, %search_range
  br i1 %cmp1013, label %for.inc1057, label %land.lhs.true1015

land.lhs.true1015:                                ; preds = %for.body1004
  %sub1016 = sub nsw i32 %add1010, %add25
  %ispos2282 = icmp sgt i32 %sub1016, -1
  %neg2283 = sub i32 0, %sub1016
  %209 = select i1 %ispos2282, i32 %sub1016, i32 %neg2283
  %cmp1018 = icmp sgt i32 %209, %search_range
  br i1 %cmp1018, label %for.inc1057, label %if.then1020

if.then1020:                                      ; preds = %land.lhs.true1015
  %add1022 = add nsw i32 %sub1011, %search_range
  %idxprom1023 = sext i32 %add1022 to i64
  %add1025 = add nsw i32 %sub1016, %search_range
  %idxprom1026 = sext i32 %add1025 to i64
  %arrayidx1027 = getelementptr inbounds i32** %203, i64 %idxprom1026
  %210 = load i32** %arrayidx1027, align 8, !tbaa !3
  %arrayidx1028 = getelementptr inbounds i32* %210, i64 %idxprom1023
  %211 = load i32* %arrayidx1028, align 4, !tbaa !4
  %tobool1029 = icmp eq i32 %211, 0
  br i1 %tobool1029, label %if.then1030, label %for.inc1057

if.then1030:                                      ; preds = %if.then1020
  %shl1031 = shl i32 %add1007, 2
  %sub1032 = sub nsw i32 %shl1031, %add18
  %idxprom1033 = sext i32 %sub1032 to i64
  %212 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx1034 = getelementptr inbounds i32* %212, i64 %idxprom1033
  %213 = load i32* %arrayidx1034, align 4, !tbaa !4
  %shl1035 = shl i32 %add1010, 2
  %sub1036 = sub nsw i32 %shl1035, %add21
  %idxprom1037 = sext i32 %sub1036 to i64
  %arrayidx1038 = getelementptr inbounds i32* %212, i64 %idxprom1037
  %214 = load i32* %arrayidx1038, align 4, !tbaa !4
  %add1039 = add nsw i32 %214, %213
  %mul1040 = mul nsw i32 %add1039, %conv
  %shr1041 = ashr i32 %mul1040, 16
  %call1042 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr1041, i32 %min_mcost.addr.192394, i32 %add1007, i32 %add1010) #4
  %215 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx1049 = getelementptr inbounds i32** %215, i64 %idxprom1026
  %216 = load i32** %arrayidx1049, align 8, !tbaa !3
  %arrayidx1050 = getelementptr inbounds i32* %216, i64 %idxprom1023
  store i32 %call1042, i32* %arrayidx1050, align 4, !tbaa !4
  %cmp1051 = icmp slt i32 %call1042, %min_mcost.addr.192394
  %add1007.best_x.19 = select i1 %cmp1051, i32 %add1007, i32 %best_x.192391
  %add1010.best_y.19 = select i1 %cmp1051, i32 %add1010, i32 %best_y.192392
  %call1042.min_mcost.addr.19 = select i1 %cmp1051, i32 %call1042, i32 %min_mcost.addr.192394
  br label %for.inc1057

for.inc1057:                                      ; preds = %if.then1030, %if.then1020, %land.lhs.true1015, %for.body1004
  %217 = phi i32** [ %203, %if.then1020 ], [ %203, %land.lhs.true1015 ], [ %203, %for.body1004 ], [ %215, %if.then1030 ]
  %best_x.20 = phi i32 [ %best_x.192391, %if.then1020 ], [ %best_x.192391, %land.lhs.true1015 ], [ %best_x.192391, %for.body1004 ], [ %add1007.best_x.19, %if.then1030 ]
  %best_y.20 = phi i32 [ %best_y.192392, %if.then1020 ], [ %best_y.192392, %land.lhs.true1015 ], [ %best_y.192392, %for.body1004 ], [ %add1010.best_y.19, %if.then1030 ]
  %min_mcost.addr.20 = phi i32 [ %min_mcost.addr.192394, %if.then1020 ], [ %min_mcost.addr.192394, %land.lhs.true1015 ], [ %min_mcost.addr.192394, %for.body1004 ], [ %call1042.min_mcost.addr.19, %if.then1030 ]
  %indvars.iv.next2446 = add i64 %indvars.iv2445, 1
  %lftr.wideiv2447 = trunc i64 %indvars.iv.next2446 to i32
  %exitcond2448 = icmp eq i32 %lftr.wideiv2447, 25
  br i1 %exitcond2448, label %for.end1059, label %for.body1004

for.end1059:                                      ; preds = %for.inc1057
  br i1 %cmp65, label %if.then1063, label %if.else1081

if.then1063:                                      ; preds = %for.end1059
  %218 = load i32* @pred_SAD_ref, align 4, !tbaa !4
  %sub1064 = sub nsw i32 %min_mcost.addr.20, %218
  %conv1065 = sitofp i32 %sub1064 to float
  %conv1066 = sitofp i32 %218 to float
  %mul1067 = fmul float %betaThird.0, %conv1066
  %cmp1068 = fcmp olt float %conv1065, %mul1067
  br i1 %cmp1068, label %for.cond1325.preheader, label %if.else1071

if.else1071:                                      ; preds = %if.then1063
  %mul1075 = fmul float %betaSec.0, %conv1066
  %cmp1076 = fcmp olt float %conv1065, %mul1075
  br i1 %cmp1076, label %for.cond1256.preheader, label %for.cond1122.preheader

if.else1081:                                      ; preds = %for.end1059
  br i1 %cmp322, label %if.then1084, label %if.else1102

if.then1084:                                      ; preds = %if.else1081
  %219 = load i32* @pred_SAD_uplayer, align 4, !tbaa !4
  %sub1085 = sub nsw i32 %min_mcost.addr.20, %219
  %conv1086 = sitofp i32 %sub1085 to float
  %conv1087 = sitofp i32 %219 to float
  %mul1088 = fmul float %betaThird.0, %conv1087
  %cmp1089 = fcmp olt float %conv1086, %mul1088
  br i1 %cmp1089, label %for.cond1325.preheader, label %if.else1092

if.else1092:                                      ; preds = %if.then1084
  %mul1096 = fmul float %betaSec.0, %conv1087
  %cmp1097 = fcmp olt float %conv1086, %mul1096
  br i1 %cmp1097, label %for.cond1256.preheader, label %for.cond1122.preheader

if.else1102:                                      ; preds = %if.else1081
  %220 = load i32* @pred_SAD_space, align 4, !tbaa !4
  %sub1103 = sub nsw i32 %min_mcost.addr.20, %220
  %conv1104 = sitofp i32 %sub1103 to float
  %conv1105 = sitofp i32 %220 to float
  %mul1106 = fmul float %betaThird.0, %conv1105
  %cmp1107 = fcmp olt float %conv1104, %mul1106
  br i1 %cmp1107, label %for.cond1325.preheader, label %if.else1110

if.else1110:                                      ; preds = %if.else1102
  %mul1114 = fmul float %betaSec.0, %conv1105
  %cmp1115 = fcmp olt float %conv1104, %mul1114
  br i1 %cmp1115, label %for.cond1256.preheader, label %for.cond1122.preheader

for.cond1122.preheader:                           ; preds = %if.else1092, %if.else1110, %if.else1071
  br i1 %cmp83723952469, label %for.cond1256.preheader, label %for.cond1127.preheader

for.cond1127.preheader:                           ; preds = %for.cond1122.preheader, %for.inc1253
  %221 = phi i32** [ %234, %for.inc1253 ], [ %217, %for.cond1122.preheader ]
  %min_mcost.addr.212387 = phi i32 [ %min_mcost.addr.23, %for.inc1253 ], [ %min_mcost.addr.20, %for.cond1122.preheader ]
  %i.22386 = phi i32 [ %inc1254, %for.inc1253 ], [ 1, %for.cond1122.preheader ]
  %best_y.212385 = phi i32 [ %best_y.23, %for.inc1253 ], [ %best_y.20, %for.cond1122.preheader ]
  %best_x.212384 = phi i32 [ %best_x.23, %for.inc1253 ], [ %best_x.20, %for.cond1122.preheader ]
  br label %for.body1130

for.body1130:                                     ; preds = %for.inc1185, %for.cond1127.preheader
  %222 = phi i32** [ %221, %for.cond1127.preheader ], [ %234, %for.inc1185 ]
  %indvars.iv2435 = phi i64 [ 0, %for.cond1127.preheader ], [ %indvars.iv.next2436, %for.inc1185 ]
  %min_mcost.addr.222381 = phi i32 [ %min_mcost.addr.212387, %for.cond1127.preheader ], [ %min_mcost.addr.23, %for.inc1185 ]
  %iAbort.02380 = phi i32 [ 0, %for.cond1127.preheader ], [ %iAbort.1, %for.inc1185 ]
  %best_y.222378 = phi i32 [ %best_y.212385, %for.cond1127.preheader ], [ %best_y.23, %for.inc1185 ]
  %best_x.222377 = phi i32 [ %best_x.212384, %for.cond1127.preheader ], [ %best_x.23, %for.inc1185 ]
  %arrayidx1132 = getelementptr inbounds [16 x i32]* @FastIntegerPelBlockMotionSearch.Big_Hexagon_x, i64 0, i64 %indvars.iv2435
  %223 = load i32* %arrayidx1132, align 4, !tbaa !4
  %mul1133 = mul nsw i32 %223, %i.22386
  %add1134 = add nsw i32 %mul1133, %best_x.16.lcssa
  %arrayidx1136 = getelementptr inbounds [16 x i32]* @FastIntegerPelBlockMotionSearch.Big_Hexagon_y, i64 0, i64 %indvars.iv2435
  %224 = load i32* %arrayidx1136, align 4, !tbaa !4
  %mul1137 = mul nsw i32 %224, %i.22386
  %add1138 = add nsw i32 %mul1137, %best_y.16.lcssa
  %sub1139 = sub nsw i32 %add1134, %add23
  %ispos2276 = icmp sgt i32 %sub1139, -1
  %neg2277 = sub i32 0, %sub1139
  %225 = select i1 %ispos2276, i32 %sub1139, i32 %neg2277
  %cmp1141 = icmp sgt i32 %225, %search_range
  br i1 %cmp1141, label %for.inc1185, label %land.lhs.true1143

land.lhs.true1143:                                ; preds = %for.body1130
  %sub1144 = sub nsw i32 %add1138, %add25
  %ispos2278 = icmp sgt i32 %sub1144, -1
  %neg2279 = sub i32 0, %sub1144
  %226 = select i1 %ispos2278, i32 %sub1144, i32 %neg2279
  %cmp1146 = icmp sgt i32 %226, %search_range
  br i1 %cmp1146, label %for.inc1185, label %if.then1148

if.then1148:                                      ; preds = %land.lhs.true1143
  %add1150 = add nsw i32 %sub1139, %search_range
  %idxprom1151 = sext i32 %add1150 to i64
  %add1153 = add nsw i32 %sub1144, %search_range
  %idxprom1154 = sext i32 %add1153 to i64
  %arrayidx1155 = getelementptr inbounds i32** %222, i64 %idxprom1154
  %227 = load i32** %arrayidx1155, align 8, !tbaa !3
  %arrayidx1156 = getelementptr inbounds i32* %227, i64 %idxprom1151
  %228 = load i32* %arrayidx1156, align 4, !tbaa !4
  %tobool1157 = icmp eq i32 %228, 0
  br i1 %tobool1157, label %if.then1158, label %for.inc1185

if.then1158:                                      ; preds = %if.then1148
  %shl1159 = shl i32 %add1134, 2
  %sub1160 = sub nsw i32 %shl1159, %add18
  %idxprom1161 = sext i32 %sub1160 to i64
  %229 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx1162 = getelementptr inbounds i32* %229, i64 %idxprom1161
  %230 = load i32* %arrayidx1162, align 4, !tbaa !4
  %shl1163 = shl i32 %add1138, 2
  %sub1164 = sub nsw i32 %shl1163, %add21
  %idxprom1165 = sext i32 %sub1164 to i64
  %arrayidx1166 = getelementptr inbounds i32* %229, i64 %idxprom1165
  %231 = load i32* %arrayidx1166, align 4, !tbaa !4
  %add1167 = add nsw i32 %231, %230
  %mul1168 = mul nsw i32 %add1167, %conv
  %shr1169 = ashr i32 %mul1168, 16
  %call1170 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr1169, i32 %min_mcost.addr.222381, i32 %add1134, i32 %add1138) #4
  %232 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx1177 = getelementptr inbounds i32** %232, i64 %idxprom1154
  %233 = load i32** %arrayidx1177, align 8, !tbaa !3
  %arrayidx1178 = getelementptr inbounds i32* %233, i64 %idxprom1151
  store i32 %call1170, i32* %arrayidx1178, align 4, !tbaa !4
  %cmp1179 = icmp slt i32 %call1170, %min_mcost.addr.222381
  %add1134.best_x.22 = select i1 %cmp1179, i32 %add1134, i32 %best_x.222377
  %add1138.best_y.22 = select i1 %cmp1179, i32 %add1138, i32 %best_y.222378
  %.iAbort.0 = select i1 %cmp1179, i32 1, i32 %iAbort.02380
  %call1170.min_mcost.addr.22 = select i1 %cmp1179, i32 %call1170, i32 %min_mcost.addr.222381
  br label %for.inc1185

for.inc1185:                                      ; preds = %if.then1158, %if.then1148, %land.lhs.true1143, %for.body1130
  %234 = phi i32** [ %222, %if.then1148 ], [ %222, %land.lhs.true1143 ], [ %222, %for.body1130 ], [ %232, %if.then1158 ]
  %best_x.23 = phi i32 [ %best_x.222377, %if.then1148 ], [ %best_x.222377, %land.lhs.true1143 ], [ %best_x.222377, %for.body1130 ], [ %add1134.best_x.22, %if.then1158 ]
  %best_y.23 = phi i32 [ %best_y.222378, %if.then1148 ], [ %best_y.222378, %land.lhs.true1143 ], [ %best_y.222378, %for.body1130 ], [ %add1138.best_y.22, %if.then1158 ]
  %iAbort.1 = phi i32 [ %iAbort.02380, %if.then1148 ], [ %iAbort.02380, %land.lhs.true1143 ], [ %iAbort.02380, %for.body1130 ], [ %.iAbort.0, %if.then1158 ]
  %min_mcost.addr.23 = phi i32 [ %min_mcost.addr.222381, %if.then1148 ], [ %min_mcost.addr.222381, %land.lhs.true1143 ], [ %min_mcost.addr.222381, %for.body1130 ], [ %call1170.min_mcost.addr.22, %if.then1158 ]
  %indvars.iv.next2436 = add i64 %indvars.iv2435, 1
  %lftr.wideiv2437 = trunc i64 %indvars.iv.next2436 to i32
  %exitcond2438 = icmp eq i32 %lftr.wideiv2437, 16
  br i1 %exitcond2438, label %for.end1187, label %for.body1130

for.end1187:                                      ; preds = %for.inc1185
  %tobool1188 = icmp eq i32 %iAbort.1, 0
  br i1 %tobool1188, label %for.inc1253, label %if.then1189

if.then1189:                                      ; preds = %for.end1187
  br i1 %cmp65, label %if.then1193, label %if.else1211

if.then1193:                                      ; preds = %if.then1189
  %235 = load i32* @pred_SAD_ref, align 4, !tbaa !4
  %sub1194 = sub nsw i32 %min_mcost.addr.23, %235
  %conv1195 = sitofp i32 %sub1194 to float
  %conv1196 = sitofp i32 %235 to float
  %mul1197 = fmul float %betaThird.0, %conv1196
  %cmp1198 = fcmp olt float %conv1195, %mul1197
  br i1 %cmp1198, label %for.cond1325.preheader, label %if.else1201

if.else1201:                                      ; preds = %if.then1193
  %mul1205 = fmul float %betaSec.0, %conv1196
  %cmp1206 = fcmp olt float %conv1195, %mul1205
  br i1 %cmp1206, label %for.cond1256.preheader, label %for.inc1253

if.else1211:                                      ; preds = %if.then1189
  br i1 %cmp322, label %if.then1214, label %if.else1232

if.then1214:                                      ; preds = %if.else1211
  %236 = load i32* @pred_SAD_uplayer, align 4, !tbaa !4
  %sub1215 = sub nsw i32 %min_mcost.addr.23, %236
  %conv1216 = sitofp i32 %sub1215 to float
  %conv1217 = sitofp i32 %236 to float
  %mul1218 = fmul float %betaThird.0, %conv1217
  %cmp1219 = fcmp olt float %conv1216, %mul1218
  br i1 %cmp1219, label %for.cond1325.preheader, label %if.else1222

if.else1222:                                      ; preds = %if.then1214
  %mul1226 = fmul float %betaSec.0, %conv1217
  %cmp1227 = fcmp olt float %conv1216, %mul1226
  br i1 %cmp1227, label %for.cond1256.preheader, label %for.inc1253

if.else1232:                                      ; preds = %if.else1211
  %237 = load i32* @pred_SAD_space, align 4, !tbaa !4
  %sub1233 = sub nsw i32 %min_mcost.addr.23, %237
  %conv1234 = sitofp i32 %sub1233 to float
  %conv1235 = sitofp i32 %237 to float
  %mul1236 = fmul float %betaThird.0, %conv1235
  %cmp1237 = fcmp olt float %conv1234, %mul1236
  br i1 %cmp1237, label %for.cond1325.preheader, label %if.else1240

if.else1240:                                      ; preds = %if.else1232
  %mul1244 = fmul float %betaSec.0, %conv1235
  %cmp1245 = fcmp olt float %conv1234, %mul1244
  br i1 %cmp1245, label %for.cond1256.preheader, label %for.inc1253

for.inc1253:                                      ; preds = %for.end1187, %if.else1222, %if.else1240, %if.else1201
  %inc1254 = add nsw i32 %i.22386, 1
  %cmp1124 = icmp slt i32 %i.22386, %div8362468
  br i1 %cmp1124, label %for.cond1127.preheader, label %for.cond1256.preheader

for.cond1260.preheader:                           ; preds = %for.end1318, %for.cond1256.preheader
  %238 = phi i32** [ %95, %for.cond1256.preheader ], [ %251, %for.end1318 ]
  %min_mcost.addr.252373 = phi i32 [ %min_mcost.addr.25.ph, %for.cond1256.preheader ], [ %min_mcost.addr.27, %for.end1318 ]
  %i.32372 = phi i32 [ 0, %for.cond1256.preheader ], [ %inc1323, %for.end1318 ]
  %best_y.252371 = phi i32 [ %best_y.25.ph, %for.cond1256.preheader ], [ %best_y.27, %for.end1318 ]
  %best_x.252370 = phi i32 [ %best_x.25.ph, %for.cond1256.preheader ], [ %best_x.27, %for.end1318 ]
  br label %for.body1263

for.body1263:                                     ; preds = %for.inc1316, %for.cond1260.preheader
  %239 = phi i32** [ %238, %for.cond1260.preheader ], [ %251, %for.inc1316 ]
  %indvars.iv2428 = phi i64 [ 0, %for.cond1260.preheader ], [ %indvars.iv.next2429, %for.inc1316 ]
  %min_mcost.addr.262368 = phi i32 [ %min_mcost.addr.252373, %for.cond1260.preheader ], [ %min_mcost.addr.27, %for.inc1316 ]
  %iAbort.22367 = phi i32 [ 1, %for.cond1260.preheader ], [ %iAbort.3, %for.inc1316 ]
  %best_y.262365 = phi i32 [ %best_y.252371, %for.cond1260.preheader ], [ %best_y.27, %for.inc1316 ]
  %best_x.262364 = phi i32 [ %best_x.252370, %for.cond1260.preheader ], [ %best_x.27, %for.inc1316 ]
  %arrayidx1265 = getelementptr inbounds [6 x i32]* @FastIntegerPelBlockMotionSearch.Hexagon_x, i64 0, i64 %indvars.iv2428
  %240 = load i32* %arrayidx1265, align 4, !tbaa !4
  %add1266 = add nsw i32 %240, %best_x.252370
  %arrayidx1268 = getelementptr inbounds [6 x i32]* @FastIntegerPelBlockMotionSearch.Hexagon_y, i64 0, i64 %indvars.iv2428
  %241 = load i32* %arrayidx1268, align 4, !tbaa !4
  %add1269 = add nsw i32 %241, %best_y.252371
  %sub1270 = sub nsw i32 %add1266, %add23
  %ispos2272 = icmp sgt i32 %sub1270, -1
  %neg2273 = sub i32 0, %sub1270
  %242 = select i1 %ispos2272, i32 %sub1270, i32 %neg2273
  %cmp1272 = icmp sgt i32 %242, %search_range
  br i1 %cmp1272, label %for.inc1316, label %land.lhs.true1274

land.lhs.true1274:                                ; preds = %for.body1263
  %sub1275 = sub nsw i32 %add1269, %add25
  %ispos2274 = icmp sgt i32 %sub1275, -1
  %neg2275 = sub i32 0, %sub1275
  %243 = select i1 %ispos2274, i32 %sub1275, i32 %neg2275
  %cmp1277 = icmp sgt i32 %243, %search_range
  br i1 %cmp1277, label %for.inc1316, label %if.then1279

if.then1279:                                      ; preds = %land.lhs.true1274
  %add1281 = add nsw i32 %sub1270, %search_range
  %idxprom1282 = sext i32 %add1281 to i64
  %add1284 = add nsw i32 %sub1275, %search_range
  %idxprom1285 = sext i32 %add1284 to i64
  %arrayidx1286 = getelementptr inbounds i32** %239, i64 %idxprom1285
  %244 = load i32** %arrayidx1286, align 8, !tbaa !3
  %arrayidx1287 = getelementptr inbounds i32* %244, i64 %idxprom1282
  %245 = load i32* %arrayidx1287, align 4, !tbaa !4
  %tobool1288 = icmp eq i32 %245, 0
  br i1 %tobool1288, label %if.then1289, label %for.inc1316

if.then1289:                                      ; preds = %if.then1279
  %shl1290 = shl i32 %add1266, 2
  %sub1291 = sub nsw i32 %shl1290, %add18
  %idxprom1292 = sext i32 %sub1291 to i64
  %246 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx1293 = getelementptr inbounds i32* %246, i64 %idxprom1292
  %247 = load i32* %arrayidx1293, align 4, !tbaa !4
  %shl1294 = shl i32 %add1269, 2
  %sub1295 = sub nsw i32 %shl1294, %add21
  %idxprom1296 = sext i32 %sub1295 to i64
  %arrayidx1297 = getelementptr inbounds i32* %246, i64 %idxprom1296
  %248 = load i32* %arrayidx1297, align 4, !tbaa !4
  %add1298 = add nsw i32 %248, %247
  %mul1299 = mul nsw i32 %add1298, %conv
  %shr1300 = ashr i32 %mul1299, 16
  %call1301 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr1300, i32 %min_mcost.addr.262368, i32 %add1266, i32 %add1269) #4
  %249 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx1308 = getelementptr inbounds i32** %249, i64 %idxprom1285
  %250 = load i32** %arrayidx1308, align 8, !tbaa !3
  %arrayidx1309 = getelementptr inbounds i32* %250, i64 %idxprom1282
  store i32 %call1301, i32* %arrayidx1309, align 4, !tbaa !4
  %cmp1310 = icmp slt i32 %call1301, %min_mcost.addr.262368
  %add1266.best_x.26 = select i1 %cmp1310, i32 %add1266, i32 %best_x.262364
  %add1269.best_y.26 = select i1 %cmp1310, i32 %add1269, i32 %best_y.262365
  %.iAbort.2 = select i1 %cmp1310, i32 0, i32 %iAbort.22367
  %call1301.min_mcost.addr.26 = select i1 %cmp1310, i32 %call1301, i32 %min_mcost.addr.262368
  br label %for.inc1316

for.inc1316:                                      ; preds = %if.then1289, %if.then1279, %land.lhs.true1274, %for.body1263
  %251 = phi i32** [ %239, %if.then1279 ], [ %239, %land.lhs.true1274 ], [ %239, %for.body1263 ], [ %249, %if.then1289 ]
  %best_x.27 = phi i32 [ %best_x.262364, %if.then1279 ], [ %best_x.262364, %land.lhs.true1274 ], [ %best_x.262364, %for.body1263 ], [ %add1266.best_x.26, %if.then1289 ]
  %best_y.27 = phi i32 [ %best_y.262365, %if.then1279 ], [ %best_y.262365, %land.lhs.true1274 ], [ %best_y.262365, %for.body1263 ], [ %add1269.best_y.26, %if.then1289 ]
  %iAbort.3 = phi i32 [ %iAbort.22367, %if.then1279 ], [ %iAbort.22367, %land.lhs.true1274 ], [ %iAbort.22367, %for.body1263 ], [ %.iAbort.2, %if.then1289 ]
  %min_mcost.addr.27 = phi i32 [ %min_mcost.addr.262368, %if.then1279 ], [ %min_mcost.addr.262368, %land.lhs.true1274 ], [ %min_mcost.addr.262368, %for.body1263 ], [ %call1301.min_mcost.addr.26, %if.then1289 ]
  %indvars.iv.next2429 = add i64 %indvars.iv2428, 1
  %lftr.wideiv2430 = trunc i64 %indvars.iv.next2429 to i32
  %exitcond2431 = icmp eq i32 %lftr.wideiv2430, 6
  br i1 %exitcond2431, label %for.end1318, label %for.body1263

for.end1318:                                      ; preds = %for.inc1316
  %tobool1319 = icmp eq i32 %iAbort.3, 0
  %inc1323 = add nsw i32 %i.32372, 1
  %cmp1257 = icmp slt i32 %inc1323, %search_range
  %or.cond2470 = and i1 %tobool1319, %cmp1257
  br i1 %or.cond2470, label %for.cond1260.preheader, label %for.cond1325.preheader

for.cond1329.preheader:                           ; preds = %for.end1387, %for.cond1325.preheader
  %252 = phi i32** [ %94, %for.cond1325.preheader ], [ %265, %for.end1387 ]
  %min_mcost.addr.292361 = phi i32 [ %min_mcost.addr.29.ph, %for.cond1325.preheader ], [ %min_mcost.addr.31, %for.end1387 ]
  %i.42360 = phi i32 [ 0, %for.cond1325.preheader ], [ %inc1392, %for.end1387 ]
  %best_y.292359 = phi i32 [ %best_y.29.ph, %for.cond1325.preheader ], [ %best_y.31, %for.end1387 ]
  %best_x.292358 = phi i32 [ %best_x.29.ph, %for.cond1325.preheader ], [ %best_x.31, %for.end1387 ]
  br label %for.body1332

for.body1332:                                     ; preds = %for.inc1385, %for.cond1329.preheader
  %253 = phi i32** [ %252, %for.cond1329.preheader ], [ %265, %for.inc1385 ]
  %indvars.iv = phi i64 [ 0, %for.cond1329.preheader ], [ %indvars.iv.next, %for.inc1385 ]
  %min_mcost.addr.302356 = phi i32 [ %min_mcost.addr.292361, %for.cond1329.preheader ], [ %min_mcost.addr.31, %for.inc1385 ]
  %iAbort.42355 = phi i32 [ 1, %for.cond1329.preheader ], [ %iAbort.5, %for.inc1385 ]
  %best_y.302353 = phi i32 [ %best_y.292359, %for.cond1329.preheader ], [ %best_y.31, %for.inc1385 ]
  %best_x.302352 = phi i32 [ %best_x.292358, %for.cond1329.preheader ], [ %best_x.31, %for.inc1385 ]
  %arrayidx1334 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %indvars.iv
  %254 = load i32* %arrayidx1334, align 4, !tbaa !4
  %add1335 = add nsw i32 %254, %best_x.292358
  %arrayidx1337 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %indvars.iv
  %255 = load i32* %arrayidx1337, align 4, !tbaa !4
  %add1338 = add nsw i32 %255, %best_y.292359
  %sub1339 = sub nsw i32 %add1335, %add23
  %ispos = icmp sgt i32 %sub1339, -1
  %neg = sub i32 0, %sub1339
  %256 = select i1 %ispos, i32 %sub1339, i32 %neg
  %cmp1341 = icmp sgt i32 %256, %search_range
  br i1 %cmp1341, label %for.inc1385, label %land.lhs.true1343

land.lhs.true1343:                                ; preds = %for.body1332
  %sub1344 = sub nsw i32 %add1338, %add25
  %ispos2270 = icmp sgt i32 %sub1344, -1
  %neg2271 = sub i32 0, %sub1344
  %257 = select i1 %ispos2270, i32 %sub1344, i32 %neg2271
  %cmp1346 = icmp sgt i32 %257, %search_range
  br i1 %cmp1346, label %for.inc1385, label %if.then1348

if.then1348:                                      ; preds = %land.lhs.true1343
  %add1350 = add nsw i32 %sub1339, %search_range
  %idxprom1351 = sext i32 %add1350 to i64
  %add1353 = add nsw i32 %sub1344, %search_range
  %idxprom1354 = sext i32 %add1353 to i64
  %arrayidx1355 = getelementptr inbounds i32** %253, i64 %idxprom1354
  %258 = load i32** %arrayidx1355, align 8, !tbaa !3
  %arrayidx1356 = getelementptr inbounds i32* %258, i64 %idxprom1351
  %259 = load i32* %arrayidx1356, align 4, !tbaa !4
  %tobool1357 = icmp eq i32 %259, 0
  br i1 %tobool1357, label %if.then1358, label %for.inc1385

if.then1358:                                      ; preds = %if.then1348
  %shl1359 = shl i32 %add1335, 2
  %sub1360 = sub nsw i32 %shl1359, %add18
  %idxprom1361 = sext i32 %sub1360 to i64
  %260 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx1362 = getelementptr inbounds i32* %260, i64 %idxprom1361
  %261 = load i32* %arrayidx1362, align 4, !tbaa !4
  %shl1363 = shl i32 %add1338, 2
  %sub1364 = sub nsw i32 %shl1363, %add21
  %idxprom1365 = sext i32 %sub1364 to i64
  %arrayidx1366 = getelementptr inbounds i32* %260, i64 %idxprom1365
  %262 = load i32* %arrayidx1366, align 4, !tbaa !4
  %add1367 = add nsw i32 %262, %261
  %mul1368 = mul nsw i32 %add1367, %conv
  %shr1369 = ashr i32 %mul1368, 16
  %call1370 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr1369, i32 %min_mcost.addr.302356, i32 %add1335, i32 %add1338) #4
  %263 = load i32*** @McostState, align 8, !tbaa !3
  %arrayidx1377 = getelementptr inbounds i32** %263, i64 %idxprom1354
  %264 = load i32** %arrayidx1377, align 8, !tbaa !3
  %arrayidx1378 = getelementptr inbounds i32* %264, i64 %idxprom1351
  store i32 %call1370, i32* %arrayidx1378, align 4, !tbaa !4
  %cmp1379 = icmp slt i32 %call1370, %min_mcost.addr.302356
  %add1335.best_x.30 = select i1 %cmp1379, i32 %add1335, i32 %best_x.302352
  %add1338.best_y.30 = select i1 %cmp1379, i32 %add1338, i32 %best_y.302353
  %.iAbort.4 = select i1 %cmp1379, i32 0, i32 %iAbort.42355
  %call1370.min_mcost.addr.30 = select i1 %cmp1379, i32 %call1370, i32 %min_mcost.addr.302356
  br label %for.inc1385

for.inc1385:                                      ; preds = %if.then1358, %if.then1348, %land.lhs.true1343, %for.body1332
  %265 = phi i32** [ %253, %if.then1348 ], [ %253, %land.lhs.true1343 ], [ %253, %for.body1332 ], [ %263, %if.then1358 ]
  %best_x.31 = phi i32 [ %best_x.302352, %if.then1348 ], [ %best_x.302352, %land.lhs.true1343 ], [ %best_x.302352, %for.body1332 ], [ %add1335.best_x.30, %if.then1358 ]
  %best_y.31 = phi i32 [ %best_y.302353, %if.then1348 ], [ %best_y.302353, %land.lhs.true1343 ], [ %best_y.302353, %for.body1332 ], [ %add1338.best_y.30, %if.then1358 ]
  %iAbort.5 = phi i32 [ %iAbort.42355, %if.then1348 ], [ %iAbort.42355, %land.lhs.true1343 ], [ %iAbort.42355, %for.body1332 ], [ %.iAbort.4, %if.then1358 ]
  %min_mcost.addr.31 = phi i32 [ %min_mcost.addr.302356, %if.then1348 ], [ %min_mcost.addr.302356, %land.lhs.true1343 ], [ %min_mcost.addr.302356, %for.body1332 ], [ %call1370.min_mcost.addr.30, %if.then1358 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end1387, label %for.body1332

for.end1387:                                      ; preds = %for.inc1385
  %tobool1388 = icmp eq i32 %iAbort.5, 0
  %inc1392 = add nsw i32 %i.42360, 1
  %cmp1326 = icmp slt i32 %inc1392, %search_range
  %or.cond2471 = and i1 %tobool1388, %cmp1326
  br i1 %or.cond2471, label %for.cond1329.preheader, label %for.end1393

for.end1393:                                      ; preds = %for.end1387, %for.cond1256.preheader, %for.cond1325.preheader
  %best_x.32 = phi i32 [ %best_x.29.ph, %for.cond1325.preheader ], [ %best_x.25.ph, %for.cond1256.preheader ], [ %best_x.31, %for.end1387 ]
  %best_y.32 = phi i32 [ %best_y.29.ph, %for.cond1325.preheader ], [ %best_y.25.ph, %for.cond1256.preheader ], [ %best_y.31, %for.end1387 ]
  %min_mcost.addr.32 = phi i32 [ %min_mcost.addr.29.ph, %for.cond1325.preheader ], [ %min_mcost.addr.25.ph, %for.cond1256.preheader ], [ %min_mcost.addr.31, %for.end1387 ]
  %sub1394 = sub nsw i32 %best_x.32, %pic_pix_x
  %conv1395 = trunc i32 %sub1394 to i16
  store i16 %conv1395, i16* %mv_x, align 2, !tbaa !5
  %sub1396 = sub nsw i32 %best_y.32, %pic_pix_y
  %conv1397 = trunc i32 %sub1396 to i16
  store i16 %conv1397, i16* %mv_y, align 2, !tbaa !5
  ret i32 %min_mcost.addr.32
}

; Function Attrs: optsize
declare i16* @FastLineX(i32, i16*, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare i16* @UMVLineX(i32, i16*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define i32 @AddUpSADQuarter(i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocksize_x, i32 %blocksize_y, i32 %cand_mv_x, i32 %cand_mv_y, %struct.storable_picture* nocapture %ref_picture, i16** nocapture %orig_pic, i32 %Mvmcost, i32 %min_mcost, i32 %useABT) #0 {
entry:
  %diff = alloca [16 x i32], align 16
  %0 = bitcast [16 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #3
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %ref_picture, i64 0, i32 28
  %1 = load i16*** %imgY_ups, align 8, !tbaa !3
  %size_x = getelementptr inbounds %struct.storable_picture* %ref_picture, i64 0, i32 18
  %2 = load i32* %size_x, align 4, !tbaa !4
  %size_y = getelementptr inbounds %struct.storable_picture* %ref_picture, i64 0, i32 19
  %3 = load i32* %size_y, align 4, !tbaa !4
  %cmp347 = icmp sgt i32 %blocksize_y, 0
  br i1 %cmp347, label %for.body.lr.ph, label %for.end184

for.body.lr.ph:                                   ; preds = %entry
  %cmp3342 = icmp sgt i32 %blocksize_x, 0
  %arraydecay = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 1
  %incdec.ptr19 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 2
  %incdec.ptr28 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 3
  %incdec.ptr37 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 4
  %incdec.ptr48 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 5
  %incdec.ptr57 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 6
  %incdec.ptr66 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 7
  %incdec.ptr75 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 8
  %incdec.ptr86 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 9
  %incdec.ptr95 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 10
  %incdec.ptr104 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 11
  %incdec.ptr113 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 12
  %incdec.ptr124 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 13
  %incdec.ptr133 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 14
  %incdec.ptr142 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 15
  %tobool151 = icmp eq i32 %useABT, 0
  %4 = zext i32 %pic_pix_x to i64
  %5 = zext i32 %pic_pix_y to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc182
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc182 ]
  %mcost.0348 = phi i32 [ %Mvmcost, %for.body.lr.ph ], [ %mcost.3, %for.inc182 ]
  %6 = add nsw i64 %indvars.iv, %5
  %7 = trunc i64 %6 to i32
  %shl = shl i32 %7, 2
  %add1 = add nsw i32 %shl, %cand_mv_y
  br i1 %cmp3342, label %for.body4.lr.ph, label %for.inc182

for.body4.lr.ph:                                  ; preds = %for.body
  %arrayidx = getelementptr inbounds i16** %orig_pic, i64 %indvars.iv
  %8 = or i64 %indvars.iv, 1
  %arrayidx40 = getelementptr inbounds i16** %orig_pic, i64 %8
  %add41 = add nsw i32 %add1, 4
  %9 = or i64 %indvars.iv, 2
  %arrayidx78 = getelementptr inbounds i16** %orig_pic, i64 %9
  %add79 = add nsw i32 %add1, 8
  %10 = or i64 %indvars.iv, 3
  %arrayidx116 = getelementptr inbounds i16** %orig_pic, i64 %10
  %add117 = add nsw i32 %add1, 12
  br label %for.body4

for.body4:                                        ; preds = %for.body4.lr.ph, %for.inc179
  %indvars.iv357 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next358, %for.inc179 ]
  %mcost.1343 = phi i32 [ %mcost.0348, %for.body4.lr.ph ], [ %mcost.2, %for.inc179 ]
  %11 = add nsw i64 %indvars.iv357, %4
  %12 = trunc i64 %11 to i32
  %shl6 = shl i32 %12, 2
  %add7 = add nsw i32 %shl6, %cand_mv_x
  %13 = load i16** %arrayidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds i16* %13, i64 %indvars.iv357
  %14 = load i16* %arrayidx9, align 2, !tbaa !5
  %conv = zext i16 %14 to i32
  %15 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call = call zeroext i16 %15(i16** %1, i32 %add1, i32 %add7, i32 %3, i32 %2) #5
  %conv10 = zext i16 %call to i32
  %sub = sub nsw i32 %conv, %conv10
  store i32 %sub, i32* %arraydecay, align 16, !tbaa !4
  %16 = or i64 %indvars.iv357, 1
  %arrayidx13 = getelementptr inbounds i16* %13, i64 %16
  %17 = load i16* %arrayidx13, align 2, !tbaa !5
  %conv14 = zext i16 %17 to i32
  %18 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %add15 = add nsw i32 %add7, 4
  %call16 = call zeroext i16 %18(i16** %1, i32 %add1, i32 %add15, i32 %3, i32 %2) #5
  %conv17 = zext i16 %call16 to i32
  %sub18 = sub nsw i32 %conv14, %conv17
  store i32 %sub18, i32* %incdec.ptr, align 4, !tbaa !4
  %19 = or i64 %indvars.iv357, 2
  %arrayidx22 = getelementptr inbounds i16* %13, i64 %19
  %20 = load i16* %arrayidx22, align 2, !tbaa !5
  %conv23 = zext i16 %20 to i32
  %21 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %add24 = add nsw i32 %add7, 8
  %call25 = call zeroext i16 %21(i16** %1, i32 %add1, i32 %add24, i32 %3, i32 %2) #5
  %conv26 = zext i16 %call25 to i32
  %sub27 = sub nsw i32 %conv23, %conv26
  store i32 %sub27, i32* %incdec.ptr19, align 8, !tbaa !4
  %22 = or i64 %indvars.iv357, 3
  %arrayidx31 = getelementptr inbounds i16* %13, i64 %22
  %23 = load i16* %arrayidx31, align 2, !tbaa !5
  %conv32 = zext i16 %23 to i32
  %24 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %add33 = add nsw i32 %add7, 12
  %call34 = call zeroext i16 %24(i16** %1, i32 %add1, i32 %add33, i32 %3, i32 %2) #5
  %conv35 = zext i16 %call34 to i32
  %sub36 = sub nsw i32 %conv32, %conv35
  store i32 %sub36, i32* %incdec.ptr28, align 4, !tbaa !4
  %25 = load i16** %arrayidx40, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds i16* %25, i64 %indvars.iv357
  %26 = load i16* %arrayidx43, align 2, !tbaa !5
  %conv44 = zext i16 %26 to i32
  %27 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call45 = call zeroext i16 %27(i16** %1, i32 %add41, i32 %add7, i32 %3, i32 %2) #5
  %conv46 = zext i16 %call45 to i32
  %sub47 = sub nsw i32 %conv44, %conv46
  store i32 %sub47, i32* %incdec.ptr37, align 16, !tbaa !4
  %arrayidx51 = getelementptr inbounds i16* %25, i64 %16
  %28 = load i16* %arrayidx51, align 2, !tbaa !5
  %conv52 = zext i16 %28 to i32
  %29 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call54 = call zeroext i16 %29(i16** %1, i32 %add41, i32 %add15, i32 %3, i32 %2) #5
  %conv55 = zext i16 %call54 to i32
  %sub56 = sub nsw i32 %conv52, %conv55
  store i32 %sub56, i32* %incdec.ptr48, align 4, !tbaa !4
  %arrayidx60 = getelementptr inbounds i16* %25, i64 %19
  %30 = load i16* %arrayidx60, align 2, !tbaa !5
  %conv61 = zext i16 %30 to i32
  %31 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call63 = call zeroext i16 %31(i16** %1, i32 %add41, i32 %add24, i32 %3, i32 %2) #5
  %conv64 = zext i16 %call63 to i32
  %sub65 = sub nsw i32 %conv61, %conv64
  store i32 %sub65, i32* %incdec.ptr57, align 8, !tbaa !4
  %arrayidx69 = getelementptr inbounds i16* %25, i64 %22
  %32 = load i16* %arrayidx69, align 2, !tbaa !5
  %conv70 = zext i16 %32 to i32
  %33 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call72 = call zeroext i16 %33(i16** %1, i32 %add41, i32 %add33, i32 %3, i32 %2) #5
  %conv73 = zext i16 %call72 to i32
  %sub74 = sub nsw i32 %conv70, %conv73
  store i32 %sub74, i32* %incdec.ptr66, align 4, !tbaa !4
  %34 = load i16** %arrayidx78, align 8, !tbaa !3
  %arrayidx81 = getelementptr inbounds i16* %34, i64 %indvars.iv357
  %35 = load i16* %arrayidx81, align 2, !tbaa !5
  %conv82 = zext i16 %35 to i32
  %36 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call83 = call zeroext i16 %36(i16** %1, i32 %add79, i32 %add7, i32 %3, i32 %2) #5
  %conv84 = zext i16 %call83 to i32
  %sub85 = sub nsw i32 %conv82, %conv84
  store i32 %sub85, i32* %incdec.ptr75, align 16, !tbaa !4
  %arrayidx89 = getelementptr inbounds i16* %34, i64 %16
  %37 = load i16* %arrayidx89, align 2, !tbaa !5
  %conv90 = zext i16 %37 to i32
  %38 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call92 = call zeroext i16 %38(i16** %1, i32 %add79, i32 %add15, i32 %3, i32 %2) #5
  %conv93 = zext i16 %call92 to i32
  %sub94 = sub nsw i32 %conv90, %conv93
  store i32 %sub94, i32* %incdec.ptr86, align 4, !tbaa !4
  %arrayidx98 = getelementptr inbounds i16* %34, i64 %19
  %39 = load i16* %arrayidx98, align 2, !tbaa !5
  %conv99 = zext i16 %39 to i32
  %40 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call101 = call zeroext i16 %40(i16** %1, i32 %add79, i32 %add24, i32 %3, i32 %2) #5
  %conv102 = zext i16 %call101 to i32
  %sub103 = sub nsw i32 %conv99, %conv102
  store i32 %sub103, i32* %incdec.ptr95, align 8, !tbaa !4
  %arrayidx107 = getelementptr inbounds i16* %34, i64 %22
  %41 = load i16* %arrayidx107, align 2, !tbaa !5
  %conv108 = zext i16 %41 to i32
  %42 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call110 = call zeroext i16 %42(i16** %1, i32 %add79, i32 %add33, i32 %3, i32 %2) #5
  %conv111 = zext i16 %call110 to i32
  %sub112 = sub nsw i32 %conv108, %conv111
  store i32 %sub112, i32* %incdec.ptr104, align 4, !tbaa !4
  %43 = load i16** %arrayidx116, align 8, !tbaa !3
  %arrayidx119 = getelementptr inbounds i16* %43, i64 %indvars.iv357
  %44 = load i16* %arrayidx119, align 2, !tbaa !5
  %conv120 = zext i16 %44 to i32
  %45 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call121 = call zeroext i16 %45(i16** %1, i32 %add117, i32 %add7, i32 %3, i32 %2) #5
  %conv122 = zext i16 %call121 to i32
  %sub123 = sub nsw i32 %conv120, %conv122
  store i32 %sub123, i32* %incdec.ptr113, align 16, !tbaa !4
  %arrayidx127 = getelementptr inbounds i16* %43, i64 %16
  %46 = load i16* %arrayidx127, align 2, !tbaa !5
  %conv128 = zext i16 %46 to i32
  %47 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call130 = call zeroext i16 %47(i16** %1, i32 %add117, i32 %add15, i32 %3, i32 %2) #5
  %conv131 = zext i16 %call130 to i32
  %sub132 = sub nsw i32 %conv128, %conv131
  store i32 %sub132, i32* %incdec.ptr124, align 4, !tbaa !4
  %arrayidx136 = getelementptr inbounds i16* %43, i64 %19
  %48 = load i16* %arrayidx136, align 2, !tbaa !5
  %conv137 = zext i16 %48 to i32
  %49 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call139 = call zeroext i16 %49(i16** %1, i32 %add117, i32 %add24, i32 %3, i32 %2) #5
  %conv140 = zext i16 %call139 to i32
  %sub141 = sub nsw i32 %conv137, %conv140
  store i32 %sub141, i32* %incdec.ptr133, align 8, !tbaa !4
  %arrayidx145 = getelementptr inbounds i16* %43, i64 %22
  %50 = load i16* %arrayidx145, align 2, !tbaa !5
  %conv146 = zext i16 %50 to i32
  %51 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %call148 = call zeroext i16 %51(i16** %1, i32 %add117, i32 %add33, i32 %3, i32 %2) #5
  %conv149 = zext i16 %call148 to i32
  %sub150 = sub nsw i32 %conv146, %conv149
  store i32 %sub150, i32* %incdec.ptr142, align 4, !tbaa !4
  br i1 %tobool151, label %if.then, label %for.inc179

if.then:                                          ; preds = %for.body4
  %52 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %hadamard = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 6
  %53 = load i32* %hadamard, align 4, !tbaa !4
  %call153 = call i32 @SATD(i32* %arraydecay, i32 %53) #5
  %add154 = add nsw i32 %call153, %mcost.1343
  %cmp155 = icmp sgt i32 %add154, %min_mcost
  br i1 %cmp155, label %for.end184, label %for.inc179

for.inc179:                                       ; preds = %for.body4, %if.then
  %mcost.2 = phi i32 [ %add154, %if.then ], [ %mcost.1343, %for.body4 ]
  %indvars.iv.next358 = add i64 %indvars.iv357, 4
  %54 = trunc i64 %indvars.iv.next358 to i32
  %cmp3 = icmp slt i32 %54, %blocksize_x
  br i1 %cmp3, label %for.body4, label %for.inc182

for.inc182:                                       ; preds = %for.inc179, %for.body
  %mcost.3 = phi i32 [ %mcost.0348, %for.body ], [ %mcost.2, %for.inc179 ]
  %indvars.iv.next = add i64 %indvars.iv, 4
  %55 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %55, %blocksize_y
  br i1 %cmp, label %for.body, label %for.end184

for.end184:                                       ; preds = %if.then, %for.inc182, %entry
  %mcost.0.lcssa = phi i32 [ %Mvmcost, %entry ], [ %mcost.3, %for.inc182 ], [ %add154, %if.then ]
  call void @llvm.lifetime.end(i64 64, i8* %0) #3
  ret i32 %mcost.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @SATD(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @FastSubPelBlockMotionSearch(i16** nocapture %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* nocapture %mv_x, i16* nocapture %mv_y, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, double %lambda, i32 %useABT) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !4
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !4
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !4
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem341 = shl i32 %2, 1
  %5 = and i32 %rem341, 2
  %6 = add i32 %5, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %idxprom5 = sext i16 %ref to i64
  %add = add nsw i32 %cond4, %list
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom6
  %7 = load %struct.storable_picture*** %arrayidx7, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds %struct.storable_picture** %7, i64 %idxprom5
  %8 = load %struct.storable_picture** %arrayidx8, align 8, !tbaa !3
  %mul = fmul double %lambda, 6.553600e+04
  %add9 = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add9 to i32
  %idxprom10 = sext i32 %blocktype to i64
  %9 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 20, i64 %idxprom10, i64 0
  %10 = load i32* %arrayidx12, align 4, !tbaa !4
  %arrayidx16 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 20, i64 %idxprom10, i64 1
  %11 = load i32* %arrayidx16, align 4, !tbaa !4
  %shl = shl i32 %pic_pix_x, 2
  %shl17 = shl i32 %pic_pix_y, 2
  %size_x = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 18
  %12 = load i32* %size_x, align 4, !tbaa !4
  %size_y = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 19
  %13 = load i32* %size_y, align 4, !tbaa !4
  %sub20 = sub nsw i32 %13, %11
  %add21 = shl i32 %sub20, 2
  %14 = load i16* %mv_x, align 2, !tbaa !5
  %shl24 = shl i16 %14, 2
  store i16 %shl24, i16* %mv_x, align 2, !tbaa !5
  %15 = load i16* %mv_y, align 2, !tbaa !5
  %shl27 = shl i16 %15, 2
  store i16 %shl27, i16* %mv_y, align 2, !tbaa !5
  %16 = load i16* %mv_x, align 2, !tbaa !5
  %conv29 = sext i16 %16 to i32
  %add30 = add nsw i32 %conv29, %shl
  %cmp = icmp sgt i32 %add30, 1
  br i1 %cmp, label %land.lhs.true32, label %if.else

land.lhs.true32:                                  ; preds = %cond.end
  %sub = sub nsw i32 %12, %10
  %add18 = shl i32 %sub, 2
  %sub35339 = or i32 %add18, 2
  %cmp36 = icmp slt i32 %add30, %sub35339
  br i1 %cmp36, label %land.lhs.true38, label %if.else

land.lhs.true38:                                  ; preds = %land.lhs.true32
  %conv39 = sext i16 %shl27 to i32
  %add40 = add nsw i32 %conv39, %shl17
  %cmp41 = icmp sgt i32 %add40, 1
  br i1 %cmp41, label %land.lhs.true43, label %if.else

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %sub46340 = or i32 %add21, 2
  %cmp47 = icmp slt i32 %add40, %sub46340
  br i1 %cmp47, label %if.end, label %if.else

if.else:                                          ; preds = %land.lhs.true43, %land.lhs.true38, %land.lhs.true32, %cond.end
  %conv54.pre = sext i16 %shl27 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true43, %if.else
  %conv54.pre-phi = phi i32 [ %conv39, %land.lhs.true43 ], [ %conv54.pre, %if.else ]
  %storemerge = phi i16 (i16**, i32, i32, i32, i32)* [ @FastPelY_14, %land.lhs.true43 ], [ @UMVPelY_14, %if.else ]
  store i16 (i16**, i32, i32, i32, i32)* %storemerge, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !3
  %conv49 = sext i16 %pred_mv_x to i32
  %sub51 = sub nsw i32 %conv49, %conv29
  %rem52 = srem i32 %sub51, 4
  %conv53 = sext i16 %pred_mv_y to i32
  %sub55 = sub nsw i32 %conv53, %conv54.pre-phi
  %rem56 = srem i32 %sub55, 4
  %17 = load i8*** @SearchState, align 8, !tbaa !3
  %18 = load i8** %17, align 8, !tbaa !3
  tail call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 49, i32 1, i1 false)
  %19 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %hadamard = getelementptr inbounds %struct.InputParameters* %19, i64 0, i32 6
  %20 = load i32* %hadamard, align 4, !tbaa !4
  %tobool70 = icmp eq i32 %20, 0
  br i1 %tobool70, label %if.else94, label %if.then71

if.then71:                                        ; preds = %if.end
  %21 = load i16* %mv_x, align 2, !tbaa !5
  %conv72 = sext i16 %21 to i32
  %22 = load i16* %mv_y, align 2, !tbaa !5
  %conv73 = sext i16 %22 to i32
  %sub76 = sub nsw i32 %conv72, %conv49
  %idxprom77 = sext i32 %sub76 to i64
  %23 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx78 = getelementptr inbounds i32* %23, i64 %idxprom77
  %24 = load i32* %arrayidx78, align 4, !tbaa !4
  %sub81 = sub nsw i32 %conv73, %conv53
  %idxprom82 = sext i32 %sub81 to i64
  %arrayidx83 = getelementptr inbounds i32* %23, i64 %idxprom82
  %25 = load i32* %arrayidx83, align 4, !tbaa !4
  %add84 = add nsw i32 %25, %24
  %mul85 = mul nsw i32 %add84, %conv
  %shr = ashr i32 %mul85, 16
  %call = tail call i32 @AddUpSADQuarter(i32 %pic_pix_x, i32 %pic_pix_y, i32 %10, i32 %11, i32 %conv72, i32 %conv73, %struct.storable_picture* %8, i16** %orig_pic, i32 %shr, i32 %min_mcost, i32 %useABT) #4
  %26 = load i8*** @SearchState, align 8, !tbaa !3
  %arrayidx88 = getelementptr inbounds i8** %26, i64 3
  %27 = load i8** %arrayidx88, align 8, !tbaa !3
  %arrayidx89 = getelementptr inbounds i8* %27, i64 3
  store i8 1, i8* %arrayidx89, align 1, !tbaa !1
  %cmp90 = icmp slt i32 %call, %min_mcost
  %conv72. = select i1 %cmp90, i32 %conv72, i32 0
  %conv73. = select i1 %cmp90, i32 %conv73, i32 0
  %call.min_mcost = select i1 %cmp90, i32 %call, i32 %min_mcost
  br label %if.end101

if.else94:                                        ; preds = %if.end
  %28 = load i8*** @SearchState, align 8, !tbaa !3
  %arrayidx97 = getelementptr inbounds i8** %28, i64 3
  %29 = load i8** %arrayidx97, align 8, !tbaa !3
  %arrayidx98 = getelementptr inbounds i8* %29, i64 3
  store i8 1, i8* %arrayidx98, align 1, !tbaa !1
  %30 = load i16* %mv_x, align 2, !tbaa !5
  %conv99 = sext i16 %30 to i32
  %31 = load i16* %mv_y, align 2, !tbaa !5
  %conv100 = sext i16 %31 to i32
  br label %if.end101

if.end101:                                        ; preds = %if.then71, %if.else94
  %currmv_x.0 = phi i32 [ %conv99, %if.else94 ], [ %conv72., %if.then71 ]
  %currmv_y.0 = phi i32 [ %conv100, %if.else94 ], [ %conv73., %if.then71 ]
  %min_mcost.addr.0 = phi i32 [ %min_mcost, %if.else94 ], [ %call.min_mcost, %if.then71 ]
  %32 = or i32 %rem56, %rem52
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %for.cond144.preheader, label %if.then106

if.then106:                                       ; preds = %if.end101
  %34 = load i16* %mv_x, align 2, !tbaa !5
  %conv107 = sext i16 %34 to i32
  %add108 = add nsw i32 %conv107, %rem52
  %35 = load i16* %mv_y, align 2, !tbaa !5
  %conv109 = sext i16 %35 to i32
  %add110 = add nsw i32 %conv109, %rem56
  %sub113 = sub nsw i32 %add108, %conv49
  %idxprom114 = sext i32 %sub113 to i64
  %36 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx115 = getelementptr inbounds i32* %36, i64 %idxprom114
  %37 = load i32* %arrayidx115, align 4, !tbaa !4
  %sub118 = sub nsw i32 %add110, %conv53
  %idxprom119 = sext i32 %sub118 to i64
  %arrayidx120 = getelementptr inbounds i32* %36, i64 %idxprom119
  %38 = load i32* %arrayidx120, align 4, !tbaa !4
  %add121 = add nsw i32 %38, %37
  %mul122 = mul nsw i32 %add121, %conv
  %shr123 = ashr i32 %mul122, 16
  %call124 = tail call i32 @AddUpSADQuarter(i32 %pic_pix_x, i32 %pic_pix_y, i32 %10, i32 %11, i32 %add108, i32 %add110, %struct.storable_picture* %8, i16** %orig_pic, i32 %shr123, i32 %min_mcost.addr.0, i32 %useABT) #4
  %39 = load i16* %mv_x, align 2, !tbaa !5
  %conv125 = sext i16 %39 to i32
  %sub126 = add i32 %add108, 3
  %add127 = sub i32 %sub126, %conv125
  %idxprom128 = sext i32 %add127 to i64
  %40 = load i16* %mv_y, align 2, !tbaa !5
  %conv129 = sext i16 %40 to i32
  %sub130 = add i32 %add110, 3
  %add131 = sub i32 %sub130, %conv129
  %idxprom132 = sext i32 %add131 to i64
  %41 = load i8*** @SearchState, align 8, !tbaa !3
  %arrayidx133 = getelementptr inbounds i8** %41, i64 %idxprom132
  %42 = load i8** %arrayidx133, align 8, !tbaa !3
  %arrayidx134 = getelementptr inbounds i8* %42, i64 %idxprom128
  store i8 1, i8* %arrayidx134, align 1, !tbaa !1
  %cmp135 = icmp slt i32 %call124, %min_mcost.addr.0
  %add108.currmv_x.0 = select i1 %cmp135, i32 %add108, i32 %currmv_x.0
  %add110.currmv_y.0 = select i1 %cmp135, i32 %add110, i32 %currmv_y.0
  %call124.min_mcost.addr.0 = select i1 %cmp135, i32 %call124, i32 %min_mcost.addr.0
  br label %for.cond144.preheader

for.cond144.preheader:                            ; preds = %if.then106, %if.end101, %for.end
  %min_mcost.addr.2350 = phi i32 [ %min_mcost.addr.4, %for.end ], [ %call124.min_mcost.addr.0, %if.then106 ], [ %min_mcost.addr.0, %if.end101 ]
  %currmv_x.2349 = phi i32 [ %currmv_x.4, %for.end ], [ %add108.currmv_x.0, %if.then106 ], [ %currmv_x.0, %if.end101 ]
  %iYMinNow.0348 = phi i32 [ %currmv_y.4, %for.end ], [ %add110.currmv_y.0, %if.then106 ], [ %currmv_y.0, %if.end101 ]
  %i.0347 = phi i32 [ %inc212, %for.end ], [ 0, %if.then106 ], [ 0, %if.end101 ]
  br label %for.body147

for.body147:                                      ; preds = %for.inc, %for.cond144.preheader
  %indvars.iv = phi i64 [ 0, %for.cond144.preheader ], [ %indvars.iv.next, %for.inc ]
  %min_mcost.addr.3346 = phi i32 [ %min_mcost.addr.2350, %for.cond144.preheader ], [ %min_mcost.addr.4, %for.inc ]
  %abort_search.0345 = phi i32 [ 1, %for.cond144.preheader ], [ %abort_search.1, %for.inc ]
  %currmv_y.3344 = phi i32 [ %iYMinNow.0348, %for.cond144.preheader ], [ %currmv_y.4, %for.inc ]
  %currmv_x.3343 = phi i32 [ %currmv_x.2349, %for.cond144.preheader ], [ %currmv_x.4, %for.inc ]
  %arrayidx149 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %indvars.iv
  %43 = load i32* %arrayidx149, align 4, !tbaa !4
  %add150 = add nsw i32 %43, %currmv_x.2349
  %arrayidx152 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %indvars.iv
  %44 = load i32* %arrayidx152, align 4, !tbaa !4
  %add153 = add nsw i32 %44, %iYMinNow.0348
  %45 = load i16* %mv_x, align 2, !tbaa !5
  %conv154 = sext i16 %45 to i32
  %sub155 = sub nsw i32 %add150, %conv154
  %ispos = icmp sgt i32 %sub155, -1
  %neg = sub i32 0, %sub155
  %46 = select i1 %ispos, i32 %sub155, i32 %neg
  %cmp157 = icmp slt i32 %46, 4
  br i1 %cmp157, label %land.lhs.true159, label %for.inc

land.lhs.true159:                                 ; preds = %for.body147
  %47 = load i16* %mv_y, align 2, !tbaa !5
  %conv160 = sext i16 %47 to i32
  %sub161 = sub nsw i32 %add153, %conv160
  %ispos337 = icmp sgt i32 %sub161, -1
  %neg338 = sub i32 0, %sub161
  %48 = select i1 %ispos337, i32 %sub161, i32 %neg338
  %cmp163 = icmp slt i32 %48, 4
  br i1 %cmp163, label %if.then165, label %for.inc

if.then165:                                       ; preds = %land.lhs.true159
  %add168 = add nsw i32 %sub155, 3
  %idxprom169 = sext i32 %add168 to i64
  %add172 = add nsw i32 %sub161, 3
  %idxprom173 = sext i32 %add172 to i64
  %49 = load i8*** @SearchState, align 8, !tbaa !3
  %arrayidx174 = getelementptr inbounds i8** %49, i64 %idxprom173
  %50 = load i8** %arrayidx174, align 8, !tbaa !3
  %arrayidx175 = getelementptr inbounds i8* %50, i64 %idxprom169
  %51 = load i8* %arrayidx175, align 1, !tbaa !1
  %tobool176 = icmp eq i8 %51, 0
  br i1 %tobool176, label %if.then177, label %for.inc

if.then177:                                       ; preds = %if.then165
  %sub180 = sub nsw i32 %add150, %conv49
  %idxprom181 = sext i32 %sub180 to i64
  %52 = load i32** @mvbits, align 8, !tbaa !3
  %arrayidx182 = getelementptr inbounds i32* %52, i64 %idxprom181
  %53 = load i32* %arrayidx182, align 4, !tbaa !4
  %sub185 = sub nsw i32 %add153, %conv53
  %idxprom186 = sext i32 %sub185 to i64
  %arrayidx187 = getelementptr inbounds i32* %52, i64 %idxprom186
  %54 = load i32* %arrayidx187, align 4, !tbaa !4
  %add188 = add nsw i32 %54, %53
  %mul189 = mul nsw i32 %add188, %conv
  %shr190 = ashr i32 %mul189, 16
  %call191 = tail call i32 @AddUpSADQuarter(i32 %pic_pix_x, i32 %pic_pix_y, i32 %10, i32 %11, i32 %add150, i32 %add153, %struct.storable_picture* %8, i16** %orig_pic, i32 %shr190, i32 %min_mcost.addr.3346, i32 %useABT) #4
  %55 = load i16* %mv_x, align 2, !tbaa !5
  %conv192 = sext i16 %55 to i32
  %sub193 = add i32 %add150, 3
  %add194 = sub i32 %sub193, %conv192
  %idxprom195 = sext i32 %add194 to i64
  %56 = load i16* %mv_y, align 2, !tbaa !5
  %conv196 = sext i16 %56 to i32
  %sub197 = add i32 %add153, 3
  %add198 = sub i32 %sub197, %conv196
  %idxprom199 = sext i32 %add198 to i64
  %57 = load i8*** @SearchState, align 8, !tbaa !3
  %arrayidx200 = getelementptr inbounds i8** %57, i64 %idxprom199
  %58 = load i8** %arrayidx200, align 8, !tbaa !3
  %arrayidx201 = getelementptr inbounds i8* %58, i64 %idxprom195
  store i8 1, i8* %arrayidx201, align 1, !tbaa !1
  %cmp202 = icmp slt i32 %call191, %min_mcost.addr.3346
  %add150.currmv_x.3 = select i1 %cmp202, i32 %add150, i32 %currmv_x.3343
  %add153.currmv_y.3 = select i1 %cmp202, i32 %add153, i32 %currmv_y.3344
  %.abort_search.0 = select i1 %cmp202, i32 0, i32 %abort_search.0345
  %call191.min_mcost.addr.3 = select i1 %cmp202, i32 %call191, i32 %min_mcost.addr.3346
  br label %for.inc

for.inc:                                          ; preds = %if.then177, %if.then165, %for.body147, %land.lhs.true159
  %currmv_x.4 = phi i32 [ %currmv_x.3343, %if.then165 ], [ %currmv_x.3343, %land.lhs.true159 ], [ %currmv_x.3343, %for.body147 ], [ %add150.currmv_x.3, %if.then177 ]
  %currmv_y.4 = phi i32 [ %currmv_y.3344, %if.then165 ], [ %currmv_y.3344, %land.lhs.true159 ], [ %currmv_y.3344, %for.body147 ], [ %add153.currmv_y.3, %if.then177 ]
  %abort_search.1 = phi i32 [ %abort_search.0345, %if.then165 ], [ %abort_search.0345, %land.lhs.true159 ], [ %abort_search.0345, %for.body147 ], [ %.abort_search.0, %if.then177 ]
  %min_mcost.addr.4 = phi i32 [ %min_mcost.addr.3346, %if.then165 ], [ %min_mcost.addr.3346, %land.lhs.true159 ], [ %min_mcost.addr.3346, %for.body147 ], [ %call191.min_mcost.addr.3, %if.then177 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end, label %for.body147

for.end:                                          ; preds = %for.inc
  %tobool208 = icmp eq i32 %abort_search.1, 0
  %inc212 = add nsw i32 %i.0347, 1
  %cmp142 = icmp slt i32 %inc212, 7
  %or.cond = and i1 %tobool208, %cmp142
  br i1 %or.cond, label %for.cond144.preheader, label %for.end213

for.end213:                                       ; preds = %for.end
  %conv214 = trunc i32 %currmv_x.4 to i16
  store i16 %conv214, i16* %mv_x, align 2, !tbaa !5
  %conv215 = trunc i32 %currmv_y.4 to i16
  store i16 %conv215, i16* %mv_y, align 2, !tbaa !5
  ret i32 %min_mcost.addr.4
}

; Function Attrs: optsize
declare zeroext i16 @FastPelY_14(i16**, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare zeroext i16 @UMVPelY_14(i16**, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @decide_intrabk_SAD() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end34, label %if.then

if.then:                                          ; preds = %entry
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %2 = load i32* %pix_x, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %2, 0
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %3 = load i32* %pix_y, align 4, !tbaa !4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else8

land.lhs.true:                                    ; preds = %if.then
  br i1 %cmp2, label %if.then3, label %if.then6

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, i32* @flag_intra_SAD, align 4, !tbaa !4
  br label %if.end34

if.then6:                                         ; preds = %land.lhs.true
  %4 = load i32** @flag_intra, align 8, !tbaa !3
  %5 = load i32* %4, align 4, !tbaa !4
  store i32 %5, i32* @flag_intra_SAD, align 4, !tbaa !4
  br label %if.end34

if.else8:                                         ; preds = %if.then
  %shr13 = ashr i32 %2, 4
  br i1 %cmp2, label %if.then11, label %if.else16

if.then11:                                        ; preds = %if.else8
  %sub = add nsw i32 %shr13, -1
  %idxprom14 = sext i32 %sub to i64
  %6 = load i32** @flag_intra, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %idxprom14
  %7 = load i32* %arrayidx15, align 4, !tbaa !4
  store i32 %7, i32* @flag_intra_SAD, align 4, !tbaa !4
  br label %if.end34

if.else16:                                        ; preds = %if.else8
  %idxprom19 = sext i32 %shr13 to i64
  %8 = load i32** @flag_intra, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds i32* %8, i64 %idxprom19
  %9 = load i32* %arrayidx20, align 4, !tbaa !4
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %if.else16
  %sub23 = add nsw i32 %shr13, -1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds i32* %8, i64 %idxprom24
  %10 = load i32* %arrayidx25, align 4, !tbaa !4
  %tobool26 = icmp eq i32 %10, 0
  br i1 %tobool26, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %add = add nsw i32 %shr13, 1
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds i32* %8, i64 %idxprom29
  %11 = load i32* %arrayidx30, align 4, !tbaa !4
  %tobool31 = icmp ne i32 %11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false, %if.else16, %lor.rhs
  %12 = phi i1 [ true, %lor.lhs.false ], [ true, %if.else16 ], [ %tobool31, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  store i32 %lor.ext, i32* @flag_intra_SAD, align 4, !tbaa !4
  br label %if.end34

if.end34:                                         ; preds = %entry, %if.then3, %if.then11, %lor.end, %if.then6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @skip_intrabk_SAD(i32 %best_mode, i32 %ref_max) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0
  %1 = load i32* %number, align 4, !tbaa !4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %best_mode.off50 = add i32 %best_mode, -9
  %2 = icmp ult i32 %best_mode.off50, 2
  %cond = zext i1 %2 to i32
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %3 = load i32* %pix_x, align 4, !tbaa !4
  %shr = ashr i32 %3, 4
  %idxprom = sext i32 %shr to i64
  %4 = load i32** @flag_intra, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  store i32 %cond, i32* %arrayidx, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %5 = load i32* %type, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.end39, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %best_mode.off = add i32 %best_mode, -9
  %6 = icmp ult i32 %best_mode.off, 2
  br i1 %6, label %for.cond.preheader, label %if.end39

for.cond.preheader:                               ; preds = %land.lhs.true
  %cmp1551 = icmp sgt i32 %ref_max, 0
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %pix_x21 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %7 = load i32****** @all_mincost, align 8, !tbaa !3
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.inc36, %for.cond.preheader
  %i.055 = phi i32 [ 0, %for.cond.preheader ], [ %inc37, %for.inc36 ]
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.inc33, %for.cond8.preheader
  %j.054 = phi i32 [ 0, %for.cond8.preheader ], [ %inc34, %for.inc33 ]
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.inc30, %for.cond11.preheader
  %indvars.iv56 = phi i64 [ 1, %for.cond11.preheader ], [ %indvars.iv.next57, %for.inc30 ]
  br i1 %cmp1551, label %for.body16, label %for.inc30

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ 0, %for.cond14.preheader ]
  %8 = load i32* %pix_y, align 4, !tbaa !4
  %shr19 = ashr i32 %8, 2
  %add = add nsw i32 %shr19, %j.054
  %idxprom20 = sext i32 %add to i64
  %9 = load i32* %pix_x21, align 4, !tbaa !4
  %shr22 = ashr i32 %9, 2
  %add23 = add nsw i32 %shr22, %i.055
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32***** %7, i64 %idxprom24
  %10 = load i32***** %arrayidx25, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds i32**** %10, i64 %idxprom20
  %11 = load i32**** %arrayidx26, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds i32*** %11, i64 %indvars.iv
  %12 = load i32*** %arrayidx27, align 8, !tbaa !3
  %arrayidx28 = getelementptr inbounds i32** %12, i64 %indvars.iv56
  %13 = load i32** %arrayidx28, align 8, !tbaa !3
  store i32 0, i32* %13, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ref_max
  br i1 %exitcond, label %for.inc30, label %for.body16

for.inc30:                                        ; preds = %for.body16, %for.cond14.preheader
  %indvars.iv.next57 = add i64 %indvars.iv56, 1
  %lftr.wideiv58 = trunc i64 %indvars.iv.next57 to i32
  %exitcond59 = icmp eq i32 %lftr.wideiv58, 8
  br i1 %exitcond59, label %for.inc33, label %for.cond14.preheader

for.inc33:                                        ; preds = %for.inc30
  %inc34 = add nsw i32 %j.054, 1
  %exitcond60 = icmp eq i32 %inc34, 4
  br i1 %exitcond60, label %for.inc36, label %for.cond11.preheader

for.inc36:                                        ; preds = %for.inc33
  %inc37 = add nsw i32 %i.055, 1
  %exitcond61 = icmp eq i32 %inc37, 4
  br i1 %exitcond61, label %if.end39, label %for.cond8.preheader

if.end39:                                         ; preds = %for.inc36, %if.end, %land.lhs.true
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}