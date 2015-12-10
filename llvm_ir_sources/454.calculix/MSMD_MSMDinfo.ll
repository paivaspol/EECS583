; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._MSMDinfo = type { i32, i32, double, i32, i32, %struct.__sFILE*, i32, i32, i32, i32, %struct._MSMDstageInfo*, double }
%struct._MSMDstageInfo = type { i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, double }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [91 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [51 x i8] c"\0A fatal error in MSMDinfo_print(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"\0A\0A MSMDinfo :\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"\0A    compressFlag = %d : \00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"compress graph, \00", align 1
@.str6 = private unnamed_addr constant [35 x i8] c"during elimination do not compress\00", align 1
@.str7 = private unnamed_addr constant [40 x i8] c"during elimination compress 2-adj nodes\00", align 1
@.str8 = private unnamed_addr constant [38 x i8] c"during elimination compress all nodes\00", align 1
@.str9 = private unnamed_addr constant [15 x i8] c"\0A unknown type\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"\0A    prioType = %d : \00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c" true updates\00", align 1
@.str12 = private unnamed_addr constant [21 x i8] c" approximate updates\00", align 1
@.str13 = private unnamed_addr constant [50 x i8] c" true updates for 2-adj nodes, others approximate\00", align 1
@.str14 = private unnamed_addr constant [14 x i8] c" unknown type\00", align 1
@.str15 = private unnamed_addr constant [22 x i8] c"\0A    stepType = %f : \00", align 1
@.str16 = private unnamed_addr constant [20 x i8] c" single elimination\00", align 1
@.str17 = private unnamed_addr constant [49 x i8] c" multiple elimination of nodes of mininum degree\00", align 1
@.str18 = private unnamed_addr constant [51 x i8] c" multiple elimination in range [mindeg, %f*mindeg]\00", align 1
@.str19 = private unnamed_addr constant [24 x i8] c"\0A    msglvl       = %d \00", align 1
@.str20 = private unnamed_addr constant [24 x i8] c"\0A    maxnbytes    = %d \00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"\0A    ordering cpu = %8.3f \00", align 1
@.str22 = private unnamed_addr constant [23 x i8] c"\0A    stage information\00", align 1
@.str23 = private unnamed_addr constant [70 x i8] c"\0A\0A stage #steps #fronts #weight #frontind     nzf          ops    CPU\00", align 1
@.str24 = private unnamed_addr constant [42 x i8] c"\0A   %3d %5d %6d %7d %9d %10d %12.0f %8.3f\00", align 1
@.str25 = private unnamed_addr constant [37 x i8] c"\0A total %5d %6d %7d %9d %10d %12.0f \00", align 1
@.str26 = private unnamed_addr constant [60 x i8] c"\0A\0A stage #nexact2 #exact3 #approx #check #indst #outmatched\00", align 1
@.str27 = private unnamed_addr constant [32 x i8] c"\0A   %3d %6d %7d %6d %7d %8d %8d\00", align 1
@.str28 = private unnamed_addr constant [32 x i8] c"\0A total %6d %7d %6d %7d %8d %8d\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct._MSMDinfo* @MSMDinfo_new() #0 {
  %1 = tail call i8* @malloc(i64 64) #6, !dbg !140
  tail call void @llvm.dbg.value(metadata %struct._MSMDinfo* %7, i64 0, metadata !110, metadata !144), !dbg !145
  %2 = icmp eq i8* %1, null, !dbg !140
  br i1 %2, label %3, label %6, !dbg !146

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !147, !tbaa !149
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 64, i32 21, i8* getelementptr inbounds ([91 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !147
  tail call void @exit(i32 -1) #7, !dbg !147
  unreachable, !dbg !147

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %1 to %struct._MSMDinfo*, !dbg !140
  tail call void @llvm.dbg.value(metadata %struct._MSMDinfo* %7, i64 0, metadata !115, metadata !144) #5, !dbg !153
  %8 = bitcast i8* %1 to i32*, !dbg !155
  store i32 1, i32* %8, align 4, !dbg !156, !tbaa !157
  %9 = getelementptr inbounds i8* %1, i64 4, !dbg !161
  %10 = bitcast i8* %9 to i32*, !dbg !161
  store i32 1, i32* %10, align 4, !dbg !162, !tbaa !163
  %11 = getelementptr inbounds i8* %1, i64 8, !dbg !164
  %12 = bitcast i8* %11 to double*, !dbg !164
  store double 1.000000e+00, double* %12, align 8, !dbg !165, !tbaa !166
  %13 = getelementptr inbounds i8* %1, i64 16, !dbg !167
  %14 = bitcast i8* %13 to i32*, !dbg !167
  store i32 0, i32* %14, align 4, !dbg !168, !tbaa !169
  %15 = getelementptr inbounds i8* %1, i64 20, !dbg !170
  %16 = bitcast i8* %15 to i32*, !dbg !170
  store i32 0, i32* %16, align 4, !dbg !171, !tbaa !172
  %17 = load i64* bitcast (%struct.__sFILE** @__stdoutp to i64*), align 8, !dbg !173, !tbaa !149
  %18 = getelementptr inbounds i8* %1, i64 24, !dbg !174
  %19 = bitcast i8* %18 to i64*, !dbg !175
  store i64 %17, i64* %19, align 8, !dbg !175, !tbaa !176
  %20 = getelementptr inbounds i8* %1, i64 32, !dbg !177
  tail call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 32, i32 4, i1 false) #5, !dbg !178
  ret %struct._MSMDinfo* %7, !dbg !179
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @MSMDinfo_setDefaultFields(%struct._MSMDinfo* nocapture %info) #0 {
  tail call void @llvm.dbg.value(metadata %struct._MSMDinfo* %info, i64 0, metadata !115, metadata !144), !dbg !180
  %1 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0, !dbg !181
  store i32 1, i32* %1, align 4, !dbg !182, !tbaa !157
  %2 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1, !dbg !183
  store i32 1, i32* %2, align 4, !dbg !184, !tbaa !163
  %3 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2, !dbg !185
  store double 1.000000e+00, double* %3, align 8, !dbg !186, !tbaa !166
  %4 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 3, !dbg !187
  store i32 0, i32* %4, align 4, !dbg !188, !tbaa !169
  %5 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !189
  store i32 0, i32* %5, align 4, !dbg !190, !tbaa !172
  %6 = load i64* bitcast (%struct.__sFILE** @__stdoutp to i64*), align 8, !dbg !191, !tbaa !149
  %7 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !192
  %8 = bitcast %struct.__sFILE** %7 to i64*, !dbg !193
  store i64 %6, i64* %8, align 8, !dbg !193, !tbaa !176
  %9 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6, !dbg !194
  %10 = bitcast i32* %9 to i8*, !dbg !195
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 32, i32 4, i1 false), !dbg !196
  ret void, !dbg !195
}

