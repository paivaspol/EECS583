; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt_coding_state.c'
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
%struct.CSobj = type { i32, %struct.EncodingEnvironment*, %struct.Bitstream*, i32, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, [8 x i32], [2 x [4 x [4 x [2 x i32]]]], i64 }

@.str = private unnamed_addr constant [22 x i8] c"init_coding_state: cs\00", align 1
@input = external global %struct.InputParameters*
@.str1 = private unnamed_addr constant [30 x i8] c"init_coding_state: cs->encenv\00", align 1
@.str2 = private unnamed_addr constant [33 x i8] c"init_coding_state: cs->bitstream\00", align 1
@img = external global %struct.ImageParameters*

; Function Attrs: nounwind optsize uwtable
define void @delete_coding_state(%struct.CSobj* %cs) #0 {
entry:
  %cmp = icmp eq %struct.CSobj* %cs, null
  br i1 %cmp, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %encenv = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 1
  %0 = load %struct.EncodingEnvironment** %encenv, align 8, !tbaa !0
  %cmp1 = icmp eq %struct.EncodingEnvironment* %0, null
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = bitcast %struct.EncodingEnvironment* %0 to i8*
  tail call void @free(i8* %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %bitstream = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2
  %2 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %cmp4 = icmp eq %struct.Bitstream* %2, null
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %3 = bitcast %struct.Bitstream* %2 to i8*
  tail call void @free(i8* %3) #4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then5
  %mot_ctx = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 4
  %4 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !0
  tail call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %4) #4
  %tex_ctx = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 5
  %5 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !tbaa !0
  tail call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %5) #4
  %6 = bitcast %struct.CSobj* %cs to i8*
  tail call void @free(i8* %6) #4
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.end7
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #2

; Function Attrs: optsize
declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #2

; Function Attrs: nounwind optsize uwtable
define noalias %struct.CSobj* @create_coding_state() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 352) #4
  %0 = bitcast i8* %call to %struct.CSobj*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 61
  %2 = load i32* %partition_mode, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %2, 0
  %cond = select i1 %cmp1, i32 1, i32 3
  %no_part = bitcast i8* %call to i32*
  store i32 %cond, i32* %no_part, align 4, !tbaa !3
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 59
  %3 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %conv42 = zext i32 %cond to i64
  %call5 = tail call noalias i8* @calloc(i64 %conv42, i64 104) #4
  %4 = bitcast i8* %call5 to %struct.EncodingEnvironment*
  %encenv = getelementptr inbounds i8* %call, i64 8
  %5 = bitcast i8* %encenv to %struct.EncodingEnvironment**
  store %struct.EncodingEnvironment* %4, %struct.EncodingEnvironment** %5, align 8, !tbaa !0
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then3
  tail call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8]* @.str1, i64 0, i64 0)) #4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %encenv10 = getelementptr inbounds i8* %call, i64 8
  %6 = bitcast i8* %encenv10 to %struct.EncodingEnvironment**
  store %struct.EncodingEnvironment* null, %struct.EncodingEnvironment** %6, align 8, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.then8, %if.else
  %conv1343 = zext i32 %cond to i64
  %call14 = tail call noalias i8* @calloc(i64 %conv1343, i64 48) #4
  %7 = bitcast i8* %call14 to %struct.Bitstream*
  %bitstream = getelementptr inbounds i8* %call, i64 16
  %8 = bitcast i8* %bitstream to %struct.Bitstream**
  store %struct.Bitstream* %7, %struct.Bitstream** %8, align 8, !tbaa !0
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  tail call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8]* @.str2, i64 0, i64 0)) #4
  br label %if.end18

if.end18:                                         ; preds = %if.end11, %if.then17
  %9 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode19 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 59
  %10 = load i32* %symbol_mode19, align 4, !tbaa !3
  %symbol_mode20 = getelementptr inbounds i8* %call, i64 24
  %11 = bitcast i8* %symbol_mode20 to i32*
  store i32 %10, i32* %11, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %10, 1
  br i1 %cmp22, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.end18
  %call25 = tail call %struct.MotionInfoContexts* @create_contexts_MotionInfo() #4
  %mot_ctx = getelementptr inbounds i8* %call, i64 32
  %12 = bitcast i8* %mot_ctx to %struct.MotionInfoContexts**
  store %struct.MotionInfoContexts* %call25, %struct.MotionInfoContexts** %12, align 8, !tbaa !0
  %call26 = tail call %struct.TextureInfoContexts* @create_contexts_TextureInfo() #4
  %tex_ctx = getelementptr inbounds i8* %call, i64 40
  %13 = bitcast i8* %tex_ctx to %struct.TextureInfoContexts**
  store %struct.TextureInfoContexts* %call26, %struct.TextureInfoContexts** %13, align 8, !tbaa !0
  br label %if.end30

