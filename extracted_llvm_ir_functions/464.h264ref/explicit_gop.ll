; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
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
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }

@input = external global %struct.InputParameters*
@gop_structure = external global %struct.GOP_DATA*
@.str1 = private unnamed_addr constant [31 x i8] c"create_pyramid:curGOPLeveldist\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"init_gop_structure: gop_structure\00", align 1
@errortext = external global [300 x i8]
@.str3 = private unnamed_addr constant [84 x i8] c"Slice Type invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str5 = private unnamed_addr constant [71 x i8] c"Invalid Frame Order value. Frame position needs to be in [0,%d] range.\00", align 1
@.str6 = private unnamed_addr constant [72 x i8] c"Frame Order value %d in frame %d already used for enhancement frame %d.\00", align 1
@.str7 = private unnamed_addr constant [83 x i8] c"Slice Type needs to be followed by Display Order. Please check configuration file.\00", align 1
@.str8 = private unnamed_addr constant [87 x i8] c"Reference_IDC invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str9 = private unnamed_addr constant [51 x i8] c"Invalid QP value. Please check configuration file.\00", align 1
@.str10 = private unnamed_addr constant [75 x i8] c"Reference_IDC needs to be followed by QP. Please check configuration file.\00", align 1
@.str11 = private unnamed_addr constant [92 x i8] c"Total number of frames in Enhancement GOP need to be fewer or equal to FrameSkip parameter.\00", align 1
@.str12 = private unnamed_addr constant [65 x i8] c"ExplicitPyramidFormat is empty. Please check configuration file.\00", align 1
@img = external global %struct.ImageParameters*
@start_frame_no_in_this_IGOP = external global i32
@log2_max_frame_num_minus4 = external global i32
@start_tr_in_this_IGOP = external global i32
@dpb = external global %struct.decoded_picture_buffer
@.str13 = private unnamed_addr constant [35 x i8] c"poc_based_ref_management: tmp_drpm\00", align 1
@.str14 = private unnamed_addr constant [36 x i8] c"poc_based_ref_management: tmp_drpm2\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @create_pyramid() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34
  %1 = load i32* %successive_Bframe, align 4, !tbaa !3
  %div = sdiv i32 %1, 2
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 55
  %2 = load i32* %PyramidCoding, align 4, !tbaa !3
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %for.cond.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp29292 = icmp sgt i32 %1, 2
  br i1 %cmp29292, label %while.body, label %if.end37

for.cond.preheader:                               ; preds = %entry
  %cmp2277 = icmp sgt i32 %1, 0
  br i1 %cmp2277, label %for.body.lr.ph, label %if.end200

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %4 = trunc i64 %indvars.iv to i32
  %cmp3 = icmp slt i32 %4, %div
  %slice_type = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 0
  store i32 1, i32* %slice_type, align 4, !tbaa !3
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %mul = shl nsw i32 %4, 1
  %add275 = or i32 %mul, 1
  %display_no = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 1
  store i32 %add275, i32* %display_no, align 4, !tbaa !3
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 4
  store i32 0, i32* %pyramid_layer, align 4, !tbaa !3
  %reference_idc = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 2
  store i32 2, i32* %reference_idc, align 4, !tbaa !3
  br label %for.inc

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %4, %div
  %mul14 = shl nsw i32 %sub, 1
  %display_no17 = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 1
  store i32 %mul14, i32* %display_no17, align 4, !tbaa !3
  %pyramid_layer20 = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 4
  store i32 1, i32* %pyramid_layer20, align 4, !tbaa !3
  %reference_idc23 = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 2
  store i32 0, i32* %reference_idc23, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = load i32* %successive_Bframe, align 4, !tbaa !3
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp slt i32 %6, %5
  br i1 %cmp2, label %for.body, label %if.end200

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %GOPlevels.0294 = phi i32 [ %inc31, %while.body ], [ 0, %while.cond.preheader ]
  %Bframes.0293 = phi i32 [ %div30, %while.body ], [ %1, %while.cond.preheader ]
  %div30 = sdiv i32 %Bframes.0293, 2
  %inc31 = add nsw i32 %GOPlevels.0294, 1
  %cmp29 = icmp sgt i32 %Bframes.0293, 5
  br i1 %cmp29, label %while.body, label %if.end37

if.end37:                                         ; preds = %while.cond.preheader, %while.body
  %GOPlevels.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %inc31, %while.body ]
  %add32 = add nsw i32 %GOPlevels.0.lcssa, 1
  %conv = sext i32 %add32 to i64
  %mul33 = shl nsw i64 %conv, 2
  %call41 = tail call noalias i8* @malloc(i64 %mul33) #5
  %7 = bitcast i8* %call41 to i32*
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %if.then44, label %for.cond46.preheader

if.then44:                                        ; preds = %if.end37
  tail call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0)) #5
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %if.end37, %if.then44
  %8 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe47289 = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 34
  %9 = load i32* %successive_Bframe47289, align 4, !tbaa !3
  %cmp48290 = icmp sgt i32 %9, 0
  br i1 %cmp48290, label %for.body50.lr.ph, label %while.cond60.preheader

for.body50.lr.ph:                                 ; preds = %for.cond46.preheader
  %10 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  br label %for.body50

while.cond60.preheader:                           ; preds = %for.body50, %for.cond46.preheader
  %11 = phi i32 [ %9, %for.cond46.preheader ], [ %13, %for.body50 ]
  %12 = sext i32 %GOPlevels.0.lcssa to i64
  br i1 %cmp29292, label %while.body63, label %while.end72

for.body50:                                       ; preds = %for.body50.lr.ph, %for.body50
  %indvars.iv303 = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next304, %for.body50 ]
  %display_no53 = getelementptr inbounds %struct.GOP_DATA* %10, i64 %indvars.iv303, i32 1
  store i32 0, i32* %display_no53, align 4, !tbaa !3
  %slice_type56 = getelementptr inbounds %struct.GOP_DATA* %10, i64 %indvars.iv303, i32 0
  store i32 1, i32* %slice_type56, align 4, !tbaa !3
  %indvars.iv.next304 = add i64 %indvars.iv303, 1
  %13 = load i32* %successive_Bframe47289, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv.next304 to i32
  %cmp48 = icmp slt i32 %14, %13
  br i1 %cmp48, label %for.body50, label %while.cond60.preheader

while.body63:                                     ; preds = %while.cond60.preheader, %while.body63
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %while.body63 ], [ %12, %while.cond60.preheader ]
  %prvlevelrefs.0288 = phi i32 [ %div64, %while.body63 ], [ %1, %while.cond60.preheader ]
  %div64 = sdiv i32 %prvlevelrefs.0288, 2
  %rem = srem i32 %div64, 2
  %add68 = add nsw i32 %rem, %div64
  %15 = trunc i64 %indvars.iv301 to i32
  %sub69 = sub nsw i32 %GOPlevels.0.lcssa, %15
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds i32* %7, i64 %idxprom70
  store i32 %add68, i32* %arrayidx71, align 4, !tbaa !3
  %indvars.iv.next302 = add i64 %indvars.iv301, -1
  %cmp61 = icmp sgt i32 %prvlevelrefs.0288, 5
  br i1 %cmp61, label %while.body63, label %while.end72

while.end72:                                      ; preds = %while.cond60.preheader, %while.body63
  %16 = phi i32 [ %div64, %while.body63 ], [ %1, %while.cond60.preheader ]
  %rem74 = srem i32 %16, 2
  %add75 = add nsw i32 %rem74, %16
  %arrayidx77 = getelementptr inbounds i32* %7, i64 %12
  store i32 %add75, i32* %arrayidx77, align 4, !tbaa !3
  %cmp80284 = icmp sgt i32 %16, 0
  br i1 %cmp80284, label %for.body82.lr.ph, label %for.end91

