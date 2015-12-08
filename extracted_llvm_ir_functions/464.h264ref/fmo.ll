; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/fmo.c'
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }

@MBAmap = global i8* null, align 8
@MapUnitToSliceGroupMap = global i8* null, align 8
@FirstMBInSlice = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@img = external global %struct.ImageParameters*
@PicSizeInMapUnits = common global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot allocated %d bytes for MBAmap, exit\0A\00", align 1
@.str1 = private unnamed_addr constant [68 x i8] c"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"cannot allocated %d bytes for MapUnitToSliceGroupMap, exit\0A\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"Illegal slice_group_map_type %d , exit \0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @FmoInit(%struct.ImageParameters* nocapture %img, %struct.pic_parameter_set_rbsp_t* nocapture %pps, %struct.seq_parameter_set_rbsp_t* nocapture %sps) #0 {
entry:
  call void @llvm.memset.p0i8.i64(i8* bitcast ([8 x i32]* @FirstMBInSlice to i8*), i8 -1, i64 32, i32 16, i1 false)
  %PicHeightInMapUnits.i = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 107
  %0 = load i32* %PicHeightInMapUnits.i, align 4, !tbaa !0
  %PicWidthInMbs.i = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 106
  %1 = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  %mul.i = mul i32 %1, %0
  store i32 %mul.i, i32* @PicSizeInMapUnits, align 4, !tbaa !0
  %slice_group_map_type.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9
  %2 = load i32* %slice_group_map_type.i, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %2, 6
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %entry
  %pic_size_in_map_units_minus1.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 15
  %3 = load i32* %pic_size_in_map_units_minus1.i, align 4, !tbaa !0
  %add.i = add i32 %3, 1
  %cmp1.i = icmp eq i32 %add.i, %mul.i
  br i1 %cmp1.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @error(i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 500) #7
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.then.i, %entry
  %4 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %tobool.i = icmp eq i8* %4, null
  br i1 %tobool.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end3.i
  tail call void @free(i8* %4) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i, %if.then4.i
  %5 = load i32* @PicSizeInMapUnits, align 4, !tbaa !0
  %conv.i = zext i32 %5 to i64
  %call.i = tail call noalias i8* @malloc(i64 %conv.i) #7
  store i8* %call.i, i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %cmp7.i = icmp eq i8* %call.i, null
  br i1 %cmp7.i, label %if.then9.i, label %if.end13.i

if.then9.i:                                       ; preds = %if.end5.i
  %call12.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), i64 %conv.i) #7
  tail call void @exit(i32 -1) #8
  unreachable

if.end13.i:                                       ; preds = %if.end5.i
  %num_slice_groups_minus1.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 8
  %6 = load i32* %num_slice_groups_minus1.i, align 4, !tbaa !0
  %cmp14.i = icmp eq i32 %6, 0
  br i1 %cmp14.i, label %if.then16.i, label %if.end19.i

if.then16.i:                                      ; preds = %if.end13.i
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 %conv.i, i32 1, i1 false) #6
  br label %FmoGenerateMapUnitToSliceGroupMap.exit

if.end19.i:                                       ; preds = %if.end13.i
  %7 = load i32* %slice_group_map_type.i, align 4, !tbaa !0
  switch i32 %7, label %sw.default.i [
    i32 0, label %for.cond.outer.i.i
    i32 1, label %sw.bb21.i
    i32 2, label %sw.bb22.i
    i32 3, label %sw.bb23.i
    i32 4, label %sw.bb24.i
    i32 5, label %sw.bb25.i
    i32 6, label %sw.bb26.i
  ]

for.cond.outer.i.i:                               ; preds = %if.end19.i, %for.inc11.i.i
  %8 = phi i32 [ %.pre103.pre.i.lcssa, %for.inc11.i.i ], [ %5, %if.end19.i ]
  %9 = phi i32 [ %.pre.i, %for.inc11.i.i ], [ %6, %if.end19.i ]
  %iGroup.0.ph.i.i = phi i32 [ %inc12.i.i, %for.inc11.i.i ], [ 0, %if.end19.i ]
  %i.1.ph.i.i = phi i32 [ %add17.i.i, %for.inc11.i.i ], [ 0, %if.end19.i ]
  %cmp1.i.i = icmp ult i32 %i.1.ph.i.i, %8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %do.cond.i.i, %for.cond.outer.i.i
  %iGroup.0.i.i = phi i32 [ 0, %do.cond.i.i ], [ %iGroup.0.ph.i.i, %for.cond.outer.i.i ]
  %cmp.i.i = icmp ule i32 %iGroup.0.i.i, %9
  %or.cond.i.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %for.body7.i.lr.ph.i, label %do.cond.i.i

for.body7.i.lr.ph.i:                              ; preds = %for.cond.i.i
  %idxprom.i.i = zext i32 %iGroup.0.i.i to i64
  %arrayidx.i.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 10, i64 %idxprom.i.i
  %conv.i.i = trunc i32 %iGroup.0.i.i to i8
  %idxprom9.i.i21 = zext i32 %i.1.ph.i.i to i64
  %10 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %arrayidx10.i.i22 = getelementptr inbounds i8* %10, i64 %idxprom9.i.i21
  store i8 %conv.i.i, i8* %arrayidx10.i.i22, align 1, !tbaa !1
  %11 = load i32* %arrayidx.i.i, align 4, !tbaa !0
  %cmp3.i.i23 = icmp eq i32 %11, 0
  %.pre103.pre.i24 = load i32* @PicSizeInMapUnits, align 4, !tbaa !0
  br i1 %cmp3.i.i23, label %for.inc11.i.i, label %for.body7.land.rhs4_crit_edge.i.i

for.body7.i.i:                                    ; preds = %for.body7.land.rhs4_crit_edge.i.i
  %idxprom9.i.i = zext i32 %add.i.i to i64
  %12 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %arrayidx10.i.i = getelementptr inbounds i8* %12, i64 %idxprom9.i.i
  store i8 %conv.i.i, i8* %arrayidx10.i.i, align 1, !tbaa !1
  %13 = load i32* %arrayidx.i.i, align 4, !tbaa !0
  %cmp3.i.i = icmp ugt i32 %phitmp.i, %13
  %.pre103.pre.i = load i32* @PicSizeInMapUnits, align 4, !tbaa !0
  br i1 %cmp3.i.i, label %for.inc11.i.i, label %for.body7.land.rhs4_crit_edge.i.i

for.body7.land.rhs4_crit_edge.i.i:                ; preds = %for.body7.i.lr.ph.i, %for.body7.i.i
  %.pre103.pre.i26 = phi i32 [ %.pre103.pre.i, %for.body7.i.i ], [ %.pre103.pre.i24, %for.body7.i.lr.ph.i ]
  %14 = phi i32 [ %13, %for.body7.i.i ], [ %11, %for.body7.i.lr.ph.i ]
  %j.01.i87.i25 = phi i32 [ %phitmp.i, %for.body7.i.i ], [ 1, %for.body7.i.lr.ph.i ]
  %add.i.i = add i32 %j.01.i87.i25, %i.1.ph.i.i
  %cmp5.i.i = icmp ult i32 %add.i.i, %.pre103.pre.i26
  %phitmp.i = add i32 %j.01.i87.i25, 1
  br i1 %cmp5.i.i, label %for.body7.i.i, label %for.inc11.i.i

