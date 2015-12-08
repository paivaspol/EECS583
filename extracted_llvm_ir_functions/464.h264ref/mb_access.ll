; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c'
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
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@img = external global %struct.ImageParameters*
@.str = private unnamed_addr constant [40 x i8] c"getNeighbour: invalid macroblock number\00", align 1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @mb_is_available(i32 %mbAddr, i32 %currMbAddr) #0 {
entry:
  %cmp = icmp slt i32 %mbAddr, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 110
  %1 = load i32* %PicSizeInMbs, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %1, %mbAddr
  br i1 %cmp1, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %DeblockCall = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 143
  %2 = load i32* %DeblockCall, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %idxprom = sext i32 %mbAddr to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %slice_nr = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 1
  %4 = load i32* %slice_nr, align 4, !tbaa !3
  %idxprom3 = sext i32 %currMbAddr to i64
  %slice_nr6 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom3, i32 1
  %5 = load i32* %slice_nr6, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %4, %5
  br i1 %cmp7, label %if.end10, label %return

if.end10:                                         ; preds = %if.then2, %if.end
  br label %return

return:                                           ; preds = %if.then2, %entry, %lor.lhs.false, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @CheckAvailabilityOfNeighbors() #1 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_available_up = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 6
  %mb_available_left = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 7
  %3 = bitcast %struct.macroblock** %mb_available_up to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false)
  %4 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 90
  %5 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %div = sdiv i32 %1, 2
  %sub = shl i32 %div, 1
  %mul = add i32 %sub, -2
  %mbAddrA = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 23
  store i32 %mul, i32* %mbAddrA, align 4, !tbaa !3
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 106
  %6 = load i32* %PicWidthInMbs, align 4, !tbaa !3
  %sub2 = sub i32 %div, %6
  %mul3 = shl i32 %sub2, 1
  %mbAddrB = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 24
  store i32 %mul3, i32* %mbAddrB, align 4, !tbaa !3
  %7 = load i32* %PicWidthInMbs, align 4, !tbaa !3
  %sub6 = sub i32 %div, %7
  %add = shl i32 %sub6, 1
  %mul7 = add i32 %add, 2
  %mbAddrC = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 25
  store i32 %mul7, i32* %mbAddrC, align 4, !tbaa !3
  %8 = load i32* %PicWidthInMbs, align 4, !tbaa !3
  %sub10 = sub i32 %div, %8
  %sub11 = shl i32 %sub10, 1
  %mul12 = add i32 %sub11, -2
  %mbAddrD = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 26
  store i32 %mul12, i32* %mbAddrD, align 4, !tbaa !3
  %call = tail call i32 @mb_is_available(i32 %mul, i32 %1) #4
  %tobool14 = icmp eq i32 %call, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %9 = load i32* %PicWidthInMbs, align 4, !tbaa !3
  %rem = urem i32 %div, %9
  %cmp = icmp ne i32 %rem, 0
  br label %land.end

