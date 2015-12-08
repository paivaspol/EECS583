; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sei_struct = type { i32, i32, i8, i8* }
%struct.spare_picture_struct = type { i32, i32, i32, %struct.Bitstream* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.subseq_information_struct = type { i32, i32, i32, i32, i32, %struct.Bitstream* }
%struct.subseq_layer_information_struct = type { [2 x i16], [2 x i16], [8 x i8], i32, i32 }
%struct.subseq_char_information_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], %struct.Bitstream*, i32 }
%struct.scene_information_struct = type { i32, i32, i32, %struct.Bitstream*, i32 }
%struct.panscanrect_information_struct = type { i32, i32, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.user_data_unregistered_information_struct = type { i8*, i32, %struct.Bitstream*, i32 }
%struct.user_data_registered_itu_t_t35_information_struct = type { i8*, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.randomaccess_information_struct = type { i8, i8, i8, %struct.Bitstream*, i32 }

@seiHasTemporal_reference = global i32 0, align 4
@seiHasClock_timestamp = global i32 0, align 4
@seiHasPanscan_rect = global i32 0, align 4
@seiHasBuffering_period = global i32 0, align 4
@seiHasHrd_picture = global i32 0, align 4
@seiHasFiller_payload = global i32 0, align 4
@seiHasUser_data_registered_itu_t_t35 = global i32 0, align 4
@seiHasUser_data_unregistered = global i32 0, align 4
@seiHasRandom_access_point = global i32 0, align 4
@seiHasRef_pic_buffer_management_repetition = global i32 0, align 4
@seiHasSpare_picture = global i32 0, align 4
@seiHasSceneInformation = global i32 0, align 4
@seiHasSubseq_information = global i32 0, align 4
@seiHasSubseq_layer_characteristics = global i32 0, align 4
@seiHasSubseq_characteristics = global i32 0, align 4
@sei_message = common global [2 x %struct.sei_struct] zeroinitializer, align 16
@.str = private unnamed_addr constant [37 x i8] c"InitSEIMessages: sei_message[i].data\00", align 1
@seiSparePicturePayload = common global %struct.spare_picture_struct zeroinitializer, align 8
@input = external global %struct.InputParameters*
@img = external global %struct.ImageParameters*
@seiHasSubseqInfo = global i32 0, align 4
@seiHasSubseqLayerInfo = global i32 0, align 4
@seiHasSubseqChar = global i32 0, align 4
@seiHasPanScanRectInfo = global i32 0, align 4
@seiHasUser_data_unregistered_info = common global i32 0, align 4
@seiHasUser_data_registered_itu_t_t35_info = common global i32 0, align 4
@seiHasRandomAccess_info = common global i32 0, align 4
@seiHasSparePicture = global i32 0, align 4
@.str1 = private unnamed_addr constant [46 x i8] c"InitSparePicture: seiSparePicturePayload.data\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"InitSparePicture: seiSparePicturePayload.data->streamBuffer\00", align 1
@.str3 = private unnamed_addr constant [25 x i8] c"FinalizeSpareMBMap: dest\00", align 1
@.str4 = private unnamed_addr constant [39 x i8] c"FinalizeSpareMBMap: dest->streamBuffer\00", align 1
@InitSubseqInfo.id = internal unnamed_addr global i16 0, align 2
@seiSubseqInfo = common global [2 x %struct.subseq_information_struct] zeroinitializer, align 16
@.str5 = private unnamed_addr constant [46 x i8] c"InitSubseqInfo: seiSubseqInfo[currLayer].data\00", align 1
@.str6 = private unnamed_addr constant [60 x i8] c"InitSubseqInfo: seiSubseqInfo[currLayer].data->streamBuffer\00", align 1
@start_frame_no_in_this_IGOP = external global i32
@seiSubseqLayerInfo = common global %struct.subseq_layer_information_struct zeroinitializer, align 4
@seiSubseqChar = common global %struct.subseq_char_information_struct zeroinitializer, align 8
@.str7 = private unnamed_addr constant [35 x i8] c"InitSubseqChar: seiSubseqChar.data\00", align 1
@.str8 = private unnamed_addr constant [49 x i8] c"InitSubseqChar: seiSubseqChar.data->streamBuffer\00", align 1
@seiSceneInformation = common global %struct.scene_information_struct zeroinitializer, align 8
@.str9 = private unnamed_addr constant [47 x i8] c"InitSceneInformation: seiSceneInformation.data\00", align 1
@.str10 = private unnamed_addr constant [61 x i8] c"InitSceneInformation: seiSceneInformation.data->streamBuffer\00", align 1
@seiPanScanRectInfo = common global %struct.panscanrect_information_struct zeroinitializer, align 8
@.str11 = private unnamed_addr constant [45 x i8] c"InitPanScanRectInfo: seiPanScanRectInfo.data\00", align 1
@.str12 = private unnamed_addr constant [59 x i8] c"InitPanScanRectInfo: seiPanScanRectInfo.data->streamBuffer\00", align 1
@seiUser_data_unregistered = common global %struct.user_data_unregistered_information_struct zeroinitializer, align 8
@.str13 = private unnamed_addr constant [59 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.data\00", align 1
@.str14 = private unnamed_addr constant [73 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.data->streamBuffer\00", align 1
@.str15 = private unnamed_addr constant [59 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.byte\00", align 1
@seiUser_data_registered_itu_t_t35 = common global %struct.user_data_registered_itu_t_t35_information_struct zeroinitializer, align 8
@.str16 = private unnamed_addr constant [67 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data\00", align 1
@.str17 = private unnamed_addr constant [81 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data->streamBuffer\00", align 1
@.str18 = private unnamed_addr constant [67 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.byte\00", align 1
@seiRandomAccess = common global %struct.randomaccess_information_struct zeroinitializer, align 8
@.str19 = private unnamed_addr constant [39 x i8] c"InitRandomAccess: seiRandomAccess.data\00", align 1
@.str20 = private unnamed_addr constant [53 x i8] c"InitRandomAccess: seiRandomAccess.data->streamBuffer\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @InitSEIMessages() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %call = tail call noalias i8* @malloc(i64 65496) #6
  %data = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %indvars.iv, i32 3
  store i8* %call, i8** %data, align 8, !tbaa !0
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0)) #6
  %.pre = load i8** %data, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %0 = phi i8* [ %.pre, %if.then ], [ %call, %for.body ]
  %subPacketType = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %indvars.iv, i32 2
  store i8 5, i8* %subPacketType, align 8, !tbaa !1
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 65496, i32 1, i1 false) #4
  %payloadSize.i = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %indvars.iv, i32 1
  store i32 0, i32* %payloadSize.i, align 4, !tbaa !3
  %available.i = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %indvars.iv, i32 0
  store i32 0, i32* %available.i, align 8, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv.next to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, 2
  br i1 %exitcond17, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  tail call void @InitSparePicture() #7
  tail call void @InitSubseqChar() #7
  %1 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 99
  %2 = load i32* %NumFramesInELSubSeq, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %for.end
  store i32 1, i32* @seiHasSubseqLayerInfo, align 4, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !tbaa !3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.then8
  %indvars.iv.i = phi i64 [ 0, %if.then8 ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 0, i64 %indvars.iv.i
  store i16 0, i16* %arrayidx.i, align 2, !tbaa !4
  %arrayidx2.i = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 1, i64 %indvars.iv.i
  store i16 0, i16* %arrayidx2.i, align 2, !tbaa !4
  %3 = load i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !tbaa !3
  %inc.i = add nsw i32 %3, 1
  store i32 %inc.i, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !tbaa !3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %if.end9, label %for.body.i

if.end9:                                          ; preds = %for.body.i, %for.end
  tail call void @InitSceneInformation() #7
  tail call void @InitPanScanRectInfo() #7
  tail call void @InitUser_data_unregistered() #7
  tail call void @InitUser_data_registered_itu_t_t35() #7
  tail call void @InitRandomAccess() #7
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @clear_sei_message(i32 %id) #0 {
entry:
  %idxprom = sext i32 %id to i64
  %data = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 3
  %0 = load i8** %data, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 65496, i32 1, i1 false)
  %payloadSize = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 1
  store i32 0, i32* %payloadSize, align 4, !tbaa !3
  %available = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 0
  store i32 0, i32* %available, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CloseSEIMessages() #0 {
entry:
  tail call void @CloseSubseqChar() #7
  tail call void @CloseSparePicture() #7
  tail call void @CloseSceneInformation() #7
  tail call void @ClosePanScanRectInfo() #7
  tail call void @CloseUser_data_unregistered() #7
  tail call void @CloseUser_data_registered_itu_t_t35() #7
  tail call void @CloseRandomAccess() #7
  br label %for.body

for.body:                                         ; preds = %if.end6, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end6 ]
  %data = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %indvars.iv, i32 3
  %0 = load i8** %data, align 8, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end6, label %if.then2

if.then2:                                         ; preds = %for.body
  tail call void @free(i8* %0) #6
  br label %if.end6

if.end6:                                          ; preds = %for.body, %if.then2
  store i8* null, i8** %data, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end6
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @HaveAggregationSEI() #3 {
entry:
  %0 = load i32* getelementptr inbounds ([2 x %struct.sei_struct]* @sei_message, i64 0, i64 1, i32 0), align 8, !tbaa !1
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6
  %2 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %2, 1
  %3 = load i32* @seiHasSubseqInfo, align 4, !tbaa !1
  %tobool1 = icmp eq i32 %3, 0
  %or.cond = and i1 %cmp, %tobool1
  br i1 %or.cond, label %if.end3, label %return

if.end:                                           ; preds = %entry
  %.old = load i32* @seiHasSubseqInfo, align 4, !tbaa !1
  %tobool1.old = icmp eq i32 %.old, 0
  br i1 %tobool1.old, label %if.end3, label %return

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %4 = load i32* @seiHasSubseqLayerInfo, align 4, !tbaa !1
  %tobool4 = icmp eq i32 %4, 0
  br i1 %tobool4, label %if.end8, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end3
  %5 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %number = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 0
  %6 = load i32* %number, align 4, !tbaa !3
  %cmp6 = icmp ne i32 %6, 0
  %7 = load i32* @seiHasSubseqChar, align 4, !tbaa !1
  %tobool9 = icmp eq i32 %7, 0
  %or.cond28 = and i1 %cmp6, %tobool9
  %8 = load i32* @seiHasSceneInformation, align 4, !tbaa !1
  %tobool12 = icmp eq i32 %8, 0
  %or.cond30 = and i1 %or.cond28, %tobool12
  %.old33 = load i32* @seiHasPanScanRectInfo, align 4, !tbaa !1
  %tobool15.old = icmp eq i32 %.old33, 0
  %or.cond36 = and i1 %or.cond30, %tobool15.old
  %9 = load i32* @seiHasUser_data_unregistered_info, align 4, !tbaa !1
  %tobool18 = icmp eq i32 %9, 0
  %or.cond38 = and i1 %or.cond36, %tobool18
  %.old41 = load i32* @seiHasUser_data_registered_itu_t_t35_info, align 4, !tbaa !1
  %tobool21.old = icmp eq i32 %.old41, 0
  %or.cond44 = and i1 %or.cond38, %tobool21.old
  br i1 %or.cond44, label %if.end23, label %return

if.end8:                                          ; preds = %if.end3
  %.old27 = load i32* @seiHasSubseqChar, align 4, !tbaa !1
  %.old29 = load i32* @seiHasSceneInformation, align 4, !tbaa !1
  %10 = or i32 %.old29, %.old27
  %11 = load i32* @seiHasPanScanRectInfo, align 4, !tbaa !1
  %12 = or i32 %10, %11
  %.old37 = load i32* @seiHasUser_data_unregistered_info, align 4, !tbaa !1
  %13 = or i32 %12, %.old37
  %14 = load i32* @seiHasUser_data_registered_itu_t_t35_info, align 4, !tbaa !1
  %15 = or i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %if.end23, label %return

if.end23:                                         ; preds = %land.lhs.true5, %if.end8
  %17 = load i32* @seiHasRandomAccess_info, align 4, !tbaa !1
  %not.tobool24 = icmp ne i32 %17, 0
  %. = zext i1 %not.tobool24 to i32
  br label %return

return:                                           ; preds = %land.lhs.true5, %if.end23, %if.end8, %if.end, %land.lhs.true
  %retval.0 = phi i32 [ 1, %land.lhs.true ], [ 1, %if.end ], [ 1, %land.lhs.true5 ], [ 1, %if.end8 ], [ %., %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @write_sei_message(i32 %id, i8* nocapture %payload, i32 %payload_size, i32 %payload_type) #0 {
entry:
  %idxprom = sext i32 %id to i64
  %payloadSize = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 1
  %0 = load i32* %payloadSize, align 4, !tbaa !3
  %cmp61 = icmp sgt i32 %payload_type, 255
  %data = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 3
  br i1 %cmp61, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %1 = sext i32 %0 to i64
  %2 = add i32 %payload_type, -256
  %3 = udiv i32 %2, 255
  %4 = add i32 %0, %3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv68 = phi i64 [ %1, %while.body.lr.ph ], [ %indvars.iv.next69, %while.body ]
  %type.063 = phi i32 [ %payload_type, %while.body.lr.ph ], [ %sub, %while.body ]
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  %5 = load i8** %data, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds i8* %5, i64 %indvars.iv68
  store i8 -1, i8* %arrayidx4, align 1, !tbaa !1
  %sub = add nsw i32 %type.063, -255
  %cmp = icmp sgt i32 %sub, 255
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %6 = add i32 %payload_type, -255
  %7 = mul i32 %3, -255
  %8 = add i32 %6, %7
  %9 = add i32 %4, 1
  br label %while.end

while.end:                                        ; preds = %entry, %while.cond.while.end_crit_edge
  %type.0.lcssa = phi i32 [ %8, %while.cond.while.end_crit_edge ], [ %payload_type, %entry ]
  %offset.0.lcssa = phi i32 [ %9, %while.cond.while.end_crit_edge ], [ %0, %entry ]
  %conv = trunc i32 %type.0.lcssa to i8
  %idxprom6 = sext i32 %offset.0.lcssa to i64
  %10 = load i8** %data, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i8* %10, i64 %idxprom6
  store i8 %conv, i8* %arrayidx10, align 1, !tbaa !1
  %offset.155 = add i32 %offset.0.lcssa, 1
  %cmp1256 = icmp sgt i32 %payload_size, 255
  br i1 %cmp1256, label %while.body14.lr.ph, label %while.end22

while.body14.lr.ph:                               ; preds = %while.end
  %11 = sext i32 %offset.155 to i64
  %12 = add i32 %payload_size, -256
  %13 = udiv i32 %12, 255
  %14 = add i32 %offset.0.lcssa, %13
  %15 = add i32 %payload_size, -255
  %16 = mul i32 %13, -255
  %17 = add i32 %15, %16
  br label %while.body14

while.body14:                                     ; preds = %while.body14.lr.ph, %while.body14
  %indvars.iv = phi i64 [ %11, %while.body14.lr.ph ], [ %indvars.iv.next, %while.body14 ]
  %size.057 = phi i32 [ %payload_size, %while.body14.lr.ph ], [ %sub21, %while.body14 ]
  %18 = load i8** %data, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i8* %18, i64 %indvars.iv
  store i8 -1, i8* %arrayidx20, align 1, !tbaa !1
  %sub21 = add nsw i32 %size.057, -255
  %cmp12 = icmp sgt i32 %sub21, 255
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp12, label %while.body14, label %while.cond11.while.end22_crit_edge

while.cond11.while.end22_crit_edge:               ; preds = %while.body14
  %19 = add i32 %14, 2
  %20 = add i32 %14, 1
  br label %while.end22

while.end22:                                      ; preds = %while.cond11.while.end22_crit_edge, %while.end
  %offset.1.lcssa = phi i32 [ %19, %while.cond11.while.end22_crit_edge ], [ %offset.155, %while.end ]
  %size.0.lcssa = phi i32 [ %17, %while.cond11.while.end22_crit_edge ], [ %payload_size, %while.end ]
  %offset.1.in.lcssa = phi i32 [ %20, %while.cond11.while.end22_crit_edge ], [ %offset.0.lcssa, %while.end ]
  %conv23 = trunc i32 %size.0.lcssa to i8
  %inc24 = add nsw i32 %offset.1.in.lcssa, 2
  %idxprom25 = sext i32 %offset.1.lcssa to i64
  %21 = load i8** %data, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i8* %21, i64 %idxprom25
  store i8 %conv23, i8* %arrayidx29, align 1, !tbaa !1
  %22 = load i8** %data, align 8, !tbaa !0
  %idx.ext = sext i32 %inc24 to i64
  %add.ptr = getelementptr inbounds i8* %22, i64 %idx.ext
  %conv33 = sext i32 %payload_size to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %payload, i64 %conv33, i32 1, i1 false)
  %add = add nsw i32 %inc24, %payload_size
  store i32 %add, i32* %payloadSize, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define void @finalize_sei_message(i32 %id) #0 {
entry:
  %idxprom = sext i32 %id to i64
  %payloadSize = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 1
  %0 = load i32* %payloadSize, align 4, !tbaa !3
  %idxprom1 = sext i32 %0 to i64
  %data = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 3
  %1 = load i8** %data, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds i8* %1, i64 %idxprom1
  store i8 -128, i8* %arrayidx4, align 1, !tbaa !1
  %2 = load i32* %payloadSize, align 4, !tbaa !3
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %payloadSize, align 4, !tbaa !3
  %available = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 0
  store i32 1, i32* %available, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define void @AppendTmpbits2Buf(%struct.Bitstream* nocapture %dest, %struct.Bitstream* nocapture %source) #0 {
entry:
  %byte_pos = getelementptr inbounds %struct.Bitstream* %source, i64 0, i32 0
  %0 = load i32* %byte_pos, align 4, !tbaa !3
  %cmp113 = icmp sgt i32 %0, 0
  br i1 %cmp113, label %for.cond1.preheader.lr.ph, label %for.end27

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %byte_buf = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 2
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %source, i64 0, i32 9
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 1
  %byte_pos18 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 0
  %streamBuffer20 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 9
  %.pre116.pre = load i8* %byte_buf, align 1, !tbaa !1
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc25
  %.pre116 = phi i8 [ %.pre116.pre, %for.cond1.preheader.lr.ph ], [ %8, %for.inc25 ]
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next, %for.inc25 ]
  br label %for.body3

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %1 = phi i8 [ %.pre116, %for.cond1.preheader ], [ %8, %for.inc ]
  %mask.0112 = phi i32 [ 128, %for.cond1.preheader ], [ %shr107, %for.inc ]
  %j.0111 = phi i32 [ 0, %for.cond1.preheader ], [ %inc24, %for.inc ]
  %shl = shl i8 %1, 1
  store i8 %shl, i8* %byte_buf, align 1, !tbaa !1
  %2 = load i8** %streamBuffer, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %2, i64 %indvars.iv
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %conv5 = zext i8 %3 to i32
  %and = and i32 %conv5, %mask.0112
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body3
  %or = or i8 %shl, 1
  store i8 %or, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %for.body3, %if.then
  %4 = phi i8 [ %or, %if.then ], [ %shl, %for.body3 ]
  %5 = load i32* %bits_to_go, align 4, !tbaa !3
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %bits_to_go, align 4, !tbaa !3
  %shr107 = lshr i32 %mask.0112, 1
  %cmp13 = icmp eq i32 %dec, 0
  br i1 %cmp13, label %if.then15, label %for.inc

if.then15:                                        ; preds = %if.end
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %6 = load i32* %byte_pos18, align 4, !tbaa !3
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %byte_pos18, align 4, !tbaa !3
  %idxprom19 = sext i32 %6 to i64
  %7 = load i8** %streamBuffer20, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i8* %7, i64 %idxprom19
  store i8 %4, i8* %arrayidx21, align 1, !tbaa !1
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then15
  %8 = phi i8 [ %4, %if.end ], [ 0, %if.then15 ]
  %inc24 = add nsw i32 %j.0111, 1
  %exitcond115 = icmp eq i32 %inc24, 8
  br i1 %exitcond115, label %for.inc25, label %for.body3

for.inc25:                                        ; preds = %for.inc
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = load i32* %byte_pos, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %10, %9
  br i1 %cmp, label %for.cond1.preheader, label %for.end27

for.end27:                                        ; preds = %for.inc25, %entry
  %bits_to_go28 = getelementptr inbounds %struct.Bitstream* %source, i64 0, i32 1
  %11 = load i32* %bits_to_go28, align 4, !tbaa !3
  %sub = sub i32 8, %11
  %cmp29 = icmp sgt i32 %sub, 0
  br i1 %cmp29, label %for.body38.lr.ph, label %if.end75

for.body38.lr.ph:                                 ; preds = %for.end27
  %sub32 = add nsw i32 %sub, -1
  %shl33 = shl i32 1, %sub32
  %byte_buf39 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 2
  %byte_buf43 = getelementptr inbounds %struct.Bitstream* %source, i64 0, i32 2
  %bits_to_go54 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 1
  %byte_pos65 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 0
  %streamBuffer68 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 9
  %.pre = load i8* %byte_buf39, align 1, !tbaa !1
  br label %for.body38

for.body38:                                       ; preds = %for.inc72, %for.body38.lr.ph
  %12 = phi i8 [ %.pre, %for.body38.lr.ph ], [ %18, %for.inc72 ]
  %mask.1.in110 = phi i32 [ %shl33, %for.body38.lr.ph ], [ %shr57106, %for.inc72 ]
  %j.1109 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc73, %for.inc72 ]
  %shl41 = shl i8 %12, 1
  store i8 %shl41, i8* %byte_buf39, align 1, !tbaa !1
  %13 = load i8* %byte_buf43, align 1, !tbaa !1
  %conv44 = zext i8 %13 to i32
  %conv45 = and i32 %mask.1.in110, 255
  %and46 = and i32 %conv44, %conv45
  %tobool47 = icmp eq i32 %and46, 0
  br i1 %tobool47, label %if.end53, label %if.then48

if.then48:                                        ; preds = %for.body38
  %or51 = or i8 %shl41, 1
  store i8 %or51, i8* %byte_buf39, align 1, !tbaa !1
  br label %if.end53

if.end53:                                         ; preds = %for.body38, %if.then48
  %14 = phi i8 [ %or51, %if.then48 ], [ %shl41, %for.body38 ]
  %15 = load i32* %bits_to_go54, align 4, !tbaa !3
  %dec55 = add nsw i32 %15, -1
  store i32 %dec55, i32* %bits_to_go54, align 4, !tbaa !3
  %shr57106 = lshr i32 %conv45, 1
  %cmp60 = icmp eq i32 %dec55, 0
  br i1 %cmp60, label %if.then62, label %for.inc72

if.then62:                                        ; preds = %if.end53
  store i32 8, i32* %bits_to_go54, align 4, !tbaa !3
  %16 = load i32* %byte_pos65, align 4, !tbaa !3
  %inc66 = add nsw i32 %16, 1
  store i32 %inc66, i32* %byte_pos65, align 4, !tbaa !3
  %idxprom67 = sext i32 %16 to i64
  %17 = load i8** %streamBuffer68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i8* %17, i64 %idxprom67
  store i8 %14, i8* %arrayidx69, align 1, !tbaa !1
  store i8 0, i8* %byte_buf39, align 1, !tbaa !1
  br label %for.inc72

for.inc72:                                        ; preds = %if.end53, %if.then62
  %18 = phi i8 [ %14, %if.end53 ], [ 0, %if.then62 ]
  %inc73 = add nsw i32 %j.1109, 1
  %exitcond = icmp eq i32 %inc73, %sub
  br i1 %exitcond, label %if.end75, label %for.body38

if.end75:                                         ; preds = %for.inc72, %for.end27
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InitSparePicture() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  %cmp = icmp eq %struct.Bitstream* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @CloseSparePicture() #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call noalias i8* @malloc(i64 48) #6
  %1 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %1, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([46 x i8]* @.str1, i64 0, i64 0)) #6
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = phi %struct.Bitstream* [ %.pre, %if.then2 ], [ %1, %if.end ]
  %call4 = tail call noalias i8* @malloc(i64 65496) #6
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  store i8* %call4, i8** %streamBuffer, align 8, !tbaa !0
  %3 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  %streamBuffer5 = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 9
  %4 = load i8** %streamBuffer5, align 8, !tbaa !0
  %cmp6 = icmp eq i8* %4, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  tail call void @no_mem_exit(i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0)) #6
  %.pre10 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  %streamBuffer9.phi.trans.insert = getelementptr inbounds %struct.Bitstream* %.pre10, i64 0, i32 9
  %.pre11 = load i8** %streamBuffer9.phi.trans.insert, align 8, !tbaa !0
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  %5 = phi i8* [ %.pre11, %if.then7 ], [ %4, %if.end3 ]
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 65496, i32 1, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 1), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 0), align 8, !tbaa !3
  %6 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 0
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CloseSparePicture() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  %tobool = icmp eq i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %1) #6
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = phi %struct.Bitstream* [ %0, %entry ], [ %.pre, %if.then ]
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  store i8* null, i8** %streamBuffer2, align 8, !tbaa !0
  %3 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  %tobool3 = icmp eq %struct.Bitstream* %3, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = bitcast %struct.Bitstream* %3 to i8*
  tail call void @free(i8* %4) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then4
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 1), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 0), align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @CalculateSparePicture() #5 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ComposeSparePictureMessage(i32 %delta_spare_frame_num, i32 %ref_area_indicator, %struct.Bitstream* nocapture %tmpBitstream) #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  %1 = bitcast %struct.syntaxelement* %sym to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #4
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1
  store i32 %delta_spare_frame_num, i32* %value1, align 4, !tbaa !3
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %0) #6
  store i32 %ref_area_indicator, i32* %value1, align 4, !tbaa !3
  %call2 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %0) #6
  call void @AppendTmpbits2Buf(%struct.Bitstream* %0, %struct.Bitstream* %tmpBitstream) #7
  call void @llvm.lifetime.end(i64 48, i8* %1) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @ue_linfo(i32, i32, i32*, i32*) #2

