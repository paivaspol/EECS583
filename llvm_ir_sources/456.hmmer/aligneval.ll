; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/aligneval.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@.str = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/aligneval.c\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define float @ComparePairAlignments(i8* nocapture readonly %known1, i8* nocapture readonly %known2, i8* nocapture readonly %calc1, i8* nocapture readonly %calc2) #0 {
  %klist1 = alloca i32*, align 8
  %klist2 = alloca i32*, align 8
  %tlist1 = alloca i32*, align 8
  %tlist2 = alloca i32*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %score = alloca float, align 4
  tail call void @llvm.dbg.value(metadata i8* %known1, i64 0, metadata !14, metadata !176), !dbg !177
  tail call void @llvm.dbg.value(metadata i8* %known2, i64 0, metadata !15, metadata !176), !dbg !178
  tail call void @llvm.dbg.value(metadata i8* %calc1, i64 0, metadata !16, metadata !176), !dbg !179
  tail call void @llvm.dbg.value(metadata i8* %calc2, i64 0, metadata !17, metadata !176), !dbg !180
  tail call void @llvm.dbg.value(metadata i32** %tlist1, i64 0, metadata !20, metadata !176), !dbg !181
  tail call void @llvm.dbg.value(metadata i32* %len1, i64 0, metadata !22, metadata !176), !dbg !182
  call fastcc void @make_alilist(i8* %calc1, i8* %calc2, i32** %tlist1, i32* %len1) #7, !dbg !183
  tail call void @llvm.dbg.value(metadata i32** %tlist2, i64 0, metadata !21, metadata !176), !dbg !185
  tail call void @llvm.dbg.value(metadata i32* %len2, i64 0, metadata !23, metadata !176), !dbg !186
  call fastcc void @make_alilist(i8* %calc2, i8* %calc1, i32** %tlist2, i32* %len2) #7, !dbg !187
  tail call void @llvm.dbg.value(metadata i32** %klist1, i64 0, metadata !18, metadata !176), !dbg !189
  tail call void @llvm.dbg.value(metadata i32* %len1, i64 0, metadata !22, metadata !176), !dbg !182
  call fastcc void @make_alilist(i8* %known1, i8* %known2, i32** %klist1, i32* %len1) #7, !dbg !190
  tail call void @llvm.dbg.value(metadata i32** %klist2, i64 0, metadata !19, metadata !176), !dbg !192
  tail call void @llvm.dbg.value(metadata i32* %len2, i64 0, metadata !23, metadata !176), !dbg !186
  call fastcc void @make_alilist(i8* %known2, i8* %known1, i32** %klist2, i32* %len2) #7, !dbg !193
  tail call void @llvm.dbg.value(metadata i32** %klist1, i64 0, metadata !18, metadata !176), !dbg !189
  %1 = load i32** %klist1, align 8, !dbg !195, !tbaa !197
  tail call void @llvm.dbg.value(metadata i32** %klist2, i64 0, metadata !19, metadata !176), !dbg !192
  %2 = load i32** %klist2, align 8, !dbg !201, !tbaa !197
  tail call void @llvm.dbg.value(metadata i32** %tlist1, i64 0, metadata !20, metadata !176), !dbg !181
  %3 = load i32** %tlist1, align 8, !dbg !202, !tbaa !197
  tail call void @llvm.dbg.value(metadata i32** %tlist2, i64 0, metadata !21, metadata !176), !dbg !185
  %4 = load i32** %tlist2, align 8, !dbg !203, !tbaa !197
  tail call void @llvm.dbg.value(metadata i32* %len1, i64 0, metadata !22, metadata !176), !dbg !182
  %5 = load i32* %len1, align 4, !dbg !204, !tbaa !205
  tail call void @llvm.dbg.value(metadata i32* %len2, i64 0, metadata !23, metadata !176), !dbg !186
  %6 = load i32* %len2, align 4, !dbg !207, !tbaa !205
  tail call void @llvm.dbg.value(metadata float* %score, i64 0, metadata !24, metadata !176), !dbg !208
  call fastcc void @compare_lists(i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6, float* %score) #7, !dbg !209
  tail call void @llvm.dbg.value(metadata i32** %klist1, i64 0, metadata !18, metadata !176), !dbg !189
  %7 = bitcast i32* %1 to i8*
  tail call void @free(i8* %7) #7, !dbg !210
  tail call void @llvm.dbg.value(metadata i32** %klist2, i64 0, metadata !19, metadata !176), !dbg !192
  %8 = bitcast i32* %2 to i8*
  tail call void @free(i8* %8) #7, !dbg !211
  tail call void @llvm.dbg.value(metadata i32** %tlist1, i64 0, metadata !20, metadata !176), !dbg !181
  %9 = bitcast i32* %3 to i8*
  tail call void @free(i8* %9) #7, !dbg !212
  tail call void @llvm.dbg.value(metadata i32** %tlist2, i64 0, metadata !21, metadata !176), !dbg !185
  %10 = bitcast i32* %4 to i8*
  tail call void @free(i8* %10) #7, !dbg !213
  tail call void @llvm.dbg.value(metadata float* %score, i64 0, metadata !24, metadata !176), !dbg !208
  %11 = load float* %score, align 4, !dbg !214, !tbaa !215
  ret float %11, !dbg !217
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @make_alilist(i8* nocapture readonly %s1, i8* nocapture readonly %s2, i32** nocapture %ret_s1_list, i32* nocapture %ret_listlen) #0 {
  %1 = tail call i64 @strlen(i8* %s1) #8, !dbg !218
  %2 = shl i64 %1, 2, !dbg !218
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), i32 179, i64 %2) #8, !dbg !218
  %4 = bitcast i8* %3 to i32*, !dbg !219
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !115, metadata !176), !dbg !220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !118, metadata !176), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !117, metadata !176), !dbg !222
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !116, metadata !176), !dbg !223
  br label %5, !dbg !224

; <label>:5                                       ; preds = %23, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 0, %0 ]
  %r1.0 = phi i32 [ %r1.1, %23 ], [ 0, %0 ]
  %r2.0 = phi i32 [ %r2.1, %23 ], [ 0, %0 ]
  %6 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !226
  %7 = load i8* %6, align 1, !dbg !226, !tbaa !228
  switch i8 %7, label %8 [
    i8 0, label %24
    i8 32, label %18
    i8 46, label %18
    i8 95, label %18
    i8 45, label %18
    i8 126, label %18
  ], !dbg !229

; <label>:8                                       ; preds = %5
  %9 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !230
  %10 = load i8* %9, align 1, !dbg !230, !tbaa !228
  switch i8 %10, label %11 [
    i8 32, label %13
    i8 46, label %13
    i8 95, label %13
    i8 45, label %13
  ], !dbg !230

; <label>:11                                      ; preds = %8
  %12 = icmp eq i8 %10, 126, !dbg !230
  %. = select i1 %12, i32 -1, i32 %r2.0, !dbg !230
  br label %13, !dbg !230

; <label>:13                                      ; preds = %8, %8, %8, %8, %11
  %14 = phi i32 [ -1, %8 ], [ %., %11 ], [ -1, %8 ], [ -1, %8 ], [ -1, %8 ], !dbg !230
  %15 = sext i32 %r1.0 to i64, !dbg !234
  %16 = getelementptr inbounds i32* %4, i64 %15, !dbg !234
  store i32 %14, i32* %16, align 4, !dbg !235, !tbaa !205
  %17 = add nsw i32 %r1.0, 1, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !117, metadata !176), !dbg !222
  br label %18, !dbg !237

; <label>:18                                      ; preds = %5, %5, %5, %5, %5, %13
  %r1.1 = phi i32 [ %17, %13 ], [ %r1.0, %5 ], [ %r1.0, %5 ], [ %r1.0, %5 ], [ %r1.0, %5 ], [ %r1.0, %5 ]
  %19 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !238
  %20 = load i8* %19, align 1, !dbg !238, !tbaa !228
  switch i8 %20, label %21 [
    i8 32, label %23
    i8 46, label %23
    i8 95, label %23
    i8 45, label %23
    i8 126, label %23
  ], !dbg !238

; <label>:21                                      ; preds = %18
  %22 = add nsw i32 %r2.0, 1, !dbg !240
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !118, metadata !176), !dbg !221
  br label %23, !dbg !241

; <label>:23                                      ; preds = %18, %18, %18, %18, %18, %21
  %r2.1 = phi i32 [ %r2.0, %18 ], [ %22, %21 ], [ %r2.0, %18 ], [ %r2.0, %18 ], [ %r2.0, %18 ], [ %r2.0, %18 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !242
  br label %5, !dbg !242

; <label>:24                                      ; preds = %5
  store i32 %r1.0, i32* %ret_listlen, align 4, !dbg !243, !tbaa !205
  %25 = bitcast i32** %ret_s1_list to i8**, !dbg !244
  store i8* %3, i8** %25, align 8, !dbg !244, !tbaa !197
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @compare_lists(i32* nocapture readonly %k1, i32* nocapture readonly %k2, i32* nocapture readonly %t1, i32* nocapture readonly %t2, i32 %len1, i32 %len2, float* nocapture %ret_sc) #0 {
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !149, metadata !176), !dbg !245
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !148, metadata !176), !dbg !246
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !150, metadata !176), !dbg !247
  %1 = icmp sgt i32 %len1, 0, !dbg !248
  br i1 %1, label %.lr.ph9, label %.preheader, !dbg !251

.lr.ph9:                                          ; preds = %0
  %2 = add i32 %len1, -1, !dbg !251
  br label %5, !dbg !251

.preheader:                                       ; preds = %14, %0
  %tot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %6, %14 ]
  %id.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %id.1, %14 ]
  %3 = icmp sgt i32 %len2, 0, !dbg !252
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !255

.lr.ph:                                           ; preds = %.preheader
  %4 = add i32 %len2, -1, !dbg !255
  br label %15, !dbg !255

; <label>:5                                       ; preds = %14, %.lr.ph9
  %indvars.iv13 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next14, %14 ]
  %tot.06 = phi float [ 0.000000e+00, %.lr.ph9 ], [ %6, %14 ]
  %id.05 = phi float [ 0.000000e+00, %.lr.ph9 ], [ %id.1, %14 ]
  %6 = fadd float %tot.06, 1.000000e+00, !dbg !256
  tail call void @llvm.dbg.value(metadata float %6, i64 0, metadata !149, metadata !176), !dbg !245
  %7 = getelementptr inbounds i32* %t1, i64 %indvars.iv13, !dbg !258
  %8 = load i32* %7, align 4, !dbg !258, !tbaa !205
  %9 = getelementptr inbounds i32* %k1, i64 %indvars.iv13, !dbg !260
  %10 = load i32* %9, align 4, !dbg !260, !tbaa !205
  %11 = icmp eq i32 %8, %10, !dbg !261
  br i1 %11, label %12, label %14, !dbg !262