for.inc11.i.i:                                    ; preds = %for.body7.i.i, %for.body7.land.rhs4_crit_edge.i.i, %for.body7.i.lr.ph.i
  %.pre103.pre.i.lcssa = phi i32 [ %.pre103.pre.i24, %for.body7.i.lr.ph.i ], [ %.pre103.pre.i26, %for.body7.land.rhs4_crit_edge.i.i ], [ %.pre103.pre.i, %for.body7.i.i ]
  %.lcssa = phi i32 [ 0, %for.body7.i.lr.ph.i ], [ %14, %for.body7.land.rhs4_crit_edge.i.i ], [ %13, %for.body7.i.i ]
  %inc12.i.i = add i32 %iGroup.0.i.i, 1
  %add16.i.i = add i32 %i.1.ph.i.i, 1
  %add17.i.i = add i32 %add16.i.i, %.lcssa
  %.pre.i = load i32* %num_slice_groups_minus1.i, align 4, !tbaa !0
  br label %for.cond.outer.i.i

do.cond.i.i:                                      ; preds = %for.cond.i.i
  br i1 %cmp1.i.i, label %for.cond.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

sw.bb21.i:                                        ; preds = %if.end19.i
  %cmp13.i69.i = icmp eq i32 %5, 0
  br i1 %cmp13.i69.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.i82.i.preheader

for.body.i82.i.preheader:                         ; preds = %sw.bb21.i
  store i8 0, i8* %call.i, align 1, !tbaa !1
  %cmp.i81.i30 = icmp ugt i32 %5, 1
  br i1 %cmp.i81.i30, label %for.body.i82.for.body.i82_crit_edge.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.body.i82.for.body.i82_crit_edge.i:            ; preds = %for.body.i82.i.preheader, %for.body.i82.for.body.i82_crit_edge.i.for.body.i82.for.body.i82_crit_edge.i_crit_edge
  %.pre107.i = phi i8* [ %.pre107.i.pre, %for.body.i82.for.body.i82_crit_edge.i.for.body.i82.for.body.i82_crit_edge.i_crit_edge ], [ %call.i, %for.body.i82.i.preheader ]
  %.pre106.i = phi i32 [ %.pre106.i.pre, %for.body.i82.for.body.i82_crit_edge.i.for.body.i82.for.body.i82_crit_edge.i_crit_edge ], [ %6, %for.body.i82.i.preheader ]
  %inc.i80.i31 = phi i32 [ %inc.i80.i, %for.body.i82.for.body.i82_crit_edge.i.for.body.i82.for.body.i82_crit_edge.i_crit_edge ], [ 1, %for.body.i82.i.preheader ]
  %15 = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  %rem.i73.i = urem i32 %inc.i80.i31, %15
  %div.i74.i = udiv i32 %inc.i80.i31, %15
  %add.i75.i = add i32 %.pre106.i, 1
  %mul.i76.i = mul i32 %div.i74.i, %add.i75.i
  %div2.i.i = lshr i32 %mul.i76.i, 1
  %add3.i.i = add i32 %div2.i.i, %rem.i73.i
  %rem6.i.i = urem i32 %add3.i.i, %add.i75.i
  %conv.i77.i = trunc i32 %rem6.i.i to i8
  %idxprom.i78.i = zext i32 %inc.i80.i31 to i64
  %arrayidx.i79.i = getelementptr inbounds i8* %.pre107.i, i64 %idxprom.i78.i
  store i8 %conv.i77.i, i8* %arrayidx.i79.i, align 1, !tbaa !1
  %inc.i80.i = add i32 %inc.i80.i31, 1
  %16 = load i32* @PicSizeInMapUnits, align 4, !tbaa !0
  %cmp.i81.i = icmp ult i32 %inc.i80.i, %16
  br i1 %cmp.i81.i, label %for.body.i82.for.body.i82_crit_edge.i.for.body.i82.for.body.i82_crit_edge.i_crit_edge, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.body.i82.for.body.i82_crit_edge.i.for.body.i82.for.body.i82_crit_edge.i_crit_edge: ; preds = %for.body.i82.for.body.i82_crit_edge.i
  %.pre106.i.pre = load i32* %num_slice_groups_minus1.i, align 4, !tbaa !0
  %.pre107.i.pre = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  br label %for.body.i82.for.body.i82_crit_edge.i

sw.bb22.i:                                        ; preds = %if.end19.i
  %cmp69.i.i = icmp eq i32 %5, 0
  br i1 %cmp69.i.i, label %for.cond2.preheader.i55.i, label %for.body.i62.i.preheader

for.body.i62.i.preheader:                         ; preds = %sw.bb22.i
  %conv.i57.i34 = trunc i32 %6 to i8
  store i8 %conv.i57.i34, i8* %call.i, align 1, !tbaa !1
  %cmp.i61.i35 = icmp ugt i32 %5, 1
  br i1 %cmp.i61.i35, label %for.body.i62.for.body.i62_crit_edge.i, label %for.cond2.preheader.i55.i

for.cond2.preheader.i55.i:                        ; preds = %for.body.i62.i.preheader, %for.body.i62.for.body.i62_crit_edge.i, %sw.bb22.i
  %.lcssa.i.i = phi i32 [ %6, %sw.bb22.i ], [ %6, %for.body.i62.i.preheader ], [ %20, %for.body.i62.for.body.i62_crit_edge.i ]
  %iGroup.066.i.i = add i32 %.lcssa.i.i, -1
  %cmp367.i.i = icmp sgt i32 %iGroup.066.i.i, -1
  br i1 %cmp367.i.i, label %for.body5.lr.ph.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.body5.lr.ph.i.i:                              ; preds = %for.cond2.preheader.i55.i
  %17 = sext i32 %iGroup.066.i.i to i64
  br label %for.body5.i.i

for.body.i62.for.body.i62_crit_edge.i:            ; preds = %for.body.i62.i.preheader, %for.body.i62.for.body.i62_crit_edge.i.for.body.i62.for.body.i62_crit_edge.i_crit_edge
  %.pre108.i = phi i8* [ %.pre108.i.pre, %for.body.i62.for.body.i62_crit_edge.i.for.body.i62.for.body.i62_crit_edge.i_crit_edge ], [ %call.i, %for.body.i62.i.preheader ]
  %18 = phi i32 [ %20, %for.body.i62.for.body.i62_crit_edge.i.for.body.i62.for.body.i62_crit_edge.i_crit_edge ], [ %6, %for.body.i62.i.preheader ]
  %inc.i60.i36 = phi i32 [ %inc.i60.i, %for.body.i62.for.body.i62_crit_edge.i.for.body.i62.for.body.i62_crit_edge.i_crit_edge ], [ 1, %for.body.i62.i.preheader ]
  %conv.i57.i = trunc i32 %18 to i8
  %idxprom.i58.i = zext i32 %inc.i60.i36 to i64
  %arrayidx.i59.i = getelementptr inbounds i8* %.pre108.i, i64 %idxprom.i58.i
  store i8 %conv.i57.i, i8* %arrayidx.i59.i, align 1, !tbaa !1
  %inc.i60.i = add i32 %inc.i60.i36, 1
  %19 = load i32* @PicSizeInMapUnits, align 4, !tbaa !0
  %cmp.i61.i = icmp ult i32 %inc.i60.i, %19
  %20 = load i32* %num_slice_groups_minus1.i, align 4, !tbaa !0
  br i1 %cmp.i61.i, label %for.body.i62.for.body.i62_crit_edge.i.for.body.i62.for.body.i62_crit_edge.i_crit_edge, label %for.cond2.preheader.i55.i

for.body.i62.for.body.i62_crit_edge.i.for.body.i62.for.body.i62_crit_edge.i_crit_edge: ; preds = %for.body.i62.for.body.i62_crit_edge.i
  %.pre108.i.pre = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  br label %for.body.i62.for.body.i62_crit_edge.i

