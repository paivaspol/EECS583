; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/masks.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/masks.c\00", align 1
@xpam120 = internal unnamed_addr constant [23 x [23 x i32]] [[23 x i32] [i32 3, i32 -3, i32 0, i32 0, i32 -4, i32 1, i32 -3, i32 -1, i32 -2, i32 -3, i32 -2, i32 -1, i32 1, i32 -1, i32 -3, i32 1, i32 1, i32 0, i32 -7, i32 -4, i32 1, i32 0, i32 0], [23 x i32] [i32 -3, i32 9, i32 -7, i32 -7, i32 -6, i32 -4, i32 -4, i32 -3, i32 -7, i32 -7, i32 -6, i32 -5, i32 -4, i32 -7, i32 -4, i32 0, i32 -3, i32 -3, i32 -8, i32 -1, i32 -4, i32 -6, i32 0], [23 x i32] [i32 0, i32 -7, i32 5, i32 3, i32 -7, i32 0, i32 0, i32 -3, i32 -1, i32 -5, i32 -4, i32 2, i32 -3, i32 1, i32 -3, i32 0, i32 -1, i32 -3, i32 -8, i32 -5, i32 5, i32 3, i32 0], [23 x i32] [i32 0, i32 -7, i32 3, i32 5, i32 -7, i32 -1, i32 -1, i32 -3, i32 -1, i32 -4, i32 -3, i32 1, i32 -2, i32 2, i32 -3, i32 -1, i32 -2, i32 -3, i32 -8, i32 -5, i32 3, i32 5, i32 0], [23 x i32] [i32 -4, i32 -6, i32 -7, i32 -7, i32 8, i32 -5, i32 -3, i32 0, i32 -7, i32 0, i32 -1, i32 -4, i32 -5, i32 -6, i32 -5, i32 -3, i32 -4, i32 -3, i32 -1, i32 4, i32 -4, i32 -5, i32 0], [23 x i32] [i32 1, i32 -4, i32 0, i32 -1, i32 -5, i32 5, i32 -4, i32 -4, i32 -3, i32 -5, i32 -4, i32 0, i32 -2, i32 -3, i32 -4, i32 1, i32 -1, i32 -2, i32 -8, i32 -6, i32 1, i32 -1, i32 0], [23 x i32] [i32 -3, i32 -4, i32 0, i32 -1, i32 -3, i32 -4, i32 7, i32 -4, i32 -2, i32 -3, i32 -4, i32 2, i32 -1, i32 3, i32 1, i32 -2, i32 -3, i32 -3, i32 -3, i32 -1, i32 2, i32 2, i32 0], [23 x i32] [i32 -1, i32 -3, i32 -3, i32 -3, i32 0, i32 -4, i32 -4, i32 6, i32 -3, i32 1, i32 1, i32 -2, i32 -3, i32 -3, i32 -2, i32 -2, i32 0, i32 3, i32 -6, i32 -2, i32 -2, i32 -2, i32 0], [23 x i32] [i32 -2, i32 -7, i32 -1, i32 -1, i32 -7, i32 -3, i32 -2, i32 -3, i32 5, i32 -4, i32 0, i32 1, i32 -2, i32 0, i32 2, i32 -1, i32 -1, i32 -4, i32 -5, i32 -5, i32 1, i32 0, i32 0], [23 x i32] [i32 -3, i32 -7, i32 -5, i32 -4, i32 0, i32 -5, i32 -3, i32 1, i32 -4, i32 5, i32 3, i32 -4, i32 -3, i32 -2, i32 -4, i32 -4, i32 -3, i32 1, i32 -3, i32 -2, i32 -3, i32 -2, i32 0], [23 x i32] [i32 -2, i32 -6, i32 -4, i32 -3, i32 -1, i32 -4, i32 -4, i32 1, i32 0, i32 3, i32 8, i32 -3, i32 -3, i32 -1, i32 -1, i32 -2, i32 -1, i32 1, i32 -6, i32 -4, i32 -3, i32 -1, i32 0], [23 x i32] [i32 -1, i32 -5, i32 2, i32 1, i32 -4, i32 0, i32 2, i32 -2, i32 1, i32 -4, i32 -3, i32 4, i32 -2, i32 0, i32 -1, i32 1, i32 0, i32 -3, i32 -4, i32 -2, i32 4, i32 1, i32 0], [23 x i32] [i32 1, i32 -4, i32 -3, i32 -2, i32 -5, i32 -2, i32 -1, i32 -3, i32 -2, i32 -3, i32 -3, i32 -2, i32 6, i32 0, i32 -1, i32 1, i32 -1, i32 -2, i32 -7, i32 -6, i32 -1, i32 0, i32 0], [23 x i32] [i32 -1, i32 -7, i32 1, i32 2, i32 -6, i32 -3, i32 3, i32 -3, i32 0, i32 -2, i32 -1, i32 0, i32 0, i32 6, i32 1, i32 -2, i32 -2, i32 -3, i32 -6, i32 -5, i32 1, i32 5, i32 0], [23 x i32] [i32 -3, i32 -4, i32 -3, i32 -3, i32 -5, i32 -4, i32 1, i32 -2, i32 2, i32 -4, i32 -1, i32 -1, i32 -1, i32 1, i32 6, i32 -1, i32 -2, i32 -3, i32 1, i32 -5, i32 -1, i32 0, i32 0], [23 x i32] [i32 1, i32 0, i32 0, i32 -1, i32 -3, i32 1, i32 -2, i32 -2, i32 -1, i32 -4, i32 -2, i32 1, i32 1, i32 -2, i32 -1, i32 3, i32 2, i32 -2, i32 -2, i32 -3, i32 1, i32 0, i32 0], [23 x i32] [i32 1, i32 -3, i32 -1, i32 -2, i32 -4, i32 -1, i32 -3, i32 0, i32 -1, i32 -3, i32 -1, i32 0, i32 -1, i32 -2, i32 -2, i32 2, i32 4, i32 0, i32 -6, i32 -3, i32 1, i32 -1, i32 0], [23 x i32] [i32 0, i32 -3, i32 -3, i32 -3, i32 -3, i32 -2, i32 -3, i32 3, i32 -4, i32 1, i32 1, i32 -3, i32 -2, i32 -3, i32 -3, i32 -2, i32 0, i32 5, i32 -8, i32 -3, i32 -2, i32 -2, i32 0], [23 x i32] [i32 -7, i32 -8, i32 -8, i32 -8, i32 -1, i32 -8, i32 -3, i32 -6, i32 -5, i32 -3, i32 -6, i32 -4, i32 -7, i32 -6, i32 1, i32 -2, i32 -6, i32 -8, i32 12, i32 -2, i32 -5, i32 -6, i32 0], [23 x i32] [i32 -4, i32 -1, i32 -5, i32 -5, i32 4, i32 -6, i32 -1, i32 -2, i32 -5, i32 -2, i32 -4, i32 -2, i32 -6, i32 -5, i32 -5, i32 -3, i32 -3, i32 -3, i32 -2, i32 8, i32 -2, i32 -4, i32 0], [23 x i32] [i32 1, i32 -4, i32 5, i32 3, i32 -4, i32 1, i32 2, i32 -2, i32 1, i32 -3, i32 -3, i32 4, i32 -1, i32 1, i32 -1, i32 1, i32 1, i32 -2, i32 -5, i32 -2, i32 6, i32 4, i32 0], [23 x i32] [i32 0, i32 -6, i32 3, i32 5, i32 -5, i32 -1, i32 2, i32 -2, i32 0, i32 -2, i32 -1, i32 1, i32 0, i32 5, i32 0, i32 0, i32 -1, i32 -2, i32 -6, i32 -4, i32 4, i32 6, i32 0], [23 x i32] zeroinitializer], align 16
@Alphabet_iupac = external global i32
@Alphabet_size = external global i32

