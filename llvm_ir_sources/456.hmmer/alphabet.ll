; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/alphabet.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [22 x i8] c"No such alphabet type\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"Looks like nucleic acid sequence, hope that's right\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"Looks like amino acid sequence, hope that's right\00", align 1
@.str3 = private unnamed_addr constant [45 x i8] c"Sorry, I can't tell if that's protein or DNA\00", align 1
@Alphabet_type = external global i32
@.str4 = private unnamed_addr constant [107 x i8] c"An alphabet type conflict occurred.\0AYou probably mixed a DNA seq file with a protein model, or vice versa.\00", align 1
@Alphabet = external global [25 x i8]
@.str5 = private unnamed_addr constant [25 x i8] c"ACDEFGHIKLMNPQRSTVWYUBZX\00", align 1
@Alphabet_size = external global i32
@Alphabet_iupac = external global i32
@Degenerate = external global [24 x [20 x i8]]
@DegenCount = external global [24 x i32]
@.str6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"ND\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"QE\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"ACDEFGHIKLMNPQRSTVWY\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"ACGTUNRYMKSWHBVDX\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"ACGT\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"AG\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@.str15 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"GT\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c"ACT\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"CGT\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"ACG\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"AGT\00", align 1
@.str23 = private unnamed_addr constant [48 x i8] c"No support for non-nucleic or protein alphabets\00", align 1
@.str24 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/alphabet.c\00", align 1
@stdcode1 = external global [0 x i8*]
@.memset_pattern25 = internal unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16

; Function Attrs: nounwind optsize ssp uwtable
define void @DetermineAlphabet(i8** nocapture readonly %rseqs, i32 %nseq) #0 {
  tail call void @llvm.dbg.value(metadata i8** %rseqs, i64 0, metadata !15, metadata !167), !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !16, metadata !167), !dbg !169
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !21, metadata !167), !dbg !170
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !20, metadata !167), !dbg !171
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !19, metadata !167), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !18, metadata !167), !dbg !173
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !17, metadata !167), !dbg !174
  %1 = icmp sgt i32 %nseq, 0, !dbg !175
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !178

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nseq, -1, !dbg !178
  br label %3, !dbg !178

; <label>:3                                       ; preds = %16, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %amino.05 = phi i32 [ 0, %.lr.ph ], [ %amino.1, %16 ]
  %nucleic.04 = phi i32 [ 0, %.lr.ph ], [ %nucleic.1, %16 ]
  %other.03 = phi i32 [ 0, %.lr.ph ], [ %other.1, %16 ]
  %4 = getelementptr inbounds i8** %rseqs, i64 %indvars.iv, !dbg !179
  %5 = load i8** %4, align 8, !dbg !179, !tbaa !181
  %6 = tail call i32 @Seqtype(i8* %5) #6, !dbg !185
  switch i32 %6, label %15 [
    i32 2, label %7
    i32 1, label %9
    i32 3, label %11
    i32 0, label %13
  ], !dbg !186

; <label>:7                                       ; preds = %3
  %8 = add nsw i32 %nucleic.04, 1, !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !19, metadata !167), !dbg !172
  br label %16, !dbg !189

; <label>:9                                       ; preds = %3
  %10 = add nsw i32 %nucleic.04, 1, !dbg !190
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !19, metadata !167), !dbg !172
  br label %16, !dbg !191

; <label>:11                                      ; preds = %3
  %12 = add nsw i32 %amino.05, 1, !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !20, metadata !167), !dbg !171
  br label %16, !dbg !193

; <label>:13                                      ; preds = %3
  %14 = add nsw i32 %other.03, 1, !dbg !194
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !18, metadata !167), !dbg !173
  br label %16, !dbg !195

; <label>:15                                      ; preds = %3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0)) #6, !dbg !196
  br label %16, !dbg !197

; <label>:16                                      ; preds = %7, %9, %11, %13, %15
  %other.1 = phi i32 [ %other.03, %15 ], [ %14, %13 ], [ %other.03, %11 ], [ %other.03, %9 ], [ %other.03, %7 ]
  %nucleic.1 = phi i32 [ %nucleic.04, %15 ], [ %nucleic.04, %13 ], [ %nucleic.04, %11 ], [ %10, %9 ], [ %8, %7 ]
  %amino.1 = phi i32 [ %amino.05, %15 ], [ %amino.05, %13 ], [ %12, %11 ], [ %amino.05, %9 ], [ %amino.05, %7 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !178
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !178
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !178
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !178

._crit_edge:                                      ; preds = %16, %0
  %amino.0.lcssa = phi i32 [ 0, %0 ], [ %amino.1, %16 ]
  %nucleic.0.lcssa = phi i32 [ 0, %0 ], [ %nucleic.1, %16 ]
  %other.0.lcssa = phi i32 [ 0, %0 ], [ %other.1, %16 ]
  %17 = icmp eq i32 %nucleic.0.lcssa, %nseq, !dbg !198
  br i1 %17, label %29, label %18, !dbg !200

; <label>:18                                      ; preds = %._crit_edge
  %19 = icmp eq i32 %amino.0.lcssa, %nseq, !dbg !201
  br i1 %19, label %29, label %20, !dbg !203

; <label>:20                                      ; preds = %18
  %21 = icmp sgt i32 %nucleic.0.lcssa, %amino.0.lcssa, !dbg !204
  %22 = icmp sgt i32 %nucleic.0.lcssa, %other.0.lcssa, !dbg !206
  %or.cond = and i1 %22, %21, !dbg !207
  br i1 %or.cond, label %23, label %24, !dbg !207

; <label>:23                                      ; preds = %20
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !21, metadata !167), !dbg !170
  br label %29, !dbg !210

; <label>:24                                      ; preds = %20
  %25 = icmp sgt i32 %amino.0.lcssa, %nucleic.0.lcssa, !dbg !211
  %26 = icmp sgt i32 %amino.0.lcssa, %other.0.lcssa, !dbg !213
  %or.cond1 = and i1 %25, %26, !dbg !214
  br i1 %or.cond1, label %27, label %28, !dbg !214

; <label>:27                                      ; preds = %24
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !215
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !21, metadata !167), !dbg !170
  br label %29, !dbg !217

; <label>:28                                      ; preds = %24
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !218
  br label %29

; <label>:29                                      ; preds = %18, %._crit_edge, %27, %28, %23
  %type.0 = phi i32 [ 2, %23 ], [ 3, %27 ], [ 0, %28 ], [ 2, %._crit_edge ], [ 3, %18 ]
  tail call void @SetAlphabet(i32 %type.0) #7, !dbg !219
  ret void, !dbg !220
}

; Function Attrs: optsize
declare i32 @Seqtype(i8*) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare void @Warn(i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @SetAlphabet(i32 %type) #0 {
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !26, metadata !167), !dbg !221
  %1 = load i32* @Alphabet_type, align 4, !dbg !222, !tbaa !224
  %2 = icmp eq i32 %1, 0, !dbg !226
  br i1 %2, label %6, label %3, !dbg !227

; <label>:3                                       ; preds = %0
  %4 = icmp eq i32 %1, %type, !dbg !228
  br i1 %4, label %40, label %5, !dbg !231

; <label>:5                                       ; preds = %3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([107 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !232
  br label %40, !dbg !232

; <label>:6                                       ; preds = %0
  switch i32 %type, label %39 [
    i32 3, label %.lr.ph5
    i32 2, label %.lr.ph11
  ], !dbg !233

.lr.ph5:                                          ; preds = %6
  store i32 3, i32* @Alphabet_type, align 4, !dbg !234, !tbaa !224
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i64 25, i32 1, i1 false), !dbg !236
  store i32 20, i32* @Alphabet_size, align 4, !dbg !237, !tbaa !224
  store i32 24, i32* @Alphabet_iupac, align 4, !dbg !238, !tbaa !224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !167), !dbg !239
  br label %._crit_edge23, !dbg !240

.preheader:                                       ; preds = %._crit_edge23
  %7 = icmp sgt i32 %.pre24, 0, !dbg !242
  br i1 %7, label %.lr.ph, label %._crit_edge, !dbg !245

.lr.ph:                                           ; preds = %.preheader
  %8 = sext i32 %.pre24 to i64, !dbg !245
  %9 = icmp sgt i32 %.pre24, 1
  %.op27 = add i32 %.pre24, -1, !dbg !245
  %10 = zext i32 %.op27 to i64
  %.op28 = shl nuw nsw i64 %10, 2, !dbg !245
  %.op28.op = add nuw nsw i64 %.op28, 4, !dbg !245
  %11 = select i1 %9, i64 %.op28.op, i64 4, !dbg !245
  call void @memset_pattern16(i8* bitcast ([24 x i32]* @DegenCount to i8*), i8* bitcast ([4 x i32]* @.memset_pattern25 to i8*), i64 %11) #5, !dbg !246
  br label %20, !dbg !245