; Function Attrs: nounwind optsize ssp uwtable
define void @MSMDinfo_clearData(%struct._MSMDinfo* nocapture %info) #0 {
  tail call void @llvm.dbg.value(metadata %struct._MSMDinfo* %info, i64 0, metadata !118, metadata !144), !dbg !197
  %1 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !198
  %2 = load %struct._MSMDstageInfo** %1, align 8, !dbg !198, !tbaa !200
  %3 = icmp eq %struct._MSMDstageInfo* %2, null, !dbg !201
  br i1 %3, label %6, label %4, !dbg !202

; <label>:4                                       ; preds = %0
  %5 = bitcast %struct._MSMDstageInfo* %2 to i8*, !dbg !203
  tail call void @free(i8* %5) #8, !dbg !203
  store %struct._MSMDstageInfo* null, %struct._MSMDstageInfo** %1, align 8, !dbg !203, !tbaa !200
  br label %6, !dbg !203

; <label>:6                                       ; preds = %0, %4
  tail call void @llvm.dbg.value(metadata %struct._MSMDinfo* %info, i64 0, metadata !115, metadata !144) #5, !dbg !207
  %7 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0, !dbg !209
  store i32 1, i32* %7, align 4, !dbg !210, !tbaa !157
  %8 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1, !dbg !211
  store i32 1, i32* %8, align 4, !dbg !212, !tbaa !163
  %9 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2, !dbg !213
  store double 1.000000e+00, double* %9, align 8, !dbg !214, !tbaa !166
  %10 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 3, !dbg !215
  store i32 0, i32* %10, align 4, !dbg !216, !tbaa !169
  %11 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !217
  store i32 0, i32* %11, align 4, !dbg !218, !tbaa !172
  %12 = load i64* bitcast (%struct.__sFILE** @__stdoutp to i64*), align 8, !dbg !219, !tbaa !149
  %13 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !220
  %14 = bitcast %struct.__sFILE** %13 to i64*, !dbg !221
  store i64 %12, i64* %14, align 8, !dbg !221, !tbaa !176
  %15 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6, !dbg !222
  %16 = bitcast i32* %15 to i8*, !dbg !223
  tail call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 32, i32 4, i1 false) #5, !dbg !224
  ret void, !dbg !225
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @MSMDinfo_free(%struct._MSMDinfo* %info) #0 {
  tail call void @llvm.dbg.value(metadata %struct._MSMDinfo* %info, i64 0, metadata !121, metadata !144), !dbg !226
  tail call void @MSMDinfo_clearData(%struct._MSMDinfo* %info) #8, !dbg !227
  %1 = icmp eq %struct._MSMDinfo* %info, null, !dbg !228
  br i1 %1, label %4, label %2, !dbg !230

; <label>:2                                       ; preds = %0
  %3 = bitcast %struct._MSMDinfo* %info to i8*, !dbg !231
  tail call void @free(i8* %3) #8, !dbg !231
  tail call void @llvm.dbg.value(metadata %struct._MSMDinfo* null, i64 0, metadata !121, metadata !144), !dbg !226
  br label %4, !dbg !231

; <label>:4                                       ; preds = %0, %2
  ret void, !dbg !233
}

; Function Attrs: nounwind optsize ssp uwtable
define void @MSMDinfo_print(%struct._MSMDinfo* %info, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._MSMDinfo* %info, i64 0, metadata !126, metadata !144), !dbg !234
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !127, metadata !144), !dbg !235
  %1 = icmp eq %struct._MSMDinfo* %info, null, !dbg !236
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !238
  %or.cond = or i1 %1, %2, !dbg !239
  br i1 %or.cond, label %3, label %6, !dbg !239

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !240, !tbaa !149
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), %struct._MSMDinfo* %info, %struct.__sFILE* %fp) #6, !dbg !242
  tail call void @exit(i32 -1) #7, !dbg !243
  unreachable, !dbg !243

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %fp), !dbg !244
  %8 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0, !dbg !245
  %9 = load i32* %8, align 4, !dbg !245, !tbaa !157
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0), i32 %9) #6, !dbg !246
  %11 = load i32* %8, align 4, !dbg !247, !tbaa !157
  %12 = icmp sgt i32 %11, 3, !dbg !249
  br i1 %12, label %13, label %15, !dbg !250

; <label>:13                                      ; preds = %6
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %fp), !dbg !251
  %.pre = load i32* %8, align 4, !dbg !253, !tbaa !157
  br label %15, !dbg !254

; <label>:15                                      ; preds = %13, %6
  %16 = phi i32 [ %.pre, %13 ], [ %11, %6 ]
  %17 = srem i32 %16, 4, !dbg !255
  switch i32 %17, label %24 [
    i32 0, label %18
    i32 1, label %20
    i32 2, label %22
  ], !dbg !256

; <label>:18                                      ; preds = %15
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i64 34, i64 1, %struct.__sFILE* %fp), !dbg !257
  br label %26, !dbg !259

; <label>:20                                      ; preds = %15
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i64 39, i64 1, %struct.__sFILE* %fp), !dbg !260
  br label %26, !dbg !261

; <label>:22                                      ; preds = %15
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str8, i64 0, i64 0), i64 37, i64 1, %struct.__sFILE* %fp), !dbg !262
  br label %26, !dbg !263

; <label>:24                                      ; preds = %15
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %fp), !dbg !264
  br label %26, !dbg !265

; <label>:26                                      ; preds = %24, %22, %20, %18
  %27 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1, !dbg !266
  %28 = load i32* %27, align 4, !dbg !266, !tbaa !163
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i32 %28) #6, !dbg !267
  %30 = load i32* %27, align 4, !dbg !268, !tbaa !163
  switch i32 %30, label %37 [
    i32 1, label %31
    i32 2, label %33
    i32 3, label %35
  ], !dbg !269

