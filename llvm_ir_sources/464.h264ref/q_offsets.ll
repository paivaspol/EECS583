; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/q_offsets.c'
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

@offset4x4_check = global [6 x i32] zeroinitializer, align 16
@offset8x8_check = global [2 x i32] zeroinitializer, align 4
@OffsetType4x4 = internal constant [9 x [24 x i8]] [[24 x i8] c"INTRA4X4_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTRA\00\00", [24 x i8] c"INTRA4X4_CHROMAV_INTRA\00\00", [24 x i8] c"INTRA4X4_LUMA_INTER\00\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTER\00\00", [24 x i8] c"INTRA4X4_CHROMAV_INTER\00\00", [24 x i8] c"INTER4X4_LUMA\00\00\00\00\00\00\00\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU\00\00\00\00\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAV\00\00\00\00\00\00\00\00"], align 16
@OffsetType8x8 = internal constant [3 x [24 x i8]] [[24 x i8] c"INTRA8X8_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTER\00\00\00\00\00", [24 x i8] c"INTER8X8_LUMA\00\00\00\00\00\00\00\00\00\00\00"], align 16
@errortext = external global [300 x i8]
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@OffsetList4x4input = common global [9 x [16 x i16]] zeroinitializer, align 16
@OffsetList8x8input = common global [3 x [64 x i16]] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@input = external global %struct.InputParameters*
@.str6 = private unnamed_addr constant [44 x i8] c"Parsing Quantization Offset Matrix file %s \00", align 1
@.str7 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@img = external global %struct.ImageParameters*
@LevelOffset4x4Luma_Intra = common global [13 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelOffset4x4Chroma_Intra = common global [2 x [13 x [4 x [4 x i32]]]] zeroinitializer, align 16
@LevelOffset4x4Luma_Inter = common global [13 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelOffset4x4Chroma_Inter = common global [2 x [13 x [4 x [4 x i32]]]] zeroinitializer, align 16
@Offset_intra_default_intra = internal unnamed_addr constant [16 x i16] [i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341], align 16
@Offset_inter_default = internal unnamed_addr constant [16 x i16] [i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171], align 16
@LevelOffset8x8Luma_Intra = common global [13 x [8 x [8 x i32]]] zeroinitializer, align 16
@LevelOffset8x8Luma_Inter = common global [13 x [8 x [8 x i32]]] zeroinitializer, align 16
@Offset8_intra_default_intra = internal unnamed_addr constant [64 x i16] [i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341, i16 341], align 16
@Offset8_inter_default = internal unnamed_addr constant [64 x i16] [i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171, i16 171], align 16
@OffsetList4x4 = common global [9 x [16 x i16]] zeroinitializer, align 16
@OffsetList8x8 = common global [3 x [64 x i16]] zeroinitializer, align 16

; Function Attrs: nounwind optsize uwtable
define i32 @CheckOffsetParameterName(i8* nocapture %s, i32* nocapture %type) #0 {
entry:
  store i32 0, i32* %type, align 4, !tbaa !0
  br label %while.body

while.cond:                                       ; preds = %while.body
  %inc = add nsw i32 %i.039, 1
  %arraydecay = getelementptr inbounds [9 x [24 x i8]]* @OffsetType4x4, i64 0, i64 %indvars.iv.next43, i64 0
  %cmp = icmp ne i8* %arraydecay, null
  %0 = trunc i64 %indvars.iv.next43 to i32
  %cmp1 = icmp slt i32 %0, 9
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.cond
  %indvars.iv42 = phi i64 [ 0, %entry ], [ %indvars.iv.next43, %while.cond ]
  %arraydecay40 = phi i8* [ getelementptr inbounds ([9 x [24 x i8]]* @OffsetType4x4, i64 0, i64 0, i64 0), %entry ], [ %arraydecay, %while.cond ]
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %while.cond ]
  %call = tail call i32 @strcmp(i8* %arraydecay40, i8* %s) #5
  %cmp5 = icmp eq i32 %call, 0
  %indvars.iv.next43 = add i64 %indvars.iv42, 1
  br i1 %cmp5, label %return, label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %type, align 4, !tbaa !0
  br label %while.body14

while.cond6:                                      ; preds = %while.body14
  %inc22 = add nsw i32 %i.135, 1
  %arraydecay9 = getelementptr inbounds [3 x [24 x i8]]* @OffsetType8x8, i64 0, i64 %indvars.iv.next, i64 0
  %cmp10 = icmp ne i8* %arraydecay9, null
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %1, 3
  %or.cond34 = and i1 %cmp10, %cmp12
  br i1 %or.cond34, label %while.body14, label %return

while.body14:                                     ; preds = %while.end, %while.cond6
  %indvars.iv = phi i64 [ 0, %while.end ], [ %indvars.iv.next, %while.cond6 ]
  %arraydecay936 = phi i8* [ getelementptr inbounds ([3 x [24 x i8]]* @OffsetType8x8, i64 0, i64 0, i64 0), %while.end ], [ %arraydecay9, %while.cond6 ]
  %i.135 = phi i32 [ 0, %while.end ], [ %inc22, %while.cond6 ]
  %call18 = tail call i32 @strcmp(i8* %arraydecay936, i8* %s) #5
  %cmp19 = icmp eq i32 %call18, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp19, label %return, label %while.cond6

return:                                           ; preds = %while.body, %while.cond6, %while.body14
  %retval.0 = phi i32 [ -1, %while.cond6 ], [ %i.135, %while.body14 ], [ %i.039, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @ParseQOffsetMatrix(i8* %buf, i32 %bufsize) #0 {
entry:
  %items = alloca [1000 x i8*], align 16
  %IntContent = alloca i32, align 4
  %type = alloca i32, align 4
  %0 = bitcast [1000 x i8*]* %items to i8*
  call void @llvm.lifetime.start(i64 8000, i8* %0) #2
  %idxprom = sext i32 %bufsize to i64
  %arrayidx = getelementptr inbounds i8* %buf, i64 %idxprom
  %cmp147 = icmp sgt i32 %bufsize, 0
  br i1 %cmp147, label %while.body, label %for.end98

while.body:                                       ; preds = %while.cond.backedge, %entry
  %item.0151 = phi i32 [ 0, %entry ], [ %item.0.be, %while.cond.backedge ]
  %p.0150 = phi i8* [ %buf, %entry ], [ %p.0.be, %while.cond.backedge ]
  %InItem.0149 = phi i32 [ 0, %entry ], [ %InItem.0.be, %while.cond.backedge ]
  %InString.0148 = phi i32 [ 0, %entry ], [ %InString.0.be, %while.cond.backedge ]
  %1 = load i8* %p.0150, align 1, !tbaa !1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 35, label %sw.bb1
    i32 10, label %sw.bb10
    i32 32, label %sw.bb12
    i32 9, label %sw.bb12
    i32 34, label %sw.bb15
    i32 44, label %sw.bb24
  ]

sw.bb:                                            ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %p.0150, i64 1
  br label %while.cond.backedge

sw.bb1:                                           ; preds = %while.body
  store i8 0, i8* %p.0150, align 1, !tbaa !1
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2.while.cond2_crit_edge, %sw.bb1
  %2 = phi i1 [ true, %sw.bb1 ], [ %phitmp, %while.cond2.while.cond2_crit_edge ]
  %p.1 = phi i8* [ %p.0150, %sw.bb1 ], [ %incdec.ptr9, %while.cond2.while.cond2_crit_edge ]
  %cmp6 = icmp ult i8* %p.1, %arrayidx
  %or.cond = and i1 %2, %cmp6
  %incdec.ptr9 = getelementptr inbounds i8* %p.1, i64 1
  br i1 %or.cond, label %while.cond2.while.cond2_crit_edge, label %while.cond.backedge

while.cond2.while.cond2_crit_edge:                ; preds = %while.cond2
  %.pre = load i8* %incdec.ptr9, align 1, !tbaa !1
  %phitmp = icmp ne i8 %.pre, 10
  br label %while.cond2

sw.bb10:                                          ; preds = %while.body
  %incdec.ptr11 = getelementptr inbounds i8* %p.0150, i64 1
  store i8 0, i8* %p.0150, align 1, !tbaa !1
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.body, %while.body
  %tobool = icmp eq i32 %InString.0148, 0
  %incdec.ptr13 = getelementptr inbounds i8* %p.0150, i64 1
  br i1 %tobool, label %if.else, label %while.cond.backedge

if.else:                                          ; preds = %sw.bb12
  store i8 0, i8* %p.0150, align 1, !tbaa !1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond2, %if.else, %if.end32, %sw.bb24, %if.end22, %sw.bb10, %sw.bb, %sw.bb12
  %InString.0.be = phi i32 [ %InString.0148, %if.end32 ], [ %InString.0148, %sw.bb24 ], [ %neg23, %if.end22 ], [ %InString.0148, %sw.bb12 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ %InString.0148, %sw.bb ], [ 0, %while.cond2 ]
  %InItem.0.be = phi i32 [ %InItem.2, %if.end32 ], [ 0, %sw.bb24 ], [ %InItem.1, %if.end22 ], [ %InItem.0149, %sw.bb12 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ %InItem.0149, %sw.bb ], [ 0, %while.cond2 ]
  %p.0.be = phi i8* [ %incdec.ptr33, %if.end32 ], [ %incdec.ptr25, %sw.bb24 ], [ %incdec.ptr16, %if.end22 ], [ %incdec.ptr13, %sw.bb12 ], [ %incdec.ptr13, %if.else ], [ %incdec.ptr11, %sw.bb10 ], [ %incdec.ptr, %sw.bb ], [ %p.1, %while.cond2 ]
  %item.0.be = phi i32 [ %item.2, %if.end32 ], [ %item.0151, %sw.bb24 ], [ %item.1, %if.end22 ], [ %item.0151, %sw.bb12 ], [ %item.0151, %if.else ], [ %item.0151, %sw.bb10 ], [ %item.0151, %sw.bb ], [ %item.0151, %while.cond2 ]
  %cmp = icmp ult i8* %p.0.be, %arrayidx
  br i1 %cmp, label %while.body, label %while.end34

sw.bb15:                                          ; preds = %while.body
  %incdec.ptr16 = getelementptr inbounds i8* %p.0150, i64 1
  store i8 0, i8* %p.0150, align 1, !tbaa !1
  %tobool17 = icmp eq i32 %InString.0148, 0
  br i1 %tobool17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %sw.bb15
  %inc = add nsw i32 %item.0151, 1
  %idxprom19 = sext i32 %item.0151 to i64
  %arrayidx20 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom19
  store i8* %incdec.ptr16, i8** %arrayidx20, align 8, !tbaa !3
  %neg = xor i32 %InItem.0149, -1
  br label %if.end22

if.end22:                                         ; preds = %sw.bb15, %if.then18
  %InItem.1 = phi i32 [ %neg, %if.then18 ], [ 0, %sw.bb15 ]
  %item.1 = phi i32 [ %inc, %if.then18 ], [ %item.0151, %sw.bb15 ]
  %neg23 = xor i32 %InString.0148, -1
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.body
  %incdec.ptr25 = getelementptr inbounds i8* %p.0150, i64 1
  br label %while.cond.backedge

sw.default:                                       ; preds = %while.body
  %tobool26 = icmp eq i32 %InItem.0149, 0
  br i1 %tobool26, label %if.then27, label %if.end32

if.then27:                                        ; preds = %sw.default
  %inc28 = add nsw i32 %item.0151, 1
  %idxprom29 = sext i32 %item.0151 to i64
  %arrayidx30 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom29
  store i8* %p.0150, i8** %arrayidx30, align 8, !tbaa !3
  br label %if.end32

if.end32:                                         ; preds = %sw.default, %if.then27
  %InItem.2 = phi i32 [ %InItem.0149, %sw.default ], [ -1, %if.then27 ]
  %item.2 = phi i32 [ %item.0151, %sw.default ], [ %inc28, %if.then27 ]
  %incdec.ptr33 = getelementptr inbounds i8* %p.0150, i64 1
  br label %while.cond.backedge

while.end34:                                      ; preds = %while.cond.backedge
  %dec = add nsw i32 %item.0.be, -1
  %cmp35145 = icmp sgt i32 %dec, 0
  br i1 %cmp35145, label %for.body, label %for.end98

for.body:                                         ; preds = %while.end34, %for.end
  %i.0146 = phi i32 [ %add97, %for.end ], [ 0, %while.end34 ]
  %idxprom37 = sext i32 %i.0146 to i64
  %arrayidx38 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom37
  %3 = load i8** %arrayidx38, align 8, !tbaa !3
  %call = call i32 @CheckOffsetParameterName(i8* %3, i32* %type) #6
  %cmp39 = icmp slt i32 %call, 0
  br i1 %cmp39, label %if.then41, label %if.end46

if.then41:                                        ; preds = %for.body
  %call45 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), i8* %3) #7
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %for.body
  %add48 = add nsw i32 %i.0146, 1
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %idxprom49
  %4 = load i8** %arrayidx50, align 8, !tbaa !3
  %call51 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i8* %4) #5
  %tobool52 = icmp eq i32 %call51, 0
  br i1 %tobool52, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end46
  %call54 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([78 x i8]* @.str2, i64 0, i64 0)) #7
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #7
  br label %if.end55

