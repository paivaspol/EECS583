; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/rtp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.RTPpacket_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@CurrentRTPTimestamp = global i32 0, align 4
@CurrentRTPSequenceNumber = global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-1\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-2\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-3\00", align 1
@f = common global %struct._IO_FILE* null, align 8
@.str4 = private unnamed_addr constant [54 x i8] c"Cannot write %d bytes of RTP packet to outfile, exit\0A\00", align 1
@RTPUpdateTimestamp.oldtr = internal unnamed_addr global i32 -1, align 4
@.str5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"Fatal: cannot open bitstream file '%s', exit (-1)\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @ComposeRTPPacket(%struct.RTPpacket_t* nocapture %p) #0 {
entry:
  %v = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 0
  %0 = load i32* %v, align 4, !tbaa !0
  %p1 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 1
  %1 = load i32* %p1, align 4, !tbaa !0
  %shl = shl i32 %1, 2
  %or = or i32 %shl, %0
  %x = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 2
  %2 = load i32* %x, align 4, !tbaa !0
  %shl2 = shl i32 %2, 3
  %or3 = or i32 %or, %shl2
  %cc = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 3
  %3 = load i32* %cc, align 4, !tbaa !0
  %shl4 = shl i32 %3, 4
  %or5 = or i32 %or3, %shl4
  %conv = trunc i32 %or5 to i8
  %packet = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 11
  %4 = load i8** %packet, align 8, !tbaa !3
  store i8 %conv, i8* %4, align 1, !tbaa !1
  %m = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 4
  %5 = load i32* %m, align 4, !tbaa !0
  %pt = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 5
  %6 = load i32* %pt, align 4, !tbaa !0
  %shl6 = shl i32 %6, 1
  %or7 = or i32 %shl6, %5
  %conv8 = trunc i32 %or7 to i8
  %7 = load i8** %packet, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds i8* %7, i64 1
  store i8 %conv8, i8* %arrayidx10, align 1, !tbaa !1
  %seq = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 6
  %8 = load i32* %seq, align 4, !tbaa !0
  %conv11 = trunc i32 %8 to i8
  %9 = load i8** %packet, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds i8* %9, i64 2
  store i8 %conv11, i8* %arrayidx13, align 1, !tbaa !1
  %10 = load i32* %seq, align 4, !tbaa !0
  %shr = lshr i32 %10, 8
  %conv16 = trunc i32 %shr to i8
  %11 = load i8** %packet, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds i8* %11, i64 3
  store i8 %conv16, i8* %arrayidx18, align 1, !tbaa !1
  %12 = load i8** %packet, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds i8* %12, i64 4
  %timestamp = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 7
  %13 = bitcast i8* %arrayidx20 to i32*
  %14 = load i32* %timestamp, align 1
  store i32 %14, i32* %13, align 1
  %15 = load i8** %packet, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds i8* %15, i64 8
  %ssrc = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 8
  %16 = bitcast i8* %arrayidx22 to i32*
  %17 = load i32* %ssrc, align 1
  store i32 %17, i32* %16, align 1
  %18 = load i8** %packet, align 8, !tbaa !3
  %arrayidx24 = getelementptr inbounds i8* %18, i64 12
  %payload = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 9
  %19 = load i8** %payload, align 8, !tbaa !3
  %paylen = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 10
  %20 = load i32* %paylen, align 4, !tbaa !0
  %conv25 = zext i32 %20 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx24, i8* %19, i64 %conv25, i32 1, i1 false)
  %21 = load i32* %paylen, align 4, !tbaa !0
  %add = add i32 %21, 12
  %packlen = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 12
  store i32 %add, i32* %packlen, align 4, !tbaa !0
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define i32 @WriteRTPPacket(%struct.RTPpacket_t* nocapture %p, %struct._IO_FILE* nocapture %f) #0 {
entry:
  %intime = alloca i32, align 4
  store i32 -1, i32* %intime, align 4, !tbaa !0
  %packlen = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 12
  %0 = bitcast i32* %packlen to i8*
  %call = call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %f) #5
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %intime to i8*
  %call1 = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %f) #5
  %cmp2 = icmp eq i64 %call1, 1
  br i1 %cmp2, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %packet = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 11
  %2 = load i8** %packet, align 8, !tbaa !3
  %3 = load i32* %packlen, align 4, !tbaa !0
  %conv = zext i32 %3 to i64
  %call6 = call i64 @fwrite(i8* %2, i64 %conv, i64 1, %struct._IO_FILE* %f) #5
  %not.cmp7 = icmp ne i64 %call6, 1
  %. = sext i1 %not.cmp7 to i32
  br label %return

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @WriteRTPNALU(%struct.NALU_t* nocapture %n) #0 {
entry:
  %forbidden_bit = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 5
  %0 = load i32* %forbidden_bit, align 4, !tbaa !0
  %shl = shl i32 %0, 7
  %nal_reference_idc = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 4
  %1 = load i32* %nal_reference_idc, align 4, !tbaa !0
  %shl1 = shl i32 %1, 5
  %or = or i32 %shl1, %shl
  %nal_unit_type = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 3
  %2 = load i32* %nal_unit_type, align 4, !tbaa !0
  %or2 = or i32 %or, %2
  %conv = trunc i32 %or2 to i8
  %buf = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 6
  %3 = load i8** %buf, align 8, !tbaa !3
  store i8 %conv, i8* %3, align 1, !tbaa !1
  %call = tail call noalias i8* @malloc(i64 72) #5
  %4 = bitcast i8* %call to %struct.RTPpacket_t*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = tail call noalias i8* @malloc(i64 65508) #5
  %packet = getelementptr inbounds i8* %call, i64 56
  %5 = bitcast i8* %packet to i8**
  store i8* %call4, i8** %5, align 8, !tbaa !3
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %call9 = tail call noalias i8* @malloc(i64 65508) #5
  %payload = getelementptr inbounds i8* %call, i64 40
  %6 = bitcast i8* %payload to i8**
  store i8* %call9, i8** %6, align 8, !tbaa !3
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0)) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8
  %v = bitcast i8* %call to i32*
  store i32 2, i32* %v, align 4, !tbaa !0
  %p14 = getelementptr inbounds i8* %call, i64 4
  %7 = bitcast i8* %p14 to i32*
  store i32 0, i32* %7, align 4, !tbaa !0
  %x = getelementptr inbounds i8* %call, i64 8
  %8 = bitcast i8* %x to i32*
  store i32 0, i32* %8, align 4, !tbaa !0
  %cc = getelementptr inbounds i8* %call, i64 12
  %9 = bitcast i8* %cc to i32*
  store i32 0, i32* %9, align 4, !tbaa !0
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 0
  %10 = load i32* %startcodeprefix_len, align 4, !tbaa !0
  %cmp15 = icmp eq i32 %10, 4
  %conv16 = zext i1 %cmp15 to i32
  %m = getelementptr inbounds i8* %call, i64 16
  %11 = bitcast i8* %m to i32*
  store i32 %conv16, i32* %11, align 4, !tbaa !0
  %pt = getelementptr inbounds i8* %call, i64 20
  %12 = bitcast i8* %pt to i32*
  store i32 105, i32* %12, align 4, !tbaa !0
  %13 = load i32* @CurrentRTPSequenceNumber, align 4, !tbaa !0
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @CurrentRTPSequenceNumber, align 4, !tbaa !0
  %seq = getelementptr inbounds i8* %call, i64 24
  %14 = bitcast i8* %seq to i32*
  store i32 %13, i32* %14, align 4, !tbaa !0
  %15 = load i32* @CurrentRTPTimestamp, align 4, !tbaa !0
  %timestamp = getelementptr inbounds i8* %call, i64 28
  %16 = bitcast i8* %timestamp to i32*
  store i32 %15, i32* %16, align 4, !tbaa !0
  %ssrc = getelementptr inbounds i8* %call, i64 32
  %17 = bitcast i8* %ssrc to i32*
  store i32 305419896, i32* %17, align 4, !tbaa !0
  %len = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 1
  %18 = load i32* %len, align 4, !tbaa !0
  %paylen = getelementptr inbounds i8* %call, i64 48
  %19 = bitcast i8* %paylen to i32*
  store i32 %18, i32* %19, align 4, !tbaa !0
  %20 = load i8** %buf, align 8, !tbaa !3
  %conv20 = zext i32 %18 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call9, i8* %20, i64 %conv20, i32 1, i1 false)
  %call21 = tail call i32 @ComposeRTPPacket(%struct.RTPpacket_t* %4) #6
  %21 = load %struct._IO_FILE** @f, align 8, !tbaa !3
  %call27 = tail call i32 @WriteRTPPacket(%struct.RTPpacket_t* %4, %struct._IO_FILE* %21) #6
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end13
  %packlen = getelementptr inbounds i8* %call, i64 64
  %22 = bitcast i8* %packlen to i32*
  %23 = load i32* %22, align 4, !tbaa !0
  %call31 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 %23) #5
  tail call void @exit(i32 -1) #7
  unreachable

