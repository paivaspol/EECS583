; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/misc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.threshold_s = type { float, double, float, double, i32, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"%s %s (%s)\0A\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"HMMER\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"May 2003\00", align 1
@.str5 = private unnamed_addr constant [70 x i8] c"Copyright (C) 1992-2003 HHMI/Washington University School of Medicine\00", align 1
@.str6 = private unnamed_addr constant [62 x i8] c"Freely distributed under the GNU General Public License (GPL)\00", align 1
@.str7 = private unnamed_addr constant [73 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\00", align 1
@Getword.buffer = internal global [512 x i8] zeroinitializer, align 16
@Getword.sptr = internal unnamed_addr global i8* null, align 8
@.str8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str9 = private unnamed_addr constant [43 x i8] c"Parse failed: expected string, got nothing\00", align 1
@.str10 = private unnamed_addr constant [39 x i8] c"Parse failed: expected integer, got %s\00", align 1
@.str11 = private unnamed_addr constant [42 x i8] c"Parse failed: expected real value, got %s\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define void @HMMERBanner(%struct.__sFILE* nocapture %fp, i8* %banner) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !90, metadata !204), !dbg !205
  tail call void @llvm.dbg.value(metadata i8* %banner, i64 0, metadata !91, metadata !204), !dbg !206
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* %banner) #6, !dbg !207
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !208
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !209
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !210
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([73 x i8]* @.str7, i64 0, i64 0), i64 72, i64 1, %struct.__sFILE* %fp), !dbg !211
  ret void, !dbg !212
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Getword(%struct.__sFILE* nocapture %fp, i32 %type) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !96, metadata !204), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !97, metadata !204), !dbg !214
  %1 = load i8** @Getword.sptr, align 8, !dbg !215, !tbaa !217
  %2 = icmp eq i8* %1, null, !dbg !221
  br i1 %2, label %.lr.ph, label %.preheader, !dbg !222

.preheader:                                       ; preds = %0
  %3 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !223
  store i8* %3, i8** @Getword.sptr, align 8, !dbg !224, !tbaa !217
  %4 = icmp eq i8* %3, null, !dbg !225
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !226

.lr.ph:                                           ; preds = %0, %.preheader, %11
  %5 = tail call i8* @fgets(i8* getelementptr inbounds ([512 x i8]* @Getword.buffer, i64 0, i64 0), i32 512, %struct.__sFILE* %fp) #6, !dbg !227
  store i8* %5, i8** @Getword.sptr, align 8, !dbg !230, !tbaa !217
  %6 = icmp eq i8* %5, null, !dbg !231
  br i1 %6, label %.loopexit, label %7, !dbg !232

; <label>:7                                       ; preds = %.lr.ph
  %8 = tail call i8* @strchr(i8* getelementptr inbounds ([512 x i8]* @Getword.buffer, i64 0, i64 0), i32 35) #6, !dbg !233
  store i8* %8, i8** @Getword.sptr, align 8, !dbg !235, !tbaa !217
  %9 = icmp eq i8* %8, null, !dbg !236
  br i1 %9, label %11, label %10, !dbg !237

; <label>:10                                      ; preds = %7
  store i8 0, i8* %8, align 1, !dbg !238, !tbaa !239
  br label %11, !dbg !240