if.end55:                                         ; preds = %if.end46, %if.then53
  %5 = load i32* %type, align 4, !tbaa !0
  %tobool57 = icmp eq i32 %5, 0
  %idxprom59 = sext i32 %call to i64
  br i1 %tobool57, label %if.then58, label %if.else63

if.then58:                                        ; preds = %if.end55
  %arraydecay = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 %idxprom59, i64 0
  %arrayidx62 = getelementptr inbounds [6 x i32]* @offset4x4_check, i64 0, i64 %idxprom59
  store i32 1, i32* %arrayidx62, align 4, !tbaa !0
  br label %if.end69

if.else63:                                        ; preds = %if.end55
  %arraydecay66 = getelementptr inbounds [3 x [64 x i16]]* @OffsetList8x8input, i64 0, i64 %idxprom59, i64 0
  %arrayidx68 = getelementptr inbounds [2 x i32]* @offset8x8_check, i64 0, i64 %idxprom59
  store i32 1, i32* %arrayidx68, align 4, !tbaa !0
  br label %if.end69

if.end69:                                         ; preds = %if.else63, %if.then58
  %range.0 = phi i32 [ 64, %if.else63 ], [ 16, %if.then58 ]
  %OffsetList.0 = phi i16* [ %arraydecay66, %if.else63 ], [ %arraydecay, %if.then58 ]
  %add74 = add i32 %i.0146, 2
  %6 = sext i32 %add74 to i64
  br label %for.body73