; <label>:31                                      ; preds = %26
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %fp), !dbg !270
  br label %39, !dbg !272

; <label>:33                                      ; preds = %26
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str12, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* %fp), !dbg !273
  br label %39, !dbg !274

; <label>:35                                      ; preds = %26
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str13, i64 0, i64 0), i64 49, i64 1, %struct.__sFILE* %fp), !dbg !275
  br label %39, !dbg !276

; <label>:37                                      ; preds = %26
  %38 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %fp), !dbg !277
  br label %39, !dbg !278

; <label>:39                                      ; preds = %37, %35, %33, %31
  %40 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2, !dbg !279
  %41 = load double* %40, align 8, !dbg !279, !tbaa !166
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0), double %41) #6, !dbg !280
  %43 = load double* %40, align 8, !dbg !281, !tbaa !166
  %44 = fcmp olt double %43, 1.000000e+00, !dbg !283
  br i1 %44, label %45, label %47, !dbg !284

; <label>:45                                      ; preds = %39
  %46 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str16, i64 0, i64 0), i64 19, i64 1, %struct.__sFILE* %fp), !dbg !285
  br label %53, !dbg !287

; <label>:47                                      ; preds = %39
  %48 = fcmp oeq double %43, 1.000000e+00, !dbg !288
  br i1 %48, label %49, label %51, !dbg !290

; <label>:49                                      ; preds = %47
  %50 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str17, i64 0, i64 0), i64 48, i64 1, %struct.__sFILE* %fp), !dbg !291
  br label %53, !dbg !293

; <label>:51                                      ; preds = %47
  %52 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str18, i64 0, i64 0), double %43) #6, !dbg !294
  br label %53

; <label>:53                                      ; preds = %49, %51, %45
  %54 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !296
  %55 = load i32* %54, align 4, !dbg !296, !tbaa !172
  %56 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str19, i64 0, i64 0), i32 %55) #6, !dbg !297
  %57 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6, !dbg !298
  %58 = load i32* %57, align 4, !dbg !298, !tbaa !299
  %59 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str20, i64 0, i64 0), i32 %58) #6, !dbg !300
  %60 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 11, !dbg !301
  %61 = load double* %60, align 8, !dbg !301, !tbaa !302
  %62 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), double %61) #6, !dbg !303
  %63 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str22, i64 0, i64 0), i64 22, i64 1, %struct.__sFILE* %fp), !dbg !304
  %64 = tail call i64 @fwrite(i8* getelementptr inbounds ([70 x i8]* @.str23, i64 0, i64 0), i64 69, i64 1, %struct.__sFILE* %fp), !dbg !305
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !128, metadata !144), !dbg !306
  %65 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !307
  %66 = load %struct._MSMDstageInfo** %65, align 8, !dbg !307, !tbaa !200
  tail call void @llvm.dbg.value(metadata %struct._MSMDstageInfo* %66, i64 0, metadata !129, metadata !144), !dbg !309
  %67 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 9, !dbg !310
  %68 = load i32* %67, align 4, !dbg !310, !tbaa !312
  %69 = icmp slt i32 %68, 0, !dbg !313
  %70 = getelementptr inbounds %struct._MSMDstageInfo* %66, i64 0, i32 0, !dbg !314
  %71 = load i32* %70, align 4, !dbg !314, !tbaa !315
  %72 = getelementptr inbounds %struct._MSMDstageInfo* %66, i64 0, i32 1, !dbg !317
  %73 = load i32* %72, align 4, !dbg !317, !tbaa !318
  %74 = getelementptr inbounds %struct._MSMDstageInfo* %66, i64 0, i32 2, !dbg !319
  %75 = load i32* %74, align 4, !dbg !319, !tbaa !320
  %76 = getelementptr inbounds %struct._MSMDstageInfo* %66, i64 0, i32 3, !dbg !321
  %77 = load i32* %76, align 4, !dbg !321, !tbaa !322
  %78 = getelementptr inbounds %struct._MSMDstageInfo* %66, i64 0, i32 4, !dbg !323
  %79 = load i32* %78, align 4, !dbg !323, !tbaa !324
  %80 = getelementptr inbounds %struct._MSMDstageInfo* %66, i64 0, i32 5, !dbg !325
  %81 = load double* %80, align 8, !dbg !325, !tbaa !326
  br i1 %69, label %._crit_edge25, label %.lr.ph24, !dbg !327

.lr.ph24:                                         ; preds = %53, %.lr.ph24
  %82 = phi double [ %106, %.lr.ph24 ], [ %81, %53 ]
  %83 = phi i32 [ %104, %.lr.ph24 ], [ %79, %53 ]
  %84 = phi i32 [ %102, %.lr.ph24 ], [ %77, %53 ]
  %85 = phi i32 [ %100, %.lr.ph24 ], [ %75, %53 ]
  %86 = phi i32 [ %98, %.lr.ph24 ], [ %73, %53 ]
  %87 = phi i32 [ %96, %.lr.ph24 ], [ %71, %53 ]
  %stageinfo.022 = phi %struct._MSMDstageInfo* [ %92, %.lr.ph24 ], [ %66, %53 ]
  %istage.021 = phi i32 [ %91, %.lr.ph24 ], [ 0, %53 ]
  %88 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.022, i64 0, i32 12, !dbg !328
  %89 = load double* %88, align 8, !dbg !328, !tbaa !330
  %90 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([42 x i8]* @.str24, i64 0, i64 0), i32 %istage.021, i32 %87, i32 %86, i32 %85, i32 %84, i32 %83, double %82, double %89) #6, !dbg !331
  %91 = add nuw nsw i32 %istage.021, 1, !dbg !332
  tail call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !128, metadata !144), !dbg !306
  %92 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.022, i64 1, !dbg !333
  tail call void @llvm.dbg.value(metadata %struct._MSMDstageInfo* %92, i64 0, metadata !129, metadata !144), !dbg !309
  %93 = load i32* %67, align 4, !dbg !310, !tbaa !312
  %94 = icmp slt i32 %istage.021, %93, !dbg !313
  %95 = getelementptr inbounds %struct._MSMDstageInfo* %92, i64 0, i32 0, !dbg !314
  %96 = load i32* %95, align 4, !dbg !314, !tbaa !315
  %97 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.022, i64 1, i32 1, !dbg !317
  %98 = load i32* %97, align 4, !dbg !317, !tbaa !318
  %99 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.022, i64 1, i32 2, !dbg !319
  %100 = load i32* %99, align 4, !dbg !319, !tbaa !320
  %101 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.022, i64 1, i32 3, !dbg !321
  %102 = load i32* %101, align 4, !dbg !321, !tbaa !322
  %103 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.022, i64 1, i32 4, !dbg !323
  %104 = load i32* %103, align 4, !dbg !323, !tbaa !324
  %105 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.022, i64 1, i32 5, !dbg !325
  %106 = load double* %105, align 8, !dbg !325, !tbaa !326
  br i1 %94, label %.lr.ph24, label %._crit_edge25, !dbg !327