land.end:                                         ; preds = %if.then, %land.rhs
  %10 = phi i1 [ false, %if.then ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  %mbAvailA = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 27
  store i32 %land.ext, i32* %mbAvailA, align 4, !tbaa !3
  %call18 = tail call i32 @mb_is_available(i32 %mul3, i32 %1) #4
  %mbAvailB = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 28
  store i32 %call18, i32* %mbAvailB, align 4, !tbaa !3
  %call20 = tail call i32 @mb_is_available(i32 %mul7, i32 %1) #4
  %tobool21 = icmp eq i32 %call20, 0
  br i1 %tobool21, label %land.end28, label %land.rhs22

land.rhs22:                                       ; preds = %land.end
  %add24 = add nsw i32 %div, 1
  %11 = load i32* %PicWidthInMbs, align 4, !tbaa !3
  %rem26 = urem i32 %add24, %11
  %cmp27 = icmp ne i32 %rem26, 0
  br label %land.end28

land.end28:                                       ; preds = %land.end, %land.rhs22
  %12 = phi i1 [ false, %land.end ], [ %cmp27, %land.rhs22 ]
  %land.ext29 = zext i1 %12 to i32
  %mbAvailC = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 29
  store i32 %land.ext29, i32* %mbAvailC, align 4, !tbaa !3
  %call31 = tail call i32 @mb_is_available(i32 %mul12, i32 %1) #4
  %tobool32 = icmp eq i32 %call31, 0
  br i1 %tobool32, label %land.end38, label %land.rhs33

land.rhs33:                                       ; preds = %land.end28
  %13 = load i32* %PicWidthInMbs, align 4, !tbaa !3
  %rem36 = urem i32 %div, %13
  %cmp37 = icmp ne i32 %rem36, 0
  br label %land.end38

land.end38:                                       ; preds = %land.end28, %land.rhs33
  %14 = phi i1 [ false, %land.end28 ], [ %cmp37, %land.rhs33 ]
  %land.ext39 = zext i1 %14 to i32
  %mbAvailD = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 30
  store i32 %land.ext39, i32* %mbAvailD, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %entry
  %sub40 = add i32 %1, -1
  %mbAddrA41 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 23
  store i32 %sub40, i32* %mbAddrA41, align 4, !tbaa !3
  %PicWidthInMbs42 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 106
  %15 = load i32* %PicWidthInMbs42, align 4, !tbaa !3
  %sub43 = sub i32 %1, %15
  %mbAddrB44 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 24
  store i32 %sub43, i32* %mbAddrB44, align 4, !tbaa !3
  %16 = load i32* %PicWidthInMbs42, align 4, !tbaa !3
  %sub46 = add i32 %1, 1
  %add47 = sub i32 %sub46, %16
  %mbAddrC48 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 25
  store i32 %add47, i32* %mbAddrC48, align 4, !tbaa !3
  %17 = load i32* %PicWidthInMbs42, align 4, !tbaa !3
  %sub51 = sub i32 %sub40, %17
  %mbAddrD52 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 26
  store i32 %sub51, i32* %mbAddrD52, align 4, !tbaa !3
  %call54 = tail call i32 @mb_is_available(i32 %sub40, i32 %1) #4
  %tobool55 = icmp eq i32 %call54, 0
  br i1 %tobool55, label %land.end60, label %land.rhs56

land.rhs56:                                       ; preds = %if.else
  %18 = load i32* %PicWidthInMbs42, align 4, !tbaa !3
  %rem58 = urem i32 %1, %18
  %cmp59 = icmp ne i32 %rem58, 0
  br label %land.end60

land.end60:                                       ; preds = %if.else, %land.rhs56
  %19 = phi i1 [ false, %if.else ], [ %cmp59, %land.rhs56 ]
  %land.ext61 = zext i1 %19 to i32
  %mbAvailA62 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 27
  store i32 %land.ext61, i32* %mbAvailA62, align 4, !tbaa !3
  %call64 = tail call i32 @mb_is_available(i32 %sub43, i32 %1) #4
  %mbAvailB65 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 28
  store i32 %call64, i32* %mbAvailB65, align 4, !tbaa !3
  %call67 = tail call i32 @mb_is_available(i32 %add47, i32 %1) #4
  %tobool68 = icmp eq i32 %call67, 0
  br i1 %tobool68, label %land.end74, label %land.rhs69

land.rhs69:                                       ; preds = %land.end60
  %20 = load i32* %PicWidthInMbs42, align 4, !tbaa !3
  %rem72 = urem i32 %sub46, %20
  %cmp73 = icmp ne i32 %rem72, 0
  br label %land.end74

land.end74:                                       ; preds = %land.end60, %land.rhs69
  %21 = phi i1 [ false, %land.end60 ], [ %cmp73, %land.rhs69 ]
  %land.ext75 = zext i1 %21 to i32
  %mbAvailC76 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 29
  store i32 %land.ext75, i32* %mbAvailC76, align 4, !tbaa !3
  %call78 = tail call i32 @mb_is_available(i32 %sub51, i32 %1) #4
  %tobool79 = icmp eq i32 %call78, 0
  br i1 %tobool79, label %land.end84, label %land.rhs80

land.rhs80:                                       ; preds = %land.end74
  %22 = load i32* %PicWidthInMbs42, align 4, !tbaa !3
  %rem82 = urem i32 %1, %22
  %cmp83 = icmp ne i32 %rem82, 0
  br label %land.end84

land.end84:                                       ; preds = %land.end74, %land.rhs80
  %23 = phi i1 [ false, %land.end74 ], [ %cmp83, %land.rhs80 ]
  %land.ext85 = zext i1 %23 to i32
  %mbAvailD86 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 30
  store i32 %land.ext85, i32* %mbAvailD86, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %land.end84, %land.end38
  %24 = phi i32 [ %sub40, %land.end84 ], [ %mul, %land.end38 ]
  %25 = phi i32 [ %sub43, %land.end84 ], [ %mul3, %land.end38 ]
  %26 = phi i32 [ %call64, %land.end84 ], [ %call18, %land.end38 ]
  %27 = phi i32 [ %land.ext61, %land.end84 ], [ %land.ext, %land.end38 ]
  %tobool88 = icmp eq i32 %27, 0
  br i1 %tobool88, label %if.end95, label %if.then89

if.then89:                                        ; preds = %if.end
  %idxprom91 = sext i32 %24 to i64
  %mb_data92 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 51
  %28 = load %struct.macroblock** %mb_data92, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds %struct.macroblock* %28, i64 %idxprom91
  store %struct.macroblock* %arrayidx93, %struct.macroblock** %mb_available_left, align 8, !tbaa !0
  br label %if.end95

if.end95:                                         ; preds = %if.end, %if.then89
  %tobool97 = icmp eq i32 %26, 0
  br i1 %tobool97, label %if.end104, label %if.then98

if.then98:                                        ; preds = %if.end95
  %idxprom100 = sext i32 %25 to i64
  %29 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data101 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 51
  %30 = load %struct.macroblock** %mb_data101, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds %struct.macroblock* %30, i64 %idxprom100
  store %struct.macroblock* %arrayidx102, %struct.macroblock** %mb_available_up, align 8, !tbaa !0
  br label %if.end104

if.end104:                                        ; preds = %if.end95, %if.then98
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @get_mb_block_pos(i32 %mb_addr, i32* nocapture %x, i32* nocapture %y) #1 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %div = sdiv i32 %mb_addr, 2
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 106
  %2 = load i32* %PicWidthInMbs, align 4, !tbaa !3
  %rem = urem i32 %div, %2
  store i32 %rem, i32* %x, align 4, !tbaa !3
  %3 = load i32* %PicWidthInMbs, align 4, !tbaa !3
  %div3 = udiv i32 %div, %3
  %mul = shl i32 %div3, 1
  %rem4 = srem i32 %mb_addr, 2
  %add = add i32 %mul, %rem4
  br label %if.end

if.else:                                          ; preds = %entry
  %PicWidthInMbs5 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 106
  %4 = load i32* %PicWidthInMbs5, align 4, !tbaa !3
  %rem6 = urem i32 %mb_addr, %4
  store i32 %rem6, i32* %x, align 4, !tbaa !3
  %5 = load i32* %PicWidthInMbs5, align 4, !tbaa !3
  %div8 = udiv i32 %mb_addr, %5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %div8, %if.else ], [ %add, %if.then ]
  store i32 %storemerge, i32* %y, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @get_mb_pos(i32 %mb_addr, i32* nocapture %x, i32* nocapture %y) #1 {
entry:
  tail call void @get_mb_block_pos(i32 %mb_addr, i32* %x, i32* %y) #4
  %0 = load i32* %x, align 4, !tbaa !3
  %mul = shl nsw i32 %0, 4
  store i32 %mul, i32* %x, align 4, !tbaa !3
  %1 = load i32* %y, align 4, !tbaa !3
  %mul1 = shl nsw i32 %1, 4
  store i32 %mul1, i32* %y, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @getNonAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* nocapture %pix) #1 {