for.body73:                                       ; preds = %if.end69, %if.end89
  %indvars.iv = phi i64 [ 0, %if.end69 ], [ %indvars.iv.next, %if.end89 ]
  %7 = add nsw i64 %6, %indvars.iv
  %arrayidx77 = getelementptr inbounds [1000 x i8*]* %items, i64 0, i64 %7
  %8 = load i8** %arrayidx77, align 8, !tbaa !3
  %call78 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i32* %IntContent) #7
  %cmp79 = icmp eq i32 %call78, 1
  br i1 %cmp79, label %if.end89, label %if.then81

if.then81:                                        ; preds = %for.body73
  %call88 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([74 x i8]* @.str4, i64 0, i64 0), i8* %3, i8* %8) #7
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #7
  br label %if.end89

if.end89:                                         ; preds = %for.body73, %if.then81
  %9 = load i32* %IntContent, align 4, !tbaa !0
  %conv90 = trunc i32 %9 to i16
  %arrayidx92 = getelementptr inbounds i16* %OffsetList.0, i64 %indvars.iv
  store i16 %conv90, i16* %arrayidx92, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp71 = icmp slt i32 %10, %range.0
  br i1 %cmp71, label %for.body73, label %for.end

for.end:                                          ; preds = %if.end89
  %putchar = call i32 @putchar(i32 46) #2
  %add97 = add i32 %add74, %range.0
  %cmp35 = icmp slt i32 %add97, %dec
  br i1 %cmp35, label %for.body, label %for.end98

