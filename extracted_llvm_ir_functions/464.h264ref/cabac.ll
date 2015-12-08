; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c'
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
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@last_dquant = global i32 0, align 4
@img = external global %struct.ImageParameters*
@.str = private unnamed_addr constant [37 x i8] c"create_contexts_MotionInfo: enco_ctx\00", align 1
@.str1 = private unnamed_addr constant [38 x i8] c"create_contexts_TextureInfo: enco_ctx\00", align 1
@enc_picture = external global %struct.storable_picture*
@type2ctx_bcbp = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@maxpos = internal unnamed_addr constant [10 x i32] [i32 16, i32 15, i32 64, i32 32, i32 32, i32 16, i32 4, i32 15, i32 8, i32 16], align 16
@type2ctx_last = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 6, i32 6], align 16
@pos2ctx_map_int = internal unnamed_addr constant [10 x i32*] [i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32]* @pos2ctx_map8x8i, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_map8x4i, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_map4x8i, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4c, i32 0, i32 0)], align 16
@pos2ctx_map = internal unnamed_addr constant [10 x i32*] [i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32]* @pos2ctx_map8x8, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_map8x4, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_map8x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4c, i32 0, i32 0)], align 16
@pos2ctx_last = internal unnamed_addr constant [10 x i32*] [i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32]* @pos2ctx_last8x8, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_last8x4, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_last8x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4c, i32 0, i32 0)], align 16
@max_c2 = internal unnamed_addr constant [10 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 4, i32 3, i32 3], align 16
@type2ctx_abs = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@writeRunLevel_CABAC.coeff = internal global [64 x i32] zeroinitializer, align 16
@writeRunLevel_CABAC.coeff_ctr = internal unnamed_addr global i32 0, align 4
@writeRunLevel_CABAC.pos = internal unnamed_addr global i32 0, align 4
@pos2ctx_last4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@pos2ctx_last8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 8], align 16
@pos2ctx_last8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8], align 16
@pos2ctx_last2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_last4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 14], align 16
@pos2ctx_map8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 5, i32 4, i32 4, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 6, i32 7, i32 7, i32 7, i32 8, i32 9, i32 10, i32 9, i32 8, i32 7, i32 7, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 7, i32 8, i32 9, i32 14, i32 10, i32 9, i32 8, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 9, i32 14, i32 10, i32 9, i32 11, i32 12, i32 13, i32 11, i32 14, i32 10, i32 12, i32 14], align 16
@pos2ctx_map8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 12, i32 8, i32 9, i32 10, i32 11, i32 9, i32 13, i32 13, i32 14, i32 14], align 16
@pos2ctx_map2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map8x8i = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 8, i32 4, i32 5, i32 6, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14], align 16
@pos2ctx_map8x4i = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 7, i32 6, i32 8, i32 9, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 12, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 14], align 16
@pos2ctx_map4x8i = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 6, i32 2, i32 7, i32 7, i32 8, i32 8, i32 8, i32 5, i32 6, i32 9, i32 10, i32 10, i32 11, i32 11, i32 11, i32 12, i32 13, i32 13, i32 14, i32 14, i32 14], align 16
@str = private unnamed_addr constant [47 x i8] c"Unsupported MB-MODE in writeMB_typeInfo_CABAC!\00"

; Function Attrs: nounwind optsize uwtable
define void @cabac_new_slice() #0 {
entry:
  store i32 0, i32* @last_dquant, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CheckAvailabilityOfNeighborsCABAC() #0 {
entry:
  %up = alloca %struct.pix_pos, align 4
  %left = alloca %struct.pix_pos, align 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  call void @getNeighbour(i32 %1, i32 -1, i32 0, i32 1, %struct.pix_pos* %left) #5
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3
  %4 = load i32* %current_mb_nr2, align 4, !tbaa !0
  call void @getNeighbour(i32 %4, i32 0, i32 -1, i32 1, %struct.pix_pos* %up) #5
  %available = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 0
  %5 = load i32* %available, align 4, !tbaa !0
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 1
  %6 = load i32* %mb_addr, align 4, !tbaa !0
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %mb_data4 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 51
  %8 = load %struct.macroblock** %mb_data4, align 8, !tbaa !3
  %arrayidx5 = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom3
  %mb_available_up = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 6
  store %struct.macroblock* %arrayidx5, %struct.macroblock** %mb_available_up, align 8, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %entry
  %mb_available_up6 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 6
  store %struct.macroblock* null, %struct.macroblock** %mb_available_up6, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %available7 = getelementptr inbounds %struct.pix_pos* %left, i64 0, i32 0
  %9 = load i32* %available7, align 4, !tbaa !0
  %tobool8 = icmp eq i32 %9, 0
  br i1 %tobool8, label %if.else14, label %if.then9

if.then9:                                         ; preds = %if.end
  %mb_addr10 = getelementptr inbounds %struct.pix_pos* %left, i64 0, i32 1
  %10 = load i32* %mb_addr10, align 4, !tbaa !0
  %idxprom11 = sext i32 %10 to i64
  %11 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %mb_data12 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 51
  %12 = load %struct.macroblock** %mb_data12, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds %struct.macroblock* %12, i64 %idxprom11
  %mb_available_left = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 7
  store %struct.macroblock* %arrayidx13, %struct.macroblock** %mb_available_left, align 8, !tbaa !3
  br label %if.end16

if.else14:                                        ; preds = %if.end
  %mb_available_left15 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 7
  store %struct.macroblock* null, %struct.macroblock** %mb_available_left15, align 8, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then9
  ret void
}

; Function Attrs: optsize
declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind optsize uwtable
define noalias %struct.MotionInfoContexts* @create_contexts_MotionInfo() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 1504) #5
  %0 = bitcast i8* %call to %struct.MotionInfoContexts*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.MotionInfoContexts* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #1

; Function Attrs: nounwind optsize uwtable
define noalias %struct.TextureInfoContexts* @create_contexts_TextureInfo() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 12128) #5
  %0 = bitcast i8* %call to %struct.TextureInfoContexts*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.TextureInfoContexts* %0
}

; Function Attrs: nounwind optsize uwtable
define void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %enco_ctx) #0 {
entry:
  %cmp = icmp eq %struct.MotionInfoContexts* %enco_ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.MotionInfoContexts* %enco_ctx to i8*
  tail call void @free(i8* %0) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %enco_ctx) #0 {
entry:
  %cmp = icmp eq %struct.TextureInfoContexts* %enco_ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.TextureInfoContexts* %enco_ctx to i8*
  tail call void @free(i8* %0) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %this_dataPart) #0 {
entry:
  %ee_cabac = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 1
  %call = tail call i32 @arienco_bits_written(%struct.EncodingEnvironment* %ee_cabac) #5
  %writing = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 9
  %0 = load void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !3
  tail call void %0(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %ee_cabac) #5
  %type = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %2 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  %write_flag = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 10
  store i32 1, i32* %write_flag, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call i32 @arienco_bits_written(%struct.EncodingEnvironment* %ee_cabac) #5
  %sub = sub nsw i32 %call1, %call
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  store i32 %sub, i32* %len, align 4, !tbaa !0
  ret i32 %sub
}

; Function Attrs: optsize
declare i32 @arienco_bits_written(%struct.EncodingEnvironment*) #1

; Function Attrs: nounwind optsize uwtable
define void @writeFieldModeInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %3 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %4 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %5 = load i32* %value1, align 4, !tbaa !0
  %mbAvailA = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 27
  %6 = load i32* %mbAvailA, align 4, !tbaa !0
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mbAddrA = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 23
  %7 = load i32* %mbAddrA, align 4, !tbaa !0
  %idxprom1 = sext i32 %7 to i64
  %mb_field4 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom1, i32 22
  %8 = load i32* %mb_field4, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %a.0 = phi i32 [ %8, %if.then ], [ 0, %entry ]
  %mbAvailB = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 28
  %9 = load i32* %mbAvailB, align 4, !tbaa !0
  %tobool5 = icmp eq i32 %9, 0
  br i1 %tobool5, label %if.end12, label %if.then6

if.then6:                                         ; preds = %if.end
  %mbAddrB = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 24
  %10 = load i32* %mbAddrB, align 4, !tbaa !0
  %idxprom7 = sext i32 %10 to i64
  %mb_field10 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom7, i32 22
  %11 = load i32* %mb_field10, align 4, !tbaa !0
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then6
  %b.0 = phi i32 [ %11, %if.then6 ], [ 0, %if.end ]
  %add = add nsw i32 %b.0, %a.0
  %cmp = icmp eq i32 %5, 0
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 5, i64 %idxprom14
  br i1 %cmp, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.end12
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx15) #5
  br label %if.end20

if.else16:                                        ; preds = %if.end12
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx15) #5
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then13
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6
  store i32 %add, i32* %context, align 4, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @biari_encode_symbol(%struct.EncodingEnvironment*, i16 signext, %struct.BiContextType*) #1

; Function Attrs: nounwind optsize uwtable
define void @writeMB_skip_flagInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 1
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %2 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %mot_ctx = getelementptr inbounds %struct.Slice* %2, i64 0, i32 7
  %3 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %4 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %5 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %6 = load i32* %value1, align 4, !tbaa !0
  %mb_available_up = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 6
  %7 = load %struct.macroblock** %mb_available_up, align 8, !tbaa !3
  %cmp1 = icmp eq %struct.macroblock* %7, null
  br i1 %cmp, label %if.then, label %if.else41

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %if.end, label %if.else

if.else:                                          ; preds = %if.then
  %skip_flag = getelementptr inbounds %struct.macroblock* %7, i64 0, i32 44
  %8 = load i32* %skip_flag, align 4, !tbaa !0
  %not.cmp5 = icmp ne i32 %8, 0
  %cond = zext i1 %not.cmp5 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %b.0 = phi i32 [ %cond, %if.else ], [ 0, %if.then ]
  %mb_available_left = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 7
  %9 = load %struct.macroblock** %mb_available_left, align 8, !tbaa !3
  %cmp7 = icmp eq %struct.macroblock* %9, null
  br i1 %cmp7, label %if.end16, label %if.else10

if.else10:                                        ; preds = %if.end
  %skip_flag12 = getelementptr inbounds %struct.macroblock* %9, i64 0, i32 44
  %10 = load i32* %skip_flag12, align 4, !tbaa !0
  %not.cmp13 = icmp ne i32 %10, 0
  %phitmp = select i1 %not.cmp13, i32 8, i32 7
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.else10
  %a.0 = phi i32 [ %phitmp, %if.else10 ], [ 7, %if.end ]
  %add17 = add nsw i32 %a.0, %b.0
  %cmp19 = icmp eq i32 %6, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else27

land.lhs.true:                                    ; preds = %if.end16
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %11 = load i32* %value2, align 4, !tbaa !0
  %cmp21 = icmp eq i32 %11, 0
  br i1 %cmp21, label %if.then23, label %if.else27

if.then23:                                        ; preds = %land.lhs.true
  %idxprom24108 = zext i32 %add17 to i64
  %arrayidx26 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %idxprom24108
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx26) #5
  br label %if.end32

if.else27:                                        ; preds = %land.lhs.true, %if.end16
  %idxprom28107 = zext i32 %add17 to i64
  %arrayidx31 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %idxprom28107
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx31) #5
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.then23
  %12 = load i32* %value1, align 4, !tbaa !0
  %cmp34 = icmp eq i32 %12, 0
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end32
  %value236 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %13 = load i32* %value236, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end32
  %14 = phi i1 [ false, %if.end32 ], [ %cmp37, %land.rhs ]
  %15 = zext i1 %14 to i32
  %cond39 = xor i32 %15, 1
  %skip_flag40 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 44
  store i32 %cond39, i32* %skip_flag40, align 4, !tbaa !0
  br label %if.end82

if.else41:                                        ; preds = %entry
  br i1 %cmp1, label %if.end52, label %if.else46

if.else46:                                        ; preds = %if.else41
  %skip_flag48 = getelementptr inbounds %struct.macroblock* %7, i64 0, i32 44
  %16 = load i32* %skip_flag48, align 4, !tbaa !0
  %cmp49 = icmp ne i32 %16, 0
  %cond51 = zext i1 %cmp49 to i32
  br label %if.end52

if.end52:                                         ; preds = %if.else41, %if.else46
  %b.1 = phi i32 [ %cond51, %if.else46 ], [ 0, %if.else41 ]
  %mb_available_left53 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 7
  %17 = load %struct.macroblock** %mb_available_left53, align 8, !tbaa !3
  %cmp54 = icmp eq %struct.macroblock* %17, null
  br i1 %cmp54, label %if.end63, label %if.else57

if.else57:                                        ; preds = %if.end52
  %skip_flag59 = getelementptr inbounds %struct.macroblock* %17, i64 0, i32 44
  %18 = load i32* %skip_flag59, align 4, !tbaa !0
  %cmp60 = icmp ne i32 %18, 0
  %cond62 = zext i1 %cmp60 to i32
  br label %if.end63

if.end63:                                         ; preds = %if.end52, %if.else57
  %a.1 = phi i32 [ %cond62, %if.else57 ], [ 0, %if.end52 ]
  %add64 = add nsw i32 %a.1, %b.1
  %cmp65 = icmp eq i32 %6, 0
  %idxprom68106 = zext i32 %add64 to i64
  %arrayidx71 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 %idxprom68106
  br i1 %cmp65, label %if.then67, label %if.else72

if.then67:                                        ; preds = %if.end63
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx71) #5
  br label %if.end77

if.else72:                                        ; preds = %if.end63
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx71) #5
  br label %if.end77

if.end77:                                         ; preds = %if.else72, %if.then67
  %19 = zext i1 %cmp65 to i32
  %cond80 = xor i32 %19, 1
  %skip_flag81 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 44
  store i32 %cond80, i32* %skip_flag81, align 4, !tbaa !0
  br label %if.end82