entry:
  %idxprom = zext i32 %curr_mb_nr to i64
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %1 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %tobool = icmp ne i32 %luma, 0
  br i1 %tobool, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %2 = load i32* %mb_cr_size_x, align 4, !tbaa !3
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162
  %3 = load i32* %mb_cr_size_y, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %maxW.0 = phi i32 [ %2, %if.else ], [ 16, %entry ]
  %maxH.0 = phi i32 [ %3, %if.else ], [ 16, %entry ]
  %cmp1 = icmp slt i32 %yN, 0
  %4 = and i32 %yN, %xN
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  %mbAddrD = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 26
  %6 = load i32* %mbAddrD, align 4, !tbaa !3
  %mb_addr = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %6, i32* %mb_addr, align 4, !tbaa !3
  %mbAvailD = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 30
  %7 = load i32* %mbAvailD, align 4, !tbaa !3
  %available = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  store i32 %7, i32* %available, align 4, !tbaa !3
  br label %if.end45

if.else3:                                         ; preds = %if.end
  %cmp = icmp slt i32 %xN, 0
  %cmp6 = icmp sgt i32 %yN, -1
  %or.cond132 = and i1 %cmp, %cmp6
  %cmp8 = icmp sgt i32 %maxH.0, %yN
  %or.cond133 = and i1 %or.cond132, %cmp8
  br i1 %or.cond133, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else3
  %mbAddrA = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 23
  %8 = load i32* %mbAddrA, align 4, !tbaa !3
  %mb_addr10 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %8, i32* %mb_addr10, align 4, !tbaa !3
  %mbAvailA = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 27
  %9 = load i32* %mbAvailA, align 4, !tbaa !3
  %available11 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  store i32 %9, i32* %available11, align 4, !tbaa !3
  br label %if.end45

if.else12:                                        ; preds = %if.else3
  %cmp13 = icmp sgt i32 %xN, -1
  %cmp15 = icmp sgt i32 %maxW.0, %xN
  %or.cond134 = and i1 %cmp13, %cmp15
  %or.cond135 = and i1 %or.cond134, %cmp1
  br i1 %or.cond135, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else12
  %mbAddrB = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 24
  %10 = load i32* %mbAddrB, align 4, !tbaa !3
  %mb_addr19 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %10, i32* %mb_addr19, align 4, !tbaa !3
  %mbAvailB = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 28
  %11 = load i32* %mbAvailB, align 4, !tbaa !3
  %available20 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  store i32 %11, i32* %available20, align 4, !tbaa !3
  br label %if.end45

if.else21:                                        ; preds = %if.else12
  %or.cond137 = and i1 %or.cond134, %cmp6
  %or.cond138 = and i1 %or.cond137, %cmp8
  br i1 %or.cond138, label %if.end45.thread141, label %if.else32

if.end45.thread141:                               ; preds = %if.else21
  %mb_addr30 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %curr_mb_nr, i32* %mb_addr30, align 4, !tbaa !3
  %available31 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  store i32 1, i32* %available31, align 4, !tbaa !3
  br label %if.then49

if.else32:                                        ; preds = %if.else21
  %cmp33 = icmp sle i32 %maxW.0, %xN
  %or.cond139 = and i1 %cmp33, %cmp1
  br i1 %or.cond139, label %if.then36, label %if.end45.thread

if.then36:                                        ; preds = %if.else32
  %mbAddrC = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 25
  %12 = load i32* %mbAddrC, align 4, !tbaa !3
  %mb_addr37 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %12, i32* %mb_addr37, align 4, !tbaa !3
  %mbAvailC = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 29
  %13 = load i32* %mbAvailC, align 4, !tbaa !3
  %available38 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  store i32 %13, i32* %available38, align 4, !tbaa !3
  br label %if.end45

if.end45.thread:                                  ; preds = %if.else32
  %available40 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  store i32 0, i32* %available40, align 4, !tbaa !3
  br label %lor.lhs.false

if.end45:                                         ; preds = %if.then9, %if.then36, %if.then18, %if.then2
  %14 = phi i32 [ %9, %if.then9 ], [ %13, %if.then36 ], [ %11, %if.then18 ], [ %7, %if.then2 ]
  %tobool47 = icmp eq i32 %14, 0
  br i1 %tobool47, label %lor.lhs.false, label %if.then49

lor.lhs.false:                                    ; preds = %if.end45.thread, %if.end45
  %DeblockCall = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 143
  %15 = load i32* %DeblockCall, align 4, !tbaa !3
  %tobool48 = icmp eq i32 %15, 0
  br i1 %tobool48, label %if.end76, label %if.then49

if.then49:                                        ; preds = %lor.lhs.false, %if.end45, %if.end45.thread141
  %add = add nsw i32 %maxW.0, %xN
  %rem = srem i32 %add, %maxW.0
  %x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2
  store i32 %rem, i32* %x, align 4, !tbaa !3
  %add50 = add nsw i32 %maxH.0, %yN
  %rem51 = srem i32 %add50, %maxH.0
  %y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3
  store i32 %rem51, i32* %y, align 4, !tbaa !3
  %mb_addr52 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %16 = load i32* %mb_addr52, align 4, !tbaa !3
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 4
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 5
  tail call void @get_mb_block_pos(i32 %16, i32* %pos_x, i32* %pos_y) #5
  %17 = load i32* %pos_x, align 4, !tbaa !3
  %mul.i = shl nsw i32 %17, 4
  store i32 %mul.i, i32* %pos_x, align 4, !tbaa !3
  %18 = load i32* %pos_y, align 4, !tbaa !3
  %mul1.i = shl nsw i32 %18, 4
  store i32 %mul1.i, i32* %pos_y, align 4, !tbaa !3
  br i1 %tobool, label %if.then54, label %if.else61

if.then54:                                        ; preds = %if.then49
  %19 = load i32* %x, align 4, !tbaa !3
  %add57 = add nsw i32 %mul.i, %19
  store i32 %add57, i32* %pos_x, align 4, !tbaa !3
  %20 = load i32* %y, align 4, !tbaa !3
  %add60 = add nsw i32 %mul1.i, %20
  store i32 %add60, i32* %pos_y, align 4, !tbaa !3
  br label %if.end76