if.else27:                                        ; preds = %if.end18
  %mot_ctx28 = getelementptr inbounds i8* %call, i64 32
  call void @llvm.memset.p0i8.i64(i8* %mot_ctx28, i8 0, i64 16, i32 8, i1 false)
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then24
  ret %struct.CSobj* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: optsize
declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #2

; Function Attrs: optsize
declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #2

; Function Attrs: nounwind optsize uwtable
define void @store_coding_state(%struct.CSobj* nocapture %cs) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !0
  %tex_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8
  %3 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !tbaa !0
  %mot_ctx2 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 4
  %4 = load %struct.MotionInfoContexts** %mot_ctx2, align 8, !tbaa !0
  %tex_ctx3 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 5
  %5 = load %struct.TextureInfoContexts** %tex_ctx3, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %6 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %6 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %7 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %8 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 85
  %9 = load i32* %rdopt, align 4, !tbaa !3
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %symbol_mode = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 3
  %10 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp = icmp eq i32 %10, 1
  %no_part = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %if.end
  %bitstream36 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2
  br label %for.cond19

for.cond.preheader:                               ; preds = %if.end
  %encenv = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 1
  %bitstream17 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %11 = phi %struct.ImageParameters* [ %0, %for.cond.preheader ], [ %.pre, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 49
  %12 = load %struct.Picture** %currentPicture, align 8, !tbaa !0
  %idr_flag = getelementptr inbounds %struct.Picture* %12, i64 0, i32 1
  %13 = load i32* %idr_flag, align 4, !tbaa !3
  %tobool5 = icmp eq i32 %13, 0
  br i1 %tobool5, label %cond.false, label %cond.end

cond.false:                                       ; preds = %for.cond
  %14 = load i32* %no_part, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %for.cond, %cond.false
  %cond = phi i32 [ %14, %cond.false ], [ 1, %for.cond ]
  %15 = trunc i64 %indvars.iv to i32
  %cmp6 = icmp slt i32 %15, %cond
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %currentSlice8 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 50
  %16 = load %struct.Slice** %currentSlice8, align 8, !tbaa !0
  %partArr = getelementptr inbounds %struct.Slice* %16, i64 0, i32 6
  %17 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %ee_cabac = getelementptr inbounds %struct.datapartition* %17, i64 %indvars.iv, i32 1
  %bitstream = getelementptr inbounds %struct.datapartition* %17, i64 %indvars.iv, i32 0
  %18 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %19 = load %struct.EncodingEnvironment** %encenv, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds %struct.EncodingEnvironment* %19, i64 %indvars.iv
  %20 = load %struct.Bitstream** %bitstream17, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds %struct.Bitstream* %20, i64 %indvars.iv
  %21 = bitcast %struct.EncodingEnvironment* %arrayidx15 to i8*
  %22 = bitcast %struct.EncodingEnvironment* %ee_cabac to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 104, i32 8, i1 false)
  %23 = bitcast %struct.Bitstream* %arrayidx18 to i8*
  %24 = bitcast %struct.Bitstream* %18 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 48, i32 8, i1 false)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %25 = bitcast %struct.MotionInfoContexts* %4 to i8*
  %26 = bitcast %struct.MotionInfoContexts* %2 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 1504, i32 8, i1 false)
  %27 = bitcast %struct.TextureInfoContexts* %5 to i8*
  %28 = bitcast %struct.TextureInfoContexts* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 12128, i32 8, i1 false)
  br label %if.end41

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body29
  %29 = phi %struct.ImageParameters* [ %0, %for.cond19.preheader ], [ %.pre73, %for.body29 ]
  %indvars.iv71 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next72, %for.body29 ]
  %currentPicture20 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 49
  %30 = load %struct.Picture** %currentPicture20, align 8, !tbaa !0
  %idr_flag21 = getelementptr inbounds %struct.Picture* %30, i64 0, i32 1
  %31 = load i32* %idr_flag21, align 4, !tbaa !3
  %tobool22 = icmp eq i32 %31, 0
  br i1 %tobool22, label %cond.false24, label %cond.end26