for.end98:                                        ; preds = %entry, %for.end, %while.end34
  call void @llvm.lifetime.end(i64 8000, i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @error(i8*, i32) #4

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @Init_QOffsetMatrix() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 147
  %1 = load i32* %OffsetMatrixPresentFlag, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 146, i64 0
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0), i8* %arraydecay) #7
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %arraydecay2 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 146, i64 0
  %call3 = tail call i8* @GetConfigFileContent(i8* %arraydecay2, i32 0) #7
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = tail call i64 @strlen(i8* %call3) #5
  %conv = trunc i64 %call5 to i32
  tail call void @ParseQOffsetMatrix(i8* %call3, i32 %conv) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0)) #7
  %3 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %OffsetMatrixPresentFlag7 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 147
  store i32 0, i32* %OffsetMatrixPresentFlag7, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %putchar = tail call i32 @putchar(i32 10) #2
  tail call void @free(i8* %call3) #7
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: optsize
declare i8* @GetConfigFileContent(i8*, i32) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @CalculateOffsetParam() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 147
  %1 = load i32* %OffsetMatrixPresentFlag, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type120 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6
  br i1 %tobool, label %for.body107, label %for.body

for.body:                                         ; preds = %entry, %for.inc100
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %for.inc100 ], [ 0, %entry ]
  %3 = add nsw i64 %indvars.iv355, 5
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc97, %for.body
  %indvars.iv351 = phi i64 [ 0, %for.body ], [ %indvars.iv.next352, %for.inc97 ]
  br label %for.body6