if.else61:                                        ; preds = %if.then49
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_cr_size_x63 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 161
  %22 = load i32* %mb_cr_size_x63, align 4, !tbaa !3
  %div = sdiv i32 16, %22
  %div64 = sdiv i32 %mul.i, %div
  %23 = load i32* %x, align 4, !tbaa !3
  %add66 = add nsw i32 %23, %div64
  store i32 %add66, i32* %pos_x, align 4, !tbaa !3
  %mb_cr_size_y69 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 162
  %24 = load i32* %mb_cr_size_y69, align 4, !tbaa !3
  %div70 = sdiv i32 16, %24
  %div71 = sdiv i32 %mul1.i, %div70
  %25 = load i32* %y, align 4, !tbaa !3
  %add73 = add nsw i32 %25, %div71
  store i32 %add73, i32* %pos_y, align 4, !tbaa !3
  br label %if.end76

if.end76:                                         ; preds = %lor.lhs.false, %if.then54, %if.else61
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @getAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* nocapture %pix) #1 {
entry:
  %idxprom = zext i32 %curr_mb_nr to i64
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %1 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %tobool = icmp ne i32 %luma, 0
  br i1 %tobool, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %2 = load i32* %mb_cr_size_x, align 4, !tbaa !3
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162
  %3 = load i32* %mb_cr_size_y, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %maxW.0 = phi i32 [ %2, %if.else ], [ 16, %entry ]
  %maxH.0 = phi i32 [ %3, %if.else ], [ 16, %entry ]
  %available = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  store i32 0, i32* %available, align 4, !tbaa !3
  %cmp = icmp sgt i32 %maxH.0, %yN
  br i1 %cmp, label %if.end2, label %if.end376

if.end2:                                          ; preds = %if.end
  %cmp4 = icmp sle i32 %maxW.0, %xN
  %cmp5 = icmp sgt i32 %yN, -1
  %or.cond = and i1 %cmp4, %cmp5
  br i1 %or.cond, label %if.end376, label %if.end9

if.end9:                                          ; preds = %if.end2
  %cmp10 = icmp slt i32 %xN, 0
  br i1 %cmp10, label %if.then11, label %if.else203

if.then11:                                        ; preds = %if.end9
  %cmp12 = icmp slt i32 %yN, 0
  %mb_field = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !3
  %tobool14 = icmp eq i32 %4, 0
  %rem39 = and i32 %curr_mb_nr, 1
  %cmp40 = icmp eq i32 %rem39, 0
  br i1 %cmp12, label %if.then13, label %if.then73

if.then13:                                        ; preds = %if.then11
  br i1 %tobool14, label %if.then15, label %if.else38

if.then15:                                        ; preds = %if.then13
  br i1 %cmp40, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.then15
  %mbAddrD = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 26
  %5 = load i32* %mbAddrD, align 4, !tbaa !3
  %add = add nsw i32 %5, 1
  %mb_addr = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %add, i32* %mb_addr, align 4, !tbaa !3
  %mbAvailD = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 30
  %6 = load i32* %mbAvailD, align 4, !tbaa !3
  store i32 %6, i32* %available, align 4, !tbaa !3
  br label %if.end341

if.else19:                                        ; preds = %if.then15
  %mbAddrA = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 23
  %7 = load i32* %mbAddrA, align 4, !tbaa !3
  %mb_addr20 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %7, i32* %mb_addr20, align 4, !tbaa !3
  %mbAvailA = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 27
  %8 = load i32* %mbAvailA, align 4, !tbaa !3
  store i32 %8, i32* %available, align 4, !tbaa !3
  %9 = load i32* %mbAvailA, align 4, !tbaa !3
  %tobool23 = icmp eq i32 %9, 0
  br i1 %tobool23, label %if.end341, label %if.then24

if.then24:                                        ; preds = %if.else19
  %10 = load i32* %mbAddrA, align 4, !tbaa !3
  %idxprom26 = sext i32 %10 to i64
  %mb_field29 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom26, i32 22
  %11 = load i32* %mb_field29, align 4, !tbaa !3
  %tobool30 = icmp eq i32 %11, 0
  br i1 %tobool30, label %if.end341, label %if.else32

if.else32:                                        ; preds = %if.then24
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %mb_addr20, align 4, !tbaa !3
  %add34 = add nsw i32 %maxH.0, %yN
  %shr = ashr i32 %add34, 1
  br label %if.end341

if.else38:                                        ; preds = %if.then13
  %mbAddrD42 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 26
  %12 = load i32* %mbAddrD42, align 4, !tbaa !3
  br i1 %cmp40, label %if.then41, label %if.else61

if.then41:                                        ; preds = %if.else38
  %mb_addr43 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %12, i32* %mb_addr43, align 4, !tbaa !3
  %mbAvailD44 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 30
  %13 = load i32* %mbAvailD44, align 4, !tbaa !3
  store i32 %13, i32* %available, align 4, !tbaa !3
  %14 = load i32* %mbAvailD44, align 4, !tbaa !3
  %tobool47 = icmp eq i32 %14, 0
  br i1 %tobool47, label %if.end341, label %if.then48

if.then48:                                        ; preds = %if.then41
  %15 = load i32* %mbAddrD42, align 4, !tbaa !3
  %idxprom50 = sext i32 %15 to i64
  %mb_field53 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom50, i32 22
  %16 = load i32* %mb_field53, align 4, !tbaa !3
  %tobool54 = icmp eq i32 %16, 0
  br i1 %tobool54, label %if.then55, label %if.end341

if.then55:                                        ; preds = %if.then48
  %inc57 = add nsw i32 %12, 1
  store i32 %inc57, i32* %mb_addr43, align 4, !tbaa !3
  %mul = shl nsw i32 %yN, 1
  br label %if.end341

if.else61:                                        ; preds = %if.else38
  %add63 = add nsw i32 %12, 1
  %mb_addr64 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %add63, i32* %mb_addr64, align 4, !tbaa !3
  %mbAvailD65 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 30
  %17 = load i32* %mbAvailD65, align 4, !tbaa !3
  store i32 %17, i32* %available, align 4, !tbaa !3
  br label %if.end341