if.end82:                                         ; preds = %if.end77, %land.end
  %act_ctx.0 = phi i32 [ %add17, %land.end ], [ %add64, %if.end77 ]
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6
  store i32 %act_ctx.0, i32* %context, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @writeMB_transform_size_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %3 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %4 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %mb_available_up = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 6
  %5 = load %struct.macroblock** %mb_available_up, align 8, !tbaa !3
  %cmp = icmp eq %struct.macroblock* %5, null
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %5, i64 0, i32 32
  %6 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %b.0 = phi i32 [ %6, %if.else ], [ 0, %entry ]
  %mb_available_left = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 7
  %7 = load %struct.macroblock** %mb_available_left, align 8, !tbaa !3
  %cmp2 = icmp eq %struct.macroblock* %7, null
  br i1 %cmp2, label %if.end7, label %if.else4

if.else4:                                         ; preds = %if.end
  %luma_transform_size_8x8_flag6 = getelementptr inbounds %struct.macroblock* %7, i64 0, i32 32
  %8 = load i32* %luma_transform_size_8x8_flag6, align 4, !tbaa !0
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.else4
  %a.0 = phi i32 [ %8, %if.else4 ], [ 0, %if.end ]
  %add = add nsw i32 %a.0, %b.0
  %luma_transform_size_8x8_flag8 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 32
  %9 = load i32* %luma_transform_size_8x8_flag8, align 4, !tbaa !0
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6
  store i32 %add, i32* %context, align 4, !tbaa !0
  %cmp9 = icmp eq i32 %9, 0
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 6, i64 %idx.ext
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end7
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #5
  br label %if.end16

if.else11:                                        ; preds = %if.end7
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #5
  br label %if.end16

if.end16:                                         ; preds = %if.else11, %if.then10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @writeMB_typeInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %2 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %mot_ctx = getelementptr inbounds %struct.Slice* %2, i64 0, i32 7
  %3 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %4 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %5 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %6 = load i32* %value1, align 4, !tbaa !0
  switch i32 %1, label %if.then141 [
    i32 2, label %if.then
    i32 1, label %if.then107
  ]

if.then:                                          ; preds = %entry
  %mb_available_up = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 6
  %7 = load %struct.macroblock** %mb_available_up, align 8, !tbaa !3
  %cmp4 = icmp eq %struct.macroblock* %7, null
  br i1 %cmp4, label %if.end, label %if.else

if.else:                                          ; preds = %if.then
  %mb_type = getelementptr inbounds %struct.macroblock* %7, i64 0, i32 8
  %8 = load i32* %mb_type, align 4, !tbaa !0
  %cmp12 = icmp ne i32 %8, 13
  %not.cmp8 = icmp ne i32 %8, 9
  %.cmp12 = and i1 %cmp12, %not.cmp8
  %cond = zext i1 %.cmp12 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %b.0 = phi i32 [ %cond, %if.else ], [ 0, %if.then ]
  %mb_available_left = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 7
  %9 = load %struct.macroblock** %mb_available_left, align 8, !tbaa !3
  %cmp14 = icmp eq %struct.macroblock* %9, null
  br i1 %cmp14, label %if.end29, label %if.else17

if.else17:                                        ; preds = %if.end
  %mb_type19 = getelementptr inbounds %struct.macroblock* %9, i64 0, i32 8
  %10 = load i32* %mb_type19, align 4, !tbaa !0
  %cmp25 = icmp ne i32 %10, 13
  %not.cmp20 = icmp ne i32 %10, 9
  %.cmp25 = and i1 %cmp25, %not.cmp20
  %cond28 = zext i1 %.cmp25 to i32
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.else17
  %a.0 = phi i32 [ %cond28, %if.else17 ], [ 0, %if.end ]
  %add = add nsw i32 %a.0, %b.0
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6
  store i32 %add, i32* %context, align 4, !tbaa !0
  %cmp30 = icmp eq i32 %6, 0
  br i1 %cmp30, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.end29
  %idx.ext648 = zext i32 %add to i64
  %add.ptr = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 %idx.ext648
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #5
  br label %if.end448

if.else34:                                        ; preds = %if.end29
  %cmp35 = icmp eq i32 %6, 25
  %idx.ext41646 = zext i32 %add to i64
  %add.ptr42 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 %idx.ext41646
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr42) #5
  br i1 %cmp35, label %if.then37, label %if.else43

if.then37:                                        ; preds = %if.else34
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 1) #5
  br label %if.end448

if.else43:                                        ; preds = %if.else34
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 0) #5
  %sub = add nsw i32 %6, -1
  %div = sdiv i32 %sub, 12
  %conv49 = trunc i32 %div to i16
  %conv50 = and i16 %conv49, 255
  %add.ptr55 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv50, %struct.BiContextType* %add.ptr55) #5
  %rem = srem i32 %sub, 12
  %rem.off = add i32 %rem, 3
  %11 = icmp ult i32 %rem.off, 7
  %add.ptr64 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 5
  br i1 %11, label %if.then59, label %if.else65

if.then59:                                        ; preds = %if.else43
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr64) #5
  br label %if.end86

if.else65:                                        ; preds = %if.else43
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr64) #5
  %rem.off647 = add i32 %rem, -4
  %12 = icmp ult i32 %rem.off647, 4
  %add.ptr78 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 6
  br i1 %12, label %if.then73, label %if.else79

if.then73:                                        ; preds = %if.else65
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr78) #5
  br label %if.end86

if.else79:                                        ; preds = %if.else65
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr78) #5
  br label %if.end86

if.end86:                                         ; preds = %if.then73, %if.else79, %if.then59
  %rem87 = srem i32 %rem, 4
  %div88 = sdiv i32 %rem87, 2
  %conv89 = trunc i32 %div88 to i16
  %conv90 = and i16 %conv89, 255
  %add.ptr95 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 7
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv90, %struct.BiContextType* %add.ptr95) #5
  %rem96 = srem i32 %rem87, 2
  %conv97 = trunc i32 %rem96 to i16
  %conv98 = and i16 %conv97, 255
  %add.ptr103 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 8
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv98, %struct.BiContextType* %add.ptr103) #5
  br label %if.end448

if.then107:                                       ; preds = %entry
  %mb_available_up108 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 6
  %13 = load %struct.macroblock** %mb_available_up108, align 8, !tbaa !3
  %cmp109 = icmp eq %struct.macroblock* %13, null
  br i1 %cmp109, label %if.end118, label %if.else112

if.else112:                                       ; preds = %if.then107
  %mb_type114 = getelementptr inbounds %struct.macroblock* %13, i64 0, i32 8
  %14 = load i32* %mb_type114, align 4, !tbaa !0
  %cmp115 = icmp ne i32 %14, 0
  %cond117 = zext i1 %cmp115 to i32
  br label %if.end118

if.end118:                                        ; preds = %if.then107, %if.else112
  %b.1 = phi i32 [ %cond117, %if.else112 ], [ 0, %if.then107 ]
  %mb_available_left119 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 7
  %15 = load %struct.macroblock** %mb_available_left119, align 8, !tbaa !3
  %cmp120 = icmp eq %struct.macroblock* %15, null
  br i1 %cmp120, label %if.else195, label %if.else123

if.else123:                                       ; preds = %if.end118
  %mb_type125 = getelementptr inbounds %struct.macroblock* %15, i64 0, i32 8
  %16 = load i32* %mb_type125, align 4, !tbaa !0
  %cmp126 = icmp ne i32 %16, 0
  %cond128 = zext i1 %cmp126 to i32
  br label %if.else195

if.then141:                                       ; preds = %entry
  %cmp135650 = icmp slt i32 %6, 7
  %.cond134653 = select i1 %cmp135650, i32 %6, i32 7
  switch i32 %.cond134653, label %sw.default [
    i32 0, label %if.end448
    i32 1, label %sw.bb
    i32 2, label %sw.bb151
    i32 3, label %sw.bb161
    i32 4, label %sw.bb171
    i32 5, label %sw.bb171
    i32 6, label %sw.bb181
    i32 7, label %if.end382.thread660
  ]

sw.bb:                                            ; preds = %if.then141
  %arrayidx144 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx144) #5
  %arrayidx147 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 5
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx147) #5
  %arrayidx150 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 6
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx150) #5
  br label %if.end448

sw.bb151:                                         ; preds = %if.then141
  %arrayidx154 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx154) #5
  %arrayidx157 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 5
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx157) #5
  %arrayidx160 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 7
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx160) #5
  br label %if.end448

sw.bb161:                                         ; preds = %if.then141
  %arrayidx164 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx164) #5
  %arrayidx167 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 5
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx167) #5
  %arrayidx170 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 7
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx170) #5
  br label %if.end448

sw.bb171:                                         ; preds = %if.then141, %if.then141
  %arrayidx174 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx174) #5
  %arrayidx177 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 5
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx177) #5
  %arrayidx180 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 6
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx180) #5
  br label %if.end448

sw.bb181:                                         ; preds = %if.then141
  %arrayidx184 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx184) #5
  %arrayidx187 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 7
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx187) #5
  br label %if.end448

if.end382.thread660:                              ; preds = %if.then141
  %sub138651 = add nsw i32 %6, -7
  %.sub138652 = select i1 %cmp135650, i32 0, i32 %sub138651
  %arrayidx191 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx191) #5
  %arrayidx194 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 7
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx194) #5
  br label %if.then385

sw.default:                                       ; preds = %if.then141
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 1) #6
  unreachable

if.else195:                                       ; preds = %if.end118, %if.else123
  %a.1 = phi i32 [ %cond128, %if.else123 ], [ 0, %if.end118 ]
  %add130 = add nsw i32 %a.1, %b.1
  %context131 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6
  store i32 %add130, i32* %context131, align 4, !tbaa !0
  %phitmp640 = zext i32 %add130 to i64
  %cmp135 = icmp slt i32 %6, 24
  %sub138 = add nsw i32 %6, -24
  %.sub138 = select i1 %cmp135, i32 0, i32 %sub138
  %.cond134 = select i1 %cmp135, i32 %6, i32 24
  %cmp196 = icmp eq i32 %.cond134, 0
  br i1 %cmp196, label %if.then198, label %if.else203

if.then198:                                       ; preds = %if.else195
  %arrayidx202 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %phitmp640
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx202) #5
  br label %if.end448

if.else203:                                       ; preds = %if.else195
  %cmp204 = icmp slt i32 %.cond134, 3
  br i1 %cmp204, label %if.then206, label %if.else225

if.then206:                                       ; preds = %if.else203
  %arrayidx210 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %phitmp640
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx210) #5
  %arrayidx213 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx213) #5
  %tobool215 = icmp eq i32 %.cond134, 1
  %arrayidx219 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 6
  br i1 %tobool215, label %if.else220, label %if.then216

if.then216:                                       ; preds = %if.then206
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx219) #5
  br label %if.end382

if.else220:                                       ; preds = %if.then206
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx219) #5
  br label %if.end448

if.else225:                                       ; preds = %if.else203
  %cmp226 = icmp slt i32 %.cond134, 11
  br i1 %cmp226, label %if.then228, label %if.else275

if.then228:                                       ; preds = %if.else225
  %arrayidx232 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %phitmp640
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx232) #5
  %arrayidx235 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx235) #5
  %arrayidx238 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 5
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx238) #5
  %sub239 = add nsw i32 %.cond134, -3
  %and = and i32 %sub239, 4
  %tobool240 = icmp eq i32 %and, 0
  %arrayidx244 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 6
  br i1 %tobool240, label %if.else245, label %if.then241

if.then241:                                       ; preds = %if.then228
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx244) #5
  br label %if.end249

if.else245:                                       ; preds = %if.then228
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx244) #5
  br label %if.end249

if.end249:                                        ; preds = %if.else245, %if.then241
  %and252 = and i32 %sub239, 2
  %tobool253 = icmp eq i32 %and252, 0
  br i1 %tobool253, label %if.else258, label %if.then254

if.then254:                                       ; preds = %if.end249
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx244) #5
  br label %if.end262

if.else258:                                       ; preds = %if.end249
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx244) #5
  br label %if.end262

if.end262:                                        ; preds = %if.else258, %if.then254
  %and264 = and i32 %sub239, 1
  %tobool265 = icmp eq i32 %and264, 0
  br i1 %tobool265, label %if.else270, label %if.then266

if.then266:                                       ; preds = %if.end262
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx244) #5
  br label %if.end382

if.else270:                                       ; preds = %if.end262
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx244) #5
  br label %if.end382

if.else275:                                       ; preds = %if.else225
  %cmp276 = icmp eq i32 %.cond134, 11
  switch i32 %.cond134, label %if.else308 [
    i32 22, label %if.then280
    i32 11, label %if.then280
  ]

if.then280:                                       ; preds = %if.else275, %if.else275
  %arrayidx284 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %phitmp640
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx284) #5
  %arrayidx287 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx287) #5
  %arrayidx290 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 5
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx290) #5
  %arrayidx293 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 6
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx293) #5
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx293) #5
  br i1 %cmp276, label %if.then299, label %if.else303

if.then299:                                       ; preds = %if.then280
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx293) #5
  br label %if.end448

if.else303:                                       ; preds = %if.then280
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx293) #5
  br label %if.end382

if.else308:                                       ; preds = %if.else275
  %cmp309 = icmp sgt i32 %.cond134, 22
  %dec = sext i1 %cmp309 to i32
  %dec..cond134 = add nsw i32 %dec, %.cond134
  %arrayidx316 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %phitmp640
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx316) #5
  %arrayidx319 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx319) #5
  %arrayidx322 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 5
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx322) #5
  %sub323 = add nsw i32 %dec..cond134, -12
  %and325 = and i32 %sub323, 8
  %tobool326 = icmp eq i32 %and325, 0
  %arrayidx330 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 6
  br i1 %tobool326, label %if.else331, label %if.then327