; Function Attrs: optsize
declare i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement*, %struct.Bitstream*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @CompressSpareMBMap(i8** nocapture %map_sp, %struct.Bitstream* %bitstream) #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #4
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %height = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 15
  %2 = load i32* %height, align 4, !tbaa !3
  %div = sdiv i32 %2, 16
  %width = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 13
  %3 = load i32* %width, align 4, !tbaa !3
  %div1 = sdiv i32 %3, 16
  %mul = mul nsw i32 %div1, %div
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %4 = load i32* %width, align 4, !tbaa !3
  %div3 = sdiv i32 %4, 16
  %sub = add nsw i32 %div3, -1
  %div4 = sdiv i32 %sub, 2
  %5 = load i32* %height, align 4, !tbaa !3
  %div6 = sdiv i32 %5, 16
  %sub7 = add nsw i32 %div6, -1
  %div8 = sdiv i32 %sub7, 2
  %cmp294 = icmp sgt i32 %5, 15
  br i1 %cmp294, label %for.cond11.preheader.lr.ph, label %if.end141

for.cond11.preheader.lr.ph:                       ; preds = %entry
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.inc132.for.cond11.preheader_crit_edge, %for.cond11.preheader.lr.ph
  %6 = phi i32 [ %4, %for.cond11.preheader.lr.ph ], [ %.pre, %for.inc132.for.cond11.preheader_crit_edge ]
  %7 = phi %struct.ImageParameters* [ %1, %for.cond11.preheader.lr.ph ], [ %18, %for.inc132.for.cond11.preheader_crit_edge ]
  %j.0305 = phi i32 [ 1, %for.cond11.preheader.lr.ph ], [ %phitmp, %for.inc132.for.cond11.preheader_crit_edge ]
  %size_compressed.0304 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %size_compressed.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %noc.0303 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %noc.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %directy.0302 = phi i32 [ 1, %for.cond11.preheader.lr.ph ], [ %directy.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %directx.0301 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %directx.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %top.0300 = phi i32 [ %div8, %for.cond11.preheader.lr.ph ], [ %top.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %bottom.0299 = phi i32 [ %div8, %for.cond11.preheader.lr.ph ], [ %bottom.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %right.0298 = phi i32 [ %div4, %for.cond11.preheader.lr.ph ], [ %right.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %left.0297 = phi i32 [ %div4, %for.cond11.preheader.lr.ph ], [ %left.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %y.0296 = phi i32 [ %div8, %for.cond11.preheader.lr.ph ], [ %y.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %x.0295 = phi i32 [ %div4, %for.cond11.preheader.lr.ph ], [ %x.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %cmp14271 = icmp sgt i32 %6, 15
  br i1 %cmp14271, label %for.body15, label %for.inc132

for.body15:                                       ; preds = %for.cond11.preheader, %for.inc
  %k.0282 = phi i32 [ %inc131, %for.inc ], [ 0, %for.cond11.preheader ]
  %size_compressed.1281 = phi i32 [ %size_compressed.2, %for.inc ], [ %size_compressed.0304, %for.cond11.preheader ]
  %noc.1280 = phi i32 [ %noc.2, %for.inc ], [ %noc.0303, %for.cond11.preheader ]
  %directy.1279 = phi i32 [ %directy.2, %for.inc ], [ %directy.0302, %for.cond11.preheader ]
  %directx.1278 = phi i32 [ %directx.2, %for.inc ], [ %directx.0301, %for.cond11.preheader ]
  %top.1277 = phi i32 [ %top.2, %for.inc ], [ %top.0300, %for.cond11.preheader ]
  %bottom.1276 = phi i32 [ %bottom.2, %for.inc ], [ %bottom.0299, %for.cond11.preheader ]
  %right.1275 = phi i32 [ %right.2, %for.inc ], [ %right.0298, %for.cond11.preheader ]
  %left.1274 = phi i32 [ %left.2, %for.inc ], [ %left.0297, %for.cond11.preheader ]
  %y.1273 = phi i32 [ %y.2, %for.inc ], [ %y.0296, %for.cond11.preheader ]
  %x.1272 = phi i32 [ %x.2, %for.inc ], [ %x.0295, %for.cond11.preheader ]
  %idxprom = sext i32 %x.1272 to i64
  %idxprom16 = sext i32 %y.1273 to i64
  %arrayidx = getelementptr inbounds i8** %map_sp, i64 %idxprom16
  %8 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i8* %8, i64 %idxprom
  %9 = load i8* %arrayidx17, align 1, !tbaa !1
  %cmp18 = icmp eq i8 %9, 0
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %for.body15
  %inc = add nsw i32 %noc.1280, 1
  br label %if.end

if.else:                                          ; preds = %for.body15
  store i32 %noc.1280, i32* %value1, align 4, !tbaa !3
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %bitstream) #6
  %add = add nsw i32 %call, %size_compressed.1281
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %noc.2 = phi i32 [ %inc, %if.then ], [ 0, %if.else ]
  %size_compressed.2 = phi i32 [ %size_compressed.1281, %if.then ], [ %add, %if.else ]
  %cmp20 = icmp eq i32 %directx.1278, -1
  %cmp22 = icmp eq i32 %directy.1279, 0
  %or.cond = and i1 %cmp20, %cmp22
  br i1 %or.cond, label %if.then24, label %if.else43

if.then24:                                        ; preds = %if.end
  %cmp25 = icmp sgt i32 %x.1272, %left.1274
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.then24
  %dec = add nsw i32 %x.1272, -1
  br label %for.inc

if.else28:                                        ; preds = %if.then24
  %cmp29 = icmp eq i32 %x.1272, 0
  br i1 %cmp29, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else28
  %add32 = add nsw i32 %bottom.1276, 1
  br label %for.inc

if.else34:                                        ; preds = %if.else28
  %cmp35 = icmp eq i32 %x.1272, %left.1274
  %dec38 = add nsw i32 %left.1274, -1
  %dec38.x.1272 = select i1 %cmp35, i32 %dec38, i32 %x.1272
  %dec38.left.1274 = select i1 %cmp35, i32 %dec38, i32 %left.1274
  %not.cmp35 = xor i1 %cmp35, true
  %. = sext i1 %not.cmp35 to i32
  %.312 = zext i1 %cmp35 to i32
  br label %for.inc

if.else43:                                        ; preds = %if.end
  %cmp44 = icmp eq i32 %directx.1278, 1
  %or.cond258 = and i1 %cmp44, %cmp22
  br i1 %or.cond258, label %if.then49, label %if.else72

if.then49:                                        ; preds = %if.else43
  %cmp50 = icmp slt i32 %x.1272, %right.1275
  br i1 %cmp50, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.then49
  %inc53 = add nsw i32 %x.1272, 1
  br label %for.inc

if.else54:                                        ; preds = %if.then49
  %10 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %width55 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 13
  %11 = load i32* %width55, align 4, !tbaa !3
  %div56 = sdiv i32 %11, 16
  %sub57 = add nsw i32 %div56, -1
  %cmp58 = icmp eq i32 %x.1272, %sub57
  br i1 %cmp58, label %if.then60, label %if.else63

if.then60:                                        ; preds = %if.else54
  %sub61 = add nsw i32 %top.1277, -1
  br label %for.inc

if.else63:                                        ; preds = %if.else54
  %cmp64 = icmp eq i32 %x.1272, %right.1275
  %inc67 = add nsw i32 %right.1275, 1
  %inc67.x.1272 = select i1 %cmp64, i32 %inc67, i32 %x.1272
  %inc67.right.1275 = select i1 %cmp64, i32 %inc67, i32 %right.1275
  %12 = zext i1 %cmp64 to i32
  %.313 = xor i32 %12, 1
  %.314 = sext i1 %cmp64 to i32
  br label %for.inc

if.else72:                                        ; preds = %if.else43
  %cmp73 = icmp eq i32 %directx.1278, 0
  %cmp76 = icmp eq i32 %directy.1279, -1
  %or.cond259 = and i1 %cmp73, %cmp76
  br i1 %or.cond259, label %if.then78, label %if.else98

if.then78:                                        ; preds = %if.else72
  %cmp79 = icmp sgt i32 %y.1273, %top.1277
  br i1 %cmp79, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.then78
  %dec82 = add nsw i32 %y.1273, -1
  br label %for.inc

if.else83:                                        ; preds = %if.then78
  %cmp84 = icmp eq i32 %y.1273, 0
  br i1 %cmp84, label %if.then86, label %if.else89

if.then86:                                        ; preds = %if.else83
  %sub87 = add nsw i32 %left.1274, -1
  br label %for.inc

if.else89:                                        ; preds = %if.else83
  %cmp90 = icmp eq i32 %y.1273, %top.1277
  %dec93 = add nsw i32 %top.1277, -1
  %dec93.y.1273 = select i1 %cmp90, i32 %dec93, i32 %y.1273
  %dec93.top.1277 = select i1 %cmp90, i32 %dec93, i32 %top.1277
  %.315 = sext i1 %cmp90 to i32
  %not.cmp90 = xor i1 %cmp90, true
  %.316 = sext i1 %not.cmp90 to i32
  br label %for.inc

if.else98:                                        ; preds = %if.else72
  %cmp102 = icmp eq i32 %directy.1279, 1
  %or.cond260 = and i1 %cmp73, %cmp102
  br i1 %or.cond260, label %if.then104, label %for.inc

if.then104:                                       ; preds = %if.else98
  %cmp105 = icmp slt i32 %y.1273, %bottom.1276
  br i1 %cmp105, label %if.then107, label %if.else109

if.then107:                                       ; preds = %if.then104
  %inc108 = add nsw i32 %y.1273, 1
  br label %for.inc

if.else109:                                       ; preds = %if.then104
  %13 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %height110 = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 15
  %14 = load i32* %height110, align 4, !tbaa !3
  %div111 = sdiv i32 %14, 16
  %sub112 = add nsw i32 %div111, -1
  %cmp113 = icmp eq i32 %y.1273, %sub112
  br i1 %cmp113, label %if.then115, label %if.else118

if.then115:                                       ; preds = %if.else109
  %add116 = add nsw i32 %right.1275, 1
  br label %for.inc

if.else118:                                       ; preds = %if.else109
  %cmp119 = icmp eq i32 %y.1273, %bottom.1276
  %inc122 = add nsw i32 %bottom.1276, 1
  %inc122.y.1273 = select i1 %cmp119, i32 %inc122, i32 %y.1273
  %inc122.bottom.1276 = select i1 %cmp119, i32 %inc122, i32 %bottom.1276
  %.317 = zext i1 %cmp119 to i32
  %15 = zext i1 %cmp119 to i32
  %.318 = xor i32 %15, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else118, %if.else89, %if.else63, %if.else34, %if.else98, %if.then31, %if.then27, %if.then86, %if.then81, %if.then107, %if.then115, %if.then52, %if.then60
  %x.2 = phi i32 [ %dec, %if.then27 ], [ 0, %if.then31 ], [ %inc53, %if.then52 ], [ %x.1272, %if.then60 ], [ %x.1272, %if.then81 ], [ %sub87, %if.then86 ], [ %x.1272, %if.then107 ], [ %add116, %if.then115 ], [ %x.1272, %if.else98 ], [ %dec38.x.1272, %if.else34 ], [ %inc67.x.1272, %if.else63 ], [ %x.1272, %if.else89 ], [ %x.1272, %if.else118 ]
  %y.2 = phi i32 [ %y.1273, %if.then27 ], [ %add32, %if.then31 ], [ %y.1273, %if.then52 ], [ %sub61, %if.then60 ], [ %dec82, %if.then81 ], [ 0, %if.then86 ], [ %inc108, %if.then107 ], [ %y.1273, %if.then115 ], [ %y.1273, %if.else98 ], [ %y.1273, %if.else34 ], [ %y.1273, %if.else63 ], [ %dec93.y.1273, %if.else89 ], [ %inc122.y.1273, %if.else118 ]
  %left.2 = phi i32 [ %left.1274, %if.then27 ], [ %left.1274, %if.then31 ], [ %left.1274, %if.then52 ], [ %left.1274, %if.then60 ], [ %left.1274, %if.then81 ], [ %sub87, %if.then86 ], [ %left.1274, %if.then107 ], [ %left.1274, %if.then115 ], [ %left.1274, %if.else98 ], [ %dec38.left.1274, %if.else34 ], [ %left.1274, %if.else63 ], [ %left.1274, %if.else89 ], [ %left.1274, %if.else118 ]
  %right.2 = phi i32 [ %right.1275, %if.then27 ], [ %right.1275, %if.then31 ], [ %right.1275, %if.then52 ], [ %right.1275, %if.then60 ], [ %right.1275, %if.then81 ], [ %right.1275, %if.then86 ], [ %right.1275, %if.then107 ], [ %add116, %if.then115 ], [ %right.1275, %if.else98 ], [ %right.1275, %if.else34 ], [ %inc67.right.1275, %if.else63 ], [ %right.1275, %if.else89 ], [ %right.1275, %if.else118 ]
  %bottom.2 = phi i32 [ %bottom.1276, %if.then27 ], [ %add32, %if.then31 ], [ %bottom.1276, %if.then52 ], [ %bottom.1276, %if.then60 ], [ %bottom.1276, %if.then81 ], [ %bottom.1276, %if.then86 ], [ %bottom.1276, %if.then107 ], [ %bottom.1276, %if.then115 ], [ %bottom.1276, %if.else98 ], [ %bottom.1276, %if.else34 ], [ %bottom.1276, %if.else63 ], [ %bottom.1276, %if.else89 ], [ %inc122.bottom.1276, %if.else118 ]
  %top.2 = phi i32 [ %top.1277, %if.then27 ], [ %top.1277, %if.then31 ], [ %top.1277, %if.then52 ], [ %sub61, %if.then60 ], [ %top.1277, %if.then81 ], [ %top.1277, %if.then86 ], [ %top.1277, %if.then107 ], [ %top.1277, %if.then115 ], [ %top.1277, %if.else98 ], [ %top.1277, %if.else34 ], [ %top.1277, %if.else63 ], [ %dec93.top.1277, %if.else89 ], [ %top.1277, %if.else118 ]
  %directx.2 = phi i32 [ -1, %if.then27 ], [ 1, %if.then31 ], [ 1, %if.then52 ], [ -1, %if.then60 ], [ 0, %if.then81 ], [ 0, %if.then86 ], [ 0, %if.then107 ], [ 0, %if.then115 ], [ %directx.1278, %if.else98 ], [ %., %if.else34 ], [ %.313, %if.else63 ], [ %.315, %if.else89 ], [ %.317, %if.else118 ]
  %directy.2 = phi i32 [ 0, %if.then27 ], [ 0, %if.then31 ], [ 0, %if.then52 ], [ 0, %if.then60 ], [ -1, %if.then81 ], [ 1, %if.then86 ], [ 1, %if.then107 ], [ -1, %if.then115 ], [ %directy.1279, %if.else98 ], [ %.312, %if.else34 ], [ %.314, %if.else63 ], [ %.316, %if.else89 ], [ %.318, %if.else118 ]
  %inc131 = add nsw i32 %k.0282, 1
  %16 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %width12 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 13
  %17 = load i32* %width12, align 4, !tbaa !3
  %div13 = sdiv i32 %17, 16
  %cmp14 = icmp slt i32 %inc131, %div13
  br i1 %cmp14, label %for.body15, label %for.inc132

for.inc132:                                       ; preds = %for.inc, %for.cond11.preheader
  %.pre = phi i32 [ %6, %for.cond11.preheader ], [ %17, %for.inc ]
  %18 = phi %struct.ImageParameters* [ %7, %for.cond11.preheader ], [ %16, %for.inc ]
  %size_compressed.1.lcssa = phi i32 [ %size_compressed.0304, %for.cond11.preheader ], [ %size_compressed.2, %for.inc ]
  %noc.1.lcssa = phi i32 [ %noc.0303, %for.cond11.preheader ], [ %noc.2, %for.inc ]
  %directy.1.lcssa = phi i32 [ %directy.0302, %for.cond11.preheader ], [ %directy.2, %for.inc ]
  %directx.1.lcssa = phi i32 [ %directx.0301, %for.cond11.preheader ], [ %directx.2, %for.inc ]
  %top.1.lcssa = phi i32 [ %top.0300, %for.cond11.preheader ], [ %top.2, %for.inc ]
  %bottom.1.lcssa = phi i32 [ %bottom.0299, %for.cond11.preheader ], [ %bottom.2, %for.inc ]
  %right.1.lcssa = phi i32 [ %right.0298, %for.cond11.preheader ], [ %right.2, %for.inc ]
  %left.1.lcssa = phi i32 [ %left.0297, %for.cond11.preheader ], [ %left.2, %for.inc ]
  %y.1.lcssa = phi i32 [ %y.0296, %for.cond11.preheader ], [ %y.2, %for.inc ]
  %x.1.lcssa = phi i32 [ %x.0295, %for.cond11.preheader ], [ %x.2, %for.inc ]
  %height9 = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 15
  %19 = load i32* %height9, align 4, !tbaa !3
  %div10 = sdiv i32 %19, 16
  %cmp = icmp slt i32 %j.0305, %div10
  br i1 %cmp, label %for.inc132.for.cond11.preheader_crit_edge, label %for.end134

for.inc132.for.cond11.preheader_crit_edge:        ; preds = %for.inc132
  %phitmp = add i32 %j.0305, 1
  br label %for.cond11.preheader

for.end134:                                       ; preds = %for.inc132
  %cmp135 = icmp eq i32 %noc.1.lcssa, 0
  br i1 %cmp135, label %if.end141, label %if.then137

if.then137:                                       ; preds = %for.end134
  %value1138 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1
  store i32 %noc.1.lcssa, i32* %value1138, align 4, !tbaa !3
  %call139 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %bitstream) #6
  %add140 = add nsw i32 %call139, %size_compressed.1.lcssa
  br label %if.end141

if.end141:                                        ; preds = %entry, %for.end134, %if.then137
  %size_compressed.3 = phi i32 [ %add140, %if.then137 ], [ %size_compressed.1.lcssa, %for.end134 ], [ 0, %entry ]
  %cmp142 = icmp slt i32 %size_compressed.3, %mul
  %cond = zext i1 %cmp142 to i32
  br i1 %cmp142, label %if.end190, label %if.then144

if.then144:                                       ; preds = %if.end141
  %byte_buf = getelementptr inbounds %struct.Bitstream* %bitstream, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %bitstream, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %bitstream, i64 0, i32 0
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %20 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %height146265 = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 15
  %21 = load i32* %height146265, align 4, !tbaa !3
  %cmp148267 = icmp sgt i32 %21, 15
  br i1 %cmp148267, label %for.cond151.preheader.lr.ph, label %if.end190

for.cond151.preheader.lr.ph:                      ; preds = %if.then144
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %bitstream, i64 0, i32 9
  br label %for.cond151.preheader

for.cond151.preheader:                            ; preds = %for.cond151.preheader.lr.ph, %for.inc187
  %22 = phi i8 [ 0, %for.cond151.preheader.lr.ph ], [ %36, %for.inc187 ]
  %23 = phi %struct.ImageParameters* [ %20, %for.cond151.preheader.lr.ph ], [ %37, %for.inc187 ]
  %indvars.iv308 = phi i64 [ 0, %for.cond151.preheader.lr.ph ], [ %indvars.iv.next309, %for.inc187 ]
  %width152261 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 13
  %24 = load i32* %width152261, align 4, !tbaa !3
  %cmp154263 = icmp sgt i32 %24, 15
  br i1 %cmp154263, label %for.body156.lr.ph, label %for.inc187

for.body156.lr.ph:                                ; preds = %for.cond151.preheader
  %arrayidx162 = getelementptr inbounds i8** %map_sp, i64 %indvars.iv308
  br label %for.body156

for.body156:                                      ; preds = %for.body156.lr.ph, %for.inc184
  %25 = phi i8 [ %22, %for.body156.lr.ph ], [ %32, %for.inc184 ]
  %indvars.iv = phi i64 [ 0, %for.body156.lr.ph ], [ %indvars.iv.next, %for.inc184 ]
  %shl = shl i8 %25, 1
  store i8 %shl, i8* %byte_buf, align 1, !tbaa !1
  %26 = load i8** %arrayidx162, align 8, !tbaa !0
  %arrayidx163 = getelementptr inbounds i8* %26, i64 %indvars.iv
  %27 = load i8* %arrayidx163, align 1, !tbaa !1
  %tobool164 = icmp eq i8 %27, 0
  br i1 %tobool164, label %if.end169, label %if.then165

if.then165:                                       ; preds = %for.body156
  %or = or i8 %shl, 1
  store i8 %or, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end169

if.end169:                                        ; preds = %for.body156, %if.then165
  %28 = phi i8 [ %or, %if.then165 ], [ %shl, %for.body156 ]
  %29 = load i32* %bits_to_go, align 4, !tbaa !3
  %dec171 = add nsw i32 %29, -1
  store i32 %dec171, i32* %bits_to_go, align 4, !tbaa !3
  %cmp173 = icmp eq i32 %dec171, 0
  br i1 %cmp173, label %if.then175, label %for.inc184

if.then175:                                       ; preds = %if.end169
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %30 = load i32* %byte_pos, align 4, !tbaa !3
  %inc179 = add nsw i32 %30, 1
  store i32 %inc179, i32* %byte_pos, align 4, !tbaa !3
  %idxprom180 = sext i32 %30 to i64
  %31 = load i8** %streamBuffer, align 8, !tbaa !0
  %arrayidx181 = getelementptr inbounds i8* %31, i64 %idxprom180
  store i8 %28, i8* %arrayidx181, align 1, !tbaa !1
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  br label %for.inc184

for.inc184:                                       ; preds = %if.end169, %if.then175
  %32 = phi i8 [ %28, %if.end169 ], [ 0, %if.then175 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %33 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %width152 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 13
  %34 = load i32* %width152, align 4, !tbaa !3
  %div153 = sdiv i32 %34, 16
  %35 = trunc i64 %indvars.iv.next to i32
  %cmp154 = icmp slt i32 %35, %div153
  br i1 %cmp154, label %for.body156, label %for.inc187

for.inc187:                                       ; preds = %for.inc184, %for.cond151.preheader
  %36 = phi i8 [ %22, %for.cond151.preheader ], [ %32, %for.inc184 ]
  %37 = phi %struct.ImageParameters* [ %23, %for.cond151.preheader ], [ %33, %for.inc184 ]
  %indvars.iv.next309 = add i64 %indvars.iv308, 1
  %height146 = getelementptr inbounds %struct.ImageParameters* %37, i64 0, i32 15
  %38 = load i32* %height146, align 4, !tbaa !3
  %div147 = sdiv i32 %38, 16
  %39 = trunc i64 %indvars.iv.next309 to i32
  %cmp148 = icmp slt i32 %39, %div147
  br i1 %cmp148, label %for.cond151.preheader, label %if.end190

if.end190:                                        ; preds = %if.then144, %for.inc187, %if.end141
  call void @llvm.lifetime.end(i64 48, i8* %0) #4
  ret i32 %cond
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeSpareMBMap() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0
  %1 = load i32* %number, align 4, !tbaa !3
  %rem = srem i32 %1, 256
  %2 = bitcast %struct.syntaxelement* %sym to i8*
  call void @llvm.lifetime.start(i64 48, i8* %2) #4
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %3 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  %call = call noalias i8* @malloc(i64 48) #6
  %4 = bitcast i8* %call to %struct.Bitstream*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8]* @.str3, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 65496) #6
  %streamBuffer = getelementptr inbounds i8* %call, i64 32
  %5 = bitcast i8* %streamBuffer to i8**
  store i8* %call1, i8** %5, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([39 x i8]* @.str4, i64 0, i64 0)) #6
  %.pre = load i8** %5, align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = phi i8* [ %.pre, %if.then4 ], [ %call1, %if.end ]
  %bits_to_go = getelementptr inbounds i8* %call, i64 4
  %7 = bitcast i8* %bits_to_go to i32*
  store i32 8, i32* %7, align 4, !tbaa !3
  %byte_pos = bitcast i8* %call to i32*
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %8 = getelementptr inbounds i8* %call, i64 8
  store i8 0, i8* %8, align 1, !tbaa !1
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 65496, i32 1, i1 false)
  %9 = load i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 0), align 8, !tbaa !3
  %sub = sub nsw i32 %rem, %9
  %cmp7 = icmp slt i32 %sub, 0
  %add = add nsw i32 %sub, 256
  %add.sub = select i1 %cmp7, i32 %add, i32 %sub
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1
  store i32 %add.sub, i32* %value1, align 4, !tbaa !3
  %call10 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %4) #6
  %10 = load i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 1), align 4, !tbaa !3
  %sub11 = add nsw i32 %10, -1
  store i32 %sub11, i32* %value1, align 4, !tbaa !3
  %call13 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %4) #6
  call void @AppendTmpbits2Buf(%struct.Bitstream* %4, %struct.Bitstream* %3) #7
  %11 = load i32* %7, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %11, 8
  br i1 %cmp15, label %if.end38, label %if.then16

