; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/clustal.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct.__sFILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.ssifile_s = type { %struct.__sFILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"CLUSTAL\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"multiple sequence alignment\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c".*:\00", align 1
@.str5 = private unnamed_addr constant [64 x i8] c"Parse failed at line %d, file %s: possibly using spaces as gaps\00", align 1
@.str6 = private unnamed_addr constant [44 x i8] c"CLUSTAL W(1.5) multiple sequence alignment\0A\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"%*s %s\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.msa_struct* @ReadClustal(%struct.msafile_struct* %afp) #0 {
  %s = alloca i8*, align 8
  %slen = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.msafile_struct* %afp, i64 0, metadata !205, metadata !232), !dbg !233
  %1 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !234
  %2 = load %struct.__sFILE** %1, align 8, !dbg !234, !tbaa !236
  %3 = tail call i32 @feof(%struct.__sFILE* %2) #6, !dbg !242
  %4 = icmp eq i32 %3, 0, !dbg !242
  br i1 %4, label %.preheader, label %.thread, !dbg !243

.preheader:                                       ; preds = %0
  %5 = tail call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !244
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !207, metadata !232), !dbg !245
  store i8* %5, i8** %s, align 8, !dbg !246, !tbaa !247
  %6 = icmp eq i8* %5, null, !dbg !248
  br i1 %6, label %.thread, label %.lr.ph2, !dbg !249

.lr.ph2:                                          ; preds = %.preheader, %.backedge1
  %.pr = phi i8* [ %9, %.backedge1 ], [ %5, %.preheader ]
  %7 = tail call i32 @strncmp(i8* %.pr, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i64 7) #6, !dbg !250
  %8 = icmp eq i32 %7, 0, !dbg !253
  br i1 %8, label %11, label %.backedge1, !dbg !254

.backedge1:                                       ; preds = %.lr.ph2, %11
  %9 = tail call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !244
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !207, metadata !232), !dbg !245
  store i8* %9, i8** %s, align 8, !dbg !246, !tbaa !247
  %10 = icmp eq i8* %9, null, !dbg !248
  br i1 %10, label %.thread, label %.lr.ph2, !dbg !249

; <label>:11                                      ; preds = %.lr.ph2
  tail call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !207, metadata !232), !dbg !245
  %12 = tail call i8* @strstr(i8* %.pr, i8* getelementptr inbounds ([28 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !255
  %13 = icmp eq i8* %12, null, !dbg !256
  br i1 %13, label %.backedge1, label %14, !dbg !257

; <label>:14                                      ; preds = %11
  tail call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !207, metadata !232), !dbg !245
  %15 = tail call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #6, !dbg !258
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %15, i64 0, metadata !206, metadata !232), !dbg !259
  %16 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !260
  call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !207, metadata !232), !dbg !245
  store i8* %16, i8** %s, align 8, !dbg !261, !tbaa !247
  %17 = icmp eq i8* %16, null, !dbg !262
  br i1 %17, label %._crit_edge, label %.lr.ph, !dbg !263

.lr.ph:                                           ; preds = %14
  %18 = getelementptr inbounds %struct.msa_struct* %15, i64 0, i32 45, !dbg !264
  %19 = getelementptr inbounds %struct.msa_struct* %15, i64 0, i32 0, !dbg !266
  %20 = getelementptr inbounds %struct.msa_struct* %15, i64 0, i32 42, !dbg !267
  %21 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2, !dbg !268
  %22 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !270
  br label %23, !dbg !263

; <label>:23                                      ; preds = %.lr.ph, %.backedge
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !207, metadata !232), !dbg !245
  %24 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i32* null) #6, !dbg !271
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !210, metadata !232), !dbg !273
  %25 = icmp eq i8* %24, null, !dbg !274
  br i1 %25, label %.backedge, label %26, !dbg !275

; <label>:26                                      ; preds = %23
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !207, metadata !232), !dbg !245
  call void @llvm.dbg.value(metadata i32* %slen, i64 0, metadata !208, metadata !232), !dbg !276
  %27 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i32* %slen) #6, !dbg !277
  call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !211, metadata !232), !dbg !279
  %28 = icmp eq i8* %27, null, !dbg !280
  br i1 %28, label %.backedge, label %29, !dbg !281