for.body82.lr.ph:                                 ; preds = %while.end72
  %17 = load i32* %7, align 4, !tbaa !3
  %sub88 = add nsw i32 %17, -1
  br label %for.body82

for.body82:                                       ; preds = %for.body82.for.body82_crit_edge, %for.body82.lr.ph
  %j.0285 = phi i32 [ 1, %for.body82.lr.ph ], [ %phitmp, %for.body82.for.body82_crit_edge ]
  %mul85 = mul nsw i32 %17, %j.0285
  %sub86 = add nsw i32 %mul85, -1
  %18 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  tail call void @gop_pyramid(i32 %GOPlevels.0.lcssa, i32 %sub86, i32 %sub88, %struct.GOP_DATA* %18) #6
  %cmp80 = icmp slt i32 %j.0285, %16
  br i1 %cmp80, label %for.body82.for.body82_crit_edge, label %for.cond78.for.end91_crit_edge

for.body82.for.body82_crit_edge:                  ; preds = %for.body82
  %phitmp = add i32 %j.0285, 1
  br label %for.body82

for.cond78.for.end91_crit_edge:                   ; preds = %for.body82
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe92.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 34
  %.pre306 = load i32* %successive_Bframe92.phi.trans.insert, align 4, !tbaa !3
  br label %for.end91

for.end91:                                        ; preds = %for.cond78.for.end91_crit_edge, %while.end72
  %19 = phi i32 [ %.pre306, %for.cond78.for.end91_crit_edge ], [ %11, %while.end72 ]
  %cmp94282 = icmp sgt i32 %19, 0
  br i1 %cmp94282, label %for.cond97.preheader.lr.ph, label %if.end200

for.cond97.preheader.lr.ph:                       ; preds = %for.end91
  %20 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  br label %for.cond97.preheader

for.cond97.preheader:                             ; preds = %for.cond97.preheader.lr.ph, %for.inc197
  %indvars.iv299 = phi i32 [ %19, %for.cond97.preheader.lr.ph ], [ %indvars.iv.next300, %for.inc197 ]
  %cmp98279 = icmp sgt i32 %indvars.iv299, 1
  br i1 %cmp98279, label %for.body100.lr.ph, label %for.inc197

for.body100.lr.ph:                                ; preds = %for.cond97.preheader
  %pyramid_layer107.phi.trans.insert = getelementptr inbounds %struct.GOP_DATA* %20, i64 0, i32 4
  %.pre305 = load i32* %pyramid_layer107.phi.trans.insert, align 4, !tbaa !3
  br label %for.body100

for.body100:                                      ; preds = %for.inc194, %for.body100.lr.ph
  %21 = phi i32 [ %.pre305, %for.body100.lr.ph ], [ %35, %for.inc194 ]
  %indvars.iv296 = phi i64 [ 1, %for.body100.lr.ph ], [ %indvars.iv.next297, %for.inc194 ]
  %pyramid_layer103 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 4
  %22 = load i32* %pyramid_layer103, align 4, !tbaa !3
  %23 = add nsw i64 %indvars.iv296, -1
  %pyramid_layer107 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 4
  %cmp108 = icmp sgt i32 %22, %21
  br i1 %cmp108, label %if.then110, label %for.inc194

if.then110:                                       ; preds = %for.body100
  %display_no114 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 1
  %24 = load i32* %display_no114, align 4, !tbaa !3
  %display_no117 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 1
  %25 = load i32* %display_no117, align 4, !tbaa !3
  store i32 %25, i32* %display_no114, align 4, !tbaa !3
  store i32 %24, i32* %display_no117, align 4, !tbaa !3
  %26 = load i32* %pyramid_layer107, align 4, !tbaa !3
  store i32 %22, i32* %pyramid_layer107, align 4, !tbaa !3
  store i32 %26, i32* %pyramid_layer103, align 4, !tbaa !3
  %reference_idc142 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 2
  %27 = load i32* %reference_idc142, align 4, !tbaa !3
  %reference_idc145 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 2
  %28 = load i32* %reference_idc145, align 4, !tbaa !3
  store i32 %28, i32* %reference_idc142, align 4, !tbaa !3
  store i32 %27, i32* %reference_idc145, align 4, !tbaa !3
  %slice_type156 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 0
  %29 = load i32* %slice_type156, align 4, !tbaa !3
  %slice_type159 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 0
  %30 = load i32* %slice_type159, align 4, !tbaa !3
  store i32 %30, i32* %slice_type156, align 4, !tbaa !3
  store i32 %29, i32* %slice_type159, align 4, !tbaa !3
  %slice_qp = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 3
  %31 = load i32* %slice_qp, align 4, !tbaa !3
  %slice_qp172 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 3
  %32 = load i32* %slice_qp172, align 4, !tbaa !3
  store i32 %32, i32* %slice_qp, align 4, !tbaa !3
  store i32 %31, i32* %slice_qp172, align 4, !tbaa !3
  %pyramidPocDelta = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 5
  %33 = load i32* %pyramidPocDelta, align 4, !tbaa !3
  %pyramidPocDelta185 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 5
  %34 = load i32* %pyramidPocDelta185, align 4, !tbaa !3
  store i32 %34, i32* %pyramidPocDelta, align 4, !tbaa !3
  store i32 %33, i32* %pyramidPocDelta185, align 4, !tbaa !3
  br label %for.inc194

for.inc194:                                       ; preds = %for.body100, %if.then110
  %35 = phi i32 [ %22, %for.body100 ], [ %26, %if.then110 ]
  %indvars.iv.next297 = add i64 %indvars.iv296, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next297 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv299
  br i1 %exitcond, label %for.inc197, label %for.body100

for.inc197:                                       ; preds = %for.inc194, %for.cond97.preheader
  %indvars.iv.next300 = add i32 %indvars.iv299, -1
  %cmp94 = icmp sgt i32 %indvars.iv.next300, 0
  br i1 %cmp94, label %for.cond97.preheader, label %if.end200

if.end200:                                        ; preds = %for.end91, %for.inc197, %for.cond.preheader, %for.inc
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @gop_pyramid(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure) #0 {
entry:
  %cmp74 = icmp eq i32 %level, 0
  %cmp175 = icmp sgt i32 %frm_no, -1
  br i1 %cmp74, label %if.then, label %if.else

if.then:                                          ; preds = %if.end32, %entry
  %cmp1.lcssa = phi i1 [ %cmp175, %entry ], [ %cmp1, %if.end32 ]
  %frm_no.tr.lcssa = phi i32 [ %frm_no, %entry ], [ %add39, %if.end32 ]
  br i1 %cmp1.lcssa, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.then
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34
  %1 = load i32* %successive_Bframe, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %1, %frm_no.tr.lcssa
  br i1 %cmp2, label %land.lhs.true3, label %if.end42

land.lhs.true3:                                   ; preds = %land.lhs.true
  %idxprom = sext i32 %frm_no.tr.lcssa to i64
  %display_no = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom, i32 1
  %2 = load i32* %display_no, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.end42

if.then5:                                         ; preds = %land.lhs.true3
  %slice_type = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom, i32 0
  store i32 1, i32* %slice_type, align 4, !tbaa !3
  store i32 %frm_no.tr.lcssa, i32* %display_no, align 4, !tbaa !3
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom, i32 4
  store i32 0, i32* %pyramid_layer, align 4, !tbaa !3
  %reference_idc = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom, i32 2
  store i32 0, i32* %reference_idc, align 4, !tbaa !3
  br label %if.end42

