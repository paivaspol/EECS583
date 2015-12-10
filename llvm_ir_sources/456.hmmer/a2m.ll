; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/a2m.c'
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

@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"Blank name in A2M file %s (line %d)\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c">%s %s\0A\00", align 1
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.msa_struct* @ReadA2M(%struct.msafile_struct* %afp) #0 {
  %buf = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.msafile_struct* %afp, i64 0, metadata !205, metadata !231), !dbg !232
  %1 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !233
  %2 = load %struct.__sFILE** %1, align 8, !dbg !233, !tbaa !235
  %3 = tail call i32 @feof(%struct.__sFILE* %2) #5, !dbg !241
  %4 = icmp eq i32 %3, 0, !dbg !241
  br i1 %4, label %5, label %71, !dbg !242

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !208, metadata !231), !dbg !243
  %6 = tail call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #5, !dbg !244
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %6, i64 0, metadata !206, metadata !231), !dbg !245
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !211, metadata !231), !dbg !246
  %7 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5, !dbg !247
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !207, metadata !231), !dbg !248
  store i8* %7, i8** %buf, align 8, !dbg !249, !tbaa !250
  %8 = icmp eq i8* %7, null, !dbg !251
  br i1 %8, label %.outer._crit_edge.thread, label %.lr.ph.lr.ph.lr.ph, !dbg !252

.lr.ph.lr.ph.lr.ph:                               ; preds = %5
  %9 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 0, !dbg !253
  %10 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 42, !dbg !258
  %11 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !259
  %12 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2, !dbg !262
  %13 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 39, !dbg !263
  %14 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 40, !dbg !264
  %15 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 1, !dbg !266
  %16 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 4, !dbg !267
  br label %.lr.ph.lr.ph, !dbg !252

.outer.loopexit:                                  ; preds = %53
  %17 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5, !dbg !247
  call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !207, metadata !231), !dbg !248
  store i8* %17, i8** %buf, align 8, !dbg !249, !tbaa !250
  %18 = icmp eq i8* %17, null, !dbg !251
  br i1 %18, label %.outer._crit_edge.thread, label %.lr.ph, !dbg !252

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.loopexit
  %19 = phi i8* [ %51, %.lr.ph.lr.ph ], [ %17, %.outer.loopexit ]
  %name.0.ph5 = phi i8* [ %name.0.ph.ph8, %.lr.ph.lr.ph ], [ null, %.outer.loopexit ]
  %20 = icmp eq i8* %name.0.ph5, null, !dbg !268
  br label %21, !dbg !252

; <label>:21                                      ; preds = %.lr.ph, %.backedge
  %22 = phi i8* [ %19, %.lr.ph ], [ %57, %.backedge ]
  %23 = load i8* %22, align 1, !dbg !269, !tbaa !270
  %24 = icmp eq i8 %23, 62, !dbg !271
  br i1 %24, label %25, label %53, !dbg !272

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds i8* %22, i64 1, !dbg !273
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !207, metadata !231), !dbg !248
  store i8* %26, i8** %buf, align 8, !dbg !273, !tbaa !250
  call void @llvm.dbg.value(metadata i8** %buf, i64 0, metadata !207, metadata !231), !dbg !248
  call void @llvm.dbg.value(metadata i32* %len1, i64 0, metadata !212, metadata !231), !dbg !274
  %27 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* %len1) #5, !dbg !275
  call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !208, metadata !231), !dbg !243
  %28 = icmp eq i8* %27, null, !dbg !276
  br i1 %28, label %29, label %32, !dbg !277

; <label>:29                                      ; preds = %25
  %30 = load i8** %11, align 8, !dbg !259, !tbaa !278
  %31 = load i32* %12, align 4, !dbg !262, !tbaa !279
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0), i8* %30, i32 %31) #5, !dbg !280
  br label %32, !dbg !280

