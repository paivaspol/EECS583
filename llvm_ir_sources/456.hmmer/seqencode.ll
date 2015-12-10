; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/seqencode.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.iupactype = type { i8, i8, i8, i8 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@iupac = external global [0 x %struct.iupactype]
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @seqcmp(i8* nocapture readonly %s1, i8* nocapture readonly %s2, i32 %allow) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !12, metadata !81), !dbg !82
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !13, metadata !81), !dbg !83
  tail call void @llvm.dbg.value(metadata i32 %allow, i64 0, metadata !14, metadata !81), !dbg !84
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !15, metadata !81), !dbg !85
  %1 = load i8* %s1, align 1, !dbg !86, !tbaa !87
  %2 = icmp eq i8 %1, 0, !dbg !90
  br i1 %2, label %.critedge._crit_edge, label %.lr.ph11, !dbg !91

.lr.ph11:                                         ; preds = %0, %8
  %3 = phi i8 [ %13, %8 ], [ %1, %0 ]
  %mmat.010 = phi i32 [ %mmat.0., %8 ], [ 0, %0 ]
  %.09 = phi i8* [ %11, %8 ], [ %s1, %0 ]
  %.028 = phi i8* [ %12, %8 ], [ %s2, %0 ]
  %4 = load i8* %.028, align 1, !dbg !92, !tbaa !87
  %5 = icmp eq i8 %4, 0, !dbg !93
  %6 = icmp sgt i32 %mmat.010, %allow, !dbg !94
  %or.cond = or i1 %6, %5, !dbg !95
  br i1 %or.cond, label %.critedge.preheader, label %8, !dbg !95

.critedge.preheader:                              ; preds = %.lr.ph11
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !12, metadata !81), !dbg !82
  %7 = icmp sgt i32 %mmat.010, %allow, !dbg !96
  br i1 %7, label %.critedge._crit_edge, label %.critedge, !dbg !97

; <label>:8                                       ; preds = %.lr.ph11
  %9 = and i8 %4, %3, !dbg !98
  %not. = icmp ne i8 %9, %4, !dbg !101
  %10 = zext i1 %not. to i32, !dbg !101
  %mmat.0. = add nsw i32 %10, %mmat.010, !dbg !101
  %11 = getelementptr inbounds i8* %.09, i64 1, !dbg !102
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !12, metadata !81), !dbg !82
  %12 = getelementptr inbounds i8* %.028, i64 1, !dbg !103
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !13, metadata !81), !dbg !83
  %13 = load i8* %11, align 1, !dbg !86, !tbaa !87
  %14 = icmp eq i8 %13, 0, !dbg !90
  br i1 %14, label %.critedge._crit_edge, label %.lr.ph11, !dbg !91

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %mmat.27 = phi i32 [ %16, %.critedge ], [ %mmat.010, %.critedge.preheader ]
  %.16 = phi i8* [ %15, %.critedge ], [ %.09, %.critedge.preheader ]
  %15 = getelementptr inbounds i8* %.16, i64 1, !dbg !104
  %16 = add nsw i32 %mmat.27, 1, !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !15, metadata !81), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !12, metadata !81), !dbg !82
  %17 = load i8* %15, align 1, !dbg !106, !tbaa !87
  %18 = icmp slt i32 %mmat.27, %allow, !dbg !96
  %not.3 = icmp ne i8 %17, 0, !dbg !107
  %. = and i1 %18, %not.3, !dbg !107
  br i1 %., label %.critedge, label %.critedge._crit_edge, !dbg !97

.critedge._crit_edge:                             ; preds = %8, %.critedge, %.critedge.preheader, %0
  %mmat.2.lcssa = phi i32 [ %mmat.010, %.critedge.preheader ], [ 0, %0 ], [ %16, %.critedge ], [ %mmat.0., %8 ]
  ret i32 %mmat.2.lcssa, !dbg !108
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @seqncmp(i8* nocapture readonly %s1, i8* nocapture readonly %s2, i32 %n, i32 %allow) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !20, metadata !81), !dbg !109
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !21, metadata !81), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !22, metadata !81), !dbg !111
  tail call void @llvm.dbg.value(metadata i32 %allow, i64 0, metadata !23, metadata !81), !dbg !112
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !81), !dbg !113
  %1 = load i8* %s2, align 1, !dbg !114, !tbaa !87
  %2 = icmp eq i8 %1, 0, !dbg !115
  br i1 %2, label %.critedge.preheader, label %.lr.ph15, !dbg !116

.lr.ph15:                                         ; preds = %0, %14
  %3 = phi i8 [ %17, %14 ], [ %1, %0 ]
  %mmat.014 = phi i32 [ %mmat.1, %14 ], [ 0, %0 ]
  %.0113 = phi i32 [ %4, %14 ], [ %n, %0 ]
  %.0212 = phi i8* [ %16, %14 ], [ %s2, %0 ]
  %.0311 = phi i8* [ %15, %14 ], [ %s1, %0 ]
  %4 = add nsw i32 %.0113, -1, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !22, metadata !81), !dbg !111
  %5 = icmp eq i32 %.0113, 0, !dbg !118
  br i1 %5, label %.critedge.preheader, label %7, !dbg !119