; <label>:12                                      ; preds = %5
  %13 = fadd float %id.05, 1.000000e+00, !dbg !263
  tail call void @llvm.dbg.value(metadata float %13, i64 0, metadata !148, metadata !176), !dbg !246
  br label %14, !dbg !264

; <label>:14                                      ; preds = %5, %12
  %id.1 = phi float [ %13, %12 ], [ %id.05, %5 ]
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !251
  %lftr.wideiv15 = trunc i64 %indvars.iv13 to i32, !dbg !251
  %exitcond16 = icmp eq i32 %lftr.wideiv15, %2, !dbg !251
  br i1 %exitcond16, label %.preheader, label %5, !dbg !251

; <label>:15                                      ; preds = %24, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  %tot.12 = phi float [ %tot.0.lcssa, %.lr.ph ], [ %16, %24 ]
  %id.21 = phi float [ %id.0.lcssa, %.lr.ph ], [ %id.3, %24 ]
  %16 = fadd float %tot.12, 1.000000e+00, !dbg !265
  tail call void @llvm.dbg.value(metadata float %16, i64 0, metadata !149, metadata !176), !dbg !245
  %17 = getelementptr inbounds i32* %k2, i64 %indvars.iv, !dbg !267
  %18 = load i32* %17, align 4, !dbg !267, !tbaa !205
  %19 = getelementptr inbounds i32* %t2, i64 %indvars.iv, !dbg !269
  %20 = load i32* %19, align 4, !dbg !269, !tbaa !205
  %21 = icmp eq i32 %18, %20, !dbg !270
  br i1 %21, label %22, label %24, !dbg !271

; <label>:22                                      ; preds = %15
  %23 = fadd float %id.21, 1.000000e+00, !dbg !272
  tail call void @llvm.dbg.value(metadata float %23, i64 0, metadata !148, metadata !176), !dbg !246
  br label %24, !dbg !273

; <label>:24                                      ; preds = %15, %22
  %id.3 = phi float [ %23, %22 ], [ %id.21, %15 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !255
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !255
  %exitcond = icmp eq i32 %lftr.wideiv, %4, !dbg !255
  br i1 %exitcond, label %._crit_edge, label %15, !dbg !255

._crit_edge:                                      ; preds = %24, %.preheader
  %tot.1.lcssa = phi float [ %tot.0.lcssa, %.preheader ], [ %16, %24 ]
  %id.2.lcssa = phi float [ %id.0.lcssa, %.preheader ], [ %id.3, %24 ]
  %25 = fdiv float %id.2.lcssa, %tot.1.lcssa, !dbg !274
  store float %25, float* %ret_sc, align 4, !dbg !275, !tbaa !215
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define float @CompareRefPairAlignments(i32* nocapture readonly %ref, i8* nocapture readonly %known1, i8* nocapture readonly %known2, i8* nocapture readonly %calc1, i8* nocapture readonly %calc2) #0 {
  %klist1 = alloca i32*, align 8
  %klist2 = alloca i32*, align 8
  %tlist1 = alloca i32*, align 8
  %tlist2 = alloca i32*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %score = alloca float, align 4
  tail call void @llvm.dbg.value(metadata i32* %ref, i64 0, metadata !29, metadata !176), !dbg !276
  tail call void @llvm.dbg.value(metadata i8* %known1, i64 0, metadata !30, metadata !176), !dbg !277
  tail call void @llvm.dbg.value(metadata i8* %known2, i64 0, metadata !31, metadata !176), !dbg !278
  tail call void @llvm.dbg.value(metadata i8* %calc1, i64 0, metadata !32, metadata !176), !dbg !279
  tail call void @llvm.dbg.value(metadata i8* %calc2, i64 0, metadata !33, metadata !176), !dbg !280
  tail call void @llvm.dbg.value(metadata i32** %tlist1, i64 0, metadata !36, metadata !176), !dbg !281
  tail call void @llvm.dbg.value(metadata i32* %len1, i64 0, metadata !38, metadata !176), !dbg !282
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known1, i8* %calc1, i8* %calc2, i32** %tlist1, i32* %len1) #7, !dbg !283
  tail call void @llvm.dbg.value(metadata i32** %tlist2, i64 0, metadata !37, metadata !176), !dbg !285
  tail call void @llvm.dbg.value(metadata i32* %len2, i64 0, metadata !39, metadata !176), !dbg !286
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known2, i8* %calc2, i8* %calc1, i32** %tlist2, i32* %len2) #7, !dbg !287
  tail call void @llvm.dbg.value(metadata i32** %klist1, i64 0, metadata !34, metadata !176), !dbg !289
  tail call void @llvm.dbg.value(metadata i32* %len1, i64 0, metadata !38, metadata !176), !dbg !282
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known1, i8* %known1, i8* %known2, i32** %klist1, i32* %len1) #7, !dbg !290
  tail call void @llvm.dbg.value(metadata i32** %klist2, i64 0, metadata !35, metadata !176), !dbg !292
  tail call void @llvm.dbg.value(metadata i32* %len2, i64 0, metadata !39, metadata !176), !dbg !286
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known2, i8* %known2, i8* %known1, i32** %klist2, i32* %len2) #7, !dbg !293
  tail call void @llvm.dbg.value(metadata i32** %klist1, i64 0, metadata !34, metadata !176), !dbg !289
  %1 = load i32** %klist1, align 8, !dbg !295, !tbaa !197
  tail call void @llvm.dbg.value(metadata i32** %klist2, i64 0, metadata !35, metadata !176), !dbg !292
  %2 = load i32** %klist2, align 8, !dbg !297, !tbaa !197
  tail call void @llvm.dbg.value(metadata i32** %tlist1, i64 0, metadata !36, metadata !176), !dbg !281
  %3 = load i32** %tlist1, align 8, !dbg !298, !tbaa !197
  tail call void @llvm.dbg.value(metadata i32** %tlist2, i64 0, metadata !37, metadata !176), !dbg !285
  %4 = load i32** %tlist2, align 8, !dbg !299, !tbaa !197
  tail call void @llvm.dbg.value(metadata i32* %len1, i64 0, metadata !38, metadata !176), !dbg !282
  %5 = load i32* %len1, align 4, !dbg !300, !tbaa !205
  tail call void @llvm.dbg.value(metadata i32* %len2, i64 0, metadata !39, metadata !176), !dbg !286
  %6 = load i32* %len2, align 4, !dbg !301, !tbaa !205
  tail call void @llvm.dbg.value(metadata float* %score, i64 0, metadata !40, metadata !176), !dbg !302
  call fastcc void @compare_lists(i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6, float* %score) #7, !dbg !303
  tail call void @llvm.dbg.value(metadata i32** %klist1, i64 0, metadata !34, metadata !176), !dbg !289
  %7 = bitcast i32* %1 to i8*
  tail call void @free(i8* %7) #7, !dbg !304
  tail call void @llvm.dbg.value(metadata i32** %klist2, i64 0, metadata !35, metadata !176), !dbg !292
  %8 = bitcast i32* %2 to i8*
  tail call void @free(i8* %8) #7, !dbg !305
  tail call void @llvm.dbg.value(metadata i32** %tlist1, i64 0, metadata !36, metadata !176), !dbg !281
  %9 = bitcast i32* %3 to i8*
  tail call void @free(i8* %9) #7, !dbg !306
  tail call void @llvm.dbg.value(metadata i32** %tlist2, i64 0, metadata !37, metadata !176), !dbg !285
  %10 = bitcast i32* %4 to i8*
  tail call void @free(i8* %10) #7, !dbg !307
  tail call void @llvm.dbg.value(metadata float* %score, i64 0, metadata !40, metadata !176), !dbg !302
  %11 = load float* %score, align 4, !dbg !308, !tbaa !215
  ret float %11, !dbg !309
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @make_ref_alilist(i32* nocapture readonly %ref, i8* nocapture readonly %k1, i8* nocapture readonly %s1, i8* nocapture readonly %s2, i32** nocapture %ret_s1_list, i32* nocapture %ret_listlen) #0 {
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !125, metadata !176), !dbg !310
  %1 = tail call i64 @strlen(i8* %s1) #8, !dbg !311
  %2 = shl i64 %1, 2, !dbg !311
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), i32 236, i64 %2) #8, !dbg !311
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !130, metadata !176), !dbg !312
  %4 = tail call i64 @strlen(i8* %s1) #8, !dbg !313
  %5 = shl i64 %4, 2, !dbg !313
  %6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), i32 237, i64 %5) #8, !dbg !313
  %7 = bitcast i8* %6 to i32*, !dbg !314
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !134, metadata !176), !dbg !315
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !132, metadata !176), !dbg !316
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !131, metadata !176), !dbg !317
  br label %8, !dbg !318

; <label>:8                                       ; preds = %20, %0
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %20 ], [ 0, %0 ]
  %r1.0 = phi i32 [ %r1.1, %20 ], [ 0, %0 ]
  %9 = getelementptr inbounds i8* %k1, i64 %indvars.iv1, !dbg !320
  %10 = load i8* %9, align 1, !dbg !320, !tbaa !228
  switch i8 %10, label %12 [
    i8 0, label %.preheader
    i8 32, label %20
    i8 46, label %20
    i8 95, label %20
    i8 45, label %20
    i8 126, label %20
  ], !dbg !322

.preheader:                                       ; preds = %8
  %11 = bitcast i8* %3 to i32*, !dbg !323
  br label %21, !dbg !324

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds i32* %ref, i64 %indvars.iv1, !dbg !327
  %14 = load i32* %13, align 4, !dbg !327, !tbaa !205
  %15 = icmp ne i32 %14, 0, !dbg !327
  %16 = zext i1 %15 to i32, !dbg !327
  %17 = sext i32 %r1.0 to i64, !dbg !331
  %18 = getelementptr inbounds i32* %7, i64 %17, !dbg !331
  store i32 %16, i32* %18, align 4, !dbg !332, !tbaa !205
  %19 = add nsw i32 %r1.0, 1, !dbg !333
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !132, metadata !176), !dbg !316
  br label %20, !dbg !334

; <label>:20                                      ; preds = %8, %8, %8, %8, %8, %12
  %r1.1 = phi i32 [ %19, %12 ], [ %r1.0, %8 ], [ %r1.0, %8 ], [ %r1.0, %8 ], [ %r1.0, %8 ], [ %r1.0, %8 ]
  %indvars.iv.next2 = add nuw i64 %indvars.iv1, 1, !dbg !335
  br label %8, !dbg !335

; <label>:21                                      ; preds = %.preheader, %47
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %47 ]
  %r1.2 = phi i32 [ 0, %.preheader ], [ %r1.3, %47 ]
  %r2.0 = phi i32 [ 0, %.preheader ], [ %r2.1, %47 ]
  %lpos.0 = phi i32 [ 0, %.preheader ], [ %lpos.1, %47 ]
  %22 = getelementptr inbounds i8* %s1, i64 %indvars.iv, !dbg !324
  %23 = load i8* %22, align 1, !dbg !324, !tbaa !228
  switch i8 %23, label %24 [
    i8 0, label %48
    i8 32, label %thread-pre-split
    i8 46, label %thread-pre-split
    i8 95, label %thread-pre-split
    i8 45, label %thread-pre-split
    i8 126, label %thread-pre-split
  ], !dbg !336