if.else:                                          ; preds = %entry, %if.end32
  %cmp179 = phi i1 [ %cmp1, %if.end32 ], [ %cmp175, %entry ]
  %frames.tr78 = phi i32 [ %div, %if.end32 ], [ %frames, %entry ]
  %frm_no.tr77 = phi i32 [ %add39, %if.end32 ], [ %frm_no, %entry ]
  %level.tr76 = phi i32 [ %sub, %if.end32 ], [ %level, %entry ]
  br i1 %cmp179, label %land.lhs.true16, label %if.end32

land.lhs.true16:                                  ; preds = %if.else
  %3 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe17 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 34
  %4 = load i32* %successive_Bframe17, align 4, !tbaa !3
  %cmp18 = icmp sgt i32 %4, %frm_no.tr77
  br i1 %cmp18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %land.lhs.true16
  %idxprom20 = sext i32 %frm_no.tr77 to i64
  %slice_type22 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom20, i32 0
  store i32 1, i32* %slice_type22, align 4, !tbaa !3
  %display_no25 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom20, i32 1
  store i32 %frm_no.tr77, i32* %display_no25, align 4, !tbaa !3
  %pyramid_layer28 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom20, i32 4
  store i32 %level.tr76, i32* %pyramid_layer28, align 4, !tbaa !3
  %reference_idc31 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom20, i32 2
  store i32 2, i32* %reference_idc31, align 4, !tbaa !3
  br label %if.end32

if.end32:                                         ; preds = %if.then19, %land.lhs.true16, %if.else
  %sub = add nsw i32 %level.tr76, -1
  %add = add nsw i32 %frames.tr78, 1
  %div = sdiv i32 %add, 2
  %sub33 = sub nsw i32 %frm_no.tr77, %div
  tail call void @gop_pyramid(i32 %sub, i32 %sub33, i32 %div, %struct.GOP_DATA* %pyramid_structure) #6
  %add39 = add nsw i32 %div, %frm_no.tr77
  %cmp = icmp eq i32 %sub, 0
  %cmp1 = icmp sgt i32 %add39, -1
  br i1 %cmp, label %if.then, label %if.else

if.end42:                                         ; preds = %if.then, %land.lhs.true, %land.lhs.true3, %if.then5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @init_gop_structure() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 55
  %1 = load i32* %PyramidCoding, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 3
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34
  %jumpd = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 5
  %cond.in = select i1 %cmp, i32* %jumpd, i32* %successive_Bframe
  %cond = load i32* %cond.in, align 4
  %cmp1 = icmp slt i32 %cond, 10
  %2 = sext i32 %cond to i64
  %conv = select i1 %cmp1, i64 10, i64 %2
  %call = tail call noalias i8* @calloc(i64 %conv, i64 24) #5
  %3 = bitcast i8* %call to %struct.GOP_DATA*
  store %struct.GOP_DATA* %3, %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %cmp6 = icmp eq i8* %call, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @clear_gop_structure() #0 {
entry:
  %0 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %tobool = icmp eq %struct.GOP_DATA* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.GOP_DATA* %0 to i8*
  tail call void @free(i8* %1) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @interpret_gop_structure() #0 {
entry:
  %qp = alloca i32, align 4
  %display_no = alloca i32, align 4
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 56, i64 0
  %call = call i64 @strlen(i8* %arraydecay) #7
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %for.body.lr.ph, label %if.else169

for.body.lr.ph:                                   ; preds = %entry
  %sub149 = add nsw i32 %conv, -2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc166
  %coded_frame.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %coded_frame.1, %for.inc166 ]
  %qp_read.0215 = phi i32 [ 0, %for.body.lr.ph ], [ %qp_read.1, %for.inc166 ]
  %stored_read.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %stored_read.1, %for.inc166 ]
  %order_read.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %order_read.1, %for.inc166 ]
  %slice_read.0212 = phi i32 [ 0, %for.body.lr.ph ], [ %slice_read.1, %for.inc166 ]
  %i.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %inc167, %for.inc166 ]
  %cmp4 = icmp eq i32 %slice_read.0212, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  %idxprom = sext i32 %i.0211 to i64
  %1 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 56, i64 %idxprom
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %conv8 = sext i8 %2 to i32
  switch i32 %conv8, label %sw.default [
    i32 80, label %sw.bb
    i32 112, label %sw.bb
    i32 66, label %sw.bb11
    i32 98, label %sw.bb11
    i32 73, label %sw.bb15
    i32 105, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.then6, %if.then6
  %idxprom9 = sext i32 %coded_frame.0216 to i64
  %3 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %slice_type = getelementptr inbounds %struct.GOP_DATA* %3, i64 %idxprom9, i32 0
  store i32 0, i32* %slice_type, align 4, !tbaa !3
  br label %for.inc166

sw.bb11:                                          ; preds = %if.then6, %if.then6
  %idxprom12 = sext i32 %coded_frame.0216 to i64
  %4 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %slice_type14 = getelementptr inbounds %struct.GOP_DATA* %4, i64 %idxprom12, i32 0
  store i32 1, i32* %slice_type14, align 4, !tbaa !3
  br label %for.inc166

sw.bb15:                                          ; preds = %if.then6, %if.then6
  %idxprom16 = sext i32 %coded_frame.0216 to i64
  %5 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %slice_type18 = getelementptr inbounds %struct.GOP_DATA* %5, i64 %idxprom16, i32 0
  store i32 2, i32* %slice_type18, align 4, !tbaa !3
  br label %for.inc166

sw.default:                                       ; preds = %if.then6
  %call19 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([84 x i8]* @.str3, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5
  br label %for.inc166

if.else:                                          ; preds = %for.body
  switch i32 %order_read.0213, label %for.inc166 [
    i32 0, label %if.then22
    i32 1, label %if.then64
  ]

if.then22:                                        ; preds = %if.else
  %6 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %idx.ext = sext i32 %i.0211 to i64
  %add.ptr = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 56, i64 %idx.ext
  %7 = load i8* %add.ptr, align 1, !tbaa !1
  %idxprom26 = sext i8 %7 to i64
  %call27 = call i16** @__ctype_b_loc() #8
  %8 = load i16** %call27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds i16* %8, i64 %idxprom26
  %9 = load i16* %arrayidx28, align 2, !tbaa !4
  %and = and i16 %9, 2048
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.else58, label %if.then30

if.then30:                                        ; preds = %if.then22
  %call35 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* %display_no) #5
  %10 = load i32* %display_no, align 4, !tbaa !3
  %idxprom36 = sext i32 %coded_frame.0216 to i64
  %11 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %display_no38 = getelementptr inbounds %struct.GOP_DATA* %11, i64 %idxprom36, i32 1
  store i32 %10, i32* %display_no38, align 4, !tbaa !3
  %12 = load i32* %display_no, align 4, !tbaa !3
  %cmp39 = icmp sgt i32 %12, -1
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  %jumpd44.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 5
  %.pre217 = load i32* %jumpd44.phi.trans.insert, align 4, !tbaa !3
  %cmp41 = icmp slt i32 %12, %.pre217
  %or.cond225 = and i1 %cmp39, %cmp41
  br i1 %or.cond225, label %for.cond46.preheader, label %if.then43

if.then43:                                        ; preds = %if.then30
  %sub = add nsw i32 %.pre217, -1
  %call45 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([71 x i8]* @.str5, i64 0, i64 0), i32 %sub) #5
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %if.then30, %if.then43
  %cmp47208 = icmp sgt i32 %coded_frame.0216, 0
  br i1 %cmp47208, label %for.body49, label %for.inc166