.critedge.preheader:                              ; preds = %.lr.ph15, %14, %0
  %mmat.0.lcssa = phi i32 [ 0, %0 ], [ %mmat.014, %.lr.ph15 ], [ %mmat.1, %14 ]
  %.03.lcssa = phi i8* [ %s1, %0 ], [ %.0311, %.lr.ph15 ], [ %15, %14 ]
  %.1.ph = phi i32 [ %n, %0 ], [ %4, %.lr.ph15 ], [ %4, %14 ]
  %6 = icmp eq i32 %.1.ph, 0, !dbg !120
  br i1 %6, label %.thread, label %.lr.ph, !dbg !121

; <label>:7                                       ; preds = %.lr.ph15
  %8 = load i8* %.0311, align 1, !dbg !122, !tbaa !87
  %9 = and i8 %8, %3, !dbg !122
  %10 = icmp eq i8 %9, %3, !dbg !122
  br i1 %10, label %14, label %11, !dbg !125

; <label>:11                                      ; preds = %7
  %12 = add nsw i32 %mmat.014, 1, !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !24, metadata !81), !dbg !113
  %13 = icmp slt i32 %mmat.014, %allow, !dbg !127
  br i1 %13, label %14, label %.thread, !dbg !128

; <label>:14                                      ; preds = %11, %7
  %mmat.1 = phi i32 [ %mmat.014, %7 ], [ %12, %11 ]
  %15 = getelementptr inbounds i8* %.0311, i64 1, !dbg !129
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !20, metadata !81), !dbg !109
  %16 = getelementptr inbounds i8* %.0212, i64 1, !dbg !130
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !21, metadata !81), !dbg !110
  %17 = load i8* %16, align 1, !dbg !114, !tbaa !87
  %18 = icmp eq i8 %17, 0, !dbg !115
  br i1 %18, label %.critedge.preheader, label %.lr.ph15, !dbg !116

.lr.ph:                                           ; preds = %.critedge.preheader, %.critedge
  %.in = phi i32 [ %19, %.critedge ], [ %.1.ph, %.critedge.preheader ]
  %mmat.29 = phi i32 [ %23, %.critedge ], [ %mmat.0.lcssa, %.critedge.preheader ]
  %.148 = phi i8* [ %22, %.critedge ], [ %.03.lcssa, %.critedge.preheader ]
  %19 = add nsw i32 %.in, -1, !dbg !131
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !20, metadata !81), !dbg !109
  %20 = load i8* %.148, align 1, !dbg !132, !tbaa !87
  %21 = icmp sle i32 %mmat.29, %allow, !dbg !133
  %not. = icmp ne i8 %20, 0, !dbg !134
  %. = and i1 %21, %not., !dbg !134
  br i1 %., label %.critedge, label %.thread, !dbg !135

.critedge:                                        ; preds = %.lr.ph
  %22 = getelementptr inbounds i8* %.148, i64 1, !dbg !136
  %23 = add nsw i32 %mmat.29, 1, !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !24, metadata !81), !dbg !113
  %24 = icmp eq i32 %19, 0, !dbg !120
  br i1 %24, label %.thread, label %.lr.ph, !dbg !121

.thread:                                          ; preds = %11, %.lr.ph, %.critedge, %.critedge.preheader
  %.0 = phi i32 [ %mmat.0.lcssa, %.critedge.preheader ], [ %23, %.critedge ], [ %mmat.29, %.lr.ph ], [ %12, %11 ]
  ret i32 %.0, !dbg !138
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @seqencode(i8* nocapture %codeseq, i8* nocapture %str) #1 {
  tail call void @llvm.dbg.value(metadata i8* %codeseq, i64 0, metadata !29, metadata !81), !dbg !139
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !30, metadata !81), !dbg !140
  tail call void @llvm.dbg.value(metadata i8* %codeseq, i64 0, metadata !31, metadata !81), !dbg !141
  %1 = load i8* %str, align 1, !dbg !142, !tbaa !87
  %2 = icmp eq i8 %1, 0, !dbg !143
  br i1 %2, label %._crit_edge, label %.lr.ph, !dbg !144

.lr.ph:                                           ; preds = %0, %24
  %3 = phi i8 [ %29, %24 ], [ %1, %0 ]
  %ptr.05 = phi i8* [ %27, %24 ], [ %codeseq, %0 ]
  %.04 = phi i8* [ %28, %24 ], [ %str, %0 ]
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !61, metadata !81) #5, !dbg !145
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !69, metadata !81) #5, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 4096, i64 0, metadata !70, metadata !81) #5, !dbg !151
  %isascii.i.i3 = icmp sgt i8 %3, -1, !dbg !152
  br i1 %isascii.i.i3, label %4, label %9, !dbg !152

; <label>:4                                       ; preds = %.lr.ph
  %5 = sext i8 %3 to i64, !dbg !153
  %6 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %5, !dbg !153
  %7 = load i32* %6, align 4, !dbg !153, !tbaa !154
  %8 = and i32 %7, 4096, !dbg !156
  br label %islower.exit, !dbg !152