for.body6:                                        ; preds = %if.end, %for.cond4.preheader
  %indvars.iv345 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next346, %if.end ]
  %4 = shl i64 %indvars.iv345, 2
  %5 = add nsw i64 %4, %indvars.iv351
  %6 = load i32* %type120, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %6, 2
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body6
  %arrayidx = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 0, i64 %5
  %7 = load i16* %arrayidx, align 2, !tbaa !4
  %conv = sext i16 %7 to i32
  %8 = trunc i64 %3 to i32
  %shl10 = shl i32 %conv, %8
  %arrayidx16 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345
  store i32 %shl10, i32* %arrayidx16, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 1, i64 %5
  %9 = load i16* %arrayidx18, align 2, !tbaa !4
  %conv19 = sext i16 %9 to i32
  %shl20 = shl i32 %conv19, %8
  %arrayidx26 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345
  store i32 %shl20, i32* %arrayidx26, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 2, i64 %5
  %10 = load i16* %arrayidx28, align 2, !tbaa !4
  %conv29 = sext i16 %10 to i32
  %shl30 = shl i32 %conv29, %8
  %arrayidx36 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345
  store i32 %shl30, i32* %arrayidx36, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %for.body6
  %arrayidx38 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 3, i64 %5
  %11 = load i16* %arrayidx38, align 2, !tbaa !4
  %conv39 = sext i16 %11 to i32
  %12 = trunc i64 %3 to i32
  %shl40 = shl i32 %conv39, %12
  %arrayidx46 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345
  store i32 %shl40, i32* %arrayidx46, align 4, !tbaa !0
  %arrayidx48 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 4, i64 %5
  %13 = load i16* %arrayidx48, align 2, !tbaa !4
  %conv49 = sext i16 %13 to i32
  %shl50 = shl i32 %conv49, %12
  %arrayidx56 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345
  store i32 %shl50, i32* %arrayidx56, align 4, !tbaa !0
  %arrayidx58 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 5, i64 %5
  %14 = load i16* %arrayidx58, align 2, !tbaa !4
  %conv59 = sext i16 %14 to i32
  %shl60 = shl i32 %conv59, %12
  %arrayidx66 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345
  store i32 %shl60, i32* %arrayidx66, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %arrayidx68 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 6, i64 %5
  %15 = load i16* %arrayidx68, align 2, !tbaa !4
  %conv69 = sext i16 %15 to i32
  %16 = trunc i64 %3 to i32
  %shl70 = shl i32 %conv69, %16
  %arrayidx76 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Inter, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345
  store i32 %shl70, i32* %arrayidx76, align 4, !tbaa !0
  %arrayidx78 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 7, i64 %5
  %17 = load i16* %arrayidx78, align 2, !tbaa !4
  %conv79 = sext i16 %17 to i32
  %shl80 = shl i32 %conv79, %16
  %arrayidx86 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345
  store i32 %shl80, i32* %arrayidx86, align 4, !tbaa !0
  %arrayidx88 = getelementptr inbounds [9 x [16 x i16]]* @OffsetList4x4input, i64 0, i64 8, i64 %5
  %18 = load i16* %arrayidx88, align 2, !tbaa !4
  %conv89 = sext i16 %18 to i32
  %shl90 = shl i32 %conv89, %16
  %arrayidx96 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv355, i64 %indvars.iv351, i64 %indvars.iv345
  store i32 %shl90, i32* %arrayidx96, align 4, !tbaa !0
  %indvars.iv.next346 = add i64 %indvars.iv345, 1
  %lftr.wideiv349 = trunc i64 %indvars.iv.next346 to i32
  %exitcond350 = icmp eq i32 %lftr.wideiv349, 4
  br i1 %exitcond350, label %for.inc97, label %for.body6