for.cond2.loopexit.i.i:                           ; preds = %for.inc36.i.i, %for.body5.i.i
  %iGroup.0.i63.i = add i32 %iGroup.068.i.i, -1
  %cmp3.i64.i = icmp sgt i32 %iGroup.0.i63.i, -1
  br i1 %cmp3.i64.i, label %for.cond2.loopexit.i.i.for.body5.i.i_crit_edge, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.cond2.loopexit.i.i.for.body5.i.i_crit_edge:   ; preds = %for.cond2.loopexit.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -1
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %for.cond2.loopexit.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %17, %for.body5.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond2.loopexit.i.i.for.body5.i.i_crit_edge ]
  %iGroup.068.i.i = phi i32 [ %iGroup.066.i.i, %for.body5.lr.ph.i.i ], [ %iGroup.0.i63.i, %for.cond2.loopexit.i.i.for.body5.i.i_crit_edge ]
  %arrayidx7.i.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 11, i64 %indvars.iv.i.i
  %21 = load i32* %arrayidx7.i.i, align 4, !tbaa !0
  %22 = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  %div.i65.i = udiv i32 %21, %22
  %rem.i.i = urem i32 %21, %22
  %arrayidx13.i.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 12, i64 %indvars.iv.i.i
  %23 = load i32* %arrayidx13.i.i, align 4, !tbaa !0
  %div15.i.i = udiv i32 %23, %22
  %rem20.i.i = urem i32 %23, %22
  %cmp2263.i.i = icmp ugt i32 %div.i65.i, %div15.i.i
  br i1 %cmp2263.i.i, label %for.cond2.loopexit.i.i, label %for.cond25.preheader.lr.ph.i.i

for.cond25.preheader.lr.ph.i.i:                   ; preds = %for.body5.i.i
  %cmp2661.i.i = icmp ugt i32 %rem.i.i, %rem20.i.i
  %conv29.i.i = trunc i64 %indvars.iv.i.i to i8
  br label %for.cond25.preheader.i.i

for.cond25.preheader.i.i:                         ; preds = %for.inc36.i.i, %for.cond25.preheader.lr.ph.i.i
  %y.064.i.i = phi i32 [ %div.i65.i, %for.cond25.preheader.lr.ph.i.i ], [ %inc37.i.i, %for.inc36.i.i ]
  br i1 %cmp2661.i.i, label %for.inc36.i.i, label %for.body28.i.i

for.body28.i.i:                                   ; preds = %for.body28.i.i, %for.cond25.preheader.i.i
  %x.062.i.i = phi i32 [ %rem.i.i, %for.cond25.preheader.i.i ], [ %inc34.i.i, %for.body28.i.i ]
  %24 = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  %mul.i66.i = mul i32 %24, %y.064.i.i
  %add.i67.i = add i32 %mul.i66.i, %x.062.i.i
  %idxprom31.i.i = zext i32 %add.i67.i to i64
  %25 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %arrayidx32.i.i = getelementptr inbounds i8* %25, i64 %idxprom31.i.i
  store i8 %conv29.i.i, i8* %arrayidx32.i.i, align 1, !tbaa !1
  %inc34.i.i = add i32 %x.062.i.i, 1
  %cmp26.i.i = icmp ugt i32 %inc34.i.i, %rem20.i.i
  br i1 %cmp26.i.i, label %for.inc36.i.i, label %for.body28.i.i

for.inc36.i.i:                                    ; preds = %for.body28.i.i, %for.cond25.preheader.i.i
  %inc37.i.i = add i32 %y.064.i.i, 1
  %cmp22.i68.i = icmp ugt i32 %inc37.i.i, %div15.i.i
  br i1 %cmp22.i68.i, label %for.cond2.loopexit.i.i, label %for.cond25.preheader.i.i

sw.bb23.i:                                        ; preds = %if.end19.i
  %slice_group_change_rate_minus1.i33.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 14
  %26 = load i32* %slice_group_change_rate_minus1.i33.i, align 4, !tbaa !0
  %add.i34.i = add i32 %26, 1
  %slice_group_change_cycle.i35.i = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 147
  %27 = load i32* %slice_group_change_cycle.i35.i, align 4, !tbaa !0
  %mul.i36.i = mul i32 %add.i34.i, %27
  %cmp.i37.i = icmp ult i32 %mul.i36.i, %5
  %mul..i38.i = select i1 %cmp.i37.i, i32 %mul.i36.i, i32 %5
  %cmp5181.i.i = icmp eq i32 %5, 0
  br i1 %cmp5181.i.i, label %for.end.i.i, label %for.body.i43.i.preheader

for.body.i43.i.preheader:                         ; preds = %sw.bb23.i
  store i8 2, i8* %call.i, align 1, !tbaa !1
  %cmp5.i42.i40 = icmp ugt i32 %5, 1
  br i1 %cmp5.i42.i40, label %for.body.i43.for.body.i43_crit_edge.i, label %for.cond.for.end_crit_edge.i.i

for.body.i43.for.body.i43_crit_edge.i:            ; preds = %for.body.i43.i.preheader, %for.body.i43.for.body.i43_crit_edge.i.for.body.i43.for.body.i43_crit_edge.i_crit_edge
  %.pre109.i = phi i8* [ %.pre109.i.pre, %for.body.i43.for.body.i43_crit_edge.i.for.body.i43.for.body.i43_crit_edge.i_crit_edge ], [ %call.i, %for.body.i43.i.preheader ]
  %inc.i41.i41 = phi i32 [ %inc.i41.i, %for.body.i43.for.body.i43_crit_edge.i.for.body.i43.for.body.i43_crit_edge.i_crit_edge ], [ 1, %for.body.i43.i.preheader ]
  %idxprom.i39.i = zext i32 %inc.i41.i41 to i64
  %arrayidx.i40.i = getelementptr inbounds i8* %.pre109.i, i64 %idxprom.i39.i
  store i8 2, i8* %arrayidx.i40.i, align 1, !tbaa !1
  %inc.i41.i = add i32 %inc.i41.i41, 1
  %28 = load i32* @PicSizeInMapUnits, align 4, !tbaa !0
  %cmp5.i42.i = icmp ult i32 %inc.i41.i, %28
  br i1 %cmp5.i42.i, label %for.body.i43.for.body.i43_crit_edge.i.for.body.i43.for.body.i43_crit_edge.i_crit_edge, label %for.cond.for.end_crit_edge.i.i

for.body.i43.for.body.i43_crit_edge.i.for.body.i43.for.body.i43_crit_edge.i_crit_edge: ; preds = %for.body.i43.for.body.i43_crit_edge.i
  %.pre109.i.pre = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  br label %for.body.i43.for.body.i43_crit_edge.i

for.cond.for.end_crit_edge.i.i:                   ; preds = %for.body.i43.for.body.i43_crit_edge.i, %for.body.i43.i.preheader
  %.lcssa39 = phi i32 [ 1, %for.body.i43.i.preheader ], [ %28, %for.body.i43.for.body.i43_crit_edge.i ]
  %phitmp.i.i = icmp eq i32 %.lcssa39, 0
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.cond.for.end_crit_edge.i.i, %sw.bb23.i
  %29 = phi i1 [ true, %sw.bb23.i ], [ %phitmp.i.i, %for.cond.for.end_crit_edge.i.i ]
  %30 = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  %slice_group_change_direction_flag.i45.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 13
  %31 = load i32* %slice_group_change_direction_flag.i45.i, align 4, !tbaa !1
  %sub.i46.i = sub i32 %30, %31
  %div.i.i = lshr i32 %sub.i46.i, 1
  %32 = load i32* %PicHeightInMapUnits.i, align 4, !tbaa !0
  %sub7.i.i = sub i32 %32, %31
  %div8.i.i = lshr i32 %sub7.i.i, 1
  br i1 %29, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body14.lr.ph.i.i

