; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/file.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [62 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/file.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @FileDirname(i8* %file) #0 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !13, metadata !131), !dbg !132
  %1 = tail call i8* @strrchr(i8* %file, i32 47) #6, !dbg !133
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !15, metadata !131), !dbg !134
  %2 = icmp eq i8* %1, null, !dbg !135
  br i1 %2, label %8, label %3, !dbg !136

; <label>:3                                       ; preds = %0
  %4 = ptrtoint i8* %1 to i64, !dbg !137
  %5 = ptrtoint i8* %file to i64, !dbg !137
  %6 = sub i64 %4, %5, !dbg !137
  %7 = trunc i64 %6 to i32, !dbg !138
  br label %8, !dbg !136

; <label>:8                                       ; preds = %0, %3
  %9 = phi i32 [ %7, %3 ], [ 0, %0 ], !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !16, metadata !131), !dbg !139
  %10 = add nsw i32 %9, 2, !dbg !140
  %11 = sext i32 %10 to i64, !dbg !140
  %12 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 73, i64 %11) #6, !dbg !140
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !14, metadata !131), !dbg !141
  %13 = icmp sgt i32 %9, 0, !dbg !142
  br i1 %13, label %14, label %18, !dbg !144

; <label>:14                                      ; preds = %8
  %15 = sext i32 %9 to i64, !dbg !145
  %16 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %12, i1 false), !dbg !145
  %17 = tail call i8* @__strncpy_chk(i8* %12, i8* %file, i64 %15, i64 %16) #6, !dbg !145
  br label %23, !dbg !145

; <label>:18                                      ; preds = %8
  %19 = load i8* %file, align 1, !dbg !146, !tbaa !148
  %20 = icmp eq i8 %19, 47, !dbg !151
  br i1 %20, label %22, label %21, !dbg !152

; <label>:21                                      ; preds = %18
  store i8 46, i8* %12, align 1, !dbg !153, !tbaa !148
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !16, metadata !131), !dbg !139
  br label %23, !dbg !155

; <label>:22                                      ; preds = %18
  store i8 47, i8* %12, align 1, !dbg !156, !tbaa !148
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !16, metadata !131), !dbg !139
  br label %23

; <label>:23                                      ; preds = %21, %22, %14
  %len.0 = phi i32 [ %9, %14 ], [ 1, %21 ], [ 1, %22 ]
  %24 = sext i32 %len.0 to i64, !dbg !158
  %25 = getelementptr inbounds i8* %12, i64 %24, !dbg !158
  store i8 0, i8* %25, align 1, !dbg !159, !tbaa !148
  ret i8* %12, !dbg !160
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @FileTail(i8* %file, i32 %noextension) #0 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !21, metadata !131), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %noextension, i64 0, metadata !22, metadata !131), !dbg !162
  %1 = tail call i8* @strrchr(i8* %file, i32 47) #6, !dbg !163
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !24, metadata !131), !dbg !164
  %2 = tail call i64 @strlen(i8* %file) #6, !dbg !165
  %3 = add i64 %2, 1, !dbg !165
  %4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 105, i64 %3) #6, !dbg !165
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !23, metadata !131), !dbg !166
  %5 = icmp eq i8* %1, null, !dbg !167
  br i1 %5, label %6, label %9, !dbg !169

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %4, i1 false), !dbg !170
  %8 = tail call i8* @__strcpy_chk(i8* %4, i8* %file, i64 %7) #6, !dbg !170
  br label %13, !dbg !170

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds i8* %1, i64 1, !dbg !171
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %4, i1 false), !dbg !171
  %12 = tail call i8* @__strcpy_chk(i8* %4, i8* %10, i64 %11) #6, !dbg !171
  br label %13

; <label>:13                                      ; preds = %9, %6
  %14 = icmp eq i32 %noextension, 0, !dbg !172
  br i1 %14, label %19, label %15, !dbg !174

; <label>:15                                      ; preds = %13
  %16 = tail call i8* @strrchr(i8* %4, i32 46) #6, !dbg !175
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !25, metadata !131), !dbg !178
  %17 = icmp eq i8* %16, null, !dbg !179
  br i1 %17, label %19, label %18, !dbg !180

