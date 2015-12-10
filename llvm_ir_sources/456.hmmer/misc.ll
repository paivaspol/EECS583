; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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

; Function Attrs: nounwind optsize uwtable
define void @HMMERBanner(%struct._IO_FILE* nocapture %fp, i8* %banner) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !100), !dbg !190
  tail call void @llvm.dbg.value(metadata !{i8* %banner}, i64 0, metadata !101), !dbg !190
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* %banner) #7, !dbg !191
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !192
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !193
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !194
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([73 x i8]* @.str7, i64 0, i64 0), i64 72, i64 1, %struct._IO_FILE* %fp), !dbg !195
  ret void, !dbg !196
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i8* @Getword(%struct._IO_FILE* nocapture %fp, i32 %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !106), !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !107), !dbg !197
  %0 = load i8** @Getword.sptr, align 8, !dbg !198, !tbaa !199
  %cmp = icmp eq i8* %0, null, !dbg !198
  br i1 %cmp, label %while.body, label %while.cond.preheader, !dbg !198

while.cond.preheader:                             ; preds = %entry
  %call = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !198
  store i8* %call, i8** @Getword.sptr, align 8, !dbg !198, !tbaa !199
  %cmp125 = icmp eq i8* %call, null, !dbg !202
  br i1 %cmp125, label %while.body, label %while.end, !dbg !202

while.body:                                       ; preds = %entry, %while.cond.preheader, %if.end9
  %call2 = tail call i8* @fgets(i8* getelementptr inbounds ([512 x i8]* @Getword.buffer, i64 0, i64 0), i32 512, %struct._IO_FILE* %fp) #7, !dbg !203
  store i8* %call2, i8** @Getword.sptr, align 8, !dbg !203, !tbaa !199
  %cmp3 = icmp eq i8* %call2, null, !dbg !203
  br i1 %cmp3, label %return, label %if.end5, !dbg !203

if.end5:                                          ; preds = %while.body
  %call6 = tail call i8* @strchr(i8* getelementptr inbounds ([512 x i8]* @Getword.buffer, i64 0, i64 0), i32 35) #8, !dbg !205
  store i8* %call6, i8** @Getword.sptr, align 8, !dbg !205, !tbaa !199
  %cmp7 = icmp eq i8* %call6, null, !dbg !205
  br i1 %cmp7, label %if.end9, label %if.then8, !dbg !205

if.then8:                                         ; preds = %if.end5
  store i8 0, i8* %call6, align 1, !dbg !205, !tbaa !200
  br label %if.end9, !dbg !205