if.then16:                                        ; preds = %if.end5
  %12 = load i8* %8, align 1, !tbaa !1
  %shl = shl i8 %12, 1
  %or = or i8 %shl, 1
  store i8 %or, i8* %8, align 1, !tbaa !1
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %7, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %dec, 0
  br i1 %cmp24, label %if.end32, label %if.then26

if.then26:                                        ; preds = %if.then16
  %conv29 = zext i8 %or to i32
  %shl30 = shl i32 %conv29, %dec
  %conv31 = trunc i32 %shl30 to i8
  store i8 %conv31, i8* %8, align 1, !tbaa !1
  br label %if.end32

if.end32:                                         ; preds = %if.then16, %if.then26
  %13 = phi i8 [ %or, %if.then16 ], [ %conv31, %if.then26 ]
  store i32 8, i32* %7, align 4, !tbaa !3
  %14 = load i32* %byte_pos, align 4, !tbaa !3
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %byte_pos, align 4, !tbaa !3
  %idxprom = sext i32 %14 to i64
  %15 = load i8** %5, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %15, i64 %idxprom
  store i8 %13, i8* %arrayidx, align 1, !tbaa !1
  store i8 0, i8* %8, align 1, !tbaa !1
  br label %if.end38

if.end38:                                         ; preds = %if.end5, %if.end32
  %16 = load i32* %byte_pos, align 4, !tbaa !3
  store i32 %16, i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 2), align 8, !tbaa !3
  store %struct.Bitstream* %4, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !tbaa !0
  %streamBuffer40 = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 9
  %17 = load i8** %streamBuffer40, align 8, !tbaa !0
  call void @free(i8* %17) #6
  %18 = bitcast %struct.Bitstream* %3 to i8*
  call void @free(i8* %18) #6
  call void @llvm.lifetime.end(i64 48, i8* %2) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InitSubseqInfo(i32 %currLayer) #0 {