; <label>:32                                      ; preds = %29, %25
  call void @llvm.dbg.value(metadata i8** %buf, i64 0, metadata !207, metadata !231), !dbg !248
  call void @llvm.dbg.value(metadata i32* %len2, i64 0, metadata !213, metadata !231), !dbg !281
  %33 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i32* %len2) #5, !dbg !282
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !209, metadata !231), !dbg !283
  %34 = load %struct.GKI** %13, align 8, !dbg !263, !tbaa !284
  %35 = call i32 @GKIStoreKey(%struct.GKI* %34, i8* %27) #5, !dbg !286
  call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !211, metadata !231), !dbg !246
  %36 = load i32* %14, align 4, !dbg !264, !tbaa !287
  %37 = icmp slt i32 %35, %36, !dbg !288
  br i1 %37, label %39, label %38, !dbg !289

; <label>:38                                      ; preds = %32
  call void @MSAExpand(%struct.msa_struct* %6) #5, !dbg !290
  br label %39, !dbg !290

; <label>:39                                      ; preds = %32, %38
  call void @llvm.dbg.value(metadata i32* %len1, i64 0, metadata !212, metadata !231), !dbg !274
  %40 = load i32* %len1, align 4, !dbg !291, !tbaa !292
  %41 = call i8* @sre_strdup(i8* %27, i32 %40) #5, !dbg !293
  %42 = sext i32 %35 to i64, !dbg !294
  %43 = load i8*** %15, align 8, !dbg !266, !tbaa !295
  %44 = getelementptr inbounds i8** %43, i64 %42, !dbg !294
  store i8* %41, i8** %44, align 8, !dbg !296, !tbaa !250
  %45 = icmp eq i8* %33, null, !dbg !297
  br i1 %45, label %.outer.outer, label %46, !dbg !299

; <label>:46                                      ; preds = %39
  call void @MSASetSeqDescription(%struct.msa_struct* %6, i32 %35, i8* %33) #5, !dbg !300
  br label %.outer.outer, !dbg !300

.outer.outer:                                     ; preds = %39, %46
  %47 = load i32* %16, align 4, !dbg !301, !tbaa !302
  %48 = add nsw i32 %47, 1, !dbg !301
  store i32 %48, i32* %16, align 4, !dbg !301, !tbaa !302
  %49 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5, !dbg !247
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !207, metadata !231), !dbg !248
  store i8* %49, i8** %buf, align 8, !dbg !249, !tbaa !250
  %50 = icmp eq i8* %49, null, !dbg !251
  br i1 %50, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !252

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.lr.ph, %.outer.outer
  %51 = phi i8* [ %7, %.lr.ph.lr.ph.lr.ph ], [ %49, %.outer.outer ]
  %idx.0.ph.ph9 = phi i32 [ 0, %.lr.ph.lr.ph.lr.ph ], [ %35, %.outer.outer ]
  %name.0.ph.ph8 = phi i8* [ null, %.lr.ph.lr.ph.lr.ph ], [ %27, %.outer.outer ]
  %52 = sext i32 %idx.0.ph.ph9 to i64, !dbg !303
  br label %.lr.ph, !dbg !252

; <label>:53                                      ; preds = %21
  br i1 %20, label %.outer.loopexit, label %54, !dbg !304

; <label>:54                                      ; preds = %53
  call void @llvm.dbg.value(metadata i8** %buf, i64 0, metadata !207, metadata !231), !dbg !248
  call void @llvm.dbg.value(metadata i32* %len1, i64 0, metadata !212, metadata !231), !dbg !274
  %55 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* %len1) #5, !dbg !305
  call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !210, metadata !231), !dbg !307
  %56 = icmp eq i8* %55, null, !dbg !308
  br i1 %56, label %.backedge, label %59, !dbg !309

.backedge:                                        ; preds = %54, %59
  %57 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5, !dbg !247
  call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !207, metadata !231), !dbg !248
  store i8* %57, i8** %buf, align 8, !dbg !249, !tbaa !250
  %58 = icmp eq i8* %57, null, !dbg !251
  br i1 %58, label %.outer._crit_edge, label %21, !dbg !252

; <label>:59                                      ; preds = %54
  %60 = load i8*** %9, align 8, !dbg !253, !tbaa !310
  %61 = getelementptr inbounds i8** %60, i64 %52, !dbg !303
  %62 = load i32** %10, align 8, !dbg !258, !tbaa !311
  %63 = getelementptr inbounds i32* %62, i64 %52, !dbg !312
  %64 = load i32* %63, align 4, !dbg !312, !tbaa !292
  call void @llvm.dbg.value(metadata i32* %len1, i64 0, metadata !212, metadata !231), !dbg !274
  %65 = load i32* %len1, align 4, !dbg !313, !tbaa !292
  %66 = call i32 @sre_strcat(i8** %61, i32 %64, i8* %55, i32 %65) #5, !dbg !314
  %67 = load i32** %10, align 8, !dbg !315, !tbaa !311
  %68 = getelementptr inbounds i32* %67, i64 %52, !dbg !316
  store i32 %66, i32* %68, align 4, !dbg !317, !tbaa !292
  br label %.backedge, !dbg !318