; <label>:24                                      ; preds = %21
  %25 = sext i32 %r1.2 to i64, !dbg !337
  %26 = getelementptr inbounds i32* %7, i64 %25, !dbg !337
  %27 = load i32* %26, align 4, !dbg !337, !tbaa !205
  %28 = icmp eq i32 %27, 0, !dbg !337
  br i1 %28, label %thread-pre-split, label %29, !dbg !340

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !341
  %31 = load i8* %30, align 1, !dbg !341, !tbaa !228
  switch i8 %31, label %32 [
    i8 32, label %34
    i8 46, label %34
    i8 95, label %34
    i8 45, label %34
  ], !dbg !341

; <label>:32                                      ; preds = %29
  %33 = icmp eq i8 %31, 126, !dbg !341
  %. = select i1 %33, i32 -1, i32 %r2.0, !dbg !341
  br label %34, !dbg !341

; <label>:34                                      ; preds = %29, %29, %29, %29, %32
  %35 = phi i32 [ -1, %29 ], [ %., %32 ], [ -1, %29 ], [ -1, %29 ], [ -1, %29 ], !dbg !341
  %36 = sext i32 %lpos.0 to i64, !dbg !343
  %37 = getelementptr inbounds i32* %11, i64 %36, !dbg !343
  store i32 %35, i32* %37, align 4, !dbg !344, !tbaa !205
  %38 = add nsw i32 %lpos.0, 1, !dbg !345
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !135, metadata !176), !dbg !346
  %.pr.pre = load i8* %22, align 1, !dbg !347, !tbaa !228
  br label %thread-pre-split, !dbg !349

thread-pre-split:                                 ; preds = %24, %34, %21, %21, %21, %21, %21
  %39 = phi i8 [ %23, %21 ], [ %23, %21 ], [ %23, %21 ], [ %23, %21 ], [ %23, %21 ], [ %23, %24 ], [ %.pr.pre, %34 ], !dbg !347
  %lpos.1 = phi i32 [ %lpos.0, %21 ], [ %lpos.0, %21 ], [ %lpos.0, %21 ], [ %lpos.0, %21 ], [ %lpos.0, %21 ], [ %lpos.0, %24 ], [ %38, %34 ]
  switch i8 %39, label %40 [
    i8 32, label %42
    i8 46, label %42
    i8 95, label %42
    i8 45, label %42
    i8 126, label %42
  ], !dbg !347

; <label>:40                                      ; preds = %thread-pre-split
  %41 = add nsw i32 %r1.2, 1, !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !132, metadata !176), !dbg !316
  br label %42, !dbg !351

; <label>:42                                      ; preds = %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %thread-pre-split, %40
  %r1.3 = phi i32 [ %r1.2, %thread-pre-split ], [ %41, %40 ], [ %r1.2, %thread-pre-split ], [ %r1.2, %thread-pre-split ], [ %r1.2, %thread-pre-split ], [ %r1.2, %thread-pre-split ]
  %43 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !352
  %44 = load i8* %43, align 1, !dbg !352, !tbaa !228
  switch i8 %44, label %45 [
    i8 32, label %47
    i8 46, label %47
    i8 95, label %47
    i8 45, label %47
    i8 126, label %47
  ], !dbg !352

; <label>:45                                      ; preds = %42
  %46 = add nsw i32 %r2.0, 1, !dbg !354
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !133, metadata !176), !dbg !355
  br label %47, !dbg !356

; <label>:47                                      ; preds = %42, %42, %42, %42, %42, %45
  %r2.1 = phi i32 [ %r2.0, %42 ], [ %46, %45 ], [ %r2.0, %42 ], [ %r2.0, %42 ], [ %r2.0, %42 ], [ %r2.0, %42 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !357
  br label %21, !dbg !357

; <label>:48                                      ; preds = %21
  tail call void @free(i8* %6) #7, !dbg !358
  store i32 %lpos.0, i32* %ret_listlen, align 4, !dbg !359, !tbaa !205
  %49 = bitcast i32** %ret_s1_list to i8**, !dbg !360
  store i8* %3, i8** %49, align 8, !dbg !360, !tbaa !197
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float @CompareMultAlignments(i8** nocapture readonly %kseqs, i8** nocapture readonly %tseqs, i32 %N) #0 {
  tail call void @llvm.dbg.value(metadata i8** %kseqs, i64 0, metadata !46, metadata !176), !dbg !361
  tail call void @llvm.dbg.value(metadata i8** %tseqs, i64 0, metadata !47, metadata !176), !dbg !362
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !48, metadata !176), !dbg !363
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !52, metadata !176), !dbg !364
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !49, metadata !176), !dbg !365
  %1 = icmp sgt i32 %N, 0, !dbg !366
  br i1 %1, label %.lr.ph8, label %._crit_edge, !dbg !369

.lr.ph8:                                          ; preds = %0
  %2 = sext i32 %N to i64, !dbg !369
  br label %3, !dbg !369

.loopexit:                                        ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !369
  br i1 %4, label %3, label %._crit_edge, !dbg !369

; <label>:3                                       ; preds = %.lr.ph8, %.loopexit
  %indvars.iv12 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next13, %.loopexit ]
  %indvars.iv = phi i64 [ 1, %.lr.ph8 ], [ %indvars.iv.next, %.loopexit ]
  %tot_score.07 = phi float [ 0.000000e+00, %.lr.ph8 ], [ %18, %.loopexit ]
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !369
  %4 = icmp slt i64 %indvars.iv.next13, %2, !dbg !370
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !373

.lr.ph:                                           ; preds = %3
  %5 = getelementptr inbounds i8** %kseqs, i64 %indvars.iv12, !dbg !374
  %6 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv12, !dbg !376
  %7 = trunc i64 %indvars.iv.next13 to i32, !dbg !373
  br label %8, !dbg !373

; <label>:8                                       ; preds = %.lr.ph, %17
  %indvars.iv10 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next11, %17 ]
  %tot_score.15 = phi float [ %tot_score.07, %.lr.ph ], [ %18, %17 ]
  %j.04 = phi i32 [ %7, %.lr.ph ], [ %19, %17 ]
  %9 = load i8** %5, align 8, !dbg !374, !tbaa !197
  %10 = getelementptr inbounds i8** %kseqs, i64 %indvars.iv10, !dbg !377
  %11 = load i8** %10, align 8, !dbg !377, !tbaa !197
  %12 = load i8** %6, align 8, !dbg !376, !tbaa !197
  %13 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv10, !dbg !378
  %14 = load i8** %13, align 8, !dbg !378, !tbaa !197
  %15 = tail call float @ComparePairAlignments(i8* %9, i8* %11, i8* %12, i8* %14) #7, !dbg !379
  tail call void @llvm.dbg.value(metadata float %15, i64 0, metadata !51, metadata !176), !dbg !380
  %16 = fcmp olt float %15, 0.000000e+00, !dbg !381
  br i1 %16, label %.loopexit1, label %17, !dbg !383

; <label>:17                                      ; preds = %8
  %18 = fadd float %tot_score.15, %15, !dbg !384
  tail call void @llvm.dbg.value(metadata float %18, i64 0, metadata !52, metadata !176), !dbg !364
  %19 = add nuw nsw i32 %j.04, 1, !dbg !385
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !50, metadata !176), !dbg !386
  %20 = icmp slt i32 %19, %N, !dbg !370
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !373
  br i1 %20, label %8, label %.loopexit, !dbg !373

._crit_edge:                                      ; preds = %.loopexit, %3, %0
  %tot_score.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %tot_score.07, %3 ], [ %18, %.loopexit ]
  %21 = fpext float %tot_score.0.lcssa to double, !dbg !387
  %22 = fmul double %21, 2.000000e+00, !dbg !388
  %23 = sitofp i32 %N to float, !dbg !389
  %24 = fpext float %23 to double, !dbg !389
  %25 = fadd double %24, -1.000000e+00, !dbg !390
  %26 = fmul double %24, %25, !dbg !391
  %27 = fdiv double %22, %26, !dbg !392
  %28 = fptrunc double %27 to float, !dbg !393
  br label %.loopexit1, !dbg !394

.loopexit1:                                       ; preds = %8, %._crit_edge
  %.0 = phi float [ %28, %._crit_edge ], [ -1.000000e+00, %8 ]
  ret float %.0, !dbg !395
}

; Function Attrs: nounwind optsize ssp uwtable
define float @CompareRefMultAlignments(i32* nocapture readonly %ref, i8** nocapture readonly %kseqs, i8** nocapture readonly %tseqs, i32 %N) #0 {
  tail call void @llvm.dbg.value(metadata i32* %ref, i64 0, metadata !57, metadata !176), !dbg !396
  tail call void @llvm.dbg.value(metadata i8** %kseqs, i64 0, metadata !58, metadata !176), !dbg !397
  tail call void @llvm.dbg.value(metadata i8** %tseqs, i64 0, metadata !59, metadata !176), !dbg !398
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !60, metadata !176), !dbg !399
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !64, metadata !176), !dbg !400
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !176), !dbg !401
  %1 = icmp sgt i32 %N, 0, !dbg !402
  br i1 %1, label %.lr.ph8, label %._crit_edge, !dbg !405

.lr.ph8:                                          ; preds = %0
  %2 = sext i32 %N to i64, !dbg !405
  br label %3, !dbg !405

.loopexit:                                        ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !405
  br i1 %4, label %3, label %._crit_edge, !dbg !405

; <label>:3                                       ; preds = %.lr.ph8, %.loopexit
  %indvars.iv12 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next13, %.loopexit ]
  %indvars.iv = phi i64 [ 1, %.lr.ph8 ], [ %indvars.iv.next, %.loopexit ]
  %tot_score.07 = phi float [ 0.000000e+00, %.lr.ph8 ], [ %18, %.loopexit ]
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !405
  %4 = icmp slt i64 %indvars.iv.next13, %2, !dbg !406
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !409

.lr.ph:                                           ; preds = %3
  %5 = getelementptr inbounds i8** %kseqs, i64 %indvars.iv12, !dbg !410
  %6 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv12, !dbg !412
  %7 = trunc i64 %indvars.iv.next13 to i32, !dbg !409
  br label %8, !dbg !409