entry:
  store i32 1, i32* @seiHasSubseqInfo, align 4, !tbaa !1
  %idxprom = sext i32 %currLayer to i64
  %subseq_layer_num = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 0
  store i32 %currLayer, i32* %subseq_layer_num, align 16, !tbaa !3
  %0 = load i16* @InitSubseqInfo.id, align 2, !tbaa !4
  %inc = add i16 %0, 1
  store i16 %inc, i16* @InitSubseqInfo.id, align 2, !tbaa !4
  %conv = zext i16 %0 to i32
  %subseq_id = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 1
  store i32 %conv, i32* %subseq_id, align 4, !tbaa !3
  %last_picture_flag = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 2
  store i32 0, i32* %last_picture_flag, align 8, !tbaa !3
  %stored_frame_cnt = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 3
  store i32 -1, i32* %stored_frame_cnt, align 4, !tbaa !3
  %payloadSize = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 4
  store i32 0, i32* %payloadSize, align 16, !tbaa !3
  %call = tail call noalias i8* @malloc(i64 48) #6
  %1 = bitcast i8* %call to %struct.Bitstream*
  %data = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 5
  store %struct.Bitstream* %1, %struct.Bitstream** %data, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0)) #6
  %.pre = load %struct.Bitstream** %data, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %1, %entry ]
  %call15 = tail call noalias i8* @malloc(i64 65496) #6
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  store i8* %call15, i8** %streamBuffer, align 8, !tbaa !0
  %3 = load %struct.Bitstream** %data, align 8, !tbaa !0
  %streamBuffer22 = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 9
  %4 = load i8** %streamBuffer22, align 8, !tbaa !0
  %cmp23 = icmp eq i8* %4, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([60 x i8]* @.str6, i64 0, i64 0)) #6
  %.pre53 = load %struct.Bitstream** %data, align 8, !tbaa !0
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end
  %5 = phi %struct.Bitstream* [ %.pre53, %if.then25 ], [ %3, %if.end ]
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 0
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  %6 = load %struct.Bitstream** %data, align 8, !tbaa !0
  %streamBuffer39 = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 9
  %7 = load i8** %streamBuffer39, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 65496, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateSubseqInfo(i32 %currLayer) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %currLayer to i64
  %stored_frame_cnt = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 3
  %2 = load i32* %stored_frame_cnt, align 4, !tbaa !3
  %inc = add i32 %2, 1
  %rem = and i32 %inc, 255
  store i32 %rem, i32* %stored_frame_cnt, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  switch i32 %currLayer, label %if.end48 [
    i32 0, label %if.then8
    i32 1, label %if.then19
  ]