if.then73:                                        ; preds = %if.then11
  %mbAddrA142 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 23
  %18 = load i32* %mbAddrA142, align 4, !tbaa !3
  %mb_addr143 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %18, i32* %mb_addr143, align 4, !tbaa !3
  %mbAvailA144 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 27
  %19 = load i32* %mbAvailA144, align 4, !tbaa !3
  store i32 %19, i32* %available, align 4, !tbaa !3
  %20 = load i32* %mbAvailA144, align 4, !tbaa !3
  %tobool147 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.then76, label %if.else138

if.then76:                                        ; preds = %if.then73
  br i1 %cmp40, label %if.then79, label %if.else106

if.then79:                                        ; preds = %if.then76
  br i1 %tobool147, label %if.then86, label %if.end341

if.then86:                                        ; preds = %if.then79
  %21 = load i32* %mbAddrA142, align 4, !tbaa !3
  %idxprom88 = sext i32 %21 to i64
  %mb_field91 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom88, i32 22
  %22 = load i32* %mb_field91, align 4, !tbaa !3
  %tobool92 = icmp eq i32 %22, 0
  br i1 %tobool92, label %if.end341, label %if.else94

if.else94:                                        ; preds = %if.then86
  %rem95536 = and i32 %yN, 1
  %cmp96 = icmp eq i32 %rem95536, 0
  br i1 %cmp96, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.else94
  %shr98 = ashr i32 %yN, 1
  br label %if.end341

if.else99:                                        ; preds = %if.else94
  %inc101 = add nsw i32 %18, 1
  store i32 %inc101, i32* %mb_addr143, align 4, !tbaa !3
  %shr102 = ashr i32 %yN, 1
  br label %if.end341

if.else106:                                       ; preds = %if.then76
  br i1 %tobool147, label %if.then113, label %if.end341

if.then113:                                       ; preds = %if.else106
  %23 = load i32* %mbAddrA142, align 4, !tbaa !3
  %idxprom115 = sext i32 %23 to i64
  %mb_field118 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom115, i32 22
  %24 = load i32* %mb_field118, align 4, !tbaa !3
  %tobool119 = icmp eq i32 %24, 0
  br i1 %tobool119, label %if.then120, label %if.else123

if.then120:                                       ; preds = %if.then113
  %inc122 = add nsw i32 %18, 1
  store i32 %inc122, i32* %mb_addr143, align 4, !tbaa !3
  br label %if.end341

if.else123:                                       ; preds = %if.then113
  %rem124535 = and i32 %yN, 1
  %cmp125 = icmp eq i32 %rem124535, 0
  br i1 %cmp125, label %if.then126, label %if.else129

if.then126:                                       ; preds = %if.else123
  %add127 = add nsw i32 %maxH.0, %yN
  %shr128 = ashr i32 %add127, 1
  br label %if.end341

if.else129:                                       ; preds = %if.else123
  %inc131 = add nsw i32 %18, 1
  store i32 %inc131, i32* %mb_addr143, align 4, !tbaa !3
  %add132 = add nsw i32 %maxH.0, %yN
  %shr133 = ashr i32 %add132, 1
  br label %if.end341

if.else138:                                       ; preds = %if.then73
  br i1 %cmp40, label %if.then141, label %if.else167

if.then141:                                       ; preds = %if.else138
  br i1 %tobool147, label %if.then148, label %if.end341

if.then148:                                       ; preds = %if.then141
  %25 = load i32* %mbAddrA142, align 4, !tbaa !3
  %idxprom150 = sext i32 %25 to i64
  %mb_field153 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom150, i32 22
  %26 = load i32* %mb_field153, align 4, !tbaa !3
  %tobool154 = icmp eq i32 %26, 0
  br i1 %tobool154, label %if.then155, label %if.end341

if.then155:                                       ; preds = %if.then148
  %div = sdiv i32 %maxH.0, 2
  %cmp156 = icmp sgt i32 %div, %yN
  br i1 %cmp156, label %if.then157, label %if.else158

if.then157:                                       ; preds = %if.then155
  %shl = shl i32 %yN, 1
  br label %if.end341

if.else158:                                       ; preds = %if.then155
  %inc160 = add nsw i32 %18, 1
  store i32 %inc160, i32* %mb_addr143, align 4, !tbaa !3
  %shl161 = shl i32 %yN, 1
  %sub162 = sub nsw i32 %shl161, %maxH.0
  br label %if.end341

if.else167:                                       ; preds = %if.else138
  br i1 %tobool147, label %if.then174, label %if.end341

if.then174:                                       ; preds = %if.else167
  %27 = load i32* %mbAddrA142, align 4, !tbaa !3
  %idxprom176 = sext i32 %27 to i64
  %mb_field179 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom176, i32 22
  %28 = load i32* %mb_field179, align 4, !tbaa !3
  %tobool180 = icmp eq i32 %28, 0
  br i1 %tobool180, label %if.then181, label %if.else194

if.then181:                                       ; preds = %if.then174
  %div182 = sdiv i32 %maxH.0, 2
  %cmp183 = icmp sgt i32 %div182, %yN
  br i1 %cmp183, label %if.then184, label %if.else187

if.then184:                                       ; preds = %if.then181
  %shl185 = shl i32 %yN, 1
  %add186538 = or i32 %shl185, 1
  br label %if.end341

if.else187:                                       ; preds = %if.then181
  %inc189 = add nsw i32 %18, 1
  store i32 %inc189, i32* %mb_addr143, align 4, !tbaa !3
  %shl190 = shl i32 %yN, 1
  %add191537 = or i32 %shl190, 1
  %sub192 = sub nsw i32 %add191537, %maxH.0
  br label %if.end341

if.else194:                                       ; preds = %if.then174
  %inc196 = add nsw i32 %18, 1
  store i32 %inc196, i32* %mb_addr143, align 4, !tbaa !3
  br label %if.end341

if.else203:                                       ; preds = %if.end9
  %cmp206 = icmp sgt i32 %maxW.0, %xN
  %cmp208 = icmp slt i32 %yN, 0
  br i1 %cmp206, label %if.then207, label %if.else292