cond.false24:                                     ; preds = %for.cond19
  %32 = load i32* %no_part, align 4, !tbaa !3
  br label %cond.end26

cond.end26:                                       ; preds = %for.cond19, %cond.false24
  %cond27 = phi i32 [ %32, %cond.false24 ], [ 1, %for.cond19 ]
  %33 = trunc i64 %indvars.iv71 to i32
  %cmp28 = icmp slt i32 %33, %cond27
  br i1 %cmp28, label %for.body29, label %if.end41

for.body29:                                       ; preds = %cond.end26
  %currentSlice31 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 50
  %34 = load %struct.Slice** %currentSlice31, align 8, !tbaa !0
  %partArr32 = getelementptr inbounds %struct.Slice* %34, i64 0, i32 6
  %35 = load %struct.datapartition** %partArr32, align 8, !tbaa !0
  %bitstream34 = getelementptr inbounds %struct.datapartition* %35, i64 %indvars.iv71, i32 0
  %36 = load %struct.Bitstream** %bitstream34, align 8, !tbaa !0
  %37 = load %struct.Bitstream** %bitstream36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds %struct.Bitstream* %37, i64 %indvars.iv71
  %38 = bitcast %struct.Bitstream* %arrayidx37 to i8*
  %39 = bitcast %struct.Bitstream* %36 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 48, i32 8, i1 false)
  %indvars.iv.next72 = add i64 %indvars.iv71, 1
  %.pre73 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond19

if.end41:                                         ; preds = %cond.end26, %for.end
  %currSEnr = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 0
  %40 = load i32* %currSEnr, align 4, !tbaa !3
  %currSEnr42 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 6
  store i32 %40, i32* %currSEnr42, align 4, !tbaa !3
  %bitcounter = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 7
  %41 = bitcast [8 x i32]* %bitcounter to i8*
  %bitcounter43 = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 5
  %42 = bitcast [8 x i32]* %bitcounter43 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 4, i1 false)
  %mvd = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 8
  %43 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd to i8*
  %mvd44 = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 9
  %44 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd44 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 256, i32 4, i1 false)
  %cbp_bits = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 16
  %45 = load i64* %cbp_bits, align 8, !tbaa !4
  %cbp_bits45 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 9
  store i64 %45, i64* %cbp_bits45, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end41
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define void @reset_coding_state(%struct.CSobj* nocapture %cs) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !0
  %tex_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8
  %3 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !tbaa !0
  %mot_ctx2 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 4
  %4 = load %struct.MotionInfoContexts** %mot_ctx2, align 8, !tbaa !0
  %tex_ctx3 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 5
  %5 = load %struct.TextureInfoContexts** %tex_ctx3, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %6 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %6 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %7 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %8 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 85
  %9 = load i32* %rdopt, align 4, !tbaa !3
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %symbol_mode = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 3
  %10 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp = icmp eq i32 %10, 1
  %no_part = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %if.end
  %bitstream36 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2
  br label %for.cond19