._crit_edge25:                                    ; preds = %.lr.ph24, %53
  %.lcssa13 = phi double [ %81, %53 ], [ %106, %.lr.ph24 ]
  %.lcssa12 = phi i32 [ %79, %53 ], [ %104, %.lr.ph24 ]
  %.lcssa11 = phi i32 [ %77, %53 ], [ %102, %.lr.ph24 ]
  %.lcssa10 = phi i32 [ %75, %53 ], [ %100, %.lr.ph24 ]
  %.lcssa9 = phi i32 [ %73, %53 ], [ %98, %.lr.ph24 ]
  %.lcssa8 = phi i32 [ %71, %53 ], [ %96, %.lr.ph24 ]
  %107 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([37 x i8]* @.str25, i64 0, i64 0), i32 %.lcssa8, i32 %.lcssa9, i32 %.lcssa10, i32 %.lcssa11, i32 %.lcssa12, double %.lcssa13) #6, !dbg !334
  %108 = tail call i64 @fwrite(i8* getelementptr inbounds ([60 x i8]* @.str26, i64 0, i64 0), i64 59, i64 1, %struct.__sFILE* %fp), !dbg !335
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !128, metadata !144), !dbg !306
  %109 = load %struct._MSMDstageInfo** %65, align 8, !dbg !336, !tbaa !200
  tail call void @llvm.dbg.value(metadata %struct._MSMDstageInfo* %109, i64 0, metadata !129, metadata !144), !dbg !309
  %110 = load i32* %67, align 4, !dbg !338, !tbaa !312
  %111 = icmp slt i32 %110, 0, !dbg !340
  %112 = getelementptr inbounds %struct._MSMDstageInfo* %109, i64 0, i32 6, !dbg !341
  %113 = load i32* %112, align 4, !dbg !341, !tbaa !342
  %114 = getelementptr inbounds %struct._MSMDstageInfo* %109, i64 0, i32 7, !dbg !343
  %115 = load i32* %114, align 4, !dbg !343, !tbaa !344
  %116 = getelementptr inbounds %struct._MSMDstageInfo* %109, i64 0, i32 8, !dbg !345
  %117 = load i32* %116, align 4, !dbg !345, !tbaa !346
  %118 = getelementptr inbounds %struct._MSMDstageInfo* %109, i64 0, i32 9, !dbg !347
  %119 = load i32* %118, align 4, !dbg !347, !tbaa !348
  %120 = getelementptr inbounds %struct._MSMDstageInfo* %109, i64 0, i32 10, !dbg !349
  %121 = load i32* %120, align 4, !dbg !349, !tbaa !350
  %122 = getelementptr inbounds %struct._MSMDstageInfo* %109, i64 0, i32 11, !dbg !351
  %123 = load i32* %122, align 4, !dbg !351, !tbaa !352
  br i1 %111, label %._crit_edge, label %.lr.ph, !dbg !353

.lr.ph:                                           ; preds = %._crit_edge25, %.lr.ph
  %124 = phi i32 [ %146, %.lr.ph ], [ %123, %._crit_edge25 ]
  %125 = phi i32 [ %144, %.lr.ph ], [ %121, %._crit_edge25 ]
  %126 = phi i32 [ %142, %.lr.ph ], [ %119, %._crit_edge25 ]
  %127 = phi i32 [ %140, %.lr.ph ], [ %117, %._crit_edge25 ]
  %128 = phi i32 [ %138, %.lr.ph ], [ %115, %._crit_edge25 ]
  %129 = phi i32 [ %136, %.lr.ph ], [ %113, %._crit_edge25 ]
  %stageinfo.115 = phi %struct._MSMDstageInfo* [ %132, %.lr.ph ], [ %109, %._crit_edge25 ]
  %istage.114 = phi i32 [ %131, %.lr.ph ], [ 0, %._crit_edge25 ]
  %130 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str27, i64 0, i64 0), i32 %istage.114, i32 %129, i32 %128, i32 %127, i32 %126, i32 %125, i32 %124) #6, !dbg !354
  %131 = add nuw nsw i32 %istage.114, 1, !dbg !356
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !128, metadata !144), !dbg !306
  %132 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.115, i64 1, !dbg !357
  tail call void @llvm.dbg.value(metadata %struct._MSMDstageInfo* %132, i64 0, metadata !129, metadata !144), !dbg !309
  %133 = load i32* %67, align 4, !dbg !338, !tbaa !312
  %134 = icmp slt i32 %istage.114, %133, !dbg !340
  %135 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.115, i64 1, i32 6, !dbg !341
  %136 = load i32* %135, align 4, !dbg !341, !tbaa !342
  %137 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.115, i64 1, i32 7, !dbg !343
  %138 = load i32* %137, align 4, !dbg !343, !tbaa !344
  %139 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.115, i64 1, i32 8, !dbg !345
  %140 = load i32* %139, align 4, !dbg !345, !tbaa !346
  %141 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.115, i64 1, i32 9, !dbg !347
  %142 = load i32* %141, align 4, !dbg !347, !tbaa !348
  %143 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.115, i64 1, i32 10, !dbg !349
  %144 = load i32* %143, align 4, !dbg !349, !tbaa !350
  %145 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.115, i64 1, i32 11, !dbg !351
  %146 = load i32* %145, align 4, !dbg !351, !tbaa !352
  br i1 %134, label %.lr.ph, label %._crit_edge, !dbg !353

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge25
  %.lcssa6 = phi i32 [ %123, %._crit_edge25 ], [ %146, %.lr.ph ]
  %.lcssa5 = phi i32 [ %121, %._crit_edge25 ], [ %144, %.lr.ph ]
  %.lcssa4 = phi i32 [ %119, %._crit_edge25 ], [ %142, %.lr.ph ]
  %.lcssa3 = phi i32 [ %117, %._crit_edge25 ], [ %140, %.lr.ph ]
  %.lcssa2 = phi i32 [ %115, %._crit_edge25 ], [ %138, %.lr.ph ]
  %.lcssa = phi i32 [ %113, %._crit_edge25 ], [ %136, %.lr.ph ]
  %147 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0), i32 %.lcssa, i32 %.lcssa2, i32 %.lcssa3, i32 %.lcssa4, i32 %.lcssa5, i32 %.lcssa6) #6, !dbg !358
  ret void, !dbg !359
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @MSMDinfo_isValid(%struct._MSMDinfo* readonly %info) #3 {
  tail call void @llvm.dbg.value(metadata %struct._MSMDinfo* %info, i64 0, metadata !134, metadata !144), !dbg !360
  %1 = icmp eq %struct._MSMDinfo* %info, null, !dbg !361
  br i1 %1, label %11, label %2, !dbg !363

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0, !dbg !364
  %4 = load i32* %3, align 4, !dbg !364, !tbaa !157
  %5 = icmp eq i32 %4, 3, !dbg !365
  %6 = icmp ugt i32 %4, 6, !dbg !366
  %7 = or i1 %6, %5, !dbg !366
  br i1 %7, label %11, label %8, !dbg !366