; <label>:29                                      ; preds = %26
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !207, metadata !232), !dbg !245
  %30 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0), i32* null) #6, !dbg !282
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !212, metadata !232), !dbg !283
  %31 = call i8* @strpbrk(i8* %24, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !284
  %32 = icmp eq i8* %31, null, !dbg !286
  br i1 %32, label %36, label %33, !dbg !287

; <label>:33                                      ; preds = %29
  %34 = call i8* @strpbrk(i8* %27, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !288
  %35 = icmp eq i8* %34, null, !dbg !289
  br i1 %35, label %36, label %.backedge, !dbg !290

; <label>:36                                      ; preds = %33, %29
  %37 = icmp eq i8* %30, null, !dbg !291
  br i1 %37, label %41, label %38, !dbg !292

; <label>:38                                      ; preds = %36
  %39 = load i32* %21, align 4, !dbg !268, !tbaa !293
  %40 = load i8** %22, align 8, !dbg !270, !tbaa !294
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([64 x i8]* @.str5, i64 0, i64 0), i32 %39, i8* %40) #6, !dbg !295
  br label %41, !dbg !295

; <label>:41                                      ; preds = %36, %38
  %42 = load i32* %18, align 4, !dbg !264, !tbaa !296
  %43 = add nsw i32 %42, 1, !dbg !298
  %44 = call i32 @MSAGetSeqidx(%struct.msa_struct* %15, i8* %24, i32 %43) #6, !dbg !299
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !209, metadata !232), !dbg !300
  store i32 %44, i32* %18, align 4, !dbg !301, !tbaa !296
  %45 = sext i32 %44 to i64, !dbg !302
  %46 = load i8*** %19, align 8, !dbg !266, !tbaa !303
  %47 = getelementptr inbounds i8** %46, i64 %45, !dbg !302
  %48 = load i32** %20, align 8, !dbg !267, !tbaa !304
  %49 = getelementptr inbounds i32* %48, i64 %45, !dbg !305
  %50 = load i32* %49, align 4, !dbg !305, !tbaa !306
  call void @llvm.dbg.value(metadata i32* %slen, i64 0, metadata !208, metadata !232), !dbg !276
  %51 = load i32* %slen, align 4, !dbg !307, !tbaa !306
  %52 = call i32 @sre_strcat(i8** %47, i32 %50, i8* %27, i32 %51) #6, !dbg !308
  %53 = load i32** %20, align 8, !dbg !309, !tbaa !304
  %54 = getelementptr inbounds i32* %53, i64 %45, !dbg !310
  store i32 %52, i32* %54, align 4, !dbg !311, !tbaa !306
  br label %.backedge, !dbg !263

.backedge:                                        ; preds = %41, %23, %26, %33
  %55 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !260
  call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !207, metadata !232), !dbg !245
  store i8* %55, i8** %s, align 8, !dbg !261, !tbaa !247
  %56 = icmp eq i8* %55, null, !dbg !262
  br i1 %56, label %._crit_edge, label %23, !dbg !263

._crit_edge:                                      ; preds = %.backedge, %14
  call void @MSAVerifyParse(%struct.msa_struct* %15) #6, !dbg !312
  br label %.thread, !dbg !313

.thread:                                          ; preds = %.backedge1, %.preheader, %0, %._crit_edge
  %.0 = phi %struct.msa_struct* [ %15, %._crit_edge ], [ null, %0 ], [ null, %.preheader ], [ null, %.backedge1 ]
  ret %struct.msa_struct* %.0, !dbg !314
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #2

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #3

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strpbrk(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare i32 @MSAGetSeqidx(%struct.msa_struct*, i8*, i32) #3

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @WriteClustal(%struct.__sFILE* nocapture %fp, %struct.msa_struct* nocapture readonly %msa) #0 {
  %buf = alloca [64 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !217, metadata !232), !dbg !315
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !218, metadata !232), !dbg !316
  %1 = getelementptr inbounds [64 x i8]* %buf, i64 0, i64 0, !dbg !317
  call void @llvm.lifetime.start(i64 64, i8* %1) #5, !dbg !317
  tail call void @llvm.dbg.declare(metadata [64 x i8]* %buf, metadata !223, metadata !232), !dbg !318
  tail call void @llvm.dbg.value(metadata i32 50, i64 0, metadata !227, metadata !232), !dbg !319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !221, metadata !232), !dbg !320
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !219, metadata !232), !dbg !321
  %2 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !322
  %3 = load i32* %2, align 4, !dbg !322, !tbaa !325
  %4 = icmp sgt i32 %3, 0, !dbg !326
  br i1 %4, label %.lr.ph9, label %._crit_edge10, !dbg !327