for.body49:                                       ; preds = %for.inc, %for.cond46.preheader
  %indvars.iv = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next, %for.inc ]
  %13 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %display_no52 = getelementptr inbounds %struct.GOP_DATA* %13, i64 %indvars.iv, i32 1
  %14 = load i32* %display_no52, align 4, !tbaa !3
  %15 = load i32* %display_no, align 4, !tbaa !3
  %cmp53 = icmp eq i32 %14, %15
  br i1 %cmp53, label %if.then55, label %for.inc

if.then55:                                        ; preds = %for.body49
  %16 = trunc i64 %indvars.iv to i32
  %call56 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([72 x i8]* @.str6, i64 0, i64 0), i32 %14, i32 %coded_frame.0216, i32 %16) #5
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body49, %if.then55
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %coded_frame.0216
  br i1 %exitcond, label %for.inc166, label %for.body49

if.else58:                                        ; preds = %if.then22
  %call59 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5
  br label %for.inc166

if.then64:                                        ; preds = %if.else
  %cmp65 = icmp eq i32 %stored_read.0214, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else93

land.lhs.true:                                    ; preds = %if.then64
  %17 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %idx.ext69 = sext i32 %i.0211 to i64
  %add.ptr70 = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 56, i64 %idx.ext69
  %18 = load i8* %add.ptr70, align 1, !tbaa !1
  %idxprom72 = sext i8 %18 to i64
  %call73 = call i16** @__ctype_b_loc() #8
  %19 = load i16** %call73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i16* %19, i64 %idxprom72
  %20 = load i16* %arrayidx74, align 2, !tbaa !4
  %and76 = and i16 %20, 2048
  %tobool77 = icmp eq i16 %and76, 0
  br i1 %tobool77, label %if.then78, label %for.inc166

if.then78:                                        ; preds = %land.lhs.true
  %conv82 = sext i8 %18 to i32
  switch i32 %conv82, label %sw.default90 [
    i32 69, label %sw.bb83
    i32 101, label %sw.bb83
    i32 82, label %sw.bb86
    i32 114, label %sw.bb86
  ]

sw.bb83:                                          ; preds = %if.then78, %if.then78
  %idxprom84 = sext i32 %coded_frame.0216 to i64
  %21 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %reference_idc = getelementptr inbounds %struct.GOP_DATA* %21, i64 %idxprom84, i32 2
  store i32 0, i32* %reference_idc, align 4, !tbaa !3
  br label %for.inc166

sw.bb86:                                          ; preds = %if.then78, %if.then78
  %idxprom87 = sext i32 %coded_frame.0216 to i64
  %22 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %reference_idc89 = getelementptr inbounds %struct.GOP_DATA* %22, i64 %idxprom87, i32 2
  store i32 2, i32* %reference_idc89, align 4, !tbaa !3
  br label %for.inc166

sw.default90:                                     ; preds = %if.then78
  %call91 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([87 x i8]* @.str8, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5
  br label %for.inc166

if.else93:                                        ; preds = %if.then64
  %cmp94 = icmp eq i32 %stored_read.0214, 1
  %cmp97 = icmp eq i32 %qp_read.0215, 0
  %or.cond = and i1 %cmp94, %cmp97
  br i1 %or.cond, label %if.then99, label %if.else130

if.then99:                                        ; preds = %if.else93
  %23 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %idx.ext102 = sext i32 %i.0211 to i64
  %add.ptr103 = getelementptr inbounds %struct.InputParameters* %23, i64 0, i32 56, i64 %idx.ext102
  %24 = load i8* %add.ptr103, align 1, !tbaa !1
  %idxprom105 = sext i8 %24 to i64
  %call106 = call i16** @__ctype_b_loc() #8
  %25 = load i16** %call106, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds i16* %25, i64 %idxprom105
  %26 = load i16* %arrayidx107, align 2, !tbaa !4
  %and109 = and i16 %26, 2048
  %tobool110 = icmp eq i16 %and109, 0
  br i1 %tobool110, label %if.else127, label %if.then111

if.then111:                                       ; preds = %if.then99
  %call116 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr103, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* %qp) #5
  %27 = load i32* %qp, align 4, !tbaa !3
  %idxprom117 = sext i32 %coded_frame.0216 to i64
  %28 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %slice_qp = getelementptr inbounds %struct.GOP_DATA* %28, i64 %idxprom117, i32 3
  store i32 %27, i32* %slice_qp, align 4, !tbaa !3
  %29 = load i32* %qp, align 4, !tbaa !3
  %30 = icmp ugt i32 %29, 51
  br i1 %30, label %if.then124, label %for.inc166