; <label>:8                                       ; preds = %2
  %9 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1, !dbg !367
  %10 = load i32* %9, align 4, !dbg !367, !tbaa !163
  %.off = add i32 %10, -1, !dbg !368
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !135, metadata !144), !dbg !369
  %not. = icmp ult i32 %.off, 4, !dbg !368
  %. = zext i1 %not. to i32, !dbg !368
  ret i32 %., !dbg !368

; <label>:11                                      ; preds = %0, %2
  ret i32 0, !dbg !370
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!136, !137, !138}
!llvm.ident = !{!139}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !103, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !102, !36, !45}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MSMDinfo", file: !6, line: 100, size: 512, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../MSMD.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !13, !14, !15, !79, !80, !81, !82, !83, !101}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "compressFlag", scope: !5, file: !6, line: 101, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "prioType", scope: !5, file: !6, line: 102, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "stepType", scope: !5, file: !6, line: 103, baseType: !12, size: 64, align: 64, offset: 64)
!12 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !5, file: !6, line: 104, baseType: !9, size: 32, align: 32, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !5, file: !6, line: 105, baseType: !9, size: 32, align: 32, offset: 160)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !5, file: !6, line: 106, baseType: !16, size: 64, align: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 153, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !18, line: 122, size: 1216, align: 64, elements: !20)
!20 = !{!21, !24, !25, !26, !28, !29, !34, !35, !37, !41, !47, !57, !63, !64, !67, !68, !72, !76, !77, !78}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !19, file: !18, line: 123, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !19, file: !18, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !19, file: !18, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !18, line: 126, baseType: !27, size: 16, align: 16, offset: 128)
!27 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !19, file: !18, line: 127, baseType: !27, size: 16, align: 16, offset: 144)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !19, file: !18, line: 128, baseType: !30, size: 128, align: 64, offset: 192)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !18, line: 88, size: 128, align: 64, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !30, file: !18, line: 89, baseType: !22, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !30, file: !18, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !19, file: !18, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !19, file: !18, line: 132, baseType: !36, size: 64, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !19, file: !18, line: 133, baseType: !38, size: 64, align: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!9, !36}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !19, file: !18, line: 134, baseType: !42, size: 64, align: 64, offset: 512)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!9, !36, !45, !9}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !19, file: !18, line: 135, baseType: !48, size: 64, align: 64, offset: 576)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !36, !51, !9}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !18, line: 77, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !53, line: 71, baseType: !54)
!53 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !55, line: 46, baseType: !56)
!55 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!56 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !19, file: !18, line: 136, baseType: !58, size: 64, align: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!9, !36, !61, !9}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !19, file: !18, line: 139, baseType: !30, size: 128, align: 64, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !19, file: !18, line: 140, baseType: !65, size: 64, align: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !18, line: 94, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !19, file: !18, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !19, file: !18, line: 144, baseType: !69, size: 24, align: 8, offset: 928)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, align: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !19, file: !18, line: 145, baseType: !73, size: 8, align: 8, offset: 952)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, align: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !19, file: !18, line: 148, baseType: !30, size: 128, align: 64, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !19, file: !18, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !18, line: 152, baseType: !51, size: 64, align: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "maxnbytes", scope: !5, file: !6, line: 107, baseType: !9, size: 32, align: 32, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !5, file: !6, line: 108, baseType: !9, size: 32, align: 32, offset: 288)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "istage", scope: !5, file: !6, line: 109, baseType: !9, size: 32, align: 32, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nstage", scope: !5, file: !6, line: 110, baseType: !9, size: 32, align: 32, offset: 352)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "stageInfo", scope: !5, file: !6, line: 111, baseType: !84, size: 64, align: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSMDstageInfo", file: !6, line: 17, baseType: !86)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MSMDstageInfo", file: !6, line: 132, size: 512, align: 64, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "nstep", scope: !86, file: !6, line: 133, baseType: !9, size: 32, align: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "nfront", scope: !86, file: !6, line: 134, baseType: !9, size: 32, align: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "welim", scope: !86, file: !6, line: 135, baseType: !9, size: 32, align: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "nfind", scope: !86, file: !6, line: 136, baseType: !9, size: 32, align: 32, offset: 96)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "nzf", scope: !86, file: !6, line: 137, baseType: !9, size: 32, align: 32, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !86, file: !6, line: 138, baseType: !12, size: 64, align: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "nexact2", scope: !86, file: !6, line: 139, baseType: !9, size: 32, align: 32, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "nexact3", scope: !86, file: !6, line: 140, baseType: !9, size: 32, align: 32, offset: 288)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "napprox", scope: !86, file: !6, line: 141, baseType: !9, size: 32, align: 32, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ncheck", scope: !86, file: !6, line: 142, baseType: !9, size: 32, align: 32, offset: 352)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "nindst", scope: !86, file: !6, line: 143, baseType: !9, size: 32, align: 32, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "noutmtch", scope: !86, file: !6, line: 144, baseType: !9, size: 32, align: 32, offset: 416)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !86, file: !6, line: 145, baseType: !12, size: 64, align: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "totalCPU", scope: !5, file: !6, line: 112, baseType: !12, size: 64, align: 64, offset: 448)
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !{!104, !111, !116, !119, !122, !130}
!104 = !DISubprogram(name: "MSMDinfo_new", scope: !1, file: !1, line: 16, type: !105, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._MSMDinfo* ()* @MSMDinfo_new, variables: !109)
!105 = !DISubroutineType(types: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSMDinfo", file: !6, line: 16, baseType: !5)
!109 = !{!110}
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !104, file: !1, line: 19, type: !107)
!111 = !DISubprogram(name: "MSMDinfo_setDefaultFields", scope: !1, file: !1, line: 35, type: !112, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._MSMDinfo*)* @MSMDinfo_setDefaultFields, variables: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !107}
!114 = !{!115}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !111, file: !1, line: 36, type: !107)
!116 = !DISubprogram(name: "MSMDinfo_clearData", scope: !1, file: !1, line: 62, type: !112, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._MSMDinfo*)* @MSMDinfo_clearData, variables: !117)
!117 = !{!118}
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !116, file: !1, line: 63, type: !107)
!119 = !DISubprogram(name: "MSMDinfo_free", scope: !1, file: !1, line: 81, type: !112, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._MSMDinfo*)* @MSMDinfo_free, variables: !120)
!120 = !{!121}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !119, file: !1, line: 82, type: !107)
!122 = !DISubprogram(name: "MSMDinfo_print", scope: !1, file: !1, line: 98, type: !123, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._MSMDinfo*, %struct.__sFILE*)* @MSMDinfo_print, variables: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !107, !16}
!125 = !{!126, !127, !128, !129}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !122, file: !1, line: 99, type: !107)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !122, file: !1, line: 100, type: !16)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "istage", scope: !122, file: !1, line: 102, type: !9)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stageinfo", scope: !122, file: !1, line: 103, type: !84)
!130 = !DISubprogram(name: "MSMDinfo_isValid", scope: !1, file: !1, line: 195, type: !131, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._MSMDinfo*)* @MSMDinfo_isValid, variables: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!9, !107}
!133 = !{!134, !135}
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !130, file: !1, line: 196, type: !107)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !130, file: !1, line: 198, type: !9)
!136 = !{i32 2, !"Dwarf Version", i32 2}
!137 = !{i32 2, !"Debug Info Version", i32 700000003}
!138 = !{i32 1, !"PIC Level", i32 2}
!139 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!140 = !DILocation(line: 21, column: 1, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 21, column: 1)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 21, column: 1)
!143 = distinct !DILexicalBlock(scope: !104, file: !1, line: 21, column: 1)
!144 = !DIExpression()
!145 = !DILocation(line: 19, column: 13, scope: !104)
!146 = !DILocation(line: 21, column: 1, scope: !142)
!147 = !DILocation(line: 21, column: 1, scope: !148)
!148 = distinct !DILexicalBlock(scope: !141, file: !1, line: 21, column: 1)
!149 = !{!150, !150, i64 0}
!150 = !{!"any pointer", !151, i64 0}
!151 = !{!"omnipotent char", !152, i64 0}
!152 = !{!"Simple C/C++ TBAA"}
!153 = !DILocation(line: 36, column: 16, scope: !111, inlinedAt: !154)
!154 = distinct !DILocation(line: 22, column: 1, scope: !104)
!155 = !DILocation(line: 38, column: 7, scope: !111, inlinedAt: !154)
!156 = !DILocation(line: 38, column: 20, scope: !111, inlinedAt: !154)
!157 = !{!158, !159, i64 0}
!158 = !{!"_MSMDinfo", !159, i64 0, !159, i64 4, !160, i64 8, !159, i64 16, !159, i64 20, !150, i64 24, !159, i64 32, !159, i64 36, !159, i64 40, !159, i64 44, !150, i64 48, !160, i64 56}
!159 = !{!"int", !151, i64 0}
!160 = !{!"double", !151, i64 0}
!161 = !DILocation(line: 39, column: 7, scope: !111, inlinedAt: !154)
!162 = !DILocation(line: 39, column: 20, scope: !111, inlinedAt: !154)
!163 = !{!158, !159, i64 4}
!164 = !DILocation(line: 40, column: 7, scope: !111, inlinedAt: !154)
!165 = !DILocation(line: 40, column: 20, scope: !111, inlinedAt: !154)
!166 = !{!158, !160, i64 8}
!167 = !DILocation(line: 41, column: 7, scope: !111, inlinedAt: !154)
!168 = !DILocation(line: 41, column: 20, scope: !111, inlinedAt: !154)
!169 = !{!158, !159, i64 16}
!170 = !DILocation(line: 42, column: 7, scope: !111, inlinedAt: !154)
!171 = !DILocation(line: 42, column: 20, scope: !111, inlinedAt: !154)
!172 = !{!158, !159, i64 20}
!173 = !DILocation(line: 43, column: 22, scope: !111, inlinedAt: !154)
!174 = !DILocation(line: 43, column: 7, scope: !111, inlinedAt: !154)
!175 = !DILocation(line: 43, column: 20, scope: !111, inlinedAt: !154)
!176 = !{!158, !150, i64 24}
!177 = !DILocation(line: 44, column: 7, scope: !111, inlinedAt: !154)
!178 = !DILocation(line: 45, column: 20, scope: !111, inlinedAt: !154)
!179 = !DILocation(line: 24, column: 1, scope: !104)
!180 = !DILocation(line: 36, column: 16, scope: !111)
!181 = !DILocation(line: 38, column: 7, scope: !111)
!182 = !DILocation(line: 38, column: 20, scope: !111)
!183 = !DILocation(line: 39, column: 7, scope: !111)
!184 = !DILocation(line: 39, column: 20, scope: !111)
!185 = !DILocation(line: 40, column: 7, scope: !111)
!186 = !DILocation(line: 40, column: 20, scope: !111)
!187 = !DILocation(line: 41, column: 7, scope: !111)
!188 = !DILocation(line: 41, column: 20, scope: !111)
!189 = !DILocation(line: 42, column: 7, scope: !111)
!190 = !DILocation(line: 42, column: 20, scope: !111)
!191 = !DILocation(line: 43, column: 22, scope: !111)
!192 = !DILocation(line: 43, column: 7, scope: !111)
!193 = !DILocation(line: 43, column: 20, scope: !111)
!194 = !DILocation(line: 44, column: 7, scope: !111)
!195 = !DILocation(line: 51, column: 1, scope: !111)
!196 = !DILocation(line: 45, column: 20, scope: !111)
!197 = !DILocation(line: 63, column: 16, scope: !116)
!198 = !DILocation(line: 65, column: 12, scope: !199)
!199 = distinct !DILexicalBlock(scope: !116, file: !1, line: 65, column: 6)
!200 = !{!158, !150, i64 48}
!201 = !DILocation(line: 65, column: 23, scope: !199)
!202 = !DILocation(line: 65, column: 6, scope: !116)
!203 = !DILocation(line: 66, column: 4, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 66, column: 4)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 66, column: 4)
!206 = distinct !DILexicalBlock(scope: !199, file: !1, line: 65, column: 33)
!207 = !DILocation(line: 36, column: 16, scope: !111, inlinedAt: !208)
!208 = distinct !DILocation(line: 68, column: 1, scope: !116)
!209 = !DILocation(line: 38, column: 7, scope: !111, inlinedAt: !208)
!210 = !DILocation(line: 38, column: 20, scope: !111, inlinedAt: !208)
!211 = !DILocation(line: 39, column: 7, scope: !111, inlinedAt: !208)
!212 = !DILocation(line: 39, column: 20, scope: !111, inlinedAt: !208)
!213 = !DILocation(line: 40, column: 7, scope: !111, inlinedAt: !208)
!214 = !DILocation(line: 40, column: 20, scope: !111, inlinedAt: !208)
!215 = !DILocation(line: 41, column: 7, scope: !111, inlinedAt: !208)
!216 = !DILocation(line: 41, column: 20, scope: !111, inlinedAt: !208)
!217 = !DILocation(line: 42, column: 7, scope: !111, inlinedAt: !208)
!218 = !DILocation(line: 42, column: 20, scope: !111, inlinedAt: !208)
!219 = !DILocation(line: 43, column: 22, scope: !111, inlinedAt: !208)
!220 = !DILocation(line: 43, column: 7, scope: !111, inlinedAt: !208)
!221 = !DILocation(line: 43, column: 20, scope: !111, inlinedAt: !208)
!222 = !DILocation(line: 44, column: 7, scope: !111, inlinedAt: !208)
!223 = !DILocation(line: 51, column: 1, scope: !111, inlinedAt: !208)
!224 = !DILocation(line: 45, column: 20, scope: !111, inlinedAt: !208)
!225 = !DILocation(line: 70, column: 1, scope: !116)
!226 = !DILocation(line: 82, column: 16, scope: !119)
!227 = !DILocation(line: 84, column: 1, scope: !119)
!228 = !DILocation(line: 85, column: 1, scope: !229)
!229 = distinct !DILexicalBlock(scope: !119, file: !1, line: 85, column: 1)
!230 = !DILocation(line: 85, column: 1, scope: !119)
!231 = !DILocation(line: 85, column: 1, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !1, line: 85, column: 1)
!233 = !DILocation(line: 87, column: 1, scope: !119)
!234 = !DILocation(line: 99, column: 17, scope: !122)
!235 = !DILocation(line: 100, column: 17, scope: !122)
!236 = !DILocation(line: 105, column: 11, scope: !237)
!237 = distinct !DILexicalBlock(scope: !122, file: !1, line: 105, column: 6)
!238 = !DILocation(line: 105, column: 25, scope: !237)
!239 = !DILocation(line: 105, column: 19, scope: !237)
!240 = !DILocation(line: 106, column: 12, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !1, line: 105, column: 35)
!242 = !DILocation(line: 106, column: 4, scope: !241)
!243 = !DILocation(line: 108, column: 4, scope: !241)
!244 = !DILocation(line: 110, column: 1, scope: !122)
!245 = !DILocation(line: 111, column: 49, scope: !122)
!246 = !DILocation(line: 111, column: 1, scope: !122)
!247 = !DILocation(line: 112, column: 12, scope: !248)
!248 = distinct !DILexicalBlock(scope: !122, file: !1, line: 112, column: 6)
!249 = !DILocation(line: 112, column: 30, scope: !248)
!250 = !DILocation(line: 112, column: 6, scope: !122)
!251 = !DILocation(line: 113, column: 4, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !1, line: 112, column: 37)
!253 = !DILocation(line: 115, column: 16, scope: !122)
!254 = !DILocation(line: 114, column: 1, scope: !252)
!255 = !DILocation(line: 115, column: 29, scope: !122)
!256 = !DILocation(line: 115, column: 1, scope: !122)
!257 = !DILocation(line: 117, column: 4, scope: !258)
!258 = distinct !DILexicalBlock(scope: !122, file: !1, line: 115, column: 35)
!259 = !DILocation(line: 118, column: 4, scope: !258)
!260 = !DILocation(line: 120, column: 4, scope: !258)
!261 = !DILocation(line: 121, column: 4, scope: !258)
!262 = !DILocation(line: 123, column: 4, scope: !258)
!263 = !DILocation(line: 124, column: 4, scope: !258)
!264 = !DILocation(line: 126, column: 4, scope: !258)
!265 = !DILocation(line: 127, column: 4, scope: !258)
!266 = !DILocation(line: 129, column: 45, scope: !122)
!267 = !DILocation(line: 129, column: 1, scope: !122)
!268 = !DILocation(line: 130, column: 16, scope: !122)
!269 = !DILocation(line: 130, column: 1, scope: !122)
!270 = !DILocation(line: 132, column: 4, scope: !271)
!271 = distinct !DILexicalBlock(scope: !122, file: !1, line: 130, column: 27)
!272 = !DILocation(line: 133, column: 4, scope: !271)
!273 = !DILocation(line: 135, column: 4, scope: !271)
!274 = !DILocation(line: 136, column: 4, scope: !271)
!275 = !DILocation(line: 138, column: 4, scope: !271)
!276 = !DILocation(line: 139, column: 4, scope: !271)
!277 = !DILocation(line: 141, column: 4, scope: !271)
!278 = !DILocation(line: 142, column: 4, scope: !271)
!279 = !DILocation(line: 144, column: 45, scope: !122)
!280 = !DILocation(line: 144, column: 1, scope: !122)
!281 = !DILocation(line: 145, column: 12, scope: !282)
!282 = distinct !DILexicalBlock(scope: !122, file: !1, line: 145, column: 6)
!283 = !DILocation(line: 145, column: 21, scope: !282)
!284 = !DILocation(line: 145, column: 6, scope: !122)
!285 = !DILocation(line: 146, column: 4, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !1, line: 145, column: 29)
!287 = !DILocation(line: 147, column: 1, scope: !286)
!288 = !DILocation(line: 147, column: 28, scope: !289)
!289 = distinct !DILexicalBlock(scope: !282, file: !1, line: 147, column: 13)
!290 = !DILocation(line: 147, column: 13, scope: !282)
!291 = !DILocation(line: 148, column: 4, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !1, line: 147, column: 37)
!293 = !DILocation(line: 149, column: 1, scope: !292)
!294 = !DILocation(line: 150, column: 4, scope: !295)
!295 = distinct !DILexicalBlock(scope: !289, file: !1, line: 149, column: 8)
!296 = !DILocation(line: 153, column: 47, scope: !122)
!297 = !DILocation(line: 153, column: 1, scope: !122)
!298 = !DILocation(line: 154, column: 47, scope: !122)
!299 = !{!158, !159, i64 32}
!300 = !DILocation(line: 154, column: 1, scope: !122)
!301 = !DILocation(line: 155, column: 50, scope: !122)
!302 = !{!158, !160, i64 56}
!303 = !DILocation(line: 155, column: 1, scope: !122)
!304 = !DILocation(line: 156, column: 1, scope: !122)
!305 = !DILocation(line: 157, column: 1, scope: !122)
!306 = !DILocation(line: 102, column: 17, scope: !122)
!307 = !DILocation(line: 159, column: 37, scope: !308)
!308 = distinct !DILexicalBlock(scope: !122, file: !1, line: 159, column: 1)
!309 = !DILocation(line: 103, column: 18, scope: !122)
!310 = !DILocation(line: 160, column: 23, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !1, line: 159, column: 1)
!312 = !{!158, !159, i64 44}
!313 = !DILocation(line: 160, column: 14, scope: !311)
!314 = !DILocation(line: 167, column: 20, scope: !122)
!315 = !{!316, !159, i64 0}
!316 = !{!"_MSMDstageInfo", !159, i64 0, !159, i64 4, !159, i64 8, !159, i64 12, !159, i64 16, !160, i64 24, !159, i64 32, !159, i64 36, !159, i64 40, !159, i64 44, !159, i64 48, !159, i64 52, !160, i64 56}
!317 = !DILocation(line: 167, column: 38, scope: !122)
!318 = !{!316, !159, i64 4}
!319 = !DILocation(line: 168, column: 20, scope: !122)
!320 = !{!316, !159, i64 8}
!321 = !DILocation(line: 168, column: 38, scope: !122)
!322 = !{!316, !159, i64 12}
!323 = !DILocation(line: 168, column: 56, scope: !122)
!324 = !{!316, !159, i64 16}
!325 = !DILocation(line: 169, column: 20, scope: !122)
!326 = !{!316, !160, i64 24}
!327 = !DILocation(line: 159, column: 1, scope: !308)
!328 = !DILocation(line: 164, column: 39, scope: !329)
!329 = distinct !DILexicalBlock(scope: !311, file: !1, line: 160, column: 56)
!330 = !{!316, !160, i64 56}
!331 = !DILocation(line: 161, column: 4, scope: !329)
!332 = !DILocation(line: 160, column: 38, scope: !311)
!333 = !DILocation(line: 160, column: 51, scope: !311)
!334 = !DILocation(line: 166, column: 1, scope: !122)
!335 = !DILocation(line: 170, column: 1, scope: !122)
!336 = !DILocation(line: 172, column: 37, scope: !337)
!337 = distinct !DILexicalBlock(scope: !122, file: !1, line: 172, column: 1)
!338 = !DILocation(line: 173, column: 23, scope: !339)
!339 = distinct !DILexicalBlock(scope: !337, file: !1, line: 172, column: 1)
!340 = !DILocation(line: 173, column: 14, scope: !339)
!341 = !DILocation(line: 180, column: 20, scope: !122)
!342 = !{!316, !159, i64 32}
!343 = !DILocation(line: 180, column: 40, scope: !122)
!344 = !{!316, !159, i64 36}
!345 = !DILocation(line: 181, column: 20, scope: !122)
!346 = !{!316, !159, i64 40}
!347 = !DILocation(line: 181, column: 40, scope: !122)
!348 = !{!316, !159, i64 44}
!349 = !DILocation(line: 181, column: 59, scope: !122)
!350 = !{!316, !159, i64 48}
!351 = !DILocation(line: 182, column: 20, scope: !122)
!352 = !{!316, !159, i64 52}
!353 = !DILocation(line: 172, column: 1, scope: !337)
!354 = !DILocation(line: 174, column: 4, scope: !355)
!355 = distinct !DILexicalBlock(scope: !339, file: !1, line: 173, column: 56)
!356 = !DILocation(line: 173, column: 38, scope: !339)
!357 = !DILocation(line: 173, column: 51, scope: !339)
!358 = !DILocation(line: 179, column: 1, scope: !122)
!359 = !DILocation(line: 184, column: 1, scope: !122)
!360 = !DILocation(line: 196, column: 16, scope: !130)
!361 = !DILocation(line: 200, column: 12, scope: !362)
!362 = distinct !DILexicalBlock(scope: !130, file: !1, line: 200, column: 7)
!363 = !DILocation(line: 201, column: 4, scope: !362)
!364 = !DILocation(line: 201, column: 13, scope: !362)
!365 = !DILocation(line: 202, column: 26, scope: !362)
!366 = !DILocation(line: 202, column: 4, scope: !362)
!367 = !DILocation(line: 204, column: 13, scope: !362)
!368 = !DILocation(line: 205, column: 4, scope: !362)
!369 = !DILocation(line: 198, column: 7, scope: !130)
!370 = !DILocation(line: 211, column: 1, scope: !130)
