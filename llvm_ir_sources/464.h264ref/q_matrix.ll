; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/q_matrix.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@matrix4x4_check = global [6 x i32] zeroinitializer, align 16
@matrix8x8_check = global [2 x i32] zeroinitializer, align 4
@MatrixType4x4 = internal constant [6 x [20 x i8]] [[20 x i8] c"INTRA4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAV\00\00\00\00", [20 x i8] c"INTER4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAV\00\00\00\00"], align 16
@MatrixType8x8 = internal constant [2 x [20 x i8]] [[20 x i8] c"INTRA8X8_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER8X8_LUMA\00\00\00\00\00\00\00"], align 16
@errortext = external global [300 x i8]
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@ScalingList4x4input = common global [6 x [16 x i16]] zeroinitializer, align 16
@ScalingList8x8input = common global [2 x [64 x i16]] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@input = external global %struct.InputParameters*
@.str6 = private unnamed_addr constant [50 x i8] c"\0A%s value exceed range. (Value must be 1 to 255)\0A\00", align 1
@.str7 = private unnamed_addr constant [40 x i8] c"Setting default values for this matrix.\00", align 1
@Quant_inter_default = internal unnamed_addr constant [16 x i16] [i16 10, i16 14, i16 20, i16 24, i16 14, i16 20, i16 24, i16 27, i16 20, i16 24, i16 27, i16 30, i16 24, i16 27, i16 30, i16 34], align 16
@Quant_intra_default = internal unnamed_addr constant [16 x i16] [i16 6, i16 13, i16 20, i16 28, i16 13, i16 20, i16 28, i16 32, i16 20, i16 28, i16 32, i16 37, i16 28, i16 32, i16 37, i16 42], align 16
@.str8 = private unnamed_addr constant [57 x i8] c"\0A%s matrix definition not found. Setting default values.\00", align 1
@Quant8_inter_default = internal unnamed_addr constant [64 x i16] [i16 9, i16 13, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 13, i16 13, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 35], align 16
@Quant8_intra_default = internal unnamed_addr constant [64 x i16] [i16 6, i16 10, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 10, i16 11, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 42], align 16
@.str9 = private unnamed_addr constant [25 x i8] c"Parsing QMatrix file %s \00", align 1
@.str10 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@UseDefaultScalingMatrix4x4Flag = common global [6 x i16] zeroinitializer, align 2
@UseDefaultScalingMatrix8x8Flag = common global [2 x i16] zeroinitializer, align 2
@active_sps = external global %struct.seq_parameter_set_rbsp_t*
@active_pps = external global %struct.pic_parameter_set_rbsp_t*
@quant_coef = external constant [6 x [4 x [4 x i32]]]
@LevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@dequant_coef = external constant [6 x [4 x [4 x i32]]]
@InvLevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@LevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@ScalingList4x4 = common global [6 x [16 x i16]] zeroinitializer, align 16
@quant_coef8 = external constant [6 x [8 x [8 x i32]]]
@LevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@dequant_coef8 = external constant [6 x [8 x [8 x i32]]]
@InvLevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@LevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@ScalingList8x8 = common global [2 x [64 x i16]] zeroinitializer, align 16

; Function Attrs: nounwind optsize uwtable
define i32 @CheckParameterName(i8* nocapture %s, i32* nocapture %type) #0 {
entry:
  store i32 0, i32* %type, align 4, !tbaa !0
  br label %while.body