if.then207:                                       ; preds = %if.else203
  br i1 %cmp208, label %if.then209, label %if.else271

if.then209:                                       ; preds = %if.then207
  %mb_field210 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 22
  %29 = load i32* %mb_field210, align 4, !tbaa !3
  %tobool211 = icmp eq i32 %29, 0
  %rem240 = and i32 %curr_mb_nr, 1
  %cmp241 = icmp eq i32 %rem240, 0
  br i1 %tobool211, label %if.then212, label %if.else239

if.then212:                                       ; preds = %if.then209
  br i1 %cmp241, label %if.then215, label %if.else234

if.then215:                                       ; preds = %if.then212
  %mbAddrB = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 24
  %30 = load i32* %mbAddrB, align 4, !tbaa !3
  %mb_addr216 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %30, i32* %mb_addr216, align 4, !tbaa !3
  %mbAvailB = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 28
  %31 = load i32* %mbAvailB, align 4, !tbaa !3
  %tobool217 = icmp eq i32 %31, 0
  br i1 %tobool217, label %if.end231, label %if.then218

if.then218:                                       ; preds = %if.then215
  %DeblockCall = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 143
  %32 = load i32* %DeblockCall, align 4, !tbaa !3
  %cmp219 = icmp eq i32 %32, 1
  br i1 %cmp219, label %land.lhs.true220, label %if.then227

land.lhs.true220:                                 ; preds = %if.then218
  %33 = load i32* %mbAddrB, align 4, !tbaa !3
  %idxprom222 = sext i32 %33 to i64
  %mb_field225 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom222, i32 22
  %34 = load i32* %mb_field225, align 4, !tbaa !3
  %tobool226 = icmp eq i32 %34, 0
  br i1 %tobool226, label %if.then227, label %if.end231

if.then227:                                       ; preds = %land.lhs.true220, %if.then218
  %add229 = add nsw i32 %30, 1
  store i32 %add229, i32* %mb_addr216, align 4, !tbaa !3
  %.pre = load i32* %mbAvailB, align 4, !tbaa !3
  br label %if.end231

if.end231:                                        ; preds = %land.lhs.true220, %if.then215, %if.then227
  %35 = phi i32 [ %31, %land.lhs.true220 ], [ 0, %if.then215 ], [ %.pre, %if.then227 ]
  store i32 %35, i32* %available, align 4, !tbaa !3
  br label %if.end341

if.else234:                                       ; preds = %if.then212
  %sub235 = add i32 %curr_mb_nr, -1
  %mb_addr236 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %sub235, i32* %mb_addr236, align 4, !tbaa !3
  store i32 1, i32* %available, align 4, !tbaa !3
  br label %if.then346

if.else239:                                       ; preds = %if.then209
  %mbAddrB243 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 24
  %36 = load i32* %mbAddrB243, align 4, !tbaa !3
  br i1 %cmp241, label %if.then242, label %if.else263

if.then242:                                       ; preds = %if.else239
  %mb_addr244 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %36, i32* %mb_addr244, align 4, !tbaa !3
  %mbAvailB245 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 28
  %37 = load i32* %mbAvailB245, align 4, !tbaa !3
  store i32 %37, i32* %available, align 4, !tbaa !3
  %38 = load i32* %mbAvailB245, align 4, !tbaa !3
  %tobool248 = icmp eq i32 %38, 0
  br i1 %tobool248, label %if.end341, label %if.then249

if.then249:                                       ; preds = %if.then242
  %39 = load i32* %mbAddrB243, align 4, !tbaa !3
  %idxprom251 = sext i32 %39 to i64
  %mb_field254 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom251, i32 22
  %40 = load i32* %mb_field254, align 4, !tbaa !3
  %tobool255 = icmp eq i32 %40, 0
  br i1 %tobool255, label %if.then256, label %if.end341

if.then256:                                       ; preds = %if.then249
  %inc258 = add nsw i32 %36, 1
  store i32 %inc258, i32* %mb_addr244, align 4, !tbaa !3
  %mul259 = shl nsw i32 %yN, 1
  br label %if.end341

if.else263:                                       ; preds = %if.else239
  %add265 = add nsw i32 %36, 1
  %mb_addr266 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %add265, i32* %mb_addr266, align 4, !tbaa !3
  %mbAvailB267 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 28
  %41 = load i32* %mbAvailB267, align 4, !tbaa !3
  store i32 %41, i32* %available, align 4, !tbaa !3
  br label %if.end341

if.else271:                                       ; preds = %if.then207
  %cmp272 = icmp eq i32 %yN, 0
  br i1 %cmp272, label %land.lhs.true273, label %if.then286

land.lhs.true273:                                 ; preds = %if.else271
  %DeblockCall274 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 143
  %42 = load i32* %DeblockCall274, align 4, !tbaa !3
  %cmp275 = icmp eq i32 %42, 2
  br i1 %cmp275, label %if.then276, label %if.then286

if.then276:                                       ; preds = %land.lhs.true273
  %mbAddrB277 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 24
  %43 = load i32* %mbAddrB277, align 4, !tbaa !3
  %add278 = add nsw i32 %43, 1
  %mb_addr279 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %add278, i32* %mb_addr279, align 4, !tbaa !3
  store i32 1, i32* %available, align 4, !tbaa !3
  br label %if.then346

if.then286:                                       ; preds = %if.else271, %land.lhs.true273
  %mb_addr287 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %curr_mb_nr, i32* %mb_addr287, align 4, !tbaa !3
  store i32 1, i32* %available, align 4, !tbaa !3
  br label %if.then346

if.else292:                                       ; preds = %if.else203
  br i1 %cmp208, label %if.then294, label %lor.lhs.false

if.then294:                                       ; preds = %if.else292
  %mb_field295 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 22
  %44 = load i32* %mb_field295, align 4, !tbaa !3
  %tobool296 = icmp eq i32 %44, 0
  %rem308 = and i32 %curr_mb_nr, 1
  %cmp309 = icmp eq i32 %rem308, 0
  br i1 %tobool296, label %if.then297, label %if.else307