if.end32:                                         ; preds = %if.end13
  %24 = load i8** %5, align 8, !tbaa !3
  tail call void @free(i8* %24) #5
  %25 = load i8** %6, align 8, !tbaa !3
  tail call void @free(i8* %25) #5
  tail call void @free(i8* %call) #5
  %26 = load i32* %len, align 4, !tbaa !0
  %mul = shl i32 %26, 3
  ret i32 %mul
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @RTPUpdateTimestamp(i32 %tr) #0 {
entry:
  %0 = load i32* @RTPUpdateTimestamp.oldtr, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub nsw i32 %tr, %0
  %cmp1 = icmp slt i32 %sub, -10
  %add = add nsw i32 %sub, 256
  %add.sub = select i1 %cmp1, i32 %add, i32 %sub
  %mul = mul nsw i32 %add.sub, 1000
  %1 = load i32* @CurrentRTPTimestamp, align 4, !tbaa !0
  %add4 = add nsw i32 %1, %mul
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge8 = phi i32 [ %add4, %if.end ], [ 0, %entry ]
  %storemerge = phi i32 [ %tr, %if.end ], [ 0, %entry ]
  store i32 %storemerge8, i32* @CurrentRTPTimestamp, align 4, !tbaa !0
  store i32 %storemerge, i32* @RTPUpdateTimestamp.oldtr, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @OpenRTPFile(i8* %Filename) #0 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %Filename, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call, %struct._IO_FILE** @f, align 8, !tbaa !3
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), i8* %Filename) #5
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @CloseRTPFile() #0 {
entry:
  %0 = load %struct._IO_FILE** @f, align 8, !tbaa !3
  %call = tail call i32 @fclose(%struct._IO_FILE* %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