for.body14.lr.ph.i.i:                             ; preds = %for.end.i.i
  %sub10.i.i = add i32 %31, -1
  br label %for.body14.i.i

for.body14.i.i:                                   ; preds = %for.inc114.for.body14_crit_edge.i.i, %for.body14.lr.ph.i.i
  %33 = phi i32 [ %30, %for.body14.lr.ph.i.i ], [ %.pre.i53.i, %for.inc114.for.body14_crit_edge.i.i ]
  %k.0180.i.i = phi i32 [ 0, %for.body14.lr.ph.i.i ], [ %add115.i.i, %for.inc114.for.body14_crit_edge.i.i ]
  %yDir.0179.i.i = phi i32 [ %31, %for.body14.lr.ph.i.i ], [ %yDir.1.i.i, %for.inc114.for.body14_crit_edge.i.i ]
  %xDir.0178.i.i = phi i32 [ %sub10.i.i, %for.body14.lr.ph.i.i ], [ %xDir.1.i.i, %for.inc114.for.body14_crit_edge.i.i ]
  %y.0177.i.i = phi i32 [ %div8.i.i, %for.body14.lr.ph.i.i ], [ %y.1.i.i, %for.inc114.for.body14_crit_edge.i.i ]
  %x.0176.i.i = phi i32 [ %div.i.i, %for.body14.lr.ph.i.i ], [ %x.1.i.i, %for.inc114.for.body14_crit_edge.i.i ]
  %bottomBound.0175.i.i = phi i32 [ %div8.i.i, %for.body14.lr.ph.i.i ], [ %bottomBound.1.i.i, %for.inc114.for.body14_crit_edge.i.i ]
  %rightBound.0174.i.i = phi i32 [ %div.i.i, %for.body14.lr.ph.i.i ], [ %rightBound.1.i.i, %for.inc114.for.body14_crit_edge.i.i ]
  %topBound.0173.i.i = phi i32 [ %div8.i.i, %for.body14.lr.ph.i.i ], [ %topBound.1.i.i, %for.inc114.for.body14_crit_edge.i.i ]
  %leftBound.0172.i.i = phi i32 [ %div.i.i, %for.body14.lr.ph.i.i ], [ %leftBound.1.i.i, %for.inc114.for.body14_crit_edge.i.i ]
  %mul16.i.i = mul i32 %y.0177.i.i, %33
  %add17.i48.i = add i32 %mul16.i.i, %x.0176.i.i
  %idxprom18.i.i = zext i32 %add17.i48.i to i64
  %34 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %arrayidx19.i.i = getelementptr inbounds i8* %34, i64 %idxprom18.i.i
  %35 = load i8* %arrayidx19.i.i, align 1, !tbaa !1
  %cmp20.i.i = icmp eq i8 %35, 2
  %conv21.i.i = zext i1 %cmp20.i.i to i32
  br i1 %cmp20.i.i, label %if.then.i49.i, label %if.end.i.i

if.then.i49.i:                                    ; preds = %for.body14.i.i
  %cmp22.i.i = icmp uge i32 %k.0180.i.i, %mul..i38.i
  %conv24.i.i = zext i1 %cmp22.i.i to i8
  store i8 %conv24.i.i, i8* %arrayidx19.i.i, align 1, !tbaa !1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i49.i, %for.body14.i.i
  %cmp30.i.i = icmp eq i32 %xDir.0178.i.i, -1
  %cmp32.i.i = icmp eq i32 %x.0176.i.i, %leftBound.0172.i.i
  %or.cond.i50.i = and i1 %cmp30.i.i, %cmp32.i.i
  br i1 %or.cond.i50.i, label %if.then34.i.i, label %if.else.i51.i

if.then34.i.i:                                    ; preds = %if.end.i.i
  %sub35.i.i = add nsw i32 %x.0176.i.i, -1
  %cmp36.i.i = icmp sgt i32 %sub35.i.i, 0
  %sub35..i.i = select i1 %cmp36.i.i, i32 %sub35.i.i, i32 0
  %36 = load i32* %slice_group_change_direction_flag.i45.i, align 4, !tbaa !1
  %mul44.i.i = shl i32 %36, 1
  %sub45.i.i = add i32 %mul44.i.i, -1
  br label %for.inc114.i.i

if.else.i51.i:                                    ; preds = %if.end.i.i
  %cmp46.i.i = icmp eq i32 %xDir.0178.i.i, 1
  %cmp49.i.i = icmp eq i32 %x.0176.i.i, %rightBound.0174.i.i
  %or.cond168.i.i = and i1 %cmp46.i.i, %cmp49.i.i
  br i1 %or.cond168.i.i, label %if.then51.i.i, label %if.else67.i.i

if.then51.i.i:                                    ; preds = %if.else.i51.i
  %add52.i.i = add nsw i32 %x.0176.i.i, 1
  %37 = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  %sub54.i.i = add nsw i32 %37, -1
  %cmp55.i.i = icmp slt i32 %add52.i.i, %sub54.i.i
  %add52.sub54.i.i = select i1 %cmp55.i.i, i32 %add52.i.i, i32 %sub54.i.i
  %38 = load i32* %slice_group_change_direction_flag.i45.i, align 4, !tbaa !1
  %mul65.i.i = shl i32 %38, 1
  %sub66.i.i = sub i32 1, %mul65.i.i
  br label %for.inc114.i.i

if.else67.i.i:                                    ; preds = %if.else.i51.i
  %cmp68.i.i = icmp eq i32 %yDir.0179.i.i, -1
  %cmp71.i.i = icmp eq i32 %y.0177.i.i, %topBound.0173.i.i
  %or.cond169.i.i = and i1 %cmp68.i.i, %cmp71.i.i
  br i1 %or.cond169.i.i, label %if.then73.i.i, label %if.else85.i.i

if.then73.i.i:                                    ; preds = %if.else67.i.i
  %sub74.i.i = add nsw i32 %y.0177.i.i, -1
  %cmp75.i.i = icmp sgt i32 %sub74.i.i, 0
  %sub74..i.i = select i1 %cmp75.i.i, i32 %sub74.i.i, i32 0
  %39 = load i32* %slice_group_change_direction_flag.i45.i, align 4, !tbaa !1
  %mul83.i.i = shl i32 %39, 1
  %sub84.i.i = sub i32 1, %mul83.i.i
  br label %for.inc114.i.i

if.else85.i.i:                                    ; preds = %if.else67.i.i
  %cmp86.i.i = icmp eq i32 %yDir.0179.i.i, 1
  %cmp89.i.i = icmp eq i32 %y.0177.i.i, %bottomBound.0175.i.i
  %or.cond170.i.i = and i1 %cmp86.i.i, %cmp89.i.i
  br i1 %or.cond170.i.i, label %if.then91.i.i, label %if.else107.i.i

if.then91.i.i:                                    ; preds = %if.else85.i.i
  %add92.i.i = add nsw i32 %y.0177.i.i, 1
  %40 = load i32* %PicHeightInMapUnits.i, align 4, !tbaa !0
  %sub94.i.i = add nsw i32 %40, -1
  %cmp95.i.i = icmp slt i32 %add92.i.i, %sub94.i.i
  %add92.sub94.i.i = select i1 %cmp95.i.i, i32 %add92.i.i, i32 %sub94.i.i
  %41 = load i32* %slice_group_change_direction_flag.i45.i, align 4, !tbaa !1
  %mul105.i.i = shl i32 %41, 1
  %sub106.i.i = add i32 %mul105.i.i, -1
  br label %for.inc114.i.i