; <label>:11                                      ; preds = %7, %10
  %12 = tail call i8* @strtok(i8* getelementptr inbounds ([512 x i8]* @Getword.buffer, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !241
  store i8* %12, i8** @Getword.sptr, align 8, !dbg !242, !tbaa !217
  %13 = icmp eq i8* %12, null, !dbg !225
  br i1 %13, label %.lr.ph, label %._crit_edge, !dbg !226

._crit_edge:                                      ; preds = %11, %.preheader
  %.lcssa = phi i8* [ %3, %.preheader ], [ %12, %11 ]
  switch i32 %type, label %27 [
    i32 4, label %14
    i32 1, label %17
    i32 2, label %22
  ], !dbg !243

; <label>:14                                      ; preds = %._crit_edge
  %strlenfirst = load i8* %.lcssa, align 1, !dbg !244
  %15 = icmp eq i8 %strlenfirst, 0, !dbg !247
  br i1 %15, label %16, label %27, !dbg !248

; <label>:16                                      ; preds = %14
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([43 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !249
  store i8* null, i8** @Getword.sptr, align 8, !dbg !251, !tbaa !217
  br label %27, !dbg !252

; <label>:17                                      ; preds = %._crit_edge
  %18 = tail call i32 @IsInt(i8* %.lcssa) #6, !dbg !253
  %19 = icmp eq i32 %18, 0, !dbg !253
  br i1 %19, label %20, label %27, !dbg !255

; <label>:20                                      ; preds = %17
  %21 = load i8** @Getword.sptr, align 8, !dbg !256, !tbaa !217
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %21) #6, !dbg !258
  store i8* null, i8** @Getword.sptr, align 8, !dbg !259, !tbaa !217
  br label %27, !dbg !260

; <label>:22                                      ; preds = %._crit_edge
  %23 = tail call i32 @IsReal(i8* %.lcssa) #6, !dbg !261
  %24 = icmp eq i32 %23, 0, !dbg !261
  br i1 %24, label %25, label %27, !dbg !263

; <label>:25                                      ; preds = %22
  %26 = load i8** @Getword.sptr, align 8, !dbg !264, !tbaa !217
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([42 x i8]* @.str11, i64 0, i64 0), i8* %26) #6, !dbg !266
  store i8* null, i8** @Getword.sptr, align 8, !dbg !267, !tbaa !217
  br label %27, !dbg !268

; <label>:27                                      ; preds = %17, %22, %25, %20, %14, %16, %._crit_edge
  %28 = load i8** @Getword.sptr, align 8, !dbg !269, !tbaa !217
  br label %.loopexit, !dbg !270

.loopexit:                                        ; preds = %.lr.ph, %27
  %.0 = phi i8* [ %28, %27 ], [ null, %.lr.ph ]
  ret i8* %.0, !dbg !271
}

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: optsize
declare void @Warn(i8*, ...) #3

; Function Attrs: optsize
declare i32 @IsInt(i8*) #3

; Function Attrs: optsize
declare i32 @IsReal(i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Getline(i8* %s, i32 %n, %struct.__sFILE* nocapture %fp) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !102, metadata !204), !dbg !272
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !103, metadata !204), !dbg !273
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !104, metadata !204), !dbg !274
  %1 = tail call i8* @fgets(i8* %s, i32 %n, %struct.__sFILE* %fp) #6, !dbg !275
  %2 = icmp eq i8* %1, null, !dbg !278
  br i1 %2, label %._crit_edge, label %.preheader, !dbg !279

.preheader:                                       ; preds = %.critedge.backedge, %isspace.exit, %0
  %first.0 = phi i8* [ %s, %0 ], [ %12, %isspace.exit ], [ %s, %.critedge.backedge ]
  %3 = load i8* %first.0, align 1, !dbg !280, !tbaa !239
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !181, metadata !204) #5, !dbg !281
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !188, metadata !204) #5, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !189, metadata !204) #5, !dbg !285
  %isascii.i.i1 = icmp sgt i8 %3, -1, !dbg !286
  br i1 %isascii.i.i1, label %4, label %9, !dbg !286

; <label>:4                                       ; preds = %.preheader
  %5 = sext i8 %3 to i64, !dbg !287
  %6 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %5, !dbg !287
  %7 = load i32* %6, align 4, !dbg !287, !tbaa !288
  %8 = and i32 %7, 16384, !dbg !290
  br label %isspace.exit, !dbg !286

; <label>:9                                       ; preds = %.preheader
  %10 = sext i8 %3 to i32, !dbg !291
  %11 = tail call i32 @__maskrune(i32 %10, i64 16384) #6, !dbg !292
  br label %isspace.exit, !dbg !286

isspace.exit:                                     ; preds = %4, %9
  %.sink.i.in.i = phi i32 [ %8, %4 ], [ %11, %9 ], !dbg !293
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !294
  %12 = getelementptr inbounds i8* %first.0, i64 1, !dbg !295
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !105, metadata !204), !dbg !296
  br i1 %.sink.i.i, label %13, label %.preheader, !dbg !297

; <label>:13                                      ; preds = %isspace.exit
  %14 = load i8* %first.0, align 1, !dbg !298, !tbaa !239
  switch i8 %14, label %._crit_edge [
    i8 35, label %.critedge.backedge
    i8 0, label %.critedge.backedge
  ], !dbg !299

.critedge.backedge:                               ; preds = %13, %13
  %15 = tail call i8* @fgets(i8* %s, i32 %n, %struct.__sFILE* %fp) #6, !dbg !275
  %16 = icmp eq i8* %15, null, !dbg !278
  br i1 %16, label %._crit_edge, label %.preheader, !dbg !279