for.cond.preheader:                               ; preds = %if.end
  %encenv = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 1
  %bitstream17 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %11 = phi %struct.ImageParameters* [ %0, %for.cond.preheader ], [ %.pre, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 49
  %12 = load %struct.Picture** %currentPicture, align 8, !tbaa !0
  %idr_flag = getelementptr inbounds %struct.Picture* %12, i64 0, i32 1
  %13 = load i32* %idr_flag, align 4, !tbaa !3
  %tobool5 = icmp eq i32 %13, 0
  br i1 %tobool5, label %cond.false, label %cond.end

cond.false:                                       ; preds = %for.cond
  %14 = load i32* %no_part, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %for.cond, %cond.false
  %cond = phi i32 [ %14, %cond.false ], [ 1, %for.cond ]
  %15 = trunc i64 %indvars.iv to i32
  %cmp6 = icmp slt i32 %15, %cond
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %currentSlice8 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 50
  %16 = load %struct.Slice** %currentSlice8, align 8, !tbaa !0
  %partArr = getelementptr inbounds %struct.Slice* %16, i64 0, i32 6
  %17 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %ee_cabac = getelementptr inbounds %struct.datapartition* %17, i64 %indvars.iv, i32 1
  %bitstream = getelementptr inbounds %struct.datapartition* %17, i64 %indvars.iv, i32 0
  %18 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %19 = load %struct.EncodingEnvironment** %encenv, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds %struct.EncodingEnvironment* %19, i64 %indvars.iv
  %20 = load %struct.Bitstream** %bitstream17, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds %struct.Bitstream* %20, i64 %indvars.iv
  %21 = bitcast %struct.EncodingEnvironment* %ee_cabac to i8*
  %22 = bitcast %struct.EncodingEnvironment* %arrayidx15 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 104, i32 8, i1 false)
  %23 = bitcast %struct.Bitstream* %18 to i8*
  %24 = bitcast %struct.Bitstream* %arrayidx18 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 48, i32 8, i1 false)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %25 = bitcast %struct.MotionInfoContexts* %2 to i8*
  %26 = bitcast %struct.MotionInfoContexts* %4 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 1504, i32 8, i1 false)
  %27 = bitcast %struct.TextureInfoContexts* %3 to i8*
  %28 = bitcast %struct.TextureInfoContexts* %5 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 12128, i32 8, i1 false)
  br label %if.end41

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body29
  %29 = phi %struct.ImageParameters* [ %0, %for.cond19.preheader ], [ %.pre73, %for.body29 ]
  %indvars.iv71 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next72, %for.body29 ]
  %currentPicture20 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 49
  %30 = load %struct.Picture** %currentPicture20, align 8, !tbaa !0
  %idr_flag21 = getelementptr inbounds %struct.Picture* %30, i64 0, i32 1
  %31 = load i32* %idr_flag21, align 4, !tbaa !3
  %tobool22 = icmp eq i32 %31, 0
  br i1 %tobool22, label %cond.false24, label %cond.end26

cond.false24:                                     ; preds = %for.cond19
  %32 = load i32* %no_part, align 4, !tbaa !3
  br label %cond.end26

cond.end26:                                       ; preds = %for.cond19, %cond.false24
  %cond27 = phi i32 [ %32, %cond.false24 ], [ 1, %for.cond19 ]
  %33 = trunc i64 %indvars.iv71 to i32
  %cmp28 = icmp slt i32 %33, %cond27
  br i1 %cmp28, label %for.body29, label %if.end41

for.body29:                                       ; preds = %cond.end26
  %currentSlice31 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 50
  %34 = load %struct.Slice** %currentSlice31, align 8, !tbaa !0
  %partArr32 = getelementptr inbounds %struct.Slice* %34, i64 0, i32 6
  %35 = load %struct.datapartition** %partArr32, align 8, !tbaa !0
  %bitstream34 = getelementptr inbounds %struct.datapartition* %35, i64 %indvars.iv71, i32 0
  %36 = load %struct.Bitstream** %bitstream34, align 8, !tbaa !0
  %37 = load %struct.Bitstream** %bitstream36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds %struct.Bitstream* %37, i64 %indvars.iv71
  %38 = bitcast %struct.Bitstream* %36 to i8*
  %39 = bitcast %struct.Bitstream* %arrayidx37 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 48, i32 8, i1 false)
  %indvars.iv.next72 = add i64 %indvars.iv71, 1
  %.pre73 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond19

if.end41:                                         ; preds = %cond.end26, %for.end
  %currSEnr = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 6
  %40 = load i32* %currSEnr, align 4, !tbaa !3
  %currSEnr42 = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 0
  store i32 %40, i32* %currSEnr42, align 4, !tbaa !3
  %bitcounter = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 5
  %41 = bitcast [8 x i32]* %bitcounter to i8*
  %bitcounter43 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 7
  %42 = bitcast [8 x i32]* %bitcounter43 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 4, i1 false)
  %mvd = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 9
  %43 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd to i8*
  %mvd44 = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 8
  %44 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd44 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 256, i32 4, i1 false)
  %cbp_bits = getelementptr inbounds %struct.CSobj* %cs, i64 0, i32 9
  %45 = load i64* %cbp_bits, align 8, !tbaa !4
  %cbp_bits45 = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 16
  store i64 %45, i64* %cbp_bits45, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end41
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