if.then327:                                       ; preds = %if.else308
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx330) #5
  br label %if.end335

if.else331:                                       ; preds = %if.else308
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx330) #5
  br label %if.end335

if.end335:                                        ; preds = %if.else331, %if.then327
  %and338 = and i32 %sub323, 4
  %tobool339 = icmp eq i32 %and338, 0
  br i1 %tobool339, label %if.else344, label %if.then340

if.then340:                                       ; preds = %if.end335
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx330) #5
  br label %if.end348

if.else344:                                       ; preds = %if.end335
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx330) #5
  br label %if.end348

if.end348:                                        ; preds = %if.else344, %if.then340
  %and351 = and i32 %sub323, 2
  %tobool352 = icmp eq i32 %and351, 0
  br i1 %tobool352, label %if.else357, label %if.then353

if.then353:                                       ; preds = %if.end348
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx330) #5
  br label %if.end361

if.else357:                                       ; preds = %if.end348
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx330) #5
  br label %if.end361

if.end361:                                        ; preds = %if.else357, %if.then353
  %and363 = and i32 %sub323, 1
  %tobool364 = icmp eq i32 %and363, 0
  br i1 %tobool364, label %if.else369, label %if.then365

if.then365:                                       ; preds = %if.end361
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx330) #5
  br label %if.end373

if.else369:                                       ; preds = %if.end361
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx330) #5
  br label %if.end373

if.end373:                                        ; preds = %if.else369, %if.then365
  %cmp374 = icmp sgt i32 %dec..cond134, 21
  %inc = zext i1 %cmp374 to i32
  %inc.dec..cond134 = add nsw i32 %inc, %dec..cond134
  br label %if.end382

if.end382:                                        ; preds = %if.end373, %if.else270, %if.then266, %if.else303, %if.then216
  %act_sym.2 = phi i32 [ %.cond134, %if.then216 ], [ %.cond134, %if.then266 ], [ %.cond134, %if.else270 ], [ %.cond134, %if.else303 ], [ %inc.dec..cond134, %if.end373 ]
  %cmp383 = icmp eq i32 %act_sym.2, 24
  br i1 %cmp383, label %if.then385, label %if.end448

if.then385:                                       ; preds = %if.end382.thread660, %if.end382
  %.sub138656662 = phi i32 [ %.sub138652, %if.end382.thread660 ], [ %.sub138, %if.end382 ]
  %cmp386 = icmp eq i32 %.sub138656662, 25
  br i1 %cmp386, label %if.then388, label %if.end389

if.then388:                                       ; preds = %if.then385
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 1) #5
  br label %if.end448

if.end389:                                        ; preds = %if.then385
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 0) #5
  %div390 = sdiv i32 %.sub138656662, 12
  %conv391 = trunc i32 %div390 to i16
  %conv392 = and i16 %conv391, 255
  %add.ptr397 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 8
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv392, %struct.BiContextType* %add.ptr397) #5
  %rem398 = srem i32 %.sub138656662, 12
  %rem398.off = add i32 %rem398, 3
  %17 = icmp ult i32 %rem398.off, 7
  %add.ptr407 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 9
  br i1 %17, label %if.then402, label %if.else408

if.then402:                                       ; preds = %if.end389
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr407) #5
  br label %if.end429

if.else408:                                       ; preds = %if.end389
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr407) #5
  %rem398.off639 = add i32 %rem398, -4
  %18 = icmp ult i32 %rem398.off639, 4
  br i1 %18, label %if.then416, label %if.else422

if.then416:                                       ; preds = %if.else408
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr407) #5
  br label %if.end429

if.else422:                                       ; preds = %if.else408
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr407) #5
  br label %if.end429

if.end429:                                        ; preds = %if.then416, %if.else422, %if.then402
  %rem430 = srem i32 %rem398, 4
  %div431 = sdiv i32 %rem430, 2
  %conv432 = trunc i32 %div431 to i16
  %conv433 = and i16 %conv432, 255
  %add.ptr438 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 10
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv433, %struct.BiContextType* %add.ptr438) #5
  %rem439 = srem i32 %rem430, 2
  %conv440 = trunc i32 %rem439 to i16
  %conv441 = and i16 %conv440, 255
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv441, %struct.BiContextType* %add.ptr438) #5
  br label %if.end448

if.end448:                                        ; preds = %if.then141, %sw.bb, %sw.bb151, %sw.bb161, %sw.bb171, %sw.bb181, %if.then299, %if.else220, %if.then198, %if.end382, %if.end429, %if.then32, %if.end86, %if.then37, %if.then388
  ret void
}

; Function Attrs: optsize
declare void @biari_encode_symbol_final(%struct.EncodingEnvironment*, i16 signext) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @writeB8_typeInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 1
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %2 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %mot_ctx = getelementptr inbounds %struct.Slice* %2, i64 0, i32 7
  %3 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %4 = load i32* %value1, align 4, !tbaa !0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  switch i32 %4, label %if.end147 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb9
    i32 3, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.then
  %arrayidx1 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 1
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx1) #5
  br label %if.end147

sw.bb2:                                           ; preds = %if.then
  %arrayidx5 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 1
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx5) #5
  %arrayidx8 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 3
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx8) #5
  br label %if.end147

sw.bb9:                                           ; preds = %if.then
  %arrayidx12 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 1
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx12) #5
  %arrayidx15 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 3
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx15) #5
  %arrayidx18 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx18) #5
  br label %if.end147

sw.bb19:                                          ; preds = %if.then
  %arrayidx22 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 1
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx22) #5
  %arrayidx25 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 3
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx25) #5
  %arrayidx28 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 4
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx28) #5
  br label %if.end147

if.else:                                          ; preds = %entry
  %cmp29 = icmp eq i32 %4, 0
  %arrayidx34 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 0
  br i1 %cmp29, label %if.then31, label %if.else35

if.then31:                                        ; preds = %if.else
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx34) #5
  br label %if.end147

if.else35:                                        ; preds = %if.else
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx34) #5
  %cmp39 = icmp slt i32 %4, 3
  br i1 %cmp39, label %if.then41, label %if.else56

if.then41:                                        ; preds = %if.else35
  %arrayidx44 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 1
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx44) #5
  %cmp45 = icmp eq i32 %4, 1
  %arrayidx50 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 3
  br i1 %cmp45, label %if.then47, label %if.else51

if.then47:                                        ; preds = %if.then41
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx50) #5
  br label %if.end147

if.else51:                                        ; preds = %if.then41
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx50) #5
  br label %if.end147

if.else56:                                        ; preds = %if.else35
  %cmp57 = icmp slt i32 %4, 7
  %arrayidx62 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 1
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx62) #5
  %arrayidx65 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 2
  br i1 %cmp57, label %if.then59, label %if.else88

if.then59:                                        ; preds = %if.else56
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx65) #5
  %sub = add nsw i32 %4, -3
  %and = and i32 %sub, 2
  %tobool66 = icmp eq i32 %and, 0
  %arrayidx70 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 3
  br i1 %tobool66, label %if.else71, label %if.then67

if.then67:                                        ; preds = %if.then59
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx70) #5
  br label %if.end75

if.else71:                                        ; preds = %if.then59
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx70) #5
  br label %if.end75

if.end75:                                         ; preds = %if.else71, %if.then67
  %and77 = and i32 %sub, 1
  %tobool78 = icmp eq i32 %and77, 0
  br i1 %tobool78, label %if.else83, label %if.then79

if.then79:                                        ; preds = %if.end75
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx70) #5
  br label %if.end147

if.else83:                                        ; preds = %if.end75
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx70) #5
  br label %if.end147

if.else88:                                        ; preds = %if.else56
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx65) #5
  %sub95 = add nsw i32 %4, -7
  %and97 = and i32 %sub95, 4
  %tobool98 = icmp eq i32 %and97, 0
  %arrayidx102 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 3
  br i1 %tobool98, label %if.else115, label %if.then99

if.then99:                                        ; preds = %if.else88
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx102) #5
  %and104 = and i32 %sub95, 1
  %tobool105 = icmp eq i32 %and104, 0
  br i1 %tobool105, label %if.else110, label %if.then106

if.then106:                                       ; preds = %if.then99
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx102) #5
  br label %if.end147

if.else110:                                       ; preds = %if.then99
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx102) #5
  br label %if.end147

if.else115:                                       ; preds = %if.else88
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx102) #5
  %and121 = and i32 %sub95, 2
  %tobool122 = icmp eq i32 %and121, 0
  br i1 %tobool122, label %if.else127, label %if.then123

if.then123:                                       ; preds = %if.else115
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx102) #5
  br label %if.end131

if.else127:                                       ; preds = %if.else115
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx102) #5
  br label %if.end131

if.end131:                                        ; preds = %if.else127, %if.then123
  %and133 = and i32 %sub95, 1
  %tobool134 = icmp eq i32 %and133, 0
  br i1 %tobool134, label %if.else139, label %if.then135

if.then135:                                       ; preds = %if.end131
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx102) #5
  br label %if.end147

if.else139:                                       ; preds = %if.end131
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx102) #5
  br label %if.end147

if.end147:                                        ; preds = %if.else51, %if.then47, %if.else110, %if.then106, %if.else139, %if.then135, %if.then79, %if.else83, %sw.bb, %sw.bb2, %sw.bb9, %sw.bb19, %if.then, %if.then31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @writeIntraPredMode_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %tex_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8
  %2 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %3 = load i32* %value1, align 4, !tbaa !0
  %cmp = icmp eq i32 %3, -1
  %arraydecay = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 0, i64 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arraydecay) #5
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arraydecay) #5
  %4 = load i32* %value1, align 4, !tbaa !0
  %.tr = trunc i32 %4 to i16
  %conv = and i16 %.tr, 1
  %add.ptr = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 0, i64 1
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv, %struct.BiContextType* %add.ptr) #5
  %5 = load i32* %value1, align 4, !tbaa !0
  %and7 = lshr i32 %5, 1
  %and7.tr = trunc i32 %and7 to i16
  %conv8 = and i16 %and7.tr, 1
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv8, %struct.BiContextType* %add.ptr) #5
  %6 = load i32* %value1, align 4, !tbaa !0
  %and13 = lshr i32 %6, 2
  %and13.tr = trunc i32 %and13 to i16
  %conv15 = and i16 %and13.tr, 1
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv15, %struct.BiContextType* %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @writeRefFrame_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %3 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %4 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %5 = load i32* %value2, align 4, !tbaa !0
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !3
  %ref_idx = getelementptr inbounds %struct.storable_picture* %6, i64 0, i32 32
  %7 = load i16**** %ref_idx, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds i16*** %7, i64 %idxprom1
  %8 = load i16*** %arrayidx2, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %9 = load i32* %type, align 4, !tbaa !0
  %cmp = icmp eq i32 %9, 1
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 18
  %10 = load i32* %subblock_x, align 4, !tbaa !0
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 19
  %11 = load i32* %subblock_y, align 4, !tbaa !0
  call void @getLuma4x4Neighbour(i32 %3, i32 %10, i32 %11, i32 -1, i32 0, %struct.pix_pos* %block_a) #5
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr4 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 3
  %13 = load i32* %current_mb_nr4, align 4, !tbaa !0
  %subblock_x5 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 18
  %14 = load i32* %subblock_x5, align 4, !tbaa !0
  %subblock_y6 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 19
  %15 = load i32* %subblock_y6, align 4, !tbaa !0
  call void @getLuma4x4Neighbour(i32 %13, i32 %14, i32 %15, i32 0, i32 -1, %struct.pix_pos* %block_b) #5
  %x = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2
  %16 = load i32* %x, align 4, !tbaa !0
  %div = sdiv i32 %16, 2
  %rem = srem i32 %div, 2
  %y = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3
  %17 = load i32* %y, align 4, !tbaa !0
  %div7 = sdiv i32 %17, 2
  %rem8 = srem i32 %div7, 2
  %mul = shl i32 %rem8, 1
  %add = add nsw i32 %mul, %rem
  %x9 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2
  %18 = load i32* %x9, align 4, !tbaa !0
  %div10 = sdiv i32 %18, 2
  %rem11 = srem i32 %div10, 2
  %y12 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3
  %19 = load i32* %y12, align 4, !tbaa !0
  %div13 = sdiv i32 %19, 2
  %rem14 = srem i32 %div13, 2
  %mul15 = shl i32 %rem14, 1
  %add16 = add nsw i32 %mul15, %rem11
  %available = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0
  %20 = load i32* %available, align 4, !tbaa !0
  %tobool = icmp eq i32 %20, 0
  br i1 %tobool, label %if.end69, label %if.else

if.else:                                          ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1
  %21 = load i32* %mb_addr, align 4, !tbaa !0
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %mb_data18 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 51
  %23 = load %struct.macroblock** %mb_data18, align 8, !tbaa !3
  %mb_type = getelementptr inbounds %struct.macroblock* %23, i64 %idxprom17, i32 8
  %24 = load i32* %mb_type, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %24, 0
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else
  %type22 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 6
  %25 = load i32* %type22, align 4, !tbaa !0
  %cmp23 = icmp eq i32 %25, 1
  br i1 %cmp23, label %if.end69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else
  %idxprom25 = sext i32 %add16 to i64
  %arrayidx30 = getelementptr inbounds %struct.macroblock* %23, i64 %idxprom17, i32 14, i64 %idxprom25
  %26 = load i32* %arrayidx30, align 4, !tbaa !0
  %cmp31.not = icmp ne i32 %26, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = or i1 %cmp31.not, %cmp.not
  br i1 %brmerge, label %if.else36, label %if.end69