._crit_edge:                                      ; preds = %.critedge.backedge, %13, %0
  %.0 = phi i8* [ null, %0 ], [ null, %.critedge.backedge ], [ %s, %13 ]
  ret i8* %.0, !dbg !300
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SetAutocuts(%struct.threshold_s* nocapture %thresh, %struct.plan7_s* nocapture readonly %hmm) #0 {
  tail call void @llvm.dbg.value(metadata %struct.threshold_s* %thresh, i64 0, metadata !174, metadata !204), !dbg !301
  tail call void @llvm.dbg.value(metadata %struct.plan7_s* %hmm, i64 0, metadata !175, metadata !204), !dbg !302
  %1 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 4, !dbg !303
  %2 = load i32* %1, align 4, !dbg !303, !tbaa !305
  switch i32 %2, label %54 [
    i32 1, label %3
    i32 2, label %20
    i32 3, label %37
  ], !dbg !309

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !310
  %5 = load i32* %4, align 4, !dbg !310, !tbaa !313
  %6 = and i32 %5, 1024, !dbg !315
  %7 = icmp eq i32 %6, 0, !dbg !315
  br i1 %7, label %54, label %8, !dbg !316

; <label>:8                                       ; preds = %3
  %9 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 14, !dbg !317
  %10 = bitcast float* %9 to i32*, !dbg !317
  %11 = load i32* %10, align 4, !dbg !317, !tbaa !318
  %12 = bitcast %struct.threshold_s* %thresh to i32*, !dbg !319
  store i32 %11, i32* %12, align 4, !dbg !319, !tbaa !320
  %13 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 15, !dbg !321
  %14 = bitcast float* %13 to i32*, !dbg !321
  %15 = load i32* %14, align 4, !dbg !321, !tbaa !322
  %16 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2, !dbg !323
  %17 = bitcast float* %16 to i32*, !dbg !324
  store i32 %15, i32* %17, align 4, !dbg !324, !tbaa !325
  %18 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3, !dbg !326
  store double 0x47EFFFFFE0000000, double* %18, align 8, !dbg !327, !tbaa !328
  %19 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1, !dbg !329
  store double 0x47EFFFFFE0000000, double* %19, align 8, !dbg !330, !tbaa !331
  br label %54, !dbg !332

; <label>:20                                      ; preds = %0
  %21 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !333
  %22 = load i32* %21, align 4, !dbg !333, !tbaa !313
  %23 = and i32 %22, 4096, !dbg !337
  %24 = icmp eq i32 %23, 0, !dbg !337
  br i1 %24, label %54, label %25, !dbg !338

; <label>:25                                      ; preds = %20
  %26 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 18, !dbg !339
  %27 = bitcast float* %26 to i32*, !dbg !339
  %28 = load i32* %27, align 4, !dbg !339, !tbaa !340
  %29 = bitcast %struct.threshold_s* %thresh to i32*, !dbg !341
  store i32 %28, i32* %29, align 4, !dbg !341, !tbaa !320
  %30 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 19, !dbg !342
  %31 = bitcast float* %30 to i32*, !dbg !342
  %32 = load i32* %31, align 4, !dbg !342, !tbaa !343
  %33 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2, !dbg !344
  %34 = bitcast float* %33 to i32*, !dbg !345
  store i32 %32, i32* %34, align 4, !dbg !345, !tbaa !325
  %35 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3, !dbg !346
  store double 0x47EFFFFFE0000000, double* %35, align 8, !dbg !347, !tbaa !328
  %36 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1, !dbg !348
  store double 0x47EFFFFFE0000000, double* %36, align 8, !dbg !349, !tbaa !331
  br label %54, !dbg !350

; <label>:37                                      ; preds = %0
  %38 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !351
  %39 = load i32* %38, align 4, !dbg !351, !tbaa !313
  %40 = and i32 %39, 2048, !dbg !355
  %41 = icmp eq i32 %40, 0, !dbg !355
  br i1 %41, label %54, label %42, !dbg !356

; <label>:42                                      ; preds = %37
  %43 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 16, !dbg !357
  %44 = bitcast float* %43 to i32*, !dbg !357
  %45 = load i32* %44, align 4, !dbg !357, !tbaa !358
  %46 = bitcast %struct.threshold_s* %thresh to i32*, !dbg !359
  store i32 %45, i32* %46, align 4, !dbg !359, !tbaa !320
  %47 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 17, !dbg !360
  %48 = bitcast float* %47 to i32*, !dbg !360
  %49 = load i32* %48, align 4, !dbg !360, !tbaa !361
  %50 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2, !dbg !362
  %51 = bitcast float* %50 to i32*, !dbg !363
  store i32 %49, i32* %51, align 4, !dbg !363, !tbaa !325
  %52 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3, !dbg !364
  store double 0x47EFFFFFE0000000, double* %52, align 8, !dbg !365, !tbaa !328
  %53 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1, !dbg !366
  store double 0x47EFFFFFE0000000, double* %53, align 8, !dbg !367, !tbaa !331
  br label %54, !dbg !368