if.else107.i.i:                                   ; preds = %if.else85.i.i
  %add108.i.i = add nsw i32 %x.0176.i.i, %xDir.0178.i.i
  %add109.i.i = add nsw i32 %y.0177.i.i, %yDir.0179.i.i
  br label %for.inc114.i.i

for.inc114.i.i:                                   ; preds = %if.else107.i.i, %if.then91.i.i, %if.then73.i.i, %if.then51.i.i, %if.then34.i.i
  %leftBound.1.i.i = phi i32 [ %sub35..i.i, %if.then34.i.i ], [ %leftBound.0172.i.i, %if.then51.i.i ], [ %leftBound.0172.i.i, %if.then73.i.i ], [ %leftBound.0172.i.i, %if.then91.i.i ], [ %leftBound.0172.i.i, %if.else107.i.i ]
  %topBound.1.i.i = phi i32 [ %topBound.0173.i.i, %if.then34.i.i ], [ %topBound.0173.i.i, %if.then51.i.i ], [ %sub74..i.i, %if.then73.i.i ], [ %topBound.0173.i.i, %if.then91.i.i ], [ %topBound.0173.i.i, %if.else107.i.i ]
  %rightBound.1.i.i = phi i32 [ %rightBound.0174.i.i, %if.then34.i.i ], [ %add52.sub54.i.i, %if.then51.i.i ], [ %rightBound.0174.i.i, %if.then73.i.i ], [ %rightBound.0174.i.i, %if.then91.i.i ], [ %rightBound.0174.i.i, %if.else107.i.i ]
  %bottomBound.1.i.i = phi i32 [ %bottomBound.0175.i.i, %if.then34.i.i ], [ %bottomBound.0175.i.i, %if.then51.i.i ], [ %bottomBound.0175.i.i, %if.then73.i.i ], [ %add92.sub94.i.i, %if.then91.i.i ], [ %bottomBound.0175.i.i, %if.else107.i.i ]
  %x.1.i.i = phi i32 [ %sub35..i.i, %if.then34.i.i ], [ %add52.sub54.i.i, %if.then51.i.i ], [ %x.0176.i.i, %if.then73.i.i ], [ %x.0176.i.i, %if.then91.i.i ], [ %add108.i.i, %if.else107.i.i ]
  %y.1.i.i = phi i32 [ %y.0177.i.i, %if.then34.i.i ], [ %y.0177.i.i, %if.then51.i.i ], [ %sub74..i.i, %if.then73.i.i ], [ %add92.sub94.i.i, %if.then91.i.i ], [ %add109.i.i, %if.else107.i.i ]
  %xDir.1.i.i = phi i32 [ 0, %if.then34.i.i ], [ 0, %if.then51.i.i ], [ %sub84.i.i, %if.then73.i.i ], [ %sub106.i.i, %if.then91.i.i ], [ %xDir.0178.i.i, %if.else107.i.i ]
  %yDir.1.i.i = phi i32 [ %sub45.i.i, %if.then34.i.i ], [ %sub66.i.i, %if.then51.i.i ], [ 0, %if.then73.i.i ], [ 0, %if.then91.i.i ], [ %yDir.0179.i.i, %if.else107.i.i ]
  %add115.i.i = add i32 %conv21.i.i, %k.0180.i.i
  %42 = load i32* @PicSizeInMapUnits, align 4, !tbaa !0
  %cmp13.i52.i = icmp ult i32 %add115.i.i, %42
  br i1 %cmp13.i52.i, label %for.inc114.for.body14_crit_edge.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.inc114.for.body14_crit_edge.i.i:              ; preds = %for.inc114.i.i
  %.pre.i53.i = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  br label %for.body14.i.i

sw.bb24.i:                                        ; preds = %if.end19.i
  %slice_group_change_rate_minus1.i13.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 14
  %43 = load i32* %slice_group_change_rate_minus1.i13.i, align 4, !tbaa !0
  %add.i14.i = add i32 %43, 1
  %slice_group_change_cycle.i15.i = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 147
  %44 = load i32* %slice_group_change_cycle.i15.i, align 4, !tbaa !0
  %mul.i16.i = mul i32 %add.i14.i, %44
  %cmp.i17.i = icmp ult i32 %mul.i16.i, %5
  %mul..i18.i = select i1 %cmp.i17.i, i32 %mul.i16.i, i32 %5
  %slice_group_change_direction_flag.i19.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 13
  %45 = load i32* %slice_group_change_direction_flag.i19.i, align 4, !tbaa !1
  %tobool.i20.i = icmp eq i32 %45, 0
  %sub.i21.i = sub i32 %5, %mul..i18.i
  %mul..sub.i22.i = select i1 %tobool.i20.i, i32 %mul..i18.i, i32 %sub.i21.i
  %cmp926.i.i = icmp eq i32 %5, 0
  br i1 %cmp926.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.i23.i

for.body.i23.i:                                   ; preds = %sw.bb24.i, %for.inc.for.body_crit_edge.i.i
  %46 = phi i32 [ %.pre.i32.i, %for.inc.for.body_crit_edge.i.i ], [ %45, %sw.bb24.i ]
  %i.027.i.i = phi i32 [ %inc.i29.i, %for.inc.for.body_crit_edge.i.i ], [ 0, %sw.bb24.i ]
  %cmp10.i.i = icmp ult i32 %i.027.i.i, %mul..sub.i22.i
  br i1 %cmp10.i.i, label %if.then.i27.i, label %if.else.i28.i

if.then.i27.i:                                    ; preds = %for.body.i23.i
  %conv.i24.i = trunc i32 %46 to i8
  %idxprom.i25.i = zext i32 %i.027.i.i to i64
  %47 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %arrayidx.i26.i = getelementptr inbounds i8* %47, i64 %idxprom.i25.i
  store i8 %conv.i24.i, i8* %arrayidx.i26.i, align 1, !tbaa !1
  br label %for.inc.i31.i

if.else.i28.i:                                    ; preds = %for.body.i23.i
  %sub13.i.i = sub i32 1, %46
  %conv14.i.i = trunc i32 %sub13.i.i to i8
  %idxprom15.i.i = zext i32 %i.027.i.i to i64
  %48 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %arrayidx16.i.i = getelementptr inbounds i8* %48, i64 %idxprom15.i.i
  store i8 %conv14.i.i, i8* %arrayidx16.i.i, align 1, !tbaa !1
  br label %for.inc.i31.i

for.inc.i31.i:                                    ; preds = %if.else.i28.i, %if.then.i27.i
  %inc.i29.i = add i32 %i.027.i.i, 1
  %49 = load i32* @PicSizeInMapUnits, align 4, !tbaa !0
  %cmp9.i30.i = icmp ult i32 %inc.i29.i, %49
  br i1 %cmp9.i30.i, label %for.inc.for.body_crit_edge.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.inc.for.body_crit_edge.i.i:                   ; preds = %for.inc.i31.i
  %.pre.i32.i = load i32* %slice_group_change_direction_flag.i19.i, align 4, !tbaa !1
  br label %for.body.i23.i