for.inc97:                                        ; preds = %if.end
  %indvars.iv.next352 = add i64 %indvars.iv351, 1
  %lftr.wideiv353 = trunc i64 %indvars.iv.next352 to i32
  %exitcond354 = icmp eq i32 %lftr.wideiv353, 4
  br i1 %exitcond354, label %for.inc100, label %for.cond4.preheader

for.inc100:                                       ; preds = %for.inc97
  %indvars.iv.next356 = add i64 %indvars.iv355, 1
  %lftr.wideiv358 = trunc i64 %indvars.iv.next356 to i32
  %exitcond359 = icmp eq i32 %lftr.wideiv358, 13
  br i1 %exitcond359, label %if.end225, label %for.body

for.body107:                                      ; preds = %entry, %for.inc222
  %indvars.iv340 = phi i64 [ %indvars.iv.next341, %for.inc222 ], [ 0, %entry ]
  %19 = add nsw i64 %indvars.iv340, 5
  br label %for.cond114.preheader

for.cond114.preheader:                            ; preds = %for.inc219, %for.body107
  %indvars.iv336 = phi i64 [ 0, %for.body107 ], [ %indvars.iv.next337, %for.inc219 ]
  br label %for.body117

for.body117:                                      ; preds = %if.end185, %for.cond114.preheader
  %indvars.iv = phi i64 [ 0, %for.cond114.preheader ], [ %indvars.iv.next, %if.end185 ]
  %20 = shl i64 %indvars.iv, 2
  %21 = add nsw i64 %20, %indvars.iv336
  %22 = load i32* %type120, align 4, !tbaa !0
  %cmp121 = icmp eq i32 %22, 2
  br i1 %cmp121, label %if.then123, label %if.else154

if.then123:                                       ; preds = %for.body117
  %arrayidx125 = getelementptr inbounds [16 x i16]* @Offset_intra_default_intra, i64 0, i64 %21
  %23 = load i16* %arrayidx125, align 2, !tbaa !4
  %conv126 = sext i16 %23 to i32
  %24 = trunc i64 %19 to i32
  %shl127 = shl i32 %conv126, %24
  %arrayidx133 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv
  store i32 %shl127, i32* %arrayidx133, align 4, !tbaa !0
  %arrayidx143 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv
  store i32 %shl127, i32* %arrayidx143, align 4, !tbaa !0
  %arrayidx153 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv
  store i32 %shl127, i32* %arrayidx153, align 4, !tbaa !0
  br label %if.end185

if.else154:                                       ; preds = %for.body117
  %arrayidx156 = getelementptr inbounds [16 x i16]* @Offset_inter_default, i64 0, i64 %21
  %25 = load i16* %arrayidx156, align 2, !tbaa !4
  %conv157 = sext i16 %25 to i32
  %26 = trunc i64 %19 to i32
  %shl158 = shl i32 %conv157, %26
  %arrayidx164 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv
  store i32 %shl158, i32* %arrayidx164, align 4, !tbaa !0
  %arrayidx174 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv
  store i32 %shl158, i32* %arrayidx174, align 4, !tbaa !0
  %arrayidx184 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv
  store i32 %shl158, i32* %arrayidx184, align 4, !tbaa !0
  br label %if.end185