; <label>:54                                      ; preds = %8, %42, %25, %0, %37, %20, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %20 ], [ 0, %37 ], [ 1, %0 ], [ 1, %25 ], [ 1, %42 ], [ 1, %8 ]
  ret i32 %.0, !dbg !369
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!200, !201, !202}
!llvm.ident = !{!203}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !21, subprograms: !23, globals: !193, imports: !199)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/misc.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !5, file: !4, line: 524, size: 32, align: 32, elements: !16)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/structs.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "threshold_s", file: !4, line: 518, size: 320, align: 64, elements: !6)
!6 = !{!7, !9, !11, !12, !13, !14}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "globT", scope: !5, file: !4, line: 519, baseType: !8, size: 32, align: 32)
!8 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "globE", scope: !5, file: !4, line: 520, baseType: !10, size: 64, align: 64, offset: 64)
!10 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "domT", scope: !5, file: !4, line: 521, baseType: !8, size: 32, align: 32, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "domE", scope: !5, file: !4, line: 522, baseType: !10, size: 64, align: 64, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "autocut", scope: !5, file: !4, line: 524, baseType: !3, size: 32, align: 32, offset: 256)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "Z", scope: !5, file: !4, line: 525, baseType: !15, size: 32, align: 32, offset: 288)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "CUT_NONE", value: 0)
!18 = !DIEnumerator(name: "CUT_GA", value: 1)
!19 = !DIEnumerator(name: "CUT_NC", value: 2)
!20 = !DIEnumerator(name: "CUT_TC", value: 3)
!21 = !{!22, !15}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!23 = !{!24, !92, !98, !106, !176, !182, !190}
!24 = !DISubprogram(name: "HMMERBanner", scope: !1, file: !1, line: 55, type: !25, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*)* @HMMERBanner, variables: !89)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !55}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !29, line: 153, baseType: !30)
!29 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !29, line: 122, size: 1216, align: 64, elements: !31)
!31 = !{!32, !35, !36, !37, !39, !40, !45, !46, !47, !51, !57, !67, !73, !74, !77, !78, !82, !86, !87, !88}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !30, file: !29, line: 123, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !30, file: !29, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !30, file: !29, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !29, line: 126, baseType: !38, size: 16, align: 16, offset: 128)
!38 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !30, file: !29, line: 127, baseType: !38, size: 16, align: 16, offset: 144)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !30, file: !29, line: 128, baseType: !41, size: 128, align: 64, offset: 192)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !29, line: 88, size: 128, align: 64, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !41, file: !29, line: 89, baseType: !33, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !41, file: !29, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !30, file: !29, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !30, file: !29, line: 132, baseType: !22, size: 64, align: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !30, file: !29, line: 133, baseType: !48, size: 64, align: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!15, !22}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !30, file: !29, line: 134, baseType: !52, size: 64, align: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!15, !22, !55, !15}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !30, file: !29, line: 135, baseType: !58, size: 64, align: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !22, !61, !15}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !29, line: 77, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !63, line: 71, baseType: !64)
!63 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !65, line: 46, baseType: !66)
!65 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!66 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !30, file: !29, line: 136, baseType: !68, size: 64, align: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!15, !22, !71, !15}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !30, file: !29, line: 139, baseType: !41, size: 128, align: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !30, file: !29, line: 140, baseType: !75, size: 64, align: 64, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !29, line: 94, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !30, file: !29, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !30, file: !29, line: 144, baseType: !79, size: 24, align: 8, offset: 928)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 24, align: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 3)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !30, file: !29, line: 145, baseType: !83, size: 8, align: 8, offset: 952)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, align: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !30, file: !29, line: 148, baseType: !41, size: 128, align: 64, offset: 960)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !30, file: !29, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !29, line: 152, baseType: !61, size: 64, align: 64, offset: 1152)
!89 = !{!90, !91}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !24, file: !1, line: 55, type: !27)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "banner", arg: 2, scope: !24, file: !1, line: 55, type: !55)
!92 = !DISubprogram(name: "Getword", scope: !1, file: !1, line: 76, type: !93, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.__sFILE*, i32)* @Getword, variables: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!55, !27, !15}
!95 = !{!96, !97}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !92, file: !1, line: 76, type: !27)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !92, file: !1, line: 76, type: !15)
!98 = !DISubprogram(name: "Getline", scope: !1, file: !1, line: 129, type: !99, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.__sFILE*)* @Getline, variables: !101)
!99 = !DISubroutineType(types: !100)
!100 = !{!55, !55, !15, !27}
!101 = !{!102, !103, !104, !105}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !98, file: !1, line: 129, type: !55)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !98, file: !1, line: 129, type: !15)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !98, file: !1, line: 129, type: !27)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first", scope: !98, file: !1, line: 131, type: !55)
!106 = !DISubprogram(name: "SetAutocuts", scope: !1, file: !1, line: 158, type: !107, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.threshold_s*, %struct.plan7_s*)* @SetAutocuts, variables: !173)
!107 = !DISubroutineType(types: !108)
!108 = !{!15, !109, !110}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "plan7_s", file: !4, line: 101, size: 3712, align: 64, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !138, !139, !140, !141, !146, !147, !148, !152, !153, !155, !156, !157, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !4, line: 113, baseType: !55, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !111, file: !4, line: 114, baseType: !55, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !111, file: !4, line: 115, baseType: !55, size: 64, align: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !111, file: !4, line: 116, baseType: !55, size: 64, align: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !111, file: !4, line: 117, baseType: !55, size: 64, align: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ca", scope: !111, file: !4, line: 118, baseType: !55, size: 64, align: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "comlog", scope: !111, file: !4, line: 119, baseType: !55, size: 64, align: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !111, file: !4, line: 120, baseType: !15, size: 32, align: 32, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !111, file: !4, line: 121, baseType: !55, size: 64, align: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !111, file: !4, line: 122, baseType: !123, size: 64, align: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !111, file: !4, line: 123, baseType: !15, size: 32, align: 32, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tpri", scope: !111, file: !4, line: 134, baseType: !123, size: 64, align: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "mpri", scope: !111, file: !4, line: 135, baseType: !123, size: 64, align: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ipri", scope: !111, file: !4, line: 136, baseType: !123, size: 64, align: 64, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !111, file: !4, line: 144, baseType: !8, size: 32, align: 32, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !111, file: !4, line: 144, baseType: !8, size: 32, align: 32, offset: 928)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !111, file: !4, line: 145, baseType: !8, size: 32, align: 32, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !111, file: !4, line: 145, baseType: !8, size: 32, align: 32, offset: 992)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !111, file: !4, line: 146, baseType: !8, size: 32, align: 32, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !111, file: !4, line: 146, baseType: !8, size: 32, align: 32, offset: 1056)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !111, file: !4, line: 155, baseType: !15, size: 32, align: 32, offset: 1088)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !111, file: !4, line: 156, baseType: !136, size: 64, align: 64, offset: 1152)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !111, file: !4, line: 157, baseType: !136, size: 64, align: 64, offset: 1216)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !111, file: !4, line: 158, baseType: !136, size: 64, align: 64, offset: 1280)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tbd1", scope: !111, file: !4, line: 159, baseType: !8, size: 32, align: 32, offset: 1344)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "xt", scope: !111, file: !4, line: 168, baseType: !142, size: 256, align: 32, offset: 1376)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, align: 32, elements: !143)
!143 = !{!144, !145}
!144 = !DISubrange(count: 4)
!145 = !DISubrange(count: 2)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !111, file: !4, line: 169, baseType: !137, size: 64, align: 64, offset: 1664)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !111, file: !4, line: 170, baseType: !137, size: 64, align: 64, offset: 1728)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !111, file: !4, line: 174, baseType: !149, size: 640, align: 32, offset: 1792)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 640, align: 32, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 20)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !111, file: !4, line: 175, baseType: !8, size: 32, align: 32, offset: 2432)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !111, file: !4, line: 197, baseType: !154, size: 64, align: 64, offset: 2496)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "msc", scope: !111, file: !4, line: 198, baseType: !154, size: 64, align: 64, offset: 2560)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "isc", scope: !111, file: !4, line: 199, baseType: !154, size: 64, align: 64, offset: 2624)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "xsc", scope: !111, file: !4, line: 200, baseType: !158, size: 256, align: 32, offset: 2688)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, align: 32, elements: !143)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bsc", scope: !111, file: !4, line: 201, baseType: !123, size: 64, align: 64, offset: 2944)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "esc", scope: !111, file: !4, line: 202, baseType: !123, size: 64, align: 64, offset: 3008)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_mem", scope: !111, file: !4, line: 203, baseType: !123, size: 64, align: 64, offset: 3072)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "msc_mem", scope: !111, file: !4, line: 203, baseType: !123, size: 64, align: 64, offset: 3136)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "isc_mem", scope: !111, file: !4, line: 203, baseType: !123, size: 64, align: 64, offset: 3200)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "bsc_mem", scope: !111, file: !4, line: 203, baseType: !123, size: 64, align: 64, offset: 3264)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "esc_mem", scope: !111, file: !4, line: 203, baseType: !123, size: 64, align: 64, offset: 3328)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dnam", scope: !111, file: !4, line: 214, baseType: !154, size: 64, align: 64, offset: 3392)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dnai", scope: !111, file: !4, line: 215, baseType: !154, size: 64, align: 64, offset: 3456)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dna2", scope: !111, file: !4, line: 216, baseType: !15, size: 32, align: 32, offset: 3520)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dna4", scope: !111, file: !4, line: 217, baseType: !15, size: 32, align: 32, offset: 3552)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mu", scope: !111, file: !4, line: 222, baseType: !8, size: 32, align: 32, offset: 3584)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !111, file: !4, line: 223, baseType: !8, size: 32, align: 32, offset: 3616)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !4, line: 225, baseType: !15, size: 32, align: 32, offset: 3648)
!173 = !{!174, !175}
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thresh", arg: 1, scope: !106, file: !1, line: 158, type: !109)
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hmm", arg: 2, scope: !106, file: !1, line: 158, type: !110)
!176 = !DISubprogram(name: "isspace", scope: !177, file: !177, line: 267, type: !178, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, variables: !180)
!177 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!178 = !DISubroutineType(types: !179)
!179 = !{!15, !15}
!180 = !{!181}
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !176, file: !177, line: 267, type: !15)
!182 = !DISubprogram(name: "__istype", scope: !177, file: !177, line: 153, type: !183, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !187)
!183 = !DISubroutineType(types: !184)
!184 = !{!15, !185, !186}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !65, line: 70, baseType: !15)
!186 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!187 = !{!188, !189}
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !182, file: !177, line: 153, type: !185)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !182, file: !177, line: 153, type: !186)
!190 = !DISubprogram(name: "isascii", scope: !177, file: !177, line: 135, type: !178, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !191)
!191 = !{!192}
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !190, file: !177, line: 135, type: !15)
!193 = !{!194, !198}
!194 = !DIGlobalVariable(name: "buffer", scope: !92, file: !1, line: 78, type: !195, isLocal: true, isDefinition: true, variable: [512 x i8]* @Getword.buffer)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 4096, align: 8, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 512)
!198 = !DIGlobalVariable(name: "sptr", scope: !92, file: !1, line: 79, type: !55, isLocal: true, isDefinition: true, variable: i8** @Getword.sptr)
!199 = !{}
!200 = !{i32 2, !"Dwarf Version", i32 2}
!201 = !{i32 2, !"Debug Info Version", i32 700000003}
!202 = !{i32 1, !"PIC Level", i32 2}
!203 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!204 = !DIExpression()
!205 = !DILocation(line: 55, column: 19, scope: !24)
!206 = !DILocation(line: 55, column: 29, scope: !24)
!207 = !DILocation(line: 57, column: 3, scope: !24)
!208 = !DILocation(line: 58, column: 3, scope: !24)
!209 = !DILocation(line: 59, column: 3, scope: !24)
!210 = !DILocation(line: 60, column: 3, scope: !24)
!211 = !DILocation(line: 61, column: 3, scope: !24)
!212 = !DILocation(line: 62, column: 1, scope: !24)
!213 = !DILocation(line: 76, column: 15, scope: !92)
!214 = !DILocation(line: 76, column: 23, scope: !92)
!215 = !DILocation(line: 81, column: 7, scope: !216)
!216 = distinct !DILexicalBlock(scope: !92, file: !1, line: 81, column: 7)
!217 = !{!218, !218, i64 0}
!218 = !{!"any pointer", !219, i64 0}
!219 = !{!"omnipotent char", !220, i64 0}
!220 = !{!"Simple C/C++ TBAA"}
!221 = !DILocation(line: 81, column: 12, scope: !216)
!222 = !DILocation(line: 81, column: 7, scope: !92)
!223 = !DILocation(line: 81, column: 28, scope: !216)
!224 = !DILocation(line: 81, column: 26, scope: !216)
!225 = !DILocation(line: 83, column: 15, scope: !92)
!226 = !DILocation(line: 83, column: 3, scope: !92)
!227 = !DILocation(line: 85, column: 19, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 85, column: 11)
!229 = distinct !DILexicalBlock(scope: !92, file: !1, line: 84, column: 5)
!230 = !DILocation(line: 85, column: 17, scope: !228)
!231 = !DILocation(line: 85, column: 43, scope: !228)
!232 = !DILocation(line: 85, column: 11, scope: !229)
!233 = !DILocation(line: 86, column: 19, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 86, column: 11)
!235 = !DILocation(line: 86, column: 17, scope: !234)
!236 = !DILocation(line: 86, column: 40, scope: !234)
!237 = !DILocation(line: 86, column: 11, scope: !229)
!238 = !DILocation(line: 86, column: 55, scope: !234)
!239 = !{!219, !219, i64 0}
!240 = !DILocation(line: 86, column: 49, scope: !234)
!241 = !DILocation(line: 87, column: 14, scope: !229)
!242 = !DILocation(line: 87, column: 12, scope: !229)
!243 = !DILocation(line: 90, column: 3, scope: !92)
!244 = !DILocation(line: 92, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 92, column: 9)
!246 = distinct !DILexicalBlock(scope: !92, file: !1, line: 90, column: 17)
!247 = !DILocation(line: 92, column: 22, scope: !245)
!248 = !DILocation(line: 92, column: 9, scope: !246)
!249 = !DILocation(line: 93, column: 7, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !1, line: 92, column: 28)
!251 = !DILocation(line: 94, column: 12, scope: !250)
!252 = !DILocation(line: 95, column: 5, scope: !250)
!253 = !DILocation(line: 98, column: 10, scope: !254)
!254 = distinct !DILexicalBlock(scope: !246, file: !1, line: 98, column: 9)
!255 = !DILocation(line: 98, column: 9, scope: !246)
!256 = !DILocation(line: 99, column: 54, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !1, line: 98, column: 23)
!258 = !DILocation(line: 99, column: 7, scope: !257)
!259 = !DILocation(line: 100, column: 12, scope: !257)
!260 = !DILocation(line: 101, column: 5, scope: !257)
!261 = !DILocation(line: 104, column: 10, scope: !262)
!262 = distinct !DILexicalBlock(scope: !246, file: !1, line: 104, column: 9)
!263 = !DILocation(line: 104, column: 9, scope: !246)
!264 = !DILocation(line: 105, column: 57, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !1, line: 104, column: 24)
!266 = !DILocation(line: 105, column: 7, scope: !265)
!267 = !DILocation(line: 106, column: 12, scope: !265)
!268 = !DILocation(line: 107, column: 5, scope: !265)
!269 = !DILocation(line: 111, column: 10, scope: !92)
!270 = !DILocation(line: 111, column: 3, scope: !92)
!271 = !DILocation(line: 112, column: 1, scope: !92)
!272 = !DILocation(line: 129, column: 15, scope: !98)
!273 = !DILocation(line: 129, column: 22, scope: !98)
!274 = !DILocation(line: 129, column: 31, scope: !98)
!275 = !DILocation(line: 134, column: 9, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 134, column: 9)
!277 = distinct !DILexicalBlock(scope: !98, file: !1, line: 133, column: 6)
!278 = !DILocation(line: 134, column: 25, scope: !276)
!279 = !DILocation(line: 134, column: 9, scope: !277)
!280 = !DILocation(line: 135, column: 38, scope: !277)
!281 = !DILocation(line: 267, column: 13, scope: !176, inlinedAt: !282)
!282 = distinct !DILocation(line: 135, column: 23, scope: !277)
!283 = !DILocation(line: 153, column: 29, scope: !182, inlinedAt: !284)
!284 = distinct !DILocation(line: 269, column: 10, scope: !176, inlinedAt: !282)
!285 = !DILocation(line: 153, column: 47, scope: !182, inlinedAt: !284)
!286 = !DILocation(line: 158, column: 10, scope: !182, inlinedAt: !284)
!287 = !DILocation(line: 158, column: 27, scope: !182, inlinedAt: !284)
!288 = !{!289, !289, i64 0}
!289 = !{!"int", !219, i64 0}
!290 = !DILocation(line: 158, column: 25, scope: !182, inlinedAt: !284)
!291 = !DILocation(line: 135, column: 31, scope: !277)
!292 = !DILocation(line: 159, column: 7, scope: !182, inlinedAt: !284)
!293 = !DILocation(line: 135, column: 23, scope: !277)
!294 = !DILocation(line: 269, column: 10, scope: !176, inlinedAt: !282)
!295 = !DILocation(line: 135, column: 53, scope: !277)
!296 = !DILocation(line: 131, column: 9, scope: !98)
!297 = !DILocation(line: 135, column: 16, scope: !277)
!298 = !DILocation(line: 136, column: 12, scope: !98)
!299 = !DILocation(line: 136, column: 26, scope: !98)
!300 = !DILocation(line: 138, column: 1, scope: !98)
!301 = !DILocation(line: 158, column: 33, scope: !106)
!302 = !DILocation(line: 158, column: 57, scope: !106)
!303 = !DILocation(line: 160, column: 15, scope: !304)
!304 = distinct !DILexicalBlock(scope: !106, file: !1, line: 160, column: 7)
!305 = !{!306, !219, i64 32}
!306 = !{!"threshold_s", !307, i64 0, !308, i64 8, !307, i64 16, !308, i64 24, !219, i64 32, !289, i64 36}
!307 = !{!"float", !219, i64 0}
!308 = !{!"double", !219, i64 0}
!309 = !DILocation(line: 160, column: 7, scope: !106)
!310 = !DILocation(line: 161, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 161, column: 9)
!312 = distinct !DILexicalBlock(scope: !304, file: !1, line: 160, column: 34)
!313 = !{!314, !289, i64 456}
!314 = !{!"plan7_s", !218, i64 0, !218, i64 8, !218, i64 16, !218, i64 24, !218, i64 32, !218, i64 40, !218, i64 48, !289, i64 56, !218, i64 64, !218, i64 72, !289, i64 80, !218, i64 88, !218, i64 96, !218, i64 104, !307, i64 112, !307, i64 116, !307, i64 120, !307, i64 124, !307, i64 128, !307, i64 132, !289, i64 136, !218, i64 144, !218, i64 152, !218, i64 160, !307, i64 168, !219, i64 172, !218, i64 208, !218, i64 216, !219, i64 224, !307, i64 304, !218, i64 312, !218, i64 320, !218, i64 328, !219, i64 336, !218, i64 368, !218, i64 376, !218, i64 384, !218, i64 392, !218, i64 400, !218, i64 408, !218, i64 416, !218, i64 424, !218, i64 432, !289, i64 440, !289, i64 444, !307, i64 448, !307, i64 452, !289, i64 456}
!315 = !DILocation(line: 161, column: 23, scope: !311)
!316 = !DILocation(line: 161, column: 9, scope: !312)
!317 = !DILocation(line: 162, column: 26, scope: !312)
!318 = !{!314, !307, i64 112}
!319 = !DILocation(line: 162, column: 19, scope: !312)
!320 = !{!306, !307, i64 0}
!321 = !DILocation(line: 163, column: 26, scope: !312)
!322 = !{!314, !307, i64 116}
!323 = !DILocation(line: 163, column: 13, scope: !312)
!324 = !DILocation(line: 163, column: 19, scope: !312)
!325 = !{!306, !307, i64 16}
!326 = !DILocation(line: 164, column: 29, scope: !312)
!327 = !DILocation(line: 164, column: 34, scope: !312)
!328 = !{!306, !308, i64 24}
!329 = !DILocation(line: 164, column: 13, scope: !312)
!330 = !DILocation(line: 164, column: 19, scope: !312)
!331 = !{!306, !308, i64 8}
!332 = !DILocation(line: 165, column: 3, scope: !312)
!333 = !DILocation(line: 166, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !1, line: 166, column: 9)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 165, column: 41)
!336 = distinct !DILexicalBlock(scope: !304, file: !1, line: 165, column: 14)
!337 = !DILocation(line: 166, column: 23, scope: !334)
!338 = !DILocation(line: 166, column: 9, scope: !335)
!339 = !DILocation(line: 167, column: 26, scope: !335)
!340 = !{!314, !307, i64 128}
!341 = !DILocation(line: 167, column: 19, scope: !335)
!342 = !DILocation(line: 168, column: 26, scope: !335)
!343 = !{!314, !307, i64 132}
!344 = !DILocation(line: 168, column: 13, scope: !335)
!345 = !DILocation(line: 168, column: 19, scope: !335)
!346 = !DILocation(line: 169, column: 29, scope: !335)
!347 = !DILocation(line: 169, column: 34, scope: !335)
!348 = !DILocation(line: 169, column: 13, scope: !335)
!349 = !DILocation(line: 169, column: 19, scope: !335)
!350 = !DILocation(line: 170, column: 3, scope: !335)
!351 = !DILocation(line: 171, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 171, column: 9)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 170, column: 41)
!354 = distinct !DILexicalBlock(scope: !336, file: !1, line: 170, column: 14)
!355 = !DILocation(line: 171, column: 23, scope: !352)
!356 = !DILocation(line: 171, column: 9, scope: !353)
!357 = !DILocation(line: 172, column: 26, scope: !353)
!358 = !{!314, !307, i64 120}
!359 = !DILocation(line: 172, column: 19, scope: !353)
!360 = !DILocation(line: 173, column: 26, scope: !353)
!361 = !{!314, !307, i64 124}
!362 = !DILocation(line: 173, column: 13, scope: !353)
!363 = !DILocation(line: 173, column: 19, scope: !353)
!364 = !DILocation(line: 174, column: 29, scope: !353)
!365 = !DILocation(line: 174, column: 34, scope: !353)
!366 = !DILocation(line: 174, column: 13, scope: !353)
!367 = !DILocation(line: 174, column: 19, scope: !353)
!368 = !DILocation(line: 175, column: 3, scope: !353)
!369 = !DILocation(line: 177, column: 1, scope: !106)