; <label>:9                                       ; preds = %.lr.ph
  %10 = sext i8 %3 to i32, !dbg !142
  %11 = tail call i32 @__maskrune(i32 %10, i64 4096) #6, !dbg !157
  br label %islower.exit, !dbg !152

islower.exit:                                     ; preds = %4, %9
  %.sink.i.in.i = phi i32 [ %8, %4 ], [ %11, %9 ], !dbg !158
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !159
  %.pre = load i8* %.04, align 1, !dbg !160, !tbaa !87
  br i1 %.sink.i.i, label %.preheader, label %12, !dbg !163

; <label>:12                                      ; preds = %islower.exit
  %13 = sext i8 %.pre to i32, !dbg !164
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !76, metadata !81) #5, !dbg !165
  %14 = tail call i32 @__toupper(i32 %13) #6, !dbg !167
  %15 = trunc i32 %14 to i8, !dbg !168
  store i8 %15, i8* %.04, align 1, !dbg !169, !tbaa !87
  br label %.preheader, !dbg !170

.preheader:                                       ; preds = %islower.exit, %12
  %16 = phi i8 [ %15, %12 ], [ %.pre, %islower.exit ]
  br label %17, !dbg !160

; <label>:17                                      ; preds = %17, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %.preheader ]
  %18 = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 0, !dbg !171
  %19 = load i8* %18, align 1, !dbg !171, !tbaa !172
  %20 = icmp ne i8 %16, %19, !dbg !174
  %21 = icmp slt i64 %indvars.iv, 18, !dbg !175
  %or.cond = and i1 %21, %20, !dbg !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !176
  br i1 %or.cond, label %17, label %.critedge, !dbg !176

.critedge:                                        ; preds = %17
  %22 = trunc i64 %indvars.iv to i32, !dbg !177
  %23 = icmp sgt i32 %22, 17, !dbg !177
  br i1 %23, label %._crit_edge, label %24, !dbg !179

; <label>:24                                      ; preds = %.critedge
  %25 = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2, !dbg !180
  %26 = load i8* %25, align 1, !dbg !180, !tbaa !181
  store i8 %26, i8* %ptr.05, align 1, !dbg !182, !tbaa !87
  %27 = getelementptr inbounds i8* %ptr.05, i64 1, !dbg !183
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !31, metadata !81), !dbg !141
  %28 = getelementptr inbounds i8* %.04, i64 1, !dbg !184
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !30, metadata !81), !dbg !140
  %29 = load i8* %28, align 1, !dbg !142, !tbaa !87
  %30 = icmp eq i8 %29, 0, !dbg !143
  br i1 %30, label %._crit_edge, label %.lr.ph, !dbg !144

._crit_edge:                                      ; preds = %.critedge, %24, %0
  %ptr.0.lcssa = phi i8* [ %codeseq, %0 ], [ %ptr.05, %.critedge ], [ %27, %24 ]
  %.02 = phi i32 [ 1, %0 ], [ 0, %.critedge ], [ 1, %24 ]
  store i8 0, i8* %ptr.0.lcssa, align 1, !dbg !185, !tbaa !87
  ret i32 %.02, !dbg !187
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @coded_revcomp(i8* nocapture %comp, i8* nocapture readonly %seq) #1 {
  tail call void @llvm.dbg.value(metadata i8* %comp, i64 0, metadata !35, metadata !81), !dbg !188
  tail call void @llvm.dbg.value(metadata i8* %seq, i64 0, metadata !36, metadata !81), !dbg !189
  %1 = tail call i64 @strlen(i8* %seq) #6, !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !37, metadata !81), !dbg !191
  tail call void @llvm.dbg.value(metadata i8* %comp, i64 0, metadata !40, metadata !81), !dbg !192
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !39, metadata !81), !dbg !193
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !42, metadata !81), !dbg !194
  %2 = icmp sgt i64 %1, 0, !dbg !195
  br i1 %2, label %.preheader.lr.ph, label %._crit_edge, !dbg !198

.preheader.lr.ph:                                 ; preds = %0
  %.sum = add i64 %1, -1, !dbg !199
  %3 = getelementptr inbounds i8* %seq, i64 %.sum, !dbg !199
  br label %.preheader, !dbg !198

.preheader:                                       ; preds = %.preheader.lr.ph, %12
  %pos.04 = phi i64 [ 0, %.preheader.lr.ph ], [ %17, %12 ]
  %fwdp.03 = phi i8* [ %comp, %.preheader.lr.ph ], [ %15, %12 ]
  %bckp.02 = phi i8* [ %3, %.preheader.lr.ph ], [ %16, %12 ]
  %4 = load i8* %bckp.02, align 1, !dbg !200, !tbaa !87
  br label %5, !dbg !200

; <label>:5                                       ; preds = %5, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 0, %.preheader ]
  %6 = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2, !dbg !204
  %7 = load i8* %6, align 1, !dbg !204, !tbaa !181
  %8 = icmp ne i8 %4, %7, !dbg !205
  %9 = icmp slt i64 %indvars.iv, 17, !dbg !206
  %or.cond = and i1 %9, %8, !dbg !207
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !207
  br i1 %or.cond, label %5, label %.critedge, !dbg !207