if.end185:                                        ; preds = %if.else154, %if.then123
  %arrayidx187 = getelementptr inbounds [16 x i16]* @Offset_inter_default, i64 0, i64 %21
  %27 = load i16* %arrayidx187, align 2, !tbaa !4
  %conv188 = sext i16 %27 to i32
  %28 = trunc i64 %19 to i32
  %shl189 = shl i32 %conv188, %28
  %arrayidx195 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Inter, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv
  store i32 %shl189, i32* %arrayidx195, align 4, !tbaa !0
  %arrayidx205 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv
  store i32 %shl189, i32* %arrayidx205, align 4, !tbaa !0
  %arrayidx215 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv340, i64 %indvars.iv336, i64 %indvars.iv
  store i32 %shl189, i32* %arrayidx215, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc219, label %for.body117

for.inc219:                                       ; preds = %if.end185
  %indvars.iv.next337 = add i64 %indvars.iv336, 1
  %lftr.wideiv338 = trunc i64 %indvars.iv.next337 to i32
  %exitcond339 = icmp eq i32 %lftr.wideiv338, 4
  br i1 %exitcond339, label %for.inc222, label %for.cond114.preheader

for.inc222:                                       ; preds = %for.inc219
  %indvars.iv.next341 = add i64 %indvars.iv340, 1
  %lftr.wideiv343 = trunc i64 %indvars.iv.next341 to i32
  %exitcond344 = icmp eq i32 %lftr.wideiv343, 13
  br i1 %exitcond344, label %if.end225, label %for.body107

if.end225:                                        ; preds = %for.inc100, %for.inc222
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CalculateOffset8Param() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %OffsetMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 147
  %1 = load i32* %OffsetMatrixPresentFlag, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type60 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6
  br i1 %tobool, label %for.body47, label %for.body

for.body:                                         ; preds = %entry, %for.inc40
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %for.inc40 ], [ 0, %entry ]
  %3 = add nsw i64 %indvars.iv175, 6
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc37, %for.body
  %indvars.iv171 = phi i64 [ 0, %for.body ], [ %indvars.iv.next172, %for.inc37 ]
  br label %for.body6

for.body6:                                        ; preds = %if.end, %for.cond4.preheader
  %indvars.iv165 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next166, %if.end ]
  %4 = shl i64 %indvars.iv165, 3
  %5 = add nsw i64 %4, %indvars.iv171
  %6 = load i32* %type60, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %6, 2
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body6
  %arrayidx = getelementptr inbounds [3 x [64 x i16]]* @OffsetList8x8input, i64 0, i64 0, i64 %5
  %7 = load i16* %arrayidx, align 2, !tbaa !4
  %conv = sext i16 %7 to i32
  %8 = trunc i64 %3 to i32
  %shl10 = shl i32 %conv, %8
  %arrayidx16 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i64 0, i64 %indvars.iv175, i64 %indvars.iv171, i64 %indvars.iv165
  store i32 %shl10, i32* %arrayidx16, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %for.body6
  %arrayidx18 = getelementptr inbounds [3 x [64 x i16]]* @OffsetList8x8input, i64 0, i64 1, i64 %5
  %9 = load i16* %arrayidx18, align 2, !tbaa !4
  %conv19 = sext i16 %9 to i32
  %10 = trunc i64 %3 to i32
  %shl20 = shl i32 %conv19, %10
  %arrayidx26 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i64 0, i64 %indvars.iv175, i64 %indvars.iv171, i64 %indvars.iv165
  store i32 %shl20, i32* %arrayidx26, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %arrayidx28 = getelementptr inbounds [3 x [64 x i16]]* @OffsetList8x8input, i64 0, i64 2, i64 %5
  %11 = load i16* %arrayidx28, align 2, !tbaa !4
  %conv29 = sext i16 %11 to i32
  %12 = trunc i64 %3 to i32
  %shl30 = shl i32 %conv29, %12
  %arrayidx36 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Inter, i64 0, i64 %indvars.iv175, i64 %indvars.iv171, i64 %indvars.iv165
  store i32 %shl30, i32* %arrayidx36, align 4, !tbaa !0
  %indvars.iv.next166 = add i64 %indvars.iv165, 1
  %lftr.wideiv169 = trunc i64 %indvars.iv.next166 to i32
  %exitcond170 = icmp eq i32 %lftr.wideiv169, 8
  br i1 %exitcond170, label %for.inc37, label %for.body6