if.end9:                                          ; preds = %if.end5, %if.then8
  %call10 = tail call i8* @strtok(i8* getelementptr inbounds ([512 x i8]* @Getword.buffer, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !206
  store i8* %call10, i8** @Getword.sptr, align 8, !dbg !206, !tbaa !199
  %cmp1 = icmp eq i8* %call10, null, !dbg !202
  br i1 %cmp1, label %while.body, label %while.end, !dbg !202

while.end:                                        ; preds = %if.end9, %while.cond.preheader
  %.lcssa = phi i8* [ %call, %while.cond.preheader ], [ %call10, %if.end9 ]
  switch i32 %type, label %sw.epilog [
    i32 4, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb19
  ], !dbg !207

sw.bb:                                            ; preds = %while.end
  %strlenfirst = load i8* %.lcssa, align 1, !dbg !208
  %cmp12 = icmp eq i8 %strlenfirst, 0, !dbg !208
  br i1 %cmp12, label %if.then13, label %sw.epilog, !dbg !208

if.then13:                                        ; preds = %sw.bb
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([43 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !210
  store i8* null, i8** @Getword.sptr, align 8, !dbg !212, !tbaa !199
  br label %sw.epilog, !dbg !213

sw.bb15:                                          ; preds = %while.end
  %call16 = tail call i32 @IsInt(i8* %.lcssa) #7, !dbg !214
  %tobool = icmp eq i32 %call16, 0, !dbg !214
  br i1 %tobool, label %if.then17, label %sw.epilog, !dbg !214

if.then17:                                        ; preds = %sw.bb15
  %1 = load i8** @Getword.sptr, align 8, !dbg !215, !tbaa !199
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %1) #7, !dbg !215
  store i8* null, i8** @Getword.sptr, align 8, !dbg !217, !tbaa !199
  br label %sw.epilog, !dbg !218

sw.bb19:                                          ; preds = %while.end
  %call20 = tail call i32 @IsReal(i8* %.lcssa) #7, !dbg !219
  %tobool21 = icmp eq i32 %call20, 0, !dbg !219
  br i1 %tobool21, label %if.then22, label %sw.epilog, !dbg !219

if.then22:                                        ; preds = %sw.bb19
  %2 = load i8** @Getword.sptr, align 8, !dbg !220, !tbaa !199
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([42 x i8]* @.str11, i64 0, i64 0), i8* %2) #7, !dbg !220
  store i8* null, i8** @Getword.sptr, align 8, !dbg !222, !tbaa !199
  br label %sw.epilog, !dbg !223

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb15, %if.then22, %if.then17, %sw.bb, %if.then13, %while.end
  %3 = load i8** @Getword.sptr, align 8, !dbg !224, !tbaa !199
  br label %return, !dbg !224

return:                                           ; preds = %while.body, %sw.epilog
  %retval.0 = phi i8* [ %3, %sw.epilog ], [ null, %while.body ]
  ret i8* %retval.0, !dbg !225
}

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: optsize
declare void @Warn(i8*, ...) #3

; Function Attrs: optsize
declare i32 @IsInt(i8*) #3

; Function Attrs: optsize
declare i32 @IsReal(i8*) #3

; Function Attrs: nounwind optsize uwtable
define i8* @Getline(i8* %s, i32 %n, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !112), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !113), !dbg !226
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !114), !dbg !226
  %call13 = tail call i8* @fgets(i8* %s, i32 %n, %struct._IO_FILE* %fp) #7, !dbg !227
  %cmp14 = icmp eq i8* %call13, null, !dbg !227
  br i1 %cmp14, label %return, label %while.cond.preheader.lr.ph, !dbg !227

while.cond.preheader.lr.ph:                       ; preds = %entry
  %call1 = tail call i16** @__ctype_b_loc() #9, !dbg !229
  br label %while.cond.preheader, !dbg !227

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %do.body.backedge
  %0 = load i16** %call1, align 8, !dbg !229, !tbaa !199
  br label %while.cond, !dbg !229

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %first.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %s, %while.cond.preheader ]
  %1 = load i8* %first.0, align 1, !dbg !229, !tbaa !200
  %idxprom = sext i8 %1 to i64, !dbg !229
  %arrayidx = getelementptr inbounds i16* %0, i64 %idxprom, !dbg !229
  %2 = load i16* %arrayidx, align 2, !dbg !229, !tbaa !230
  %and = and i16 %2, 8192, !dbg !229
  %tobool = icmp eq i16 %and, 0, !dbg !229
  %incdec.ptr = getelementptr inbounds i8* %first.0, i64 1, !dbg !229
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !115), !dbg !229
  br i1 %tobool, label %do.cond, label %while.cond, !dbg !229

do.cond:                                          ; preds = %while.cond
  switch i8 %1, label %return [
    i8 35, label %do.body.backedge
    i8 0, label %do.body.backedge
  ], !dbg !231

do.body.backedge:                                 ; preds = %do.cond, %do.cond
  %call = tail call i8* @fgets(i8* %s, i32 %n, %struct._IO_FILE* %fp) #7, !dbg !227
  %cmp = icmp eq i8* %call, null, !dbg !227
  br i1 %cmp, label %return, label %while.cond.preheader, !dbg !227

return:                                           ; preds = %do.body.backedge, %do.cond, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %s, %do.cond ], [ null, %do.body.backedge ]
  ret i8* %retval.0, !dbg !232
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind optsize uwtable
define i32 @SetAutocuts(%struct.threshold_s* nocapture %thresh, %struct.plan7_s* nocapture %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.threshold_s* %thresh}, i64 0, metadata !182), !dbg !233
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !183), !dbg !233
  %autocut = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 4, !dbg !234
  %0 = load i32* %autocut, align 4, !dbg !234, !tbaa !235
  switch i32 %0, label %return [
    i32 1, label %if.then
    i32 2, label %if.then4
    i32 3, label %if.then17
  ], !dbg !234

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !236
  %1 = load i32* %flags, align 4, !dbg !236, !tbaa !238
  %and = and i32 %1, 1024, !dbg !236
  %tobool = icmp eq i32 %and, 0, !dbg !236
  br i1 %tobool, label %return, label %if.end, !dbg !236