; Function Attrs: nounwind optsize ssp uwtable
define i32 @XNU(i8* nocapture %dsq, i32 %len) #0 {
  tail call void @llvm.dbg.value(metadata i8* %dsq, i64 0, metadata !13, metadata !135), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !14, metadata !135), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !26, metadata !135), !dbg !138
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !27, metadata !135), !dbg !139
  tail call void @llvm.dbg.value(metadata double 1.000000e-02, i64 0, metadata !28, metadata !135), !dbg !140
  tail call void @llvm.dbg.value(metadata double 3.465740e-01, i64 0, metadata !31, metadata !135), !dbg !141
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, i64 0, metadata !32, metadata !135), !dbg !142
  tail call void @llvm.dbg.value(metadata double 6.640000e-01, i64 0, metadata !33, metadata !135), !dbg !143
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !34, metadata !135), !dbg !144
  %1 = icmp eq i32 %len, 0, !dbg !145
  br i1 %1, label %66, label %2, !dbg !147

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %len, 1, !dbg !148
  %4 = sext i32 %3 to i64, !dbg !148
  %5 = shl nsw i64 %4, 2, !dbg !148
  %6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 100, i64 %5) #6, !dbg !148
  %7 = bitcast i8* %6 to i32*, !dbg !148
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !29, metadata !135), !dbg !149
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !15, metadata !135), !dbg !150
  %8 = icmp slt i32 %len, 1, !dbg !151
  br i1 %8, label %.preheader4, label %.lr.ph26, !dbg !154

.lr.ph26:                                         ; preds = %2
  %scevgep = getelementptr i8* %6, i64 4
  %9 = add i32 %len, -1, !dbg !154
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2, !dbg !154
  %12 = add nuw nsw i64 %11, 4, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 0, i64 %12, i32 4, i1 false), !dbg !155
  br label %.preheader4, !dbg !154

.preheader4:                                      ; preds = %.lr.ph26, %2
  %13 = sext i32 %len to i64, !dbg !156
  br label %14, !dbg !156

.preheader:                                       ; preds = %.backedge
  br i1 %8, label %._crit_edge, label %.lr.ph, !dbg !158

; <label>:14                                      ; preds = %.backedge, %.preheader4
  %indvars.iv37 = phi i64 [ 1, %.preheader4 ], [ %indvars.iv.next38, %.backedge ]
  %indvars.iv29 = phi i64 [ 2, %.preheader4 ], [ %indvars.iv.next30, %.backedge ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !21, metadata !135), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !18, metadata !135), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !20, metadata !135), !dbg !162
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !156
  %15 = icmp slt i64 %indvars.iv37, %13, !dbg !163
  br i1 %15, label %.lr.ph16.preheader, label %.backedge, !dbg !168

.lr.ph16.preheader:                               ; preds = %14
  %16 = trunc i64 %indvars.iv37 to i32, !dbg !168
  br label %.lr.ph16, !dbg !169

.lr.ph16:                                         ; preds = %.lr.ph16.preheader, %45
  %indvars.iv31 = phi i64 [ %indvars.iv.next32.pre-phi, %45 ], [ %indvars.iv29, %.lr.ph16.preheader ]
  %sum.013 = phi i32 [ %.sum.1, %45 ], [ 0, %.lr.ph16.preheader ]
  %beg.012 = phi i32 [ %.beg.1, %45 ], [ %16, %.lr.ph16.preheader ]
  %end.011 = phi i32 [ %.end.2, %45 ], [ 0, %.lr.ph16.preheader ]
  %top.010 = phi i32 [ %.top.2, %45 ], [ 0, %.lr.ph16.preheader ]
  %17 = sub nsw i64 %indvars.iv31, %indvars.iv37, !dbg !169
  %18 = getelementptr inbounds i8* %dsq, i64 %17, !dbg !171
  %19 = load i8* %18, align 1, !dbg !171, !tbaa !172
  %20 = sext i8 %19 to i64, !dbg !175
  %21 = getelementptr inbounds i8* %dsq, i64 %indvars.iv31, !dbg !176
  %22 = load i8* %21, align 1, !dbg !176, !tbaa !172
  %23 = sext i8 %22 to i64, !dbg !175
  %24 = getelementptr inbounds [23 x [23 x i32]]* @xpam120, i64 0, i64 %23, i64 %20, !dbg !175
  %25 = load i32* %24, align 4, !dbg !175, !tbaa !177
  %26 = add nsw i32 %25, %sum.013, !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !18, metadata !135), !dbg !161
  %27 = icmp sgt i32 %26, %top.010, !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !21, metadata !135), !dbg !160
  %.top.0 = select i1 %27, i32 %26, i32 %top.010, !dbg !182
  %28 = trunc i64 %indvars.iv31 to i32, !dbg !182
  %i.1.end.0 = select i1 %27, i32 %28, i32 %end.011, !dbg !182
  %29 = icmp sgt i32 %.top.0, 20, !dbg !183
  %30 = sub nsw i32 %.top.0, %26
  %31 = icmp sgt i32 %30, 14, !dbg !185
  %or.cond = and i1 %29, %31, !dbg !186
  br i1 %or.cond, label %.preheader2, label %42, !dbg !186

.preheader2:                                      ; preds = %.lr.ph16
  %32 = icmp sgt i32 %beg.012, %i.1.end.0, !dbg !187
  br i1 %32, label %._crit_edge9, label %.lr.ph8, !dbg !191

.lr.ph8:                                          ; preds = %.preheader2
  %33 = sext i32 %beg.012 to i64
  %34 = sext i32 %i.1.end.0 to i64, !dbg !191
  br label %35, !dbg !191