; <label>:8                                       ; preds = %.lr.ph, %17
  %indvars.iv10 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next11, %17 ]
  %tot_score.15 = phi float [ %tot_score.07, %.lr.ph ], [ %18, %17 ]
  %j.04 = phi i32 [ %7, %.lr.ph ], [ %19, %17 ]
  %9 = load i8** %5, align 8, !dbg !410, !tbaa !197
  %10 = getelementptr inbounds i8** %kseqs, i64 %indvars.iv10, !dbg !413
  %11 = load i8** %10, align 8, !dbg !413, !tbaa !197
  %12 = load i8** %6, align 8, !dbg !412, !tbaa !197
  %13 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv10, !dbg !414
  %14 = load i8** %13, align 8, !dbg !414, !tbaa !197
  %15 = tail call float @CompareRefPairAlignments(i32* %ref, i8* %9, i8* %11, i8* %12, i8* %14) #7, !dbg !415
  tail call void @llvm.dbg.value(metadata float %15, i64 0, metadata !63, metadata !176), !dbg !416
  %16 = fcmp olt float %15, 0.000000e+00, !dbg !417
  br i1 %16, label %.loopexit1, label %17, !dbg !419

; <label>:17                                      ; preds = %8
  %18 = fadd float %tot_score.15, %15, !dbg !420
  tail call void @llvm.dbg.value(metadata float %18, i64 0, metadata !64, metadata !176), !dbg !400
  %19 = add nuw nsw i32 %j.04, 1, !dbg !421
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !62, metadata !176), !dbg !422
  %20 = icmp slt i32 %19, %N, !dbg !406
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !409
  br i1 %20, label %8, label %.loopexit, !dbg !409

._crit_edge:                                      ; preds = %.loopexit, %3, %0
  %tot_score.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %tot_score.07, %3 ], [ %18, %.loopexit ]
  %21 = fpext float %tot_score.0.lcssa to double, !dbg !423
  %22 = fmul double %21, 2.000000e+00, !dbg !424
  %23 = sitofp i32 %N to float, !dbg !425
  %24 = fpext float %23 to double, !dbg !425
  %25 = fadd double %24, -1.000000e+00, !dbg !426
  %26 = fmul double %24, %25, !dbg !427
  %27 = fdiv double %22, %26, !dbg !428
  %28 = fptrunc double %27 to float, !dbg !429
  br label %.loopexit1, !dbg !430

.loopexit1:                                       ; preds = %8, %._crit_edge
  %.0 = phi float [ %28, %._crit_edge ], [ -1.000000e+00, %8 ]
  ret float %.0, !dbg !431
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @PairwiseIdentity(i8* nocapture readonly %s1, i8* nocapture readonly %s2) #3 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !69, metadata !176), !dbg !432
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !70, metadata !176), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !176), !dbg !434
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !72, metadata !176), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !71, metadata !176), !dbg !436
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !74, metadata !176), !dbg !437
  %1 = load i8* %s1, align 1, !dbg !438, !tbaa !228
  %2 = icmp eq i8 %1, 0, !dbg !441
  br i1 %2, label %.critedge, label %.lr.ph, !dbg !442

.lr.ph:                                           ; preds = %0, %15
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %0 ]
  %3 = phi i8 [ %17, %15 ], [ %1, %0 ]
  %len2.03 = phi i32 [ %len2.1, %15 ], [ 0, %0 ]
  %len1.02 = phi i32 [ %len1.1, %15 ], [ 0, %0 ]
  %idents.01 = phi i32 [ %idents.1, %15 ], [ 0, %0 ]
  %4 = getelementptr inbounds i8* %s2, i64 %indvars.iv, !dbg !443
  %5 = load i8* %4, align 1, !dbg !443, !tbaa !228
  %6 = icmp eq i8 %5, 0, !dbg !444
  br i1 %6, label %.critedge, label %7, !dbg !445

; <label>:7                                       ; preds = %.lr.ph
  switch i8 %3, label %8 [
    i8 32, label %12
    i8 46, label %12
    i8 95, label %12
    i8 45, label %12
    i8 126, label %12
  ], !dbg !446

; <label>:8                                       ; preds = %7
  %9 = add nsw i32 %len1.02, 1, !dbg !449
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !72, metadata !176), !dbg !435
  %10 = icmp eq i8 %3, %5, !dbg !451
  %11 = zext i1 %10 to i32, !dbg !453
  %.idents.0 = add nsw i32 %11, %idents.01, !dbg !453
  br label %12, !dbg !453

; <label>:12                                      ; preds = %8, %7, %7, %7, %7, %7
  %idents.1 = phi i32 [ %idents.01, %7 ], [ %idents.01, %7 ], [ %idents.01, %7 ], [ %idents.01, %7 ], [ %idents.01, %7 ], [ %.idents.0, %8 ]
  %len1.1 = phi i32 [ %len1.02, %7 ], [ %len1.02, %7 ], [ %len1.02, %7 ], [ %len1.02, %7 ], [ %len1.02, %7 ], [ %9, %8 ]
  switch i8 %5, label %13 [
    i8 32, label %15
    i8 46, label %15
    i8 95, label %15
    i8 45, label %15
    i8 126, label %15
  ], !dbg !454

; <label>:13                                      ; preds = %12
  %14 = add nsw i32 %len2.03, 1, !dbg !456
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !73, metadata !176), !dbg !434
  br label %15, !dbg !457

; <label>:15                                      ; preds = %12, %12, %12, %12, %12, %13
  %len2.1 = phi i32 [ %len2.03, %12 ], [ %14, %13 ], [ %len2.03, %12 ], [ %len2.03, %12 ], [ %len2.03, %12 ], [ %len2.03, %12 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !442
  %16 = getelementptr inbounds i8* %s1, i64 %indvars.iv.next, !dbg !438
  %17 = load i8* %16, align 1, !dbg !438, !tbaa !228
  %18 = icmp eq i8 %17, 0, !dbg !441
  br i1 %18, label %.critedge, label %.lr.ph, !dbg !442

.critedge:                                        ; preds = %15, %.lr.ph, %0
  %len2.0.lcssa = phi i32 [ 0, %0 ], [ %len2.1, %15 ], [ %len2.03, %.lr.ph ]
  %len1.0.lcssa = phi i32 [ 0, %0 ], [ %len1.1, %15 ], [ %len1.02, %.lr.ph ]
  %idents.0.lcssa = phi i32 [ 0, %0 ], [ %idents.1, %15 ], [ %idents.01, %.lr.ph ]
  %19 = icmp slt i32 %len2.0.lcssa, %len1.0.lcssa, !dbg !458
  tail call void @llvm.dbg.value(metadata i32 %len2.1, i64 0, metadata !72, metadata !176), !dbg !435
  %len2.0.len1.0 = select i1 %19, i32 %len2.0.lcssa, i32 %len1.0.lcssa, !dbg !460
  %20 = icmp eq i32 %len2.0.len1.0, 0, !dbg !461
  br i1 %20, label %25, label %21, !dbg !462

; <label>:21                                      ; preds = %.critedge
  %22 = sitofp i32 %idents.0.lcssa to float, !dbg !463
  %23 = sitofp i32 %len2.0.len1.0 to float, !dbg !464
  %24 = fdiv float %22, %23, !dbg !465
  br label %25, !dbg !462

; <label>:25                                      ; preds = %.critedge, %21
  %26 = phi float [ %24, %21 ], [ 0.000000e+00, %.critedge ]
  ret float %26, !dbg !466
}

; Function Attrs: nounwind optsize ssp uwtable
define float @AlignmentIdentityBySampling(i8** nocapture readonly %aseq, i32 %L, i32 %N, i32 %nsample) #0 {
  tail call void @llvm.dbg.value(metadata i8** %aseq, i64 0, metadata !79, metadata !176), !dbg !467
  tail call void @llvm.dbg.value(metadata i32 %L, i64 0, metadata !80, metadata !176), !dbg !468
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !81, metadata !176), !dbg !469
  tail call void @llvm.dbg.value(metadata i32 %nsample, i64 0, metadata !82, metadata !176), !dbg !470
  %1 = icmp slt i32 %N, 2, !dbg !471
  br i1 %1, label %26, label %.preheader, !dbg !473

.preheader:                                       ; preds = %0
  %2 = icmp sgt i32 %nsample, 0, !dbg !474
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !477

.lr.ph:                                           ; preds = %.preheader
  %3 = sitofp i32 %N to double, !dbg !478
  %4 = add i32 %nsample, -1, !dbg !477
  br label %5, !dbg !477

; <label>:5                                       ; preds = %14, %.lr.ph
  %sum.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %22, %14 ]
  %x.01 = phi i32 [ 0, %.lr.ph ], [ %23, %14 ]
  %6 = tail call double @sre_random() #8, !dbg !478
  %7 = fmul double %3, %6, !dbg !478
  %8 = fptosi double %7 to i32, !dbg !478
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !84, metadata !176), !dbg !480
  br label %9, !dbg !481

; <label>:9                                       ; preds = %9, %5
  %10 = tail call double @sre_random() #8, !dbg !482
  %11 = fmul double %3, %10, !dbg !482
  %12 = fptosi double %11 to i32, !dbg !482
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !85, metadata !176), !dbg !484
  %13 = icmp eq i32 %12, %8, !dbg !485
  br i1 %13, label %9, label %14, !dbg !486

; <label>:14                                      ; preds = %9
  %15 = sext i32 %8 to i64, !dbg !487
  %16 = getelementptr inbounds i8** %aseq, i64 %15, !dbg !487
  %17 = load i8** %16, align 8, !dbg !487, !tbaa !197
  %18 = sext i32 %12 to i64, !dbg !488
  %19 = getelementptr inbounds i8** %aseq, i64 %18, !dbg !488
  %20 = load i8** %19, align 8, !dbg !488, !tbaa !197
  %21 = tail call float @PairwiseIdentity(i8* %17, i8* %20) #7, !dbg !489
  %22 = fadd float %sum.02, %21, !dbg !490
  tail call void @llvm.dbg.value(metadata float %22, i64 0, metadata !86, metadata !176), !dbg !491
  %23 = add nuw nsw i32 %x.01, 1, !dbg !492
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !83, metadata !176), !dbg !493
  %exitcond = icmp eq i32 %x.01, %4, !dbg !477
  br i1 %exitcond, label %._crit_edge, label %5, !dbg !477

._crit_edge:                                      ; preds = %14, %.preheader
  %sum.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %22, %14 ]
  %24 = sitofp i32 %nsample to float, !dbg !494
  %25 = fdiv float %sum.0.lcssa, %24, !dbg !495
  br label %26, !dbg !496

; <label>:26                                      ; preds = %0, %._crit_edge
  %.0 = phi float [ %25, %._crit_edge ], [ 1.000000e+00, %0 ]
  ret float %.0, !dbg !497
}

; Function Attrs: optsize
declare double @sre_random() #4