; <label>:18                                      ; preds = %15
  store i8 0, i8* %16, align 1, !dbg !181, !tbaa !148
  br label %19, !dbg !182

; <label>:19                                      ; preds = %15, %13, %18
  ret i8* %4, !dbg !183
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind optsize ssp uwtable
define i8* @FileSameDirectory(i8* %file1, i8* %file2) #0 {
  tail call void @llvm.dbg.value(metadata i8* %file1, i64 0, metadata !30, metadata !131), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* %file2, i64 0, metadata !31, metadata !131), !dbg !185
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !35, metadata !131), !dbg !186
  %1 = tail call i8* @FileDirname(i8* %file1) #7, !dbg !187
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !32, metadata !131), !dbg !188
  %2 = tail call i8* @FileTail(i8* %file2, i32 0) #7, !dbg !189
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !33, metadata !131), !dbg !190
  %3 = tail call i32 @strcmp(i8* %file2, i8* %2) #6, !dbg !191
  %4 = icmp eq i32 %3, 0, !dbg !193
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !35, metadata !131), !dbg !186
  %5 = tail call i8* @FileConcat(i8* %1, i8* %2) #7, !dbg !194
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !34, metadata !131), !dbg !195
  br i1 %4, label %10, label %6, !dbg !196

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @strcmp(i8* %5, i8* %file2) #6, !dbg !198
  %8 = icmp eq i32 %7, 0, !dbg !199
  br i1 %8, label %10, label %9, !dbg !200

; <label>:9                                       ; preds = %6
  tail call void @free(i8* %5) #7, !dbg !201
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !34, metadata !131), !dbg !195
  br label %10, !dbg !203

; <label>:10                                      ; preds = %6, %9, %0
  %result.0 = phi i8* [ %5, %0 ], [ null, %9 ], [ %5, %6 ]
  tail call void @free(i8* %1) #7, !dbg !204
  tail call void @free(i8* %2) #7, !dbg !205
  ret i8* %result.0, !dbg !206
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i8* @FileConcat(i8* %dir, i8* %file) #0 {
  tail call void @llvm.dbg.value(metadata i8* %dir, i64 0, metadata !38, metadata !131), !dbg !207
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !39, metadata !131), !dbg !208
  %1 = tail call i64 @strlen(i8* %dir) #6, !dbg !209
  %2 = tail call i64 @strlen(i8* %file) #6, !dbg !209
  %3 = add i64 %1, 2, !dbg !209
  %4 = add i64 %3, %2, !dbg !209
  %5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 170, i64 %4) #6, !dbg !209
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !40, metadata !131), !dbg !210
  %6 = load i8* %file, align 1, !dbg !211, !tbaa !148
  %7 = icmp eq i8 %6, 47, !dbg !213
  %8 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false), !dbg !214
  br i1 %7, label %9, label %11, !dbg !215

; <label>:9                                       ; preds = %0
  %10 = tail call i8* @__strcpy_chk(i8* %5, i8* %file, i64 %8) #6, !dbg !214
  br label %13, !dbg !214

; <label>:11                                      ; preds = %0
  %12 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %5, i32 0, i64 %8, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* %dir, i32 47, i8* %file) #6, !dbg !216
  br label %13