; <label>:35                                      ; preds = %35, %.lr.ph8
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %35 ], [ %33, %.lr.ph8 ]
  %36 = sub nsw i64 %indvars.iv27, %indvars.iv37, !dbg !192
  %37 = getelementptr inbounds i32* %7, i64 %36, !dbg !193
  store i32 1, i32* %37, align 4, !dbg !194, !tbaa !177
  %38 = getelementptr inbounds i32* %7, i64 %indvars.iv27, !dbg !195
  store i32 1, i32* %38, align 4, !dbg !196, !tbaa !177
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1, !dbg !191
  %39 = icmp slt i64 %indvars.iv27, %34, !dbg !187
  br i1 %39, label %35, label %._crit_edge9, !dbg !191

._crit_edge9:                                     ; preds = %35, %.preheader2
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !21, metadata !135), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !18, metadata !135), !dbg !161
  %40 = add nuw nsw i64 %indvars.iv31, 1, !dbg !197
  %41 = trunc i64 %40 to i32, !dbg !198
  br label %45, !dbg !198

; <label>:42                                      ; preds = %.lr.ph16
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !21, metadata !135), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !18, metadata !135), !dbg !161
  %43 = add nuw nsw i64 %indvars.iv31, 1, !dbg !199
  %..top.0 = select i1 %31, i32 0, i32 %.top.0, !dbg !202
  %44 = trunc i64 %43 to i32, !dbg !202
  %.i.1.end.0 = select i1 %31, i32 %44, i32 %i.1.end.0, !dbg !202
  %.beg.0 = select i1 %31, i32 %44, i32 %beg.012, !dbg !202
  %. = select i1 %31, i32 0, i32 %26, !dbg !202
  br label %45, !dbg !202

; <label>:45                                      ; preds = %42, %._crit_edge9
  %.pre-phi = phi i32 [ %44, %42 ], [ %41, %._crit_edge9 ], !dbg !203
  %indvars.iv.next32.pre-phi = phi i64 [ %43, %42 ], [ %40, %._crit_edge9 ], !dbg !168
  %top.2 = phi i32 [ %..top.0, %42 ], [ 0, %._crit_edge9 ]
  %end.2 = phi i32 [ %.i.1.end.0, %42 ], [ %41, %._crit_edge9 ]
  %beg.1 = phi i32 [ %.beg.0, %42 ], [ %41, %._crit_edge9 ]
  %sum.1 = phi i32 [ %., %42 ], [ 0, %._crit_edge9 ]
  %46 = icmp slt i32 %sum.1, 0, !dbg !204
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !21, metadata !135), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !18, metadata !135), !dbg !161
  %.top.2 = select i1 %46, i32 0, i32 %top.2, !dbg !203
  %.end.2 = select i1 %46, i32 %.pre-phi, i32 %end.2, !dbg !203
  %.beg.1 = select i1 %46, i32 %.pre-phi, i32 %beg.1, !dbg !203
  %.sum.1 = select i1 %46, i32 0, i32 %sum.1, !dbg !203
  %exitcond34 = icmp eq i32 %28, %len, !dbg !168
  br i1 %exitcond34, label %._crit_edge17, label %.lr.ph16, !dbg !168

._crit_edge17:                                    ; preds = %45
  %47 = icmp slt i32 %.top.2, 21, !dbg !206
  %48 = icmp sgt i32 %.beg.1, %.end.2, !dbg !208
  %or.cond44 = or i1 %47, %48, !dbg !212
  br i1 %or.cond44, label %.backedge, label %.lr.ph22, !dbg !212

.backedge:                                        ; preds = %51, %._crit_edge17, %14
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !dbg !156
  %exitcond39 = icmp eq i64 %indvars.iv.next38, 5, !dbg !156
  br i1 %exitcond39, label %.preheader, label %14, !dbg !156

.lr.ph22:                                         ; preds = %._crit_edge17
  %49 = sext i32 %.beg.1 to i64
  %50 = sext i32 %.end.2 to i64, !dbg !213
  br label %51, !dbg !213

; <label>:51                                      ; preds = %51, %.lr.ph22
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %51 ], [ %49, %.lr.ph22 ]
  %52 = sub nsw i64 %indvars.iv35, %indvars.iv37, !dbg !214
  %53 = getelementptr inbounds i32* %7, i64 %52, !dbg !215
  store i32 1, i32* %53, align 4, !dbg !216, !tbaa !177
  %54 = getelementptr inbounds i32* %7, i64 %indvars.iv35, !dbg !217
  store i32 1, i32* %54, align 4, !dbg !218, !tbaa !177
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1, !dbg !213
  %55 = icmp slt i64 %indvars.iv35, %50, !dbg !208
  br i1 %55, label %51, label %.backedge, !dbg !213

.lr.ph:                                           ; preds = %.preheader, %65
  %indvars.iv = phi i64 [ %indvars.iv.next, %65 ], [ 1, %.preheader ]
  %xnum.06 = phi i32 [ %xnum.1, %65 ], [ 0, %.preheader ]
  %56 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !219
  %57 = load i32* %56, align 4, !dbg !219, !tbaa !177
  %58 = icmp eq i32 %57, 0, !dbg !219
  br i1 %58, label %65, label %59, !dbg !222

; <label>:59                                      ; preds = %.lr.ph
  %60 = add nsw i32 %xnum.06, 1, !dbg !223
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !34, metadata !135), !dbg !144
  %61 = load i32* @Alphabet_iupac, align 4, !dbg !225, !tbaa !177
  %62 = add i32 %61, 255, !dbg !226
  %63 = trunc i32 %62 to i8, !dbg !225
  %64 = getelementptr inbounds i8* %dsq, i64 %indvars.iv, !dbg !227
  store i8 %63, i8* %64, align 1, !dbg !228, !tbaa !172
  br label %65, !dbg !229