.lr.ph9:                                          ; preds = %0
  %5 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !328
  %6 = load i8*** %5, align 8, !dbg !328, !tbaa !330
  %7 = sext i32 %3 to i64, !dbg !327
  br label %8, !dbg !327

; <label>:8                                       ; preds = %.lr.ph9, %8
  %indvars.iv14 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next15, %8 ]
  %namelen.06 = phi i32 [ 0, %.lr.ph9 ], [ %.namelen.0, %8 ]
  %9 = getelementptr inbounds i8** %6, i64 %indvars.iv14, !dbg !331
  %10 = load i8** %9, align 8, !dbg !331, !tbaa !247
  %11 = tail call i64 @strlen(i8* %10) #6, !dbg !332
  %12 = trunc i64 %11 to i32, !dbg !332
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !220, metadata !232), !dbg !333
  %13 = icmp sgt i32 %12, %namelen.06, !dbg !334
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !221, metadata !232), !dbg !320
  %.namelen.0 = select i1 %13, i32 %12, i32 %namelen.06, !dbg !335
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !327
  %14 = icmp slt i64 %indvars.iv.next15, %7, !dbg !326
  br i1 %14, label %8, label %._crit_edge10, !dbg !327

._crit_edge10:                                    ; preds = %8, %0
  %namelen.0.lcssa = phi i32 [ 0, %0 ], [ %.namelen.0, %8 ]
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0), i64 43, i64 1, %struct.__sFILE* %fp), !dbg !336
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !222, metadata !232), !dbg !337
  %16 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !338
  %17 = load i32* %16, align 4, !dbg !338, !tbaa !341
  %18 = icmp sgt i32 %17, 0, !dbg !342
  br i1 %18, label %.lr.ph4, label %._crit_edge5, !dbg !343

.lr.ph4:                                          ; preds = %._crit_edge10
  %19 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !344
  %20 = getelementptr inbounds [64 x i8]* %buf, i64 0, i64 50, !dbg !349
  %21 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !350
  br label %22, !dbg !343

; <label>:22                                      ; preds = %.lr.ph4, %._crit_edge
  %indvars.iv12 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next13, %._crit_edge ]
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !351
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !219, metadata !232), !dbg !321
  %23 = load i32* %2, align 4, !dbg !352, !tbaa !325
  %24 = icmp sgt i32 %23, 0, !dbg !353
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !354

.lr.ph:                                           ; preds = %22, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %22 ]
  %25 = load i8*** %19, align 8, !dbg !344, !tbaa !303
  %26 = getelementptr inbounds i8** %25, i64 %indvars.iv, !dbg !344
  %27 = load i8** %26, align 8, !dbg !344, !tbaa !247
  %28 = getelementptr inbounds i8* %27, i64 %indvars.iv12, !dbg !344
  %strncpy = call i8* @strncpy(i8* %1, i8* %28, i64 50), !dbg !344
  store i8 0, i8* %20, align 2, !dbg !355, !tbaa !356
  %29 = load i8*** %21, align 8, !dbg !350, !tbaa !330
  %30 = getelementptr inbounds i8** %29, i64 %indvars.iv, !dbg !357
  %31 = load i8** %30, align 8, !dbg !357, !tbaa !247
  %32 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0), i32 %namelen.0.lcssa, i8* %31, i8* %1) #6, !dbg !358
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !354
  %33 = load i32* %2, align 4, !dbg !352, !tbaa !325
  %34 = sext i32 %33 to i64, !dbg !353
  %35 = icmp slt i64 %indvars.iv.next, %34, !dbg !353
  br i1 %35, label %.lr.ph, label %._crit_edge, !dbg !354

._crit_edge:                                      ; preds = %.lr.ph, %22
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 50, !dbg !343
  %36 = load i32* %16, align 4, !dbg !338, !tbaa !341
  %37 = sext i32 %36 to i64, !dbg !342
  %38 = icmp slt i64 %indvars.iv.next13, %37, !dbg !342
  br i1 %38, label %22, label %._crit_edge5, !dbg !343