while.cond:                                       ; preds = %while.body
  %inc = add nsw i32 %i.039, 1
  %arraydecay = getelementptr inbounds [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %indvars.iv.next43, i64 0
  %cmp = icmp ne i8* %arraydecay, null
  %0 = trunc i64 %indvars.iv.next43 to i32
  %cmp1 = icmp slt i32 %0, 6
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.cond
  %indvars.iv42 = phi i64 [ 0, %entry ], [ %indvars.iv.next43, %while.cond ]
  %arraydecay40 = phi i8* [ getelementptr inbounds ([6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 0, i64 0), %entry ], [ %arraydecay, %while.cond ]
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
  %arraydecay9 = getelementptr inbounds [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %indvars.iv.next, i64 0
  %cmp10 = icmp ne i8* %arraydecay9, null
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %1, 2
  %or.cond34 = and i1 %cmp10, %cmp12
  br i1 %or.cond34, label %while.body14, label %return

while.body14:                                     ; preds = %while.end, %while.cond6
  %indvars.iv = phi i64 [ 0, %while.end ], [ %indvars.iv.next, %while.cond6 ]
  %arraydecay936 = phi i8* [ getelementptr inbounds ([2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 0, i64 0), %while.end ], [ %arraydecay9, %while.cond6 ]
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
define void @ParseMatrix(i8* %buf, i32 %bufsize) #0 {
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
  %call = call i32 @CheckParameterName(i8* %3, i32* %type) #6
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
  %arraydecay = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %idxprom59, i64 0
  %arrayidx62 = getelementptr inbounds [6 x i32]* @matrix4x4_check, i64 0, i64 %idxprom59
  store i32 1, i32* %arrayidx62, align 4, !tbaa !0
  br label %if.end69

if.else63:                                        ; preds = %if.end55
  %arraydecay66 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %idxprom59, i64 0
  %arrayidx68 = getelementptr inbounds [2 x i32]* @matrix8x8_check, i64 0, i64 %idxprom59
  store i32 1, i32* %arrayidx68, align 4, !tbaa !0
  br label %if.end69

if.end69:                                         ; preds = %if.else63, %if.then58
  %range.0 = phi i32 [ 64, %if.else63 ], [ 16, %if.then58 ]
  %ScalingList.0 = phi i16* [ %arraydecay66, %if.else63 ], [ %arraydecay, %if.then58 ]
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
  %arrayidx92 = getelementptr inbounds i16* %ScalingList.0, i64 %indvars.iv
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
define void @PatchMatrix() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc102, %entry
  %indvars.iv144 = phi i64 [ 0, %entry ], [ %indvars.iv.next145, %for.inc102 ]
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 133, i64 %indvars.iv144
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end42, label %if.then

if.then:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %indvars.iv144, i64 0
  %arrayidx4 = getelementptr inbounds [6 x i32]* @matrix4x4_check, i64 0, i64 %indvars.iv144
  %2 = load i32* %arrayidx4, align 4, !tbaa !0
  %tobool5 = icmp eq i32 %2, 0
  br i1 %tobool5, label %if.else31, label %for.body9

for.cond7:                                        ; preds = %for.body9
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %3, 16
  br i1 %cmp8, label %for.body9, label %if.end42

for.body9:                                        ; preds = %if.then, %for.cond7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond7 ], [ 0, %if.then ]
  %arrayidx11 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %indvars.iv144, i64 %indvars.iv
  %4 = load i16* %arrayidx11, align 2, !tbaa !4
  %5 = icmp ugt i16 %4, 255
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %5, label %if.then21, label %for.cond7

if.then21:                                        ; preds = %for.body9
  %arraydecay24 = getelementptr inbounds [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %indvars.iv144, i64 0
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i8* %arraydecay24) #7
  %call25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0)) #7
  %6 = trunc i64 %indvars.iv144 to i32
  %cmp26 = icmp sgt i32 %6, 2
  %7 = bitcast i16* %arraydecay to i8*
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then21
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i32 16, i1 false)
  br label %if.end42

if.else:                                          ; preds = %if.then21
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i32 16, i1 false)
  br label %if.end42

if.else31:                                        ; preds = %if.then
  %arraydecay34 = getelementptr inbounds [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %indvars.iv144, i64 0
  %call35 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), i8* %arraydecay34) #7
  %8 = trunc i64 %indvars.iv144 to i32
  %cmp36 = icmp sgt i32 %8, 2
  %9 = bitcast i16* %arraydecay to i8*
  br i1 %cmp36, label %if.end42.thread, label %if.else39

if.end42.thread:                                  ; preds = %if.else31
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i32 16, i1 false)
  br label %for.inc102

if.else39:                                        ; preds = %if.else31
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i32 16, i1 false)
  br label %if.end42

if.end42:                                         ; preds = %for.cond7, %for.body, %if.then28, %if.else, %if.else39
  %10 = trunc i64 %indvars.iv144 to i32
  %cmp43 = icmp slt i32 %10, 2
  br i1 %cmp43, label %land.lhs.true, label %for.inc102

land.lhs.true:                                    ; preds = %if.end42
  %11 = add nsw i64 %indvars.iv144, 6
  %12 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %arrayidx47 = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 133, i64 %11
  %13 = load i32* %arrayidx47, align 4, !tbaa !0
  %tobool48 = icmp eq i32 %13, 0
  br i1 %tobool48, label %for.inc102, label %if.then49

if.then49:                                        ; preds = %land.lhs.true
  %arraydecay52 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %indvars.iv144, i64 0
  %arrayidx54 = getelementptr inbounds [2 x i32]* @matrix8x8_check, i64 0, i64 %indvars.iv144
  %14 = load i32* %arrayidx54, align 4, !tbaa !0
  %tobool55 = icmp eq i32 %14, 0
  br i1 %tobool55, label %if.else98, label %for.body60

for.cond57:                                       ; preds = %for.body60
  %15 = trunc i64 %indvars.iv.next143 to i32
  %cmp58 = icmp slt i32 %15, 64
  br i1 %cmp58, label %for.body60, label %for.inc102

for.body60:                                       ; preds = %if.then49, %for.cond57
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.cond57 ], [ 0, %if.then49 ]
  %arrayidx62 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %indvars.iv144, i64 %indvars.iv142
  %16 = load i16* %arrayidx62, align 2, !tbaa !4
  %17 = icmp ugt i16 %16, 255
  %indvars.iv.next143 = add i64 %indvars.iv142, 1
  br i1 %17, label %if.else87, label %for.cond57

if.else87:                                        ; preds = %for.body60
  %arraydecay81 = getelementptr inbounds [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %indvars.iv144, i64 0
  %call82 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i8* %arraydecay81) #7
  %call83 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0)) #7
  %18 = bitcast i16* %arraydecay52 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i32 16, i1 false)
  br label %for.inc102

if.else98:                                        ; preds = %if.then49
  %arraydecay93 = getelementptr inbounds [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %indvars.iv144, i64 0
  %call94 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), i8* %arraydecay93) #7
  %19 = bitcast i16* %arraydecay52 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i32 16, i1 false)
  br label %for.inc102