if.end:                                           ; preds = %if.then
  %ga1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 14, !dbg !239
  %2 = load float* %ga1, align 4, !dbg !239, !tbaa !240
  %globT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0, !dbg !239
  store float %2, float* %globT, align 4, !dbg !239, !tbaa !240
  %ga2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 15, !dbg !241
  %3 = load float* %ga2, align 4, !dbg !241, !tbaa !240
  %domT = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2, !dbg !241
  store float %3, float* %domT, align 4, !dbg !241, !tbaa !240
  %domE = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3, !dbg !242
  store double 0x47EFFFFFE0000000, double* %domE, align 8, !dbg !242, !tbaa !243
  %globE = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1, !dbg !242
  store double 0x47EFFFFFE0000000, double* %globE, align 8, !dbg !242, !tbaa !243
  br label %return, !dbg !244

if.then4:                                         ; preds = %entry
  %flags5 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !245
  %4 = load i32* %flags5, align 4, !dbg !245, !tbaa !238
  %and6 = and i32 %4, 4096, !dbg !245
  %tobool7 = icmp eq i32 %and6, 0, !dbg !245
  br i1 %tobool7, label %return, label %if.end9, !dbg !245

if.end9:                                          ; preds = %if.then4
  %nc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 18, !dbg !247
  %5 = load float* %nc1, align 4, !dbg !247, !tbaa !240
  %globT10 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0, !dbg !247
  store float %5, float* %globT10, align 4, !dbg !247, !tbaa !240
  %nc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 19, !dbg !248
  %6 = load float* %nc2, align 4, !dbg !248, !tbaa !240
  %domT11 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2, !dbg !248
  store float %6, float* %domT11, align 4, !dbg !248, !tbaa !240
  %domE12 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3, !dbg !249
  store double 0x47EFFFFFE0000000, double* %domE12, align 8, !dbg !249, !tbaa !243
  %globE13 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1, !dbg !249
  store double 0x47EFFFFFE0000000, double* %globE13, align 8, !dbg !249, !tbaa !243
  br label %return, !dbg !250

if.then17:                                        ; preds = %entry
  %flags18 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !251
  %7 = load i32* %flags18, align 4, !dbg !251, !tbaa !238
  %and19 = and i32 %7, 2048, !dbg !251
  %tobool20 = icmp eq i32 %and19, 0, !dbg !251
  br i1 %tobool20, label %return, label %if.end22, !dbg !251

if.end22:                                         ; preds = %if.then17
  %tc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 16, !dbg !253
  %8 = load float* %tc1, align 4, !dbg !253, !tbaa !240
  %globT23 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 0, !dbg !253
  store float %8, float* %globT23, align 4, !dbg !253, !tbaa !240
  %tc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 17, !dbg !254
  %9 = load float* %tc2, align 4, !dbg !254, !tbaa !240
  %domT24 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 2, !dbg !254
  store float %9, float* %domT24, align 4, !dbg !254, !tbaa !240
  %domE25 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 3, !dbg !255
  store double 0x47EFFFFFE0000000, double* %domE25, align 8, !dbg !255, !tbaa !243
  %globE26 = getelementptr inbounds %struct.threshold_s* %thresh, i64 0, i32 1, !dbg !255
  store double 0x47EFFFFFE0000000, double* %globE26, align 8, !dbg !255, !tbaa !243
  br label %return, !dbg !256