if.else36:                                        ; preds = %lor.lhs.false
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 90
  %27 = load i32* %MbaffFrameFlag, align 4, !tbaa !0
  %tobool37 = icmp eq i32 %27, 0
  br i1 %tobool37, label %if.else57, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.else36
  %mb_field = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 22
  %28 = load i32* %mb_field, align 4, !tbaa !0
  %cmp39 = icmp eq i32 %28, 0
  br i1 %cmp39, label %land.lhs.true41, label %if.else57

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %mb_field46 = getelementptr inbounds %struct.macroblock* %23, i64 %idxprom17, i32 22
  %29 = load i32* %mb_field46, align 4, !tbaa !0
  %cmp47 = icmp eq i32 %29, 1
  br i1 %cmp47, label %if.then49, label %if.else57

if.then49:                                        ; preds = %land.lhs.true41
  %pos_y = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 5
  %30 = load i32* %pos_y, align 4, !tbaa !0
  %idxprom50 = sext i32 %30 to i64
  %pos_x = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 4
  %31 = load i32* %pos_x, align 4, !tbaa !0
  %idxprom51 = sext i32 %31 to i64
  %arrayidx52 = getelementptr inbounds i16** %8, i64 %idxprom51
  %32 = load i16** %arrayidx52, align 8, !tbaa !3
  %arrayidx53 = getelementptr inbounds i16* %32, i64 %idxprom50
  %33 = load i16* %arrayidx53, align 2, !tbaa !4
  %cmp55 = icmp sgt i16 %33, 1
  %cond = select i1 %cmp55, i32 2, i32 0
  br label %if.end69

if.else57:                                        ; preds = %if.else36, %land.lhs.true41, %land.lhs.true38
  %pos_y58 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 5
  %34 = load i32* %pos_y58, align 4, !tbaa !0
  %idxprom59 = sext i32 %34 to i64
  %pos_x60 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 4
  %35 = load i32* %pos_x60, align 4, !tbaa !0
  %idxprom61 = sext i32 %35 to i64
  %arrayidx62 = getelementptr inbounds i16** %8, i64 %idxprom61
  %36 = load i16** %arrayidx62, align 8, !tbaa !3
  %arrayidx63 = getelementptr inbounds i16* %36, i64 %idxprom59
  %37 = load i16* %arrayidx63, align 2, !tbaa !4
  %cmp65 = icmp sgt i16 %37, 0
  %cond67 = select i1 %cmp65, i32 2, i32 0
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true, %lor.lhs.false, %entry, %if.else57, %if.then49
  %b.0 = phi i32 [ %cond, %if.then49 ], [ %cond67, %if.else57 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ]
  %available70 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0
  %38 = load i32* %available70, align 4, !tbaa !0
  %tobool71 = icmp eq i32 %38, 0
  br i1 %tobool71, label %if.end137, label %if.else73

if.else73:                                        ; preds = %if.end69
  %mb_addr74 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1
  %39 = load i32* %mb_addr74, align 4, !tbaa !0
  %idxprom75 = sext i32 %39 to i64
  %40 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %mb_data76 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 51
  %41 = load %struct.macroblock** %mb_data76, align 8, !tbaa !3
  %mb_type78 = getelementptr inbounds %struct.macroblock* %41, i64 %idxprom75, i32 8
  %42 = load i32* %mb_type78, align 4, !tbaa !0
  %cmp79 = icmp eq i32 %42, 0
  br i1 %cmp79, label %land.lhs.true81, label %lor.lhs.false85

land.lhs.true81:                                  ; preds = %if.else73
  %type82 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 6
  %43 = load i32* %type82, align 4, !tbaa !0
  %cmp83 = icmp eq i32 %43, 1
  br i1 %cmp83, label %if.end137, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %land.lhs.true81, %if.else73
  %idxprom86 = sext i32 %add to i64
  %arrayidx92 = getelementptr inbounds %struct.macroblock* %41, i64 %idxprom75, i32 14, i64 %idxprom86
  %44 = load i32* %arrayidx92, align 4, !tbaa !0
  %cmp93.not = icmp ne i32 %44, 0
  %cmp.not174 = xor i1 %cmp, true
  %brmerge175 = or i1 %cmp93.not, %cmp.not174
  br i1 %brmerge175, label %if.else98, label %if.end137

if.else98:                                        ; preds = %lor.lhs.false85
  %MbaffFrameFlag99 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 90
  %45 = load i32* %MbaffFrameFlag99, align 4, !tbaa !0
  %tobool100 = icmp eq i32 %45, 0
  br i1 %tobool100, label %if.else124, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.else98
  %mb_field102 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 22
  %46 = load i32* %mb_field102, align 4, !tbaa !0
  %cmp103 = icmp eq i32 %46, 0
  br i1 %cmp103, label %land.lhs.true105, label %if.else124

land.lhs.true105:                                 ; preds = %land.lhs.true101
  %mb_field110 = getelementptr inbounds %struct.macroblock* %41, i64 %idxprom75, i32 22
  %47 = load i32* %mb_field110, align 4, !tbaa !0
  %cmp111 = icmp eq i32 %47, 1
  br i1 %cmp111, label %if.then113, label %if.else124

if.then113:                                       ; preds = %land.lhs.true105
  %pos_y114 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 5
  %48 = load i32* %pos_y114, align 4, !tbaa !0
  %idxprom115 = sext i32 %48 to i64
  %pos_x116 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 4
  %49 = load i32* %pos_x116, align 4, !tbaa !0
  %idxprom117 = sext i32 %49 to i64
  %arrayidx118 = getelementptr inbounds i16** %8, i64 %idxprom117
  %50 = load i16** %arrayidx118, align 8, !tbaa !3
  %arrayidx119 = getelementptr inbounds i16* %50, i64 %idxprom115
  %51 = load i16* %arrayidx119, align 2, !tbaa !4
  %cmp121 = icmp sgt i16 %51, 1
  %cond123 = zext i1 %cmp121 to i32
  br label %if.end137

if.else124:                                       ; preds = %if.else98, %land.lhs.true105, %land.lhs.true101
  %pos_y125 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 5
  %52 = load i32* %pos_y125, align 4, !tbaa !0
  %idxprom126 = sext i32 %52 to i64
  %pos_x127 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 4
  %53 = load i32* %pos_x127, align 4, !tbaa !0
  %idxprom128 = sext i32 %53 to i64
  %arrayidx129 = getelementptr inbounds i16** %8, i64 %idxprom128
  %54 = load i16** %arrayidx129, align 8, !tbaa !3
  %arrayidx130 = getelementptr inbounds i16* %54, i64 %idxprom126
  %55 = load i16* %arrayidx130, align 2, !tbaa !4
  %cmp132 = icmp sgt i16 %55, 0
  %cond134 = zext i1 %cmp132 to i32
  br label %if.end137

if.end137:                                        ; preds = %land.lhs.true81, %lor.lhs.false85, %if.end69, %if.else124, %if.then113
  %a.0 = phi i32 [ %cond123, %if.then113 ], [ %cond134, %if.else124 ], [ 0, %if.end69 ], [ 0, %lor.lhs.false85 ], [ 0, %land.lhs.true81 ]
  %add139 = or i32 %a.0, %b.0
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6
  store i32 %add139, i32* %context, align 4, !tbaa !0
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %56 = load i32* %value1, align 4, !tbaa !0
  %cmp140 = icmp eq i32 %56, 0
  %idx.ext173 = zext i32 %add139 to i64
  %add.ptr = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 3, i64 0, i64 %idx.ext173
  br i1 %cmp140, label %if.then142, label %if.else145

if.then142:                                       ; preds = %if.end137
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #5
  br label %if.end158

if.else145:                                       ; preds = %if.end137
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #5
  %dec = add nsw i32 %56, -1
  %add.ptr157 = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 3, i64 0, i64 4
  call void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %dec, %struct.BiContextType* %add.ptr157, i32 1) #7
  br label %if.end158

if.end158:                                        ; preds = %if.else145, %if.then142
  ret void
}

; Function Attrs: optsize
declare void @getLuma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind optsize uwtable
define void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %ctx_offset) #0 {
entry:
  %cmp = icmp eq i32 %symbol, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #5
  br label %return

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #5
  %idx.ext = sext i32 %ctx_offset to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType* %ctx, i64 %idx.ext
  %dec5 = add i32 %symbol, -1
  %cmp16 = icmp eq i32 %dec5, 0
  br i1 %cmp16, label %while.end, label %while.body

while.body:                                       ; preds = %if.else, %while.body
  %dec7 = phi i32 [ %dec, %while.body ], [ %dec5, %if.else ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #5
  %dec = add i32 %dec7, -1
  %cmp1 = icmp eq i32 %dec, 0
  br i1 %cmp1, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.else
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #5
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @writeDquant_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %3 = load i32* %value1, align 4, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %4 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %5 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %prev_delta_qp = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 37
  %6 = load i32* %prev_delta_qp, align 4, !tbaa !0
  store i32 %6, i32* @last_dquant, align 4, !tbaa !0
  %cmp = icmp slt i32 %3, 1
  %. = zext i1 %cmp to i32
  %ispos = icmp sgt i32 %3, -1
  %neg = sub i32 0, %3
  %7 = select i1 %ispos, i32 %3, i32 %neg
  %shl = shl i32 %7, 1
  %add = or i32 %shl, %.
  %cmp1 = icmp ne i32 %6, 0
  %cmp2 = icmp eq i32 %add, 1
  %idx.ext = zext i1 %cmp1 to i64
  %add.ptr = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 4, i64 %idx.ext
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #5
  br label %if.end13

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #5
  %dec8 = add nsw i32 %add, -2
  %add.ptr12 = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 4, i64 2
  tail call void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %dec8, %struct.BiContextType* %add.ptr12, i32 1) #7
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @writeMVD_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 18
  %1 = load i32* %subblock_x, align 4, !tbaa !0
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 19
  %2 = load i32* %subblock_y, align 4, !tbaa !0
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %3 = load i32* %value2, align 4, !tbaa !0
  %and = and i32 %3, 1
  %shr = ashr i32 %3, 1
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %4 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %mot_ctx = getelementptr inbounds %struct.Slice* %4, i64 0, i32 7
  %5 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %6 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %6 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %7 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  call void @getLuma4x4Neighbour(i32 %6, i32 %1, i32 %2, i32 -1, i32 0, %struct.pix_pos* %block_a) #5
  %8 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr3 = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 3
  %9 = load i32* %current_mb_nr3, align 4, !tbaa !0
  call void @getLuma4x4Neighbour(i32 %9, i32 %1, i32 %2, i32 0, i32 -1, %struct.pix_pos* %block_b) #5
  %available = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0
  %10 = load i32* %available, align 4, !tbaa !0
  %tobool = icmp eq i32 %10, 0
  br i1 %tobool, label %if.end70, label %if.then

if.then:                                          ; preds = %entry
  %idxprom4 = sext i32 %shr to i64
  %x = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2
  %11 = load i32* %x, align 4, !tbaa !0
  %idxprom5 = sext i32 %11 to i64
  %y = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3
  %12 = load i32* %y, align 4, !tbaa !0
  %idxprom6 = sext i32 %12 to i64
  %idxprom7227 = zext i32 %and to i64
  %mb_addr = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1
  %13 = load i32* %mb_addr, align 4, !tbaa !0
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %mb_data9 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 51
  %15 = load %struct.macroblock** %mb_data9, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom8, i32 9, i64 %idxprom7227, i64 %idxprom6, i64 %idxprom5, i64 %idxprom4
  %16 = load i32* %arrayidx14, align 4, !tbaa !0
  %cmp = icmp slt i32 %16, 0
  %sub = sub nsw i32 0, %16
  %cond = select i1 %cmp, i32 %sub, i32 %16
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 90
  %17 = load i32* %MbaffFrameFlag, align 4, !tbaa !0
  %tobool45 = icmp ne i32 %17, 0
  %cmp46 = icmp eq i32 %shr, 1
  %or.cond = and i1 %tobool45, %cmp46
  br i1 %or.cond, label %if.then47, label %if.end70

if.then47:                                        ; preds = %if.then
  %mb_field = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 22
  %18 = load i32* %mb_field, align 4, !tbaa !0
  switch i32 %18, label %if.end70 [
    i32 0, label %land.lhs.true49
    i32 1, label %land.lhs.true59
  ]

land.lhs.true49:                                  ; preds = %if.then47
  %mb_field54 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom8, i32 22
  %19 = load i32* %mb_field54, align 4, !tbaa !0
  %cmp55 = icmp eq i32 %19, 1
  %mul = zext i1 %cmp55 to i32
  %mul.cond = shl nsw i32 %cond, %mul
  br label %if.end70

land.lhs.true59:                                  ; preds = %if.then47
  %mb_field64 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom8, i32 22
  %20 = load i32* %mb_field64, align 4, !tbaa !0
  %cmp65 = icmp eq i32 %20, 0
  br i1 %cmp65, label %if.then66, label %if.end70

if.then66:                                        ; preds = %land.lhs.true59
  %div = sdiv i32 %cond, 2
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true49, %if.then47, %entry, %if.then, %land.lhs.true59, %if.then66
  %b.0 = phi i32 [ %div, %if.then66 ], [ %cond, %land.lhs.true59 ], [ %cond, %if.then ], [ 0, %entry ], [ %mul.cond, %land.lhs.true49 ], [ %cond, %if.then47 ]
  %available71 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0
  %21 = load i32* %available71, align 4, !tbaa !0
  %tobool72 = icmp eq i32 %21, 0
  br i1 %tobool72, label %if.end157, label %if.then73

