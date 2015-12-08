; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/nal.c'
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
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }

@NAL_Payload_buffer = internal unnamed_addr global i8* null, align 8
@img = external global %struct.ImageParameters*
@stats = external global %struct.StatParameters*
@input = external global %struct.InputParameters*

; Function Attrs: nounwind optsize uwtable
define void @SODBtoRBSP(%struct.Bitstream* nocapture %currStream) #0 {
entry:
  %byte_buf = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 2
  %0 = load i8* %byte_buf, align 1, !tbaa !0
  %shl = shl i8 %0, 1
  %or = or i8 %shl, 1
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 1
  %1 = load i32* %bits_to_go, align 4, !tbaa !2
  %dec = add nsw i32 %1, -1
  %conv7 = zext i8 %or to i32
  %shl8 = shl i32 %conv7, %dec
  %conv9 = trunc i32 %shl8 to i8
  %byte_pos = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 0
  %2 = load i32* %byte_pos, align 4, !tbaa !2
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %byte_pos, align 4, !tbaa !2
  %idxprom = sext i32 %2 to i64
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 9
  %3 = load i8** %streamBuffer, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %3, i64 %idxprom
  store i8 %conv9, i8* %arrayidx, align 1, !tbaa !0
  store i32 8, i32* %bits_to_go, align 4, !tbaa !2
  store i8 0, i8* %byte_buf, align 1, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @RBSPtoEBSP(i8* nocapture %streamBuffer, i32 %begin_bytepos, i32 %end_bytepos, i32 %min_num_bytes) #0 {
entry:
  %cmp75 = icmp slt i32 %begin_bytepos, %end_bytepos
  br i1 %cmp75, label %for.body.lr.ph, label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %entry
  %0 = sext i32 %begin_bytepos to i64
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body
  br i1 %cmp75, label %for.body5.lr.ph, label %while.cond.preheader

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %1 = sext i32 %begin_bytepos to i64
  br label %for.body5

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv81 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next82, %for.body ]
  %arrayidx = getelementptr inbounds i8* %streamBuffer, i64 %indvars.iv81
  %2 = load i8* %arrayidx, align 1, !tbaa !0
  %3 = load i8** @NAL_Payload_buffer, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds i8* %3, i64 %indvars.iv81
  store i8 %2, i8* %arrayidx2, align 1, !tbaa !0
  %indvars.iv.next82 = add i64 %indvars.iv81, 1
  %4 = trunc i64 %indvars.iv.next82 to i32
  %cmp = icmp slt i32 %4, %end_bytepos
  br i1 %cmp, label %for.body, label %for.cond3.preheader

while.cond.preheader:                             ; preds = %entry, %if.end, %for.cond3.preheader
  %j.0.lcssa = phi i32 [ %begin_bytepos, %for.cond3.preheader ], [ %inc24, %if.end ], [ %begin_bytepos, %entry ]
  %add = add nsw i32 %min_num_bytes, %begin_bytepos
  %cmp2868 = icmp slt i32 %j.0.lcssa, %add
  br i1 %cmp2868, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %5 = sext i32 %j.0.lcssa to i64
  br label %while.body

for.body5:                                        ; preds = %for.body5.lr.ph, %if.end
  %indvars.iv79 = phi i64 [ %1, %for.body5.lr.ph ], [ %indvars.iv.next80, %if.end ]
  %count.073 = phi i32 [ 0, %for.body5.lr.ph ], [ %count.2, %if.end ]
  %j.072 = phi i32 [ %begin_bytepos, %for.body5.lr.ph ], [ %inc24, %if.end ]
  %cmp6 = icmp eq i32 %count.073, 2
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body5
  %6 = load i8** @NAL_Payload_buffer, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds i8* %6, i64 %indvars.iv79
  %7 = load i8* %arrayidx8, align 1, !tbaa !0
  %tobool = icmp ugt i8 %7, 3
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %idxprom9 = sext i32 %j.072 to i64
  %arrayidx10 = getelementptr inbounds i8* %streamBuffer, i64 %idxprom9
  store i8 3, i8* %arrayidx10, align 1, !tbaa !0
  %inc11 = add nsw i32 %j.072, 1
  br label %if.end