._crit_edge5:                                     ; preds = %._crit_edge, %._crit_edge10
  call void @llvm.lifetime.end(i64 64, i8* %1) #5, !dbg !359
  ret void, !dbg !359
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!228, !229, !230}
!llvm.ident = !{!231}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/clustal.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !213}
!6 = !DISubprogram(name: "ReadClustal", scope: !1, file: !1, line: 79, type: !7, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: %struct.msa_struct* (%struct.msafile_struct*)* @ReadClustal, variables: !204)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !88}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSA", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "msa_struct", file: !11, line: 112, size: 2880, align: 64, elements: !13)
!13 = !{!14, !18, !19, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "aseq", scope: !12, file: !11, line: 115, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "sqname", scope: !12, file: !11, line: 116, baseType: !15, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !12, file: !11, line: 117, baseType: !20, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !12, file: !11, line: 118, baseType: !23, size: 32, align: 32, offset: 192)
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !12, file: !11, line: 119, baseType: !23, size: 32, align: 32, offset: 224)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !12, file: !11, line: 123, baseType: !23, size: 32, align: 32, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 124, baseType: !23, size: 32, align: 32, offset: 288)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !11, line: 125, baseType: !16, size: 64, align: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !12, file: !11, line: 126, baseType: !16, size: 64, align: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !12, file: !11, line: 127, baseType: !16, size: 64, align: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !12, file: !11, line: 128, baseType: !16, size: 64, align: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cons", scope: !12, file: !11, line: 129, baseType: !16, size: 64, align: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "sa_cons", scope: !12, file: !11, line: 130, baseType: !16, size: 64, align: 64, offset: 640)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !12, file: !11, line: 131, baseType: !16, size: 64, align: 64, offset: 704)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sqacc", scope: !12, file: !11, line: 132, baseType: !15, size: 64, align: 64, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sqdesc", scope: !12, file: !11, line: 133, baseType: !15, size: 64, align: 64, offset: 832)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !12, file: !11, line: 134, baseType: !15, size: 64, align: 64, offset: 896)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !12, file: !11, line: 135, baseType: !15, size: 64, align: 64, offset: 960)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff", scope: !12, file: !11, line: 136, baseType: !39, size: 192, align: 32, offset: 1024)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, align: 32, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 6)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff_is_set", scope: !12, file: !11, line: 137, baseType: !43, size: 192, align: 32, offset: 1216)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, align: 32, elements: !40)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !12, file: !11, line: 144, baseType: !15, size: 64, align: 64, offset: 1408)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ncomment", scope: !12, file: !11, line: 145, baseType: !23, size: 32, align: 32, offset: 1472)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ncomment", scope: !12, file: !11, line: 146, baseType: !23, size: 32, align: 32, offset: 1504)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "gf_tag", scope: !12, file: !11, line: 148, baseType: !15, size: 64, align: 64, offset: 1536)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "gf", scope: !12, file: !11, line: 149, baseType: !15, size: 64, align: 64, offset: 1600)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ngf", scope: !12, file: !11, line: 150, baseType: !23, size: 32, align: 32, offset: 1664)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ngf", scope: !12, file: !11, line: 151, baseType: !23, size: 32, align: 32, offset: 1696)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "gs_tag", scope: !12, file: !11, line: 153, baseType: !15, size: 64, align: 64, offset: 1728)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !12, file: !11, line: 154, baseType: !53, size: 64, align: 64, offset: 1792)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "gs_idx", scope: !12, file: !11, line: 155, baseType: !55, size: 64, align: 64, offset: 1856)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKI", file: !57, line: 42, baseType: !58)
!57 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!58 = !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 36, size: 192, align: 64, elements: !59)
!59 = !{!60, !68, !69, !70}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !58, file: !57, line: 37, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "gki_elem", file: !57, line: 26, size: 192, align: 64, elements: !64)
!64 = !{!65, !66, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !63, file: !57, line: 27, baseType: !16, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !63, file: !57, line: 28, baseType: !23, size: 32, align: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !63, file: !57, line: 29, baseType: !62, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "primelevel", scope: !58, file: !57, line: 39, baseType: !23, size: 32, align: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !58, file: !57, line: 40, baseType: !23, size: 32, align: 32, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !58, file: !57, line: 41, baseType: !23, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ngs", scope: !12, file: !11, line: 156, baseType: !23, size: 32, align: 32, offset: 1920)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "gc_tag", scope: !12, file: !11, line: 158, baseType: !15, size: 64, align: 64, offset: 1984)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !12, file: !11, line: 159, baseType: !15, size: 64, align: 64, offset: 2048)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gc_idx", scope: !12, file: !11, line: 160, baseType: !55, size: 64, align: 64, offset: 2112)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ngc", scope: !12, file: !11, line: 161, baseType: !23, size: 32, align: 32, offset: 2176)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "gr_tag", scope: !12, file: !11, line: 163, baseType: !15, size: 64, align: 64, offset: 2240)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "gr", scope: !12, file: !11, line: 164, baseType: !53, size: 64, align: 64, offset: 2304)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "gr_idx", scope: !12, file: !11, line: 165, baseType: !55, size: 64, align: 64, offset: 2368)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ngr", scope: !12, file: !11, line: 166, baseType: !23, size: 32, align: 32, offset: 2432)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !12, file: !11, line: 170, baseType: !55, size: 64, align: 64, offset: 2496)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "nseqalloc", scope: !12, file: !11, line: 171, baseType: !23, size: 32, align: 32, offset: 2560)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nseqlump", scope: !12, file: !11, line: 172, baseType: !23, size: 32, align: 32, offset: 2592)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sqlen", scope: !12, file: !11, line: 173, baseType: !84, size: 64, align: 64, offset: 2624)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sslen", scope: !12, file: !11, line: 174, baseType: !84, size: 64, align: 64, offset: 2688)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !12, file: !11, line: 175, baseType: !84, size: 64, align: 64, offset: 2752)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "lastidx", scope: !12, file: !11, line: 176, baseType: !23, size: 32, align: 32, offset: 2816)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSAFILE", file: !11, line: 199, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "msafile_struct", file: !11, line: 186, size: 512, align: 64, elements: !91)
!91 = !{!92, !153, !154, !155, !156, !157, !201, !202, !203}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !90, file: !11, line: 187, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !95, line: 153, baseType: !96)
!95 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !95, line: 122, size: 1216, align: 64, elements: !97)
!97 = !{!98, !101, !102, !103, !105, !106, !111, !112, !113, !117, !121, !131, !137, !138, !141, !142, !146, !150, !151, !152}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !96, file: !95, line: 123, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !96, file: !95, line: 124, baseType: !23, size: 32, align: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !96, file: !95, line: 125, baseType: !23, size: 32, align: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !96, file: !95, line: 126, baseType: !104, size: 16, align: 16, offset: 128)
!104 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !96, file: !95, line: 127, baseType: !104, size: 16, align: 16, offset: 144)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !96, file: !95, line: 128, baseType: !107, size: 128, align: 64, offset: 192)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !95, line: 88, size: 128, align: 64, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !107, file: !95, line: 89, baseType: !99, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !107, file: !95, line: 90, baseType: !23, size: 32, align: 32, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !96, file: !95, line: 129, baseType: !23, size: 32, align: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !96, file: !95, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !96, file: !95, line: 133, baseType: !114, size: 64, align: 64, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!23, !4}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !96, file: !95, line: 134, baseType: !118, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!23, !4, !16, !23}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !96, file: !95, line: 135, baseType: !122, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !4, !125, !23}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !95, line: 77, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !127, line: 71, baseType: !128)
!127 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !129, line: 46, baseType: !130)
!129 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!130 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !96, file: !95, line: 136, baseType: !132, size: 64, align: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!23, !4, !135, !23}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !96, file: !95, line: 139, baseType: !107, size: 128, align: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !96, file: !95, line: 140, baseType: !139, size: 64, align: 64, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !95, line: 94, flags: DIFlagFwdDecl)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !96, file: !95, line: 141, baseType: !23, size: 32, align: 32, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !96, file: !95, line: 144, baseType: !143, size: 24, align: 8, offset: 928)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 24, align: 8, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 3)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !96, file: !95, line: 145, baseType: !147, size: 8, align: 8, offset: 952)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 8, align: 8, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 1)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !96, file: !95, line: 148, baseType: !107, size: 128, align: 64, offset: 960)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !96, file: !95, line: 151, baseType: !23, size: 32, align: 32, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !96, file: !95, line: 152, baseType: !125, size: 64, align: 64, offset: 1152)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !90, file: !11, line: 188, baseType: !16, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !90, file: !11, line: 189, baseType: !23, size: 32, align: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !90, file: !11, line: 191, baseType: !16, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !90, file: !11, line: 192, baseType: !23, size: 32, align: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ssi", scope: !90, file: !11, line: 194, baseType: !158, size: 64, align: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIFILE", file: !160, line: 76, baseType: !161)
!160 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/ssi.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssifile_s", file: !160, line: 49, size: 1152, align: 64, elements: !162)
!162 = !{!163, !164, !168, !171, !172, !173, !174, !175, !176, !177, !178, !179, !191, !192, !193, !194, !195, !196, !198, !199, !200}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !161, file: !160, line: 50, baseType: !93, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !160, line: 51, baseType: !165, size: 32, align: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint32", file: !166, line: 41, baseType: !167)
!166 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!167 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nfiles", scope: !161, file: !160, line: 52, baseType: !169, size: 16, align: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint16", file: !166, line: 40, baseType: !170)
!170 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nprimary", scope: !161, file: !160, line: 53, baseType: !165, size: 32, align: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nsecondary", scope: !161, file: !160, line: 54, baseType: !165, size: 32, align: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "flen", scope: !161, file: !160, line: 55, baseType: !165, size: 32, align: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !161, file: !160, line: 56, baseType: !165, size: 32, align: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "slen", scope: !161, file: !160, line: 57, baseType: !165, size: 32, align: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "frecsize", scope: !161, file: !160, line: 58, baseType: !165, size: 32, align: 32, offset: 288)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "precsize", scope: !161, file: !160, line: 59, baseType: !165, size: 32, align: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "srecsize", scope: !161, file: !160, line: 60, baseType: !165, size: 32, align: 32, offset: 352)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "foffset", scope: !161, file: !160, line: 61, baseType: !180, size: 128, align: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIOFFSET", file: !160, line: 42, baseType: !181)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssioffset_s", file: !160, line: 35, size: 128, align: 64, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !181, file: !160, line: 36, baseType: !17, size: 8, align: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !181, file: !160, line: 40, baseType: !185, size: 64, align: 64, offset: 64)
!185 = !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !160, line: 37, size: 64, align: 64, elements: !186)
!186 = !{!187, !188}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !185, file: !160, line: 38, baseType: !165, size: 32, align: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !185, file: !160, line: 39, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint64", file: !166, line: 42, baseType: !190)
!190 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "poffset", scope: !161, file: !160, line: 62, baseType: !180, size: 128, align: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "soffset", scope: !161, file: !160, line: 63, baseType: !180, size: 128, align: 64, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "imode", scope: !161, file: !160, line: 65, baseType: !17, size: 8, align: 8, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "smode", scope: !161, file: !160, line: 66, baseType: !17, size: 8, align: 8, offset: 776)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !161, file: !160, line: 70, baseType: !15, size: 64, align: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fileformat", scope: !161, file: !160, line: 71, baseType: !197, size: 64, align: 64, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "fileflags", scope: !161, file: !160, line: 72, baseType: !197, size: 64, align: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !161, file: !160, line: 73, baseType: !197, size: 64, align: 64, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rpl", scope: !161, file: !160, line: 74, baseType: !197, size: 64, align: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "do_gzip", scope: !90, file: !11, line: 196, baseType: !23, size: 32, align: 32, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "do_stdin", scope: !90, file: !11, line: 197, baseType: !23, size: 32, align: 32, offset: 416)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !90, file: !11, line: 198, baseType: !23, size: 32, align: 32, offset: 448)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "afp", arg: 1, scope: !6, file: !1, line: 79, type: !88)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msa", scope: !6, file: !1, line: 81, type: !9)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !6, file: !1, line: 82, type: !16)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slen", scope: !6, file: !1, line: 83, type: !23)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sqidx", scope: !6, file: !1, line: 84, type: !23)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !6, file: !1, line: 85, type: !16)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !6, file: !1, line: 86, type: !16)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s2", scope: !6, file: !1, line: 87, type: !16)
!213 = !DISubprogram(name: "WriteClustal", scope: !1, file: !1, line: 145, type: !214, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*)* @WriteClustal, variables: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !93, !9}
!216 = !{!217, !218, !219, !220, !221, !222, !223, !227}
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !213, file: !1, line: 145, type: !93)
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !213, file: !1, line: 145, type: !9)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !213, file: !1, line: 147, type: !23)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !213, file: !1, line: 148, type: !23)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namelen", scope: !213, file: !1, line: 149, type: !23)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !213, file: !1, line: 150, type: !23)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !213, file: !1, line: 151, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, align: 8, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 64)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpl", scope: !213, file: !1, line: 152, type: !23)
!228 = !{i32 2, !"Dwarf Version", i32 2}
!229 = !{i32 2, !"Debug Info Version", i32 700000003}
!230 = !{i32 1, !"PIC Level", i32 2}
!231 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!232 = !DIExpression()
!233 = !DILocation(line: 79, column: 22, scope: !6)
!234 = !DILocation(line: 89, column: 17, scope: !235)
!235 = distinct !DILexicalBlock(scope: !6, file: !1, line: 89, column: 7)
!236 = !{!237, !238, i64 0}
!237 = !{!"msafile_struct", !238, i64 0, !238, i64 8, !241, i64 16, !238, i64 24, !241, i64 32, !238, i64 40, !241, i64 48, !241, i64 52, !241, i64 56}
!238 = !{!"any pointer", !239, i64 0}
!239 = !{!"omnipotent char", !240, i64 0}
!240 = !{!"Simple C/C++ TBAA"}
!241 = !{!"int", !239, i64 0}
!242 = !DILocation(line: 89, column: 7, scope: !235)
!243 = !DILocation(line: 89, column: 7, scope: !6)
!244 = !DILocation(line: 93, column: 15, scope: !6)
!245 = !DILocation(line: 82, column: 11, scope: !6)
!246 = !DILocation(line: 93, column: 13, scope: !6)
!247 = !{!238, !238, i64 0}
!248 = !DILocation(line: 93, column: 36, scope: !6)
!249 = !DILocation(line: 93, column: 3, scope: !6)
!250 = !DILocation(line: 95, column: 11, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 95, column: 11)
!252 = distinct !DILexicalBlock(scope: !6, file: !1, line: 94, column: 5)
!253 = !DILocation(line: 95, column: 36, scope: !251)
!254 = !DILocation(line: 95, column: 41, scope: !251)
!255 = !DILocation(line: 96, column: 4, scope: !251)
!256 = !DILocation(line: 96, column: 45, scope: !251)
!257 = !DILocation(line: 95, column: 11, scope: !252)
!258 = !DILocation(line: 101, column: 9, scope: !6)
!259 = !DILocation(line: 81, column: 11, scope: !6)
!260 = !DILocation(line: 108, column: 15, scope: !6)
!261 = !DILocation(line: 108, column: 13, scope: !6)
!262 = !DILocation(line: 108, column: 36, scope: !6)
!263 = !DILocation(line: 108, column: 3, scope: !6)
!264 = !DILocation(line: 124, column: 44, scope: !265)
!265 = distinct !DILexicalBlock(scope: !6, file: !1, line: 109, column: 5)
!266 = !DILocation(line: 126, column: 45, scope: !265)
!267 = !DILocation(line: 126, column: 64, scope: !265)
!268 = !DILocation(line: 120, column: 11, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !1, line: 118, column: 11)
!270 = !DILocation(line: 120, column: 28, scope: !269)
!271 = !DILocation(line: 110, column: 19, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !1, line: 110, column: 11)
!273 = !DILocation(line: 85, column: 11, scope: !6)
!274 = !DILocation(line: 110, column: 54, scope: !272)
!275 = !DILocation(line: 110, column: 11, scope: !265)
!276 = !DILocation(line: 83, column: 11, scope: !6)
!277 = !DILocation(line: 111, column: 19, scope: !278)
!278 = distinct !DILexicalBlock(scope: !265, file: !1, line: 111, column: 11)
!279 = !DILocation(line: 86, column: 11, scope: !6)
!280 = !DILocation(line: 111, column: 54, scope: !278)
!281 = !DILocation(line: 111, column: 11, scope: !265)
!282 = !DILocation(line: 112, column: 12, scope: !265)
!283 = !DILocation(line: 87, column: 11, scope: !6)
!284 = !DILocation(line: 116, column: 11, scope: !285)
!285 = distinct !DILexicalBlock(scope: !265, file: !1, line: 116, column: 11)
!286 = !DILocation(line: 116, column: 32, scope: !285)
!287 = !DILocation(line: 116, column: 40, scope: !285)
!288 = !DILocation(line: 116, column: 43, scope: !285)
!289 = !DILocation(line: 116, column: 63, scope: !285)
!290 = !DILocation(line: 116, column: 11, scope: !265)
!291 = !DILocation(line: 118, column: 14, scope: !269)
!292 = !DILocation(line: 118, column: 11, scope: !265)
!293 = !{!237, !241, i64 16}
!294 = !{!237, !238, i64 8}
!295 = !DILocation(line: 119, column: 2, scope: !269)
!296 = !{!297, !241, i64 352}
!297 = !{!"msa_struct", !238, i64 0, !238, i64 8, !238, i64 16, !241, i64 24, !241, i64 28, !241, i64 32, !241, i64 36, !238, i64 40, !238, i64 48, !238, i64 56, !238, i64 64, !238, i64 72, !238, i64 80, !238, i64 88, !238, i64 96, !238, i64 104, !238, i64 112, !238, i64 120, !239, i64 128, !239, i64 152, !238, i64 176, !241, i64 184, !241, i64 188, !238, i64 192, !238, i64 200, !241, i64 208, !241, i64 212, !238, i64 216, !238, i64 224, !238, i64 232, !241, i64 240, !238, i64 248, !238, i64 256, !238, i64 264, !241, i64 272, !238, i64 280, !238, i64 288, !238, i64 296, !241, i64 304, !238, i64 312, !241, i64 320, !241, i64 324, !238, i64 328, !238, i64 336, !238, i64 344, !241, i64 352}
!298 = !DILocation(line: 124, column: 51, scope: !265)
!299 = !DILocation(line: 124, column: 15, scope: !265)
!300 = !DILocation(line: 84, column: 11, scope: !6)
!301 = !DILocation(line: 125, column: 20, scope: !265)
!302 = !DILocation(line: 126, column: 40, scope: !265)
!303 = !{!297, !238, i64 0}
!304 = !{!297, !238, i64 328}
!305 = !DILocation(line: 126, column: 59, scope: !265)
!306 = !{!241, !241, i64 0}
!307 = !DILocation(line: 126, column: 83, scope: !265)
!308 = !DILocation(line: 126, column: 27, scope: !265)
!309 = !DILocation(line: 126, column: 12, scope: !265)
!310 = !DILocation(line: 126, column: 7, scope: !265)
!311 = !DILocation(line: 126, column: 25, scope: !265)
!312 = !DILocation(line: 129, column: 3, scope: !6)
!313 = !DILocation(line: 130, column: 3, scope: !6)
!314 = !DILocation(line: 131, column: 1, scope: !6)
!315 = !DILocation(line: 145, column: 20, scope: !213)
!316 = !DILocation(line: 145, column: 29, scope: !213)
!317 = !DILocation(line: 151, column: 3, scope: !213)
!318 = !DILocation(line: 151, column: 10, scope: !213)
!319 = !DILocation(line: 152, column: 10, scope: !213)
!320 = !DILocation(line: 149, column: 10, scope: !213)
!321 = !DILocation(line: 147, column: 10, scope: !213)
!322 = !DILocation(line: 156, column: 28, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 156, column: 3)
!324 = distinct !DILexicalBlock(scope: !213, file: !1, line: 156, column: 3)
!325 = !{!297, !241, i64 28}
!326 = !DILocation(line: 156, column: 21, scope: !323)
!327 = !DILocation(line: 156, column: 3, scope: !324)
!328 = !DILocation(line: 157, column: 28, scope: !329)
!329 = distinct !DILexicalBlock(scope: !323, file: !1, line: 157, column: 9)
!330 = !{!297, !238, i64 8}
!331 = !DILocation(line: 157, column: 23, scope: !329)
!332 = !DILocation(line: 157, column: 16, scope: !329)
!333 = !DILocation(line: 148, column: 10, scope: !213)
!334 = !DILocation(line: 157, column: 42, scope: !329)
!335 = !DILocation(line: 157, column: 9, scope: !323)
!336 = !DILocation(line: 160, column: 3, scope: !213)
!337 = !DILocation(line: 150, column: 10, scope: !213)
!338 = !DILocation(line: 166, column: 28, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 166, column: 3)
!340 = distinct !DILexicalBlock(scope: !213, file: !1, line: 166, column: 3)
!341 = !{!297, !241, i64 24}
!342 = !DILocation(line: 166, column: 21, scope: !339)
!343 = !DILocation(line: 166, column: 3, scope: !340)
!344 = !DILocation(line: 171, column: 4, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 170, column: 2)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 169, column: 7)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 169, column: 7)
!348 = distinct !DILexicalBlock(scope: !339, file: !1, line: 167, column: 5)
!349 = !DILocation(line: 172, column: 4, scope: !345)
!350 = !DILocation(line: 173, column: 42, scope: !345)
!351 = !DILocation(line: 168, column: 7, scope: !348)
!352 = !DILocation(line: 169, column: 32, scope: !346)
!353 = !DILocation(line: 169, column: 25, scope: !346)
!354 = !DILocation(line: 169, column: 7, scope: !347)
!355 = !DILocation(line: 172, column: 13, scope: !345)
!356 = !{!239, !239, i64 0}
!357 = !DILocation(line: 173, column: 37, scope: !345)
!358 = !DILocation(line: 173, column: 4, scope: !345)
!359 = !DILocation(line: 178, column: 1, scope: !213)