.outer._crit_edge:                                ; preds = %.outer.outer, %.backedge
  %name.0.ph.lcssa3 = phi i8* [ %name.0.ph5, %.backedge ], [ %27, %.outer.outer ]
  %69 = icmp eq i8* %name.0.ph.lcssa3, null, !dbg !319
  br i1 %69, label %.outer._crit_edge.thread, label %70, !dbg !321

.outer._crit_edge.thread:                         ; preds = %.outer.loopexit, %5, %.outer._crit_edge
  call void @MSAFree(%struct.msa_struct* %6) #5, !dbg !322
  br label %71, !dbg !324

; <label>:70                                      ; preds = %.outer._crit_edge
  call void @MSAVerifyParse(%struct.msa_struct* %6) #5, !dbg !325
  br label %71, !dbg !326

; <label>:71                                      ; preds = %0, %70, %.outer._crit_edge.thread
  %.0 = phi %struct.msa_struct* [ null, %.outer._crit_edge.thread ], [ %6, %70 ], [ null, %0 ]
  ret %struct.msa_struct* %.0, !dbg !327
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #2

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #3

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #3

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #3

; Function Attrs: optsize
declare void @MSAExpand(%struct.msa_struct*) #3

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #3

; Function Attrs: optsize
declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #3

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @MSAFree(%struct.msa_struct*) #3

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @WriteA2M(%struct.__sFILE* nocapture %fp, %struct.msa_struct* nocapture readonly %msa) #0 {
  %buf = alloca [64 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !218, metadata !231), !dbg !328
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !219, metadata !231), !dbg !329
  %1 = getelementptr inbounds [64 x i8]* %buf, i64 0, i64 0, !dbg !330
  call void @llvm.lifetime.start(i64 64, i8* %1) #4, !dbg !330
  tail call void @llvm.dbg.declare(metadata [64 x i8]* %buf, metadata !222, metadata !231), !dbg !331
  tail call void @llvm.dbg.value(metadata i32 60, i64 0, metadata !226, metadata !231), !dbg !332
  %2 = getelementptr inbounds [64 x i8]* %buf, i64 0, i64 60, !dbg !333
  store i8 0, i8* %2, align 4, !dbg !334, !tbaa !270
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !220, metadata !231), !dbg !335
  %3 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !336
  %4 = load i32* %3, align 4, !dbg !336, !tbaa !302
  %5 = icmp sgt i32 %4, 0, !dbg !339
  br i1 %5, label %.lr.ph4, label %._crit_edge5, !dbg !340

.lr.ph4:                                          ; preds = %0
  %6 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !341
  %7 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !343
  %8 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !344
  %9 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !347
  br label %10, !dbg !340

; <label>:10                                      ; preds = %.lr.ph4, %._crit_edge
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %._crit_edge ]
  %11 = load i8*** %6, align 8, !dbg !341, !tbaa !295
  %12 = getelementptr inbounds i8** %11, i64 %indvars.iv6, !dbg !349
  %13 = load i8** %12, align 8, !dbg !349, !tbaa !250
  %14 = load i8*** %7, align 8, !dbg !343, !tbaa !350
  %15 = icmp eq i8** %14, null, !dbg !351
  br i1 %15, label %20, label %16, !dbg !352

; <label>:16                                      ; preds = %10
  %17 = getelementptr inbounds i8** %14, i64 %indvars.iv6, !dbg !353
  %18 = load i8** %17, align 8, !dbg !353, !tbaa !250
  %19 = icmp eq i8* %18, null, !dbg !354
  %. = select i1 %19, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %18, !dbg !355
  br label %20, !dbg !355