sw.bb25.i:                                        ; preds = %if.end19.i
  %slice_group_change_rate_minus1.i.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 14
  %50 = load i32* %slice_group_change_rate_minus1.i.i, align 4, !tbaa !0
  %add.i6.i = add i32 %50, 1
  %slice_group_change_cycle.i.i = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 147
  %51 = load i32* %slice_group_change_cycle.i.i, align 4, !tbaa !0
  %mul.i.i = mul i32 %add.i6.i, %51
  %cmp.i7.i = icmp ult i32 %mul.i.i, %5
  %mul..i.i = select i1 %cmp.i7.i, i32 %mul.i.i, i32 %5
  %slice_group_change_direction_flag.i.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 13
  %52 = load i32* %slice_group_change_direction_flag.i.i, align 4, !tbaa !1
  %tobool.i.i = icmp eq i32 %52, 0
  %sub.i.i = sub i32 %5, %mul..i.i
  %mul..sub.i.i = select i1 %tobool.i.i, i32 %mul..i.i, i32 %sub.i.i
  %53 = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  %cmp948.i.i = icmp eq i32 %53, 0
  br i1 %cmp948.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.cond10.preheader.lr.ph.i.i

for.cond10.preheader.lr.ph.i.i:                   ; preds = %sw.bb25.i
  %.pre.i8.i = load i32* %PicHeightInMapUnits.i, align 4, !tbaa !0
  br label %for.cond10.preheader.i.i

for.cond10.preheader.i.i:                         ; preds = %for.inc27.i.i, %for.cond10.preheader.lr.ph.i.i
  %54 = phi i32 [ %53, %for.cond10.preheader.lr.ph.i.i ], [ %62, %for.inc27.i.i ]
  %55 = phi i32 [ %.pre.i8.i, %for.cond10.preheader.lr.ph.i.i ], [ %63, %for.inc27.i.i ]
  %k.050.i.i = phi i32 [ 0, %for.cond10.preheader.lr.ph.i.i ], [ %k.1.lcssa.i.i, %for.inc27.i.i ]
  %j.049.i.i = phi i32 [ 0, %for.cond10.preheader.lr.ph.i.i ], [ %inc28.i.i, %for.inc27.i.i ]
  %cmp1145.i.i = icmp eq i32 %55, 0
  br i1 %cmp1145.i.i, label %for.inc27.i.i, label %for.body12.i.i

for.body12.i.i:                                   ; preds = %for.inc.i.i, %for.cond10.preheader.i.i
  %k.147.i.i = phi i32 [ %k.050.i.i, %for.cond10.preheader.i.i ], [ %inc.i9.i, %for.inc.i.i ]
  %i.046.i.i = phi i32 [ 0, %for.cond10.preheader.i.i ], [ %inc26.i.i, %for.inc.i.i ]
  %inc.i9.i = add i32 %k.147.i.i, 1
  %cmp13.i.i = icmp ult i32 %k.147.i.i, %mul..sub.i.i
  %56 = load i32* %slice_group_change_direction_flag.i.i, align 4, !tbaa !1
  br i1 %cmp13.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body12.i.i
  %sub15.i.i = sub i32 1, %56
  %conv.i10.i = trunc i32 %sub15.i.i to i8
  %57 = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  %mul17.i.i = mul i32 %57, %i.046.i.i
  %add18.i.i = add i32 %mul17.i.i, %j.049.i.i
  %idxprom.i11.i = zext i32 %add18.i.i to i64
  %58 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %arrayidx.i12.i = getelementptr inbounds i8* %58, i64 %idxprom.i11.i
  store i8 %conv.i10.i, i8* %arrayidx.i12.i, align 1, !tbaa !1
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body12.i.i
  %conv20.i.i = trunc i32 %56 to i8
  %59 = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  %mul22.i.i = mul i32 %59, %i.046.i.i
  %add23.i.i = add i32 %mul22.i.i, %j.049.i.i
  %idxprom24.i.i = zext i32 %add23.i.i to i64
  %60 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %arrayidx25.i.i = getelementptr inbounds i8* %60, i64 %idxprom24.i.i
  store i8 %conv20.i.i, i8* %arrayidx25.i.i, align 1, !tbaa !1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %inc26.i.i = add i32 %i.046.i.i, 1
  %61 = load i32* %PicHeightInMapUnits.i, align 4, !tbaa !0
  %cmp11.i.i = icmp ult i32 %inc26.i.i, %61
  br i1 %cmp11.i.i, label %for.body12.i.i, label %for.cond10.for.inc27_crit_edge.i.i

for.cond10.for.inc27_crit_edge.i.i:               ; preds = %for.inc.i.i
  %.pre51.i.i = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  br label %for.inc27.i.i

for.inc27.i.i:                                    ; preds = %for.cond10.for.inc27_crit_edge.i.i, %for.cond10.preheader.i.i
  %62 = phi i32 [ %.pre51.i.i, %for.cond10.for.inc27_crit_edge.i.i ], [ %54, %for.cond10.preheader.i.i ]
  %63 = phi i32 [ %61, %for.cond10.for.inc27_crit_edge.i.i ], [ 0, %for.cond10.preheader.i.i ]
  %k.1.lcssa.i.i = phi i32 [ %inc.i9.i, %for.cond10.for.inc27_crit_edge.i.i ], [ %k.050.i.i, %for.cond10.preheader.i.i ]
  %inc28.i.i = add i32 %j.049.i.i, 1
  %cmp9.i.i = icmp ult i32 %inc28.i.i, %62
  br i1 %cmp9.i.i, label %for.cond10.preheader.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

sw.bb26.i:                                        ; preds = %if.end19.i
  %cmp1.i1.i = icmp eq i32 %5, 0
  br i1 %cmp1.i1.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb26.i
  %slice_group_id.i.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 16
  %64 = load i8** %slice_group_id.i.i, align 8, !tbaa !3
  %65 = load i8* %64, align 1, !tbaa !1
  store i8 %65, i8* %call.i, align 1, !tbaa !1
  %cmp.i5.i47 = icmp ugt i32 %5, 1
  br i1 %cmp.i5.i47, label %for.body.i.for.body.i_crit_edge.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.body.i.for.body.i_crit_edge.i:                ; preds = %for.body.lr.ph.i.i, %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge
  %66 = phi i8* [ %.pre67, %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge ], [ %64, %for.body.lr.ph.i.i ]
  %.pre110.i = phi i8* [ %.pre110.i.pre, %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge ], [ %call.i, %for.body.lr.ph.i.i ]
  %inc.i4.i48 = phi i32 [ %inc.i4.i, %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge ], [ 1, %for.body.lr.ph.i.i ]
  %idxprom.i2.i = zext i32 %inc.i4.i48 to i64
  %arrayidx.i3.i = getelementptr inbounds i8* %66, i64 %idxprom.i2.i
  %67 = load i8* %arrayidx.i3.i, align 1, !tbaa !1
  %arrayidx2.i.i = getelementptr inbounds i8* %.pre110.i, i64 %idxprom.i2.i
  store i8 %67, i8* %arrayidx2.i.i, align 1, !tbaa !1
  %inc.i4.i = add i32 %inc.i4.i48, 1
  %68 = load i32* @PicSizeInMapUnits, align 4, !tbaa !0
  %cmp.i5.i = icmp ult i32 %inc.i4.i, %68
  br i1 %cmp.i5.i, label %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge: ; preds = %for.body.i.for.body.i_crit_edge.i
  %.pre110.i.pre = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %.pre67 = load i8** %slice_group_id.i.i, align 8, !tbaa !3
  br label %for.body.i.for.body.i_crit_edge.i

sw.default.i:                                     ; preds = %if.end19.i
  %call28.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), i32 %7) #7
  tail call void @exit(i32 -1) #8
  unreachable