; <label>:13                                      ; preds = %11, %9
  ret i8* %5, !dbg !217
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @FileAddSuffix(i8* %filename, i8* %sfx) #0 {
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !43, metadata !131), !dbg !218
  tail call void @llvm.dbg.value(metadata i8* %sfx, i64 0, metadata !44, metadata !131), !dbg !219
  %1 = tail call i64 @strlen(i8* %filename) #6, !dbg !220
  %2 = tail call i64 @strlen(i8* %sfx) #6, !dbg !220
  %3 = add i64 %1, 2, !dbg !220
  %4 = add i64 %3, %2, !dbg !220
  %5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i32 190, i64 %4) #6, !dbg !220
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !45, metadata !131), !dbg !221
  %6 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false), !dbg !222
  %7 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %5, i32 0, i64 %6, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* %filename, i8* %sfx) #6, !dbg !222
  ret i8* %5, !dbg !223
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @EnvFileOpen(i8* %fname, i8* readonly %env, i8** %ret_dir) #0 {
  %full = alloca [1024 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %fname, i64 0, metadata !111, metadata !131), !dbg !224
  tail call void @llvm.dbg.value(metadata i8* %env, i64 0, metadata !112, metadata !131), !dbg !225
  tail call void @llvm.dbg.value(metadata i8** %ret_dir, i64 0, metadata !113, metadata !131), !dbg !226
  %1 = getelementptr inbounds [1024 x i8]* %full, i64 0, i64 0, !dbg !227
  call void @llvm.lifetime.start(i64 1024, i8* %1) #5, !dbg !227
  tail call void @llvm.dbg.declare(metadata [1024 x i8]* %full, metadata !117, metadata !131), !dbg !228
  %2 = icmp eq i8* %env, null, !dbg !229
  br i1 %2, label %29, label %3, !dbg !231

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @getenv(i8* %env) #6, !dbg !232
  %5 = tail call i8* @Strdup(i8* %4) #6, !dbg !234
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !115, metadata !131), !dbg !235
  %6 = icmp eq i8* %5, null, !dbg !236
  br i1 %6, label %29, label %7, !dbg !237

; <label>:7                                       ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* null, i64 0, metadata !114, metadata !131), !dbg !238
  %8 = tail call i8* @strtok(i8* %5, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !239
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !116, metadata !131), !dbg !240
  %9 = icmp eq i8* %8, null, !dbg !241
  br i1 %9, label %._crit_edge, label %.lr.ph, !dbg !242

.lr.ph:                                           ; preds = %7, %22
  %s.02 = phi i8* [ %23, %22 ], [ %8, %7 ]
  %10 = call i64 @strlen(i8* %fname) #6, !dbg !243
  %11 = trunc i64 %10 to i32, !dbg !246
  %12 = call i64 @strlen(i8* %s.02) #6, !dbg !247
  %13 = trunc i64 %12 to i32, !dbg !248
  %14 = add i32 %11, 2, !dbg !249
  %15 = add i32 %14, %13, !dbg !250
  %16 = icmp sgt i32 %15, 1024, !dbg !251
  br i1 %16, label %17, label %18, !dbg !252

; <label>:17                                      ; preds = %.lr.ph
  call void @free(i8* %5) #7, !dbg !253
  br label %29, !dbg !255

; <label>:18                                      ; preds = %.lr.ph
  %19 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 1024, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* %s.02, i32 47, i8* %fname) #6, !dbg !256
  %20 = call %struct.__sFILE* @"\01_fopen"(i8* %1, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !257
  call void @llvm.dbg.value(metadata %struct.__sFILE* %20, i64 0, metadata !114, metadata !131), !dbg !238
  %21 = icmp eq %struct.__sFILE* %20, null, !dbg !259
  br i1 %21, label %22, label %._crit_edge, !dbg !260

; <label>:22                                      ; preds = %18
  %23 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !261
  call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !116, metadata !131), !dbg !240
  %24 = icmp eq i8* %23, null, !dbg !241
  br i1 %24, label %._crit_edge, label %.lr.ph, !dbg !242

._crit_edge:                                      ; preds = %22, %18, %7
  %s.0.lcssa = phi i8* [ null, %7 ], [ null, %22 ], [ %s.02, %18 ]
  %fp.1 = phi %struct.__sFILE* [ null, %7 ], [ null, %22 ], [ %20, %18 ]
  %25 = icmp eq i8** %ret_dir, null, !dbg !262
  br i1 %25, label %28, label %26, !dbg !264

; <label>:26                                      ; preds = %._crit_edge
  %27 = call i8* @Strdup(i8* %s.0.lcssa) #6, !dbg !265
  store i8* %27, i8** %ret_dir, align 8, !dbg !266, !tbaa !267
  br label %28, !dbg !269

; <label>:28                                      ; preds = %._crit_edge, %26
  call void @free(i8* %5) #7, !dbg !270
  br label %29, !dbg !271