if.then73:                                        ; preds = %if.end70
  %idxprom74 = sext i32 %shr to i64
  %x75 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2
  %22 = load i32* %x75, align 4, !tbaa !0
  %idxprom76 = sext i32 %22 to i64
  %y77 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3
  %23 = load i32* %y77, align 4, !tbaa !0
  %idxprom78 = sext i32 %23 to i64
  %idxprom79226 = zext i32 %and to i64
  %mb_addr80 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1
  %24 = load i32* %mb_addr80, align 4, !tbaa !0
  %idxprom81 = sext i32 %24 to i64
  %25 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %mb_data82 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 51
  %26 = load %struct.macroblock** %mb_data82, align 8, !tbaa !3
  %arrayidx88 = getelementptr inbounds %struct.macroblock* %26, i64 %idxprom81, i32 9, i64 %idxprom79226, i64 %idxprom78, i64 %idxprom76, i64 %idxprom74
  %27 = load i32* %arrayidx88, align 4, !tbaa !0
  %cmp89 = icmp slt i32 %27, 0
  %sub106 = sub nsw i32 0, %27
  %cond124 = select i1 %cmp89, i32 %sub106, i32 %27
  %MbaffFrameFlag125 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 90
  %28 = load i32* %MbaffFrameFlag125, align 4, !tbaa !0
  %tobool126 = icmp ne i32 %28, 0
  %cmp128 = icmp eq i32 %shr, 1
  %or.cond228 = and i1 %tobool126, %cmp128
  br i1 %or.cond228, label %if.then129, label %if.end157

if.then129:                                       ; preds = %if.then73
  %mb_field130 = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 22
  %29 = load i32* %mb_field130, align 4, !tbaa !0
  switch i32 %29, label %if.end157 [
    i32 0, label %land.lhs.true132
    i32 1, label %land.lhs.true144
  ]

land.lhs.true132:                                 ; preds = %if.then129
  %mb_field137 = getelementptr inbounds %struct.macroblock* %26, i64 %idxprom81, i32 22
  %30 = load i32* %mb_field137, align 4, !tbaa !0
  %cmp138 = icmp eq i32 %30, 1
  %mul140 = zext i1 %cmp138 to i32
  %mul140.cond124 = shl nsw i32 %cond124, %mul140
  br label %if.end157

land.lhs.true144:                                 ; preds = %if.then129
  %mb_field149 = getelementptr inbounds %struct.macroblock* %26, i64 %idxprom81, i32 22
  %31 = load i32* %mb_field149, align 4, !tbaa !0
  %cmp150 = icmp eq i32 %31, 0
  br i1 %cmp150, label %if.then151, label %if.end157

if.then151:                                       ; preds = %land.lhs.true144
  %div152 = sdiv i32 %cond124, 2
  br label %if.end157

if.end157:                                        ; preds = %land.lhs.true132, %if.then129, %if.end70, %if.then73, %land.lhs.true144, %if.then151
  %a.0 = phi i32 [ %div152, %if.then151 ], [ %cond124, %land.lhs.true144 ], [ %cond124, %if.then73 ], [ 0, %if.end70 ], [ %mul140.cond124, %land.lhs.true132 ], [ %cond124, %if.then129 ]
  %add = add nsw i32 %a.0, %b.0
  %cmp158 = icmp slt i32 %add, 3
  br i1 %cmp158, label %if.then159, label %if.else161

if.then159:                                       ; preds = %if.end157
  %mul160 = mul nsw i32 %shr, 5
  br label %if.end170

if.else161:                                       ; preds = %if.end157
  %cmp162 = icmp sgt i32 %add, 32
  %mul164 = mul nsw i32 %shr, 5
  br i1 %cmp162, label %if.then163, label %if.else166

if.then163:                                       ; preds = %if.else161
  %add165 = add nsw i32 %mul164, 3
  br label %if.end170

if.else166:                                       ; preds = %if.else161
  %add168 = add nsw i32 %mul164, 2
  br label %if.end170

if.end170:                                        ; preds = %if.then163, %if.else166, %if.then159
  %act_ctx.0 = phi i32 [ %mul160, %if.then159 ], [ %add165, %if.then163 ], [ %add168, %if.else166 ]
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %32 = load i32* %value1, align 4, !tbaa !0
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6
  store i32 %act_ctx.0, i32* %context, align 4, !tbaa !0
  %cmp171 = icmp slt i32 %32, 0
  %sub173 = sub nsw i32 0, %32
  %cond176 = select i1 %cmp171, i32 %sub173, i32 %32
  %cmp177 = icmp eq i32 %cond176, 0
  %idxprom179 = sext i32 %act_ctx.0 to i64
  %arrayidx181 = getelementptr inbounds %struct.MotionInfoContexts* %5, i64 0, i32 2, i64 0, i64 %idxprom179
  br i1 %cmp177, label %if.then178, label %if.else182

if.then178:                                       ; preds = %if.end170
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx181) #5
  br label %if.end193

if.else182:                                       ; preds = %if.end170
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx181) #5
  %dec = add nsw i32 %cond176, -1
  %mul187 = mul nsw i32 %shr, 5
  %idx.ext = sext i32 %mul187 to i64
  %add.ptr = getelementptr inbounds %struct.MotionInfoContexts* %5, i64 0, i32 2, i64 1, i64 %idx.ext
  call void @unary_exp_golomb_mv_encode(%struct.EncodingEnvironment* %eep_dp, i32 %dec, %struct.BiContextType* %add.ptr, i32 3) #7
  %.lobit = lshr i32 %32, 31
  %33 = trunc i32 %.lobit to i16
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext %33) #5
  br label %if.end193

if.end193:                                        ; preds = %if.else182, %if.then178
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @unary_exp_golomb_mv_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %max_bin) #0 {
entry:
  %cmp = icmp eq i32 %symbol, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #5
  br label %return

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #5
  %incdec.ptr = getelementptr inbounds %struct.BiContextType* %ctx, i64 1
  %cmp130 = icmp eq i32 %symbol, 1
  br i1 %cmp130, label %if.then12, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.else
  %0 = sub i32 1, %symbol
  %1 = icmp ugt i32 %0, -7
  %2 = select i1 %1, i32 %symbol, i32 8
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %ictx.033 = phi %struct.BiContextType* [ %incdec.ptr, %while.body.lr.ph ], [ %incdec.ptr9.incdec.ptr6.ictx.0, %while.body ]
  %bin.032 = phi i32 [ 1, %while.body.lr.ph ], [ %inc3, %while.body ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ictx.033) #5
  %inc3 = add i32 %bin.032, 1
  %cmp4 = icmp eq i32 %inc3, 2
  %incdec.ptr6 = getelementptr inbounds %struct.BiContextType* %ictx.033, i64 1
  %incdec.ptr6.ictx.0 = select i1 %cmp4, %struct.BiContextType* %incdec.ptr6, %struct.BiContextType* %ictx.033
  %cmp7 = icmp eq i32 %inc3, %max_bin
  %incdec.ptr9 = getelementptr inbounds %struct.BiContextType* %incdec.ptr6.ictx.0, i64 1
  %incdec.ptr9.incdec.ptr6.ictx.0 = select i1 %cmp7, %struct.BiContextType* %incdec.ptr9, %struct.BiContextType* %incdec.ptr6.ictx.0
  %exitcond = icmp eq i32 %inc3, %2
  br i1 %exitcond, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %cmp11 = icmp ult i32 %symbol, 8
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else, %while.end
  %ictx.0.lcssa36 = phi %struct.BiContextType* [ %incdec.ptr9.incdec.ptr6.ictx.0, %while.end ], [ %incdec.ptr, %if.else ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ictx.0.lcssa36) #5
  br label %return

if.else13:                                        ; preds = %while.end
  %sub = add i32 %symbol, -8
  tail call void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %sub, i32 3) #7
  br label %return

return:                                           ; preds = %if.else13, %if.then12, %if.then
  ret void
}

; Function Attrs: optsize
declare void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment*, i16 signext) #1

; Function Attrs: nounwind optsize uwtable
define void @writeCIPredMode_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %tex_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8
  %2 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %3 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %4 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %5 = load i32* %value1, align 4, !tbaa !0
  %mb_available_up = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 6
  %6 = load %struct.macroblock** %mb_available_up, align 8, !tbaa !3
  %cmp = icmp eq %struct.macroblock* %6, null
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %6, i64 0, i32 20
  %7 = load i32* %c_ipred_mode, align 4, !tbaa !0
  %cmp2 = icmp ne i32 %7, 0
  %cond = zext i1 %cmp2 to i64
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %b.0 = phi i64 [ %cond, %if.else ], [ 0, %entry ]
  %mb_available_left = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 7
  %8 = load %struct.macroblock** %mb_available_left, align 8, !tbaa !3
  %cmp3 = icmp eq %struct.macroblock* %8, null
  br i1 %cmp3, label %if.end10, label %if.else5

if.else5:                                         ; preds = %if.end
  %c_ipred_mode7 = getelementptr inbounds %struct.macroblock* %8, i64 0, i32 20
  %9 = load i32* %c_ipred_mode7, align 4, !tbaa !0
  %cmp8 = icmp ne i32 %9, 0
  %cond9 = zext i1 %cmp8 to i64
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.else5
  %a.0 = phi i64 [ %cond9, %if.else5 ], [ 0, %if.end ]
  %add = add i64 %a.0, %b.0
  %cmp11 = icmp eq i32 %5, 0
  %add.ptr = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 1, i64 %add
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end10
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #5
  br label %if.end21

if.else13:                                        ; preds = %if.end10
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #5
  %sub = add nsw i32 %5, -1
  %add.ptr20 = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 1, i64 3
  tail call void @unary_bin_max_encode(%struct.EncodingEnvironment* %eep_dp, i32 %sub, %struct.BiContextType* %add.ptr20, i32 0, i32 2) #7
  br label %if.end21

if.end21:                                         ; preds = %if.else13, %if.then12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @unary_bin_max_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %ctx_offset, i32 %max_symbol) #0 {
entry:
  %cmp = icmp eq i32 %symbol, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #5
  br label %return

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #5
  %idx.ext = sext i32 %ctx_offset to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType* %ctx, i64 %idx.ext
  %dec11 = add i32 %symbol, -1
  %cmp112 = icmp eq i32 %dec11, 0
  br i1 %cmp112, label %while.end, label %while.body