; Function Attrs: nounwind optsize ssp uwtable
define i8* @MajorityRuleConsensus(i8** nocapture readonly %aseq, i32 %nseq, i32 %alen) #0 {
  %count = alloca [27 x i32], align 16
  %1 = bitcast [27 x i32]* %count to i8*
  tail call void @llvm.dbg.value(metadata i8** %aseq, i64 0, metadata !91, metadata !176), !dbg !498
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !92, metadata !176), !dbg !499
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !93, metadata !176), !dbg !500
  call void @llvm.lifetime.start(i64 108, i8* %1) #5, !dbg !501
  tail call void @llvm.dbg.declare(metadata [27 x i32]* %count, metadata !95, metadata !176), !dbg !502
  %2 = add nsw i32 %alen, 1, !dbg !503
  %3 = sext i32 %2 to i64, !dbg !503
  %4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), i32 485, i64 %3) #8, !dbg !503
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !94, metadata !176), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !101, metadata !176), !dbg !505
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !100, metadata !176), !dbg !506
  %5 = icmp sgt i32 %alen, 0, !dbg !507
  br i1 %5, label %.preheader3.lr.ph, label %._crit_edge11, !dbg !510

.preheader3.lr.ph:                                ; preds = %0
  %6 = icmp sgt i32 %nseq, 0, !dbg !511
  %7 = getelementptr inbounds [27 x i32]* %count, i64 0, i64 26, !dbg !515
  %8 = sitofp i32 %nseq to float, !dbg !517
  %9 = add i32 %nseq, -1, !dbg !510
  %10 = add i32 %alen, -1, !dbg !510
  br label %.preheader3, !dbg !510

.preheader3:                                      ; preds = %53, %.preheader3.lr.ph
  %indvars.iv15 = phi i64 [ 0, %.preheader3.lr.ph ], [ %indvars.iv.next16, %53 ]
  %spos.09 = phi i32 [ 0, %.preheader3.lr.ph ], [ %spos.1, %53 ]
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 108, i32 16, i1 false), !dbg !518
  br i1 %6, label %.lr.ph, label %38, !dbg !521

.lr.ph:                                           ; preds = %.preheader3, %37
  %indvars.iv = phi i64 [ %indvars.iv.next, %37 ], [ 0, %.preheader3 ]
  %11 = getelementptr inbounds i8** %aseq, i64 %indvars.iv, !dbg !522
  %12 = load i8** %11, align 8, !dbg !522, !tbaa !197
  %13 = getelementptr inbounds i8* %12, i64 %indvars.iv15, !dbg !522
  %14 = load i8* %13, align 1, !dbg !522, !tbaa !228
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !156, metadata !176) #5, !dbg !525
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !164, metadata !176) #5, !dbg !527
  tail call void @llvm.dbg.value(metadata i64 256, i64 0, metadata !165, metadata !176) #5, !dbg !529
  %isascii.i.i1 = icmp sgt i8 %14, -1, !dbg !530
  br i1 %isascii.i.i1, label %15, label %20, !dbg !530

; <label>:15                                      ; preds = %.lr.ph
  %16 = sext i8 %14 to i64, !dbg !531
  %17 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %16, !dbg !531
  %18 = load i32* %17, align 4, !dbg !531, !tbaa !205
  %19 = and i32 %18, 256, !dbg !532
  br label %isalpha.exit, !dbg !530

; <label>:20                                      ; preds = %.lr.ph
  %21 = sext i8 %14 to i32, !dbg !533
  %22 = tail call i32 @__maskrune(i32 %21, i64 256) #8, !dbg !534
  br label %isalpha.exit, !dbg !530

isalpha.exit:                                     ; preds = %15, %20
  %.sink.i.in.i = phi i32 [ %19, %15 ], [ %22, %20 ], !dbg !535
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !536
  br i1 %.sink.i.i, label %34, label %23, !dbg !537

; <label>:23                                      ; preds = %isalpha.exit
  %24 = load i8** %11, align 8, !dbg !538, !tbaa !197
  %25 = getelementptr inbounds i8* %24, i64 %indvars.iv15, !dbg !538
  %26 = load i8* %25, align 1, !dbg !538, !tbaa !228
  %27 = sext i8 %26 to i32, !dbg !540
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !171, metadata !176) #5, !dbg !541
  %28 = tail call i32 @__toupper(i32 %27) #8, !dbg !543
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !103, metadata !176), !dbg !544
  %29 = add nsw i32 %28, -65, !dbg !545
  %30 = sext i32 %29 to i64, !dbg !546
  %31 = getelementptr inbounds [27 x i32]* %count, i64 0, i64 %30, !dbg !546
  %32 = load i32* %31, align 4, !dbg !547, !tbaa !205
  %33 = add nsw i32 %32, 1, !dbg !547
  store i32 %33, i32* %31, align 4, !dbg !547, !tbaa !205
  br label %37, !dbg !548

; <label>:34                                      ; preds = %isalpha.exit
  %35 = load i32* %7, align 8, !dbg !549, !tbaa !205
  %36 = add nsw i32 %35, 1, !dbg !549
  store i32 %36, i32* %7, align 8, !dbg !549, !tbaa !205
  br label %37

; <label>:37                                      ; preds = %23, %34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !521
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !521
  %exitcond = icmp eq i32 %lftr.wideiv, %9, !dbg !521
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !521

._crit_edge:                                      ; preds = %37
  %.pre = load i32* %7, align 8, !dbg !515, !tbaa !205
  br label %38, !dbg !521

; <label>:38                                      ; preds = %._crit_edge, %.preheader3
  %39 = phi i32 [ %.pre, %._crit_edge ], [ 0, %.preheader3 ]
  %40 = sitofp i32 %39 to float, !dbg !551
  %41 = fdiv float %40, %8, !dbg !552
  %42 = fcmp ugt float %41, 5.000000e-01, !dbg !553
  br i1 %42, label %53, label %.preheader, !dbg !554

.preheader:                                       ; preds = %38, %.preheader
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %.preheader ], [ 0, %38 ]
  %bestx.08 = phi i32 [ %x.1.bestx.0, %.preheader ], [ -1, %38 ]
  %max.07 = phi i32 [ %.max.0, %.preheader ], [ -1, %38 ]
  %43 = getelementptr inbounds [27 x i32]* %count, i64 0, i64 %indvars.iv12, !dbg !555
  %44 = load i32* %43, align 4, !dbg !555, !tbaa !205
  %45 = icmp sgt i32 %44, %max.07, !dbg !560
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !104, metadata !176), !dbg !561
  %.max.0 = select i1 %45, i32 %44, i32 %max.07, !dbg !562
  %46 = trunc i64 %indvars.iv12 to i32, !dbg !562
  %x.1.bestx.0 = select i1 %45, i32 %46, i32 %bestx.08, !dbg !562
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !563
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 26, !dbg !563
  br i1 %exitcond14, label %47, label %.preheader, !dbg !563

; <label>:47                                      ; preds = %.preheader
  %48 = add nsw i32 %x.1.bestx.0, 65, !dbg !564
  %49 = trunc i32 %48 to i8, !dbg !565
  %50 = add nsw i32 %spos.09, 1, !dbg !566
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !101, metadata !176), !dbg !505
  %51 = sext i32 %spos.09 to i64, !dbg !567
  %52 = getelementptr inbounds i8* %4, i64 %51, !dbg !567
  store i8 %49, i8* %52, align 1, !dbg !568, !tbaa !228
  br label %53, !dbg !569