for.inc102:                                       ; preds = %for.cond57, %if.end42.thread, %land.lhs.true, %if.end42, %if.else98, %if.else87
  %indvars.iv.next145 = add i64 %indvars.iv144, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next145 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 6
  br i1 %exitcond, label %for.end104, label %for.body

for.end104:                                       ; preds = %for.inc102
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @Init_QMatrix() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 132
  %1 = load i32* %ScalingMatrixPresentFlag, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 30, i64 0
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0), i8* %arraydecay) #7
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %arraydecay2 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 30, i64 0
  %call3 = tail call i8* @GetConfigFileContent(i8* %arraydecay2, i32 0) #7
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = tail call i64 @strlen(i8* %call3) #5
  %conv = trunc i64 %call5 to i32
  tail call void @ParseMatrix(i8* %call3, i32 %conv) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  tail call void @PatchMatrix() #6
  %putchar = tail call i32 @putchar(i32 10) #2
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i16]* @UseDefaultScalingMatrix4x4Flag to i8*), i8 0, i64 12, i32 2, i1 false)
  store i16 0, i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 1), align 2, !tbaa !4
  store i16 0, i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 0), align 2, !tbaa !4
  tail call void @free(i8* %call3) #7
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: optsize
declare i8* @GetConfigFileContent(i8*, i32) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @CalculateQuantParam() #0 {
entry:
  %present = alloca [6 x i32], align 16
  %0 = bitcast [6 x i32]* %present to i8*
  %1 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !3
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %1, i64 0, i32 9
  %2 = load i32* %seq_scaling_matrix_present_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %for.cond.preheader

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !3
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %3, i64 0, i32 5
  %4 = load i32* %pic_scaling_matrix_present_flag, align 4, !tbaa !1
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %for.cond37.preheader, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %land.lhs.true
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 16, i1 false)
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %scevgep988 = getelementptr %struct.seq_parameter_set_rbsp_t* %1, i64 0, i32 10, i64 0
  %scevgep988989 = bitcast i32* %scevgep988 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %scevgep988989, i64 24, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else.if.end_crit_edge, %for.cond.preheader
  %5 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !3
  %pic_scaling_matrix_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %5, i64 0, i32 5
  %6 = load i32* %pic_scaling_matrix_present_flag7, align 4, !tbaa !1
  %tobool8 = icmp eq i32 %6, 0
  br i1 %tobool8, label %for.cond202.preheader, label %for.body12