._crit_edge23:                                    ; preds = %._crit_edge23, %.lr.ph5
  %12 = phi i32 [ 20, %.lr.ph5 ], [ %.pre24, %._crit_edge23 ]
  %indvars.iv12 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next13, %._crit_edge23 ]
  %13 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv12, i64 0, !dbg !248
  %14 = sext i32 %12 to i64, !dbg !248
  %15 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false), !dbg !248
  %16 = tail call i8* @__memset_chk(i8* %13, i32 0, i64 %14, i64 %15) #6, !dbg !248
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !240
  %17 = load i32* @Alphabet_iupac, align 4, !dbg !251, !tbaa !224
  %18 = sext i32 %17 to i64, !dbg !252
  %19 = icmp slt i64 %indvars.iv.next13, %18, !dbg !252
  %.pre24 = load i32* @Alphabet_size, align 4, !dbg !248, !tbaa !224
  br i1 %19, label %._crit_edge23, label %.preheader, !dbg !240

; <label>:20                                      ; preds = %.lr.ph, %20
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ]
  %21 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv, i64 %indvars.iv, !dbg !253
  store i8 1, i8* %21, align 1, !dbg !254, !tbaa !255
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !245
  %22 = icmp slt i64 %indvars.iv.next, %8, !dbg !242
  br i1 %22, label %20, label %._crit_edge, !dbg !245

._crit_edge:                                      ; preds = %20, %.preheader
  tail call fastcc void @set_degenerate(i8 signext 85, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !256
  tail call fastcc void @set_degenerate(i8 signext 66, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !257
  tail call fastcc void @set_degenerate(i8 signext 90, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !258
  tail call fastcc void @set_degenerate(i8 signext 88, i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !259
  br label %40, !dbg !260

.lr.ph11:                                         ; preds = %6
  store i32 2, i32* @Alphabet_type, align 4, !dbg !261, !tbaa !224
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i64 18, i32 1, i1 false), !dbg !262
  store i32 4, i32* @Alphabet_size, align 4, !dbg !263, !tbaa !224
  store i32 17, i32* @Alphabet_iupac, align 4, !dbg !264, !tbaa !224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !167), !dbg !239
  br label %._crit_edge20, !dbg !265

.preheader1:                                      ; preds = %._crit_edge20
  %23 = icmp sgt i32 %.pre, 0, !dbg !267
  br i1 %23, label %.lr.ph7, label %._crit_edge8, !dbg !270

.lr.ph7:                                          ; preds = %.preheader1
  %24 = sext i32 %.pre to i64, !dbg !270
  %25 = icmp sgt i32 %.pre, 1
  %.op = add i32 %.pre, -1, !dbg !270
  %26 = zext i32 %.op to i64
  %.op26 = shl nuw nsw i64 %26, 2, !dbg !270
  %.op26.op = add nuw nsw i64 %.op26, 4, !dbg !270
  %27 = select i1 %25, i64 %.op26.op, i64 4, !dbg !270
  call void @memset_pattern16(i8* bitcast ([24 x i32]* @DegenCount to i8*), i8* bitcast ([4 x i32]* @.memset_pattern25 to i8*), i64 %27) #5, !dbg !271
  br label %36, !dbg !270

._crit_edge20:                                    ; preds = %._crit_edge20, %.lr.ph11
  %28 = phi i32 [ 4, %.lr.ph11 ], [ %.pre, %._crit_edge20 ]
  %indvars.iv17 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next18, %._crit_edge20 ]
  %29 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv17, i64 0, !dbg !273
  %30 = sext i32 %28 to i64, !dbg !273
  %31 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %29, i1 false), !dbg !273
  %32 = tail call i8* @__memset_chk(i8* %29, i32 0, i64 %30, i64 %31) #6, !dbg !273
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !265
  %33 = load i32* @Alphabet_iupac, align 4, !dbg !276, !tbaa !224
  %34 = sext i32 %33 to i64, !dbg !277
  %35 = icmp slt i64 %indvars.iv.next18, %34, !dbg !277
  %.pre = load i32* @Alphabet_size, align 4, !dbg !273, !tbaa !224
  br i1 %35, label %._crit_edge20, label %.preheader1, !dbg !265

; <label>:36                                      ; preds = %.lr.ph7, %36
  %indvars.iv14 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next15, %36 ]
  %37 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv14, i64 %indvars.iv14, !dbg !278
  store i8 1, i8* %37, align 1, !dbg !279, !tbaa !255
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !270
  %38 = icmp slt i64 %indvars.iv.next15, %24, !dbg !267
  br i1 %38, label %36, label %._crit_edge8, !dbg !270

._crit_edge8:                                     ; preds = %36, %.preheader1
  tail call fastcc void @set_degenerate(i8 signext 85, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !280
  tail call fastcc void @set_degenerate(i8 signext 78, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !281
  tail call fastcc void @set_degenerate(i8 signext 88, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !282
  tail call fastcc void @set_degenerate(i8 signext 82, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !283
  tail call fastcc void @set_degenerate(i8 signext 89, i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !284
  tail call fastcc void @set_degenerate(i8 signext 77, i8* getelementptr inbounds ([3 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !285
  tail call fastcc void @set_degenerate(i8 signext 75, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !286
  tail call fastcc void @set_degenerate(i8 signext 83, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #7, !dbg !287
  tail call fastcc void @set_degenerate(i8 signext 87, i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !288
  tail call fastcc void @set_degenerate(i8 signext 72, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !289
  tail call fastcc void @set_degenerate(i8 signext 66, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !290
  tail call fastcc void @set_degenerate(i8 signext 86, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !291
  tail call fastcc void @set_degenerate(i8 signext 68, i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !292
  br label %40, !dbg !293

; <label>:39                                      ; preds = %6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([48 x i8]* @.str23, i64 0, i64 0)) #6, !dbg !294
  br label %40, !dbg !295

; <label>:40                                      ; preds = %3, %5, %39, %._crit_edge8, %._crit_edge
  ret void, !dbg !296
}

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @set_degenerate(i8 signext %iupac, i8* nocapture readonly %syms) #0 {
  tail call void @llvm.dbg.value(metadata i8 %iupac, i64 0, metadata !161, metadata !167), !dbg !297
  tail call void @llvm.dbg.value(metadata i8* %syms, i64 0, metadata !162, metadata !167), !dbg !298
  %1 = tail call i64 @strlen(i8* %syms) #6, !dbg !299
  %2 = trunc i64 %1 to i32, !dbg !299
  %3 = sext i8 %iupac to i32, !dbg !300
  %4 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %3) #6, !dbg !301
  %5 = ptrtoint i8* %4 to i64, !dbg !302
  %6 = sub i64 %5, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !302
  %7 = getelementptr inbounds [24 x i32]* @DegenCount, i64 0, i64 %6, !dbg !303
  store i32 %2, i32* %7, align 4, !dbg !304, !tbaa !224
  %8 = load i8* %syms, align 1, !dbg !305, !tbaa !255
  %9 = icmp eq i8 %8, 0, !dbg !306
  br i1 %9, label %._crit_edge, label %.lr.ph, !dbg !306

.lr.ph:                                           ; preds = %0, %.lr.ph
  %10 = phi i8 [ %20, %.lr.ph ], [ %8, %0 ]
  %.01 = phi i8* [ %19, %.lr.ph ], [ %syms, %0 ]
  %11 = sext i8 %10 to i32, !dbg !307
  %12 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %11) #6, !dbg !309
  %13 = ptrtoint i8* %12 to i64, !dbg !310
  %14 = sub i64 %13, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !310
  %15 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %3) #6, !dbg !311
  %16 = ptrtoint i8* %15 to i64, !dbg !312
  %17 = sub i64 %16, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !312
  %18 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %17, i64 %14, !dbg !313
  store i8 1, i8* %18, align 1, !dbg !314, !tbaa !255
  %19 = getelementptr inbounds i8* %.01, i64 1, !dbg !315
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !162, metadata !167), !dbg !298
  %20 = load i8* %19, align 1, !dbg !305, !tbaa !255
  %21 = icmp eq i8 %20, 0, !dbg !306
  br i1 %21, label %._crit_edge, label %.lr.ph, !dbg !306

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !dbg !316
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SymbolIndex(i8 signext %sym) #0 {
  tail call void @llvm.dbg.value(metadata i8 %sym, i64 0, metadata !32, metadata !167), !dbg !317
  %1 = sext i8 %sym to i32, !dbg !318
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !156, metadata !167) #5, !dbg !319
  %2 = tail call i32 @__toupper(i32 %1) #6, !dbg !321
  %sext = shl i32 %2, 24, !dbg !322
  %3 = ashr exact i32 %sext, 24, !dbg !322
  %4 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %3) #6, !dbg !323
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !33, metadata !167), !dbg !324
  %5 = icmp eq i8* %4, null, !dbg !325
  br i1 %5, label %6, label %10, !dbg !326

; <label>:6                                       ; preds = %0
  %7 = load i32* @Alphabet_iupac, align 4, !dbg !327, !tbaa !224
  %8 = add nsw i32 %7, -1, !dbg !328
  %9 = sext i32 %8 to i64, !dbg !327
  br label %13, !dbg !326

; <label>:10                                      ; preds = %0
  %11 = ptrtoint i8* %4 to i64, !dbg !329
  %12 = sub i64 %11, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !329
  br label %13, !dbg !326

; <label>:13                                      ; preds = %10, %6
  %14 = phi i64 [ %9, %6 ], [ %12, %10 ], !dbg !326
  %15 = trunc i64 %14 to i32, !dbg !326
  ret i32 %15, !dbg !330
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind optsize ssp uwtable
define i8* @DigitizeSequence(i8* nocapture readonly %seq, i32 %L) #0 {
  tail call void @llvm.dbg.value(metadata i8* %seq, i64 0, metadata !38, metadata !167), !dbg !331
  tail call void @llvm.dbg.value(metadata i32 %L, i64 0, metadata !39, metadata !167), !dbg !332
  %1 = add nsw i32 %L, 2, !dbg !333
  %2 = sext i32 %1 to i64, !dbg !333
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([66 x i8]* @.str24, i64 0, i64 0), i32 215, i64 %2) #6, !dbg !333
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !40, metadata !167), !dbg !334
  %4 = load i32* @Alphabet_iupac, align 4, !dbg !335, !tbaa !224
  %5 = trunc i32 %4 to i8, !dbg !336
  %6 = add nsw i32 %L, 1, !dbg !337
  %7 = sext i32 %6 to i64, !dbg !338
  %8 = getelementptr inbounds i8* %3, i64 %7, !dbg !338
  store i8 %5, i8* %8, align 1, !dbg !339, !tbaa !255
  store i8 %5, i8* %3, align 1, !dbg !340, !tbaa !255
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !41, metadata !167), !dbg !341
  %9 = icmp slt i32 %L, 1, !dbg !342
  br i1 %9, label %._crit_edge, label %.lr.ph, !dbg !345

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %0 ]
  %10 = add nsw i64 %indvars.iv, -1, !dbg !346
  %11 = getelementptr inbounds i8* %seq, i64 %10, !dbg !347
  %12 = load i8* %11, align 1, !dbg !347, !tbaa !255
  %13 = tail call i32 @SymbolIndex(i8 signext %12) #7, !dbg !348
  %14 = trunc i32 %13 to i8, !dbg !348
  %15 = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !349
  store i8 %14, i8* %15, align 1, !dbg !350, !tbaa !255
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !345
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !345
  %exitcond = icmp eq i32 %lftr.wideiv, %L, !dbg !345
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !345

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret i8* %3, !dbg !351
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @DedigitizeSequence(i8* nocapture readonly %dsq, i32 %L) #0 {
  tail call void @llvm.dbg.value(metadata i8* %dsq, i64 0, metadata !44, metadata !167), !dbg !352
  tail call void @llvm.dbg.value(metadata i32 %L, i64 0, metadata !45, metadata !167), !dbg !353
  %1 = add nsw i32 %L, 1, !dbg !354
  %2 = sext i32 %1 to i64, !dbg !354
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([66 x i8]* @.str24, i64 0, i64 0), i32 235, i64 %2) #6, !dbg !354
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !46, metadata !167), !dbg !355
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !47, metadata !167), !dbg !356
  %4 = icmp sgt i32 %L, 0, !dbg !357
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !360