FmoGenerateMapUnitToSliceGroupMap.exit:           ; preds = %for.body.lr.ph.i.i, %for.body.i.for.body.i_crit_edge.i, %for.inc27.i.i, %for.inc.i31.i, %for.inc114.i.i, %for.cond2.loopexit.i.i, %for.body.i82.i.preheader, %for.body.i82.for.body.i82_crit_edge.i, %do.cond.i.i, %if.then16.i, %sw.bb21.i, %for.cond2.preheader.i55.i, %for.end.i.i, %sw.bb24.i, %sw.bb25.i, %sw.bb26.i
  %69 = load i8** @MBAmap, align 8, !tbaa !3
  %tobool.i5 = icmp eq i8* %69, null
  br i1 %tobool.i5, label %if.end.i, label %if.then.i6

if.then.i6:                                       ; preds = %FmoGenerateMapUnitToSliceGroupMap.exit
  tail call void @free(i8* %69) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i6, %FmoGenerateMapUnitToSliceGroupMap.exit
  %PicSizeInMbs.i = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 110
  %70 = load i32* %PicSizeInMbs.i, align 4, !tbaa !0
  %conv.i7 = zext i32 %70 to i64
  %call.i8 = tail call noalias i8* @malloc(i64 %conv.i7) #7
  store i8* %call.i8, i8** @MBAmap, align 8, !tbaa !3
  %cmp.i9 = icmp eq i8* %call.i8, null
  br i1 %cmp.i9, label %if.then2.i10, label %if.end7.i

if.then2.i10:                                     ; preds = %if.end.i
  %call6.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i64 %conv.i7) #7
  tail call void @exit(i32 -1) #8
  unreachable

if.end7.i:                                        ; preds = %if.end.i
  %frame_mbs_only_flag.i = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25
  %71 = load i32* %frame_mbs_only_flag.i, align 4, !tbaa !1
  %tobool8.i = icmp eq i32 %71, 0
  br i1 %tobool8.i, label %lor.lhs.false.i, label %for.cond.preheader.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %field_picture.i = getelementptr inbounds %struct.ImageParameters* %img, i64 0, i32 100
  %72 = load i32* %field_picture.i, align 4, !tbaa !0
  %tobool9.i = icmp eq i32 %72, 0
  br i1 %tobool9.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i, %if.end7.i
  %cmp121.i = icmp eq i32 %70, 0
  br i1 %cmp121.i, label %FmoGenerateMBAmap.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %73 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %74 = load i8* %73, align 1, !tbaa !1
  store i8 %74, i8* %call.i8, align 1, !tbaa !1
  %cmp12.i18 = icmp ugt i32 %70, 1
  br i1 %cmp12.i18, label %for.body.for.body_crit_edge.i, label %FmoGenerateMBAmap.exit

for.body.for.body_crit_edge.i:                    ; preds = %for.body.i.preheader, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
  %75 = phi i8* [ %.pre61, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ], [ %73, %for.body.i.preheader ]
  %.pre10.i = phi i8* [ %.pre10.i.pre, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ], [ %call.i8, %for.body.i.preheader ]
  %inc.i19 = phi i32 [ %inc.i, %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge ], [ 1, %for.body.i.preheader ]
  %idxprom.i = zext i32 %inc.i19 to i64
  %arrayidx.i = getelementptr inbounds i8* %75, i64 %idxprom.i
  %76 = load i8* %arrayidx.i, align 1, !tbaa !1
  %arrayidx15.i = getelementptr inbounds i8* %.pre10.i, i64 %idxprom.i
  store i8 %76, i8* %arrayidx15.i, align 1, !tbaa !1
  %inc.i = add i32 %inc.i19, 1
  %77 = load i32* %PicSizeInMbs.i, align 4, !tbaa !0
  %cmp12.i = icmp ult i32 %inc.i, %77
  br i1 %cmp12.i, label %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge, label %FmoGenerateMBAmap.exit

for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge: ; preds = %for.body.for.body_crit_edge.i
  %.pre10.i.pre = load i8** @MBAmap, align 8, !tbaa !3
  %.pre61 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  br label %for.body.for.body_crit_edge.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %mb_adaptive_frame_field_flag.i = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 26
  %78 = load i32* %mb_adaptive_frame_field_flag.i, align 4, !tbaa !1
  %tobool16.i = icmp eq i32 %78, 0
  %cmp354.i = icmp eq i32 %70, 0
  br i1 %tobool16.i, label %for.cond33.preheader.i, label %for.cond20.preheader.i

for.cond20.preheader.i:                           ; preds = %if.else.i
  br i1 %cmp354.i, label %FmoGenerateMBAmap.exit, label %for.body24.i.preheader

for.body24.i.preheader:                           ; preds = %for.cond20.preheader.i
  %79 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %80 = load i8* %79, align 1, !tbaa !1
  store i8 %80, i8* %call.i8, align 1, !tbaa !1
  %cmp22.i15 = icmp ugt i32 %70, 1
  br i1 %cmp22.i15, label %for.body24.for.body24_crit_edge.i, label %FmoGenerateMBAmap.exit

for.cond33.preheader.i:                           ; preds = %if.else.i
  br i1 %cmp354.i, label %FmoGenerateMBAmap.exit, label %for.body37.i

for.body24.for.body24_crit_edge.i:                ; preds = %for.body24.i.preheader, %for.body24.for.body24_crit_edge.i.for.body24.for.body24_crit_edge.i_crit_edge
  %81 = phi i8* [ %.pre, %for.body24.for.body24_crit_edge.i.for.body24.for.body24_crit_edge.i_crit_edge ], [ %79, %for.body24.i.preheader ]
  %.pre9.i = phi i8* [ %.pre9.i.pre, %for.body24.for.body24_crit_edge.i.for.body24.for.body24_crit_edge.i_crit_edge ], [ %call.i8, %for.body24.i.preheader ]
  %inc30.i16 = phi i32 [ %inc30.i, %for.body24.for.body24_crit_edge.i.for.body24.for.body24_crit_edge.i_crit_edge ], [ 1, %for.body24.i.preheader ]
  %div.i = lshr i32 %inc30.i16, 1
  %idxprom25.i = zext i32 %div.i to i64
  %arrayidx26.i = getelementptr inbounds i8* %81, i64 %idxprom25.i
  %82 = load i8* %arrayidx26.i, align 1, !tbaa !1
  %idxprom27.i = zext i32 %inc30.i16 to i64
  %arrayidx28.i = getelementptr inbounds i8* %.pre9.i, i64 %idxprom27.i
  store i8 %82, i8* %arrayidx28.i, align 1, !tbaa !1
  %inc30.i = add i32 %inc30.i16, 1
  %83 = load i32* %PicSizeInMbs.i, align 4, !tbaa !0
  %cmp22.i = icmp ult i32 %inc30.i, %83
  br i1 %cmp22.i, label %for.body24.for.body24_crit_edge.i.for.body24.for.body24_crit_edge.i_crit_edge, label %FmoGenerateMBAmap.exit

for.body24.for.body24_crit_edge.i.for.body24.for.body24_crit_edge.i_crit_edge: ; preds = %for.body24.for.body24_crit_edge.i
  %.pre9.i.pre = load i8** @MBAmap, align 8, !tbaa !3
  %.pre = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  br label %for.body24.for.body24_crit_edge.i