; <label>:65                                      ; preds = %.lr.ph, %59
  %xnum.1 = phi i32 [ %60, %59 ], [ %xnum.06, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !158
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !158
  %exitcond = icmp eq i32 %lftr.wideiv, %len, !dbg !158
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !158

._crit_edge:                                      ; preds = %65, %.preheader
  %xnum.0.lcssa = phi i32 [ 0, %.preheader ], [ %xnum.1, %65 ]
  tail call void @free(i8* %6) #7, !dbg !230
  br label %66, !dbg !231

; <label>:66                                      ; preds = %0, %._crit_edge
  %.0 = phi i32 [ %xnum.0.lcssa, %._crit_edge ], [ 0, %0 ]
  ret i32 %.0, !dbg !232
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define float @TraceScoreCorrection(%struct.plan7_s* %hmm, %struct.p7trace_s* readonly %tr, i8* nocapture readonly %dsq) #0 {
  %p = alloca [20 x float], align 16
  %sc = alloca [24 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct.plan7_s* %hmm, i64 0, metadata !110, metadata !135), !dbg !233
  tail call void @llvm.dbg.value(metadata %struct.p7trace_s* %tr, i64 0, metadata !111, metadata !135), !dbg !234
  tail call void @llvm.dbg.value(metadata i8* %dsq, i64 0, metadata !112, metadata !135), !dbg !235
  %1 = bitcast [20 x float]* %p to i8*, !dbg !236
  call void @llvm.lifetime.start(i64 80, i8* %1) #4, !dbg !236
  tail call void @llvm.dbg.declare(metadata [20 x float]* %p, metadata !113, metadata !135), !dbg !237
  %2 = bitcast [24 x i32]* %sc to i8*, !dbg !238
  call void @llvm.lifetime.start(i64 96, i8* %2) #4, !dbg !238
  tail call void @llvm.dbg.declare(metadata [24 x i32]* %sc, metadata !114, metadata !135), !dbg !239
  %3 = icmp eq %struct.p7trace_s* %tr, null, !dbg !240
  br i1 %3, label %90, label %4, !dbg !242

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds [20 x float]* %p, i64 0, i64 0, !dbg !243
  %6 = load i32* @Alphabet_size, align 4, !dbg !244, !tbaa !177
  call void @FSet(float* %5, i32 %6, float 0.000000e+00) #6, !dbg !245
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !119, metadata !135), !dbg !246
  %7 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0, !dbg !247
  %8 = load i32* %7, align 4, !dbg !247, !tbaa !250
  %9 = icmp sgt i32 %8, 0, !dbg !253
  br i1 %9, label %.lr.ph13, label %._crit_edge14, !dbg !254

.lr.ph13:                                         ; preds = %4
  %10 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !255
  %11 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !257
  %12 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !258
  %13 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !259
  br label %14, !dbg !254

; <label>:14                                      ; preds = %.lr.ph13, %36
  %indvars.iv21 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next22, %36 ]
  %15 = load i8** %10, align 8, !dbg !255, !tbaa !261
  %16 = getelementptr inbounds i8* %15, i64 %indvars.iv21, !dbg !262
  %17 = load i8* %16, align 1, !dbg !262, !tbaa !172
  switch i8 %17, label %36 [
    i8 1, label %18
    i8 3, label %27
  ], !dbg !263

; <label>:18                                      ; preds = %14
  %19 = load i32** %11, align 8, !dbg !257, !tbaa !264
  %20 = getelementptr inbounds i32* %19, i64 %indvars.iv21, !dbg !265
  %21 = load i32* %20, align 4, !dbg !265, !tbaa !177
  %22 = sext i32 %21 to i64, !dbg !266
  %23 = load float*** %12, align 8, !dbg !258, !tbaa !267
  %24 = getelementptr inbounds float** %23, i64 %22, !dbg !266
  %25 = load float** %24, align 8, !dbg !266, !tbaa !270
  %26 = load i32* @Alphabet_size, align 4, !dbg !271, !tbaa !177
  call void @FAdd(float* %5, float* %25, i32 %26) #6, !dbg !272
  br label %36, !dbg !272

; <label>:27                                      ; preds = %14
  %28 = load i32** %11, align 8, !dbg !273, !tbaa !264
  %29 = getelementptr inbounds i32* %28, i64 %indvars.iv21, !dbg !274
  %30 = load i32* %29, align 4, !dbg !274, !tbaa !177
  %31 = sext i32 %30 to i64, !dbg !275
  %32 = load float*** %13, align 8, !dbg !259, !tbaa !276
  %33 = getelementptr inbounds float** %32, i64 %31, !dbg !275
  %34 = load float** %33, align 8, !dbg !275, !tbaa !270
  %35 = load i32* @Alphabet_size, align 4, !dbg !277, !tbaa !177
  call void @FAdd(float* %5, float* %34, i32 %35) #6, !dbg !278
  br label %36, !dbg !278

; <label>:36                                      ; preds = %14, %18, %27
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !254
  %37 = load i32* %7, align 4, !dbg !247, !tbaa !250
  %38 = sext i32 %37 to i64, !dbg !253
  %39 = icmp slt i64 %indvars.iv.next22, %38, !dbg !253
  br i1 %39, label %14, label %._crit_edge14, !dbg !254

._crit_edge14:                                    ; preds = %36, %4
  %40 = load i32* @Alphabet_size, align 4, !dbg !279, !tbaa !177
  call void @FNorm(float* %5, i32 %40) #6, !dbg !280
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !118, metadata !135), !dbg !281
  %41 = load i32* @Alphabet_size, align 4, !dbg !282, !tbaa !177
  %42 = icmp sgt i32 %41, 0, !dbg !285
  br i1 %42, label %.lr.ph9, label %.preheader1, !dbg !286

.preheader1:                                      ; preds = %.lr.ph9, %._crit_edge14
  %.lcssa = phi i32 [ %41, %._crit_edge14 ], [ %53, %.lr.ph9 ]
  %43 = load i32* @Alphabet_iupac, align 4, !dbg !287, !tbaa !177
  %44 = icmp slt i32 %.lcssa, %43, !dbg !290
  br i1 %44, label %.lr.ph6, label %.preheader, !dbg !291

.lr.ph6:                                          ; preds = %.preheader1
  %45 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0, !dbg !292
  %46 = sext i32 %.lcssa to i64
  br label %62, !dbg !291

.lr.ph9:                                          ; preds = %._crit_edge14, %.lr.ph9
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %.lr.ph9 ], [ 0, %._crit_edge14 ]
  %47 = getelementptr inbounds [20 x float]* %p, i64 0, i64 %indvars.iv19, !dbg !293
  %48 = load float* %47, align 4, !dbg !293, !tbaa !294
  %49 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv19, !dbg !295
  %50 = load float* %49, align 4, !dbg !295, !tbaa !294
  %51 = call i32 @Prob2Score(float %48, float %50) #6, !dbg !296
  %52 = getelementptr inbounds [24 x i32]* %sc, i64 0, i64 %indvars.iv19, !dbg !297
  store i32 %51, i32* %52, align 4, !dbg !298, !tbaa !177
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !286
  %53 = load i32* @Alphabet_size, align 4, !dbg !282, !tbaa !177
  %54 = sext i32 %53 to i64, !dbg !285
  %55 = icmp slt i64 %indvars.iv.next20, %54, !dbg !285
  br i1 %55, label %.lr.ph9, label %.preheader1, !dbg !286

.preheader:                                       ; preds = %62, %.preheader1
  %56 = load i32* %7, align 4, !dbg !299, !tbaa !250
  %57 = icmp sgt i32 %56, 0, !dbg !302
  br i1 %57, label %.lr.ph, label %._crit_edge, !dbg !303