.lr.ph:                                           ; preds = %0
  %5 = add i32 %L, -1, !dbg !360
  br label %6, !dbg !360

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !360
  %7 = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next, !dbg !361
  %8 = load i8* %7, align 1, !dbg !361, !tbaa !255
  %9 = sext i8 %8 to i64, !dbg !362
  %10 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %9, !dbg !362
  %11 = load i8* %10, align 1, !dbg !362, !tbaa !255
  %12 = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !363
  store i8 %11, i8* %12, align 1, !dbg !364, !tbaa !255
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !360
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !360
  br i1 %exitcond, label %._crit_edge, label %6, !dbg !360

._crit_edge:                                      ; preds = %6, %0
  %13 = sext i32 %L to i64, !dbg !365
  %14 = getelementptr inbounds i8* %3, i64 %13, !dbg !365
  store i8 0, i8* %14, align 1, !dbg !366, !tbaa !255
  ret i8* %3, !dbg !367
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DigitizeAlignment(%struct.msa_struct* nocapture readonly %msa, i8*** nocapture %ret_dsqs) #0 {
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !126, metadata !167), !dbg !368
  tail call void @llvm.dbg.value(metadata i8*** %ret_dsqs, i64 0, metadata !127, metadata !167), !dbg !369
  %1 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !370
  %2 = load i32* %1, align 4, !dbg !370, !tbaa !371
  %3 = sext i32 %2 to i64, !dbg !370
  %4 = shl nsw i64 %3, 3, !dbg !370
  %5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([66 x i8]* @.str24, i64 0, i64 0), i32 264, i64 %4) #6, !dbg !370
  %6 = bitcast i8* %5 to i8**, !dbg !373
  tail call void @llvm.dbg.value(metadata i8** %6, i64 0, metadata !128, metadata !167), !dbg !374
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !129, metadata !167), !dbg !375
  %7 = load i32* %1, align 4, !dbg !376, !tbaa !371
  %8 = icmp sgt i32 %7, 0, !dbg !379
  br i1 %8, label %.lr.ph5, label %._crit_edge6, !dbg !380

.lr.ph5:                                          ; preds = %0
  %9 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !381
  %10 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !383
  br label %11, !dbg !380

; <label>:11                                      ; preds = %.lr.ph5, %._crit_edge
  %indvars.iv7 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next8, %._crit_edge ]
  %12 = load i32* %9, align 4, !dbg !381, !tbaa !388
  %13 = add nsw i32 %12, 2, !dbg !381
  %14 = sext i32 %13 to i64, !dbg !381
  %15 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([66 x i8]* @.str24, i64 0, i64 0), i32 266, i64 %14) #6, !dbg !381
  %16 = getelementptr inbounds i8** %6, i64 %indvars.iv7, !dbg !389
  store i8* %15, i8** %16, align 8, !dbg !390, !tbaa !181
  %17 = load i32* @Alphabet_iupac, align 4, !dbg !391, !tbaa !224
  %18 = trunc i32 %17 to i8, !dbg !392
  store i8 %18, i8* %15, align 1, !dbg !393, !tbaa !255
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !131, metadata !167), !dbg !394
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !130, metadata !167), !dbg !395
  %19 = load i32* %9, align 4, !dbg !396, !tbaa !388
  %20 = icmp sgt i32 %19, 0, !dbg !397
  br i1 %20, label %.lr.ph, label %._crit_edge, !dbg !398

.lr.ph:                                           ; preds = %11, %34
  %21 = phi i32 [ %35, %34 ], [ %19, %11 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %34 ], [ 0, %11 ]
  %dpos.01 = phi i32 [ %dpos.1, %34 ], [ 1, %11 ]
  %22 = load i8*** %10, align 8, !dbg !383, !tbaa !399
  %23 = getelementptr inbounds i8** %22, i64 %indvars.iv7, !dbg !383
  %24 = load i8** %23, align 8, !dbg !383, !tbaa !181
  %25 = getelementptr inbounds i8* %24, i64 %indvars.iv, !dbg !383
  %26 = load i8* %25, align 1, !dbg !383, !tbaa !255
  switch i8 %26, label %27 [
    i8 32, label %34
    i8 46, label %34
    i8 95, label %34
    i8 45, label %34
    i8 126, label %34
  ], !dbg !383

; <label>:27                                      ; preds = %.lr.ph
  %28 = tail call i32 @SymbolIndex(i8 signext %26) #7, !dbg !400
  %29 = trunc i32 %28 to i8, !dbg !400
  %30 = add nsw i32 %dpos.01, 1, !dbg !401
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !130, metadata !167), !dbg !395
  %31 = sext i32 %dpos.01 to i64, !dbg !402
  %32 = load i8** %16, align 8, !dbg !402, !tbaa !181
  %33 = getelementptr inbounds i8* %32, i64 %31, !dbg !402
  store i8 %29, i8* %33, align 1, !dbg !403, !tbaa !255
  %.pre = load i32* %9, align 4, !dbg !396, !tbaa !388
  br label %34, !dbg !402