for.body37.i:                                     ; preds = %for.cond33.preheader.i, %for.body37.for.body37_crit_edge.i
  %84 = phi i8* [ %.pre.i13, %for.body37.for.body37_crit_edge.i ], [ %call.i8, %for.cond33.preheader.i ]
  %i.25.i = phi i32 [ %inc48.i, %for.body37.for.body37_crit_edge.i ], [ 0, %for.cond33.preheader.i ]
  %85 = load i32* %PicWidthInMbs.i, align 4, !tbaa !0
  %mul38.i = shl i32 %85, 1
  %div39.i = udiv i32 %i.25.i, %mul38.i
  %mul41.i = mul i32 %div39.i, %85
  %rem.i = urem i32 %i.25.i, %85
  %add.i12 = add i32 %mul41.i, %rem.i
  %idxprom43.i = zext i32 %add.i12 to i64
  %86 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %arrayidx44.i = getelementptr inbounds i8* %86, i64 %idxprom43.i
  %87 = load i8* %arrayidx44.i, align 1, !tbaa !1
  %idxprom45.i = zext i32 %i.25.i to i64
  %arrayidx46.i = getelementptr inbounds i8* %84, i64 %idxprom45.i
  store i8 %87, i8* %arrayidx46.i, align 1, !tbaa !1
  %inc48.i = add i32 %i.25.i, 1
  %88 = load i32* %PicSizeInMbs.i, align 4, !tbaa !0
  %cmp35.i = icmp ult i32 %inc48.i, %88
  br i1 %cmp35.i, label %for.body37.for.body37_crit_edge.i, label %FmoGenerateMBAmap.exit

for.body37.for.body37_crit_edge.i:                ; preds = %for.body37.i
  %.pre.i13 = load i8** @MBAmap, align 8, !tbaa !3
  br label %for.body37.i

FmoGenerateMBAmap.exit:                           ; preds = %for.body.i.preheader, %for.body.for.body_crit_edge.i, %for.body24.i.preheader, %for.body24.for.body24_crit_edge.i, %for.body37.i, %for.cond.preheader.i, %for.cond20.preheader.i, %for.cond33.preheader.i
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @FmoUninit() #0 {
entry:
  %0 = load i8** @MBAmap, align 8, !tbaa !3
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #7
  store i8* null, i8** @MBAmap, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = load i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  %tobool1 = icmp eq i8* %1, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @free(i8* %1) #7
  store i8* null, i8** @MapUnitToSliceGroupMap, align 8, !tbaa !3
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @FmoStartPicture() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = trunc i64 %indvars.iv to i32
  %call = tail call i32 @FmoGetFirstMBOfSliceGroup(i32 %0) #9
  %arrayidx = getelementptr inbounds [8 x i32]* @FirstMBInSlice, i64 0, i64 %indvars.iv
  store i32 %call, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FmoGetFirstMBOfSliceGroup(i32 %SliceGroupID) #2 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %PicSizeInMbs7 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 110
  %1 = load i32* %PicSizeInMbs7, align 4, !tbaa !0
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %2 = load i8** @MBAmap, align 8, !tbaa !3
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %1
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond
  %indvars.iv = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.cond ]
  %i.09 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.cond ]
  %arrayidx.i = getelementptr inbounds i8* %2, i64 %indvars.iv
  %4 = load i8* %arrayidx.i, align 1, !tbaa !1
  %conv.i = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv.i, %SliceGroupID
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.09, 1
  br i1 %cmp1, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %i.09, %land.rhs ], [ %inc, %while.cond ]
  %cmp3 = icmp slt i32 %i.0.lcssa, %1
  %i.0. = select i1 %cmp3, i32 %i.0.lcssa, i32 -1
  ret i32 %i.0.
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @FmoEndPicture() #3 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FmoMB2SliceGroup(i32 %mb) #2 {
entry:
  %idxprom = sext i32 %mb to i64
  %0 = load i8** @MBAmap, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %0, i64 %idxprom
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FmoGetNextMBNr(i32 %CurrentMbNr) #2 {
entry:
  %idxprom.i = sext i32 %CurrentMbNr to i64
  %0 = load i8** @MBAmap, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds i8* %0, i64 %idxprom.i
  %1 = load i8* %arrayidx.i, align 1, !tbaa !1
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 110
  %3 = load i32* %PicSizeInMbs, align 4, !tbaa !0
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.rhs ], [ %idxprom.i, %entry ]
  %CurrentMbNr.addr.0 = phi i32 [ %inc, %land.rhs ], [ %CurrentMbNr, %entry ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %CurrentMbNr.addr.0, 1
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %4, %3
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i8* %0, i64 %indvars.iv.next
  %5 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %5, %1
  br i1 %cmp1, label %while.end, label %while.cond

while.end:                                        ; preds = %land.rhs, %while.cond
  %cmp4 = icmp slt i32 %inc, %3
  %inc. = select i1 %cmp4, i32 %inc, i32 -1
  ret i32 %inc.
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FmoGetPreviousMBNr(i32 %CurrentMbNr) #2 {
entry:
  %idxprom.i = sext i32 %CurrentMbNr to i64
  %0 = load i8** @MBAmap, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds i8* %0, i64 %idxprom.i
  %1 = load i8* %arrayidx.i, align 1, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.rhs ], [ %idxprom.i, %entry ]
  %CurrentMbNr.addr.0.in = phi i32 [ %CurrentMbNr.addr.0, %land.rhs ], [ %CurrentMbNr, %entry ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %CurrentMbNr.addr.0 = add nsw i32 %CurrentMbNr.addr.0.in, -1
  %2 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i8* %0, i64 %indvars.iv.next
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %3, %1
  br i1 %cmp1, label %while.end, label %while.cond

while.end:                                        ; preds = %land.rhs, %while.cond
  %cmp4 = icmp slt i32 %CurrentMbNr.addr.0.in, 1
  %.CurrentMbNr.addr.0 = select i1 %cmp4, i32 -1, i32 %CurrentMbNr.addr.0
  ret i32 %.CurrentMbNr.addr.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FmoGetLastCodedMBOfSliceGroup(i32 %SliceGroupID) #2 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %PicSizeInMbs5 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 110
  %1 = load i32* %PicSizeInMbs5, align 4, !tbaa !0
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = load i8** @MBAmap, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %LastMB.08 = phi i32 [ -1, %for.body.lr.ph ], [ %i.0.LastMB.0, %for.body ]
  %arrayidx.i = getelementptr inbounds i8* %2, i64 %indvars.iv
  %3 = load i8* %arrayidx.i, align 1, !tbaa !1
  %conv.i = zext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv.i, %SliceGroupID
  %4 = trunc i64 %indvars.iv to i32
  %i.0.LastMB.0 = select i1 %cmp1, i32 %4, i32 %LastMB.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %5, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %LastMB.0.lcssa = phi i32 [ -1, %entry ], [ %i.0.LastMB.0, %for.body ]
  ret i32 %LastMB.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @FmoSetLastMacroblockInSlice(i32 %mb) #0 {
entry:
  %idxprom.i = sext i32 %mb to i64
  %0 = load i8** @MBAmap, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds i8* %0, i64 %idxprom.i
  %1 = load i8* %arrayidx.i, align 1, !tbaa !1
  %call1 = tail call i32 @FmoGetNextMBNr(i32 %mb) #9
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32]* @FirstMBInSlice, i64 0, i64 %idxprom
  store i32 %call1, i32* %arrayidx, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FmoGetFirstMacroblockInSlice(i32 %SliceGroup) #2 {
entry:
  %idxprom = sext i32 %SliceGroup to i64
  %arrayidx = getelementptr inbounds [8 x i32]* @FirstMBInSlice, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  ret i32 %0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FmoSliceGroupCompletelyCoded(i32 %SliceGroupID) #2 {
entry:
  %idxprom.i = sext i32 %SliceGroupID to i64
  %arrayidx.i = getelementptr inbounds [8 x i32]* @FirstMBInSlice, i64 0, i64 %idxprom.i
  %0 = load i32* %arrayidx.i, align 4, !tbaa !0
  %.lobit = lshr i32 %0, 31
  ret i32 %.lobit
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare void @error(i8*, i32) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