; <label>:29                                      ; preds = %3, %0, %28, %17
  %.0 = phi %struct.__sFILE* [ null, %17 ], [ %fp.1, %28 ], [ null, %0 ], [ null, %3 ]
  call void @llvm.lifetime.end(i64 1024, i8* %1) #5, !dbg !272
  ret %struct.__sFILE* %.0, !dbg !272
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @Strdup(i8*) #3

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture readonly) #4

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @FileExists(i8* %filename) #0 {
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !125, metadata !131), !dbg !273
  %1 = tail call %struct.__sFILE* @"\01_fopen"(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !274
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !126, metadata !131), !dbg !276
  %2 = icmp eq %struct.__sFILE* %1, null, !dbg !277
  br i1 %2, label %5, label %3, !dbg !278

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @fclose(%struct.__sFILE* %1) #6, !dbg !279
  br label %5, !dbg !281

; <label>:5                                       ; preds = %0, %3
  %.0 = phi i32 [ 1, %3 ], [ 0, %0 ]
  ret i32 %.0, !dbg !282
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!127, !128, !129}
!llvm.ident = !{!130}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/file.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !{!9, !17, !26, !36, !41, !46, !121}
!9 = !DISubprogram(name: "FileDirname", scope: !1, file: !1, line: 65, type: !10, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @FileDirname, variables: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{!6, !6}
!12 = !{!13, !14, !15, !16}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !9, file: !1, line: 65, type: !6)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dirname", scope: !9, file: !1, line: 67, type: !6)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastslash", scope: !9, file: !1, line: 68, type: !6)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !9, file: !1, line: 69, type: !5)
!17 = !DISubprogram(name: "FileTail", scope: !1, file: !1, line: 98, type: !18, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32)* @FileTail, variables: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{!6, !6, !5}
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !17, file: !1, line: 98, type: !6)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noextension", arg: 2, scope: !17, file: !1, line: 98, type: !5)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !17, file: !1, line: 100, type: !6)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastslash", scope: !17, file: !1, line: 101, type: !6)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastdot", scope: !17, file: !1, line: 102, type: !6)
!26 = !DISubprogram(name: "FileSameDirectory", scope: !1, file: !1, line: 139, type: !27, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*)* @FileSameDirectory, variables: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{!6, !6, !6}
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file1", arg: 1, scope: !26, file: !1, line: 139, type: !6)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file2", arg: 2, scope: !26, file: !1, line: 139, type: !6)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !26, file: !1, line: 141, type: !6)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !26, file: !1, line: 142, type: !6)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !26, file: !1, line: 143, type: !6)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seems_ok", scope: !26, file: !1, line: 144, type: !5)
!36 = !DISubprogram(name: "FileConcat", scope: !1, file: !1, line: 166, type: !27, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*)* @FileConcat, variables: !37)
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 1, scope: !36, file: !1, line: 166, type: !6)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 2, scope: !36, file: !1, line: 166, type: !6)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "full", scope: !36, file: !1, line: 168, type: !6)
!41 = !DISubprogram(name: "FileAddSuffix", scope: !1, file: !1, line: 187, type: !27, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*)* @FileAddSuffix, variables: !42)
!42 = !{!43, !44, !45}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !41, file: !1, line: 187, type: !6)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sfx", arg: 2, scope: !41, file: !1, line: 187, type: !6)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !41, file: !1, line: 189, type: !6)
!46 = !DISubprogram(name: "EnvFileOpen", scope: !1, file: !1, line: 230, type: !47, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: %struct.__sFILE* (i8*, i8*, i8**)* @EnvFileOpen, variables: !110)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !6, !6, !109}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !51, line: 153, baseType: !52)
!51 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !51, line: 122, size: 1216, align: 64, elements: !53)
!53 = !{!54, !57, !58, !59, !61, !62, !67, !68, !69, !73, !77, !87, !93, !94, !97, !98, !102, !106, !107, !108}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !52, file: !51, line: 123, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !52, file: !51, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !52, file: !51, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !51, line: 126, baseType: !60, size: 16, align: 16, offset: 128)
!60 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !52, file: !51, line: 127, baseType: !60, size: 16, align: 16, offset: 144)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !52, file: !51, line: 128, baseType: !63, size: 128, align: 64, offset: 192)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !51, line: 88, size: 128, align: 64, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !63, file: !51, line: 89, baseType: !55, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !63, file: !51, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !52, file: !51, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !52, file: !51, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !52, file: !51, line: 133, baseType: !70, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!5, !4}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !52, file: !51, line: 134, baseType: !74, size: 64, align: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!5, !4, !6, !5}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !52, file: !51, line: 135, baseType: !78, size: 64, align: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !4, !81, !5}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !51, line: 77, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !83, line: 71, baseType: !84)
!83 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !85, line: 46, baseType: !86)
!85 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!86 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !52, file: !51, line: 136, baseType: !88, size: 64, align: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!5, !4, !91, !5}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !52, file: !51, line: 139, baseType: !63, size: 128, align: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !52, file: !51, line: 140, baseType: !95, size: 64, align: 64, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !51, line: 94, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !52, file: !51, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !52, file: !51, line: 144, baseType: !99, size: 24, align: 8, offset: 928)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 24, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 3)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !52, file: !51, line: 145, baseType: !103, size: 8, align: 8, offset: 952)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 1)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !52, file: !51, line: 148, baseType: !63, size: 128, align: 64, offset: 960)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !52, file: !51, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !51, line: 152, baseType: !81, size: 64, align: 64, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!110 = !{!111, !112, !113, !114, !115, !116, !117}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fname", arg: 1, scope: !46, file: !1, line: 230, type: !6)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "env", arg: 2, scope: !46, file: !1, line: 230, type: !6)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_dir", arg: 3, scope: !46, file: !1, line: 230, type: !109)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !46, file: !1, line: 232, type: !49)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !46, file: !1, line: 233, type: !6)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !46, file: !1, line: 234, type: !6)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "full", scope: !46, file: !1, line: 235, type: !118)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 1024)
!121 = !DISubprogram(name: "FileExists", scope: !1, file: !1, line: 267, type: !122, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @FileExists, variables: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{!5, !6}
!124 = !{!125, !126}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !121, file: !1, line: 267, type: !6)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !121, file: !1, line: 269, type: !49)
!127 = !{i32 2, !"Dwarf Version", i32 2}
!128 = !{i32 2, !"Debug Info Version", i32 700000003}
!129 = !{i32 1, !"PIC Level", i32 2}
!130 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!131 = !DIExpression()
!132 = !DILocation(line: 65, column: 19, scope: !9)
!133 = !DILocation(line: 71, column: 15, scope: !9)
!134 = !DILocation(line: 68, column: 9, scope: !9)
!135 = !DILocation(line: 72, column: 21, scope: !9)
!136 = !DILocation(line: 72, column: 10, scope: !9)
!137 = !DILocation(line: 72, column: 53, scope: !9)
!138 = !DILocation(line: 72, column: 36, scope: !9)
!139 = !DILocation(line: 69, column: 9, scope: !9)
!140 = !DILocation(line: 73, column: 22, scope: !9)
!141 = !DILocation(line: 67, column: 9, scope: !9)
!142 = !DILocation(line: 74, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !9, file: !1, line: 74, column: 7)
!144 = !DILocation(line: 74, column: 7, scope: !9)
!145 = !DILocation(line: 74, column: 31, scope: !143)
!146 = !DILocation(line: 75, column: 12, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 75, column: 12)
!148 = !{!149, !149, i64 0}
!149 = !{!"omnipotent char", !150, i64 0}
!150 = !{!"Simple C/C++ TBAA"}
!151 = !DILocation(line: 75, column: 18, scope: !147)
!152 = !DILocation(line: 75, column: 12, scope: !143)
!153 = !DILocation(line: 75, column: 42, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !1, line: 75, column: 31)
!155 = !DILocation(line: 75, column: 63, scope: !154)
!156 = !DILocation(line: 76, column: 42, scope: !157)
!157 = distinct !DILexicalBlock(scope: !147, file: !1, line: 76, column: 31)
!158 = !DILocation(line: 77, column: 3, scope: !9)
!159 = !DILocation(line: 77, column: 16, scope: !9)
!160 = !DILocation(line: 78, column: 3, scope: !9)
!161 = !DILocation(line: 98, column: 16, scope: !17)
!162 = !DILocation(line: 98, column: 26, scope: !17)
!163 = !DILocation(line: 104, column: 15, scope: !17)
!164 = !DILocation(line: 101, column: 9, scope: !17)
!165 = !DILocation(line: 105, column: 19, scope: !17)
!166 = !DILocation(line: 100, column: 9, scope: !17)
!167 = !DILocation(line: 106, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !17, file: !1, line: 106, column: 7)
!169 = !DILocation(line: 106, column: 7, scope: !17)
!170 = !DILocation(line: 106, column: 26, scope: !168)
!171 = !DILocation(line: 107, column: 26, scope: !168)
!172 = !DILocation(line: 109, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !17, file: !1, line: 109, column: 7)
!174 = !DILocation(line: 109, column: 7, scope: !17)
!175 = !DILocation(line: 110, column: 20, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 110, column: 9)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 109, column: 20)
!178 = !DILocation(line: 102, column: 9, scope: !17)
!179 = !DILocation(line: 110, column: 40, scope: !176)
!180 = !DILocation(line: 110, column: 9, scope: !177)
!181 = !DILocation(line: 111, column: 16, scope: !176)
!182 = !DILocation(line: 111, column: 7, scope: !176)
!183 = !DILocation(line: 114, column: 3, scope: !17)
!184 = !DILocation(line: 139, column: 25, scope: !26)
!185 = !DILocation(line: 139, column: 38, scope: !26)
!186 = !DILocation(line: 144, column: 9, scope: !26)
!187 = !DILocation(line: 146, column: 11, scope: !26)
!188 = !DILocation(line: 141, column: 9, scope: !26)
!189 = !DILocation(line: 147, column: 11, scope: !26)
!190 = !DILocation(line: 142, column: 9, scope: !26)
!191 = !DILocation(line: 148, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !26, file: !1, line: 148, column: 7)
!193 = !DILocation(line: 148, column: 27, scope: !192)
!194 = !DILocation(line: 149, column: 12, scope: !26)
!195 = !DILocation(line: 143, column: 9, scope: !26)
!196 = !DILocation(line: 150, column: 18, scope: !197)
!197 = distinct !DILexicalBlock(scope: !26, file: !1, line: 150, column: 7)
!198 = !DILocation(line: 150, column: 21, scope: !197)
!199 = !DILocation(line: 150, column: 43, scope: !197)
!200 = !DILocation(line: 150, column: 7, scope: !26)
!201 = !DILocation(line: 151, column: 5, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !1, line: 150, column: 49)
!203 = !DILocation(line: 152, column: 3, scope: !202)
!204 = !DILocation(line: 153, column: 3, scope: !26)
!205 = !DILocation(line: 154, column: 3, scope: !26)
!206 = !DILocation(line: 155, column: 3, scope: !26)
!207 = !DILocation(line: 166, column: 18, scope: !36)
!208 = !DILocation(line: 166, column: 29, scope: !36)
!209 = !DILocation(line: 170, column: 19, scope: !36)
!210 = !DILocation(line: 168, column: 9, scope: !36)
!211 = !DILocation(line: 171, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !36, file: !1, line: 171, column: 7)
!213 = !DILocation(line: 171, column: 13, scope: !212)
!214 = !DILocation(line: 171, column: 26, scope: !212)
!215 = !DILocation(line: 171, column: 7, scope: !36)
!216 = !DILocation(line: 172, column: 26, scope: !212)
!217 = !DILocation(line: 173, column: 3, scope: !36)
!218 = !DILocation(line: 187, column: 21, scope: !41)
!219 = !DILocation(line: 187, column: 37, scope: !41)
!220 = !DILocation(line: 190, column: 9, scope: !41)
!221 = !DILocation(line: 189, column: 9, scope: !41)
!222 = !DILocation(line: 191, column: 3, scope: !41)
!223 = !DILocation(line: 192, column: 3, scope: !41)
!224 = !DILocation(line: 230, column: 19, scope: !46)
!225 = !DILocation(line: 230, column: 32, scope: !46)
!226 = !DILocation(line: 230, column: 44, scope: !46)
!227 = !DILocation(line: 235, column: 3, scope: !46)
!228 = !DILocation(line: 235, column: 9, scope: !46)
!229 = !DILocation(line: 237, column: 11, scope: !230)
!230 = distinct !DILexicalBlock(scope: !46, file: !1, line: 237, column: 7)
!231 = !DILocation(line: 237, column: 7, scope: !46)
!232 = !DILocation(line: 238, column: 22, scope: !233)
!233 = distinct !DILexicalBlock(scope: !46, file: !1, line: 238, column: 7)
!234 = !DILocation(line: 238, column: 15, scope: !233)
!235 = !DILocation(line: 233, column: 9, scope: !46)
!236 = !DILocation(line: 238, column: 36, scope: !233)
!237 = !DILocation(line: 238, column: 7, scope: !46)
!238 = !DILocation(line: 232, column: 9, scope: !46)
!239 = !DILocation(line: 241, column: 8, scope: !46)
!240 = !DILocation(line: 234, column: 9, scope: !46)
!241 = !DILocation(line: 242, column: 12, scope: !46)
!242 = !DILocation(line: 242, column: 3, scope: !46)
!243 = !DILocation(line: 244, column: 18, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 244, column: 11)
!245 = distinct !DILexicalBlock(scope: !46, file: !1, line: 243, column: 5)
!246 = !DILocation(line: 244, column: 12, scope: !244)
!247 = !DILocation(line: 244, column: 40, scope: !244)
!248 = !DILocation(line: 244, column: 34, scope: !244)
!249 = !DILocation(line: 244, column: 32, scope: !244)
!250 = !DILocation(line: 244, column: 50, scope: !244)
!251 = !DILocation(line: 244, column: 55, scope: !244)
!252 = !DILocation(line: 244, column: 11, scope: !245)
!253 = !DILocation(line: 245, column: 4, scope: !254)
!254 = distinct !DILexicalBlock(scope: !244, file: !1, line: 245, column: 2)
!255 = !DILocation(line: 245, column: 16, scope: !254)
!256 = !DILocation(line: 246, column: 7, scope: !245)
!257 = !DILocation(line: 247, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !245, file: !1, line: 247, column: 11)
!259 = !DILocation(line: 247, column: 35, scope: !258)
!260 = !DILocation(line: 247, column: 11, scope: !245)
!261 = !DILocation(line: 248, column: 11, scope: !245)
!262 = !DILocation(line: 253, column: 15, scope: !263)
!263 = distinct !DILexicalBlock(scope: !46, file: !1, line: 253, column: 7)
!264 = !DILocation(line: 253, column: 7, scope: !46)
!265 = !DILocation(line: 253, column: 35, scope: !263)
!266 = !DILocation(line: 253, column: 33, scope: !263)
!267 = !{!268, !268, i64 0}
!268 = !{!"any pointer", !149, i64 0}
!269 = !DILocation(line: 253, column: 24, scope: !263)
!270 = !DILocation(line: 254, column: 3, scope: !46)
!271 = !DILocation(line: 256, column: 3, scope: !46)
!272 = !DILocation(line: 257, column: 1, scope: !46)
!273 = !DILocation(line: 267, column: 18, scope: !121)
!274 = !DILocation(line: 270, column: 13, scope: !275)
!275 = distinct !DILexicalBlock(scope: !121, file: !1, line: 270, column: 7)
!276 = !DILocation(line: 269, column: 9, scope: !121)
!277 = !DILocation(line: 270, column: 11, scope: !275)
!278 = !DILocation(line: 270, column: 7, scope: !121)
!279 = !DILocation(line: 270, column: 38, scope: !280)
!280 = distinct !DILexicalBlock(scope: !275, file: !1, line: 270, column: 36)
!281 = !DILocation(line: 270, column: 50, scope: !280)
!282 = !DILocation(line: 272, column: 1, scope: !121)