; <label>:34                                      ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %27
  %35 = phi i32 [ %21, %.lr.ph ], [ %.pre, %27 ], [ %21, %.lr.ph ], [ %21, %.lr.ph ], [ %21, %.lr.ph ], [ %21, %.lr.ph ], !dbg !398
  %dpos.1 = phi i32 [ %dpos.01, %.lr.ph ], [ %30, %27 ], [ %dpos.01, %.lr.ph ], [ %dpos.01, %.lr.ph ], [ %dpos.01, %.lr.ph ], [ %dpos.01, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !398
  %36 = sext i32 %35 to i64, !dbg !397
  %37 = icmp slt i64 %indvars.iv.next, %36, !dbg !397
  br i1 %37, label %.lr.ph, label %._crit_edge, !dbg !398

._crit_edge:                                      ; preds = %34, %11
  %dpos.0.lcssa = phi i32 [ 1, %11 ], [ %dpos.1, %34 ]
  %38 = load i32* @Alphabet_iupac, align 4, !dbg !404, !tbaa !224
  %39 = trunc i32 %38 to i8, !dbg !405
  %40 = sext i32 %dpos.0.lcssa to i64, !dbg !406
  %41 = load i8** %16, align 8, !dbg !406, !tbaa !181
  %42 = getelementptr inbounds i8* %41, i64 %40, !dbg !406
  store i8 %39, i8* %42, align 1, !dbg !407, !tbaa !255
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !380
  %43 = load i32* %1, align 4, !dbg !376, !tbaa !371
  %44 = sext i32 %43 to i64, !dbg !379
  %45 = icmp slt i64 %indvars.iv.next8, %44, !dbg !379
  br i1 %45, label %11, label %._crit_edge6, !dbg !380

._crit_edge6:                                     ; preds = %._crit_edge, %0
  %46 = bitcast i8*** %ret_dsqs to i8**, !dbg !408
  store i8* %5, i8** %46, align 8, !dbg !408, !tbaa !181
  ret void, !dbg !409
}

; Function Attrs: nounwind optsize ssp uwtable
define void @P7CountSymbol(float* nocapture %counters, i8 signext %symidx, float %wt) #0 {
  tail call void @llvm.dbg.value(metadata float* %counters, i64 0, metadata !136, metadata !167), !dbg !410
  tail call void @llvm.dbg.value(metadata i8 %symidx, i64 0, metadata !137, metadata !167), !dbg !411
  tail call void @llvm.dbg.value(metadata float %wt, i64 0, metadata !138, metadata !167), !dbg !412
  %1 = sext i8 %symidx to i32, !dbg !413
  %2 = load i32* @Alphabet_size, align 4, !dbg !415, !tbaa !224
  %3 = icmp slt i32 %1, %2, !dbg !416
  br i1 %3, label %8, label %.preheader, !dbg !417

.preheader:                                       ; preds = %0
  %4 = icmp sgt i32 %2, 0, !dbg !418
  br i1 %4, label %.lr.ph, label %.loopexit, !dbg !421

.lr.ph:                                           ; preds = %.preheader
  %5 = sext i8 %symidx to i64, !dbg !422
  %6 = getelementptr inbounds [24 x i32]* @DegenCount, i64 0, i64 %5, !dbg !425
  %7 = sext i32 %2 to i64, !dbg !421
  br label %13, !dbg !421

; <label>:8                                       ; preds = %0
  %9 = sext i8 %symidx to i64, !dbg !426
  %10 = getelementptr inbounds float* %counters, i64 %9, !dbg !426
  %11 = load float* %10, align 4, !dbg !427, !tbaa !428
  %12 = fadd float %11, %wt, !dbg !427
  store float %12, float* %10, align 4, !dbg !427, !tbaa !428
  br label %.loopexit, !dbg !426

; <label>:13                                      ; preds = %.lr.ph, %24
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  %14 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %5, i64 %indvars.iv, !dbg !422
  %15 = load i8* %14, align 1, !dbg !422, !tbaa !255
  %16 = icmp eq i8 %15, 0, !dbg !422
  br i1 %16, label %24, label %17, !dbg !430

; <label>:17                                      ; preds = %13
  %18 = load i32* %6, align 4, !dbg !425, !tbaa !224
  %19 = sitofp i32 %18 to float, !dbg !431
  %20 = fdiv float %wt, %19, !dbg !432
  %21 = getelementptr inbounds float* %counters, i64 %indvars.iv, !dbg !433
  %22 = load float* %21, align 4, !dbg !434, !tbaa !428
  %23 = fadd float %20, %22, !dbg !434
  store float %23, float* %21, align 4, !dbg !434, !tbaa !428
  br label %24, !dbg !433

; <label>:24                                      ; preds = %13, %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !421
  %25 = icmp slt i64 %indvars.iv.next, %7, !dbg !418
  br i1 %25, label %13, label %.loopexit, !dbg !421

.loopexit:                                        ; preds = %24, %.preheader, %8
  ret void, !dbg !435
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DefaultGeneticCode(i32* nocapture %aacode) #0 {
  tail call void @llvm.dbg.value(metadata i32* %aacode, i64 0, metadata !144, metadata !167), !dbg !436
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !145, metadata !167), !dbg !437
  br label %1, !dbg !438

; <label>:1                                       ; preds = %12, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %12 ]
  %2 = getelementptr inbounds [0 x i8*]* @stdcode1, i64 0, i64 %indvars.iv, !dbg !440
  %3 = load i8** %2, align 8, !dbg !440, !tbaa !181
  %4 = load i8* %3, align 1, !dbg !444, !tbaa !255
  %5 = icmp eq i8 %4, 42, !dbg !445
  br i1 %5, label %12, label %6, !dbg !446

; <label>:6                                       ; preds = %1
  %7 = sext i8 %4 to i32, !dbg !444
  %8 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %7) #6, !dbg !447
  %9 = ptrtoint i8* %8 to i64, !dbg !447
  %10 = sub i64 %9, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !447
  %11 = trunc i64 %10 to i32, !dbg !447
  br label %12

; <label>:12                                      ; preds = %1, %6
  %.sink = phi i32 [ %11, %6 ], [ -1, %1 ]
  %13 = getelementptr inbounds i32* %aacode, i64 %indvars.iv, !dbg !448
  store i32 %.sink, i32* %13, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !438
  %exitcond = icmp eq i64 %indvars.iv.next, 64, !dbg !438
  br i1 %exitcond, label %14, label %1, !dbg !438

; <label>:14                                      ; preds = %12
  ret void, !dbg !449
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DefaultCodonBias(float* %codebias) #0 {
  tail call void @llvm.dbg.value(metadata float* %codebias, i64 0, metadata !150, metadata !167), !dbg !450
  %1 = bitcast float* %codebias to <4 x float>*, !dbg !451
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %1, align 4, !dbg !451, !tbaa !428
  %2 = getelementptr inbounds float* %codebias, i64 4, !dbg !452
  %3 = bitcast float* %2 to <4 x float>*, !dbg !453
  store <4 x float> <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, <4 x float>* %3, align 4, !dbg !453, !tbaa !428
  %4 = getelementptr inbounds float* %codebias, i64 8, !dbg !454
  %5 = bitcast float* %4 to <4 x float>*, !dbg !455
  store <4 x float> <float 0x3FC5555560000000, float 0x3FC5555560000000, float 0x3FC5555560000000, float 0x3FC5555560000000>, <4 x float>* %5, align 4, !dbg !455, !tbaa !428
  %6 = getelementptr inbounds float* %codebias, i64 12, !dbg !456
  store float 0x3FD5555560000000, float* %6, align 4, !dbg !457, !tbaa !428
  %7 = getelementptr inbounds float* %codebias, i64 13, !dbg !458
  store float 0x3FD5555560000000, float* %7, align 4, !dbg !459, !tbaa !428
  %8 = getelementptr inbounds float* %codebias, i64 14, !dbg !460
  store float 1.000000e+00, float* %8, align 4, !dbg !461, !tbaa !428
  %9 = getelementptr inbounds float* %codebias, i64 15, !dbg !462
  store float 0x3FD5555560000000, float* %9, align 4, !dbg !463, !tbaa !428
  %10 = getelementptr inbounds float* %codebias, i64 16, !dbg !464
  %11 = bitcast float* %10 to <4 x float>*, !dbg !465
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %11, align 4, !dbg !465, !tbaa !428
  %12 = getelementptr inbounds float* %codebias, i64 20, !dbg !466
  %13 = bitcast float* %12 to <4 x float>*, !dbg !467
  store <4 x float> <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, <4 x float>* %13, align 4, !dbg !467, !tbaa !428
  %14 = getelementptr inbounds float* %codebias, i64 24, !dbg !468
  %15 = bitcast float* %14 to <4 x float>*, !dbg !469
  store <4 x float> <float 0x3FC5555560000000, float 0x3FC5555560000000, float 0x3FC5555560000000, float 0x3FC5555560000000>, <4 x float>* %15, align 4, !dbg !469, !tbaa !428
  %16 = getelementptr inbounds float* %codebias, i64 28, !dbg !470
  %17 = bitcast float* %16 to <4 x float>*, !dbg !471
  store <4 x float> <float 0x3FC5555560000000, float 0x3FC5555560000000, float 0x3FC5555560000000, float 0x3FC5555560000000>, <4 x float>* %17, align 4, !dbg !471, !tbaa !428
  %18 = getelementptr inbounds float* %codebias, i64 32, !dbg !472
  %19 = bitcast float* %18 to <4 x float>*, !dbg !473
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %19, align 4, !dbg !473, !tbaa !428
  %20 = getelementptr inbounds float* %codebias, i64 36, !dbg !474
  %21 = bitcast float* %20 to <4 x float>*, !dbg !475
  store <4 x float> <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, <4 x float>* %21, align 4, !dbg !475, !tbaa !428
  %22 = getelementptr inbounds float* %codebias, i64 40, !dbg !476
  %23 = bitcast float* %22 to <4 x float>*, !dbg !477
  store <4 x float> <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, <4 x float>* %23, align 4, !dbg !477, !tbaa !428
  %24 = getelementptr inbounds float* %codebias, i64 44, !dbg !478
  %25 = bitcast float* %24 to <4 x float>*, !dbg !479
  store <4 x float> <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, <4 x float>* %25, align 4, !dbg !479, !tbaa !428
  %26 = getelementptr inbounds float* %codebias, i64 48, !dbg !480
  store float 0.000000e+00, float* %26, align 4, !dbg !481, !tbaa !428
  %27 = getelementptr inbounds float* %codebias, i64 49, !dbg !482
  store float 5.000000e-01, float* %27, align 4, !dbg !483, !tbaa !428
  %28 = getelementptr inbounds float* %codebias, i64 50, !dbg !484
  store float 0.000000e+00, float* %28, align 4, !dbg !485, !tbaa !428
  %29 = getelementptr inbounds float* %codebias, i64 51, !dbg !486
  store float 5.000000e-01, float* %29, align 4, !dbg !487, !tbaa !428
  %30 = getelementptr inbounds float* %codebias, i64 52, !dbg !488
  %31 = bitcast float* %30 to <4 x float>*, !dbg !489
  store <4 x float> <float 0x3FC5555560000000, float 0x3FC5555560000000, float 0x3FC5555560000000, float 0x3FC5555560000000>, <4 x float>* %31, align 4, !dbg !489, !tbaa !428
  %32 = getelementptr inbounds float* %codebias, i64 56, !dbg !490
  store float 0.000000e+00, float* %32, align 4, !dbg !491, !tbaa !428
  %33 = getelementptr inbounds float* %codebias, i64 57, !dbg !492
  store float 5.000000e-01, float* %33, align 4, !dbg !493, !tbaa !428
  %34 = getelementptr inbounds float* %codebias, i64 58, !dbg !494
  store float 1.000000e+00, float* %34, align 4, !dbg !495, !tbaa !428
  %35 = getelementptr inbounds float* %codebias, i64 59, !dbg !496
  store float 5.000000e-01, float* %35, align 4, !dbg !497, !tbaa !428
  %36 = getelementptr inbounds float* %codebias, i64 60, !dbg !498
  store float 0x3FC5555560000000, float* %36, align 4, !dbg !499, !tbaa !428
  %37 = getelementptr inbounds float* %codebias, i64 61, !dbg !500
  store float 5.000000e-01, float* %37, align 4, !dbg !501, !tbaa !428
  %38 = getelementptr inbounds float* %codebias, i64 62, !dbg !502
  store float 0x3FC5555560000000, float* %38, align 4, !dbg !503, !tbaa !428
  %39 = getelementptr inbounds float* %codebias, i64 63, !dbg !504
  store float 5.000000e-01, float* %39, align 4, !dbg !505, !tbaa !428
  ret void, !dbg !506
}