.lr.ph:                                           ; preds = %.preheader
  %58 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !304
  %59 = load i8** %58, align 8, !dbg !304, !tbaa !261
  %60 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !306
  %61 = sext i32 %56 to i64, !dbg !303
  br label %69, !dbg !303

; <label>:62                                      ; preds = %.lr.ph6, %62
  %indvars.iv17 = phi i64 [ %46, %.lr.ph6 ], [ %indvars.iv.next18, %62 ]
  %63 = trunc i64 %indvars.iv17 to i32, !dbg !307
  %64 = call i32 @DegenerateSymbolScore(float* %5, float* %45, i32 %63) #6, !dbg !307
  %65 = getelementptr inbounds [24 x i32]* %sc, i64 0, i64 %indvars.iv17, !dbg !308
  store i32 %64, i32* %65, align 4, !dbg !309, !tbaa !177
  %indvars.iv.next18 = add nsw i64 %indvars.iv17, 1, !dbg !291
  %66 = load i32* @Alphabet_iupac, align 4, !dbg !287, !tbaa !177
  %67 = sext i32 %66 to i64, !dbg !290
  %68 = icmp slt i64 %indvars.iv.next18, %67, !dbg !290
  br i1 %68, label %62, label %.preheader, !dbg !291

; <label>:69                                      ; preds = %.lr.ph, %83
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %83 ]
  %score.04 = phi i32 [ 0, %.lr.ph ], [ %score.1, %83 ]
  %70 = getelementptr inbounds i8* %59, i64 %indvars.iv, !dbg !310
  %71 = load i8* %70, align 1, !dbg !310, !tbaa !172
  switch i8 %71, label %83 [
    i8 1, label %72
    i8 3, label %72
  ], !dbg !311

; <label>:72                                      ; preds = %69, %69
  %73 = load i32** %60, align 8, !dbg !306, !tbaa !312
  %74 = getelementptr inbounds i32* %73, i64 %indvars.iv, !dbg !313
  %75 = load i32* %74, align 4, !dbg !313, !tbaa !177
  %76 = sext i32 %75 to i64, !dbg !314
  %77 = getelementptr inbounds i8* %dsq, i64 %76, !dbg !314
  %78 = load i8* %77, align 1, !dbg !314, !tbaa !172
  %79 = sext i8 %78 to i64, !dbg !315
  %80 = getelementptr inbounds [24 x i32]* %sc, i64 0, i64 %79, !dbg !315
  %81 = load i32* %80, align 4, !dbg !315, !tbaa !177
  %82 = add nsw i32 %81, %score.04, !dbg !316
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !120, metadata !135), !dbg !317
  br label %83, !dbg !318

; <label>:83                                      ; preds = %69, %72
  %score.1 = phi i32 [ %82, %72 ], [ %score.04, %69 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !303
  %84 = icmp slt i64 %indvars.iv.next, %61, !dbg !302
  br i1 %84, label %69, label %._crit_edge, !dbg !303

._crit_edge:                                      ; preds = %83, %.preheader
  %score.0.lcssa = phi i32 [ 0, %.preheader ], [ %score.1, %83 ]
  %85 = sitofp i32 %score.0.lcssa to double, !dbg !319
  %86 = fadd double %85, -8.000000e+03, !dbg !319
  %87 = fptosi double %86 to i32, !dbg !319
  call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !120, metadata !135), !dbg !317
  %88 = call i32 @ILogsum(i32 0, i32 %87) #6, !dbg !320
  %89 = call float @Scorify(i32 %88) #6, !dbg !321
  br label %90, !dbg !322

; <label>:90                                      ; preds = %0, %._crit_edge
  %.0 = phi float [ %89, %._crit_edge ], [ 0.000000e+00, %0 ]
  call void @llvm.lifetime.end(i64 96, i8* %2) #4, !dbg !323
  call void @llvm.lifetime.end(i64 80, i8* %1) #4, !dbg !323
  ret float %.0, !dbg !323
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #2

; Function Attrs: optsize
declare void @FAdd(float*, float*, i32) #2

; Function Attrs: optsize
declare void @FNorm(float*, i32) #2

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #2

; Function Attrs: optsize
declare i32 @DegenerateSymbolScore(float*, float*, i32) #2

; Function Attrs: optsize
declare float @Scorify(i32) #2