if.then297:                                       ; preds = %if.then294
  br i1 %cmp309, label %if.then300, label %if.end341.thread546

if.then300:                                       ; preds = %if.then297
  %mbAddrC = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 25
  %45 = load i32* %mbAddrC, align 4, !tbaa !3
  %add301 = add nsw i32 %45, 1
  %mb_addr302 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %add301, i32* %mb_addr302, align 4, !tbaa !3
  %mbAvailC = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 29
  %46 = load i32* %mbAvailC, align 4, !tbaa !3
  store i32 %46, i32* %available, align 4, !tbaa !3
  br label %if.end341

if.end341.thread546:                              ; preds = %if.then297
  store i32 0, i32* %available, align 4, !tbaa !3
  br label %lor.lhs.false

if.else307:                                       ; preds = %if.then294
  %mbAddrC311 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 25
  %47 = load i32* %mbAddrC311, align 4, !tbaa !3
  br i1 %cmp309, label %if.then310, label %if.else331

if.then310:                                       ; preds = %if.else307
  %mb_addr312 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %47, i32* %mb_addr312, align 4, !tbaa !3
  %mbAvailC313 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 29
  %48 = load i32* %mbAvailC313, align 4, !tbaa !3
  store i32 %48, i32* %available, align 4, !tbaa !3
  %49 = load i32* %mbAvailC313, align 4, !tbaa !3
  %tobool316 = icmp eq i32 %49, 0
  br i1 %tobool316, label %if.end341, label %if.then317

if.then317:                                       ; preds = %if.then310
  %50 = load i32* %mbAddrC311, align 4, !tbaa !3
  %idxprom319 = sext i32 %50 to i64
  %mb_field322 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom319, i32 22
  %51 = load i32* %mb_field322, align 4, !tbaa !3
  %tobool323 = icmp eq i32 %51, 0
  br i1 %tobool323, label %if.then324, label %if.end341

if.then324:                                       ; preds = %if.then317
  %inc326 = add nsw i32 %47, 1
  store i32 %inc326, i32* %mb_addr312, align 4, !tbaa !3
  %mul327 = shl nsw i32 %yN, 1
  br label %if.end341

if.else331:                                       ; preds = %if.else307
  %add333 = add nsw i32 %47, 1
  %mb_addr334 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  store i32 %add333, i32* %mb_addr334, align 4, !tbaa !3
  %mbAvailC335 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 29
  %52 = load i32* %mbAvailC335, align 4, !tbaa !3
  store i32 %52, i32* %available, align 4, !tbaa !3
  br label %if.end341

if.end341:                                        ; preds = %if.then317, %if.then249, %if.then148, %if.then86, %if.then48, %if.then24, %if.then256, %if.then324, %if.then55, %if.else32, %if.else106, %if.then126, %if.else129, %if.then120, %if.then79, %if.then97, %if.else99, %if.else167, %if.then184, %if.else187, %if.else194, %if.then141, %if.then157, %if.else158, %if.then41, %if.else19, %if.then242, %if.then310, %if.end231, %if.else263, %if.then300, %if.else331, %if.else61, %if.then17
  %53 = phi i32 [ %13, %if.then41 ], [ %8, %if.else19 ], [ %37, %if.then242 ], [ %48, %if.then310 ], [ %35, %if.end231 ], [ %41, %if.else263 ], [ %46, %if.then300 ], [ %52, %if.else331 ], [ %17, %if.else61 ], [ %6, %if.then17 ], [ %48, %if.then317 ], [ %37, %if.then249 ], [ %19, %if.then148 ], [ %19, %if.then86 ], [ %13, %if.then48 ], [ %8, %if.then24 ], [ %37, %if.then256 ], [ %48, %if.then324 ], [ %13, %if.then55 ], [ %8, %if.else32 ], [ %19, %if.else106 ], [ %19, %if.then126 ], [ %19, %if.else129 ], [ %19, %if.then120 ], [ %19, %if.then79 ], [ %19, %if.then97 ], [ %19, %if.else99 ], [ %19, %if.else167 ], [ %19, %if.then184 ], [ %19, %if.else187 ], [ %19, %if.else194 ], [ %19, %if.then141 ], [ %19, %if.then157 ], [ %19, %if.else158 ]
  %yM.0 = phi i32 [ -1, %if.then41 ], [ -1, %if.else19 ], [ -1, %if.then242 ], [ -1, %if.then310 ], [ %yN, %if.end231 ], [ %yN, %if.else263 ], [ %yN, %if.then300 ], [ %yN, %if.else331 ], [ %yN, %if.else61 ], [ %yN, %if.then17 ], [ %yN, %if.then317 ], [ %yN, %if.then249 ], [ %yN, %if.then148 ], [ %yN, %if.then86 ], [ %yN, %if.then48 ], [ %yN, %if.then24 ], [ %mul259, %if.then256 ], [ %mul327, %if.then324 ], [ %mul, %if.then55 ], [ %shr, %if.else32 ], [ -1, %if.else106 ], [ %shr128, %if.then126 ], [ %shr133, %if.else129 ], [ %yN, %if.then120 ], [ -1, %if.then79 ], [ %shr98, %if.then97 ], [ %shr102, %if.else99 ], [ -1, %if.else167 ], [ %add186538, %if.then184 ], [ %sub192, %if.else187 ], [ %yN, %if.else194 ], [ -1, %if.then141 ], [ %shl, %if.then157 ], [ %sub162, %if.else158 ]
  %tobool343 = icmp eq i32 %53, 0
  br i1 %tobool343, label %lor.lhs.false, label %if.then346

lor.lhs.false:                                    ; preds = %if.else292, %if.end341, %if.end341.thread546
  %yM.0548 = phi i32 [ -1, %if.end341.thread546 ], [ %yM.0, %if.end341 ], [ -1, %if.else292 ]
  %DeblockCall344 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 143
  %54 = load i32* %DeblockCall344, align 4, !tbaa !3
  %tobool345 = icmp eq i32 %54, 0
  br i1 %tobool345, label %if.end376, label %if.then346