for.inc37:                                        ; preds = %if.end
  %indvars.iv.next172 = add i64 %indvars.iv171, 1
  %lftr.wideiv173 = trunc i64 %indvars.iv.next172 to i32
  %exitcond174 = icmp eq i32 %lftr.wideiv173, 8
  br i1 %exitcond174, label %for.inc40, label %for.cond4.preheader

for.inc40:                                        ; preds = %for.inc37
  %indvars.iv.next176 = add i64 %indvars.iv175, 1
  %lftr.wideiv178 = trunc i64 %indvars.iv.next176 to i32
  %exitcond179 = icmp eq i32 %lftr.wideiv178, 13
  br i1 %exitcond179, label %if.end105, label %for.body

for.body47:                                       ; preds = %entry, %for.inc102
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %for.inc102 ], [ 0, %entry ]
  %13 = add nsw i64 %indvars.iv160, 6
  br label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %for.inc99, %for.body47
  %indvars.iv156 = phi i64 [ 0, %for.body47 ], [ %indvars.iv.next157, %for.inc99 ]
  br label %for.body57

for.body57:                                       ; preds = %if.end85, %for.cond54.preheader
  %indvars.iv = phi i64 [ 0, %for.cond54.preheader ], [ %indvars.iv.next, %if.end85 ]
  %14 = shl i64 %indvars.iv, 3
  %15 = add nsw i64 %14, %indvars.iv156
  %16 = load i32* %type60, align 4, !tbaa !0
  %cmp61 = icmp eq i32 %16, 2
  br i1 %cmp61, label %if.then63, label %if.else74

if.then63:                                        ; preds = %for.body57
  %arrayidx65 = getelementptr inbounds [64 x i16]* @Offset8_intra_default_intra, i64 0, i64 %15
  %17 = load i16* %arrayidx65, align 2, !tbaa !4
  %conv66 = sext i16 %17 to i32
  %18 = trunc i64 %13 to i32
  %shl67 = shl i32 %conv66, %18
  %arrayidx73 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i64 0, i64 %indvars.iv160, i64 %indvars.iv156, i64 %indvars.iv
  store i32 %shl67, i32* %arrayidx73, align 4, !tbaa !0
  br label %if.end85

if.else74:                                        ; preds = %for.body57
  %arrayidx76 = getelementptr inbounds [64 x i16]* @Offset8_inter_default, i64 0, i64 %15
  %19 = load i16* %arrayidx76, align 2, !tbaa !4
  %conv77 = sext i16 %19 to i32
  %20 = trunc i64 %13 to i32
  %shl78 = shl i32 %conv77, %20
  %arrayidx84 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i64 0, i64 %indvars.iv160, i64 %indvars.iv156, i64 %indvars.iv
  store i32 %shl78, i32* %arrayidx84, align 4, !tbaa !0
  br label %if.end85

if.end85:                                         ; preds = %if.else74, %if.then63
  %arrayidx87 = getelementptr inbounds [64 x i16]* @Offset8_inter_default, i64 0, i64 %15
  %21 = load i16* %arrayidx87, align 2, !tbaa !4
  %conv88 = sext i16 %21 to i32
  %22 = trunc i64 %13 to i32
  %shl89 = shl i32 %conv88, %22
  %arrayidx95 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Inter, i64 0, i64 %indvars.iv160, i64 %indvars.iv156, i64 %indvars.iv
  store i32 %shl89, i32* %arrayidx95, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.inc99, label %for.body57

for.inc99:                                        ; preds = %if.end85
  %indvars.iv.next157 = add i64 %indvars.iv156, 1
  %lftr.wideiv158 = trunc i64 %indvars.iv.next157 to i32
  %exitcond159 = icmp eq i32 %lftr.wideiv158, 8
  br i1 %exitcond159, label %for.inc102, label %for.cond54.preheader

for.inc102:                                       ; preds = %for.inc99
  %indvars.iv.next161 = add i64 %indvars.iv160, 1
  %lftr.wideiv163 = trunc i64 %indvars.iv.next161 to i32
  %exitcond164 = icmp eq i32 %lftr.wideiv163, 13
  br i1 %exitcond164, label %if.end105, label %for.body47

if.end105:                                        ; preds = %for.inc40, %for.inc102
  ret void
}

; Function Attrs: nounwind
declare i32 @putchar(i32) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