for.cond202.preheader:                            ; preds = %for.inc27, %if.end
  %7 = bitcast [6 x i32]* %present to i64*
  %8 = load i64* %7, align 16
  %9 = trunc i64 %8 to i32
  %tobool213 = icmp ne i32 %9, 0
  %10 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 0), align 2, !tbaa !4
  %tobool215 = icmp eq i16 %10, 0
  %or.cond = and i1 %tobool213, %tobool215
  %tobool284 = icmp ult i64 %8, 4294967296
  %arrayidx359 = getelementptr inbounds [6 x i32]* %present, i64 0, i64 2
  %11 = bitcast i32* %arrayidx359 to i64*
  %12 = load i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %tobool360 = icmp eq i32 %13, 0
  %tobool440 = icmp ugt i64 %12, 4294967295
  %14 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 3), align 2, !tbaa !4
  %tobool443 = icmp eq i16 %14, 0
  %or.cond931 = and i1 %tobool440, %tobool443
  %arrayidx513 = getelementptr inbounds [6 x i32]* %present, i64 0, i64 4
  %15 = bitcast i32* %arrayidx513 to i64*
  %16 = load i64* %15, align 16
  %17 = trunc i64 %16 to i32
  %tobool514 = icmp eq i32 %17, 0
  %tobool594 = icmp ult i64 %16, 4294967296
  %18 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 5), align 2, !tbaa !4
  %tobool629 = icmp eq i16 %18, 0
  %19 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 4), align 2, !tbaa !4
  %tobool549 = icmp eq i16 %19, 0
  %20 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 2), align 2, !tbaa !4
  %tobool395 = icmp eq i16 %20, 0
  %21 = load i16* getelementptr inbounds ([6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 1), align 2, !tbaa !4
  %tobool319 = icmp eq i16 %21, 0
  br label %for.cond205.preheader

for.body12:                                       ; preds = %if.end, %for.inc27
  %indvars.iv980 = phi i64 [ %indvars.iv.next981, %for.inc27 ], [ 0, %if.end ]
  %arrayidx17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %5, i64 0, i32 6, i64 %indvars.iv980
  %22 = load i32* %arrayidx17, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds [6 x i32]* %present, i64 0, i64 %indvars.iv980
  %23 = trunc i64 %indvars.iv980 to i32
  switch i32 %23, label %for.inc27 [
    i32 3, label %if.then15
    i32 0, label %if.then15
  ]

if.then15:                                        ; preds = %for.body12, %for.body12
  %24 = load i32* %arrayidx19, align 4, !tbaa !0
  %or = or i32 %24, %22
  br label %for.inc27

for.inc27:                                        ; preds = %for.body12, %if.then15
  %storemerge = phi i32 [ %or, %if.then15 ], [ %22, %for.body12 ]
  store i32 %storemerge, i32* %arrayidx19, align 4, !tbaa !0
  %indvars.iv.next981 = add i64 %indvars.iv980, 1
  %lftr.wideiv982 = trunc i64 %indvars.iv.next981 to i32
  %exitcond983 = icmp eq i32 %lftr.wideiv982, 6
  br i1 %exitcond983, label %for.cond202.preheader, label %for.body12

for.cond37.preheader:                             ; preds = %land.lhs.true, %for.inc198
  %indvars.iv962 = phi i64 [ %indvars.iv.next963, %for.inc198 ], [ 0, %land.lhs.true ]
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.inc195, %for.cond37.preheader
  %indvars.iv958 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next959, %for.inc195 ]
  %scevgep950 = getelementptr [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 0
  %scevgep950951 = bitcast i32* %scevgep950 to i8*
  %scevgep952 = getelementptr [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 0
  %scevgep952953 = bitcast i32* %scevgep952 to i8*
  %scevgep = getelementptr [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 0
  %scevgep943 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep943, i8* %scevgep952953, i64 16, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep950951, i8* %scevgep952953, i64 16, i32 4, i1 false)
  br label %for.body42

for.body42:                                       ; preds = %for.body42, %for.cond40.preheader
  %indvars.iv = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next, %for.body42 ]
  %arrayidx48 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  %arrayidx60 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  %25 = load i32* %arrayidx60, align 4, !tbaa !0
  %shl = shl i32 %25, 4
  %arrayidx66 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  store i32 %shl, i32* %arrayidx66, align 4, !tbaa !0
  %26 = load i32* %arrayidx48, align 4, !tbaa !0
  %arrayidx78 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  store i32 %26, i32* %arrayidx78, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  store i32 %shl, i32* %arrayidx91, align 4, !tbaa !0
  %arrayidx103 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  store i32 %26, i32* %arrayidx103, align 4, !tbaa !0
  %arrayidx116 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  store i32 %shl, i32* %arrayidx116, align 4, !tbaa !0
  %arrayidx141 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  store i32 %shl, i32* %arrayidx141, align 4, !tbaa !0
  %arrayidx153 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  store i32 %26, i32* %arrayidx153, align 4, !tbaa !0
  %arrayidx166 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  store i32 %shl, i32* %arrayidx166, align 4, !tbaa !0
  %arrayidx178 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  store i32 %26, i32* %arrayidx178, align 4, !tbaa !0
  %arrayidx191 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv962, i64 %indvars.iv958, i64 %indvars.iv
  store i32 %shl, i32* %arrayidx191, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc195, label %for.body42

for.inc195:                                       ; preds = %for.body42
  %indvars.iv.next959 = add i64 %indvars.iv958, 1
  %lftr.wideiv960 = trunc i64 %indvars.iv.next959 to i32
  %exitcond961 = icmp eq i32 %lftr.wideiv960, 4
  br i1 %exitcond961, label %for.inc198, label %for.cond40.preheader

for.inc198:                                       ; preds = %for.inc195
  %indvars.iv.next963 = add i64 %indvars.iv962, 1
  %lftr.wideiv964 = trunc i64 %indvars.iv.next963 to i32
  %exitcond965 = icmp eq i32 %lftr.wideiv964, 6
  br i1 %exitcond965, label %if.end682, label %for.cond37.preheader

for.cond205.preheader:                            ; preds = %for.inc679, %for.cond202.preheader
  %indvars.iv976 = phi i64 [ 0, %for.cond202.preheader ], [ %indvars.iv.next977, %for.inc679 ]
  br label %for.cond208.preheader

for.cond208.preheader:                            ; preds = %for.inc676, %for.cond205.preheader
  %indvars.iv972 = phi i64 [ 0, %for.cond205.preheader ], [ %indvars.iv.next973, %for.inc676 ]
  br label %for.body210

for.body210:                                      ; preds = %for.inc673, %for.cond208.preheader
  %indvars.iv966 = phi i64 [ 0, %for.cond208.preheader ], [ %indvars.iv.next967, %for.inc673 ]
  %27 = shl i64 %indvars.iv966, 2
  %28 = add nsw i64 %27, %indvars.iv972
  %arrayidx254 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  %29 = load i32* %arrayidx254, align 4, !tbaa !0
  %shl255 = shl i32 %29, 4
  br i1 %or.cond, label %if.else248, label %if.then216

if.then216:                                       ; preds = %for.body210
  %arrayidx225 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %28
  %30 = load i16* %arrayidx225, align 2, !tbaa !4
  %conv226 = sext i16 %30 to i32
  %div = sdiv i32 %shl255, %conv226
  %arrayidx232 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div, i32* %arrayidx232, align 4, !tbaa !0
  %arrayidx238 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  %31 = load i32* %arrayidx238, align 4, !tbaa !0
  %mul = mul nsw i32 %conv226, %31
  %arrayidx247 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %mul, i32* %arrayidx247, align 4, !tbaa !0
  br label %if.end282

if.else248:                                       ; preds = %for.body210
  %arrayidx257 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 0, i64 %28
  %32 = load i16* %arrayidx257, align 2, !tbaa !4
  %conv258 = sext i16 %32 to i32
  %div259 = sdiv i32 %shl255, %conv258
  %arrayidx265 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div259, i32* %arrayidx265, align 4, !tbaa !0
  %arrayidx271 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  %33 = load i32* %arrayidx271, align 4, !tbaa !0
  %mul275 = mul nsw i32 %conv258, %33
  %arrayidx281 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %mul275, i32* %arrayidx281, align 4, !tbaa !0
  br label %if.end282

if.end282:                                        ; preds = %if.else248, %if.then216
  %34 = phi i32 [ %33, %if.else248 ], [ %31, %if.then216 ]
  %35 = phi i32 [ %mul275, %if.else248 ], [ %mul, %if.then216 ]
  %36 = phi i32 [ %div259, %if.else248 ], [ %div, %if.then216 ]
  br i1 %tobool284, label %if.then285, label %if.else310

if.then285:                                       ; preds = %if.end282
  %arrayidx297 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %36, i32* %arrayidx297, align 4, !tbaa !0
  %arrayidx309 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %35, i32* %arrayidx309, align 4, !tbaa !0
  br label %if.end358

if.else310:                                       ; preds = %if.end282
  br i1 %tobool319, label %cond.false345, label %cond.true341

cond.true341:                                     ; preds = %if.else310
  %arrayidx321 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %28
  %.sink = load i16* %arrayidx321, align 2
  %conv322 = sext i16 %.sink to i32
  %div326 = sdiv i32 %shl255, %conv322
  %arrayidx332 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div326, i32* %arrayidx332, align 4, !tbaa !0
  %arrayidx343 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %28
  br label %cond.end349

cond.false345:                                    ; preds = %if.else310
  %arrayidx324 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 1, i64 %28
  %.sink991 = load i16* %arrayidx324, align 2
  %conv322992 = sext i16 %.sink991 to i32
  %div326993 = sdiv i32 %shl255, %conv322992
  %arrayidx332994 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div326993, i32* %arrayidx332994, align 4, !tbaa !0
  %arrayidx347 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 1, i64 %28
  br label %cond.end349

cond.end349:                                      ; preds = %cond.false345, %cond.true341
  %div326995 = phi i32 [ %div326, %cond.true341 ], [ %div326993, %cond.false345 ]
  %.sink683.in = phi i16* [ %arrayidx343, %cond.true341 ], [ %arrayidx347, %cond.false345 ]
  %.sink683 = load i16* %.sink683.in, align 2
  %conv344 = sext i16 %.sink683 to i32
  %mul351 = mul nsw i32 %conv344, %34
  %arrayidx357 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %mul351, i32* %arrayidx357, align 4, !tbaa !0
  br label %if.end358

if.end358:                                        ; preds = %cond.end349, %if.then285
  %37 = phi i32 [ %mul351, %cond.end349 ], [ %35, %if.then285 ]
  %38 = phi i32 [ %div326995, %cond.end349 ], [ %36, %if.then285 ]
  br i1 %tobool360, label %if.then361, label %if.else386

if.then361:                                       ; preds = %if.end358
  %arrayidx373 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %38, i32* %arrayidx373, align 4, !tbaa !0
  %arrayidx385 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %37, i32* %arrayidx385, align 4, !tbaa !0
  br label %if.end438

if.else386:                                       ; preds = %if.end358
  br i1 %tobool395, label %cond.false425, label %cond.true421

cond.true421:                                     ; preds = %if.else386
  %arrayidx398 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %28
  %.sink684 = load i16* %arrayidx398, align 2
  %conv399 = sext i16 %.sink684 to i32
  %div406 = sdiv i32 %shl255, %conv399
  %arrayidx412 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div406, i32* %arrayidx412, align 4, !tbaa !0
  %arrayidx423 = getelementptr inbounds [16 x i16]* @Quant_intra_default, i64 0, i64 %28
  br label %cond.end429

cond.false425:                                    ; preds = %if.else386
  %arrayidx402 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 2, i64 %28
  %.sink684997 = load i16* %arrayidx402, align 2
  %conv399998 = sext i16 %.sink684997 to i32
  %div406999 = sdiv i32 %shl255, %conv399998
  %arrayidx4121000 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div406999, i32* %arrayidx4121000, align 4, !tbaa !0
  %arrayidx427 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 2, i64 %28
  br label %cond.end429

cond.end429:                                      ; preds = %cond.false425, %cond.true421
  %.sink685.in = phi i16* [ %arrayidx423, %cond.true421 ], [ %arrayidx427, %cond.false425 ]
  %.sink685 = load i16* %.sink685.in, align 2
  %conv424 = sext i16 %.sink685 to i32
  %mul431 = mul nsw i32 %conv424, %34
  %arrayidx437 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %mul431, i32* %arrayidx437, align 4, !tbaa !0
  br label %if.end438

if.end438:                                        ; preds = %cond.end429, %if.then361
  br i1 %or.cond931, label %if.else478, label %if.then444

if.then444:                                       ; preds = %if.end438
  %arrayidx453 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %28
  %39 = load i16* %arrayidx453, align 2, !tbaa !4
  %conv454 = sext i16 %39 to i32
  %div455 = sdiv i32 %shl255, %conv454
  %arrayidx461 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div455, i32* %arrayidx461, align 4, !tbaa !0
  %mul471 = mul nsw i32 %conv454, %34
  %arrayidx477 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %mul471, i32* %arrayidx477, align 4, !tbaa !0
  br label %if.end512

if.else478:                                       ; preds = %if.end438
  %arrayidx487 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 3, i64 %28
  %40 = load i16* %arrayidx487, align 2, !tbaa !4
  %conv488 = sext i16 %40 to i32
  %div489 = sdiv i32 %shl255, %conv488
  %arrayidx495 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div489, i32* %arrayidx495, align 4, !tbaa !0
  %mul505 = mul nsw i32 %conv488, %34
  %arrayidx511 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %mul505, i32* %arrayidx511, align 4, !tbaa !0
  br label %if.end512

if.end512:                                        ; preds = %if.else478, %if.then444
  %41 = phi i32 [ %mul505, %if.else478 ], [ %mul471, %if.then444 ]
  %42 = phi i32 [ %div489, %if.else478 ], [ %div455, %if.then444 ]
  br i1 %tobool514, label %if.then515, label %if.else540

if.then515:                                       ; preds = %if.end512
  %arrayidx527 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %42, i32* %arrayidx527, align 4, !tbaa !0
  %arrayidx539 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %41, i32* %arrayidx539, align 4, !tbaa !0
  br label %if.end592

if.else540:                                       ; preds = %if.end512
  br i1 %tobool549, label %cond.false579, label %cond.true575

cond.true575:                                     ; preds = %if.else540
  %arrayidx552 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %28
  %.sink686 = load i16* %arrayidx552, align 2
  %conv553 = sext i16 %.sink686 to i32
  %div560 = sdiv i32 %shl255, %conv553
  %arrayidx566 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div560, i32* %arrayidx566, align 4, !tbaa !0
  %arrayidx577 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %28
  br label %cond.end583

cond.false579:                                    ; preds = %if.else540
  %arrayidx556 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 4, i64 %28
  %.sink6861001 = load i16* %arrayidx556, align 2
  %conv5531002 = sext i16 %.sink6861001 to i32
  %div5601003 = sdiv i32 %shl255, %conv5531002
  %arrayidx5661004 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div5601003, i32* %arrayidx5661004, align 4, !tbaa !0
  %arrayidx581 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 4, i64 %28
  br label %cond.end583

cond.end583:                                      ; preds = %cond.false579, %cond.true575
  %div5601005 = phi i32 [ %div560, %cond.true575 ], [ %div5601003, %cond.false579 ]
  %.sink687.in = phi i16* [ %arrayidx577, %cond.true575 ], [ %arrayidx581, %cond.false579 ]
  %.sink687 = load i16* %.sink687.in, align 2
  %conv578 = sext i16 %.sink687 to i32
  %mul585 = mul nsw i32 %conv578, %34
  %arrayidx591 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %mul585, i32* %arrayidx591, align 4, !tbaa !0
  br label %if.end592

if.end592:                                        ; preds = %cond.end583, %if.then515
  %43 = phi i32 [ %mul585, %cond.end583 ], [ %41, %if.then515 ]
  %44 = phi i32 [ %div5601005, %cond.end583 ], [ %42, %if.then515 ]
  br i1 %tobool594, label %if.then595, label %if.else620

if.then595:                                       ; preds = %if.end592
  %arrayidx607 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %44, i32* %arrayidx607, align 4, !tbaa !0
  %arrayidx619 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %43, i32* %arrayidx619, align 4, !tbaa !0
  br label %for.inc673

if.else620:                                       ; preds = %if.end592
  br i1 %tobool629, label %cond.false659, label %cond.true655

cond.true655:                                     ; preds = %if.else620
  %arrayidx632 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %28
  %.sink688 = load i16* %arrayidx632, align 2
  %conv633 = sext i16 %.sink688 to i32
  %div640 = sdiv i32 %shl255, %conv633
  %arrayidx646 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div640, i32* %arrayidx646, align 4, !tbaa !0
  %arrayidx657 = getelementptr inbounds [16 x i16]* @Quant_inter_default, i64 0, i64 %28
  br label %cond.end663

cond.false659:                                    ; preds = %if.else620
  %arrayidx636 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 5, i64 %28
  %.sink6881007 = load i16* %arrayidx636, align 2
  %conv6331008 = sext i16 %.sink6881007 to i32
  %div6401009 = sdiv i32 %shl255, %conv6331008
  %arrayidx6461010 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %div6401009, i32* %arrayidx6461010, align 4, !tbaa !0
  %arrayidx661 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 5, i64 %28
  br label %cond.end663

cond.end663:                                      ; preds = %cond.false659, %cond.true655
  %.sink689.in = phi i16* [ %arrayidx657, %cond.true655 ], [ %arrayidx661, %cond.false659 ]
  %.sink689 = load i16* %.sink689.in, align 2
  %conv658 = sext i16 %.sink689 to i32
  %mul665 = mul nsw i32 %conv658, %34
  %arrayidx671 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1, i64 %indvars.iv976, i64 %indvars.iv972, i64 %indvars.iv966
  store i32 %mul665, i32* %arrayidx671, align 4, !tbaa !0
  br label %for.inc673

for.inc673:                                       ; preds = %if.then595, %cond.end663
  %indvars.iv.next967 = add i64 %indvars.iv966, 1
  %lftr.wideiv970 = trunc i64 %indvars.iv.next967 to i32
  %exitcond971 = icmp eq i32 %lftr.wideiv970, 4
  br i1 %exitcond971, label %for.inc676, label %for.body210

for.inc676:                                       ; preds = %for.inc673
  %indvars.iv.next973 = add i64 %indvars.iv972, 1
  %lftr.wideiv974 = trunc i64 %indvars.iv.next973 to i32
  %exitcond975 = icmp eq i32 %lftr.wideiv974, 4
  br i1 %exitcond975, label %for.inc679, label %for.cond208.preheader

for.inc679:                                       ; preds = %for.inc676
  %indvars.iv.next977 = add i64 %indvars.iv976, 1
  %lftr.wideiv978 = trunc i64 %indvars.iv.next977 to i32
  %exitcond979 = icmp eq i32 %lftr.wideiv978, 6
  br i1 %exitcond979, label %if.end682, label %for.cond205.preheader

if.end682:                                        ; preds = %for.inc679, %for.inc198
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CalculateQuant8Param() #0 {
entry:
  %present = alloca i64, align 8
  %tmpcast = bitcast i64* %present to [2 x i32]*
  %0 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !3
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 9
  %1 = load i32* %seq_scaling_matrix_present_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %for.cond.preheader

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !3
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %2, i64 0, i32 5
  %3 = load i32* %pic_scaling_matrix_present_flag, align 4, !tbaa !1
  %tobool1 = icmp eq i32 %3, 0
  br i1 %tobool1, label %for.cond28.preheader, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %land.lhs.true
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %scevgep409 = getelementptr %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 10, i64 6
  %4 = bitcast i32* %scevgep409 to i64*
  %5 = load i64* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.if.end_crit_edge, %for.cond.preheader
  %storemerge = phi i64 [ %5, %for.cond.preheader ], [ 0, %if.else.if.end_crit_edge ]
  store i64 %storemerge, i64* %present, align 8
  %6 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !3
  %pic_scaling_matrix_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %6, i64 0, i32 5
  %7 = load i32* %pic_scaling_matrix_present_flag7, align 4, !tbaa !1
  %tobool8 = icmp eq i32 %7, 0
  br i1 %tobool8, label %for.cond93.preheader, label %for.body12

for.cond93.preheader:                             ; preds = %for.body12, %if.end
  %8 = load i64* %present, align 8
  %9 = trunc i64 %8 to i32
  %tobool105 = icmp ne i32 %9, 0
  %10 = load i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 0), align 2, !tbaa !4
  %tobool106 = icmp eq i16 %10, 0
  %or.cond = and i1 %tobool105, %tobool106
  %tobool175 = icmp ugt i64 %8, 4294967295
  %11 = load i16* getelementptr inbounds ([2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 1), align 2, !tbaa !4
  %tobool178 = icmp eq i16 %11, 0
  %or.cond357 = and i1 %tobool175, %tobool178
  br label %for.cond96.preheader

for.body12:                                       ; preds = %if.end, %for.body12
  %indvars.iv398 = phi i64 [ %indvars.iv.next399, %for.body12 ], [ 0, %if.end ]
  %12 = add nsw i64 %indvars.iv398, 6
  %arrayidx15 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %6, i64 0, i32 6, i64 %12
  %13 = load i32* %arrayidx15, align 4, !tbaa !0
  %arrayidx17 = getelementptr inbounds [2 x i32]* %tmpcast, i64 0, i64 %indvars.iv398
  %14 = load i32* %arrayidx17, align 4, !tbaa !0
  %or = or i32 %14, %13
  store i32 %or, i32* %arrayidx17, align 4, !tbaa !0
  %indvars.iv.next399 = add i64 %indvars.iv398, 1
  %lftr.wideiv401 = trunc i64 %indvars.iv.next399 to i32
  %exitcond402 = icmp eq i32 %lftr.wideiv401, 2
  br i1 %exitcond402, label %for.cond93.preheader, label %for.body12

for.cond28.preheader:                             ; preds = %land.lhs.true, %for.inc89
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %for.inc89 ], [ 0, %land.lhs.true ]
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.inc86, %for.cond28.preheader
  %indvars.iv376 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next377, %for.inc86 ]
  %scevgep372 = getelementptr [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 0
  %scevgep372373 = bitcast i32* %scevgep372 to i8*
  %scevgep374 = getelementptr [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 0
  %scevgep374375 = bitcast i32* %scevgep374 to i8*
  %scevgep = getelementptr [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 0
  %scevgep369 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep369, i8* %scevgep374375, i64 32, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep372373, i8* %scevgep374375, i64 32, i32 4, i1 false)
  br label %for.body33

for.body33:                                       ; preds = %for.body33, %for.cond31.preheader
  %indvars.iv = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next, %for.body33 ]
  %arrayidx51 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 %indvars.iv
  %15 = load i32* %arrayidx51, align 4, !tbaa !0
  %shl = shl i32 %15, 4
  %arrayidx57 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 %indvars.iv
  store i32 %shl, i32* %arrayidx57, align 4, !tbaa !0
  %arrayidx82 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv380, i64 %indvars.iv376, i64 %indvars.iv
  store i32 %shl, i32* %arrayidx82, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.inc86, label %for.body33

for.inc86:                                        ; preds = %for.body33
  %indvars.iv.next377 = add i64 %indvars.iv376, 1
  %lftr.wideiv378 = trunc i64 %indvars.iv.next377 to i32
  %exitcond379 = icmp eq i32 %lftr.wideiv378, 8
  br i1 %exitcond379, label %for.inc89, label %for.cond31.preheader

for.inc89:                                        ; preds = %for.inc86
  %indvars.iv.next381 = add i64 %indvars.iv380, 1
  %lftr.wideiv382 = trunc i64 %indvars.iv.next381 to i32
  %exitcond383 = icmp eq i32 %lftr.wideiv382, 6
  br i1 %exitcond383, label %if.end257, label %for.cond28.preheader

for.cond96.preheader:                             ; preds = %for.inc254, %for.cond93.preheader
  %indvars.iv394 = phi i64 [ 0, %for.cond93.preheader ], [ %indvars.iv.next395, %for.inc254 ]
  br label %for.cond99.preheader

for.cond99.preheader:                             ; preds = %for.inc251, %for.cond96.preheader
  %indvars.iv390 = phi i64 [ 0, %for.cond96.preheader ], [ %indvars.iv.next391, %for.inc251 ]
  br label %for.body101

for.body101:                                      ; preds = %for.inc248, %for.cond99.preheader
  %indvars.iv384 = phi i64 [ 0, %for.cond99.preheader ], [ %indvars.iv.next385, %for.inc248 ]
  %16 = shl i64 %indvars.iv384, 3
  %17 = add nsw i64 %16, %indvars.iv390
  %arrayidx145 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  %18 = load i32* %arrayidx145, align 4, !tbaa !0
  %shl146 = shl i32 %18, 4
  br i1 %or.cond, label %if.else139, label %if.then107

if.then107:                                       ; preds = %for.body101
  %arrayidx116 = getelementptr inbounds [64 x i16]* @Quant8_intra_default, i64 0, i64 %17
  %19 = load i16* %arrayidx116, align 2, !tbaa !4
  %conv117 = sext i16 %19 to i32
  %div = sdiv i32 %shl146, %conv117
  %arrayidx123 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  store i32 %div, i32* %arrayidx123, align 4, !tbaa !0
  %arrayidx129 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  %20 = load i32* %arrayidx129, align 4, !tbaa !0
  %mul = mul nsw i32 %conv117, %20
  %arrayidx138 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  store i32 %mul, i32* %arrayidx138, align 4, !tbaa !0
  br label %if.end173

if.else139:                                       ; preds = %for.body101
  %arrayidx148 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 0, i64 %17
  %21 = load i16* %arrayidx148, align 2, !tbaa !4
  %conv149 = sext i16 %21 to i32
  %div150 = sdiv i32 %shl146, %conv149
  %arrayidx156 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  store i32 %div150, i32* %arrayidx156, align 4, !tbaa !0
  %arrayidx162 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  %22 = load i32* %arrayidx162, align 4, !tbaa !0
  %mul166 = mul nsw i32 %conv149, %22
  %arrayidx172 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  store i32 %mul166, i32* %arrayidx172, align 4, !tbaa !0
  br label %if.end173

if.end173:                                        ; preds = %if.else139, %if.then107
  %23 = phi i32 [ %22, %if.else139 ], [ %20, %if.then107 ]
  br i1 %or.cond357, label %if.else213, label %if.then179

if.then179:                                       ; preds = %if.end173
  %arrayidx188 = getelementptr inbounds [64 x i16]* @Quant8_inter_default, i64 0, i64 %17
  %24 = load i16* %arrayidx188, align 2, !tbaa !4
  %conv189 = sext i16 %24 to i32
  %div190 = sdiv i32 %shl146, %conv189
  %arrayidx196 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  store i32 %div190, i32* %arrayidx196, align 4, !tbaa !0
  %mul206 = mul nsw i32 %conv189, %23
  %arrayidx212 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  store i32 %mul206, i32* %arrayidx212, align 4, !tbaa !0
  br label %for.inc248

if.else213:                                       ; preds = %if.end173
  %arrayidx222 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 1, i64 %17
  %25 = load i16* %arrayidx222, align 2, !tbaa !4
  %conv223 = sext i16 %25 to i32
  %div224 = sdiv i32 %shl146, %conv223
  %arrayidx230 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  store i32 %div224, i32* %arrayidx230, align 4, !tbaa !0
  %mul240 = mul nsw i32 %conv223, %23
  %arrayidx246 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %indvars.iv394, i64 %indvars.iv390, i64 %indvars.iv384
  store i32 %mul240, i32* %arrayidx246, align 4, !tbaa !0
  br label %for.inc248

for.inc248:                                       ; preds = %if.then179, %if.else213
  %indvars.iv.next385 = add i64 %indvars.iv384, 1
  %lftr.wideiv388 = trunc i64 %indvars.iv.next385 to i32
  %exitcond389 = icmp eq i32 %lftr.wideiv388, 8
  br i1 %exitcond389, label %for.inc251, label %for.body101

for.inc251:                                       ; preds = %for.inc248
  %indvars.iv.next391 = add i64 %indvars.iv390, 1
  %lftr.wideiv392 = trunc i64 %indvars.iv.next391 to i32
  %exitcond393 = icmp eq i32 %lftr.wideiv392, 8
  br i1 %exitcond393, label %for.inc254, label %for.cond99.preheader

for.inc254:                                       ; preds = %for.inc251
  %indvars.iv.next395 = add i64 %indvars.iv394, 1
  %lftr.wideiv396 = trunc i64 %indvars.iv.next395 to i32
  %exitcond397 = icmp eq i32 %lftr.wideiv396, 6
  br i1 %exitcond397, label %if.end257, label %for.cond96.preheader

if.end257:                                        ; preds = %for.inc254, %for.inc89
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