; Function Attrs: optsize
declare i32 @ILogsum(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @SantaCruzCorrection(%struct.plan7_s* nocapture readnone %hmm, %struct.p7trace_s* nocapture readnone %tr, i8* nocapture readnone %dsq) #5 {
  tail call void @llvm.dbg.value(metadata %struct.plan7_s* %hmm, i64 0, metadata !123, metadata !135), !dbg !324
  tail call void @llvm.dbg.value(metadata %struct.p7trace_s* %tr, i64 0, metadata !124, metadata !135), !dbg !325
  tail call void @llvm.dbg.value(metadata i8* %dsq, i64 0, metadata !125, metadata !135), !dbg !326
  ret float 0.000000e+00, !dbg !327
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!131, !132, !133}
!llvm.ident = !{!134}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !126, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/masks.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!6 = !{!7, !35, !121}
!7 = !DISubprogram(name: "XNU", scope: !1, file: !1, line: 84, type: !8, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @XNU, variables: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{!4, !10, !4}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dsq", arg: 1, scope: !7, file: !1, line: 84, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !7, file: !1, line: 84, type: !4)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !7, file: !1, line: 86, type: !4)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !7, file: !1, line: 86, type: !4)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "off", scope: !7, file: !1, line: 86, type: !4)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !7, file: !1, line: 86, type: !4)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "beg", scope: !7, file: !1, line: 86, type: !4)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !7, file: !1, line: 86, type: !4)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "top", scope: !7, file: !1, line: 86, type: !4)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "topcut", scope: !7, file: !1, line: 87, type: !4)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fallcut", scope: !7, file: !1, line: 87, type: !4)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s0", scope: !7, file: !1, line: 88, type: !25)
!25 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "noff", scope: !7, file: !1, line: 89, type: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mcut", scope: !7, file: !1, line: 90, type: !4)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pcut", scope: !7, file: !1, line: 91, type: !25)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hit", scope: !7, file: !1, line: 92, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lambda", scope: !7, file: !1, line: 93, type: !25)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "K", scope: !7, file: !1, line: 94, type: !25)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "H", scope: !7, file: !1, line: 95, type: !25)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xnum", scope: !7, file: !1, line: 96, type: !4)
!35 = !DISubprogram(name: "TraceScoreCorrection", scope: !1, file: !1, line: 168, type: !36, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.plan7_s*, %struct.p7trace_s*, i8*)* @TraceScoreCorrection, variables: !109)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !39, !102, !10}
!38 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "plan7_s", file: !41, line: 101, size: 3712, align: 64, elements: !42)
!41 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/structs.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !68, !69, !70, !75, !76, !77, !81, !82, !84, !85, !86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 113, baseType: !10, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !40, file: !41, line: 114, baseType: !10, size: 64, align: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !40, file: !41, line: 115, baseType: !10, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !40, file: !41, line: 116, baseType: !10, size: 64, align: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !40, file: !41, line: 117, baseType: !10, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ca", scope: !40, file: !41, line: 118, baseType: !10, size: 64, align: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "comlog", scope: !40, file: !41, line: 119, baseType: !10, size: 64, align: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !40, file: !41, line: 120, baseType: !4, size: 32, align: 32, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !40, file: !41, line: 121, baseType: !10, size: 64, align: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !40, file: !41, line: 122, baseType: !30, size: 64, align: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !40, file: !41, line: 123, baseType: !4, size: 32, align: 32, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tpri", scope: !40, file: !41, line: 134, baseType: !30, size: 64, align: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "mpri", scope: !40, file: !41, line: 135, baseType: !30, size: 64, align: 64, offset: 768)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ipri", scope: !40, file: !41, line: 136, baseType: !30, size: 64, align: 64, offset: 832)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !40, file: !41, line: 144, baseType: !38, size: 32, align: 32, offset: 896)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !40, file: !41, line: 144, baseType: !38, size: 32, align: 32, offset: 928)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !40, file: !41, line: 145, baseType: !38, size: 32, align: 32, offset: 960)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !40, file: !41, line: 145, baseType: !38, size: 32, align: 32, offset: 992)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !40, file: !41, line: 146, baseType: !38, size: 32, align: 32, offset: 1024)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !40, file: !41, line: 146, baseType: !38, size: 32, align: 32, offset: 1056)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !40, file: !41, line: 155, baseType: !4, size: 32, align: 32, offset: 1088)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !40, file: !41, line: 156, baseType: !65, size: 64, align: 64, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !40, file: !41, line: 157, baseType: !65, size: 64, align: 64, offset: 1216)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !40, file: !41, line: 158, baseType: !65, size: 64, align: 64, offset: 1280)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "tbd1", scope: !40, file: !41, line: 159, baseType: !38, size: 32, align: 32, offset: 1344)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "xt", scope: !40, file: !41, line: 168, baseType: !71, size: 256, align: 32, offset: 1376)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, align: 32, elements: !72)
!72 = !{!73, !74}
!73 = !DISubrange(count: 4)
!74 = !DISubrange(count: 2)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !40, file: !41, line: 169, baseType: !66, size: 64, align: 64, offset: 1664)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !40, file: !41, line: 170, baseType: !66, size: 64, align: 64, offset: 1728)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !40, file: !41, line: 174, baseType: !78, size: 640, align: 32, offset: 1792)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 640, align: 32, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 20)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !40, file: !41, line: 175, baseType: !38, size: 32, align: 32, offset: 2432)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !40, file: !41, line: 197, baseType: !83, size: 64, align: 64, offset: 2496)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "msc", scope: !40, file: !41, line: 198, baseType: !83, size: 64, align: 64, offset: 2560)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "isc", scope: !40, file: !41, line: 199, baseType: !83, size: 64, align: 64, offset: 2624)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "xsc", scope: !40, file: !41, line: 200, baseType: !87, size: 256, align: 32, offset: 2688)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 32, elements: !72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "bsc", scope: !40, file: !41, line: 201, baseType: !30, size: 64, align: 64, offset: 2944)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "esc", scope: !40, file: !41, line: 202, baseType: !30, size: 64, align: 64, offset: 3008)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_mem", scope: !40, file: !41, line: 203, baseType: !30, size: 64, align: 64, offset: 3072)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "msc_mem", scope: !40, file: !41, line: 203, baseType: !30, size: 64, align: 64, offset: 3136)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "isc_mem", scope: !40, file: !41, line: 203, baseType: !30, size: 64, align: 64, offset: 3200)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "bsc_mem", scope: !40, file: !41, line: 203, baseType: !30, size: 64, align: 64, offset: 3264)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "esc_mem", scope: !40, file: !41, line: 203, baseType: !30, size: 64, align: 64, offset: 3328)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "dnam", scope: !40, file: !41, line: 214, baseType: !83, size: 64, align: 64, offset: 3392)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dnai", scope: !40, file: !41, line: 215, baseType: !83, size: 64, align: 64, offset: 3456)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "dna2", scope: !40, file: !41, line: 216, baseType: !4, size: 32, align: 32, offset: 3520)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "dna4", scope: !40, file: !41, line: 217, baseType: !4, size: 32, align: 32, offset: 3552)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mu", scope: !40, file: !41, line: 222, baseType: !38, size: 32, align: 32, offset: 3584)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !40, file: !41, line: 223, baseType: !38, size: 32, align: 32, offset: 3616)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !41, line: 225, baseType: !4, size: 32, align: 32, offset: 3648)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "p7trace_s", file: !41, line: 374, size: 256, align: 64, elements: !104)
!104 = !{!105, !106, !107, !108}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tlen", scope: !103, file: !41, line: 375, baseType: !4, size: 32, align: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "statetype", scope: !103, file: !41, line: 376, baseType: !10, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "nodeidx", scope: !103, file: !41, line: 377, baseType: !30, size: 64, align: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !103, file: !41, line: 378, baseType: !30, size: 64, align: 64, offset: 192)
!109 = !{!110, !111, !112, !113, !114, !118, !119, !120}
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !35, file: !1, line: 168, type: !39)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tr", arg: 2, scope: !35, file: !1, line: 168, type: !102)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dsq", arg: 3, scope: !35, file: !1, line: 168, type: !10)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !35, file: !1, line: 170, type: !78)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sc", scope: !35, file: !1, line: 171, type: !115)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 768, align: 32, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 24)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !35, file: !1, line: 172, type: !4)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tpos", scope: !35, file: !1, line: 173, type: !4)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "score", scope: !35, file: !1, line: 174, type: !4)
!121 = !DISubprogram(name: "SantaCruzCorrection", scope: !1, file: !1, line: 366, type: !36, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.plan7_s*, %struct.p7trace_s*, i8*)* @SantaCruzCorrection, variables: !122)
!122 = !{!123, !124, !125}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 1, scope: !121, file: !1, line: 366, type: !39)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tr", arg: 2, scope: !121, file: !1, line: 366, type: !102)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dsq", arg: 3, scope: !121, file: !1, line: 366, type: !10)
!126 = !{!127}
!127 = !DIGlobalVariable(name: "xpam120", scope: !0, file: !1, line: 43, type: !128, isLocal: true, isDefinition: true, variable: [23 x [23 x i32]]* @xpam120)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16928, align: 32, elements: !129)
!129 = !{!130, !130}
!130 = !DISubrange(count: 23)
!131 = !{i32 2, !"Dwarf Version", i32 2}
!132 = !{i32 2, !"Debug Info Version", i32 700000003}
!133 = !{i32 1, !"PIC Level", i32 2}
!134 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!135 = !DIExpression()
!136 = !DILocation(line: 84, column: 11, scope: !7)
!137 = !DILocation(line: 84, column: 20, scope: !7)
!138 = !DILocation(line: 89, column: 10, scope: !7)
!139 = !DILocation(line: 90, column: 10, scope: !7)
!140 = !DILocation(line: 91, column: 10, scope: !7)
!141 = !DILocation(line: 93, column: 10, scope: !7)
!142 = !DILocation(line: 94, column: 10, scope: !7)
!143 = !DILocation(line: 95, column: 10, scope: !7)
!144 = !DILocation(line: 96, column: 10, scope: !7)
!145 = !DILocation(line: 98, column: 11, scope: !146)
!146 = distinct !DILexicalBlock(scope: !7, file: !1, line: 98, column: 7)
!147 = !DILocation(line: 98, column: 7, scope: !7)
!148 = !DILocation(line: 100, column: 9, scope: !7)
!149 = !DILocation(line: 92, column: 10, scope: !7)
!150 = !DILocation(line: 86, column: 10, scope: !7)
!151 = !DILocation(line: 101, column: 14, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 101, column: 3)
!153 = distinct !DILexicalBlock(scope: !7, file: !1, line: 101, column: 3)
!154 = !DILocation(line: 101, column: 3, scope: !153)
!155 = !DILocation(line: 101, column: 32, scope: !152)
!156 = !DILocation(line: 113, column: 3, scope: !157)
!157 = distinct !DILexicalBlock(scope: !7, file: !1, line: 113, column: 3)
!158 = !DILocation(line: 146, column: 3, scope: !159)
!159 = distinct !DILexicalBlock(scope: !7, file: !1, line: 146, column: 3)
!160 = !DILocation(line: 86, column: 30, scope: !7)
!161 = !DILocation(line: 86, column: 18, scope: !7)
!162 = !DILocation(line: 86, column: 26, scope: !7)
!163 = !DILocation(line: 118, column: 20, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 118, column: 5)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 118, column: 5)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 113, column: 36)
!167 = distinct !DILexicalBlock(scope: !157, file: !1, line: 113, column: 3)
!168 = !DILocation(line: 118, column: 5, scope: !165)
!169 = !DILocation(line: 119, column: 47, scope: !170)
!170 = distinct !DILexicalBlock(scope: !164, file: !1, line: 118, column: 32)
!171 = !DILocation(line: 119, column: 42, scope: !170)
!172 = !{!173, !173, i64 0}
!173 = !{!"omnipotent char", !174, i64 0}
!174 = !{!"Simple C/C++ TBAA"}
!175 = !DILocation(line: 119, column: 14, scope: !170)
!176 = !DILocation(line: 119, column: 28, scope: !170)
!177 = !{!178, !178, i64 0}
!178 = !{!"int", !173, i64 0}
!179 = !DILocation(line: 119, column: 11, scope: !170)
!180 = !DILocation(line: 120, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !170, file: !1, line: 120, column: 11)
!182 = !DILocation(line: 120, column: 11, scope: !170)
!183 = !DILocation(line: 124, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !170, file: !1, line: 124, column: 11)
!185 = !DILocation(line: 124, column: 33, scope: !184)
!186 = !DILocation(line: 124, column: 23, scope: !184)
!187 = !DILocation(line: 125, column: 15, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 125, column: 2)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 125, column: 2)
!190 = distinct !DILexicalBlock(scope: !184, file: !1, line: 124, column: 43)
!191 = !DILocation(line: 125, column: 2, scope: !189)
!192 = !DILocation(line: 126, column: 18, scope: !188)
!193 = !DILocation(line: 126, column: 13, scope: !188)
!194 = !DILocation(line: 126, column: 24, scope: !188)
!195 = !DILocation(line: 126, column: 4, scope: !188)
!196 = !DILocation(line: 126, column: 11, scope: !188)
!197 = !DILocation(line: 128, column: 11, scope: !190)
!198 = !DILocation(line: 129, column: 7, scope: !190)
!199 = !DILocation(line: 131, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 129, column: 35)
!201 = distinct !DILexicalBlock(scope: !184, file: !1, line: 129, column: 18)
!202 = !DILocation(line: 129, column: 18, scope: !184)
!203 = !DILocation(line: 133, column: 11, scope: !170)
!204 = !DILocation(line: 133, column: 14, scope: !205)
!205 = distinct !DILexicalBlock(scope: !170, file: !1, line: 133, column: 11)
!206 = !DILocation(line: 138, column: 12, scope: !207)
!207 = distinct !DILexicalBlock(scope: !166, file: !1, line: 138, column: 9)
!208 = !DILocation(line: 139, column: 20, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 139, column: 7)
!210 = distinct !DILexicalBlock(scope: !211, file: !1, line: 139, column: 7)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 138, column: 22)
!212 = !DILocation(line: 138, column: 9, scope: !166)
!213 = !DILocation(line: 139, column: 7, scope: !210)
!214 = !DILocation(line: 140, column: 16, scope: !209)
!215 = !DILocation(line: 140, column: 11, scope: !209)
!216 = !DILocation(line: 140, column: 22, scope: !209)
!217 = !DILocation(line: 140, column: 2, scope: !209)
!218 = !DILocation(line: 140, column: 9, scope: !209)
!219 = !DILocation(line: 147, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 147, column: 9)
!221 = distinct !DILexicalBlock(scope: !159, file: !1, line: 146, column: 3)
!222 = !DILocation(line: 147, column: 9, scope: !221)
!223 = !DILocation(line: 147, column: 23, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 147, column: 17)
!225 = !DILocation(line: 147, column: 36, scope: !224)
!226 = !DILocation(line: 147, column: 50, scope: !224)
!227 = !DILocation(line: 147, column: 27, scope: !224)
!228 = !DILocation(line: 147, column: 34, scope: !224)
!229 = !DILocation(line: 147, column: 53, scope: !224)
!230 = !DILocation(line: 149, column: 3, scope: !7)
!231 = !DILocation(line: 150, column: 3, scope: !7)
!232 = !DILocation(line: 151, column: 1, scope: !7)
!233 = !DILocation(line: 168, column: 38, scope: !35)
!234 = !DILocation(line: 168, column: 61, scope: !35)
!235 = !DILocation(line: 168, column: 71, scope: !35)
!236 = !DILocation(line: 170, column: 3, scope: !35)
!237 = !DILocation(line: 170, column: 9, scope: !35)
!238 = !DILocation(line: 171, column: 3, scope: !35)
!239 = !DILocation(line: 171, column: 9, scope: !35)
!240 = !DILocation(line: 178, column: 10, scope: !241)
!241 = distinct !DILexicalBlock(scope: !35, file: !1, line: 178, column: 7)
!242 = !DILocation(line: 178, column: 7, scope: !35)
!243 = !DILocation(line: 183, column: 8, scope: !35)
!244 = !DILocation(line: 183, column: 11, scope: !35)
!245 = !DILocation(line: 183, column: 3, scope: !35)
!246 = !DILocation(line: 173, column: 9, scope: !35)
!247 = !DILocation(line: 184, column: 29, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 184, column: 3)
!249 = distinct !DILexicalBlock(scope: !35, file: !1, line: 184, column: 3)
!250 = !{!251, !178, i64 0}
!251 = !{!"p7trace_s", !178, i64 0, !252, i64 8, !252, i64 16, !252, i64 24}
!252 = !{!"any pointer", !173, i64 0}
!253 = !DILocation(line: 184, column: 23, scope: !248)
!254 = !DILocation(line: 184, column: 3, scope: !249)
!255 = !DILocation(line: 185, column: 19, scope: !256)
!256 = distinct !DILexicalBlock(scope: !248, file: !1, line: 185, column: 15)
!257 = !DILocation(line: 186, column: 29, scope: !256)
!258 = !DILocation(line: 186, column: 21, scope: !256)
!259 = !DILocation(line: 188, column: 21, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 187, column: 15)
!261 = !{!251, !252, i64 8}
!262 = !DILocation(line: 185, column: 15, scope: !256)
!263 = !DILocation(line: 185, column: 15, scope: !248)
!264 = !{!251, !252, i64 16}
!265 = !DILocation(line: 186, column: 25, scope: !256)
!266 = !DILocation(line: 186, column: 16, scope: !256)
!267 = !{!268, !252, i64 152}
!268 = !{!"plan7_s", !252, i64 0, !252, i64 8, !252, i64 16, !252, i64 24, !252, i64 32, !252, i64 40, !252, i64 48, !178, i64 56, !252, i64 64, !252, i64 72, !178, i64 80, !252, i64 88, !252, i64 96, !252, i64 104, !269, i64 112, !269, i64 116, !269, i64 120, !269, i64 124, !269, i64 128, !269, i64 132, !178, i64 136, !252, i64 144, !252, i64 152, !252, i64 160, !269, i64 168, !173, i64 172, !252, i64 208, !252, i64 216, !173, i64 224, !269, i64 304, !252, i64 312, !252, i64 320, !252, i64 328, !173, i64 336, !252, i64 368, !252, i64 376, !252, i64 384, !252, i64 392, !252, i64 400, !252, i64 408, !252, i64 416, !252, i64 424, !252, i64 432, !178, i64 440, !178, i64 444, !269, i64 448, !269, i64 452, !178, i64 456}
!269 = !{!"float", !173, i64 0}
!270 = !{!252, !252, i64 0}
!271 = !DILocation(line: 186, column: 45, scope: !256)
!272 = !DILocation(line: 186, column: 8, scope: !256)
!273 = !DILocation(line: 188, column: 29, scope: !260)
!274 = !DILocation(line: 188, column: 25, scope: !260)
!275 = !DILocation(line: 188, column: 16, scope: !260)
!276 = !{!268, !252, i64 160}
!277 = !DILocation(line: 188, column: 45, scope: !260)
!278 = !DILocation(line: 188, column: 8, scope: !260)
!279 = !DILocation(line: 189, column: 12, scope: !35)
!280 = !DILocation(line: 189, column: 3, scope: !35)
!281 = !DILocation(line: 172, column: 9, scope: !35)
!282 = !DILocation(line: 191, column: 19, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 191, column: 3)
!284 = distinct !DILexicalBlock(scope: !35, file: !1, line: 191, column: 3)
!285 = !DILocation(line: 191, column: 17, scope: !283)
!286 = !DILocation(line: 191, column: 3, scope: !284)
!287 = !DILocation(line: 195, column: 31, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !1, line: 195, column: 3)
!289 = distinct !DILexicalBlock(scope: !35, file: !1, line: 195, column: 3)
!290 = !DILocation(line: 195, column: 29, scope: !288)
!291 = !DILocation(line: 195, column: 3, scope: !289)
!292 = !DILocation(line: 196, column: 38, scope: !288)
!293 = !DILocation(line: 192, column: 24, scope: !283)
!294 = !{!269, !269, i64 0}
!295 = !DILocation(line: 192, column: 30, scope: !283)
!296 = !DILocation(line: 192, column: 13, scope: !283)
!297 = !DILocation(line: 192, column: 5, scope: !283)
!298 = !DILocation(line: 192, column: 11, scope: !283)
!299 = !DILocation(line: 202, column: 30, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 202, column: 4)
!301 = distinct !DILexicalBlock(scope: !35, file: !1, line: 202, column: 4)
!302 = !DILocation(line: 202, column: 24, scope: !300)
!303 = !DILocation(line: 202, column: 4, scope: !301)
!304 = !DILocation(line: 203, column: 14, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !1, line: 203, column: 10)
!306 = !DILocation(line: 204, column: 34, scope: !305)
!307 = !DILocation(line: 196, column: 13, scope: !288)
!308 = !DILocation(line: 196, column: 5, scope: !288)
!309 = !DILocation(line: 196, column: 11, scope: !288)
!310 = !DILocation(line: 203, column: 10, scope: !305)
!311 = !DILocation(line: 203, column: 37, scope: !305)
!312 = !{!251, !252, i64 24}
!313 = !DILocation(line: 204, column: 30, scope: !305)
!314 = !DILocation(line: 204, column: 26, scope: !305)
!315 = !DILocation(line: 204, column: 17, scope: !305)
!316 = !DILocation(line: 204, column: 14, scope: !305)
!317 = !DILocation(line: 174, column: 9, scope: !35)
!318 = !DILocation(line: 204, column: 8, scope: !305)
!319 = !DILocation(line: 210, column: 10, scope: !35)
!320 = !DILocation(line: 214, column: 19, scope: !35)
!321 = !DILocation(line: 214, column: 11, scope: !35)
!322 = !DILocation(line: 214, column: 4, scope: !35)
!323 = !DILocation(line: 215, column: 1, scope: !35)
!324 = !DILocation(line: 366, column: 37, scope: !121)
!325 = !DILocation(line: 366, column: 60, scope: !121)
!326 = !DILocation(line: 366, column: 70, scope: !121)
!327 = !DILocation(line: 368, column: 3, scope: !121)