if.end:                                           ; preds = %for.body5, %if.then, %land.lhs.true
  %j.1 = phi i32 [ %j.072, %land.lhs.true ], [ %inc11, %if.then ], [ %j.072, %for.body5 ]
  %count.1 = phi i32 [ 2, %land.lhs.true ], [ 0, %if.then ], [ %count.073, %for.body5 ]
  %8 = load i8** @NAL_Payload_buffer, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds i8* %8, i64 %indvars.iv79
  %9 = load i8* %arrayidx13, align 1, !tbaa !0
  %idxprom14 = sext i32 %j.1 to i64
  %arrayidx15 = getelementptr inbounds i8* %streamBuffer, i64 %idxprom14
  store i8 %9, i8* %arrayidx15, align 1, !tbaa !0
  %10 = load i8** @NAL_Payload_buffer, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds i8* %10, i64 %indvars.iv79
  %11 = load i8* %arrayidx17, align 1, !tbaa !0
  %cmp19 = icmp eq i8 %11, 0
  %inc22 = add nsw i32 %count.1, 1
  %count.2 = select i1 %cmp19, i32 %inc22, i32 0
  %inc24 = add nsw i32 %j.1, 1
  %indvars.iv.next80 = add i64 %indvars.iv79, 1
  %12 = trunc i64 %indvars.iv.next80 to i32
  %cmp4 = icmp slt i32 %12, %end_bytepos
  br i1 %cmp4, label %for.body5, label %while.cond.preheader

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %5, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %j.269 = phi i32 [ %j.0.lcssa, %while.body.lr.ph ], [ %add38, %while.body ]
  %arrayidx31 = getelementptr inbounds i8* %streamBuffer, i64 %indvars.iv
  store i8 0, i8* %arrayidx31, align 1, !tbaa !0
  %13 = add nsw i64 %indvars.iv, 1
  %arrayidx34 = getelementptr inbounds i8* %streamBuffer, i64 %13
  store i8 0, i8* %arrayidx34, align 1, !tbaa !0
  %14 = add nsw i64 %indvars.iv, 2
  %arrayidx37 = getelementptr inbounds i8* %streamBuffer, i64 %14
  store i8 3, i8* %arrayidx37, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 3
  %add38 = add nsw i32 %j.269, 3
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 6
  %16 = load i32* %type, align 4, !tbaa !2
  %idxprom39 = sext i32 %16 to i64
  %17 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx40 = getelementptr inbounds %struct.StatParameters* %17, i64 0, i32 22, i64 %idxprom39
  %18 = load i32* %arrayidx40, align 4, !tbaa !2
  %add41 = add nsw i32 %18, 16
  store i32 %add41, i32* %arrayidx40, align 4, !tbaa !2
  %19 = trunc i64 %indvars.iv.next to i32
  %cmp28 = icmp slt i32 %19, %add
  br i1 %cmp28, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %j.2.lcssa = phi i32 [ %j.0.lcssa, %while.cond.preheader ], [ %add38, %while.body ]
  ret i32 %j.2.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @AllocNalPayloadBuffer() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %img_width = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 16
  %1 = load i32* %img_width, align 4, !tbaa !2
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 165
  %3 = load i32* %auto_crop_right, align 4, !tbaa !2
  %add = add nsw i32 %3, %1
  %img_height = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 17
  %4 = load i32* %img_height, align 4, !tbaa !2
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 166
  %5 = load i32* %auto_crop_bottom, align 4, !tbaa !2
  %add1 = add nsw i32 %5, %4
  %mul = shl i32 %add, 2
  %mul2 = mul i32 %mul, %add1
  %6 = load i8** @NAL_Payload_buffer, align 8, !tbaa !3
  %tobool.i = icmp eq i8* %6, null
  br i1 %tobool.i, label %FreeNalPayloadBuffer.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @free(i8* %6) #2
  store i8* null, i8** @NAL_Payload_buffer, align 8, !tbaa !3
  br label %FreeNalPayloadBuffer.exit

FreeNalPayloadBuffer.exit:                        ; preds = %entry, %if.then.i
  %conv = sext i32 %mul2 to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 1) #2
  store i8* %call, i8** @NAL_Payload_buffer, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @FreeNalPayloadBuffer() #0 {
entry:
  %0 = load i8** @NAL_Payload_buffer, align 8, !tbaa !3
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #2
  store i8* null, i8** @NAL_Payload_buffer, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"int", metadata !0}
!3 = metadata !{metadata !"any pointer", metadata !0}