; Function Attrs: optsize
declare i32 @__toupper(i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!163, !164, !165}
!llvm.ident = !{!166}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !10, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/alphabet.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6, !7, !8, !9}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!9 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!10 = !{!11, !22, !28, !34, !42, !48, !132, !140, !146, !151, !157}
!11 = !DISubprogram(name: "DetermineAlphabet", scope: !1, file: !1, line: 44, type: !12, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32)* @DetermineAlphabet, variables: !14)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !7, !5}
!14 = !{!15, !16, !17, !18, !19, !20, !21}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rseqs", arg: 1, scope: !11, file: !1, line: 44, type: !7)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !11, file: !1, line: 44, type: !5)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !11, file: !1, line: 46, type: !5)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "other", scope: !11, file: !1, line: 47, type: !5)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nucleic", scope: !11, file: !1, line: 47, type: !5)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "amino", scope: !11, file: !1, line: 47, type: !5)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !11, file: !1, line: 48, type: !5)
!22 = !DISubprogram(name: "SetAlphabet", scope: !1, file: !1, line: 88, type: !23, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @SetAlphabet, variables: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !5}
!25 = !{!26, !27}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !22, file: !1, line: 88, type: !5)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !22, file: !1, line: 90, type: !5)
!28 = !DISubprogram(name: "SymbolIndex", scope: !1, file: !1, line: 184, type: !29, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8)* @SymbolIndex, variables: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!5, !4}
!31 = !{!32, !33}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 1, scope: !28, file: !1, line: 184, type: !4)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !28, file: !1, line: 186, type: !8)
!34 = !DISubprogram(name: "DigitizeSequence", scope: !1, file: !1, line: 210, type: !35, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32)* @DigitizeSequence, variables: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!8, !8, !5}
!37 = !{!38, !39, !40, !41}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !34, file: !1, line: 210, type: !8)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "L", arg: 2, scope: !34, file: !1, line: 210, type: !5)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dsq", scope: !34, file: !1, line: 212, type: !8)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !34, file: !1, line: 213, type: !5)
!42 = !DISubprogram(name: "DedigitizeSequence", scope: !1, file: !1, line: 230, type: !35, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32)* @DedigitizeSequence, variables: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dsq", arg: 1, scope: !42, file: !1, line: 230, type: !8)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "L", arg: 2, scope: !42, file: !1, line: 230, type: !5)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !42, file: !1, line: 232, type: !8)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !42, file: !1, line: 233, type: !5)
!48 = !DISubprogram(name: "DigitizeAlignment", scope: !1, file: !1, line: 257, type: !49, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.msa_struct*, i8***)* @DigitizeAlignment, variables: !125)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !90}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSA", file: !53, line: 177, baseType: !54)
!53 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "msa_struct", file: !53, line: 112, size: 2880, align: 64, elements: !55)
!55 = !{!56, !57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123, !124}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "aseq", scope: !54, file: !53, line: 115, baseType: !7, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sqname", scope: !54, file: !53, line: 116, baseType: !7, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !54, file: !53, line: 117, baseType: !59, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !54, file: !53, line: 118, baseType: !5, size: 32, align: 32, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !54, file: !53, line: 119, baseType: !5, size: 32, align: 32, offset: 224)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !53, line: 123, baseType: !5, size: 32, align: 32, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !53, line: 124, baseType: !5, size: 32, align: 32, offset: 288)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !53, line: 125, baseType: !8, size: 64, align: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !54, file: !53, line: 126, baseType: !8, size: 64, align: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !54, file: !53, line: 127, baseType: !8, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !54, file: !53, line: 128, baseType: !8, size: 64, align: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cons", scope: !54, file: !53, line: 129, baseType: !8, size: 64, align: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "sa_cons", scope: !54, file: !53, line: 130, baseType: !8, size: 64, align: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !54, file: !53, line: 131, baseType: !8, size: 64, align: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "sqacc", scope: !54, file: !53, line: 132, baseType: !7, size: 64, align: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sqdesc", scope: !54, file: !53, line: 133, baseType: !7, size: 64, align: 64, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !54, file: !53, line: 134, baseType: !7, size: 64, align: 64, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !54, file: !53, line: 135, baseType: !7, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff", scope: !54, file: !53, line: 136, baseType: !76, size: 192, align: 32, offset: 1024)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, align: 32, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 6)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff_is_set", scope: !54, file: !53, line: 137, baseType: !80, size: 192, align: 32, offset: 1216)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, align: 32, elements: !77)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !54, file: !53, line: 144, baseType: !7, size: 64, align: 64, offset: 1408)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ncomment", scope: !54, file: !53, line: 145, baseType: !5, size: 32, align: 32, offset: 1472)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ncomment", scope: !54, file: !53, line: 146, baseType: !5, size: 32, align: 32, offset: 1504)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "gf_tag", scope: !54, file: !53, line: 148, baseType: !7, size: 64, align: 64, offset: 1536)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "gf", scope: !54, file: !53, line: 149, baseType: !7, size: 64, align: 64, offset: 1600)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ngf", scope: !54, file: !53, line: 150, baseType: !5, size: 32, align: 32, offset: 1664)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ngf", scope: !54, file: !53, line: 151, baseType: !5, size: 32, align: 32, offset: 1696)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "gs_tag", scope: !54, file: !53, line: 153, baseType: !7, size: 64, align: 64, offset: 1728)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !54, file: !53, line: 154, baseType: !90, size: 64, align: 64, offset: 1792)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "gs_idx", scope: !54, file: !53, line: 155, baseType: !92, size: 64, align: 64, offset: 1856)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKI", file: !94, line: 42, baseType: !95)
!94 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!95 = !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 36, size: 192, align: 64, elements: !96)
!96 = !{!97, !105, !106, !107}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !95, file: !94, line: 37, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "gki_elem", file: !94, line: 26, size: 192, align: 64, elements: !101)
!101 = !{!102, !103, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !100, file: !94, line: 27, baseType: !8, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !100, file: !94, line: 28, baseType: !5, size: 32, align: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !100, file: !94, line: 29, baseType: !99, size: 64, align: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "primelevel", scope: !95, file: !94, line: 39, baseType: !5, size: 32, align: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !95, file: !94, line: 40, baseType: !5, size: 32, align: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !95, file: !94, line: 41, baseType: !5, size: 32, align: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ngs", scope: !54, file: !53, line: 156, baseType: !5, size: 32, align: 32, offset: 1920)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "gc_tag", scope: !54, file: !53, line: 158, baseType: !7, size: 64, align: 64, offset: 1984)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !54, file: !53, line: 159, baseType: !7, size: 64, align: 64, offset: 2048)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "gc_idx", scope: !54, file: !53, line: 160, baseType: !92, size: 64, align: 64, offset: 2112)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ngc", scope: !54, file: !53, line: 161, baseType: !5, size: 32, align: 32, offset: 2176)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "gr_tag", scope: !54, file: !53, line: 163, baseType: !7, size: 64, align: 64, offset: 2240)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "gr", scope: !54, file: !53, line: 164, baseType: !90, size: 64, align: 64, offset: 2304)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "gr_idx", scope: !54, file: !53, line: 165, baseType: !92, size: 64, align: 64, offset: 2368)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ngr", scope: !54, file: !53, line: 166, baseType: !5, size: 32, align: 32, offset: 2432)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !54, file: !53, line: 170, baseType: !92, size: 64, align: 64, offset: 2496)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nseqalloc", scope: !54, file: !53, line: 171, baseType: !5, size: 32, align: 32, offset: 2560)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "nseqlump", scope: !54, file: !53, line: 172, baseType: !5, size: 32, align: 32, offset: 2592)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sqlen", scope: !54, file: !53, line: 173, baseType: !121, size: 64, align: 64, offset: 2624)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sslen", scope: !54, file: !53, line: 174, baseType: !121, size: 64, align: 64, offset: 2688)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !54, file: !53, line: 175, baseType: !121, size: 64, align: 64, offset: 2752)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "lastidx", scope: !54, file: !53, line: 176, baseType: !5, size: 32, align: 32, offset: 2816)
!125 = !{!126, !127, !128, !129, !130, !131}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 1, scope: !48, file: !1, line: 257, type: !51)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_dsqs", arg: 2, scope: !48, file: !1, line: 257, type: !90)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dsq", scope: !48, file: !1, line: 259, type: !7)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !48, file: !1, line: 260, type: !5)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dpos", scope: !48, file: !1, line: 261, type: !5)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !48, file: !1, line: 262, type: !5)
!132 = !DISubprogram(name: "P7CountSymbol", scope: !1, file: !1, line: 293, type: !133, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i8, float)* @P7CountSymbol, variables: !135)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !59, !4, !9}
!135 = !{!136, !137, !138, !139}
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "counters", arg: 1, scope: !132, file: !1, line: 293, type: !59)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symidx", arg: 2, scope: !132, file: !1, line: 293, type: !4)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wt", arg: 3, scope: !132, file: !1, line: 293, type: !9)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !132, file: !1, line: 295, type: !5)
!140 = !DISubprogram(name: "DefaultGeneticCode", scope: !1, file: !1, line: 320, type: !141, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*)* @DefaultGeneticCode, variables: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !121}
!143 = !{!144, !145}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aacode", arg: 1, scope: !140, file: !1, line: 320, type: !121)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !140, file: !1, line: 322, type: !5)
!146 = !DISubprogram(name: "DefaultCodonBias", scope: !1, file: !1, line: 343, type: !147, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, function: void (float*)* @DefaultCodonBias, variables: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !59}
!149 = !{!150}
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "codebias", arg: 1, scope: !146, file: !1, line: 343, type: !59)
!151 = !DISubprogram(name: "toupper", scope: !152, file: !152, line: 298, type: !153, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, variables: !155)
!152 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!153 = !DISubroutineType(types: !154)
!154 = !{!5, !5}
!155 = !{!156}
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !151, file: !152, line: 298, type: !5)
!157 = !DISubprogram(name: "set_degenerate", scope: !1, file: !1, line: 419, type: !158, isLocal: true, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, function: void (i8, i8*)* @set_degenerate, variables: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !4, !8}
!160 = !{!161, !162}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iupac", arg: 1, scope: !157, file: !1, line: 419, type: !4)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "syms", arg: 2, scope: !157, file: !1, line: 419, type: !8)
!163 = !{i32 2, !"Dwarf Version", i32 2}
!164 = !{i32 2, !"Debug Info Version", i32 700000003}
!165 = !{i32 1, !"PIC Level", i32 2}
!166 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!167 = !DIExpression()
!168 = !DILocation(line: 44, column: 26, scope: !11)
!169 = !DILocation(line: 44, column: 38, scope: !11)
!170 = !DILocation(line: 48, column: 7, scope: !11)
!171 = !DILocation(line: 47, column: 23, scope: !11)
!172 = !DILocation(line: 47, column: 14, scope: !11)
!173 = !DILocation(line: 47, column: 7, scope: !11)
!174 = !DILocation(line: 46, column: 7, scope: !11)
!175 = !DILocation(line: 54, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 54, column: 3)
!177 = distinct !DILexicalBlock(scope: !11, file: !1, line: 54, column: 3)
!178 = !DILocation(line: 54, column: 3, scope: !177)
!179 = !DILocation(line: 55, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 54, column: 36)
!181 = !{!182, !182, i64 0}
!182 = !{!"any pointer", !183, i64 0}
!183 = !{!"omnipotent char", !184, i64 0}
!184 = !{!"Simple C/C++ TBAA"}
!185 = !DILocation(line: 55, column: 13, scope: !180)
!186 = !DILocation(line: 55, column: 5, scope: !180)
!187 = !DILocation(line: 56, column: 28, scope: !188)
!188 = distinct !DILexicalBlock(scope: !180, file: !1, line: 55, column: 34)
!189 = !DILocation(line: 56, column: 34, scope: !188)
!190 = !DILocation(line: 57, column: 28, scope: !188)
!191 = !DILocation(line: 57, column: 34, scope: !188)
!192 = !DILocation(line: 58, column: 26, scope: !188)
!193 = !DILocation(line: 58, column: 34, scope: !188)
!194 = !DILocation(line: 59, column: 26, scope: !188)
!195 = !DILocation(line: 59, column: 34, scope: !188)
!196 = !DILocation(line: 60, column: 14, scope: !188)
!197 = !DILocation(line: 61, column: 5, scope: !188)
!198 = !DILocation(line: 64, column: 20, scope: !199)
!199 = distinct !DILexicalBlock(scope: !11, file: !1, line: 64, column: 12)
!200 = !DILocation(line: 64, column: 12, scope: !11)
!201 = !DILocation(line: 65, column: 20, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 65, column: 12)
!203 = !DILocation(line: 65, column: 12, scope: !199)
!204 = !DILocation(line: 66, column: 20, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !1, line: 66, column: 12)
!206 = !DILocation(line: 66, column: 39, scope: !205)
!207 = !DILocation(line: 66, column: 28, scope: !205)
!208 = !DILocation(line: 67, column: 5, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 66, column: 48)
!210 = !DILocation(line: 69, column: 3, scope: !209)
!211 = !DILocation(line: 70, column: 18, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !1, line: 70, column: 12)
!213 = !DILocation(line: 70, column: 37, scope: !212)
!214 = !DILocation(line: 70, column: 28, scope: !212)
!215 = !DILocation(line: 71, column: 5, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 70, column: 46)
!217 = !DILocation(line: 73, column: 3, scope: !216)
!218 = !DILocation(line: 74, column: 8, scope: !212)
!219 = !DILocation(line: 78, column: 3, scope: !11)
!220 = !DILocation(line: 79, column: 1, scope: !11)
!221 = !DILocation(line: 88, column: 17, scope: !22)
!222 = !DILocation(line: 109, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !22, file: !1, line: 109, column: 7)
!224 = !{!225, !225, i64 0}
!225 = !{!"int", !183, i64 0}
!226 = !DILocation(line: 109, column: 21, scope: !223)
!227 = !DILocation(line: 109, column: 7, scope: !22)
!228 = !DILocation(line: 111, column: 16, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 111, column: 11)
!230 = distinct !DILexicalBlock(scope: !223, file: !1, line: 110, column: 5)
!231 = !DILocation(line: 111, column: 11, scope: !230)
!232 = !DILocation(line: 112, column: 2, scope: !229)
!233 = !DILocation(line: 121, column: 3, scope: !22)
!234 = !DILocation(line: 123, column: 23, scope: !235)
!235 = distinct !DILexicalBlock(scope: !22, file: !1, line: 121, column: 16)
!236 = !DILocation(line: 125, column: 5, scope: !235)
!237 = !DILocation(line: 126, column: 23, scope: !235)
!238 = !DILocation(line: 127, column: 23, scope: !235)
!239 = !DILocation(line: 90, column: 7, scope: !22)
!240 = !DILocation(line: 128, column: 5, scope: !241)
!241 = distinct !DILexicalBlock(scope: !235, file: !1, line: 128, column: 5)
!242 = !DILocation(line: 131, column: 19, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 131, column: 5)
!244 = distinct !DILexicalBlock(scope: !235, file: !1, line: 131, column: 5)
!245 = !DILocation(line: 131, column: 5, scope: !244)
!246 = !DILocation(line: 133, column: 21, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !1, line: 131, column: 41)
!248 = !DILocation(line: 129, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 128, column: 42)
!250 = distinct !DILexicalBlock(scope: !241, file: !1, line: 128, column: 5)
!251 = !DILocation(line: 128, column: 21, scope: !250)
!252 = !DILocation(line: 128, column: 19, scope: !250)
!253 = !DILocation(line: 132, column: 7, scope: !247)
!254 = !DILocation(line: 132, column: 24, scope: !247)
!255 = !{!183, !183, i64 0}
!256 = !DILocation(line: 135, column: 5, scope: !235)
!257 = !DILocation(line: 136, column: 5, scope: !235)
!258 = !DILocation(line: 137, column: 5, scope: !235)
!259 = !DILocation(line: 138, column: 5, scope: !235)
!260 = !DILocation(line: 139, column: 5, scope: !235)
!261 = !DILocation(line: 141, column: 23, scope: !235)
!262 = !DILocation(line: 143, column: 5, scope: !235)
!263 = !DILocation(line: 144, column: 23, scope: !235)
!264 = !DILocation(line: 145, column: 23, scope: !235)
!265 = !DILocation(line: 146, column: 5, scope: !266)
!266 = distinct !DILexicalBlock(scope: !235, file: !1, line: 146, column: 5)
!267 = !DILocation(line: 149, column: 19, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 149, column: 5)
!269 = distinct !DILexicalBlock(scope: !235, file: !1, line: 149, column: 5)
!270 = !DILocation(line: 149, column: 5, scope: !269)
!271 = !DILocation(line: 151, column: 21, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 149, column: 41)
!273 = !DILocation(line: 147, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 146, column: 42)
!275 = distinct !DILexicalBlock(scope: !266, file: !1, line: 146, column: 5)
!276 = !DILocation(line: 146, column: 21, scope: !275)
!277 = !DILocation(line: 146, column: 19, scope: !275)
!278 = !DILocation(line: 150, column: 7, scope: !272)
!279 = !DILocation(line: 150, column: 24, scope: !272)
!280 = !DILocation(line: 153, column: 5, scope: !235)
!281 = !DILocation(line: 154, column: 5, scope: !235)
!282 = !DILocation(line: 155, column: 5, scope: !235)
!283 = !DILocation(line: 156, column: 5, scope: !235)
!284 = !DILocation(line: 157, column: 5, scope: !235)
!285 = !DILocation(line: 158, column: 5, scope: !235)
!286 = !DILocation(line: 159, column: 5, scope: !235)
!287 = !DILocation(line: 160, column: 5, scope: !235)
!288 = !DILocation(line: 161, column: 5, scope: !235)
!289 = !DILocation(line: 162, column: 5, scope: !235)
!290 = !DILocation(line: 163, column: 5, scope: !235)
!291 = !DILocation(line: 164, column: 5, scope: !235)
!292 = !DILocation(line: 165, column: 5, scope: !235)
!293 = !DILocation(line: 166, column: 5, scope: !235)
!294 = !DILocation(line: 167, column: 12, scope: !235)
!295 = !DILocation(line: 168, column: 3, scope: !235)
!296 = !DILocation(line: 174, column: 1, scope: !22)
!297 = !DILocation(line: 419, column: 21, scope: !157)
!298 = !DILocation(line: 419, column: 34, scope: !157)
!299 = !DILocation(line: 421, column: 49, scope: !157)
!300 = !DILocation(line: 421, column: 30, scope: !157)
!301 = !DILocation(line: 421, column: 14, scope: !157)
!302 = !DILocation(line: 421, column: 36, scope: !157)
!303 = !DILocation(line: 421, column: 3, scope: !157)
!304 = !DILocation(line: 421, column: 47, scope: !157)
!305 = !DILocation(line: 422, column: 10, scope: !157)
!306 = !DILocation(line: 422, column: 3, scope: !157)
!307 = !DILocation(line: 424, column: 32, scope: !308)
!308 = distinct !DILexicalBlock(scope: !157, file: !1, line: 422, column: 17)
!309 = !DILocation(line: 424, column: 16, scope: !308)
!310 = !DILocation(line: 424, column: 38, scope: !308)
!311 = !DILocation(line: 423, column: 16, scope: !308)
!312 = !DILocation(line: 423, column: 38, scope: !308)
!313 = !DILocation(line: 423, column: 5, scope: !308)
!314 = !DILocation(line: 424, column: 49, scope: !308)
!315 = !DILocation(line: 425, column: 9, scope: !308)
!316 = !DILocation(line: 427, column: 1, scope: !157)
!317 = !DILocation(line: 184, column: 18, scope: !28)
!318 = !DILocation(line: 187, column: 48, scope: !28)
!319 = !DILocation(line: 298, column: 13, scope: !151, inlinedAt: !320)
!320 = distinct !DILocation(line: 187, column: 40, scope: !28)
!321 = !DILocation(line: 300, column: 17, scope: !151, inlinedAt: !320)
!322 = !DILocation(line: 187, column: 33, scope: !28)
!323 = !DILocation(line: 187, column: 16, scope: !28)
!324 = !DILocation(line: 186, column: 9, scope: !28)
!325 = !DILocation(line: 187, column: 61, scope: !28)
!326 = !DILocation(line: 187, column: 10, scope: !28)
!327 = !DILocation(line: 188, column: 4, scope: !28)
!328 = !DILocation(line: 188, column: 18, scope: !28)
!329 = !DILocation(line: 188, column: 25, scope: !28)
!330 = !DILocation(line: 187, column: 3, scope: !28)
!331 = !DILocation(line: 210, column: 24, scope: !34)
!332 = !DILocation(line: 210, column: 33, scope: !34)
!333 = !DILocation(line: 215, column: 9, scope: !34)
!334 = !DILocation(line: 212, column: 9, scope: !34)
!335 = !DILocation(line: 216, column: 30, scope: !34)
!336 = !DILocation(line: 216, column: 23, scope: !34)
!337 = !DILocation(line: 216, column: 17, scope: !34)
!338 = !DILocation(line: 216, column: 12, scope: !34)
!339 = !DILocation(line: 216, column: 21, scope: !34)
!340 = !DILocation(line: 216, column: 10, scope: !34)
!341 = !DILocation(line: 213, column: 7, scope: !34)
!342 = !DILocation(line: 217, column: 17, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 217, column: 3)
!344 = distinct !DILexicalBlock(scope: !34, file: !1, line: 217, column: 3)
!345 = !DILocation(line: 217, column: 3, scope: !344)
!346 = !DILocation(line: 218, column: 31, scope: !343)
!347 = !DILocation(line: 218, column: 26, scope: !343)
!348 = !DILocation(line: 218, column: 14, scope: !343)
!349 = !DILocation(line: 218, column: 5, scope: !343)
!350 = !DILocation(line: 218, column: 12, scope: !343)
!351 = !DILocation(line: 219, column: 3, scope: !34)
!352 = !DILocation(line: 230, column: 26, scope: !42)
!353 = !DILocation(line: 230, column: 35, scope: !42)
!354 = !DILocation(line: 235, column: 9, scope: !42)
!355 = !DILocation(line: 232, column: 9, scope: !42)
!356 = !DILocation(line: 233, column: 7, scope: !42)
!357 = !DILocation(line: 236, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 236, column: 3)
!359 = distinct !DILexicalBlock(scope: !42, file: !1, line: 236, column: 3)
!360 = !DILocation(line: 236, column: 3, scope: !359)
!361 = !DILocation(line: 237, column: 29, scope: !358)
!362 = !DILocation(line: 237, column: 14, scope: !358)
!363 = !DILocation(line: 237, column: 5, scope: !358)
!364 = !DILocation(line: 237, column: 12, scope: !358)
!365 = !DILocation(line: 238, column: 3, scope: !42)
!366 = !DILocation(line: 238, column: 10, scope: !42)
!367 = !DILocation(line: 239, column: 3, scope: !42)
!368 = !DILocation(line: 257, column: 24, scope: !48)
!369 = !DILocation(line: 257, column: 37, scope: !48)
!370 = !DILocation(line: 264, column: 19, scope: !48)
!371 = !{!372, !225, i64 28}
!372 = !{!"msa_struct", !182, i64 0, !182, i64 8, !182, i64 16, !225, i64 24, !225, i64 28, !225, i64 32, !225, i64 36, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96, !182, i64 104, !182, i64 112, !182, i64 120, !183, i64 128, !183, i64 152, !182, i64 176, !225, i64 184, !225, i64 188, !182, i64 192, !182, i64 200, !225, i64 208, !225, i64 212, !182, i64 216, !182, i64 224, !182, i64 232, !225, i64 240, !182, i64 248, !182, i64 256, !182, i64 264, !225, i64 272, !182, i64 280, !182, i64 288, !182, i64 296, !225, i64 304, !182, i64 312, !225, i64 320, !225, i64 324, !182, i64 328, !182, i64 336, !182, i64 344, !225, i64 352}
!373 = !DILocation(line: 264, column: 9, scope: !48)
!374 = !DILocation(line: 259, column: 10, scope: !48)
!375 = !DILocation(line: 260, column: 10, scope: !48)
!376 = !DILocation(line: 265, column: 28, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !1, line: 265, column: 3)
!378 = distinct !DILexicalBlock(scope: !48, file: !1, line: 265, column: 3)
!379 = !DILocation(line: 265, column: 21, scope: !377)
!380 = !DILocation(line: 265, column: 3, scope: !378)
!381 = !DILocation(line: 266, column: 25, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !1, line: 265, column: 41)
!383 = !DILocation(line: 271, column: 13, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 271, column: 11)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 270, column: 56)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 270, column: 5)
!387 = distinct !DILexicalBlock(scope: !382, file: !1, line: 270, column: 5)
!388 = !{!372, !225, i64 24}
!389 = !DILocation(line: 266, column: 5, scope: !382)
!390 = !DILocation(line: 266, column: 14, scope: !382)
!391 = !DILocation(line: 268, column: 26, scope: !382)
!392 = !DILocation(line: 268, column: 19, scope: !382)
!393 = !DILocation(line: 268, column: 17, scope: !382)
!394 = !DILocation(line: 262, column: 10, scope: !48)
!395 = !DILocation(line: 261, column: 10, scope: !48)
!396 = !DILocation(line: 270, column: 42, scope: !386)
!397 = !DILocation(line: 270, column: 35, scope: !386)
!398 = !DILocation(line: 270, column: 5, scope: !387)
!399 = !{!372, !182, i64 0}
!400 = !DILocation(line: 272, column: 21, scope: !384)
!401 = !DILocation(line: 272, column: 15, scope: !384)
!402 = !DILocation(line: 272, column: 2, scope: !384)
!403 = !DILocation(line: 272, column: 19, scope: !384)
!404 = !DILocation(line: 274, column: 29, scope: !382)
!405 = !DILocation(line: 274, column: 22, scope: !382)
!406 = !DILocation(line: 274, column: 5, scope: !382)
!407 = !DILocation(line: 274, column: 20, scope: !382)
!408 = !DILocation(line: 276, column: 13, scope: !48)
!409 = !DILocation(line: 277, column: 1, scope: !48)
!410 = !DILocation(line: 293, column: 22, scope: !132)
!411 = !DILocation(line: 293, column: 37, scope: !132)
!412 = !DILocation(line: 293, column: 51, scope: !132)
!413 = !DILocation(line: 297, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !132, file: !1, line: 297, column: 7)
!415 = !DILocation(line: 297, column: 16, scope: !414)
!416 = !DILocation(line: 297, column: 14, scope: !414)
!417 = !DILocation(line: 297, column: 7, scope: !132)
!418 = !DILocation(line: 300, column: 19, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 300, column: 5)
!420 = distinct !DILexicalBlock(scope: !414, file: !1, line: 300, column: 5)
!421 = !DILocation(line: 300, column: 5, scope: !420)
!422 = !DILocation(line: 301, column: 11, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 301, column: 11)
!424 = distinct !DILexicalBlock(scope: !419, file: !1, line: 300, column: 41)
!425 = !DILocation(line: 302, column: 30, scope: !423)
!426 = !DILocation(line: 298, column: 5, scope: !414)
!427 = !DILocation(line: 298, column: 28, scope: !414)
!428 = !{!429, !429, i64 0}
!429 = !{!"float", !183, i64 0}
!430 = !DILocation(line: 301, column: 11, scope: !424)
!431 = !DILocation(line: 302, column: 22, scope: !423)
!432 = !DILocation(line: 302, column: 20, scope: !423)
!433 = !DILocation(line: 302, column: 2, scope: !423)
!434 = !DILocation(line: 302, column: 14, scope: !423)
!435 = !DILocation(line: 304, column: 1, scope: !132)
!436 = !DILocation(line: 320, column: 25, scope: !140)
!437 = !DILocation(line: 322, column: 7, scope: !140)
!438 = !DILocation(line: 324, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !140, file: !1, line: 324, column: 3)
!440 = !DILocation(line: 325, column: 11, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 325, column: 9)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 324, column: 28)
!443 = distinct !DILexicalBlock(scope: !439, file: !1, line: 324, column: 3)
!444 = !DILocation(line: 325, column: 9, scope: !441)
!445 = !DILocation(line: 325, column: 24, scope: !441)
!446 = !DILocation(line: 325, column: 9, scope: !442)
!447 = !DILocation(line: 326, column: 44, scope: !441)
!448 = !DILocation(line: 325, column: 32, scope: !441)
!449 = !DILocation(line: 328, column: 1, scope: !140)
!450 = !DILocation(line: 343, column: 25, scope: !146)
!451 = !DILocation(line: 345, column: 16, scope: !146)
!452 = !DILocation(line: 349, column: 3, scope: !146)
!453 = !DILocation(line: 349, column: 16, scope: !146)
!454 = !DILocation(line: 353, column: 3, scope: !146)
!455 = !DILocation(line: 353, column: 16, scope: !146)
!456 = !DILocation(line: 357, column: 3, scope: !146)
!457 = !DILocation(line: 357, column: 16, scope: !146)
!458 = !DILocation(line: 358, column: 3, scope: !146)
!459 = !DILocation(line: 358, column: 16, scope: !146)
!460 = !DILocation(line: 359, column: 3, scope: !146)
!461 = !DILocation(line: 359, column: 16, scope: !146)
!462 = !DILocation(line: 360, column: 3, scope: !146)
!463 = !DILocation(line: 360, column: 16, scope: !146)
!464 = !DILocation(line: 361, column: 3, scope: !146)
!465 = !DILocation(line: 361, column: 16, scope: !146)
!466 = !DILocation(line: 365, column: 3, scope: !146)
!467 = !DILocation(line: 365, column: 16, scope: !146)
!468 = !DILocation(line: 369, column: 3, scope: !146)
!469 = !DILocation(line: 369, column: 16, scope: !146)
!470 = !DILocation(line: 373, column: 3, scope: !146)
!471 = !DILocation(line: 373, column: 16, scope: !146)
!472 = !DILocation(line: 377, column: 3, scope: !146)
!473 = !DILocation(line: 377, column: 16, scope: !146)
!474 = !DILocation(line: 381, column: 3, scope: !146)
!475 = !DILocation(line: 381, column: 16, scope: !146)
!476 = !DILocation(line: 385, column: 3, scope: !146)
!477 = !DILocation(line: 385, column: 16, scope: !146)
!478 = !DILocation(line: 389, column: 3, scope: !146)
!479 = !DILocation(line: 389, column: 16, scope: !146)
!480 = !DILocation(line: 393, column: 3, scope: !146)
!481 = !DILocation(line: 393, column: 16, scope: !146)
!482 = !DILocation(line: 394, column: 3, scope: !146)
!483 = !DILocation(line: 394, column: 16, scope: !146)
!484 = !DILocation(line: 395, column: 3, scope: !146)
!485 = !DILocation(line: 395, column: 16, scope: !146)
!486 = !DILocation(line: 396, column: 3, scope: !146)
!487 = !DILocation(line: 396, column: 16, scope: !146)
!488 = !DILocation(line: 397, column: 3, scope: !146)
!489 = !DILocation(line: 397, column: 16, scope: !146)
!490 = !DILocation(line: 401, column: 3, scope: !146)
!491 = !DILocation(line: 401, column: 16, scope: !146)
!492 = !DILocation(line: 402, column: 3, scope: !146)
!493 = !DILocation(line: 402, column: 16, scope: !146)
!494 = !DILocation(line: 403, column: 3, scope: !146)
!495 = !DILocation(line: 403, column: 16, scope: !146)
!496 = !DILocation(line: 404, column: 3, scope: !146)
!497 = !DILocation(line: 404, column: 16, scope: !146)
!498 = !DILocation(line: 405, column: 3, scope: !146)
!499 = !DILocation(line: 405, column: 16, scope: !146)
!500 = !DILocation(line: 406, column: 3, scope: !146)
!501 = !DILocation(line: 406, column: 16, scope: !146)
!502 = !DILocation(line: 407, column: 3, scope: !146)
!503 = !DILocation(line: 407, column: 16, scope: !146)
!504 = !DILocation(line: 408, column: 3, scope: !146)
!505 = !DILocation(line: 408, column: 16, scope: !146)
!506 = !DILocation(line: 409, column: 1, scope: !146)