if.then124:                                       ; preds = %if.then111
  %call125 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([51 x i8]* @.str9, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5
  br label %for.inc166

if.else127:                                       ; preds = %if.then99
  %call128 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([75 x i8]* @.str10, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5
  br label %for.inc166

if.else130:                                       ; preds = %if.else93
  %cmp134 = icmp eq i32 %qp_read.0215, 1
  %or.cond203 = and i1 %cmp94, %cmp134
  br i1 %or.cond203, label %land.lhs.true136, label %for.inc166

land.lhs.true136:                                 ; preds = %if.else130
  %31 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %idx.ext139 = sext i32 %i.0211 to i64
  %add.ptr140 = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 56, i64 %idx.ext139
  %32 = load i8* %add.ptr140, align 1, !tbaa !1
  %idxprom142 = sext i8 %32 to i64
  %call143 = call i16** @__ctype_b_loc() #8
  %33 = load i16** %call143, align 8, !tbaa !0
  %arrayidx144 = getelementptr inbounds i16* %33, i64 %idxprom142
  %34 = load i16* %arrayidx144, align 2, !tbaa !4
  %and146 = and i16 %34, 2048
  %tobool147 = icmp eq i16 %and146, 0
  %cmp150 = icmp slt i32 %i.0211, %sub149
  %or.cond226 = and i1 %tobool147, %cmp150
  br i1 %or.cond226, label %if.then152, label %for.inc166

if.then152:                                       ; preds = %land.lhs.true136
  %dec = add nsw i32 %i.0211, -1
  %inc153 = add nsw i32 %coded_frame.0216, 1
  %jumpd154 = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 5
  %35 = load i32* %jumpd154, align 4, !tbaa !3
  %cmp155 = icmp slt i32 %inc153, %35
  br i1 %cmp155, label %for.inc166, label %if.then157

if.then157:                                       ; preds = %if.then152
  %call158 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([92 x i8]* @.str11, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5
  br label %for.inc166

for.inc166:                                       ; preds = %land.lhs.true, %for.cond46.preheader, %for.inc, %sw.bb83, %sw.bb86, %sw.default90, %if.else, %sw.bb, %sw.bb11, %sw.bb15, %sw.default, %if.then152, %land.lhs.true136, %if.then124, %if.then111, %if.else127, %if.then157, %if.else130, %if.else58
  %i.1 = phi i32 [ %i.0211, %if.else58 ], [ %i.0211, %if.then124 ], [ %i.0211, %if.then111 ], [ %i.0211, %if.else127 ], [ %i.0211, %land.lhs.true136 ], [ %dec, %if.then157 ], [ %dec, %if.then152 ], [ %i.0211, %if.else130 ], [ %i.0211, %sw.default ], [ %i.0211, %sw.bb15 ], [ %i.0211, %sw.bb11 ], [ %i.0211, %sw.bb ], [ %i.0211, %if.else ], [ %i.0211, %sw.default90 ], [ %i.0211, %sw.bb86 ], [ %i.0211, %sw.bb83 ], [ %i.0211, %for.inc ], [ %i.0211, %for.cond46.preheader ], [ %i.0211, %land.lhs.true ]
  %slice_read.1 = phi i32 [ %slice_read.0212, %if.else58 ], [ %slice_read.0212, %if.then124 ], [ %slice_read.0212, %if.then111 ], [ %slice_read.0212, %if.else127 ], [ %slice_read.0212, %land.lhs.true136 ], [ 0, %if.then157 ], [ 0, %if.then152 ], [ %slice_read.0212, %if.else130 ], [ 1, %sw.default ], [ 1, %sw.bb15 ], [ 1, %sw.bb11 ], [ 1, %sw.bb ], [ %slice_read.0212, %if.else ], [ %slice_read.0212, %sw.default90 ], [ %slice_read.0212, %sw.bb86 ], [ %slice_read.0212, %sw.bb83 ], [ %slice_read.0212, %for.inc ], [ %slice_read.0212, %for.cond46.preheader ], [ %slice_read.0212, %land.lhs.true ]
  %order_read.1 = phi i32 [ 0, %if.else58 ], [ 1, %if.then124 ], [ 1, %if.then111 ], [ 1, %if.else127 ], [ 1, %land.lhs.true136 ], [ 0, %if.then157 ], [ 0, %if.then152 ], [ 1, %if.else130 ], [ %order_read.0213, %sw.default ], [ %order_read.0213, %sw.bb15 ], [ %order_read.0213, %sw.bb11 ], [ %order_read.0213, %sw.bb ], [ %order_read.0213, %if.else ], [ 1, %sw.default90 ], [ 1, %sw.bb86 ], [ 1, %sw.bb83 ], [ 1, %for.inc ], [ 1, %for.cond46.preheader ], [ 1, %land.lhs.true ]
  %stored_read.1 = phi i32 [ %stored_read.0214, %if.else58 ], [ 1, %if.then124 ], [ 1, %if.then111 ], [ 1, %if.else127 ], [ %stored_read.0214, %land.lhs.true136 ], [ 0, %if.then157 ], [ 0, %if.then152 ], [ %stored_read.0214, %if.else130 ], [ %stored_read.0214, %sw.default ], [ %stored_read.0214, %sw.bb15 ], [ %stored_read.0214, %sw.bb11 ], [ %stored_read.0214, %sw.bb ], [ %stored_read.0214, %if.else ], [ 1, %sw.default90 ], [ 1, %sw.bb86 ], [ 1, %sw.bb83 ], [ %stored_read.0214, %for.inc ], [ %stored_read.0214, %for.cond46.preheader ], [ 0, %land.lhs.true ]
  %qp_read.1 = phi i32 [ %qp_read.0215, %if.else58 ], [ 1, %if.then124 ], [ 1, %if.then111 ], [ 0, %if.else127 ], [ 1, %land.lhs.true136 ], [ 0, %if.then157 ], [ 0, %if.then152 ], [ %qp_read.0215, %if.else130 ], [ %qp_read.0215, %sw.default ], [ %qp_read.0215, %sw.bb15 ], [ %qp_read.0215, %sw.bb11 ], [ %qp_read.0215, %sw.bb ], [ %qp_read.0215, %if.else ], [ %qp_read.0215, %sw.default90 ], [ %qp_read.0215, %sw.bb86 ], [ %qp_read.0215, %sw.bb83 ], [ %qp_read.0215, %for.inc ], [ %qp_read.0215, %for.cond46.preheader ], [ %qp_read.0215, %land.lhs.true ]
  %coded_frame.1 = phi i32 [ %coded_frame.0216, %if.else58 ], [ %coded_frame.0216, %if.then124 ], [ %coded_frame.0216, %if.then111 ], [ %coded_frame.0216, %if.else127 ], [ %coded_frame.0216, %land.lhs.true136 ], [ %inc153, %if.then157 ], [ %inc153, %if.then152 ], [ %coded_frame.0216, %if.else130 ], [ %coded_frame.0216, %sw.default ], [ %coded_frame.0216, %sw.bb15 ], [ %coded_frame.0216, %sw.bb11 ], [ %coded_frame.0216, %sw.bb ], [ %coded_frame.0216, %if.else ], [ %coded_frame.0216, %sw.default90 ], [ %coded_frame.0216, %sw.bb86 ], [ %coded_frame.0216, %sw.bb83 ], [ %coded_frame.0216, %for.inc ], [ %coded_frame.0216, %for.cond46.preheader ], [ %coded_frame.0216, %land.lhs.true ]
  %inc167 = add nsw i32 %i.1, 1
  %cmp2 = icmp slt i32 %inc167, %conv
  br i1 %cmp2, label %for.body, label %if.end171

if.else169:                                       ; preds = %entry
  %call170 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([65 x i8]* @.str12, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5
  br label %if.end171

if.end171:                                        ; preds = %for.inc166, %if.else169
  %coded_frame.2 = phi i32 [ 0, %if.else169 ], [ %coded_frame.1, %for.inc166 ]
  %add = add nsw i32 %coded_frame.2, 1
  %36 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %36, i64 0, i32 34
  store i32 %add, i32* %successive_Bframe, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @encode_enhancement_layer() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34
  %1 = load i32* %successive_Bframe, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 0
  %.pre289 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %cmp, label %if.end276, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %number = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 0
  %2 = load i32* %number, align 4, !tbaa !3
  %3 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub = sub nsw i32 %2, %3
  %cmp1 = icmp sgt i32 %sub, 0
  br i1 %cmp1, label %if.then, label %if.end276

if.then:                                          ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 6
  store i32 1, i32* %type, align 4, !tbaa !3
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 99
  %4 = load i32* %NumFramesInELSubSeq, align 4, !tbaa !3
  %layer = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 86
  %not.cmp2 = icmp ne i32 %4, 0
  %. = zext i1 %not.cmp2 to i32
  store i32 %., i32* %layer, align 4, !tbaa !3
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 54
  %5 = load i32* %BRefPictures, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %5, 0
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 55
  br i1 %cmp5, label %land.lhs.true6, label %if.end10

land.lhs.true6:                                   ; preds = %if.then
  %6 = load i32* %PyramidCoding, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true6
  %frame_num = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 105
  %7 = load i32* %frame_num, align 4, !tbaa !3
  %inc = add i32 %7, 1
  store i32 %inc, i32* %frame_num, align 4, !tbaa !3
  %8 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %add = add i32 %8, 4
  %shl = shl nuw i32 1, %add
  %9 = add i32 %shl, -1
  %rem = and i32 %9, %inc
  store i32 %rem, i32* %frame_num, align 4, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then8, %land.lhs.true6
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 113
  store i32 0, i32* %nal_reference_idc, align 4, !tbaa !3
  %10 = load i32* %PyramidCoding, align 4, !tbaa !3
  %tobool = icmp eq i32 %10, 0
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 67
  store i32 1, i32* %b_frame_to_code, align 4, !tbaa !3
  %11 = load i32* %successive_Bframe, align 4, !tbaa !3
  %cmp158283 = icmp slt i32 %11, 1
  br i1 %tobool, label %for.cond155.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end10
  br i1 %cmp158283, label %for.end, label %for.body

for.cond155.preheader:                            ; preds = %if.end10
  br i1 %cmp158283, label %if.end276, label %for.body160

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %12 = phi %struct.InputParameters* [ %44, %for.inc ], [ %0, %for.cond.preheader ]
  %13 = phi i32 [ %inc151, %for.inc ], [ 1, %for.cond.preheader ]
  %14 = phi %struct.ImageParameters* [ %45, %for.inc ], [ %.pre289, %for.cond.preheader ]
  %nal_reference_idc16 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 113
  store i32 0, i32* %nal_reference_idc16, align 4, !tbaa !3
  %sub18 = add nsw i32 %13, -1
  %idxprom = sext i32 %sub18 to i64
  %15 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %slice_type = getelementptr inbounds %struct.GOP_DATA* %15, i64 %idxprom, i32 0
  %16 = load i32* %slice_type, align 4, !tbaa !3
  %type19 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 6
  store i32 %16, i32* %type19, align 4, !tbaa !3
  %reference_idc = getelementptr inbounds %struct.GOP_DATA* %15, i64 %idxprom, i32 2
  %17 = load i32* %reference_idc, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %17, 2
  br i1 %cmp24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %for.body
  store i32 1, i32* %nal_reference_idc16, align 4, !tbaa !3
  %frame_num27 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 105
  %18 = load i32* %frame_num27, align 4, !tbaa !3
  %inc28 = add i32 %18, 1
  store i32 %inc28, i32* %frame_num27, align 4, !tbaa !3
  %19 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %add29 = add i32 %19, 4
  %shl30 = shl nuw i32 1, %add29
  %20 = add i32 %shl30, -1
  %rem32 = and i32 %20, %inc28
  store i32 %rem32, i32* %frame_num27, align 4, !tbaa !3
  br label %if.end33

if.end33:                                         ; preds = %if.then25, %for.body
  %jumpd = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 5
  %21 = load i32* %jumpd, align 4, !tbaa !3
  %add34 = add nsw i32 %21, 1
  %conv = sitofp i32 %add34 to double
  %successive_Bframe35 = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 34
  %22 = load i32* %successive_Bframe35, align 4, !tbaa !3
  %conv36 = sitofp i32 %22 to double
  %add37 = fadd double %conv36, 1.000000e+00
  %div = fdiv double %conv, %add37
  %b_interval = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 65
  store double %div, double* %b_interval, align 8, !tbaa !5
  %PyramidCoding38 = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 55
  %23 = load i32* %PyramidCoding38, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %23, 3
  %.div = select i1 %cmp39, double 1.000000e+00, double %div
  store double %.div, double* %b_interval, align 8, !tbaa !5
  %.div292 = select i1 %cmp39, double 1.000000e+00, double %div
  %intra_period = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 31
  %24 = load i32* %intra_period, align 4, !tbaa !3
  %tobool44 = icmp eq i32 %24, 0
  br i1 %tobool44, label %if.else66, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end33
  %idr_enable = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 32
  %25 = load i32* %idr_enable, align 4, !tbaa !3
  %tobool46 = icmp eq i32 %25, 0
  br i1 %tobool46, label %if.else66, label %if.then47

if.then47:                                        ; preds = %land.lhs.true45
  %number48 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 0
  %26 = load i32* %number48, align 4, !tbaa !3
  %27 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub49 = sub nsw i32 %26, %27
  %rem51 = srem i32 %sub49, %24
  %sub52 = add nsw i32 %rem51, -1
  %mul = mul nsw i32 %add34, %sub52
  %display_no = getelementptr inbounds %struct.GOP_DATA* %15, i64 %idxprom, i32 1
  %28 = load i32* %display_no, align 4, !tbaa !3
  %add60 = add nsw i32 %28, 1
  %conv61 = sitofp i32 %add60 to double
  %mul62 = fmul double %.div292, %conv61
  %conv63 = fptosi double %mul62 to i32
  %add64 = add nsw i32 %conv63, %mul
  %mul65 = shl nsw i32 %add64, 1
  %toppoc = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 101
  store i32 %mul65, i32* %toppoc, align 4, !tbaa !3
  br label %if.end86

if.else66:                                        ; preds = %land.lhs.true45, %if.end33
  %number67 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 0
  %29 = load i32* %number67, align 4, !tbaa !3
  %30 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub68 = add i32 %29, -1
  %sub69 = sub i32 %sub68, %30
  %mul72 = mul nsw i32 %add34, %sub69
  %display_no78 = getelementptr inbounds %struct.GOP_DATA* %15, i64 %idxprom, i32 1
  %31 = load i32* %display_no78, align 4, !tbaa !3
  %add79 = add nsw i32 %31, 1
  %conv80 = sitofp i32 %add79 to double
  %mul81 = fmul double %.div292, %conv80
  %conv82 = fptosi double %mul81 to i32
  %add83 = add nsw i32 %conv82, %mul72
  %mul84 = shl nsw i32 %add83, 1
  %toppoc85 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 101
  store i32 %mul84, i32* %toppoc85, align 4, !tbaa !3
  br label %if.end86

if.end86:                                         ; preds = %if.else66, %if.then47
  %32 = phi i32 [ %29, %if.else66 ], [ %26, %if.then47 ]
  %33 = phi i32 [ %mul84, %if.else66 ], [ %mul65, %if.then47 ]
  %cmp88 = icmp eq i32 %13, 1
  %34 = load i32* @start_tr_in_this_IGOP, align 4, !tbaa !3
  %35 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub93 = sub nsw i32 %32, %35
  br i1 %cmp88, label %if.then90, label %if.else101

if.then90:                                        ; preds = %if.end86
  %36 = load i32* %jumpd, align 4, !tbaa !3
  %add95 = add nsw i32 %36, 1
  %mul96 = mul nsw i32 %add95, %sub93
  %add97 = add nsw i32 %mul96, %34
  %mul98 = shl nsw i32 %add97, 1
  %sub99 = sub nsw i32 %33, %mul98
  %arrayidx100 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 99, i64 0
  store i32 %sub99, i32* %arrayidx100, align 4, !tbaa !3
  br label %if.end126

if.else101:                                       ; preds = %if.end86
  %sub105 = add nsw i32 %sub93, -1
  %37 = load i32* %jumpd, align 4, !tbaa !3
  %add107 = add nsw i32 %37, 1
  %mul108 = mul nsw i32 %add107, %sub105
  %add109 = add nsw i32 %mul108, %34
  %mul111 = fmul double %.div292, 2.000000e+00
  %sub113 = add nsw i32 %13, -2
  %idxprom114 = sext i32 %sub113 to i64
  %display_no116 = getelementptr inbounds %struct.GOP_DATA* %15, i64 %idxprom114, i32 1
  %38 = load i32* %display_no116, align 4, !tbaa !3
  %add117 = add nsw i32 %38, 1
  %conv118 = sitofp i32 %add117 to double
  %mul119 = fmul double %mul111, %conv118
  %conv120 = fptosi double %mul119 to i32
  %add121 = add nsw i32 %add109, %conv120
  %mul122 = shl nsw i32 %add121, 1
  %sub123 = sub nsw i32 %33, %mul122
  %arrayidx125 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 99, i64 0
  store i32 %sub123, i32* %arrayidx125, align 4, !tbaa !3
  br label %if.end126

if.end126:                                        ; preds = %if.else101, %if.then90
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 91
  %39 = load i32* %PicInterlace, align 4, !tbaa !3
  %cmp127 = icmp eq i32 %39, 0
  br i1 %cmp127, label %land.lhs.true129, label %if.else134

land.lhs.true129:                                 ; preds = %if.end126
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 92
  %40 = load i32* %MbInterlace, align 4, !tbaa !3
  %cmp130 = icmp eq i32 %40, 0
  br i1 %cmp130, label %if.then132, label %if.else134

if.then132:                                       ; preds = %land.lhs.true129
  %bottompoc = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 102
  store i32 %33, i32* %bottompoc, align 4, !tbaa !3
  br label %if.end138

if.else134:                                       ; preds = %land.lhs.true129, %if.end126
  %add136290 = or i32 %33, 1
  %bottompoc137 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 102
  store i32 %add136290, i32* %bottompoc137, align 4, !tbaa !3
  br label %if.end138

if.end138:                                        ; preds = %if.else134, %if.then132
  %41 = phi i32 [ %add136290, %if.else134 ], [ %33, %if.then132 ]
  %cmp141 = icmp slt i32 %33, %41
  %.278 = select i1 %cmp141, i32 %33, i32 %41
  %framepoc = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 103
  store i32 %.278, i32* %framepoc, align 4, !tbaa !3
  %arrayidx146 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 99, i64 1
  store i32 0, i32* %arrayidx146, align 4, !tbaa !3
  %call = tail call i32 (...)* @encode_one_frame() #5
  %42 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 125
  %43 = load i32* %ReportFrameStats, align 4, !tbaa !3
  %tobool147 = icmp eq i32 %43, 0
  br i1 %tobool147, label %for.inc, label %if.then148

if.then148:                                       ; preds = %if.end138
  tail call void (...)* @report_frame_statistic() #5
  %.pre288 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.end138, %if.then148
  %44 = phi %struct.InputParameters* [ %42, %if.end138 ], [ %.pre288, %if.then148 ]
  %45 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %b_frame_to_code150 = getelementptr inbounds %struct.ImageParameters* %45, i64 0, i32 67
  %46 = load i32* %b_frame_to_code150, align 4, !tbaa !3
  %inc151 = add nsw i32 %46, 1
  store i32 %inc151, i32* %b_frame_to_code150, align 4, !tbaa !3
  %successive_Bframe14 = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 34
  %47 = load i32* %successive_Bframe14, align 4, !tbaa !3
  %cmp15 = icmp slt i32 %46, %47
  br i1 %cmp15, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %48 = phi %struct.ImageParameters* [ %.pre289, %for.cond.preheader ], [ %45, %for.inc ]
  %b_frame_to_code13.lcssa = phi i32* [ %b_frame_to_code, %for.cond.preheader ], [ %b_frame_to_code150, %for.inc ]
  store i32 0, i32* %b_frame_to_code13.lcssa, align 4, !tbaa !3
  br label %if.end276

for.body160:                                      ; preds = %for.cond155.preheader, %for.inc271
  %49 = phi i32 [ %inc273, %for.inc271 ], [ 1, %for.cond155.preheader ]
  %50 = phi %struct.InputParameters* [ %72, %for.inc271 ], [ %0, %for.cond155.preheader ]
  %51 = phi %struct.ImageParameters* [ %73, %for.inc271 ], [ %.pre289, %for.cond155.preheader ]
  %nal_reference_idc161 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 113
  store i32 0, i32* %nal_reference_idc161, align 4, !tbaa !3
  %BRefPictures162 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 54
  %52 = load i32* %BRefPictures162, align 4, !tbaa !3
  %cmp163 = icmp eq i32 %52, 1
  br i1 %cmp163, label %if.then165, label %if.end173

if.then165:                                       ; preds = %for.body160
  store i32 1, i32* %nal_reference_idc161, align 4, !tbaa !3
  %frame_num167 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 105
  %53 = load i32* %frame_num167, align 4, !tbaa !3
  %inc168 = add i32 %53, 1
  store i32 %inc168, i32* %frame_num167, align 4, !tbaa !3
  %54 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %add169 = add i32 %54, 4
  %shl170 = shl nuw i32 1, %add169
  %55 = add i32 %shl170, -1
  %rem172 = and i32 %55, %inc168
  store i32 %rem172, i32* %frame_num167, align 4, !tbaa !3
  br label %if.end173

if.end173:                                        ; preds = %if.then165, %for.body160
  %jumpd174 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 5
  %56 = load i32* %jumpd174, align 4, !tbaa !3
  %add175 = add nsw i32 %56, 1
  %conv176 = sitofp i32 %add175 to double
  %successive_Bframe177 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 34
  %57 = load i32* %successive_Bframe177, align 4, !tbaa !3
  %conv178 = sitofp i32 %57 to double
  %add179 = fadd double %conv178, 1.000000e+00
  %div180 = fdiv double %conv176, %add179
  %b_interval181 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 65
  store double %div180, double* %b_interval181, align 8, !tbaa !5
  %PyramidCoding182 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 55
  %58 = load i32* %PyramidCoding182, align 4, !tbaa !3
  %cmp183 = icmp eq i32 %58, 3
  %.div180 = select i1 %cmp183, double 1.000000e+00, double %div180
  store double %.div180, double* %b_interval181, align 8, !tbaa !5
  %.div180293 = select i1 %cmp183, double 1.000000e+00, double %div180
  %intra_period188 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 31
  %59 = load i32* %intra_period188, align 4, !tbaa !3
  %tobool189 = icmp eq i32 %59, 0
  br i1 %tobool189, label %if.else210, label %land.lhs.true190

land.lhs.true190:                                 ; preds = %if.end173
  %idr_enable191 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 32
  %60 = load i32* %idr_enable191, align 4, !tbaa !3
  %tobool192 = icmp eq i32 %60, 0
  br i1 %tobool192, label %if.else210, label %if.then193

if.then193:                                       ; preds = %land.lhs.true190
  %number194 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 0
  %61 = load i32* %number194, align 4, !tbaa !3
  %62 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub195 = sub nsw i32 %61, %62
  %rem197 = srem i32 %sub195, %59
  %sub198 = add nsw i32 %rem197, -1
  %mul201 = mul nsw i32 %add175, %sub198
  %conv204 = sitofp i32 %49 to double
  %mul205 = fmul double %.div180293, %conv204
  %conv206 = fptosi double %mul205 to i32
  %add207 = add nsw i32 %conv206, %mul201
  %mul208 = shl nsw i32 %add207, 1
  %toppoc209 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 101
  store i32 %mul208, i32* %toppoc209, align 4, !tbaa !3
  br label %if.end225

if.else210:                                       ; preds = %land.lhs.true190, %if.end173
  %number211 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 0
  %63 = load i32* %number211, align 4, !tbaa !3
  %64 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub212 = add i32 %63, -1
  %sub213 = sub i32 %sub212, %64
  %mul216 = mul nsw i32 %add175, %sub213
  %conv219 = sitofp i32 %49 to double
  %mul220 = fmul double %.div180293, %conv219
  %conv221 = fptosi double %mul220 to i32
  %add222 = add nsw i32 %conv221, %mul216
  %mul223 = shl nsw i32 %add222, 1
  %toppoc224 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 101
  store i32 %mul223, i32* %toppoc224, align 4, !tbaa !3
  br label %if.end225

if.end225:                                        ; preds = %if.else210, %if.then193
  %65 = phi i32 [ %mul223, %if.else210 ], [ %mul208, %if.then193 ]
  %PicInterlace226 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 91
  %66 = load i32* %PicInterlace226, align 4, !tbaa !3
  %cmp227 = icmp eq i32 %66, 0
  br i1 %cmp227, label %land.lhs.true229, label %if.else236

land.lhs.true229:                                 ; preds = %if.end225
  %MbInterlace230 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 92
  %67 = load i32* %MbInterlace230, align 4, !tbaa !3
  %cmp231 = icmp eq i32 %67, 0
  br i1 %cmp231, label %if.then233, label %if.else236

if.then233:                                       ; preds = %land.lhs.true229
  %bottompoc235 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 102
  store i32 %65, i32* %bottompoc235, align 4, !tbaa !3
  br label %if.end240

if.else236:                                       ; preds = %land.lhs.true229, %if.end225
  %add238291 = or i32 %65, 1
  %bottompoc239 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 102
  store i32 %add238291, i32* %bottompoc239, align 4, !tbaa !3
  br label %if.end240

if.end240:                                        ; preds = %if.else236, %if.then233
  %68 = phi i32 [ %add238291, %if.else236 ], [ %65, %if.then233 ]
  %cmp243 = icmp slt i32 %65, %68
  %.279 = select i1 %cmp243, i32 %65, i32 %68
  %framepoc251 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 103
  store i32 %.279, i32* %framepoc251, align 4, !tbaa !3
  %69 = load i32* %BRefPictures162, align 4, !tbaa !3
  %tobool253 = icmp eq i32 %69, 0
  br i1 %tobool253, label %if.then254, label %if.else260

if.then254:                                       ; preds = %if.end240
  %sub256 = shl i32 %49, 1
  %mul257 = add i32 %sub256, -2
  %arrayidx259 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 99, i64 0
  store i32 %mul257, i32* %arrayidx259, align 4, !tbaa !3
  br label %if.end263

if.else260:                                       ; preds = %if.end240
  %arrayidx262 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 99, i64 0
  store i32 -2, i32* %arrayidx262, align 4, !tbaa !3
  br label %if.end263

if.end263:                                        ; preds = %if.else260, %if.then254
  %arrayidx265 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 99, i64 1
  store i32 0, i32* %arrayidx265, align 4, !tbaa !3
  %call266 = tail call i32 (...)* @encode_one_frame() #5
  %70 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %ReportFrameStats267 = getelementptr inbounds %struct.InputParameters* %70, i64 0, i32 125
  %71 = load i32* %ReportFrameStats267, align 4, !tbaa !3
  %tobool268 = icmp eq i32 %71, 0
  br i1 %tobool268, label %for.inc271, label %if.then269

if.then269:                                       ; preds = %if.end263
  tail call void (...)* @report_frame_statistic() #5
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.inc271

for.inc271:                                       ; preds = %if.end263, %if.then269
  %72 = phi %struct.InputParameters* [ %70, %if.end263 ], [ %.pre, %if.then269 ]
  %73 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %b_frame_to_code272 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 67
  %74 = load i32* %b_frame_to_code272, align 4, !tbaa !3
  %inc273 = add nsw i32 %74, 1
  store i32 %inc273, i32* %b_frame_to_code272, align 4, !tbaa !3
  %successive_Bframe157 = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 34
  %75 = load i32* %successive_Bframe157, align 4, !tbaa !3
  %cmp158 = icmp slt i32 %74, %75
  br i1 %cmp158, label %for.body160, label %if.end276

if.end276:                                        ; preds = %entry, %for.cond155.preheader, %for.inc271, %for.end, %land.lhs.true
  %76 = phi %struct.ImageParameters* [ %48, %for.end ], [ %.pre289, %land.lhs.true ], [ %.pre289, %for.cond155.preheader ], [ %73, %for.inc271 ], [ %.pre289, %entry ]
  %b_frame_to_code277 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 67
  store i32 0, i32* %b_frame_to_code277, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i32 @encode_one_frame(...) #2

; Function Attrs: optsize
declare void @report_frame_statistic(...) #2

; Function Attrs: nounwind optsize uwtable
define void @poc_based_ref_management(i32 %current_pic_num) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 117
  %1 = load %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8, !tbaa !0
  %cmp = icmp eq %struct.DecRefPicMarking_s* %1, null
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %2 = load i64* bitcast (i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5) to i64*), align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i64 %2, 32
  %5 = trunc i64 %4 to i32
  %add = sub i32 0, %5
  %cmp1 = icmp eq i32 %3, %add
  br i1 %cmp1, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %6 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !tbaa !3
  %cmp443 = icmp eq i32 %6, 0
  br i1 %cmp443, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %7 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %pic_num.045 = phi i32 [ 0, %for.body.lr.ph ], [ %pic_num.1, %for.inc ]
  %min_poc.044 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %min_poc.1, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.frame_store** %7, i64 %indvars.iv
  %8 = load %struct.frame_store** %arrayidx, align 8, !tbaa !0
  %is_reference = getelementptr inbounds %struct.frame_store* %8, i64 0, i32 1
  %9 = load i32* %is_reference, align 4, !tbaa !3
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %is_long_term = getelementptr inbounds %struct.frame_store* %8, i64 0, i32 2
  %10 = load i32* %is_long_term, align 4, !tbaa !3
  %tobool7 = icmp eq i32 %10, 0
  br i1 %tobool7, label %land.lhs.true8, label %for.inc

land.lhs.true8:                                   ; preds = %land.lhs.true
  %poc = getelementptr inbounds %struct.frame_store* %8, i64 0, i32 9
  %11 = load i32* %poc, align 4, !tbaa !3
  %cmp11 = icmp slt i32 %11, %min_poc.044
  br i1 %cmp11, label %if.then12, label %for.inc

if.then12:                                        ; preds = %land.lhs.true8
  %frame = getelementptr inbounds %struct.frame_store* %8, i64 0, i32 10
  %12 = load %struct.storable_picture** %frame, align 8, !tbaa !0
  %poc15 = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 1
  %13 = load i32* %poc15, align 4, !tbaa !3
  %pic_num19 = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 11
  %14 = load i32* %pic_num19, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body, %land.lhs.true8, %if.then12
  %min_poc.1 = phi i32 [ %min_poc.044, %land.lhs.true ], [ %13, %if.then12 ], [ %min_poc.044, %land.lhs.true8 ], [ %min_poc.044, %for.body ]
  %pic_num.1 = phi i32 [ %pic_num.045, %land.lhs.true ], [ %14, %if.then12 ], [ %pic_num.045, %land.lhs.true8 ], [ %pic_num.045, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp ult i32 %15, %6
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %pic_num.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %pic_num.1, %for.inc ]
  %call = tail call noalias i8* @calloc(i64 1, i64 32) #5
  %16 = bitcast i8* %call to %struct.DecRefPicMarking_s*
  %cmp21 = icmp eq i8* %call, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str13, i64 0, i64 0)) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end
  %Next = getelementptr inbounds i8* %call, i64 24
  %17 = bitcast i8* %Next to %struct.DecRefPicMarking_s**
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %17, align 8, !tbaa !0
  %memory_management_control_operation = bitcast i8* %call to i32*
  store i32 0, i32* %memory_management_control_operation, align 4, !tbaa !3
  %call24 = tail call noalias i8* @calloc(i64 1, i64 32) #5
  %18 = bitcast i8* %call24 to %struct.DecRefPicMarking_s*
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  tail call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8]* @.str14, i64 0, i64 0)) #5
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.then26
  %Next28 = getelementptr inbounds i8* %call24, i64 24
  %19 = bitcast i8* %Next28 to %struct.DecRefPicMarking_s**
  store %struct.DecRefPicMarking_s* %16, %struct.DecRefPicMarking_s** %19, align 8, !tbaa !0
  %memory_management_control_operation29 = bitcast i8* %call24 to i32*
  store i32 1, i32* %memory_management_control_operation29, align 4, !tbaa !3
  %sub = add i32 %current_pic_num, -1
  %sub30 = sub i32 %sub, %pic_num.0.lcssa
  %difference_of_pic_nums_minus1 = getelementptr inbounds i8* %call24, i64 4
  %20 = bitcast i8* %difference_of_pic_nums_minus1 to i32*
  store i32 %sub30, i32* %20, align 4, !tbaa !3
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dec_ref_pic_marking_buffer31 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 117
  store %struct.DecRefPicMarking_s* %18, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer31, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.end, %if.end27
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