; <label>:53                                      ; preds = %38, %47
  %spos.1 = phi i32 [ %50, %47 ], [ %spos.09, %38 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !510
  %lftr.wideiv17 = trunc i64 %indvars.iv15 to i32, !dbg !510
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %10, !dbg !510
  br i1 %exitcond18, label %._crit_edge11, label %.preheader3, !dbg !510

._crit_edge11:                                    ; preds = %53, %0
  %spos.0.lcssa = phi i32 [ 0, %0 ], [ %spos.1, %53 ]
  %54 = sext i32 %spos.0.lcssa to i64, !dbg !570
  %55 = getelementptr inbounds i8* %4, i64 %54, !dbg !570
  store i8 0, i8* %55, align 1, !dbg !571, !tbaa !228
  call void @llvm.lifetime.end(i64 108, i8* %1) #5, !dbg !572
  ret i8* %4, !dbg !572
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #4

; Function Attrs: optsize
declare i32 @__toupper(i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!172, !173, !174}
!llvm.ident = !{!175}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/aligneval.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6, !7}
!4 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!8 = !{!9, !25, !41, !53, !65, !75, !87, !106, !119, !136, !151, !157, !166, !169}
!9 = !DISubprogram(name: "ComparePairAlignments", scope: !1, file: !1, line: 95, type: !10, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: float (i8*, i8*, i8*, i8*)* @ComparePairAlignments, variables: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !12, !12, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "known1", arg: 1, scope: !9, file: !1, line: 95, type: !12)
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "known2", arg: 2, scope: !9, file: !1, line: 95, type: !12)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "calc1", arg: 3, scope: !9, file: !1, line: 95, type: !12)
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "calc2", arg: 4, scope: !9, file: !1, line: 95, type: !12)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "klist1", scope: !9, file: !1, line: 97, type: !7)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "klist2", scope: !9, file: !1, line: 98, type: !7)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tlist1", scope: !9, file: !1, line: 99, type: !7)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tlist2", scope: !9, file: !1, line: 100, type: !7)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len1", scope: !9, file: !1, line: 101, type: !5)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len2", scope: !9, file: !1, line: 101, type: !5)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "score", scope: !9, file: !1, line: 102, type: !4)
!25 = !DISubprogram(name: "CompareRefPairAlignments", scope: !1, file: !1, line: 133, type: !26, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, function: float (i32*, i8*, i8*, i8*, i8*)* @CompareRefPairAlignments, variables: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!4, !7, !12, !12, !12, !12}
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ref", arg: 1, scope: !25, file: !1, line: 133, type: !7)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "known1", arg: 2, scope: !25, file: !1, line: 133, type: !12)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "known2", arg: 3, scope: !25, file: !1, line: 133, type: !12)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "calc1", arg: 4, scope: !25, file: !1, line: 133, type: !12)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "calc2", arg: 5, scope: !25, file: !1, line: 133, type: !12)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "klist1", scope: !25, file: !1, line: 135, type: !7)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "klist2", scope: !25, file: !1, line: 136, type: !7)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tlist1", scope: !25, file: !1, line: 137, type: !7)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tlist2", scope: !25, file: !1, line: 138, type: !7)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len1", scope: !25, file: !1, line: 139, type: !5)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len2", scope: !25, file: !1, line: 139, type: !5)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "score", scope: !25, file: !1, line: 140, type: !4)
!41 = !DISubprogram(name: "CompareMultAlignments", scope: !1, file: !1, line: 334, type: !42, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, function: float (i8**, i8**, i32)* @CompareMultAlignments, variables: !45)
!42 = !DISubroutineType(types: !43)
!43 = !{!4, !44, !44, !5}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!45 = !{!46, !47, !48, !49, !50, !51, !52}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kseqs", arg: 1, scope: !41, file: !1, line: 334, type: !44)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tseqs", arg: 2, scope: !41, file: !1, line: 334, type: !44)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 3, scope: !41, file: !1, line: 334, type: !5)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !41, file: !1, line: 336, type: !5)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !41, file: !1, line: 336, type: !5)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "score", scope: !41, file: !1, line: 337, type: !4)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tot_score", scope: !41, file: !1, line: 338, type: !4)
!53 = !DISubprogram(name: "CompareRefMultAlignments", scope: !1, file: !1, line: 366, type: !54, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, function: float (i32*, i8**, i8**, i32)* @CompareRefMultAlignments, variables: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!4, !7, !44, !44, !5}
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ref", arg: 1, scope: !53, file: !1, line: 366, type: !7)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kseqs", arg: 2, scope: !53, file: !1, line: 366, type: !44)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tseqs", arg: 3, scope: !53, file: !1, line: 366, type: !44)
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 4, scope: !53, file: !1, line: 366, type: !5)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !53, file: !1, line: 368, type: !5)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !53, file: !1, line: 368, type: !5)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "score", scope: !53, file: !1, line: 369, type: !4)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tot_score", scope: !53, file: !1, line: 370, type: !4)
!65 = !DISubprogram(name: "PairwiseIdentity", scope: !1, file: !1, line: 401, type: !66, isLocal: false, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: true, function: float (i8*, i8*)* @PairwiseIdentity, variables: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{!4, !12, !12}
!68 = !{!69, !70, !71, !72, !73, !74}
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !65, file: !1, line: 401, type: !12)
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !65, file: !1, line: 401, type: !12)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idents", scope: !65, file: !1, line: 403, type: !5)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len1", scope: !65, file: !1, line: 404, type: !5)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len2", scope: !65, file: !1, line: 404, type: !5)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !65, file: !1, line: 405, type: !5)
!75 = !DISubprogram(name: "AlignmentIdentityBySampling", scope: !1, file: !1, line: 443, type: !76, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, function: float (i8**, i32, i32, i32)* @AlignmentIdentityBySampling, variables: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{!4, !44, !5, !5, !5}
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !75, file: !1, line: 443, type: !44)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "L", arg: 2, scope: !75, file: !1, line: 443, type: !5)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 3, scope: !75, file: !1, line: 443, type: !5)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsample", arg: 4, scope: !75, file: !1, line: 443, type: !5)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !75, file: !1, line: 445, type: !5)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !75, file: !1, line: 445, type: !5)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !75, file: !1, line: 445, type: !5)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !75, file: !1, line: 446, type: !4)
!87 = !DISubprogram(name: "MajorityRuleConsensus", scope: !1, file: !1, line: 475, type: !88, isLocal: false, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8**, i32, i32)* @MajorityRuleConsensus, variables: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{!12, !44, !5, !5}
!90 = !{!91, !92, !93, !94, !95, !99, !100, !101, !102, !103, !104, !105}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !87, file: !1, line: 475, type: !44)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !87, file: !1, line: 475, type: !5)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 3, scope: !87, file: !1, line: 475, type: !5)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cs", scope: !87, file: !1, line: 477, type: !12)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !87, file: !1, line: 478, type: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 864, align: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 27)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !87, file: !1, line: 479, type: !5)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !87, file: !1, line: 479, type: !5)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "spos", scope: !87, file: !1, line: 480, type: !5)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !87, file: !1, line: 481, type: !5)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sym", scope: !87, file: !1, line: 482, type: !5)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max", scope: !87, file: !1, line: 483, type: !5)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bestx", scope: !87, file: !1, line: 483, type: !5)
!106 = !DISubprogram(name: "make_alilist", scope: !1, file: !1, line: 170, type: !107, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32**, i32*)* @make_alilist, variables: !110)
!107 = !DISubroutineType(types: !108)
!108 = !{!5, !12, !12, !109, !7}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !106, file: !1, line: 170, type: !12)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !106, file: !1, line: 170, type: !12)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_s1_list", arg: 3, scope: !106, file: !1, line: 170, type: !109)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_listlen", arg: 4, scope: !106, file: !1, line: 170, type: !7)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s1_list", scope: !106, file: !1, line: 172, type: !7)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !106, file: !1, line: 173, type: !5)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r1", scope: !106, file: !1, line: 174, type: !5)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r2", scope: !106, file: !1, line: 174, type: !5)
!119 = !DISubprogram(name: "make_ref_alilist", scope: !1, file: !1, line: 224, type: !120, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i8*, i8*, i32**, i32*)* @make_ref_alilist, variables: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!5, !7, !12, !12, !12, !12, !109, !7}
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ref", arg: 1, scope: !119, file: !1, line: 224, type: !7)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "k1", arg: 2, scope: !119, file: !1, line: 224, type: !12)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "k2", arg: 3, scope: !119, file: !1, line: 224, type: !12)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 4, scope: !119, file: !1, line: 225, type: !12)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 5, scope: !119, file: !1, line: 225, type: !12)
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_s1_list", arg: 6, scope: !119, file: !1, line: 225, type: !109)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_listlen", arg: 7, scope: !119, file: !1, line: 225, type: !7)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s1_list", scope: !119, file: !1, line: 227, type: !7)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !119, file: !1, line: 228, type: !5)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r1", scope: !119, file: !1, line: 229, type: !5)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r2", scope: !119, file: !1, line: 229, type: !5)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "canons1", scope: !119, file: !1, line: 230, type: !7)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lpos", scope: !119, file: !1, line: 231, type: !5)
!136 = !DISubprogram(name: "compare_lists", scope: !1, file: !1, line: 295, type: !137, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32*, i32*, i32, i32, float*)* @compare_lists, variables: !140)
!137 = !DISubroutineType(types: !138)
!138 = !{!5, !7, !7, !7, !7, !5, !5, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "k1", arg: 1, scope: !136, file: !1, line: 295, type: !7)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "k2", arg: 2, scope: !136, file: !1, line: 295, type: !7)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t1", arg: 3, scope: !136, file: !1, line: 295, type: !7)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t2", arg: 4, scope: !136, file: !1, line: 295, type: !7)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len1", arg: 5, scope: !136, file: !1, line: 295, type: !5)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len2", arg: 6, scope: !136, file: !1, line: 295, type: !5)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_sc", arg: 7, scope: !136, file: !1, line: 295, type: !139)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "id", scope: !136, file: !1, line: 297, type: !4)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tot", scope: !136, file: !1, line: 298, type: !4)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !136, file: !1, line: 299, type: !5)
!151 = !DISubprogram(name: "isalpha", scope: !152, file: !152, line: 218, type: !153, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, variables: !155)
!152 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!153 = !DISubroutineType(types: !154)
!154 = !{!5, !5}
!155 = !{!156}
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !151, file: !152, line: 218, type: !5)
!157 = !DISubprogram(name: "__istype", scope: !152, file: !152, line: 153, type: !158, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !163)
!158 = !DISubroutineType(types: !159)
!159 = !{!5, !160, !162}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !161, line: 70, baseType: !5)
!161 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!162 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!163 = !{!164, !165}
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !157, file: !152, line: 153, type: !160)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !157, file: !152, line: 153, type: !162)
!166 = !DISubprogram(name: "isascii", scope: !152, file: !152, line: 135, type: !153, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !167)
!167 = !{!168}
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !166, file: !152, line: 135, type: !5)
!169 = !DISubprogram(name: "toupper", scope: !152, file: !152, line: 298, type: !153, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, variables: !170)
!170 = !{!171}
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !169, file: !152, line: 298, type: !5)
!172 = !{i32 2, !"Dwarf Version", i32 2}
!173 = !{i32 2, !"Debug Info Version", i32 700000003}
!174 = !{i32 1, !"PIC Level", i32 2}
!175 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!176 = !DIExpression()
!177 = !DILocation(line: 95, column: 29, scope: !9)
!178 = !DILocation(line: 95, column: 43, scope: !9)
!179 = !DILocation(line: 95, column: 57, scope: !9)
!180 = !DILocation(line: 95, column: 70, scope: !9)
!181 = !DILocation(line: 99, column: 8, scope: !9)
!182 = !DILocation(line: 101, column: 7, scope: !9)
!183 = !DILocation(line: 104, column: 9, scope: !184)
!184 = distinct !DILexicalBlock(scope: !9, file: !1, line: 104, column: 7)
!185 = !DILocation(line: 100, column: 8, scope: !9)
!186 = !DILocation(line: 101, column: 13, scope: !9)
!187 = !DILocation(line: 105, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !9, file: !1, line: 105, column: 7)
!189 = !DILocation(line: 97, column: 8, scope: !9)
!190 = !DILocation(line: 106, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !9, file: !1, line: 106, column: 7)
!192 = !DILocation(line: 98, column: 8, scope: !9)
!193 = !DILocation(line: 107, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !9, file: !1, line: 107, column: 7)
!195 = !DILocation(line: 108, column: 23, scope: !196)
!196 = distinct !DILexicalBlock(scope: !9, file: !1, line: 108, column: 7)
!197 = !{!198, !198, i64 0}
!198 = !{!"any pointer", !199, i64 0}
!199 = !{!"omnipotent char", !200, i64 0}
!200 = !{!"Simple C/C++ TBAA"}
!201 = !DILocation(line: 108, column: 31, scope: !196)
!202 = !DILocation(line: 108, column: 39, scope: !196)
!203 = !DILocation(line: 108, column: 47, scope: !196)
!204 = !DILocation(line: 108, column: 55, scope: !196)
!205 = !{!206, !206, i64 0}
!206 = !{!"int", !199, i64 0}
!207 = !DILocation(line: 108, column: 61, scope: !196)
!208 = !DILocation(line: 102, column: 9, scope: !9)
!209 = !DILocation(line: 108, column: 9, scope: !196)
!210 = !DILocation(line: 110, column: 3, scope: !9)
!211 = !DILocation(line: 111, column: 3, scope: !9)
!212 = !DILocation(line: 112, column: 3, scope: !9)
!213 = !DILocation(line: 113, column: 3, scope: !9)
!214 = !DILocation(line: 114, column: 10, scope: !9)
!215 = !{!216, !216, i64 0}
!216 = !{!"float", !199, i64 0}
!217 = !DILocation(line: 115, column: 1, scope: !9)
!218 = !DILocation(line: 179, column: 21, scope: !106)
!219 = !DILocation(line: 179, column: 13, scope: !106)
!220 = !DILocation(line: 172, column: 8, scope: !106)
!221 = !DILocation(line: 174, column: 12, scope: !106)
!222 = !DILocation(line: 174, column: 8, scope: !106)
!223 = !DILocation(line: 173, column: 8, scope: !106)
!224 = !DILocation(line: 181, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !106, file: !1, line: 181, column: 3)
!226 = !DILocation(line: 181, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !225, file: !1, line: 181, column: 3)
!228 = !{!199, !199, i64 0}
!229 = !DILocation(line: 181, column: 3, scope: !225)
!230 = !DILocation(line: 188, column: 18, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 187, column: 2)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 186, column: 11)
!233 = distinct !DILexicalBlock(scope: !227, file: !1, line: 182, column: 5)
!234 = !DILocation(line: 188, column: 4, scope: !231)
!235 = !DILocation(line: 188, column: 16, scope: !231)
!236 = !DILocation(line: 189, column: 6, scope: !231)
!237 = !DILocation(line: 190, column: 2, scope: !231)
!238 = !DILocation(line: 194, column: 13, scope: !239)
!239 = distinct !DILexicalBlock(scope: !233, file: !1, line: 194, column: 11)
!240 = !DILocation(line: 195, column: 4, scope: !239)
!241 = !DILocation(line: 195, column: 2, scope: !239)
!242 = !DILocation(line: 181, column: 3, scope: !227)
!243 = !DILocation(line: 198, column: 16, scope: !106)
!244 = !DILocation(line: 199, column: 16, scope: !106)
!245 = !DILocation(line: 298, column: 9, scope: !136)
!246 = !DILocation(line: 297, column: 9, scope: !136)
!247 = !DILocation(line: 299, column: 9, scope: !136)
!248 = !DILocation(line: 302, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 302, column: 3)
!250 = distinct !DILexicalBlock(scope: !136, file: !1, line: 302, column: 3)
!251 = !DILocation(line: 302, column: 3, scope: !250)
!252 = !DILocation(line: 308, column: 18, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 308, column: 3)
!254 = distinct !DILexicalBlock(scope: !136, file: !1, line: 308, column: 3)
!255 = !DILocation(line: 308, column: 3, scope: !254)
!256 = !DILocation(line: 304, column: 11, scope: !257)
!257 = distinct !DILexicalBlock(scope: !249, file: !1, line: 303, column: 5)
!258 = !DILocation(line: 305, column: 11, scope: !259)
!259 = distinct !DILexicalBlock(scope: !257, file: !1, line: 305, column: 11)
!260 = !DILocation(line: 305, column: 20, scope: !259)
!261 = !DILocation(line: 305, column: 17, scope: !259)
!262 = !DILocation(line: 305, column: 11, scope: !257)
!263 = !DILocation(line: 305, column: 30, scope: !259)
!264 = !DILocation(line: 305, column: 27, scope: !259)
!265 = !DILocation(line: 310, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !253, file: !1, line: 309, column: 5)
!267 = !DILocation(line: 311, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !266, file: !1, line: 311, column: 11)
!269 = !DILocation(line: 311, column: 20, scope: !268)
!270 = !DILocation(line: 311, column: 17, scope: !268)
!271 = !DILocation(line: 311, column: 11, scope: !266)
!272 = !DILocation(line: 311, column: 30, scope: !268)
!273 = !DILocation(line: 311, column: 27, scope: !268)
!274 = !DILocation(line: 314, column: 16, scope: !136)
!275 = !DILocation(line: 314, column: 11, scope: !136)
!276 = !DILocation(line: 133, column: 32, scope: !25)
!277 = !DILocation(line: 133, column: 43, scope: !25)
!278 = !DILocation(line: 133, column: 57, scope: !25)
!279 = !DILocation(line: 133, column: 71, scope: !25)
!280 = !DILocation(line: 133, column: 84, scope: !25)
!281 = !DILocation(line: 137, column: 8, scope: !25)
!282 = !DILocation(line: 139, column: 7, scope: !25)
!283 = !DILocation(line: 142, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !25, file: !1, line: 142, column: 7)
!285 = !DILocation(line: 138, column: 8, scope: !25)
!286 = !DILocation(line: 139, column: 13, scope: !25)
!287 = !DILocation(line: 143, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !25, file: !1, line: 143, column: 7)
!289 = !DILocation(line: 135, column: 8, scope: !25)
!290 = !DILocation(line: 144, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !25, file: !1, line: 144, column: 7)
!292 = !DILocation(line: 136, column: 8, scope: !25)
!293 = !DILocation(line: 145, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !25, file: !1, line: 145, column: 7)
!295 = !DILocation(line: 146, column: 23, scope: !296)
!296 = distinct !DILexicalBlock(scope: !25, file: !1, line: 146, column: 7)
!297 = !DILocation(line: 146, column: 31, scope: !296)
!298 = !DILocation(line: 146, column: 39, scope: !296)
!299 = !DILocation(line: 146, column: 47, scope: !296)
!300 = !DILocation(line: 146, column: 55, scope: !296)
!301 = !DILocation(line: 146, column: 61, scope: !296)
!302 = !DILocation(line: 140, column: 9, scope: !25)
!303 = !DILocation(line: 146, column: 9, scope: !296)
!304 = !DILocation(line: 148, column: 3, scope: !25)
!305 = !DILocation(line: 149, column: 3, scope: !25)
!306 = !DILocation(line: 150, column: 3, scope: !25)
!307 = !DILocation(line: 151, column: 3, scope: !25)
!308 = !DILocation(line: 152, column: 10, scope: !25)
!309 = !DILocation(line: 153, column: 1, scope: !25)
!310 = !DILocation(line: 224, column: 44, scope: !119)
!311 = !DILocation(line: 236, column: 21, scope: !119)
!312 = !DILocation(line: 227, column: 8, scope: !119)
!313 = !DILocation(line: 237, column: 21, scope: !119)
!314 = !DILocation(line: 237, column: 13, scope: !119)
!315 = !DILocation(line: 230, column: 8, scope: !119)
!316 = !DILocation(line: 229, column: 8, scope: !119)
!317 = !DILocation(line: 228, column: 8, scope: !119)
!318 = !DILocation(line: 244, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !119, file: !1, line: 244, column: 3)
!320 = !DILocation(line: 244, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !319, file: !1, line: 244, column: 3)
!322 = !DILocation(line: 244, column: 3, scope: !319)
!323 = !DILocation(line: 236, column: 13, scope: !119)
!324 = !DILocation(line: 259, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 259, column: 3)
!326 = distinct !DILexicalBlock(scope: !119, file: !1, line: 259, column: 3)
!327 = !DILocation(line: 248, column: 18, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 247, column: 2)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 246, column: 11)
!330 = distinct !DILexicalBlock(scope: !321, file: !1, line: 245, column: 5)
!331 = !DILocation(line: 248, column: 4, scope: !328)
!332 = !DILocation(line: 248, column: 16, scope: !328)
!333 = !DILocation(line: 249, column: 6, scope: !328)
!334 = !DILocation(line: 250, column: 2, scope: !328)
!335 = !DILocation(line: 244, column: 3, scope: !321)
!336 = !DILocation(line: 259, column: 3, scope: !326)
!337 = !DILocation(line: 261, column: 31, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 261, column: 11)
!339 = distinct !DILexicalBlock(scope: !325, file: !1, line: 260, column: 5)
!340 = !DILocation(line: 261, column: 11, scope: !339)
!341 = !DILocation(line: 263, column: 20, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 262, column: 2)
!343 = !DILocation(line: 263, column: 4, scope: !342)
!344 = !DILocation(line: 263, column: 18, scope: !342)
!345 = !DILocation(line: 264, column: 8, scope: !342)
!346 = !DILocation(line: 231, column: 8, scope: !119)
!347 = !DILocation(line: 267, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !339, file: !1, line: 267, column: 11)
!349 = !DILocation(line: 265, column: 2, scope: !342)
!350 = !DILocation(line: 268, column: 4, scope: !348)
!351 = !DILocation(line: 268, column: 2, scope: !348)
!352 = !DILocation(line: 269, column: 13, scope: !353)
!353 = distinct !DILexicalBlock(scope: !339, file: !1, line: 269, column: 11)
!354 = !DILocation(line: 270, column: 4, scope: !353)
!355 = !DILocation(line: 229, column: 12, scope: !119)
!356 = !DILocation(line: 270, column: 2, scope: !353)
!357 = !DILocation(line: 259, column: 3, scope: !325)
!358 = !DILocation(line: 273, column: 3, scope: !119)
!359 = !DILocation(line: 274, column: 16, scope: !119)
!360 = !DILocation(line: 275, column: 16, scope: !119)
!361 = !DILocation(line: 334, column: 30, scope: !41)
!362 = !DILocation(line: 334, column: 44, scope: !41)
!363 = !DILocation(line: 334, column: 55, scope: !41)
!364 = !DILocation(line: 338, column: 10, scope: !41)
!365 = !DILocation(line: 336, column: 10, scope: !41)
!366 = !DILocation(line: 340, column: 17, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !1, line: 340, column: 3)
!368 = distinct !DILexicalBlock(scope: !41, file: !1, line: 340, column: 3)
!369 = !DILocation(line: 340, column: 3, scope: !368)
!370 = !DILocation(line: 341, column: 21, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 341, column: 5)
!372 = distinct !DILexicalBlock(scope: !367, file: !1, line: 341, column: 5)
!373 = !DILocation(line: 341, column: 5, scope: !372)
!374 = !DILocation(line: 343, column: 32, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !1, line: 342, column: 7)
!376 = !DILocation(line: 343, column: 52, scope: !375)
!377 = !DILocation(line: 343, column: 42, scope: !375)
!378 = !DILocation(line: 343, column: 62, scope: !375)
!379 = !DILocation(line: 343, column: 10, scope: !375)
!380 = !DILocation(line: 337, column: 10, scope: !41)
!381 = !DILocation(line: 344, column: 12, scope: !382)
!382 = distinct !DILexicalBlock(scope: !375, file: !1, line: 344, column: 6)
!383 = !DILocation(line: 344, column: 6, scope: !375)
!384 = !DILocation(line: 345, column: 12, scope: !375)
!385 = !DILocation(line: 341, column: 27, scope: !371)
!386 = !DILocation(line: 336, column: 13, scope: !41)
!387 = !DILocation(line: 347, column: 12, scope: !41)
!388 = !DILocation(line: 347, column: 22, scope: !41)
!389 = !DILocation(line: 347, column: 32, scope: !41)
!390 = !DILocation(line: 347, column: 55, scope: !41)
!391 = !DILocation(line: 347, column: 42, scope: !41)
!392 = !DILocation(line: 347, column: 29, scope: !41)
!393 = !DILocation(line: 347, column: 10, scope: !41)
!394 = !DILocation(line: 347, column: 3, scope: !41)
!395 = !DILocation(line: 348, column: 1, scope: !41)
!396 = !DILocation(line: 366, column: 33, scope: !53)
!397 = !DILocation(line: 366, column: 45, scope: !53)
!398 = !DILocation(line: 366, column: 59, scope: !53)
!399 = !DILocation(line: 366, column: 70, scope: !53)
!400 = !DILocation(line: 370, column: 10, scope: !53)
!401 = !DILocation(line: 368, column: 10, scope: !53)
!402 = !DILocation(line: 373, column: 17, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 373, column: 3)
!404 = distinct !DILexicalBlock(scope: !53, file: !1, line: 373, column: 3)
!405 = !DILocation(line: 373, column: 3, scope: !404)
!406 = !DILocation(line: 374, column: 21, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 374, column: 5)
!408 = distinct !DILexicalBlock(scope: !403, file: !1, line: 374, column: 5)
!409 = !DILocation(line: 374, column: 5, scope: !408)
!410 = !DILocation(line: 376, column: 40, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !1, line: 375, column: 7)
!412 = !DILocation(line: 376, column: 60, scope: !411)
!413 = !DILocation(line: 376, column: 50, scope: !411)
!414 = !DILocation(line: 376, column: 70, scope: !411)
!415 = !DILocation(line: 376, column: 10, scope: !411)
!416 = !DILocation(line: 369, column: 10, scope: !53)
!417 = !DILocation(line: 377, column: 12, scope: !418)
!418 = distinct !DILexicalBlock(scope: !411, file: !1, line: 377, column: 6)
!419 = !DILocation(line: 377, column: 6, scope: !411)
!420 = !DILocation(line: 378, column: 12, scope: !411)
!421 = !DILocation(line: 374, column: 27, scope: !407)
!422 = !DILocation(line: 368, column: 13, scope: !53)
!423 = !DILocation(line: 380, column: 12, scope: !53)
!424 = !DILocation(line: 380, column: 22, scope: !53)
!425 = !DILocation(line: 380, column: 31, scope: !53)
!426 = !DILocation(line: 380, column: 54, scope: !53)
!427 = !DILocation(line: 380, column: 41, scope: !53)
!428 = !DILocation(line: 380, column: 28, scope: !53)
!429 = !DILocation(line: 380, column: 10, scope: !53)
!430 = !DILocation(line: 380, column: 3, scope: !53)
!431 = !DILocation(line: 381, column: 1, scope: !53)
!432 = !DILocation(line: 401, column: 24, scope: !65)
!433 = !DILocation(line: 401, column: 34, scope: !65)
!434 = !DILocation(line: 404, column: 17, scope: !65)
!435 = !DILocation(line: 404, column: 11, scope: !65)
!436 = !DILocation(line: 403, column: 11, scope: !65)
!437 = !DILocation(line: 405, column: 11, scope: !65)
!438 = !DILocation(line: 408, column: 15, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 408, column: 3)
!440 = distinct !DILexicalBlock(scope: !65, file: !1, line: 408, column: 3)
!441 = !DILocation(line: 408, column: 21, scope: !439)
!442 = !DILocation(line: 408, column: 29, scope: !439)
!443 = !DILocation(line: 408, column: 32, scope: !439)
!444 = !DILocation(line: 408, column: 38, scope: !439)
!445 = !DILocation(line: 408, column: 3, scope: !440)
!446 = !DILocation(line: 410, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 410, column: 11)
!448 = distinct !DILexicalBlock(scope: !439, file: !1, line: 409, column: 5)
!449 = !DILocation(line: 411, column: 6, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !1, line: 410, column: 26)
!451 = !DILocation(line: 412, column: 12, scope: !452)
!452 = distinct !DILexicalBlock(scope: !450, file: !1, line: 412, column: 6)
!453 = !DILocation(line: 412, column: 6, scope: !450)
!454 = !DILocation(line: 414, column: 12, scope: !455)
!455 = distinct !DILexicalBlock(scope: !448, file: !1, line: 414, column: 11)
!456 = !DILocation(line: 414, column: 30, scope: !455)
!457 = !DILocation(line: 414, column: 26, scope: !455)
!458 = !DILocation(line: 416, column: 12, scope: !459)
!459 = distinct !DILexicalBlock(scope: !65, file: !1, line: 416, column: 7)
!460 = !DILocation(line: 416, column: 7, scope: !65)
!461 = !DILocation(line: 417, column: 16, scope: !65)
!462 = !DILocation(line: 417, column: 11, scope: !65)
!463 = !DILocation(line: 417, column: 29, scope: !65)
!464 = !DILocation(line: 417, column: 46, scope: !65)
!465 = !DILocation(line: 417, column: 44, scope: !65)
!466 = !DILocation(line: 417, column: 3, scope: !65)
!467 = !DILocation(line: 443, column: 36, scope: !75)
!468 = !DILocation(line: 443, column: 46, scope: !75)
!469 = !DILocation(line: 443, column: 53, scope: !75)
!470 = !DILocation(line: 443, column: 60, scope: !75)
!471 = !DILocation(line: 448, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !75, file: !1, line: 448, column: 7)
!473 = !DILocation(line: 448, column: 7, scope: !75)
!474 = !DILocation(line: 451, column: 17, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 451, column: 3)
!476 = distinct !DILexicalBlock(scope: !75, file: !1, line: 451, column: 3)
!477 = !DILocation(line: 451, column: 3, scope: !476)
!478 = !DILocation(line: 453, column: 11, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !1, line: 452, column: 5)
!480 = !DILocation(line: 445, column: 10, scope: !75)
!481 = !DILocation(line: 454, column: 7, scope: !479)
!482 = !DILocation(line: 454, column: 16, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !1, line: 454, column: 10)
!484 = !DILocation(line: 445, column: 13, scope: !75)
!485 = !DILocation(line: 454, column: 38, scope: !479)
!486 = !DILocation(line: 454, column: 27, scope: !483)
!487 = !DILocation(line: 455, column: 31, scope: !479)
!488 = !DILocation(line: 455, column: 40, scope: !479)
!489 = !DILocation(line: 455, column: 14, scope: !479)
!490 = !DILocation(line: 455, column: 11, scope: !479)
!491 = !DILocation(line: 446, column: 9, scope: !75)
!492 = !DILocation(line: 451, column: 29, scope: !475)
!493 = !DILocation(line: 445, column: 7, scope: !75)
!494 = !DILocation(line: 457, column: 16, scope: !75)
!495 = !DILocation(line: 457, column: 14, scope: !75)
!496 = !DILocation(line: 457, column: 3, scope: !75)
!497 = !DILocation(line: 458, column: 1, scope: !75)
!498 = !DILocation(line: 475, column: 30, scope: !87)
!499 = !DILocation(line: 475, column: 40, scope: !87)
!500 = !DILocation(line: 475, column: 50, scope: !87)
!501 = !DILocation(line: 478, column: 3, scope: !87)
!502 = !DILocation(line: 478, column: 7, scope: !87)
!503 = !DILocation(line: 485, column: 8, scope: !87)
!504 = !DILocation(line: 477, column: 9, scope: !87)
!505 = !DILocation(line: 480, column: 7, scope: !87)
!506 = !DILocation(line: 479, column: 11, scope: !87)
!507 = !DILocation(line: 487, column: 28, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 487, column: 3)
!509 = distinct !DILexicalBlock(scope: !87, file: !1, line: 487, column: 3)
!510 = !DILocation(line: 487, column: 3, scope: !509)
!511 = !DILocation(line: 491, column: 25, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 491, column: 7)
!513 = distinct !DILexicalBlock(scope: !514, file: !1, line: 491, column: 7)
!514 = distinct !DILexicalBlock(scope: !508, file: !1, line: 488, column: 5)
!515 = !DILocation(line: 501, column: 19, scope: !516)
!516 = distinct !DILexicalBlock(scope: !514, file: !1, line: 501, column: 11)
!517 = !DILocation(line: 501, column: 31, scope: !516)
!518 = !DILocation(line: 489, column: 41, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 489, column: 7)
!520 = distinct !DILexicalBlock(scope: !514, file: !1, line: 489, column: 7)
!521 = !DILocation(line: 491, column: 7, scope: !513)
!522 = !DILocation(line: 493, column: 22, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 493, column: 8)
!524 = distinct !DILexicalBlock(scope: !512, file: !1, line: 492, column: 2)
!525 = !DILocation(line: 218, column: 13, scope: !151, inlinedAt: !526)
!526 = distinct !DILocation(line: 493, column: 8, scope: !523)
!527 = !DILocation(line: 153, column: 29, scope: !157, inlinedAt: !528)
!528 = distinct !DILocation(line: 220, column: 10, scope: !151, inlinedAt: !526)
!529 = !DILocation(line: 153, column: 47, scope: !157, inlinedAt: !528)
!530 = !DILocation(line: 158, column: 10, scope: !157, inlinedAt: !528)
!531 = !DILocation(line: 158, column: 27, scope: !157, inlinedAt: !528)
!532 = !DILocation(line: 158, column: 25, scope: !157, inlinedAt: !528)
!533 = !DILocation(line: 493, column: 16, scope: !523)
!534 = !DILocation(line: 159, column: 7, scope: !157, inlinedAt: !528)
!535 = !DILocation(line: 493, column: 8, scope: !523)
!536 = !DILocation(line: 220, column: 10, scope: !151, inlinedAt: !526)
!537 = !DILocation(line: 493, column: 8, scope: !524)
!538 = !DILocation(line: 494, column: 26, scope: !539)
!539 = distinct !DILexicalBlock(scope: !523, file: !1, line: 493, column: 40)
!540 = !DILocation(line: 494, column: 20, scope: !539)
!541 = !DILocation(line: 298, column: 13, scope: !169, inlinedAt: !542)
!542 = distinct !DILocation(line: 494, column: 12, scope: !539)
!543 = !DILocation(line: 300, column: 17, scope: !169, inlinedAt: !542)
!544 = !DILocation(line: 482, column: 7, scope: !87)
!545 = !DILocation(line: 495, column: 15, scope: !539)
!546 = !DILocation(line: 495, column: 6, scope: !539)
!547 = !DILocation(line: 495, column: 20, scope: !539)
!548 = !DILocation(line: 496, column: 4, scope: !539)
!549 = !DILocation(line: 497, column: 15, scope: !550)
!550 = distinct !DILexicalBlock(scope: !523, file: !1, line: 496, column: 11)
!551 = !DILocation(line: 501, column: 11, scope: !516)
!552 = !DILocation(line: 501, column: 29, scope: !516)
!553 = !DILocation(line: 501, column: 44, scope: !516)
!554 = !DILocation(line: 501, column: 11, scope: !514)
!555 = !DILocation(line: 504, column: 8, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 504, column: 8)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 503, column: 2)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 503, column: 2)
!559 = distinct !DILexicalBlock(scope: !516, file: !1, line: 501, column: 52)
!560 = !DILocation(line: 504, column: 17, scope: !556)
!561 = !DILocation(line: 483, column: 7, scope: !87)
!562 = !DILocation(line: 504, column: 8, scope: !557)
!563 = !DILocation(line: 503, column: 2, scope: !558)
!564 = !DILocation(line: 505, column: 27, scope: !559)
!565 = !DILocation(line: 505, column: 15, scope: !559)
!566 = !DILocation(line: 505, column: 9, scope: !559)
!567 = !DILocation(line: 505, column: 2, scope: !559)
!568 = !DILocation(line: 505, column: 13, scope: !559)
!569 = !DILocation(line: 506, column: 7, scope: !559)
!570 = !DILocation(line: 508, column: 3, scope: !87)
!571 = !DILocation(line: 508, column: 12, scope: !87)
!572 = !DILocation(line: 510, column: 1, scope: !87)