if.then346:                                       ; preds = %lor.lhs.false, %if.end341, %if.else234, %if.then286, %if.then276
  %yM.0545 = phi i32 [ -1, %if.then276 ], [ %yN, %if.then286 ], [ %yN, %if.else234 ], [ %yM.0, %if.end341 ], [ %yM.0548, %lor.lhs.false ]
  %add347 = add nsw i32 %maxW.0, %xN
  %rem348 = srem i32 %add347, %maxW.0
  %x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2
  store i32 %rem348, i32* %x, align 4, !tbaa !3
  %add349 = add nsw i32 %yM.0545, %maxH.0
  %rem350 = srem i32 %add349, %maxH.0
  %y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3
  store i32 %rem350, i32* %y, align 4, !tbaa !3
  %mb_addr351 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %55 = load i32* %mb_addr351, align 4, !tbaa !3
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 4
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 5
  tail call void @get_mb_block_pos(i32 %55, i32* %pos_x, i32* %pos_y) #5
  %56 = load i32* %pos_x, align 4, !tbaa !3
  %mul.i = shl nsw i32 %56, 4
  store i32 %mul.i, i32* %pos_x, align 4, !tbaa !3
  %57 = load i32* %pos_y, align 4, !tbaa !3
  %mul1.i = shl nsw i32 %57, 4
  store i32 %mul1.i, i32* %pos_y, align 4, !tbaa !3
  br i1 %tobool, label %if.then353, label %if.else360

if.then353:                                       ; preds = %if.then346
  %58 = load i32* %x, align 4, !tbaa !3
  %add356 = add nsw i32 %mul.i, %58
  store i32 %add356, i32* %pos_x, align 4, !tbaa !3
  %59 = load i32* %y, align 4, !tbaa !3
  %add359 = add nsw i32 %mul1.i, %59
  store i32 %add359, i32* %pos_y, align 4, !tbaa !3
  br label %if.end376

if.else360:                                       ; preds = %if.then346
  %60 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_cr_size_x362 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 161
  %61 = load i32* %mb_cr_size_x362, align 4, !tbaa !3
  %div363 = sdiv i32 16, %61
  %div364 = sdiv i32 %mul.i, %div363
  %62 = load i32* %x, align 4, !tbaa !3
  %add366 = add nsw i32 %62, %div364
  store i32 %add366, i32* %pos_x, align 4, !tbaa !3
  %mb_cr_size_y369 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 162
  %63 = load i32* %mb_cr_size_y369, align 4, !tbaa !3
  %div370 = sdiv i32 16, %63
  %div371 = sdiv i32 %mul1.i, %div370
  %64 = load i32* %y, align 4, !tbaa !3
  %add373 = add nsw i32 %64, %div371
  store i32 %add373, i32* %pos_y, align 4, !tbaa !3
  br label %if.end376

if.end376:                                        ; preds = %if.end2, %lor.lhs.false, %if.end, %if.then353, %if.else360
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @getNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* nocapture %pix) #1 {
entry:
  %cmp = icmp slt i32 %curr_mb_nr, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([40 x i8]* @.str, i64 0, i64 0), i32 100) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @getAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* %pix) #4
  br label %if.end2

if.else:                                          ; preds = %if.end
  tail call void @getNonAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* %pix) #4
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  ret void
}

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @getLuma4x4Neighbour(i32 %curr_mb_nr, i32 %block_x, i32 %block_y, i32 %rel_x, i32 %rel_y, %struct.pix_pos* nocapture %pix) #1 {
entry:
  %mul = shl i32 %block_x, 2
  %add = add nsw i32 %mul, %rel_x
  %mul1 = shl i32 %block_y, 2
  %add2 = add nsw i32 %mul1, %rel_y
  tail call void @getNeighbour(i32 %curr_mb_nr, i32 %add, i32 %add2, i32 1, %struct.pix_pos* %pix) #4
  %available = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  %0 = load i32* %available, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %x3 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2
  %1 = load i32* %x3, align 4, !tbaa !3
  %div = sdiv i32 %1, 4
  store i32 %div, i32* %x3, align 4, !tbaa !3
  %y4 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3
  %2 = load i32* %y4, align 4, !tbaa !3
  %div5 = sdiv i32 %2, 4
  store i32 %div5, i32* %y4, align 4, !tbaa !3
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 4
  %3 = load i32* %pos_x, align 4, !tbaa !3
  %div6 = sdiv i32 %3, 4
  store i32 %div6, i32* %pos_x, align 4, !tbaa !3
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 5
  %4 = load i32* %pos_y, align 4, !tbaa !3
  %div7 = sdiv i32 %4, 4
  store i32 %div7, i32* %pos_y, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @getChroma4x4Neighbour(i32 %curr_mb_nr, i32 %block_x, i32 %block_y, i32 %rel_x, i32 %rel_y, %struct.pix_pos* nocapture %pix) #1 {
entry:
  %mul = shl i32 %block_x, 2
  %add = add nsw i32 %mul, %rel_x
  %mul1 = shl i32 %block_y, 2
  %add2 = add nsw i32 %mul1, %rel_y
  tail call void @getNeighbour(i32 %curr_mb_nr, i32 %add, i32 %add2, i32 0, %struct.pix_pos* %pix) #4
  %available = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  %0 = load i32* %available, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %x3 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2
  %1 = load i32* %x3, align 4, !tbaa !3
  %div = sdiv i32 %1, 4
  store i32 %div, i32* %x3, align 4, !tbaa !3
  %y4 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3
  %2 = load i32* %y4, align 4, !tbaa !3
  %div5 = sdiv i32 %2, 4
  store i32 %div5, i32* %y4, align 4, !tbaa !3
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 4
  %3 = load i32* %pos_x, align 4, !tbaa !3
  %div6 = sdiv i32 %3, 4
  store i32 %div6, i32* %pos_x, align 4, !tbaa !3
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 5
  %4 = load i32* %pos_y, align 4, !tbaa !3
  %div7 = sdiv i32 %4, 4
  store i32 %div7, i32* %pos_y, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