return:                                           ; preds = %if.end, %if.end22, %if.end9, %entry, %if.then17, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then17 ], [ 1, %entry ], [ 1, %if.end9 ], [ 1, %if.end22 ], [ 1, %if.end ]
  ret i32 %retval.0, !dbg !257
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !36, metadata !37, metadata !184, metadata !36, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !18}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 786436, metadata !19, metadata !20, metadata !"", i32 524, i64 32, i64 32, i32 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 524, size 32, align 32, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{i32 786451, metadata !19, null, metadata !"threshold_s", i32 518, i64 320, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [threshold_s] [line 518, size 320, align 64, offset 0] [from ]
!21 = metadata !{metadata !22, metadata !24, metadata !26, metadata !27, metadata !28, metadata !29}
!22 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"globT", i32 519, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [globT] [line 519, size 32, align 32, offset 0] [from float]
!23 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"globE", i32 520, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [globE] [line 520, size 64, align 64, offset 64] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"domT", i32 521, i64 32, i64 32, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [domT] [line 521, size 32, align 32, offset 128] [from float]
!27 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"domE", i32 522, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [domE] [line 522, size 64, align 64, offset 192] [from double]
!28 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"autocut", i32 524, i64 32, i64 32, i64 256, i32 0, metadata !18} ; [ DW_TAG_member ] [autocut] [line 524, size 32, align 32, offset 256] [from ]
!29 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"Z", i32 525, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [Z] [line 525, size 32, align 32, offset 288] [from int]
!30 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786472, metadata !"CUT_NONE", i64 0} ; [ DW_TAG_enumerator ] [CUT_NONE :: 0]
!33 = metadata !{i32 786472, metadata !"CUT_GA", i64 1} ; [ DW_TAG_enumerator ] [CUT_GA :: 1]
!34 = metadata !{i32 786472, metadata !"CUT_NC", i64 2} ; [ DW_TAG_enumerator ] [CUT_NC :: 2]
!35 = metadata !{i32 786472, metadata !"CUT_TC", i64 3} ; [ DW_TAG_enumerator ] [CUT_TC :: 3]
!36 = metadata !{i32 0}
!37 = metadata !{metadata !38, metadata !102, metadata !108, metadata !116}
!38 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"HMMERBanner", metadata !"HMMERBanner", metadata !"", i32 55, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*)* @HMMERBanner, null, null, metadata !99, i32 56} ; [ DW_TAG_subprogram ] [line 55] [def] [scope 56] [HMMERBanner]
!39 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !42, metadata !49}
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!43 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!44 = metadata !{i32 786451, metadata !45, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !46, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!45 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!46 = metadata !{metadata !47, metadata !48, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !69, metadata !70, metadata !71, metadata !72, metadata !75, metadata !77, metadata !79, metadata !83, metadata !85, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !94, metadata !95}
!47 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!48 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!50 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!51 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!52 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!53 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!54 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!55 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!56 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!57 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!58 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!59 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!60 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!61 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !62} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!63 = metadata !{i32 786451, metadata !45, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !64, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!64 = metadata !{metadata !65, metadata !66, metadata !68}
!65 = metadata !{i32 786445, metadata !45, metadata !63, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!66 = metadata !{i32 786445, metadata !45, metadata !63, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !67} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!68 = metadata !{i32 786445, metadata !45, metadata !63, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!69 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !67} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!70 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!71 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!72 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !73} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!73 = metadata !{i32 786454, metadata !45, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!74 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!75 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !76} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!76 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !78} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!78 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!79 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !80} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!80 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !50, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!83 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !84} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!85 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !86} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!86 = metadata !{i32 786454, metadata !45, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!87 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!88 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!89 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!90 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!91 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !92} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!92 = metadata !{i32 786454, metadata !45, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!93 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!94 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!95 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !96} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!96 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !50, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!99 = metadata !{metadata !100, metadata !101}
!100 = metadata !{i32 786689, metadata !38, metadata !"fp", metadata !39, i32 16777271, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 55]
!101 = metadata !{i32 786689, metadata !38, metadata !"banner", metadata !39, i32 33554487, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [banner] [line 55]
!102 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"Getword", metadata !"Getword", metadata !"", i32 76, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct._IO_FILE*, i32)* @Getword, null, null, metadata !105, i32 77} ; [ DW_TAG_subprogram ] [line 76] [def] [scope 77] [Getword]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{metadata !49, metadata !42, metadata !30}
!105 = metadata !{metadata !106, metadata !107}
!106 = metadata !{i32 786689, metadata !102, metadata !"fp", metadata !39, i32 16777292, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 76]
!107 = metadata !{i32 786689, metadata !102, metadata !"type", metadata !39, i32 33554508, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 76]
!108 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"Getline", metadata !"Getline", metadata !"", i32 129, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, %struct._IO_FILE*)* @Getline, null, null, metadata !111, i32 130} ; [ DW_TAG_subprogram ] [line 129] [def] [scope 130] [Getline]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{metadata !49, metadata !49, metadata !30, metadata !42}
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115}
!112 = metadata !{i32 786689, metadata !108, metadata !"s", metadata !39, i32 16777345, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 129]
!113 = metadata !{i32 786689, metadata !108, metadata !"n", metadata !39, i32 33554561, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 129]
!114 = metadata !{i32 786689, metadata !108, metadata !"fp", metadata !39, i32 50331777, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 129]
!115 = metadata !{i32 786688, metadata !108, metadata !"first", metadata !39, i32 131, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 131]
!116 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"SetAutocuts", metadata !"SetAutocuts", metadata !"", i32 158, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.threshold_s*, %struct.plan7_s*)* @SetAutocuts, null, null, metadata !181, i32 159} ; [ DW_TAG_subprogram ] [line 158] [def] [scope 159] [SetAutocuts]
!117 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!118 = metadata !{metadata !30, metadata !119, metadata !120}
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from threshold_s]
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!121 = metadata !{i32 786451, metadata !19, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !122, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !148, metadata !149, metadata !150, metadata !151, metadata !156, metadata !157, metadata !158, metadata !160, metadata !161, metadata !163, metadata !164, metadata !165, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!123 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!124 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!125 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!126 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !49} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!127 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !49} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!128 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !49} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!129 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !49} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!130 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !30} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!131 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !49} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!132 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !133} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!133 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!134 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !30} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!135 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !133} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!136 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !133} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!137 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !133} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!138 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!139 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !23} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!140 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !23} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!141 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !23} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!142 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !23} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!143 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !23} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!144 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!145 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !146} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!148 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !146} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!149 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !146} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!150 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !23} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!151 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !152} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!152 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !23, metadata !153, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!153 = metadata !{metadata !154, metadata !155}
!154 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!155 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!156 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !147} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!157 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !147} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!158 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !159} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!159 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !23, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!160 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !23} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!161 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !162} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!162 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!163 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !162} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!164 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !162} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!165 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !166} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !30, metadata !153, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!167 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !133} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!168 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !133} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!169 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !133} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!170 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !133} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!171 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !133} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!172 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !133} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!173 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !133} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!174 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !162} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!175 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !162} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!176 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !30} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!177 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !30} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!178 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !23} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!179 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !23} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!180 = metadata !{i32 786445, metadata !19, metadata !121, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !30} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!181 = metadata !{metadata !182, metadata !183}
!182 = metadata !{i32 786689, metadata !116, metadata !"thresh", metadata !39, i32 16777374, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thresh] [line 158]
!183 = metadata !{i32 786689, metadata !116, metadata !"hmm", metadata !39, i32 33554590, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 158]
!184 = metadata !{metadata !185, metadata !189}
!185 = metadata !{i32 786484, i32 0, metadata !102, metadata !"buffer", metadata !"buffer", metadata !"", metadata !39, i32 78, metadata !186, i32 1, i32 1, [512 x i8]* @Getword.buffer, null} ; [ DW_TAG_variable ] [buffer] [line 78] [local] [def]
!186 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4096, i64 8, i32 0, i32 0, metadata !50, metadata !187, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4096, align 8, offset 0] [from char]
!187 = metadata !{metadata !188}
!188 = metadata !{i32 786465, i64 0, i64 512}     ; [ DW_TAG_subrange_type ] [0, 511]
!189 = metadata !{i32 786484, i32 0, metadata !102, metadata !"sptr", metadata !"sptr", metadata !"", metadata !39, i32 79, metadata !49, i32 1, i32 1, i8** @Getword.sptr, null} ; [ DW_TAG_variable ] [sptr] [line 79] [local] [def]
!190 = metadata !{i32 55, i32 0, metadata !38, null}
!191 = metadata !{i32 57, i32 0, metadata !38, null}
!192 = metadata !{i32 58, i32 0, metadata !38, null} ; [ DW_TAG_imported_module ]
!193 = metadata !{i32 59, i32 0, metadata !38, null}
!194 = metadata !{i32 60, i32 0, metadata !38, null}
!195 = metadata !{i32 61, i32 0, metadata !38, null}
!196 = metadata !{i32 62, i32 0, metadata !38, null}
!197 = metadata !{i32 76, i32 0, metadata !102, null}
!198 = metadata !{i32 81, i32 0, metadata !102, null}
!199 = metadata !{metadata !"any pointer", metadata !200}
!200 = metadata !{metadata !"omnipotent char", metadata !201}
!201 = metadata !{metadata !"Simple C/C++ TBAA"}
!202 = metadata !{i32 83, i32 0, metadata !102, null}
!203 = metadata !{i32 85, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !102, i32 84, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c]
!205 = metadata !{i32 86, i32 0, metadata !204, null}
!206 = metadata !{i32 87, i32 0, metadata !204, null}
!207 = metadata !{i32 90, i32 0, metadata !102, null}
!208 = metadata !{i32 92, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !102, i32 90, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c]
!210 = metadata !{i32 93, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !209, i32 92, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c]
!212 = metadata !{i32 94, i32 0, metadata !211, null}
!213 = metadata !{i32 95, i32 0, metadata !211, null}
!214 = metadata !{i32 98, i32 0, metadata !209, null}
!215 = metadata !{i32 99, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !209, i32 98, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c]
!217 = metadata !{i32 100, i32 0, metadata !216, null}
!218 = metadata !{i32 101, i32 0, metadata !216, null}
!219 = metadata !{i32 104, i32 0, metadata !209, null}
!220 = metadata !{i32 105, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !209, i32 104, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c]
!222 = metadata !{i32 106, i32 0, metadata !221, null}
!223 = metadata !{i32 107, i32 0, metadata !221, null}
!224 = metadata !{i32 111, i32 0, metadata !102, null}
!225 = metadata !{i32 112, i32 0, metadata !102, null}
!226 = metadata !{i32 129, i32 0, metadata !108, null}
!227 = metadata !{i32 134, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !108, i32 133, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c]
!229 = metadata !{i32 135, i32 0, metadata !228, null}
!230 = metadata !{metadata !"short", metadata !200}
!231 = metadata !{i32 136, i32 0, metadata !228, null}
!232 = metadata !{i32 138, i32 0, metadata !108, null}
!233 = metadata !{i32 158, i32 0, metadata !116, null}
!234 = metadata !{i32 160, i32 0, metadata !116, null}
!235 = metadata !{metadata !"_ZTSN11threshold_s3$_0E", metadata !200}
!236 = metadata !{i32 161, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !116, i32 160, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c]
!238 = metadata !{metadata !"int", metadata !200}
!239 = metadata !{i32 162, i32 0, metadata !237, null}
!240 = metadata !{metadata !"float", metadata !200}
!241 = metadata !{i32 163, i32 0, metadata !237, null}
!242 = metadata !{i32 164, i32 0, metadata !237, null}
!243 = metadata !{metadata !"double", metadata !200}
!244 = metadata !{i32 165, i32 0, metadata !237, null}
!245 = metadata !{i32 166, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !116, i32 165, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c]
!247 = metadata !{i32 167, i32 0, metadata !246, null}
!248 = metadata !{i32 168, i32 0, metadata !246, null}
!249 = metadata !{i32 169, i32 0, metadata !246, null}
!250 = metadata !{i32 170, i32 0, metadata !246, null}
!251 = metadata !{i32 171, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !116, i32 170, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/misc.c]
!253 = metadata !{i32 172, i32 0, metadata !252, null}
!254 = metadata !{i32 173, i32 0, metadata !252, null}
!255 = metadata !{i32 174, i32 0, metadata !252, null}
!256 = metadata !{i32 175, i32 0, metadata !252, null}
!257 = metadata !{i32 176, i32 0, metadata !116, null}