while.body:                                       ; preds = %if.else, %while.body
  %dec13 = phi i32 [ %dec, %while.body ], [ %dec11, %if.else ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #5
  %dec = add i32 %dec13, -1
  %cmp1 = icmp eq i32 %dec, 0
  br i1 %cmp1, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.else
  %cmp2 = icmp ult i32 %symbol, %max_symbol
  br i1 %cmp2, label %if.then3, label %return

if.then3:                                         ; preds = %while.end
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #5
  br label %return

return:                                           ; preds = %if.then3, %while.end, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @writeCBP_BIT_CABAC(i32 %b8, i32 %bit, i32 %cbp, %struct.macroblock* nocapture %currMB, i32 %inter, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %rem = srem i32 %b8, 2
  %shl = shl i32 %rem, 1
  %div = sdiv i32 %b8, 2
  %shl1 = shl i32 %div, 1
  %cmp = icmp eq i32 %shl1, 0
  br i1 %cmp, label %if.then, label %if.else14

if.then:                                          ; preds = %entry
  %mb_available_up = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 6
  %0 = load %struct.macroblock** %mb_available_up, align 8, !tbaa !3
  %cmp2 = icmp eq %struct.macroblock* %0, null
  br i1 %cmp2, label %if.end20, label %if.else

if.else:                                          ; preds = %if.then
  %mb_type = getelementptr inbounds %struct.macroblock* %0, i64 0, i32 8
  %1 = load i32* %mb_type, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %1, 14
  br i1 %cmp5, label %if.end20, label %if.else7

if.else7:                                         ; preds = %if.else
  %cbp9 = getelementptr inbounds %struct.macroblock* %0, i64 0, i32 12
  %2 = load i32* %cbp9, align 4, !tbaa !0
  %div10 = sdiv i32 %shl, 2
  %add = add nsw i32 %div10, 2
  %shl11 = shl i32 1, %add
  %and = and i32 %shl11, %2
  %cmp12 = icmp eq i32 %and, 0
  %cond = zext i1 %cmp12 to i64
  br label %if.end20

if.else14:                                        ; preds = %entry
  %div15 = sdiv i32 %shl, 2
  %shl16 = shl i32 1, %div15
  %and17 = and i32 %shl16, %cbp
  %cmp18 = icmp eq i32 %and17, 0
  %cond19 = zext i1 %cmp18 to i64
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then, %if.else7, %if.else14
  %b.0 = phi i64 [ %cond, %if.else7 ], [ %cond19, %if.else14 ], [ 0, %if.then ], [ 0, %if.else ]
  %cmp21 = icmp eq i32 %shl, 0
  br i1 %cmp21, label %if.then22, label %if.else42

if.then22:                                        ; preds = %if.end20
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !0
  call void @getLuma4x4Neighbour(i32 %4, i32 0, i32 %shl1, i32 -1, i32 0, %struct.pix_pos* %block_a) #5
  %available = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0
  %5 = load i32* %available, align 4, !tbaa !0
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.end47, label %if.then23

if.then23:                                        ; preds = %if.then22
  %mb_addr = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1
  %6 = load i32* %mb_addr, align 4, !tbaa !0
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %mb_data = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 51
  %8 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %mb_type24 = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom, i32 8
  %9 = load i32* %mb_type24, align 4, !tbaa !0
  %cmp25 = icmp eq i32 %9, 14
  br i1 %cmp25, label %if.end47, label %if.else27

if.else27:                                        ; preds = %if.then23
  %cbp32 = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom, i32 12
  %10 = load i32* %cbp32, align 4, !tbaa !0
  %y = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3
  %11 = load i32* %y, align 4, !tbaa !0
  %div33 = sdiv i32 %11, 2
  %mul = shl nsw i32 %div33, 1
  %add3464 = or i32 %mul, 1
  %shl35 = shl i32 1, %add3464
  %and36 = and i32 %shl35, %10
  %cmp37 = icmp eq i32 %and36, 0
  %cond38 = zext i1 %cmp37 to i64
  br label %if.end47

if.else42:                                        ; preds = %if.end20
  %shl43 = shl i32 1, %shl1
  %and44 = and i32 %shl43, %cbp
  %cmp45 = icmp eq i32 %and44, 0
  %cond46 = zext i1 %cmp45 to i64
  br label %if.end47

if.end47:                                         ; preds = %if.then22, %if.then23, %if.else27, %if.else42
  %a.0 = phi i64 [ %cond38, %if.else27 ], [ %cond46, %if.else42 ], [ 0, %if.then23 ], [ 0, %if.then22 ]
  %conv = trunc i32 %bit to i16
  %conv48 = and i16 %conv, 255
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 50
  %13 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %tex_ctx = getelementptr inbounds %struct.Slice* %13, i64 0, i32 8
  %14 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !tbaa !3
  %mul50 = shl nuw nsw i64 %b.0, 1
  %add.ptr.sum = or i64 %a.0, %mul50
  %add.ptr52 = getelementptr inbounds %struct.TextureInfoContexts* %14, i64 0, i32 2, i64 0, i64 %add.ptr.sum
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv48, %struct.BiContextType* %add.ptr52) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @writeCBP_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %tex_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8
  %2 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %3 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %4 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %5 = load i32* %value1, align 4, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %b8.0129 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %shl = shl i32 1, %b8.0129
  %and = and i32 %shl, %5
  tail call void @writeCBP_BIT_CABAC(i32 %b8.0129, i32 %and, i32 %5, %struct.macroblock* %arrayidx, i32 undef, %struct.EncodingEnvironment* %eep_dp) #7
  %inc = add nsw i32 %b8.0129, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %6 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 159
  %7 = load i32* %yuv_format, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.end96, label %if.then

if.then:                                          ; preds = %for.end
  %mb_available_up = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 6
  %8 = load %struct.macroblock** %mb_available_up, align 8, !tbaa !3
  %cmp5 = icmp eq %struct.macroblock* %8, null
  br i1 %cmp5, label %if.end14, label %if.then6

if.then6:                                         ; preds = %if.then
  %mb_type = getelementptr inbounds %struct.macroblock* %8, i64 0, i32 8
  %9 = load i32* %mb_type, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %9, 14
  br i1 %cmp8, label %if.end14, label %if.else

if.else:                                          ; preds = %if.then6
  %cbp11 = getelementptr inbounds %struct.macroblock* %8, i64 0, i32 12
  %10 = load i32* %cbp11, align 4, !tbaa !0
  %cmp12 = icmp sgt i32 %10, 15
  %cond13 = select i1 %cmp12, i64 2, i64 0
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.then, %if.else
  %b.0 = phi i64 [ %cond13, %if.else ], [ 0, %if.then ], [ 2, %if.then6 ]
  %mb_available_left = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 7
  %11 = load %struct.macroblock** %mb_available_left, align 8, !tbaa !3
  %cmp15 = icmp eq %struct.macroblock* %11, null
  br i1 %cmp15, label %if.end27, label %if.then16

if.then16:                                        ; preds = %if.end14
  %mb_type18 = getelementptr inbounds %struct.macroblock* %11, i64 0, i32 8
  %12 = load i32* %mb_type18, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %12, 14
  br i1 %cmp19, label %if.end27, label %if.else21

if.else21:                                        ; preds = %if.then16
  %cbp23 = getelementptr inbounds %struct.macroblock* %11, i64 0, i32 12
  %13 = load i32* %cbp23, align 4, !tbaa !0
  %cmp24 = icmp sgt i32 %13, 15
  %cond25 = zext i1 %cmp24 to i64
  br label %if.end27

if.end27:                                         ; preds = %if.then16, %if.end14, %if.else21
  %a.0 = phi i64 [ %cond25, %if.else21 ], [ 0, %if.end14 ], [ 1, %if.then16 ]
  %add = or i64 %a.0, %b.0
  %cmp28 = icmp sgt i32 %5, 15
  %conv30 = zext i1 %cmp28 to i16
  %add.ptr = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 2, i64 1, i64 %add
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv30, %struct.BiContextType* %add.ptr) #5
  br i1 %cmp28, label %if.then34, label %if.end96

if.then34:                                        ; preds = %if.end27
  %14 = load %struct.macroblock** %mb_available_up, align 8, !tbaa !3
  %cmp36 = icmp eq %struct.macroblock* %14, null
  br i1 %cmp36, label %if.end57, label %if.then38

if.then38:                                        ; preds = %if.then34
  %mb_type40 = getelementptr inbounds %struct.macroblock* %14, i64 0, i32 8
  %15 = load i32* %mb_type40, align 4, !tbaa !0
  %cmp41 = icmp eq i32 %15, 14
  br i1 %cmp41, label %if.end57, label %if.else44

if.else44:                                        ; preds = %if.then38
  %cbp46 = getelementptr inbounds %struct.macroblock* %14, i64 0, i32 12
  %16 = load i32* %cbp46, align 4, !tbaa !0
  %cmp47 = icmp sgt i32 %16, 15
  br i1 %cmp47, label %if.then49, label %if.end57

if.then49:                                        ; preds = %if.else44
  %shr.mask = and i32 %16, -16
  %cmp52 = icmp eq i32 %shr.mask, 32
  %cond54 = select i1 %cmp52, i64 2, i64 0
  br label %if.end57

if.end57:                                         ; preds = %if.then38, %if.then34, %if.then49, %if.else44
  %b.1 = phi i64 [ %cond54, %if.then49 ], [ 0, %if.else44 ], [ 0, %if.then34 ], [ 2, %if.then38 ]
  %17 = load %struct.macroblock** %mb_available_left, align 8, !tbaa !3
  %cmp59 = icmp eq %struct.macroblock* %17, null
  br i1 %cmp59, label %if.end81, label %if.then61

if.then61:                                        ; preds = %if.end57
  %mb_type63 = getelementptr inbounds %struct.macroblock* %17, i64 0, i32 8
  %18 = load i32* %mb_type63, align 4, !tbaa !0
  %cmp64 = icmp eq i32 %18, 14
  br i1 %cmp64, label %if.end81, label %if.else67

if.else67:                                        ; preds = %if.then61
  %cbp69 = getelementptr inbounds %struct.macroblock* %17, i64 0, i32 12
  %19 = load i32* %cbp69, align 4, !tbaa !0
  %cmp70 = icmp sgt i32 %19, 15
  br i1 %cmp70, label %if.then72, label %if.end81

if.then72:                                        ; preds = %if.else67
  %shr75.mask = and i32 %19, -16
  %cmp76 = icmp eq i32 %shr75.mask, 32
  %cond78 = zext i1 %cmp76 to i64
  br label %if.end81

if.end81:                                         ; preds = %if.then61, %if.end57, %if.then72, %if.else67
  %a.1 = phi i64 [ %cond78, %if.then72 ], [ 0, %if.else67 ], [ 0, %if.end57 ], [ 1, %if.then61 ]
  %add83 = or i64 %a.1, %b.1
  %shr84.mask = and i32 %5, -16
  %cmp85 = icmp eq i32 %shr84.mask, 32
  %conv89 = zext i1 %cmp85 to i16
  %add.ptr94 = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 2, i64 2, i64 %add83
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv89, %struct.BiContextType* %add.ptr94) #5
  br label %if.end96

if.end96:                                         ; preds = %for.end, %if.end27, %if.end81
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_and_store_CBP_block_bit(%struct.macroblock* nocapture %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32 %cbp_bit) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %type.off = add i32 %type, -1
  %cmp5 = icmp eq i32 %type, 4
  %0 = icmp ult i32 %type.off, 5
  %cmp7 = icmp eq i32 %type, 0
  switch i32 %type, label %land.end38 [
    i32 7, label %land.end15.thread
    i32 8, label %land.rhs35
    i32 6, label %land.rhs35
    i32 9, label %land.rhs35
  ]

land.end15.thread:                                ; preds = %entry
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %is_v_block = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 21
  %2 = load i32* %is_v_block, align 4, !tbaa !0
  %lnot = icmp eq i32 %2, 0
  %tobool14 = icmp ne i32 %2, 0
  br label %land.end38

land.rhs35:                                       ; preds = %entry, %entry, %entry
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %is_v_block29 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 21
  %4 = load i32* %is_v_block29, align 4, !tbaa !0
  %lnot31 = icmp eq i32 %4, 0
  %tobool37 = icmp ne i32 %4, 0
  br label %land.end38

land.end38:                                       ; preds = %entry, %land.end15.thread, %land.rhs35
  %5 = phi i1 [ %lnot31, %land.rhs35 ], [ false, %land.end15.thread ], [ false, %entry ]
  %6 = phi i1 [ false, %land.rhs35 ], [ %tobool14, %land.end15.thread ], [ false, %entry ]
  %7 = phi i1 [ false, %land.rhs35 ], [ %lnot, %land.end15.thread ], [ false, %entry ]
  %8 = phi i1 [ %tobool37, %land.rhs35 ], [ false, %land.end15.thread ], [ false, %entry ]
  %brmerge = or i1 %0, %7
  %brmerge361 = or i1 %brmerge, %6
  %9 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br i1 %brmerge361, label %cond.true50, label %cond.end52

cond.true50:                                      ; preds = %land.end38
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 19
  %10 = load i32* %subblock_y, align 4, !tbaa !0
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 18
  %11 = load i32* %subblock_x, align 4, !tbaa !0
  br label %cond.end52

cond.end52:                                       ; preds = %land.end38, %cond.true50
  %cond375 = phi i32 [ %10, %cond.true50 ], [ 0, %land.end38 ]
  %cond53 = phi i32 [ %11, %cond.true50 ], [ 0, %land.end38 ]
  %brmerge364 = or i1 %cmp7, %0
  %brmerge365 = or i1 %brmerge364, %5
  %is_intra_block = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 20
  %12 = load i32* %is_intra_block, align 4, !tbaa !0
  %tobool76 = icmp ne i32 %12, 0
  %cond77 = zext i1 %tobool76 to i32
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 3
  %13 = load i32* %current_mb_nr, align 4, !tbaa !0
  br i1 %brmerge364, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end52
  call void @getLuma4x4Neighbour(i32 %13, i32 %cond53, i32 %cond375, i32 -1, i32 0, %struct.pix_pos* %block_a) #5
  %14 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr81 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 3
  %15 = load i32* %current_mb_nr81, align 4, !tbaa !0
  call void @getLuma4x4Neighbour(i32 %15, i32 %cond53, i32 %cond375, i32 0, i32 -1, %struct.pix_pos* %block_b) #5
  br i1 %0, label %if.then83, label %if.end118

if.then83:                                        ; preds = %if.then
  %available = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0
  %16 = load i32* %available, align 4, !tbaa !0
  %tobool84 = icmp eq i32 %16, 0
  br i1 %tobool84, label %if.end, label %if.then85

if.then85:                                        ; preds = %if.then83
  %y = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3
  %17 = load i32* %y, align 4, !tbaa !0
  %mul = shl i32 %17, 2
  %x = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2
  %18 = load i32* %x, align 4, !tbaa !0
  %add = add nsw i32 %mul, %18
  br label %if.end

if.end:                                           ; preds = %if.then83, %if.then85
  %bit_pos_a.0 = phi i32 [ %add, %if.then85 ], [ 0, %if.then83 ]
  %available86 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0
  %19 = load i32* %available86, align 4, !tbaa !0
  %tobool87 = icmp eq i32 %19, 0
  br i1 %tobool87, label %if.end118, label %if.then88

if.then88:                                        ; preds = %if.end
  %y89 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3
  %20 = load i32* %y89, align 4, !tbaa !0
  %mul90 = shl i32 %20, 2
  %x91 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2
  %21 = load i32* %x91, align 4, !tbaa !0
  %add92 = add nsw i32 %mul90, %21
  br label %if.end118

if.else:                                          ; preds = %cond.end52
  call void @getChroma4x4Neighbour(i32 %13, i32 %cond53, i32 %cond375, i32 -1, i32 0, %struct.pix_pos* %block_a) #5
  %22 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr96 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 3
  %23 = load i32* %current_mb_nr96, align 4, !tbaa !0
  call void @getChroma4x4Neighbour(i32 %23, i32 %cond53, i32 %cond375, i32 0, i32 -1, %struct.pix_pos* %block_b) #5
  %brmerge368 = or i1 %7, %6
  br i1 %brmerge368, label %if.then100, label %if.end118

if.then100:                                       ; preds = %if.else
  %available101 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0
  %24 = load i32* %available101, align 4, !tbaa !0
  %tobool102 = icmp eq i32 %24, 0
  br i1 %tobool102, label %if.end108, label %if.then103

if.then103:                                       ; preds = %if.then100
  %y104 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3
  %25 = load i32* %y104, align 4, !tbaa !0
  %mul105 = shl i32 %25, 1
  %x106 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2
  %26 = load i32* %x106, align 4, !tbaa !0
  %add107 = add nsw i32 %mul105, %26
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %if.then103
  %bit_pos_a.1 = phi i32 [ %add107, %if.then103 ], [ 0, %if.then100 ]
  %available109 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0
  %27 = load i32* %available109, align 4, !tbaa !0
  %tobool110 = icmp eq i32 %27, 0
  br i1 %tobool110, label %if.end118, label %if.then111

if.then111:                                       ; preds = %if.end108
  %y112 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3
  %28 = load i32* %y112, align 4, !tbaa !0
  %mul113 = shl i32 %28, 1
  %x114 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2
  %29 = load i32* %x114, align 4, !tbaa !0
  %add115 = add nsw i32 %mul113, %29
  br label %if.end118