.critedge:                                        ; preds = %5
  %10 = trunc i64 %indvars.iv to i32, !dbg !208
  %11 = icmp sgt i32 %10, 17, !dbg !208
  br i1 %11, label %._crit_edge, label %12, !dbg !210

; <label>:12                                      ; preds = %.critedge
  %13 = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 3, !dbg !211
  %14 = load i8* %13, align 1, !dbg !211, !tbaa !212
  store i8 %14, i8* %fwdp.03, align 1, !dbg !213, !tbaa !87
  %15 = getelementptr inbounds i8* %fwdp.03, i64 1, !dbg !214
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !40, metadata !81), !dbg !192
  %16 = getelementptr inbounds i8* %bckp.02, i64 -1, !dbg !215
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !39, metadata !81), !dbg !193
  %17 = add nuw nsw i64 %pos.04, 1, !dbg !216
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !42, metadata !81), !dbg !194
  %18 = icmp slt i64 %17, %1, !dbg !195
  br i1 %18, label %.preheader, label %._crit_edge, !dbg !198

._crit_edge:                                      ; preds = %.critedge, %12, %0
  %fwdp.0.lcssa = phi i8* [ %comp, %0 ], [ %fwdp.03, %.critedge ], [ %15, %12 ]
  %.0 = phi i32 [ 1, %0 ], [ 0, %.critedge ], [ 1, %12 ]
  store i8 0, i8* %fwdp.0.lcssa, align 1, !dbg !217, !tbaa !87
  ret i32 %.0, !dbg !219
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @seqdecode(i8* nocapture %str, i8* nocapture readonly %codeseq) #1 {
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !45, metadata !81), !dbg !220
  tail call void @llvm.dbg.value(metadata i8* %codeseq, i64 0, metadata !46, metadata !81), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !48, metadata !81), !dbg !222
  %1 = load i8* %codeseq, align 1, !dbg !223, !tbaa !87
  %2 = icmp eq i8 %1, 0, !dbg !224
  br i1 %2, label %21, label %.preheader, !dbg !225

.preheader:                                       ; preds = %0, %14
  %3 = phi i8 [ %19, %14 ], [ %1, %0 ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %14 ], [ 0, %0 ]
  %.04 = phi i8* [ %18, %14 ], [ %codeseq, %0 ]
  br label %4, !dbg !226

; <label>:4                                       ; preds = %4, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %4 ], [ 0, %.preheader ]
  %5 = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2, !dbg !230
  %6 = load i8* %5, align 1, !dbg !230, !tbaa !181
  %7 = icmp ne i8 %3, %6, !dbg !231
  %8 = icmp slt i64 %indvars.iv, 17, !dbg !232
  %or.cond = and i1 %8, %7, !dbg !233
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !233
  br i1 %or.cond, label %4, label %.critedge, !dbg !233

.critedge:                                        ; preds = %4
  %9 = trunc i64 %indvars.iv to i32, !dbg !234
  %10 = icmp sgt i32 %9, 17, !dbg !234
  br i1 %10, label %11, label %14, !dbg !236

; <label>:11                                      ; preds = %.critedge
  %sext10 = shl i64 %indvars.iv8, 32, !dbg !237
  %12 = ashr exact i64 %sext10, 32, !dbg !237
  %13 = getelementptr inbounds i8* %str, i64 %12, !dbg !237
  store i8 88, i8* %13, align 1, !dbg !239, !tbaa !87
  br label %23, !dbg !240

; <label>:14                                      ; preds = %.critedge
  %15 = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 0, !dbg !241
  %16 = load i8* %15, align 1, !dbg !241, !tbaa !172
  %17 = getelementptr inbounds i8* %str, i64 %indvars.iv8, !dbg !242
  store i8 %16, i8* %17, align 1, !dbg !243, !tbaa !87
  %18 = getelementptr inbounds i8* %.04, i64 1, !dbg !244
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !46, metadata !81), !dbg !221
  %indvars.iv.next9 = add nuw i64 %indvars.iv8, 1, !dbg !225
  %19 = load i8* %18, align 1, !dbg !223, !tbaa !87
  %20 = icmp eq i8 %19, 0, !dbg !224
  br i1 %20, label %._crit_edge, label %.preheader, !dbg !225

._crit_edge:                                      ; preds = %14
  %sext = shl i64 %indvars.iv.next9, 32, !dbg !225
  %phitmp = ashr exact i64 %sext, 32, !dbg !225
  br label %21, !dbg !225

; <label>:21                                      ; preds = %._crit_edge, %0
  %pos.0.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 0, %0 ]
  %22 = getelementptr inbounds i8* %str, i64 %pos.0.lcssa, !dbg !245
  store i8 0, i8* %22, align 1, !dbg !246, !tbaa !87
  br label %23, !dbg !247

; <label>:23                                      ; preds = %21, %11
  %.02 = phi i32 [ 0, %11 ], [ 1, %21 ]
  ret i32 %.02, !dbg !248
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @seqndecode(i8* nocapture %str, i8* nocapture readonly %codeseq, i32 %n) #1 {
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !51, metadata !81), !dbg !249
  tail call void @llvm.dbg.value(metadata i8* %codeseq, i64 0, metadata !52, metadata !81), !dbg !250
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !53, metadata !81), !dbg !251
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !55, metadata !81), !dbg !252
  %1 = icmp sgt i32 %n, 0, !dbg !253
  br i1 %1, label %.preheader, label %20, !dbg !254