; <label>:20                                      ; preds = %16, %10
  %21 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), %10 ], [ %., %16 ], !dbg !355
  %22 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* %13, i8* %21) #5, !dbg !356
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !221, metadata !231), !dbg !357
  %23 = load i32* %8, align 4, !dbg !344, !tbaa !358
  %24 = icmp sgt i32 %23, 0, !dbg !359
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !360

.lr.ph:                                           ; preds = %20, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %20 ]
  %25 = load i8*** %9, align 8, !dbg !347, !tbaa !310
  %26 = getelementptr inbounds i8** %25, i64 %indvars.iv6, !dbg !347
  %27 = load i8** %26, align 8, !dbg !347, !tbaa !250
  %28 = getelementptr inbounds i8* %27, i64 %indvars.iv, !dbg !347
  %strncpy = call i8* @strncpy(i8* %1, i8* %28, i64 60), !dbg !347
  %29 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* %1) #5, !dbg !361
  %indvars.iv.next = add nsw i64 %indvars.iv, 60, !dbg !360
  %30 = load i32* %8, align 4, !dbg !344, !tbaa !358
  %31 = sext i32 %30 to i64, !dbg !359
  %32 = icmp slt i64 %indvars.iv.next, %31, !dbg !359
  br i1 %32, label %.lr.ph, label %._crit_edge, !dbg !360

._crit_edge:                                      ; preds = %.lr.ph, %20
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !340
  %33 = load i32* %3, align 4, !dbg !336, !tbaa !302
  %34 = sext i32 %33 to i64, !dbg !339
  %35 = icmp slt i64 %indvars.iv.next7, %34, !dbg !339
  br i1 %35, label %10, label %._crit_edge5, !dbg !340