if.end118:                                        ; preds = %if.else, %if.end, %if.end108, %if.then111, %if.then, %if.then88
  %bit_pos_a.2 = phi i32 [ %bit_pos_a.0, %if.then88 ], [ %bit_pos_a.0, %if.end ], [ 0, %if.then ], [ %bit_pos_a.1, %if.then111 ], [ %bit_pos_a.1, %if.end108 ], [ 0, %if.else ]
  %bit_pos_b.0 = phi i32 [ %add92, %if.then88 ], [ 0, %if.end ], [ 0, %if.then ], [ %add115, %if.then111 ], [ 0, %if.end108 ], [ 0, %if.else ]
  br i1 %cmp7, label %cond.end151, label %cond.false121

cond.false121:                                    ; preds = %if.end118
  br i1 %0, label %cond.true123, label %cond.false127

cond.true123:                                     ; preds = %cond.false121
  %mul124 = shl nsw i32 %cond375, 2
  %add125360 = or i32 %mul124, 1
  %add126 = add nsw i32 %add125360, %cond53
  br label %cond.end151

cond.false127:                                    ; preds = %cond.false121
  %brmerge369 = or i1 %5, %8
  %.mux = select i1 %5, i32 17, i32 18
  br i1 %brmerge369, label %cond.end151, label %cond.false133

cond.false133:                                    ; preds = %cond.false127
  %mul136 = shl nsw i32 %cond375, 1
  br i1 %7, label %cond.true135, label %cond.false139

cond.true135:                                     ; preds = %cond.false133
  %add137 = add nsw i32 %mul136, 19
  %add138 = add nsw i32 %add137, %cond53
  br label %cond.end151

cond.false139:                                    ; preds = %cond.false133
  %add141 = add nsw i32 %mul136, 23
  %add142 = add nsw i32 %add141, %cond53
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false127, %cond.true123, %cond.false139, %cond.true135, %if.end118
  %cond152 = phi i32 [ 0, %if.end118 ], [ %add126, %cond.true123 ], [ %.mux, %cond.false127 ], [ %add138, %cond.true135 ], [ %add142, %cond.false139 ]
  %tobool153 = icmp eq i32 %cbp_bit, 0
  br i1 %tobool153, label %if.end208, label %if.then154

if.then154:                                       ; preds = %cond.end151
  switch i32 %type, label %if.else187 [
    i32 2, label %if.then157
    i32 3, label %if.then177
  ]

if.then157:                                       ; preds = %if.then154
  %shl = shl i32 1, %cond152
  %cbp_bits = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 16
  %30 = load i64* %cbp_bits, align 8, !tbaa !5
  %add159 = add nsw i32 %cond152, 1
  %shl160 = shl i32 1, %add159
  %add164 = add nsw i32 %cond152, 4
  %shl165 = shl i32 1, %add164
  %add169 = add nsw i32 %cond152, 5
  %shl170 = shl i32 1, %add169
  %or379 = or i32 %shl160, %shl
  %or163380 = or i32 %or379, %shl165
  %or168381 = or i32 %or163380, %shl170
  %or168 = sext i32 %or168381 to i64
  %or173 = or i64 %or168, %30
  store i64 %or173, i64* %cbp_bits, align 8, !tbaa !5
  br label %if.end208

if.then177:                                       ; preds = %if.then154
  %shl178 = shl i32 1, %cond152
  %cbp_bits180 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 16
  %31 = load i64* %cbp_bits180, align 8, !tbaa !5
  %add182 = add nsw i32 %cond152, 1
  %shl183 = shl i32 1, %add182
  %or181378 = or i32 %shl183, %shl178
  %or181 = sext i32 %or181378 to i64
  %or186 = or i64 %or181, %31
  store i64 %or186, i64* %cbp_bits180, align 8, !tbaa !5
  br label %if.end208

if.else187:                                       ; preds = %if.then154
  %shl191 = shl i32 1, %cond152
  %conv192 = sext i32 %shl191 to i64
  %cbp_bits193 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 16
  %32 = load i64* %cbp_bits193, align 8, !tbaa !5
  %or194 = or i64 %32, %conv192
  store i64 %or194, i64* %cbp_bits193, align 8, !tbaa !5
  br i1 %cmp5, label %if.then190, label %if.end208

if.then190:                                       ; preds = %if.else187
  %add195 = add nsw i32 %cond152, 4
  %shl196 = shl i32 1, %add195
  %conv197 = sext i32 %shl196 to i64
  %or199 = or i64 %or194, %conv197
  store i64 %or199, i64* %cbp_bits193, align 8, !tbaa !5
  br label %if.end208

if.end208:                                        ; preds = %cond.end151, %if.then157, %if.then190, %if.else187, %if.then177
  %33 = zext i1 %cmp7 to i32
  %.mux371 = xor i32 %33, 1
  %.mux371.mux = select i1 %brmerge364, i32 %.mux371, i32 17
  %brmerge373 = or i1 %brmerge365, %8
  %.mux371.mux.mux = select i1 %brmerge365, i32 %.mux371.mux, i32 18
  br i1 %brmerge373, label %cond.end229, label %cond.false220

cond.false220:                                    ; preds = %if.end208
  %cond222 = select i1 %7, i32 19, i32 23
  br label %cond.end229

cond.end229:                                      ; preds = %if.end208, %cond.false220
  %cond230 = phi i32 [ %.mux371.mux.mux, %if.end208 ], [ %cond222, %cond.false220 ]
  %cmp231 = icmp eq i32 %type, 2
  br i1 %cmp231, label %if.end287, label %if.then233

if.then233:                                       ; preds = %cond.end229
  %available234 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0
  %34 = load i32* %available234, align 4, !tbaa !0
  %tobool235 = icmp eq i32 %34, 0
  br i1 %tobool235, label %if.end252, label %if.then236

if.then236:                                       ; preds = %if.then233
  %mb_addr = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1
  %35 = load i32* %mb_addr, align 4, !tbaa !0
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %mb_data = getelementptr inbounds %struct.ImageParameters* %36, i64 0, i32 51
  %37 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %mb_type = getelementptr inbounds %struct.macroblock* %37, i64 %idxprom, i32 8
  %38 = load i32* %mb_type, align 4, !tbaa !0
  %cmp237 = icmp eq i32 %38, 14
  br i1 %cmp237, label %if.end252, label %if.else240

if.else240:                                       ; preds = %if.then236
  %cbp_bits245 = getelementptr inbounds %struct.macroblock* %37, i64 %idxprom, i32 16
  %39 = load i64* %cbp_bits245, align 8, !tbaa !5
  %add246 = add nsw i32 %cond230, %bit_pos_b.0
  %shl247 = shl i32 1, %add246
  %conv248 = sext i32 %shl247 to i64
  %and = and i64 %39, %conv248
  %sh_prom = zext i32 %add246 to i64
  %shr = lshr i64 %and, %sh_prom
  %conv250 = trunc i64 %shr to i32
  br label %if.end252

if.end252:                                        ; preds = %if.then236, %if.then233, %if.else240
  %upper_bit.0 = phi i32 [ %conv250, %if.else240 ], [ %cond77, %if.then233 ], [ 1, %if.then236 ]
  %available253 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0
  %40 = load i32* %available253, align 4, !tbaa !0
  %tobool254 = icmp eq i32 %40, 0
  br i1 %tobool254, label %if.end252.if.end279_crit_edge, label %if.then255

if.end252.if.end279_crit_edge:                    ; preds = %if.end252
  %.pre382 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %if.end279

if.then255:                                       ; preds = %if.end252
  %mb_addr256 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1
  %41 = load i32* %mb_addr256, align 4, !tbaa !0
  %idxprom257 = sext i32 %41 to i64
  %42 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %mb_data258 = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 51
  %43 = load %struct.macroblock** %mb_data258, align 8, !tbaa !3
  %mb_type260 = getelementptr inbounds %struct.macroblock* %43, i64 %idxprom257, i32 8
  %44 = load i32* %mb_type260, align 4, !tbaa !0
  %cmp261 = icmp eq i32 %44, 14
  br i1 %cmp261, label %if.end279, label %if.else264

if.else264:                                       ; preds = %if.then255
  %cbp_bits269 = getelementptr inbounds %struct.macroblock* %43, i64 %idxprom257, i32 16
  %45 = load i64* %cbp_bits269, align 8, !tbaa !5
  %add270 = add nsw i32 %cond230, %bit_pos_a.2
  %shl271 = shl i32 1, %add270
  %conv272 = sext i32 %shl271 to i64
  %and273 = and i64 %45, %conv272
  %sh_prom275 = zext i32 %add270 to i64
  %shr276 = lshr i64 %and273, %sh_prom275
  %conv277 = trunc i64 %shr276 to i32
  br label %if.end279

if.end279:                                        ; preds = %if.end252.if.end279_crit_edge, %if.then255, %if.else264
  %46 = phi %struct.ImageParameters* [ %42, %if.else264 ], [ %.pre382, %if.end252.if.end279_crit_edge ], [ %42, %if.then255 ]
  %left_bit.0 = phi i32 [ %conv277, %if.else264 ], [ %cond77, %if.end252.if.end279_crit_edge ], [ 1, %if.then255 ]
  %mul280 = shl i32 %upper_bit.0, 1
  %add281 = add nsw i32 %left_bit.0, %mul280
  %conv282 = trunc i32 %cbp_bit to i16
  %idxprom283 = sext i32 %type to i64
  %arrayidx284 = getelementptr inbounds [10 x i32]* @type2ctx_bcbp, i64 0, i64 %idxprom283
  %47 = load i32* %arrayidx284, align 4, !tbaa !0
  %idxprom285 = sext i32 %47 to i64
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 50
  %48 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %tex_ctx = getelementptr inbounds %struct.Slice* %48, i64 0, i32 8
  %49 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !tbaa !3
  %idx.ext = sext i32 %add281 to i64
  %add.ptr = getelementptr inbounds %struct.TextureInfoContexts* %49, i64 0, i32 3, i64 %idxprom285, i64 %idx.ext
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv282, %struct.BiContextType* %add.ptr) #5
  br label %if.end287

if.end287:                                        ; preds = %cond.end229, %if.end279
  ret void
}

; Function Attrs: optsize
declare void @getChroma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind optsize uwtable
define void @write_significance_map(%struct.macroblock* nocapture %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32* nocapture %coeff, i32 %coeff_ctr) #0 {
entry:
  %idxprom = sext i32 %type to i64
  %arrayidx = getelementptr inbounds [10 x i32]* @maxpos, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %sub = add nsw i32 %0, -1
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %structure = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 7
  %2 = load i32* %structure, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %mb_field = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 22
  %3 = load i32* %mb_field, align 4, !tbaa !0
  %tobool = icmp ne i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %arrayidx3 = getelementptr inbounds [10 x i32]* @type2ctx_last, i64 0, i64 %idxprom
  %5 = load i32* %arrayidx3, align 4, !tbaa !0
  %idxprom4 = sext i32 %5 to i64
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50
  %6 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %tex_ctx = getelementptr inbounds %struct.Slice* %6, i64 0, i32 8
  %7 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !tbaa !3
  %fld_map_contexts = getelementptr inbounds %struct.TextureInfoContexts* %7, i64 0, i32 8
  %map_contexts = getelementptr inbounds %struct.TextureInfoContexts* %7, i64 0, i32 4
  %fld_map_contexts.sink = select i1 %4, [10 x [15 x %struct.BiContextType]]* %fld_map_contexts, [10 x [15 x %struct.BiContextType]]* %map_contexts
  %arrayidx16 = getelementptr inbounds [10 x i32]* @type2ctx_last, i64 0, i64 %idxprom
  %8 = load i32* %arrayidx16, align 4, !tbaa !0
  %idxprom17 = sext i32 %8 to i64
  %fld_last_contexts = getelementptr inbounds %struct.TextureInfoContexts* %7, i64 0, i32 9
  %last_contexts = getelementptr inbounds %struct.TextureInfoContexts* %7, i64 0, i32 5
  %fld_last_contexts.sink = select i1 %4, [10 x [15 x %struct.BiContextType]]* %fld_last_contexts, [10 x [15 x %struct.BiContextType]]* %last_contexts
  switch i32 %type, label %if.end [
    i32 7, label %if.then
    i32 1, label %if.then
  ]

if.then:                                          ; preds = %lor.end, %lor.end
  %incdec.ptr = getelementptr inbounds i32* %coeff, i64 -1
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then
  %k0.0 = phi i16 [ 0, %lor.end ], [ 1, %if.then ]
  %k1.0 = phi i32 [ %sub, %lor.end ], [ %0, %if.then ]
  %coeff.addr.0 = phi i32* [ %coeff, %lor.end ], [ %incdec.ptr, %if.then ]
  %conv36101105 = zext i16 %k0.0 to i32
  %cmp37102 = icmp slt i32 %conv36101105, %k1.0
  br i1 %cmp37102, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %mb_field48 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 22
  %arrayidx57 = getelementptr inbounds [10 x i32*]* @pos2ctx_map, i64 0, i64 %idxprom
  %arrayidx70 = getelementptr inbounds [10 x i32*]* @pos2ctx_last, i64 0, i64 %idxprom
  %arrayidx53 = getelementptr inbounds [10 x i32*]* @pos2ctx_map_int, i64 0, i64 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %9 = phi i32 [ %2, %for.body.lr.ph ], [ %.pre106, %for.inc.for.body_crit_edge ]
  %coeff_ctr.addr.0104 = phi i32 [ %coeff_ctr, %for.body.lr.ph ], [ %coeff_ctr.addr.1, %for.inc.for.body_crit_edge ]
  %k.0103 = phi i16 [ %k0.0, %for.body.lr.ph ], [ %inc78, %for.inc.for.body_crit_edge ]
  %idxprom39 = sext i16 %k.0103 to i64
  %arrayidx40 = getelementptr inbounds i32* %coeff.addr.0, i64 %idxprom39
  %10 = load i32* %arrayidx40, align 4, !tbaa !0
  %cmp41 = icmp ne i32 %10, 0
  %conv44 = zext i1 %cmp41 to i16
  %cmp46 = icmp eq i32 %9, 0
  br i1 %cmp46, label %lor.lhs.false, label %if.then50

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i32* %mb_field48, align 4, !tbaa !0
  %tobool49 = icmp eq i32 %11, 0
  br i1 %tobool49, label %if.else, label %if.then50