.preheader:                                       ; preds = %0, %13
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %13 ], [ 0, %0 ]
  %.in = phi i32 [ %14, %13 ], [ %n, %0 ]
  %.025 = phi i8* [ %18, %13 ], [ %codeseq, %0 ]
  %2 = load i8* %.025, align 1, !dbg !255, !tbaa !87
  br label %3, !dbg !255

; <label>:3                                       ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %3 ], [ 0, %.preheader ]
  %4 = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 2, !dbg !259
  %5 = load i8* %4, align 1, !dbg !259, !tbaa !181
  %6 = icmp ne i8 %2, %5, !dbg !260
  %7 = icmp slt i64 %indvars.iv, 17, !dbg !261
  %or.cond = and i1 %7, %6, !dbg !262
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !262
  br i1 %or.cond, label %3, label %.critedge, !dbg !262

.critedge:                                        ; preds = %3
  %8 = trunc i64 %indvars.iv to i32, !dbg !263
  %9 = icmp sgt i32 %8, 17, !dbg !263
  br i1 %9, label %10, label %13, !dbg !265

; <label>:10                                      ; preds = %.critedge
  %sext11 = shl i64 %indvars.iv9, 32, !dbg !266
  %11 = ashr exact i64 %sext11, 32, !dbg !266
  %12 = getelementptr inbounds i8* %str, i64 %11, !dbg !266
  store i8 88, i8* %12, align 1, !dbg !268, !tbaa !87
  br label %22, !dbg !269

; <label>:13                                      ; preds = %.critedge
  %14 = add nsw i32 %.in, -1, !dbg !270
  %15 = getelementptr inbounds [0 x %struct.iupactype]* @iupac, i64 0, i64 %indvars.iv, i32 0, !dbg !271
  %16 = load i8* %15, align 1, !dbg !271, !tbaa !172
  %17 = getelementptr inbounds i8* %str, i64 %indvars.iv9, !dbg !272
  store i8 %16, i8* %17, align 1, !dbg !273, !tbaa !87
  %18 = getelementptr inbounds i8* %.025, i64 1, !dbg !274
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !52, metadata !81), !dbg !250
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !254
  %19 = icmp sgt i32 %.in, 1, !dbg !253
  br i1 %19, label %.preheader, label %._crit_edge, !dbg !254

._crit_edge:                                      ; preds = %13
  %sext = shl i64 %indvars.iv.next10, 32, !dbg !254
  %phitmp = ashr exact i64 %sext, 32, !dbg !254
  br label %20, !dbg !254

; <label>:20                                      ; preds = %._crit_edge, %0
  %pos.0.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 0, %0 ]
  %21 = getelementptr inbounds i8* %str, i64 %pos.0.lcssa, !dbg !275
  store i8 0, i8* %21, align 1, !dbg !276, !tbaa !87
  br label %22, !dbg !277

; <label>:22                                      ; preds = %20, %10
  %.03 = phi i32 [ 0, %10 ], [ 1, %20 ]
  ret i32 %.03, !dbg !278
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #3