if.then8:                                         ; preds = %if.end
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0
  %3 = load i32* %number, align 4, !tbaa !3
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %no_frames = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 2
  %5 = load i32* %no_frames, align 4, !tbaa !3
  %sub = add nsw i32 %5, -1
  %cmp9 = icmp eq i32 %3, %sub
  br i1 %cmp9, label %if.end17, label %if.end17.thread

if.end17.thread:                                  ; preds = %if.then8
  store i32 0, i32* getelementptr inbounds ([2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 0, i32 2), align 8, !tbaa !3
  br label %if.end48

if.end17:                                         ; preds = %if.then8
  store i32 1, i32* getelementptr inbounds ([2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 0, i32 2), align 8, !tbaa !3
  br label %if.end48

if.then19:                                        ; preds = %if.end
  %number20 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0
  %6 = load i32* %number20, align 4, !tbaa !3
  %7 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub21 = sub nsw i32 %6, %7
  %8 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 99
  %9 = load i32* %NumFramesInELSubSeq, align 4, !tbaa !3
  %add = add nsw i32 %9, 1
  %rem22 = srem i32 %sub21, %add
  %cmp23 = icmp eq i32 %rem22, 0
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then19
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 34
  %10 = load i32* %successive_Bframe, align 4, !tbaa !3
  %cmp24 = icmp ne i32 %10, 0
  %cmp28 = icmp sgt i32 %sub21, 0
  %or.cond = and i1 %cmp24, %cmp28
  br i1 %or.cond, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then19
  %cmp35 = icmp eq i32 %rem22, %9
  br i1 %cmp35, label %land.lhs.true36, label %if.else43

land.lhs.true36:                                  ; preds = %lor.lhs.false
  %successive_Bframe37 = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 34
  %11 = load i32* %successive_Bframe37, align 4, !tbaa !3
  %cmp38 = icmp eq i32 %11, 0
  br i1 %cmp38, label %if.then39, label %if.else43

if.then39:                                        ; preds = %land.lhs.true, %land.lhs.true36
  store i32 1, i32* getelementptr inbounds ([2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 1, i32 2), align 8, !tbaa !3
  br label %if.end48

if.else43:                                        ; preds = %land.lhs.true36, %lor.lhs.false
  store i32 0, i32* getelementptr inbounds ([2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 1, i32 2), align 8, !tbaa !3
  br label %if.end48

if.end48:                                         ; preds = %if.end17, %if.end17.thread, %if.end, %if.then39, %if.else43
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeSubseqInfo(i32 %currLayer) #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #4
  %idxprom = sext i32 %currLayer to i64
  %data = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 5
  %1 = load %struct.Bitstream** %data, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %subseq_layer_num = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 0
  %2 = load i32* %subseq_layer_num, align 16, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1
  store i32 %2, i32* %value1, align 4, !tbaa !3
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %subseq_id = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 1
  %3 = load i32* %subseq_id, align 4, !tbaa !3
  store i32 %3, i32* %value1, align 4, !tbaa !3
  %call6 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %last_picture_flag = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 2
  %4 = load i32* %last_picture_flag, align 8, !tbaa !3
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5
  store i32 %4, i32* %bitpattern, align 4, !tbaa !3
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3
  store i32 1, i32* %len, align 4, !tbaa !3
  %call9 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %stored_frame_cnt = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 3
  %5 = load i32* %stored_frame_cnt, align 4, !tbaa !3
  store i32 %5, i32* %value1, align 4, !tbaa !3
  %call13 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1
  %6 = load i32* %bits_to_go, align 4, !tbaa !3
  %cmp = icmp eq i32 %6, 8
  br i1 %cmp, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  %byte_pos34.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  br label %if.end33

if.then:                                          ; preds = %entry
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2
  %7 = load i8* %byte_buf, align 1, !tbaa !1
  %shl = shl i8 %7, 1
  %or = or i8 %shl, 1
  store i8 %or, i8* %byte_buf, align 1, !tbaa !1
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %bits_to_go, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %dec, 0
  br i1 %cmp20, label %if.end, label %if.then22

if.then22:                                        ; preds = %if.then
  %conv25 = zext i8 %or to i32
  %shl26 = shl i32 %conv25, %dec
  %conv27 = trunc i32 %shl26 to i8
  store i8 %conv27, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then22
  %8 = phi i8 [ %or, %if.then ], [ %conv27, %if.then22 ]
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  %9 = load i32* %byte_pos, align 4, !tbaa !3
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %byte_pos, align 4, !tbaa !3
  %idxprom30 = sext i32 %9 to i64
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  %10 = load i8** %streamBuffer, align 8, !tbaa !0
  %arrayidx31 = getelementptr inbounds i8* %10, i64 %idxprom30
  store i8 %8, i8* %arrayidx31, align 1, !tbaa !1
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end33

if.end33:                                         ; preds = %entry.if.end33_crit_edge, %if.end
  %byte_pos34.pre-phi = phi i32* [ %byte_pos34.pre, %entry.if.end33_crit_edge ], [ %byte_pos, %if.end ]
  %11 = load i32* %byte_pos34.pre-phi, align 4, !tbaa !3
  %payloadSize = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 4
  store i32 %11, i32* %payloadSize, align 16, !tbaa !3
  call void @llvm.lifetime.end(i64 48, i8* %0) #4
  ret void
}

; Function Attrs: optsize
declare i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement*, %struct.Bitstream*) #2

; Function Attrs: nounwind optsize uwtable
define void @ClearSubseqInfoPayload(i32 %currLayer) #0 {
entry:
  %idxprom = sext i32 %currLayer to i64
  %data = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 5
  %0 = load %struct.Bitstream** %data, align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 0
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  %1 = load %struct.Bitstream** %data, align 8, !tbaa !0
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  %2 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 65496, i32 1, i1 false)
  %payloadSize = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 4
  store i32 0, i32* %payloadSize, align 16, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CloseSubseqInfo(i32 %currLayer) #0 {
entry:
  %idxprom = sext i32 %currLayer to i64
  %stored_frame_cnt = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 3
  store i32 -1, i32* %stored_frame_cnt, align 4, !tbaa !3
  %payloadSize = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 4
  store i32 0, i32* %payloadSize, align 16, !tbaa !3
  %data = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 5
  %0 = load %struct.Bitstream** %data, align 8, !tbaa !0
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @free(i8* %1) #6
  %2 = load %struct.Bitstream** %data, align 8, !tbaa !0
  %3 = bitcast %struct.Bitstream* %2 to i8*
  tail call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InitSubseqLayerInfo() #0 {
entry:
  store i32 1, i32* @seiHasSubseqLayerInfo, align 4, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 0, i64 %indvars.iv
  store i16 0, i16* %arrayidx, align 2, !tbaa !4
  %arrayidx2 = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 1, i64 %indvars.iv
  store i16 0, i16* %arrayidx2, align 2, !tbaa !4
  %0 = load i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !tbaa !3
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @CloseSubseqLayerInfo() #5 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeSubseqLayerInfo() #0 {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 4), align 4, !tbaa !3
  %0 = load i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !tbaa !3
  %cmp16 = icmp sgt i32 %0, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 0, i64 %indvars.iv20
  %1 = load i16* %arrayidx, align 2, !tbaa !4
  %arrayidx2 = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 2, i64 %indvars.iv
  %2 = bitcast i8* %arrayidx2 to i16*
  store i16 %1, i16* %2, align 4, !tbaa !4
  %3 = or i64 %indvars.iv, 2
  %arrayidx4 = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 1, i64 %indvars.iv20
  %4 = load i16* %arrayidx4, align 2, !tbaa !4
  %arrayidx6 = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 2, i64 %3
  %5 = bitcast i8* %arrayidx6 to i16*
  store i16 %4, i16* %5, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 4
  %6 = load i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 4), align 4, !tbaa !3
  %add8 = add nsw i32 %6, 4
  store i32 %add8, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 4), align 4, !tbaa !3
  %indvars.iv.next21 = add i64 %indvars.iv20, 1
  %7 = load i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !tbaa !3
  %8 = trunc i64 %indvars.iv.next21 to i32
  %cmp = icmp slt i32 %8, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InitSubseqChar() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #6
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str7, i64 0, i64 0)) #6
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #6
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8, !tbaa !0
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  %3 = load i8** %streamBuffer2, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8]* @.str8, i64 0, i64 0)) #6
  %.pre7 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  %streamBuffer.i.phi.trans.insert = getelementptr inbounds %struct.Bitstream* %.pre7, i64 0, i32 9
  %.pre8 = load i8** %streamBuffer.i.phi.trans.insert, align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = phi i8* [ %.pre8, %if.then4 ], [ %3, %if.end ]
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 65496, i32 1, i1 false) #4
  %5 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 1
  store i32 8, i32* %bits_to_go.i, align 4, !tbaa !3
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 0
  store i32 0, i32* %byte_pos.i, align 4, !tbaa !3
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 2
  store i8 0, i8* %byte_buf.i, align 1, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 11), align 8, !tbaa !3
  store i32 0, i32* @seiHasSubseqChar, align 4, !tbaa !1
  %6 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %layer = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 86
  %7 = load i32* %layer, align 4, !tbaa !3
  store i32 %7, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 0), align 8, !tbaa !3
  %8 = load i32* %layer, align 4, !tbaa !3
  %idxprom = sext i32 %8 to i64
  %subseq_id = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 1
  %9 = load i32* %subseq_id, align 4, !tbaa !3
  store i32 %9, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 1), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 2), align 8, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 4), align 8, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 7), align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ClearSubseqCharPayload() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 0
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 11), align 8, !tbaa !3
  store i32 0, i32* @seiHasSubseqChar, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateSubseqChar() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %layer = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 86
  %1 = load i32* %layer, align 4, !tbaa !3
  store i32 %1, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 0), align 8, !tbaa !3
  %2 = load i32* %layer, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %subseq_id = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 1
  %3 = load i32* %subseq_id, align 4, !tbaa !3
  store i32 %3, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 1), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 2), align 8, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 4), align 8, !tbaa !3
  store i32 100, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 5), align 4, !tbaa !3
  store i32 30, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 6), align 8, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 7), align 4, !tbaa !3
  store i32 1, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 8, i64 0), align 8, !tbaa !3
  store i32 2, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 9, i64 0), align 4, !tbaa !3
  store i32 3, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 8, i64 1), align 4, !tbaa !3
  store i32 4, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 9, i64 1), align 4, !tbaa !3
  store i32 1, i32* @seiHasSubseqChar, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeSubseqChar() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #4
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %2 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 0), align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1
  store i32 %2, i32* %value1, align 4, !tbaa !3
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %3 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 1), align 4, !tbaa !3
  store i32 %3, i32* %value1, align 4, !tbaa !3
  %call2 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %4 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 2), align 8, !tbaa !3
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5
  store i32 %4, i32* %bitpattern, align 4, !tbaa !3
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3
  store i32 1, i32* %len, align 4, !tbaa !3
  %call3 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %5 = load i64* bitcast (i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 2) to i64*), align 8
  %6 = trunc i64 %5 to i32
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %bitpattern, align 4, !tbaa !3
  store i32 32, i32* %len, align 4, !tbaa !3
  %call6 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %9 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 4), align 8, !tbaa !3
  store i32 %9, i32* %bitpattern, align 4, !tbaa !3
  store i32 1, i32* %len, align 4, !tbaa !3
  %call9 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %10 = load i64* bitcast (i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 4) to i64*), align 8
  %11 = trunc i64 %10 to i32
  %tobool10 = icmp eq i32 %11, 0
  br i1 %tobool10, label %if.end18, label %if.then11