if.then50:                                        ; preds = %lor.lhs.false, %for.body
  %12 = load i32** %arrayidx53, align 8, !tbaa !3
  %arrayidx54 = getelementptr inbounds i32* %12, i64 %idxprom39
  %13 = load i32* %arrayidx54, align 4, !tbaa !0
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds [10 x [15 x %struct.BiContextType]]* %fld_map_contexts.sink, i64 0, i64 %idxprom4, i64 %idx.ext
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv44, %struct.BiContextType* %add.ptr) #5
  br label %if.end61

if.else:                                          ; preds = %lor.lhs.false
  %14 = load i32** %arrayidx57, align 8, !tbaa !3
  %arrayidx58 = getelementptr inbounds i32* %14, i64 %idxprom39
  %15 = load i32* %arrayidx58, align 4, !tbaa !0
  %idx.ext59 = sext i32 %15 to i64
  %add.ptr60 = getelementptr inbounds [10 x [15 x %struct.BiContextType]]* %fld_map_contexts.sink, i64 0, i64 %idxprom4, i64 %idx.ext59
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv44, %struct.BiContextType* %add.ptr60) #5
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then50
  br i1 %cmp41, label %if.then63, label %for.inc

if.then63:                                        ; preds = %if.end61
  %dec = add nsw i32 %coeff_ctr.addr.0104, -1
  %cmp64 = icmp eq i32 %dec, 0
  %conv67 = zext i1 %cmp64 to i16
  %16 = load i32** %arrayidx70, align 8, !tbaa !3
  %arrayidx71 = getelementptr inbounds i32* %16, i64 %idxprom39
  %17 = load i32* %arrayidx71, align 4, !tbaa !0
  %idx.ext72 = sext i32 %17 to i64
  %add.ptr73 = getelementptr inbounds [10 x [15 x %struct.BiContextType]]* %fld_last_contexts.sink, i64 0, i64 %idxprom17, i64 %idx.ext72
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv67, %struct.BiContextType* %add.ptr73) #5
  br i1 %cmp64, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end61, %if.then63
  %coeff_ctr.addr.1 = phi i32 [ %dec, %if.then63 ], [ %coeff_ctr.addr.0104, %if.end61 ]
  %inc78 = add i16 %k.0103, 1
  %conv36 = sext i16 %inc78 to i32
  %cmp37 = icmp slt i32 %conv36, %k1.0
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %structure45.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 7
  %.pre106 = load i32* %structure45.phi.trans.insert, align 4, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.inc, %if.then63, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_significant_coefficients(%struct.macroblock* nocapture %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32* nocapture %coeff) #0 {
entry:
  %idxprom = sext i32 %type to i64
  %arrayidx = getelementptr inbounds [10 x i32]* @maxpos, i64 0, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds [10 x i32]* @type2ctx_abs, i64 0, i64 %idxprom
  %arrayidx23 = getelementptr inbounds [10 x i32]* @max_c2, i64 0, i64 %idxprom
  %arrayidx34 = getelementptr inbounds [10 x i32]* @type2ctx_abs, i64 0, i64 %idxprom
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end47, %entry
  %i.0.in.ph = phi i32 [ %0, %entry ], [ %i.0, %if.end47 ]
  %c1.0.ph = phi i32 [ 1, %entry ], [ %c1.1, %if.end47 ]
  %c2.0.ph = phi i32 [ 0, %entry ], [ %c2.1, %if.end47 ]
  %1 = sext i32 %i.0.in.ph to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %indvars.iv = phi i64 [ %1, %for.cond.outer ], [ %indvars.iv.next, %for.body ]
  %i.0.in = phi i32 [ %i.0.in.ph, %for.cond.outer ], [ %i.0, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %i.0 = add nsw i32 %i.0.in, -1
  %2 = trunc i64 %indvars.iv to i32
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds i32* %coeff, i64 %indvars.iv.next
  %3 = load i32* %arrayidx2, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  %cmp6 = icmp sgt i32 %3, 0
  %sub12 = sub nsw i32 0, %3
  %absLevel.0 = select i1 %cmp6, i32 %3, i32 %sub12
  %4 = zext i1 %cmp6 to i16
  %sign.0 = xor i16 %4, 1
  %cmp13 = icmp sgt i32 %absLevel.0, 1
  %conv = zext i1 %cmp13 to i16
  %cmp14 = icmp slt i32 %c1.0.ph, 4
  %5 = load i32* %arrayidx18, align 4, !tbaa !0
  %idxprom19 = sext i32 %5 to i64
  %6 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 50
  %7 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %tex_ctx = getelementptr inbounds %struct.Slice* %7, i64 0, i32 8
  %8 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !tbaa !3
  %9 = sext i32 %c1.0.ph to i64
  %idx.ext = select i1 %cmp14, i64 %9, i64 4
  %add.ptr = getelementptr inbounds %struct.TextureInfoContexts* %8, i64 0, i32 6, i64 %idxprom19, i64 %idx.ext
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv, %struct.BiContextType* %add.ptr) #5
  br i1 %cmp13, label %if.then21, label %if.else42

if.then21:                                        ; preds = %if.then
  %10 = load i32* %arrayidx23, align 4, !tbaa !0
  %cmp24 = icmp slt i32 %c2.0.ph, %10
  %c2.0. = select i1 %cmp24, i32 %c2.0.ph, i32 %10
  %sub32 = add nsw i32 %absLevel.0, -2
  %11 = load i32* %arrayidx34, align 4, !tbaa !0
  %idxprom35 = sext i32 %11 to i64
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %currentSlice36 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 50
  %13 = load %struct.Slice** %currentSlice36, align 8, !tbaa !3
  %tex_ctx37 = getelementptr inbounds %struct.Slice* %13, i64 0, i32 8
  %14 = load %struct.TextureInfoContexts** %tex_ctx37, align 8, !tbaa !3
  %idx.ext40 = sext i32 %c2.0. to i64
  %add.ptr41 = getelementptr inbounds %struct.TextureInfoContexts* %14, i64 0, i32 7, i64 %idxprom35, i64 %idx.ext40
  tail call void @unary_exp_golomb_level_encode(%struct.EncodingEnvironment* %eep_dp, i32 %sub32, %struct.BiContextType* %add.ptr41) #7
  %inc = add nsw i32 %c2.0.ph, 1
  br label %if.end47

if.else42:                                        ; preds = %if.then
  %tobool43 = icmp eq i32 %c1.0.ph, 0
  %inc45 = add nsw i32 %c1.0.ph, 1
  %c1.0.inc45 = select i1 %tobool43, i32 0, i32 %inc45
  br label %if.end47

if.end47:                                         ; preds = %if.else42, %if.then21
  %c1.1 = phi i32 [ 0, %if.then21 ], [ %c1.0.inc45, %if.else42 ]
  %c2.1 = phi i32 [ %inc, %if.then21 ], [ %c2.0.ph, %if.else42 ]
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext %sign.0) #5
  br label %for.cond.outer

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @unary_exp_golomb_level_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx) #0 {
entry:
  %cmp = icmp eq i32 %symbol, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #5
  br label %return

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #5
  %cmp117 = icmp eq i32 %symbol, 1
  br i1 %cmp117, label %if.then4, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.else
  %0 = sub i32 1, %symbol
  %1 = icmp ugt i32 %0, -12
  %.op = sub i32 2, %0
  %2 = select i1 %1, i32 %.op, i32 14
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %k.018 = phi i32 [ 2, %while.body.lr.ph ], [ %phitmp, %while.body ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #5
  %phitmp = add i32 %k.018, 1
  %exitcond = icmp eq i32 %phitmp, %2
  br i1 %exitcond, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %cmp3 = icmp ult i32 %symbol, 13
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else, %while.end
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #5
  br label %return

if.else5:                                         ; preds = %while.end
  %sub = add i32 %symbol, -13
  tail call void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %sub, i32 0) #7
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @writeRunLevel_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %3 = load i32* %value1, align 4, !tbaa !0
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %for.cond10thread-pre-split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %4 = load i32* %value2, align 4, !tbaa !0
  %cmp136 = icmp sgt i32 %4, 0
  %.pre38 = load i32* @writeRunLevel_CABAC.pos, align 4, !tbaa !0
  br i1 %cmp136, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %5 = phi i32 [ %inc, %for.body ], [ %.pre38, %for.cond.preheader ]
  %i.037 = phi i32 [ %inc4, %for.body ], [ 0, %for.cond.preheader ]
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @writeRunLevel_CABAC.pos, align 4, !tbaa !0
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 %idxprom2
  store i32 0, i32* %arrayidx3, align 4, !tbaa !0
  %inc4 = add nsw i32 %i.037, 1
  %6 = load i32* %value2, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %inc4, %6
  br i1 %cmp1, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre = load i32* %value1, align 4, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.cond.for.end_crit_edge
  %7 = phi i32 [ %inc, %for.cond.for.end_crit_edge ], [ %.pre38, %for.cond.preheader ]
  %8 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ %3, %for.cond.preheader ]
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, i32* @writeRunLevel_CABAC.pos, align 4, !tbaa !0
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 %idxprom7
  store i32 %8, i32* %arrayidx8, align 4, !tbaa !0
  %9 = load i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !tbaa !0
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !tbaa !0
  br label %return

for.cond10thread-pre-split:                       ; preds = %entry
  %.pr = load i32* @writeRunLevel_CABAC.pos, align 4, !tbaa !0
  %cmp1134 = icmp slt i32 %.pr, 64
  br i1 %cmp1134, label %for.body12.lr.ph, label %if.end

for.body12.lr.ph:                                 ; preds = %for.cond10thread-pre-split
  %10 = add i32 %.pr, 1
  %11 = icmp sgt i32 %10, 64
  br label %for.body12

for.body12:                                       ; preds = %for.body12.lr.ph, %for.body12
  %inc1635 = phi i32 [ %.pr, %for.body12.lr.ph ], [ %inc16, %for.body12 ]
  %idxprom13 = sext i32 %inc1635 to i64
  %arrayidx14 = getelementptr inbounds [64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 %idxprom13
  store i32 0, i32* %arrayidx14, align 4, !tbaa !0
  %inc16 = add nsw i32 %inc1635, 1
  %cmp11 = icmp slt i32 %inc16, 64
  br i1 %cmp11, label %for.body12, label %for.cond10.if.end_crit_edge

for.cond10.if.end_crit_edge:                      ; preds = %for.body12
  %smax = select i1 %11, i32 %10, i32 64
  store i32 %smax, i32* @writeRunLevel_CABAC.pos, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %for.cond10.if.end_crit_edge, %for.cond10thread-pre-split
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6
  %12 = load i32* %context, align 4, !tbaa !0
  %13 = load i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !tbaa !0
  %cmp18 = icmp sgt i32 %13, 0
  %cond = zext i1 %cmp18 to i32
  tail call void @write_and_store_CBP_block_bit(%struct.macroblock* %arrayidx, %struct.EncodingEnvironment* %eep_dp, i32 %12, i32 %cond) #7
  %14 = load i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !tbaa !0
  %cmp19 = icmp sgt i32 %14, 0
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end
  %15 = load i32* %context, align 4, !tbaa !0
  tail call void @write_significance_map(%struct.macroblock* %arrayidx, %struct.EncodingEnvironment* %eep_dp, i32 %15, i32* getelementptr inbounds ([64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 0), i32 %14) #7
  %16 = load i32* %context, align 4, !tbaa !0
  tail call void @write_significant_coefficients(%struct.macroblock* undef, %struct.EncodingEnvironment* %eep_dp, i32 %16, i32* getelementptr inbounds ([64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 0)) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end
  store i32 0, i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !tbaa !0
  store i32 0, i32* @writeRunLevel_CABAC.pos, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end23, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, i32 %k) #0 {
entry:
  %shl16 = shl i32 1, %k
  %cmp17 = icmp ugt i32 %shl16, %symbol
  br i1 %cmp17, label %if.else, label %if.then

if.then:                                          ; preds = %entry, %if.then
  %shl20 = phi i32 [ %shl, %if.then ], [ %shl16, %entry ]
  %k.addr.019 = phi i32 [ %inc, %if.then ], [ %k, %entry ]
  %symbol.addr.018 = phi i32 [ %sub, %if.then ], [ %symbol, %entry ]
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext 1) #5
  %sub = sub i32 %symbol.addr.018, %shl20
  %inc = add nsw i32 %k.addr.019, 1
  %shl = shl i32 1, %inc
  %cmp = icmp ult i32 %sub, %shl
  br i1 %cmp, label %if.else, label %if.then

if.else:                                          ; preds = %if.then, %entry
  %k.addr.0.lcssa = phi i32 [ %k, %entry ], [ %inc, %if.then ]
  %symbol.addr.0.lcssa = phi i32 [ %symbol, %entry ], [ %sub, %if.then ]
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext 0) #5
  %tobool14 = icmp eq i32 %k.addr.0.lcssa, 0
  br i1 %tobool14, label %while.end5, label %while.body3

while.body3:                                      ; preds = %if.else, %while.body3
  %dec15.in = phi i32 [ %dec15, %while.body3 ], [ %k.addr.0.lcssa, %if.else ]
  %dec15 = add nsw i32 %dec15.in, -1
  %shr = lshr i32 %symbol.addr.0.lcssa, %dec15
  %shr.tr = trunc i32 %shr to i16
  %conv = and i16 %shr.tr, 1
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv) #5
  %tobool = icmp eq i32 %dec15, 0
  br i1 %tobool, label %while.end5, label %while.body3

while.end5:                                       ; preds = %while.body3, %if.else
  ret void
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