._crit_edge5:                                     ; preds = %._crit_edge, %0
  call void @llvm.lifetime.end(i64 64, i8* %1) #4, !dbg !362
  ret void, !dbg !362
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!227, !228, !229}
!llvm.ident = !{!230}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/a2m.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !214}
!6 = !DISubprogram(name: "ReadA2M", scope: !1, file: !1, line: 40, type: !7, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, function: %struct.msa_struct* (%struct.msafile_struct*)* @ReadA2M, variables: !204)
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
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "afp", arg: 1, scope: !6, file: !1, line: 40, type: !88)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msa", scope: !6, file: !1, line: 42, type: !9)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !6, file: !1, line: 43, type: !16)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !6, file: !1, line: 44, type: !16)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "desc", scope: !6, file: !1, line: 45, type: !16)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !6, file: !1, line: 46, type: !16)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !6, file: !1, line: 47, type: !23)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len1", scope: !6, file: !1, line: 48, type: !23)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len2", scope: !6, file: !1, line: 48, type: !23)
!214 = !DISubprogram(name: "WriteA2M", scope: !1, file: !1, line: 96, type: !215, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*)* @WriteA2M, variables: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !93, !9}
!217 = !{!218, !219, !220, !221, !222, !226}
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !214, file: !1, line: 96, type: !93)
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !214, file: !1, line: 96, type: !9)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !214, file: !1, line: 98, type: !23)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !214, file: !1, line: 99, type: !23)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !214, file: !1, line: 100, type: !223)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, align: 8, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 64)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpl", scope: !214, file: !1, line: 101, type: !23)
!227 = !{i32 2, !"Dwarf Version", i32 2}
!228 = !{i32 2, !"Debug Info Version", i32 700000003}
!229 = !{i32 1, !"PIC Level", i32 2}
!230 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!231 = !DIExpression()
!232 = !DILocation(line: 40, column: 18, scope: !6)
!233 = !DILocation(line: 50, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !6, file: !1, line: 50, column: 7)
!235 = !{!236, !237, i64 0}
!236 = !{!"msafile_struct", !237, i64 0, !237, i64 8, !240, i64 16, !237, i64 24, !240, i64 32, !237, i64 40, !240, i64 48, !240, i64 52, !240, i64 56}
!237 = !{!"any pointer", !238, i64 0}
!238 = !{!"omnipotent char", !239, i64 0}
!239 = !{!"Simple C/C++ TBAA"}
!240 = !{!"int", !238, i64 0}
!241 = !DILocation(line: 50, column: 7, scope: !234)
!242 = !DILocation(line: 50, column: 7, scope: !6)
!243 = !DILocation(line: 44, column: 9, scope: !6)
!244 = !DILocation(line: 53, column: 10, scope: !6)
!245 = !DILocation(line: 42, column: 9, scope: !6)
!246 = !DILocation(line: 47, column: 9, scope: !6)
!247 = !DILocation(line: 55, column: 17, scope: !6)
!248 = !DILocation(line: 43, column: 9, scope: !6)
!249 = !DILocation(line: 55, column: 15, scope: !6)
!250 = !{!237, !237, i64 0}
!251 = !DILocation(line: 55, column: 38, scope: !6)
!252 = !DILocation(line: 55, column: 3, scope: !6)
!253 = !DILocation(line: 74, column: 40, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !1, line: 72, column: 2)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 71, column: 16)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 57, column: 11)
!257 = distinct !DILexicalBlock(scope: !6, file: !1, line: 56, column: 5)
!258 = !DILocation(line: 74, column: 57, scope: !254)
!259 = !DILocation(line: 61, column: 56, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 60, column: 8)
!261 = distinct !DILexicalBlock(scope: !256, file: !1, line: 58, column: 2)
!262 = !DILocation(line: 61, column: 68, scope: !260)
!263 = !DILocation(line: 64, column: 27, scope: !261)
!264 = !DILocation(line: 65, column: 20, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !1, line: 65, column: 8)
!266 = !DILocation(line: 67, column: 9, scope: !261)
!267 = !DILocation(line: 69, column: 9, scope: !261)
!268 = !DILocation(line: 71, column: 21, scope: !255)
!269 = !DILocation(line: 57, column: 11, scope: !256)
!270 = !{!238, !238, i64 0}
!271 = !DILocation(line: 57, column: 16, scope: !256)
!272 = !DILocation(line: 57, column: 11, scope: !257)
!273 = !DILocation(line: 59, column: 7, scope: !261)
!274 = !DILocation(line: 48, column: 9, scope: !6)
!275 = !DILocation(line: 60, column: 16, scope: !260)
!276 = !DILocation(line: 60, column: 53, scope: !260)
!277 = !DILocation(line: 60, column: 8, scope: !261)
!278 = !{!236, !237, i64 8}
!279 = !{!236, !240, i64 16}
!280 = !DILocation(line: 61, column: 6, scope: !260)
!281 = !DILocation(line: 48, column: 15, scope: !6)
!282 = !DILocation(line: 62, column: 11, scope: !261)
!283 = !DILocation(line: 45, column: 9, scope: !6)
!284 = !{!285, !237, i64 312}
!285 = !{!"msa_struct", !237, i64 0, !237, i64 8, !237, i64 16, !240, i64 24, !240, i64 28, !240, i64 32, !240, i64 36, !237, i64 40, !237, i64 48, !237, i64 56, !237, i64 64, !237, i64 72, !237, i64 80, !237, i64 88, !237, i64 96, !237, i64 104, !237, i64 112, !237, i64 120, !238, i64 128, !238, i64 152, !237, i64 176, !240, i64 184, !240, i64 188, !237, i64 192, !237, i64 200, !240, i64 208, !240, i64 212, !237, i64 216, !237, i64 224, !237, i64 232, !240, i64 240, !237, i64 248, !237, i64 256, !237, i64 264, !240, i64 272, !237, i64 280, !237, i64 288, !237, i64 296, !240, i64 304, !237, i64 312, !240, i64 320, !240, i64 324, !237, i64 328, !237, i64 336, !237, i64 344, !240, i64 352}
!286 = !DILocation(line: 64, column: 10, scope: !261)
!287 = !{!285, !240, i64 320}
!288 = !DILocation(line: 65, column: 12, scope: !265)
!289 = !DILocation(line: 65, column: 8, scope: !261)
!290 = !DILocation(line: 65, column: 31, scope: !265)
!291 = !DILocation(line: 67, column: 40, scope: !261)
!292 = !{!240, !240, i64 0}
!293 = !DILocation(line: 67, column: 23, scope: !261)
!294 = !DILocation(line: 67, column: 4, scope: !261)
!295 = !{!285, !237, i64 8}
!296 = !DILocation(line: 67, column: 21, scope: !261)
!297 = !DILocation(line: 68, column: 13, scope: !298)
!298 = distinct !DILexicalBlock(scope: !261, file: !1, line: 68, column: 8)
!299 = !DILocation(line: 68, column: 8, scope: !261)
!300 = !DILocation(line: 68, column: 22, scope: !298)
!301 = !DILocation(line: 69, column: 13, scope: !261)
!302 = !{!285, !240, i64 28}
!303 = !DILocation(line: 74, column: 35, scope: !254)
!304 = !DILocation(line: 71, column: 16, scope: !256)
!305 = !DILocation(line: 73, column: 15, scope: !306)
!306 = distinct !DILexicalBlock(scope: !254, file: !1, line: 73, column: 8)
!307 = !DILocation(line: 46, column: 9, scope: !6)
!308 = !DILocation(line: 73, column: 52, scope: !306)
!309 = !DILocation(line: 73, column: 8, scope: !254)
!310 = !{!285, !237, i64 0}
!311 = !{!285, !237, i64 328}
!312 = !DILocation(line: 74, column: 52, scope: !254)
!313 = !DILocation(line: 74, column: 74, scope: !254)
!314 = !DILocation(line: 74, column: 22, scope: !254)
!315 = !DILocation(line: 74, column: 9, scope: !254)
!316 = !DILocation(line: 74, column: 4, scope: !254)
!317 = !DILocation(line: 74, column: 20, scope: !254)
!318 = !DILocation(line: 75, column: 2, scope: !254)
!319 = !DILocation(line: 77, column: 12, scope: !320)
!320 = distinct !DILexicalBlock(scope: !6, file: !1, line: 77, column: 7)
!321 = !DILocation(line: 77, column: 7, scope: !6)
!322 = !DILocation(line: 77, column: 23, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !1, line: 77, column: 21)
!324 = !DILocation(line: 77, column: 37, scope: !323)
!325 = !DILocation(line: 79, column: 3, scope: !6)
!326 = !DILocation(line: 80, column: 3, scope: !6)
!327 = !DILocation(line: 81, column: 1, scope: !6)
!328 = !DILocation(line: 96, column: 16, scope: !214)
!329 = !DILocation(line: 96, column: 25, scope: !214)
!330 = !DILocation(line: 100, column: 3, scope: !214)
!331 = !DILocation(line: 100, column: 8, scope: !214)
!332 = !DILocation(line: 101, column: 8, scope: !214)
!333 = !DILocation(line: 103, column: 3, scope: !214)
!334 = !DILocation(line: 103, column: 12, scope: !214)
!335 = !DILocation(line: 98, column: 8, scope: !214)
!336 = !DILocation(line: 104, column: 28, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 104, column: 3)
!338 = distinct !DILexicalBlock(scope: !214, file: !1, line: 104, column: 3)
!339 = !DILocation(line: 104, column: 21, scope: !337)
!340 = !DILocation(line: 104, column: 3, scope: !338)
!341 = !DILocation(line: 107, column: 13, scope: !342)
!342 = distinct !DILexicalBlock(scope: !337, file: !1, line: 105, column: 5)
!343 = !DILocation(line: 108, column: 14, scope: !342)
!344 = !DILocation(line: 109, column: 32, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 109, column: 7)
!346 = distinct !DILexicalBlock(scope: !342, file: !1, line: 109, column: 7)
!347 = !DILocation(line: 111, column: 4, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !1, line: 110, column: 2)
!349 = !DILocation(line: 107, column: 8, scope: !342)
!350 = !{!285, !237, i64 104}
!351 = !DILocation(line: 108, column: 21, scope: !342)
!352 = !DILocation(line: 108, column: 29, scope: !342)
!353 = !DILocation(line: 108, column: 32, scope: !342)
!354 = !DILocation(line: 108, column: 49, scope: !342)
!355 = !DILocation(line: 108, column: 8, scope: !342)
!356 = !DILocation(line: 106, column: 7, scope: !342)
!357 = !DILocation(line: 99, column: 8, scope: !214)
!358 = !{!285, !240, i64 24}
!359 = !DILocation(line: 109, column: 25, scope: !345)
!360 = !DILocation(line: 109, column: 7, scope: !346)
!361 = !DILocation(line: 112, column: 4, scope: !348)
!362 = !DILocation(line: 115, column: 1, scope: !214)