; Function Attrs: optsize
declare i32 @__toupper(i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!77, !78, !79}
!llvm.ident = !{!80}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/seqencode.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !{!7, !16, !25, !33, !43, !49, !56, !62, !71, !74}
!7 = !DISubprogram(name: "seqcmp", scope: !1, file: !1, line: 28, type: !8, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i32)* @seqcmp, variables: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!4, !10, !10, !4}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!11 = !{!12, !13, !14, !15}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !7, file: !1, line: 28, type: !10)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !7, file: !1, line: 28, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allow", arg: 3, scope: !7, file: !1, line: 28, type: !4)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mmat", scope: !7, file: !1, line: 30, type: !4)
!16 = !DISubprogram(name: "seqncmp", scope: !1, file: !1, line: 47, type: !17, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i32, i32)* @seqncmp, variables: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!4, !10, !10, !4, !4}
!19 = !{!20, !21, !22, !23, !24}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !16, file: !1, line: 47, type: !10)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !16, file: !1, line: 47, type: !10)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !16, file: !1, line: 47, type: !4)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "allow", arg: 4, scope: !16, file: !1, line: 47, type: !4)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mmat", scope: !16, file: !1, line: 49, type: !4)
!25 = !DISubprogram(name: "seqencode", scope: !1, file: !1, line: 70, type: !26, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @seqencode, variables: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!4, !10, !10}
!28 = !{!29, !30, !31, !32}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codeseq", arg: 1, scope: !25, file: !1, line: 70, type: !10)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 2, scope: !25, file: !1, line: 71, type: !10)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !25, file: !1, line: 73, type: !10)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !25, file: !1, line: 74, type: !4)
!33 = !DISubprogram(name: "coded_revcomp", scope: !1, file: !1, line: 98, type: !26, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @coded_revcomp, variables: !34)
!34 = !{!35, !36, !37, !39, !40, !41, !42}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "comp", arg: 1, scope: !33, file: !1, line: 98, type: !10)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 2, scope: !33, file: !1, line: 98, type: !10)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bases", scope: !33, file: !1, line: 100, type: !38)
!38 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bckp", scope: !33, file: !1, line: 101, type: !10)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fwdp", scope: !33, file: !1, line: 101, type: !10)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !33, file: !1, line: 102, type: !4)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !33, file: !1, line: 103, type: !38)
!43 = !DISubprogram(name: "seqdecode", scope: !1, file: !1, line: 127, type: !26, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @seqdecode, variables: !44)
!44 = !{!45, !46, !47, !48}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !43, file: !1, line: 127, type: !10)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codeseq", arg: 2, scope: !43, file: !1, line: 127, type: !10)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !43, file: !1, line: 129, type: !4)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !43, file: !1, line: 130, type: !4)
!49 = !DISubprogram(name: "seqndecode", scope: !1, file: !1, line: 152, type: !8, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i32)* @seqndecode, variables: !50)
!50 = !{!51, !52, !53, !54, !55}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !49, file: !1, line: 153, type: !10)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codeseq", arg: 2, scope: !49, file: !1, line: 154, type: !10)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !49, file: !1, line: 155, type: !4)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !49, file: !1, line: 157, type: !4)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !49, file: !1, line: 158, type: !4)
!56 = !DISubprogram(name: "islower", scope: !57, file: !57, line: 249, type: !58, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, variables: !60)
!57 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!58 = !DISubroutineType(types: !59)
!59 = !{!4, !4}
!60 = !{!61}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !56, file: !57, line: 249, type: !4)
!62 = !DISubprogram(name: "__istype", scope: !57, file: !57, line: 153, type: !63, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !68)
!63 = !DISubroutineType(types: !64)
!64 = !{!4, !65, !67}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !66, line: 70, baseType: !4)
!66 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!67 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!68 = !{!69, !70}
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !62, file: !57, line: 153, type: !65)
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !62, file: !57, line: 153, type: !67)
!71 = !DISubprogram(name: "isascii", scope: !57, file: !57, line: 135, type: !58, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !72)
!72 = !{!73}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !71, file: !57, line: 135, type: !4)
!74 = !DISubprogram(name: "toupper", scope: !57, file: !57, line: 298, type: !58, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, variables: !75)
!75 = !{!76}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !74, file: !57, line: 298, type: !4)
!77 = !{i32 2, !"Dwarf Version", i32 2}
!78 = !{i32 2, !"Debug Info Version", i32 700000003}
!79 = !{i32 1, !"PIC Level", i32 2}
!80 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!81 = !DIExpression()
!82 = !DILocation(line: 28, column: 14, scope: !7)
!83 = !DILocation(line: 28, column: 24, scope: !7)
!84 = !DILocation(line: 28, column: 32, scope: !7)
!85 = !DILocation(line: 30, column: 7, scope: !7)
!86 = !DILocation(line: 32, column: 11, scope: !7)
!87 = !{!88, !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !DILocation(line: 32, column: 15, scope: !7)
!91 = !DILocation(line: 32, column: 25, scope: !7)
!92 = !DILocation(line: 32, column: 29, scope: !7)
!93 = !DILocation(line: 32, column: 33, scope: !7)
!94 = !DILocation(line: 32, column: 52, scope: !7)
!95 = !DILocation(line: 32, column: 43, scope: !7)
!96 = !DILocation(line: 39, column: 36, scope: !7)
!97 = !DILocation(line: 39, column: 3, scope: !7)
!98 = !DILocation(line: 34, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 34, column: 11)
!100 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 5)
!101 = !DILocation(line: 34, column: 11, scope: !100)
!102 = !DILocation(line: 36, column: 9, scope: !100)
!103 = !DILocation(line: 37, column: 9, scope: !100)
!104 = !DILocation(line: 39, column: 14, scope: !7)
!105 = !DILocation(line: 40, column: 9, scope: !7)
!106 = !DILocation(line: 39, column: 11, scope: !7)
!107 = !DILocation(line: 39, column: 27, scope: !7)
!108 = !DILocation(line: 41, column: 3, scope: !7)
!109 = !DILocation(line: 47, column: 15, scope: !16)
!110 = !DILocation(line: 47, column: 25, scope: !16)
!111 = !DILocation(line: 47, column: 33, scope: !16)
!112 = !DILocation(line: 47, column: 40, scope: !16)
!113 = !DILocation(line: 49, column: 7, scope: !16)
!114 = !DILocation(line: 51, column: 11, scope: !16)
!115 = !DILocation(line: 51, column: 15, scope: !16)
!116 = !DILocation(line: 51, column: 25, scope: !16)
!117 = !DILocation(line: 52, column: 5, scope: !16)
!118 = !DILocation(line: 52, column: 8, scope: !16)
!119 = !DILocation(line: 51, column: 3, scope: !16)
!120 = !DILocation(line: 60, column: 15, scope: !16)
!121 = !DILocation(line: 60, column: 21, scope: !16)
!122 = !DILocation(line: 54, column: 14, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 54, column: 11)
!124 = distinct !DILexicalBlock(scope: !16, file: !1, line: 53, column: 5)
!125 = !DILocation(line: 54, column: 34, scope: !123)
!126 = !DILocation(line: 55, column: 5, scope: !123)
!127 = !DILocation(line: 55, column: 12, scope: !123)
!128 = !DILocation(line: 54, column: 11, scope: !124)
!129 = !DILocation(line: 57, column: 9, scope: !124)
!130 = !DILocation(line: 58, column: 9, scope: !124)
!131 = !DILocation(line: 60, column: 12, scope: !16)
!132 = !DILocation(line: 60, column: 25, scope: !16)
!133 = !DILocation(line: 60, column: 50, scope: !16)
!134 = !DILocation(line: 60, column: 41, scope: !16)
!135 = !DILocation(line: 60, column: 3, scope: !16)
!136 = !DILocation(line: 60, column: 28, scope: !16)
!137 = !DILocation(line: 61, column: 9, scope: !16)
!138 = !DILocation(line: 63, column: 1, scope: !16)
!139 = !DILocation(line: 70, column: 17, scope: !25)
!140 = !DILocation(line: 71, column: 10, scope: !25)
!141 = !DILocation(line: 73, column: 10, scope: !25)
!142 = !DILocation(line: 77, column: 10, scope: !25)
!143 = !DILocation(line: 77, column: 15, scope: !25)
!144 = !DILocation(line: 77, column: 3, scope: !25)
!145 = !DILocation(line: 249, column: 13, scope: !56, inlinedAt: !146)
!146 = distinct !DILocation(line: 79, column: 11, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 79, column: 11)
!148 = distinct !DILexicalBlock(scope: !25, file: !1, line: 78, column: 5)
!149 = !DILocation(line: 153, column: 29, scope: !62, inlinedAt: !150)
!150 = distinct !DILocation(line: 251, column: 10, scope: !56, inlinedAt: !146)
!151 = !DILocation(line: 153, column: 47, scope: !62, inlinedAt: !150)
!152 = !DILocation(line: 158, column: 10, scope: !62, inlinedAt: !150)
!153 = !DILocation(line: 158, column: 27, scope: !62, inlinedAt: !150)
!154 = !{!155, !155, i64 0}
!155 = !{!"int", !88, i64 0}
!156 = !DILocation(line: 158, column: 25, scope: !62, inlinedAt: !150)
!157 = !DILocation(line: 159, column: 7, scope: !62, inlinedAt: !150)
!158 = !DILocation(line: 79, column: 11, scope: !147)
!159 = !DILocation(line: 251, column: 10, scope: !56, inlinedAt: !146)
!160 = !DILocation(line: 80, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 80, column: 7)
!162 = distinct !DILexicalBlock(scope: !148, file: !1, line: 80, column: 7)
!163 = !DILocation(line: 79, column: 11, scope: !148)
!164 = !DILocation(line: 79, column: 56, scope: !147)
!165 = !DILocation(line: 298, column: 13, scope: !74, inlinedAt: !166)
!166 = distinct !DILocation(line: 79, column: 48, scope: !147)
!167 = !DILocation(line: 300, column: 17, scope: !74, inlinedAt: !166)
!168 = !DILocation(line: 79, column: 41, scope: !147)
!169 = !DILocation(line: 79, column: 39, scope: !147)
!170 = !DILocation(line: 79, column: 34, scope: !147)
!171 = !DILocation(line: 80, column: 40, scope: !161)
!172 = !{!173, !88, i64 0}
!173 = !{!"iupactype", !88, i64 0, !88, i64 1, !88, i64 2, !88, i64 3}
!174 = !DILocation(line: 80, column: 26, scope: !161)
!175 = !DILocation(line: 80, column: 51, scope: !161)
!176 = !DILocation(line: 80, column: 44, scope: !161)
!177 = !DILocation(line: 82, column: 15, scope: !178)
!178 = distinct !DILexicalBlock(scope: !148, file: !1, line: 82, column: 11)
!179 = !DILocation(line: 82, column: 11, scope: !148)
!180 = !DILocation(line: 88, column: 20, scope: !178)
!181 = !{!173, !88, i64 2}
!182 = !DILocation(line: 88, column: 7, scope: !178)
!183 = !DILocation(line: 89, column: 10, scope: !148)
!184 = !DILocation(line: 90, column: 10, scope: !148)
!185 = !DILocation(line: 84, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !1, line: 83, column: 2)
!187 = !DILocation(line: 94, column: 1, scope: !25)
!188 = !DILocation(line: 98, column: 21, scope: !33)
!189 = !DILocation(line: 98, column: 33, scope: !33)
!190 = !DILocation(line: 105, column: 11, scope: !33)
!191 = !DILocation(line: 100, column: 9, scope: !33)
!192 = !DILocation(line: 101, column: 16, scope: !33)
!193 = !DILocation(line: 101, column: 9, scope: !33)
!194 = !DILocation(line: 103, column: 9, scope: !33)
!195 = !DILocation(line: 109, column: 21, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 109, column: 3)
!197 = distinct !DILexicalBlock(scope: !33, file: !1, line: 109, column: 3)
!198 = !DILocation(line: 109, column: 3, scope: !197)
!199 = !DILocation(line: 108, column: 22, scope: !33)
!200 = !DILocation(line: 111, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 111, column: 7)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 111, column: 7)
!203 = distinct !DILexicalBlock(scope: !196, file: !1, line: 110, column: 5)
!204 = !DILocation(line: 111, column: 41, scope: !201)
!205 = !DILocation(line: 111, column: 27, scope: !201)
!206 = !DILocation(line: 111, column: 53, scope: !201)
!207 = !DILocation(line: 111, column: 46, scope: !201)
!208 = !DILocation(line: 112, column: 15, scope: !209)
!209 = distinct !DILexicalBlock(scope: !203, file: !1, line: 112, column: 11)
!210 = !DILocation(line: 112, column: 11, scope: !203)
!211 = !DILocation(line: 118, column: 21, scope: !209)
!212 = !{!173, !88, i64 3}
!213 = !DILocation(line: 118, column: 8, scope: !209)
!214 = !DILocation(line: 119, column: 11, scope: !203)
!215 = !DILocation(line: 120, column: 11, scope: !203)
!216 = !DILocation(line: 109, column: 33, scope: !196)
!217 = !DILocation(line: 114, column: 10, scope: !218)
!218 = distinct !DILexicalBlock(scope: !209, file: !1, line: 113, column: 2)
!219 = !DILocation(line: 124, column: 1, scope: !33)
!220 = !DILocation(line: 127, column: 17, scope: !43)
!221 = !DILocation(line: 127, column: 28, scope: !43)
!222 = !DILocation(line: 130, column: 7, scope: !43)
!223 = !DILocation(line: 133, column: 10, scope: !43)
!224 = !DILocation(line: 133, column: 19, scope: !43)
!225 = !DILocation(line: 133, column: 3, scope: !43)
!226 = !DILocation(line: 135, column: 21, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 135, column: 7)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 135, column: 7)
!229 = distinct !DILexicalBlock(scope: !43, file: !1, line: 134, column: 5)
!230 = !DILocation(line: 135, column: 44, scope: !227)
!231 = !DILocation(line: 135, column: 30, scope: !227)
!232 = !DILocation(line: 135, column: 56, scope: !227)
!233 = !DILocation(line: 135, column: 49, scope: !227)
!234 = !DILocation(line: 137, column: 15, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !1, line: 137, column: 11)
!236 = !DILocation(line: 137, column: 11, scope: !229)
!237 = !DILocation(line: 139, column: 4, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !1, line: 138, column: 2)
!239 = !DILocation(line: 139, column: 13, scope: !238)
!240 = !DILocation(line: 140, column: 4, scope: !238)
!241 = !DILocation(line: 143, column: 24, scope: !235)
!242 = !DILocation(line: 143, column: 2, scope: !235)
!243 = !DILocation(line: 143, column: 11, scope: !235)
!244 = !DILocation(line: 144, column: 14, scope: !229)
!245 = !DILocation(line: 147, column: 3, scope: !43)
!246 = !DILocation(line: 147, column: 12, scope: !43)
!247 = !DILocation(line: 148, column: 3, scope: !43)
!248 = !DILocation(line: 149, column: 1, scope: !43)
!249 = !DILocation(line: 153, column: 18, scope: !49)
!250 = !DILocation(line: 154, column: 12, scope: !49)
!251 = !DILocation(line: 155, column: 18, scope: !49)
!252 = !DILocation(line: 158, column: 7, scope: !49)
!253 = !DILocation(line: 160, column: 14, scope: !49)
!254 = !DILocation(line: 160, column: 3, scope: !49)
!255 = !DILocation(line: 162, column: 21, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 162, column: 7)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 162, column: 7)
!258 = distinct !DILexicalBlock(scope: !49, file: !1, line: 161, column: 5)
!259 = !DILocation(line: 162, column: 44, scope: !256)
!260 = !DILocation(line: 162, column: 30, scope: !256)
!261 = !DILocation(line: 162, column: 56, scope: !256)
!262 = !DILocation(line: 162, column: 49, scope: !256)
!263 = !DILocation(line: 163, column: 15, scope: !264)
!264 = distinct !DILexicalBlock(scope: !258, file: !1, line: 163, column: 11)
!265 = !DILocation(line: 163, column: 11, scope: !258)
!266 = !DILocation(line: 165, column: 4, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !1, line: 164, column: 2)
!268 = !DILocation(line: 165, column: 14, scope: !267)
!269 = !DILocation(line: 166, column: 4, scope: !267)
!270 = !DILocation(line: 160, column: 10, scope: !49)
!271 = !DILocation(line: 169, column: 24, scope: !264)
!272 = !DILocation(line: 169, column: 2, scope: !264)
!273 = !DILocation(line: 169, column: 11, scope: !264)
!274 = !DILocation(line: 170, column: 14, scope: !258)
!275 = !DILocation(line: 173, column: 3, scope: !49)
!276 = !DILocation(line: 173, column: 12, scope: !49)
!277 = !DILocation(line: 174, column: 3, scope: !49)
!278 = !DILocation(line: 175, column: 1, scope: !49)