if.then11:                                        ; preds = %if.end
  %12 = lshr i64 %10, 32
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %bitpattern, align 4, !tbaa !3
  store i32 16, i32* %len, align 4, !tbaa !3
  %call14 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %14 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 6), align 8, !tbaa !3
  store i32 %14, i32* %bitpattern, align 4, !tbaa !3
  store i32 16, i32* %len, align 4, !tbaa !3
  %call17 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then11
  %15 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 7), align 4, !tbaa !3
  store i32 %15, i32* %value1, align 4, !tbaa !3
  %call20 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %16 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 7), align 4, !tbaa !3
  %cmp77 = icmp sgt i32 %16, 0
  br i1 %cmp77, label %for.body, label %for.end

for.body:                                         ; preds = %if.end18, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end18 ]
  %arrayidx = getelementptr inbounds %struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 8, i64 %indvars.iv
  %17 = load i32* %arrayidx, align 4, !tbaa !3
  store i32 %17, i32* %value1, align 4, !tbaa !3
  %call22 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %arrayidx24 = getelementptr inbounds %struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 9, i64 %indvars.iv
  %18 = load i32* %arrayidx24, align 4, !tbaa !3
  store i32 %18, i32* %value1, align 4, !tbaa !3
  %call26 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %19 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 7), align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %20, %19
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end18
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1
  %21 = load i32* %bits_to_go, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %21, 8
  br i1 %cmp27, label %for.end.if.end50_crit_edge, label %if.then28

for.end.if.end50_crit_edge:                       ; preds = %for.end
  %byte_pos51.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  br label %if.end50

if.then28:                                        ; preds = %for.end
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2
  %22 = load i8* %byte_buf, align 1, !tbaa !1
  %shl = shl i8 %22, 1
  %or = or i8 %shl, 1
  store i8 %or, i8* %byte_buf, align 1, !tbaa !1
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %bits_to_go, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %dec, 0
  br i1 %cmp35, label %if.end43, label %if.then37

if.then37:                                        ; preds = %if.then28
  %conv40 = zext i8 %or to i32
  %shl41 = shl i32 %conv40, %dec
  %conv42 = trunc i32 %shl41 to i8
  store i8 %conv42, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end43

if.end43:                                         ; preds = %if.then28, %if.then37
  %23 = phi i8 [ %or, %if.then28 ], [ %conv42, %if.then37 ]
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  %24 = load i32* %byte_pos, align 4, !tbaa !3
  %inc46 = add nsw i32 %24, 1
  store i32 %inc46, i32* %byte_pos, align 4, !tbaa !3
  %idxprom47 = sext i32 %24 to i64
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  %25 = load i8** %streamBuffer, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i8* %25, i64 %idxprom47
  store i8 %23, i8* %arrayidx48, align 1, !tbaa !1
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end50

if.end50:                                         ; preds = %for.end.if.end50_crit_edge, %if.end43
  %byte_pos51.pre-phi = phi i32* [ %byte_pos51.pre, %for.end.if.end50_crit_edge ], [ %byte_pos, %if.end43 ]
  %26 = load i32* %byte_pos51.pre-phi, align 4, !tbaa !3
  store i32 %26, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 11), align 8, !tbaa !3
  call void @llvm.lifetime.end(i64 48, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CloseSubseqChar() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  %tobool = icmp eq %struct.Bitstream* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @free(i8* %1) #6
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  %3 = bitcast %struct.Bitstream* %2 to i8*
  tail call void @free(i8* %3) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InitSceneInformation() #0 {
entry:
  store i32 1, i32* @seiHasSceneInformation, align 4, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 0), align 8, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 1), align 4, !tbaa !3
  store i32 -1, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 2), align 8, !tbaa !3
  %call = tail call noalias i8* @malloc(i64 48) #6
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([47 x i8]* @.str9, i64 0, i64 0)) #6
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #6
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8, !tbaa !0
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !tbaa !0
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  %3 = load i8** %streamBuffer2, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([61 x i8]* @.str10, i64 0, i64 0)) #6
  %.pre7 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = phi %struct.Bitstream* [ %.pre7, %if.then4 ], [ %2, %if.end ]
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 0
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  %5 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !tbaa !0
  %streamBuffer6 = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 9
  %6 = load i8** %streamBuffer6, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 65496, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CloseSceneInformation() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !tbaa !0
  %tobool = icmp eq %struct.Bitstream* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @free(i8* %1) #6
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !tbaa !0
  %3 = bitcast %struct.Bitstream* %2 to i8*
  tail call void @free(i8* %3) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeSceneInformation() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #4
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %2 = load i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 0), align 8, !tbaa !3
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5
  store i32 %2, i32* %bitpattern, align 4, !tbaa !3
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3
  store i32 8, i32* %len, align 4, !tbaa !3
  %call = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %3 = load i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 1), align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1
  store i32 %3, i32* %value1, align 4, !tbaa !3
  %call1 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %4 = load i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 1), align 4, !tbaa !3
  %cmp = icmp sgt i32 %4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 2), align 8, !tbaa !3
  store i32 %5, i32* %bitpattern, align 4, !tbaa !3
  store i32 8, i32* %len, align 4, !tbaa !3
  %call4 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1
  %6 = load i32* %bits_to_go, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %6, 8
  br i1 %cmp5, label %if.end.if.end25_crit_edge, label %if.then6

if.end.if.end25_crit_edge:                        ; preds = %if.end
  %byte_pos26.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  br label %if.end25

if.then6:                                         ; preds = %if.end
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2
  %7 = load i8* %byte_buf, align 1, !tbaa !1
  %shl = shl i8 %7, 1
  %or = or i8 %shl, 1
  store i8 %or, i8* %byte_buf, align 1, !tbaa !1
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %bits_to_go, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %dec, 0
  br i1 %cmp13, label %if.end21, label %if.then15

if.then15:                                        ; preds = %if.then6
  %conv18 = zext i8 %or to i32
  %shl19 = shl i32 %conv18, %dec
  %conv20 = trunc i32 %shl19 to i8
  store i8 %conv20, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end21

if.end21:                                         ; preds = %if.then6, %if.then15
  %8 = phi i8 [ %or, %if.then6 ], [ %conv20, %if.then15 ]
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  %9 = load i32* %byte_pos, align 4, !tbaa !3
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %byte_pos, align 4, !tbaa !3
  %idxprom = sext i32 %9 to i64
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  %10 = load i8** %streamBuffer, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %10, i64 %idxprom
  store i8 %8, i8* %arrayidx, align 1, !tbaa !1
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end25

if.end25:                                         ; preds = %if.end.if.end25_crit_edge, %if.end21
  %byte_pos26.pre-phi = phi i32* [ %byte_pos26.pre, %if.end.if.end25_crit_edge ], [ %byte_pos, %if.end21 ]
  %11 = load i32* %byte_pos26.pre-phi, align 4, !tbaa !3
  store i32 %11, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 4), align 8, !tbaa !3
  call void @llvm.lifetime.end(i64 48, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateSceneInformation(i32 %HasSceneInformation, i32 %sceneID, i32 %sceneTransType, i32 %secondSceneID) #0 {
entry:
  store i32 %HasSceneInformation, i32* @seiHasSceneInformation, align 4, !tbaa !1
  store i32 %sceneID, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 0), align 8, !tbaa !3
  store i32 %sceneTransType, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 1), align 4, !tbaa !3
  %cmp = icmp sgt i32 %sceneTransType, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %secondSceneID, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 2), align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InitPanScanRectInfo() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #6
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([45 x i8]* @.str11, i64 0, i64 0)) #6
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #6
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8, !tbaa !0
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  %3 = load i8** %streamBuffer2, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8]* @.str12, i64 0, i64 0)) #6
  %.pre6 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  %streamBuffer.i.phi.trans.insert = getelementptr inbounds %struct.Bitstream* %.pre6, i64 0, i32 9
  %.pre7 = load i8** %streamBuffer.i.phi.trans.insert, align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = phi i8* [ %.pre7, %if.then4 ], [ %3, %if.end ]
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 65496, i32 1, i1 false) #4
  %5 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 1
  store i32 8, i32* %bits_to_go.i, align 4, !tbaa !3
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 0
  store i32 0, i32* %byte_pos.i, align 4, !tbaa !3
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 2
  store i8 0, i8* %byte_buf.i, align 1, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 6), align 8, !tbaa !3
  store i32 1, i32* @seiHasPanScanRectInfo, align 4, !tbaa !1
  call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 1) to i8*), i8 0, i64 16, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ClearPanScanRectInfoPayload() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 0
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 6), align 8, !tbaa !3
  store i32 1, i32* @seiHasPanScanRectInfo, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @UpdatePanScanRectInfo() #0 {
entry:
  store i32 3, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 0), align 8, !tbaa !3
  store i32 10, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 1), align 4, !tbaa !3
  store i32 40, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 2), align 8, !tbaa !3
  store i32 20, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 3), align 4, !tbaa !3
  store i32 32, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 4), align 8, !tbaa !3
  store i32 1, i32* @seiHasPanScanRectInfo, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizePanScanRectInfo() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #4
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %2 = load i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 0), align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1
  store i32 %2, i32* %value1, align 4, !tbaa !3
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %3 = load i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 1), align 4, !tbaa !3
  store i32 %3, i32* %value1, align 4, !tbaa !3
  %call2 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %4 = load i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 2), align 8, !tbaa !3
  store i32 %4, i32* %value1, align 4, !tbaa !3
  %call4 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %5 = load i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 3), align 4, !tbaa !3
  store i32 %5, i32* %value1, align 4, !tbaa !3
  %call6 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %6 = load i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 4), align 8, !tbaa !3
  store i32 %6, i32* %value1, align 4, !tbaa !3
  %call8 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1
  %7 = load i32* %bits_to_go, align 4, !tbaa !3
  %cmp = icmp eq i32 %7, 8
  br i1 %cmp, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  %byte_pos27.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  br label %if.end26

if.then:                                          ; preds = %entry
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2
  %8 = load i8* %byte_buf, align 1, !tbaa !1
  %shl = shl i8 %8, 1
  %or = or i8 %shl, 1
  store i8 %or, i8* %byte_buf, align 1, !tbaa !1
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %bits_to_go, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %dec, 0
  br i1 %cmp15, label %if.end, label %if.then17

if.then17:                                        ; preds = %if.then
  %conv20 = zext i8 %or to i32
  %shl21 = shl i32 %conv20, %dec
  %conv22 = trunc i32 %shl21 to i8
  store i8 %conv22, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then17
  %9 = phi i8 [ %or, %if.then ], [ %conv22, %if.then17 ]
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  %10 = load i32* %byte_pos, align 4, !tbaa !3
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %byte_pos, align 4, !tbaa !3
  %idxprom = sext i32 %10 to i64
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  %11 = load i8** %streamBuffer, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %11, i64 %idxprom
  store i8 %9, i8* %arrayidx, align 1, !tbaa !1
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end26

if.end26:                                         ; preds = %entry.if.end26_crit_edge, %if.end
  %byte_pos27.pre-phi = phi i32* [ %byte_pos27.pre, %entry.if.end26_crit_edge ], [ %byte_pos, %if.end ]
  %12 = load i32* %byte_pos27.pre-phi, align 4, !tbaa !3
  store i32 %12, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 6), align 8, !tbaa !3
  call void @llvm.lifetime.end(i64 48, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ClosePanScanRectInfo() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  %tobool = icmp eq %struct.Bitstream* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @free(i8* %1) #6
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  %3 = bitcast %struct.Bitstream* %2 to i8*
  tail call void @free(i8* %3) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InitUser_data_unregistered() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #6
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8]* @.str13, i64 0, i64 0)) #6
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #6
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8, !tbaa !0
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  %3 = load i8** %streamBuffer2, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([73 x i8]* @.str14, i64 0, i64 0)) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %call6 = tail call noalias i8* @malloc(i64 65496) #6
  store i8* %call6, i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !tbaa !0
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8]* @.str15, i64 0, i64 0)) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end5, %if.then8
  %4 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  %streamBuffer.i = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 9
  %5 = load i8** %streamBuffer.i, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 65496, i32 1, i1 false) #4
  %6 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 1
  store i32 8, i32* %bits_to_go.i, align 4, !tbaa !3
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 0
  store i32 0, i32* %byte_pos.i, align 4, !tbaa !3
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 2
  store i8 0, i8* %byte_buf.i, align 1, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 3), align 8, !tbaa !3
  %7 = load i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 65496, i32 1, i1 false) #4
  store i32 0, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 1), align 8, !tbaa !3
  store i32 1, i32* @seiHasUser_data_unregistered_info, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ClearUser_data_unregistered() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 0
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 3), align 8, !tbaa !3
  %3 = load i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 65496, i32 1, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 1), align 8, !tbaa !3
  store i32 1, i32* @seiHasUser_data_unregistered_info, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateUser_data_unregistered() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = shl nsw i64 %indvars.iv, 2
  %1 = trunc i64 %0 to i32
  %cmp2 = icmp slt i32 %1, 0
  %phitmp = trunc i64 %0 to i8
  %.phitmp = select i1 %cmp2, i8 0, i8 %phitmp
  %2 = load i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %2, i64 %indvars.iv
  store i8 %.phitmp, i8* %arrayidx, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store i32 7, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 1), align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeUser_data_unregistered() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #4
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %2 = load i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 1), align 8, !tbaa !3
  %cmp41 = icmp sgt i32 %2, 0
  br i1 %cmp41, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = load i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %3, i64 %indvars.iv
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i8 %4 to i32
  store i32 %conv, i32* %bitpattern, align 4, !tbaa !3
  store i32 8, i32* %len, align 4, !tbaa !3
  %call = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = load i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 1), align 8, !tbaa !3
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1
  %7 = load i32* %bits_to_go, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %7, 8
  br i1 %cmp1, label %for.end.if.end24_crit_edge, label %if.then

for.end.if.end24_crit_edge:                       ; preds = %for.end
  %byte_pos25.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  br label %if.end24

if.then:                                          ; preds = %for.end
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2
  %8 = load i8* %byte_buf, align 1, !tbaa !1
  %shl = shl i8 %8, 1
  %or = or i8 %shl, 1
  store i8 %or, i8* %byte_buf, align 1, !tbaa !1
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %bits_to_go, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %dec, 0
  br i1 %cmp10, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then
  %conv15 = zext i8 %or to i32
  %shl16 = shl i32 %conv15, %dec
  %conv17 = trunc i32 %shl16 to i8
  store i8 %conv17, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then12
  %9 = phi i8 [ %or, %if.then ], [ %conv17, %if.then12 ]
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  %10 = load i32* %byte_pos, align 4, !tbaa !3
  %inc20 = add nsw i32 %10, 1
  store i32 %inc20, i32* %byte_pos, align 4, !tbaa !3
  %idxprom21 = sext i32 %10 to i64
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  %11 = load i8** %streamBuffer, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i8* %11, i64 %idxprom21
  store i8 %9, i8* %arrayidx22, align 1, !tbaa !1
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end24

if.end24:                                         ; preds = %for.end.if.end24_crit_edge, %if.end
  %byte_pos25.pre-phi = phi i32* [ %byte_pos25.pre, %for.end.if.end24_crit_edge ], [ %byte_pos, %if.end ]
  %12 = load i32* %byte_pos25.pre-phi, align 4, !tbaa !3
  store i32 %12, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 3), align 8, !tbaa !3
  call void @llvm.lifetime.end(i64 48, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CloseUser_data_unregistered() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  %tobool = icmp eq %struct.Bitstream* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @free(i8* %1) #6
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  %3 = bitcast %struct.Bitstream* %2 to i8*
  tail call void @free(i8* %3) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !tbaa !0
  %4 = load i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !tbaa !0
  %tobool1 = icmp eq i8* %4, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @free(i8* %4) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InitUser_data_registered_itu_t_t35() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #6
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([67 x i8]* @.str16, i64 0, i64 0)) #6
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #6
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8, !tbaa !0
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  %3 = load i8** %streamBuffer2, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([81 x i8]* @.str17, i64 0, i64 0)) #6
  %.pre10 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = phi %struct.Bitstream* [ %.pre10, %if.then4 ], [ %2, %if.end ]
  %call6 = tail call noalias i8* @malloc(i64 65496) #6
  store i8* %call6, i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !tbaa !0
  %cmp7 = icmp eq %struct.Bitstream* %4, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @no_mem_exit(i8* getelementptr inbounds ([67 x i8]* @.str18, i64 0, i64 0)) #6
  %.pre11 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %5 = phi %struct.Bitstream* [ %.pre11, %if.then8 ], [ %4, %if.end5 ]
  %streamBuffer.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 9
  %6 = load i8** %streamBuffer.i, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 65496, i32 1, i1 false) #4
  %7 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 1
  store i32 8, i32* %bits_to_go.i, align 4, !tbaa !3
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 0
  store i32 0, i32* %byte_pos.i, align 4, !tbaa !3
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 2
  store i8 0, i8* %byte_buf.i, align 1, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 5), align 8, !tbaa !3
  %8 = load i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 65496, i32 1, i1 false) #4
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 1), align 8, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 2), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 3), align 8, !tbaa !3
  store i32 1, i32* @seiHasUser_data_registered_itu_t_t35_info, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ClearUser_data_registered_itu_t_t35() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 0
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 5), align 8, !tbaa !3
  %3 = load i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 65496, i32 1, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 1), align 8, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 2), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 3), align 8, !tbaa !3
  store i32 1, i32* @seiHasUser_data_registered_itu_t_t35_info, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateUser_data_registered_itu_t_t35() #0 {
entry:
  store i32 82, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 2), align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %mul = mul nsw i32 %i.022, 3
  %phitmp = trunc i32 %mul to i8
  %0 = load i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %0, i64 %indvars.iv
  store i8 %phitmp, i8* %arrayidx, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.022, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store i32 7, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 1), align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeUser_data_registered_itu_t_t35() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #4
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %2 = load i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 2), align 4, !tbaa !3
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5
  store i32 %2, i32* %bitpattern, align 4, !tbaa !3
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3
  store i32 8, i32* %len, align 4, !tbaa !3
  %call = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %3 = load i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 2), align 4, !tbaa !3
  %cmp = icmp eq i32 %3, 255
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %4 = load i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 3), align 8, !tbaa !3
  store i32 %4, i32* %bitpattern, align 4, !tbaa !3
  store i32 8, i32* %len, align 4, !tbaa !3
  %call3 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %5 = load i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 1), align 8, !tbaa !3
  %cmp452 = icmp sgt i32 %5, 0
  br i1 %cmp452, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %6 = load i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %6, i64 %indvars.iv
  %7 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i8 %7 to i32
  store i32 %conv, i32* %bitpattern, align 4, !tbaa !3
  store i32 8, i32* %len, align 4, !tbaa !3
  %call7 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = load i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 1), align 8, !tbaa !3
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %9, %8
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1
  %10 = load i32* %bits_to_go, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %10, 8
  br i1 %cmp8, label %for.end.if.end33_crit_edge, label %if.then10

for.end.if.end33_crit_edge:                       ; preds = %for.end
  %byte_pos34.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  br label %if.end33

if.then10:                                        ; preds = %for.end
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2
  %11 = load i8* %byte_buf, align 1, !tbaa !1
  %shl = shl i8 %11, 1
  %or = or i8 %shl, 1
  store i8 %or, i8* %byte_buf, align 1, !tbaa !1
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %bits_to_go, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %dec, 0
  br i1 %cmp18, label %if.end26, label %if.then20

if.then20:                                        ; preds = %if.then10
  %conv23 = zext i8 %or to i32
  %shl24 = shl i32 %conv23, %dec
  %conv25 = trunc i32 %shl24 to i8
  store i8 %conv25, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end26

if.end26:                                         ; preds = %if.then10, %if.then20
  %12 = phi i8 [ %or, %if.then10 ], [ %conv25, %if.then20 ]
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  %13 = load i32* %byte_pos, align 4, !tbaa !3
  %inc29 = add nsw i32 %13, 1
  store i32 %inc29, i32* %byte_pos, align 4, !tbaa !3
  %idxprom30 = sext i32 %13 to i64
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  %14 = load i8** %streamBuffer, align 8, !tbaa !0
  %arrayidx31 = getelementptr inbounds i8* %14, i64 %idxprom30
  store i8 %12, i8* %arrayidx31, align 1, !tbaa !1
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end33

if.end33:                                         ; preds = %for.end.if.end33_crit_edge, %if.end26
  %byte_pos34.pre-phi = phi i32* [ %byte_pos34.pre, %for.end.if.end33_crit_edge ], [ %byte_pos, %if.end26 ]
  %15 = load i32* %byte_pos34.pre-phi, align 4, !tbaa !3
  store i32 %15, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 5), align 8, !tbaa !3
  call void @llvm.lifetime.end(i64 48, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CloseUser_data_registered_itu_t_t35() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  %tobool = icmp eq %struct.Bitstream* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @free(i8* %1) #6
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  %3 = bitcast %struct.Bitstream* %2 to i8*
  tail call void @free(i8* %3) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !tbaa !0
  %4 = load i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !tbaa !0
  %tobool1 = icmp eq i8* %4, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @free(i8* %4) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InitRandomAccess() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #6
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([39 x i8]* @.str19, i64 0, i64 0)) #6
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #6
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  store i8* %call1, i8** %streamBuffer, align 8, !tbaa !0
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  %3 = load i8** %streamBuffer2, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([53 x i8]* @.str20, i64 0, i64 0)) #6
  %.pre6 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  %streamBuffer.i.phi.trans.insert = getelementptr inbounds %struct.Bitstream* %.pre6, i64 0, i32 9
  %.pre7 = load i8** %streamBuffer.i.phi.trans.insert, align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = phi i8* [ %.pre7, %if.then4 ], [ %3, %if.end ]
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 65496, i32 1, i1 false) #4
  %5 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 1
  store i32 8, i32* %bits_to_go.i, align 4, !tbaa !3
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 0
  store i32 0, i32* %byte_pos.i, align 4, !tbaa !3
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 2
  store i8 0, i8* %byte_buf.i, align 1, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 4), align 8, !tbaa !3
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 0), align 8, !tbaa !1
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 2), align 2, !tbaa !1
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 1), align 1, !tbaa !1
  store i32 0, i32* @seiHasRandomAccess_info, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ClearRandomAccess() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false)
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 0
  store i32 0, i32* %byte_pos, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 2
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  store i32 0, i32* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 4), align 8, !tbaa !3
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 0), align 8, !tbaa !1
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 2), align 2, !tbaa !1
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 1), align 1, !tbaa !1
  store i32 0, i32* @seiHasRandomAccess_info, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateRandomAccess() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 0), align 8, !tbaa !1
  store i8 1, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 1), align 1, !tbaa !1
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 2), align 2, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ 1, %if.then ], [ 0, %entry ]
  store i32 %storemerge, i32* @seiHasRandomAccess_info, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeRandomAccess() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #4
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !3
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %2 = load i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 0), align 8, !tbaa !1
  %conv = zext i8 %2 to i32
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1
  store i32 %conv, i32* %value1, align 4, !tbaa !3
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %3 = load i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 1), align 1, !tbaa !1
  %conv1 = zext i8 %3 to i32
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5
  store i32 %conv1, i32* %bitpattern, align 4, !tbaa !3
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3
  store i32 1, i32* %len, align 4, !tbaa !3
  %call2 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %4 = load i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 2), align 2, !tbaa !1
  %conv3 = zext i8 %4 to i32
  store i32 %conv3, i32* %bitpattern, align 4, !tbaa !3
  store i32 1, i32* %len, align 4, !tbaa !3
  %call6 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #6
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1
  %5 = load i32* %bits_to_go, align 4, !tbaa !3
  %cmp = icmp eq i32 %5, 8
  br i1 %cmp, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  %byte_pos27.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  br label %if.end26

if.then:                                          ; preds = %entry
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2
  %6 = load i8* %byte_buf, align 1, !tbaa !1
  %shl = shl i8 %6, 1
  %or = or i8 %shl, 1
  store i8 %or, i8* %byte_buf, align 1, !tbaa !1
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %bits_to_go, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %dec, 0
  br i1 %cmp15, label %if.end, label %if.then17

if.then17:                                        ; preds = %if.then
  %conv20 = zext i8 %or to i32
  %shl21 = shl i32 %conv20, %dec
  %conv22 = trunc i32 %shl21 to i8
  store i8 %conv22, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then17
  %7 = phi i8 [ %or, %if.then ], [ %conv22, %if.then17 ]
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0
  %8 = load i32* %byte_pos, align 4, !tbaa !3
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %byte_pos, align 4, !tbaa !3
  %idxprom = sext i32 %8 to i64
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9
  %9 = load i8** %streamBuffer, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %9, i64 %idxprom
  store i8 %7, i8* %arrayidx, align 1, !tbaa !1
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end26

if.end26:                                         ; preds = %entry.if.end26_crit_edge, %if.end
  %byte_pos27.pre-phi = phi i32* [ %byte_pos27.pre, %entry.if.end26_crit_edge ], [ %byte_pos, %if.end ]
  %10 = load i32* %byte_pos27.pre-phi, align 4, !tbaa !3
  store i32 %10, i32* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 4), align 8, !tbaa !3
  call void @llvm.lifetime.end(i64 48, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CloseRandomAccess() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  %tobool = icmp eq %struct.Bitstream* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9
  %1 = load i8** %streamBuffer, align 8, !tbaa !0
  tail call void @free(i8* %1) #6
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  %3 = bitcast %struct.Bitstream* %2 to i8*
  tail call void @free(i8* %3) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !tbaa !0
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
