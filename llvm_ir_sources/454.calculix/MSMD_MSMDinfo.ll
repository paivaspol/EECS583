; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._MSMDinfo = type { i32, i32, double, i32, i32, %struct._IO_FILE*, i32, i32, i32, i32, %struct._MSMDstageInfo*, double }
%struct._MSMDstageInfo = type { i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, double }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [79 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c\00", align 1
@stdout = external global %struct._IO_FILE*
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

; Function Attrs: nounwind optsize uwtable
define noalias %struct._MSMDinfo* @MSMDinfo_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 64) #6, !dbg !128
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %1}, i64 0, metadata !102), !dbg !128
  %cmp = icmp eq i8* %call, null, !dbg !128
  br i1 %cmp, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !130, !tbaa !132
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 64, i32 21, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !130
  tail call void @exit(i32 -1) #7, !dbg !130
  unreachable, !dbg !130

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct._MSMDinfo*, !dbg !128
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %1}, i64 0, metadata !135) #5, !dbg !137
  %compressFlag.i = bitcast i8* %call to i32*, !dbg !138
  store i32 1, i32* %compressFlag.i, align 4, !dbg !138, !tbaa !139
  %prioType.i = getelementptr inbounds i8* %call, i64 4, !dbg !140
  %2 = bitcast i8* %prioType.i to i32*, !dbg !140
  store i32 1, i32* %2, align 4, !dbg !140, !tbaa !139
  %stepType.i = getelementptr inbounds i8* %call, i64 8, !dbg !141
  %3 = bitcast i8* %stepType.i to double*, !dbg !141
  store double 1.000000e+00, double* %3, align 8, !dbg !141, !tbaa !142
  %seed.i = getelementptr inbounds i8* %call, i64 16, !dbg !143
  %4 = bitcast i8* %seed.i to i32*, !dbg !143
  store i32 0, i32* %4, align 4, !dbg !143, !tbaa !139
  %msglvl.i = getelementptr inbounds i8* %call, i64 20, !dbg !144
  %5 = bitcast i8* %msglvl.i to i32*, !dbg !144
  store i32 0, i32* %5, align 4, !dbg !144, !tbaa !139
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !145, !tbaa !132
  %msgFile.i = getelementptr inbounds i8* %call, i64 24, !dbg !145
  %7 = bitcast i8* %msgFile.i to %struct._IO_FILE**, !dbg !145
  store %struct._IO_FILE* %6, %struct._IO_FILE** %7, align 8, !dbg !145, !tbaa !132
  %maxnbytes.i = getelementptr inbounds i8* %call, i64 32, !dbg !146
  tail call void @llvm.memset.p0i8.i64(i8* %maxnbytes.i, i8 0, i64 32, i32 4, i1 false) #5, !dbg !147
  ret %struct._MSMDinfo* %1, !dbg !148
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @MSMDinfo_setDefaultFields(%struct._MSMDinfo* nocapture %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !107), !dbg !149
  %compressFlag = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0, !dbg !150
  store i32 1, i32* %compressFlag, align 4, !dbg !150, !tbaa !139
  %prioType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1, !dbg !151
  store i32 1, i32* %prioType, align 4, !dbg !151, !tbaa !139
  %stepType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2, !dbg !152
  store double 1.000000e+00, double* %stepType, align 8, !dbg !152, !tbaa !142
  %seed = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 3, !dbg !153
  store i32 0, i32* %seed, align 4, !dbg !153, !tbaa !139
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !154
  store i32 0, i32* %msglvl, align 4, !dbg !154, !tbaa !139
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !155, !tbaa !132
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !155
  store %struct._IO_FILE* %0, %struct._IO_FILE** %msgFile, align 8, !dbg !155, !tbaa !132
  %maxnbytes = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6, !dbg !156
  %1 = bitcast i32* %maxnbytes to i8*, !dbg !157
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 4, i1 false), !dbg !158
  ret void, !dbg !157
}

; Function Attrs: nounwind optsize uwtable
define void @MSMDinfo_clearData(%struct._MSMDinfo* nocapture %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !110), !dbg !159
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !160
  %0 = load %struct._MSMDstageInfo** %stageInfo, align 8, !dbg !160, !tbaa !132
  %cmp = icmp eq %struct._MSMDstageInfo* %0, null, !dbg !160
  br i1 %cmp, label %if.end6, label %if.then3, !dbg !160

if.then3:                                         ; preds = %entry
  %1 = bitcast %struct._MSMDstageInfo* %0 to i8*, !dbg !161
  tail call void @free(i8* %1) #6, !dbg !161
  store %struct._MSMDstageInfo* null, %struct._MSMDstageInfo** %stageInfo, align 8, !dbg !161, !tbaa !132
  br label %if.end6, !dbg !161

if.end6:                                          ; preds = %entry, %if.then3
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !164) #5, !dbg !166
  %compressFlag.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0, !dbg !167
  store i32 1, i32* %compressFlag.i, align 4, !dbg !167, !tbaa !139
  %prioType.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1, !dbg !168
  store i32 1, i32* %prioType.i, align 4, !dbg !168, !tbaa !139
  %stepType.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2, !dbg !169
  store double 1.000000e+00, double* %stepType.i, align 8, !dbg !169, !tbaa !142
  %seed.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 3, !dbg !170
  store i32 0, i32* %seed.i, align 4, !dbg !170, !tbaa !139
  %msglvl.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !171
  store i32 0, i32* %msglvl.i, align 4, !dbg !171, !tbaa !139
  %2 = load %struct._IO_FILE** @stdout, align 8, !dbg !172, !tbaa !132
  %msgFile.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !172
  store %struct._IO_FILE* %2, %struct._IO_FILE** %msgFile.i, align 8, !dbg !172, !tbaa !132
  %maxnbytes.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6, !dbg !173
  %3 = bitcast i32* %maxnbytes.i to i8*, !dbg !174
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 4, i1 false) #5, !dbg !175
  ret void, !dbg !176
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @MSMDinfo_free(%struct._MSMDinfo* %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !113), !dbg !177
  tail call void @MSMDinfo_clearData(%struct._MSMDinfo* %info) #8, !dbg !178
  %cmp = icmp eq %struct._MSMDinfo* %info, null, !dbg !179
  br i1 %cmp, label %if.end, label %if.then, !dbg !179

if.then:                                          ; preds = %entry
  %0 = bitcast %struct._MSMDinfo* %info to i8*, !dbg !180
  tail call void @free(i8* %0) #6, !dbg !180
  tail call void @llvm.dbg.value(metadata !182, i64 0, metadata !113), !dbg !180
  br label %if.end, !dbg !180

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !183
}

; Function Attrs: nounwind optsize uwtable
define void @MSMDinfo_print(%struct._MSMDinfo* %info, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !118), !dbg !184
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !119), !dbg !185
  %cmp = icmp eq %struct._MSMDinfo* %info, null, !dbg !186
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !186
  %or.cond = or i1 %cmp, %cmp1, !dbg !186
  br i1 %or.cond, label %if.then, label %if.end, !dbg !186

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !187, !tbaa !132
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), %struct._MSMDinfo* %info, %struct._IO_FILE* %fp) #6, !dbg !187
  tail call void @exit(i32 -1) #7, !dbg !189
  unreachable, !dbg !189

if.end:                                           ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp), !dbg !190
  %compressFlag = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0, !dbg !191
  %2 = load i32* %compressFlag, align 4, !dbg !191, !tbaa !139
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0), i32 %2) #6, !dbg !191
  %3 = load i32* %compressFlag, align 4, !dbg !192, !tbaa !139
  %cmp5 = icmp sgt i32 %3, 3, !dbg !192
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !192

if.then6:                                         ; preds = %if.end
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %fp), !dbg !193
  %.pre = load i32* %compressFlag, align 4, !dbg !195, !tbaa !139
  br label %if.end8, !dbg !196

if.end8:                                          ; preds = %if.then6, %if.end
  %5 = phi i32 [ %.pre, %if.then6 ], [ %3, %if.end ]
  %rem = srem i32 %5, 4, !dbg !195
  switch i32 %rem, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb13
  ], !dbg !195

sw.bb:                                            ; preds = %if.end8
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %fp), !dbg !197
  br label %sw.epilog, !dbg !199

sw.bb11:                                          ; preds = %if.end8
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %fp), !dbg !200
  br label %sw.epilog, !dbg !201

sw.bb13:                                          ; preds = %if.end8
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str8, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %fp), !dbg !202
  br label %sw.epilog, !dbg !203

sw.default:                                       ; preds = %if.end8
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %fp), !dbg !204
  br label %sw.epilog, !dbg !205

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb11, %sw.bb
  %prioType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1, !dbg !206
  %10 = load i32* %prioType, align 4, !dbg !206, !tbaa !139
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i32 %10) #6, !dbg !206
  %11 = load i32* %prioType, align 4, !dbg !207, !tbaa !139
  switch i32 %11, label %sw.default24 [
    i32 1, label %sw.bb18
    i32 2, label %sw.bb20
    i32 3, label %sw.bb22
  ], !dbg !207

sw.bb18:                                          ; preds = %sw.epilog
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp), !dbg !208
  br label %sw.epilog26, !dbg !210

sw.bb20:                                          ; preds = %sw.epilog
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str12, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp), !dbg !211
  br label %sw.epilog26, !dbg !212

sw.bb22:                                          ; preds = %sw.epilog
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str13, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %fp), !dbg !213
  br label %sw.epilog26, !dbg !214

sw.default24:                                     ; preds = %sw.epilog
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp), !dbg !215
  br label %sw.epilog26, !dbg !216

sw.epilog26:                                      ; preds = %sw.default24, %sw.bb22, %sw.bb20, %sw.bb18
  %stepType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2, !dbg !217
  %16 = load double* %stepType, align 8, !dbg !217, !tbaa !142
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0), double %16) #6, !dbg !217
  %17 = load double* %stepType, align 8, !dbg !218, !tbaa !142
  %cmp29 = fcmp olt double %17, 1.000000e+00, !dbg !218
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !218

if.then30:                                        ; preds = %sw.epilog26
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str16, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %fp), !dbg !219
  br label %if.end40, !dbg !221

if.else:                                          ; preds = %sw.epilog26
  %cmp33 = fcmp oeq double %17, 1.000000e+00, !dbg !222
  br i1 %cmp33, label %if.then34, label %if.else36, !dbg !222

if.then34:                                        ; preds = %if.else
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str17, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %fp), !dbg !223
  br label %if.end40, !dbg !225

if.else36:                                        ; preds = %if.else
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str18, i64 0, i64 0), double %17) #6, !dbg !226
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.else36, %if.then30
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !228
  %20 = load i32* %msglvl, align 4, !dbg !228, !tbaa !139
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str19, i64 0, i64 0), i32 %20) #6, !dbg !228
  %maxnbytes = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6, !dbg !229
  %21 = load i32* %maxnbytes, align 4, !dbg !229, !tbaa !139
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str20, i64 0, i64 0), i32 %21) #6, !dbg !229
  %totalCPU = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 11, !dbg !230
  %22 = load double* %totalCPU, align 8, !dbg !230, !tbaa !142
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), double %22) #6, !dbg !230
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str22, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp), !dbg !231
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([70 x i8]* @.str23, i64 0, i64 0), i64 69, i64 1, %struct._IO_FILE* %fp), !dbg !232
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !120), !dbg !233
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !233
  %25 = load %struct._MSMDstageInfo** %stageInfo, align 8, !dbg !233, !tbaa !132
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDstageInfo* %25}, i64 0, metadata !121), !dbg !233
  %nstage = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 9, !dbg !233
  %26 = load i32* %nstage, align 4, !dbg !233, !tbaa !139
  %cmp46170 = icmp slt i32 %26, 0, !dbg !233
  %nstep48171 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 0, !dbg !235
  %27 = load i32* %nstep48171, align 4, !dbg !235, !tbaa !139
  %nfront49172 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 1, !dbg !235
  %28 = load i32* %nfront49172, align 4, !dbg !235, !tbaa !139
  %welim50173 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 2, !dbg !235
  %29 = load i32* %welim50173, align 4, !dbg !235, !tbaa !139
  %nfind51174 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 3, !dbg !235
  %30 = load i32* %nfind51174, align 4, !dbg !235, !tbaa !139
  %nzf52175 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 4, !dbg !235
  %31 = load i32* %nzf52175, align 4, !dbg !235, !tbaa !139
  %ops53176 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 5, !dbg !235
  %32 = load double* %ops53176, align 8, !dbg !235, !tbaa !142
  br i1 %cmp46170, label %for.end, label %for.body, !dbg !233

for.body:                                         ; preds = %if.end40, %for.body
  %33 = phi double [ %46, %for.body ], [ %32, %if.end40 ]
  %34 = phi i32 [ %45, %for.body ], [ %31, %if.end40 ]
  %35 = phi i32 [ %44, %for.body ], [ %30, %if.end40 ]
  %36 = phi i32 [ %43, %for.body ], [ %29, %if.end40 ]
  %37 = phi i32 [ %42, %for.body ], [ %28, %if.end40 ]
  %38 = phi i32 [ %41, %for.body ], [ %27, %if.end40 ]
  %stageinfo.0178 = phi %struct._MSMDstageInfo* [ %incdec.ptr, %for.body ], [ %25, %if.end40 ]
  %istage.0177 = phi i32 [ %inc, %for.body ], [ 0, %if.end40 ]
  %cpu = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 0, i32 12, !dbg !236
  %39 = load double* %cpu, align 8, !dbg !236, !tbaa !142
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([42 x i8]* @.str24, i64 0, i64 0), i32 %istage.0177, i32 %38, i32 %37, i32 %36, i32 %35, i32 %34, double %33, double %39) #6, !dbg !236
  %inc = add nsw i32 %istage.0177, 1, !dbg !238
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !120), !dbg !238
  %incdec.ptr = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, !dbg !238
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDstageInfo* %incdec.ptr}, i64 0, metadata !121), !dbg !238
  %40 = load i32* %nstage, align 4, !dbg !233, !tbaa !139
  %cmp46 = icmp slt i32 %istage.0177, %40, !dbg !233
  %nstep48 = getelementptr inbounds %struct._MSMDstageInfo* %incdec.ptr, i64 0, i32 0, !dbg !235
  %41 = load i32* %nstep48, align 4, !dbg !235, !tbaa !139
  %nfront49 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, i32 1, !dbg !235
  %42 = load i32* %nfront49, align 4, !dbg !235, !tbaa !139
  %welim50 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, i32 2, !dbg !235
  %43 = load i32* %welim50, align 4, !dbg !235, !tbaa !139
  %nfind51 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, i32 3, !dbg !235
  %44 = load i32* %nfind51, align 4, !dbg !235, !tbaa !139
  %nzf52 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, i32 4, !dbg !235
  %45 = load i32* %nzf52, align 4, !dbg !235, !tbaa !139
  %ops53 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, i32 5, !dbg !235
  %46 = load double* %ops53, align 8, !dbg !235, !tbaa !142
  br i1 %cmp46, label %for.body, label %for.end, !dbg !233

for.end:                                          ; preds = %for.body, %if.end40
  %.lcssa169 = phi double [ %32, %if.end40 ], [ %46, %for.body ]
  %.lcssa168 = phi i32 [ %31, %if.end40 ], [ %45, %for.body ]
  %.lcssa167 = phi i32 [ %30, %if.end40 ], [ %44, %for.body ]
  %.lcssa166 = phi i32 [ %29, %if.end40 ], [ %43, %for.body ]
  %.lcssa165 = phi i32 [ %28, %if.end40 ], [ %42, %for.body ]
  %.lcssa164 = phi i32 [ %27, %if.end40 ], [ %41, %for.body ]
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([37 x i8]* @.str25, i64 0, i64 0), i32 %.lcssa164, i32 %.lcssa165, i32 %.lcssa166, i32 %.lcssa167, i32 %.lcssa168, double %.lcssa169) #6, !dbg !235
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([60 x i8]* @.str26, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %fp), !dbg !239
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !120), !dbg !240
  %48 = load %struct._MSMDstageInfo** %stageInfo, align 8, !dbg !240, !tbaa !132
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDstageInfo* %48}, i64 0, metadata !121), !dbg !240
  %49 = load i32* %nstage, align 4, !dbg !240, !tbaa !139
  %cmp59150 = icmp slt i32 %49, 0, !dbg !240
  %nexact266151 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 6, !dbg !242
  %50 = load i32* %nexact266151, align 4, !dbg !242, !tbaa !139
  %nexact367152 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 7, !dbg !242
  %51 = load i32* %nexact367152, align 4, !dbg !242, !tbaa !139
  %napprox68153 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 8, !dbg !242
  %52 = load i32* %napprox68153, align 4, !dbg !242, !tbaa !139
  %ncheck69154 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 9, !dbg !242
  %53 = load i32* %ncheck69154, align 4, !dbg !242, !tbaa !139
  %nindst70155 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 10, !dbg !242
  %54 = load i32* %nindst70155, align 4, !dbg !242, !tbaa !139
  %noutmtch71156 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 11, !dbg !242
  %55 = load i32* %noutmtch71156, align 4, !dbg !242, !tbaa !139
  br i1 %cmp59150, label %for.end65, label %for.body60, !dbg !240

for.body60:                                       ; preds = %for.end, %for.body60
  %56 = phi i32 [ %68, %for.body60 ], [ %55, %for.end ]
  %57 = phi i32 [ %67, %for.body60 ], [ %54, %for.end ]
  %58 = phi i32 [ %66, %for.body60 ], [ %53, %for.end ]
  %59 = phi i32 [ %65, %for.body60 ], [ %52, %for.end ]
  %60 = phi i32 [ %64, %for.body60 ], [ %51, %for.end ]
  %61 = phi i32 [ %63, %for.body60 ], [ %50, %for.end ]
  %stageinfo.1158 = phi %struct._MSMDstageInfo* [ %incdec.ptr64, %for.body60 ], [ %48, %for.end ]
  %istage.1157 = phi i32 [ %inc63, %for.body60 ], [ 0, %for.end ]
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str27, i64 0, i64 0), i32 %istage.1157, i32 %61, i32 %60, i32 %59, i32 %58, i32 %57, i32 %56) #6, !dbg !243
  %inc63 = add nsw i32 %istage.1157, 1, !dbg !245
  tail call void @llvm.dbg.value(metadata !{i32 %inc63}, i64 0, metadata !120), !dbg !245
  %incdec.ptr64 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, !dbg !245
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDstageInfo* %incdec.ptr64}, i64 0, metadata !121), !dbg !245
  %62 = load i32* %nstage, align 4, !dbg !240, !tbaa !139
  %cmp59 = icmp slt i32 %istage.1157, %62, !dbg !240
  %nexact266 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 6, !dbg !242
  %63 = load i32* %nexact266, align 4, !dbg !242, !tbaa !139
  %nexact367 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 7, !dbg !242
  %64 = load i32* %nexact367, align 4, !dbg !242, !tbaa !139
  %napprox68 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 8, !dbg !242
  %65 = load i32* %napprox68, align 4, !dbg !242, !tbaa !139
  %ncheck69 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 9, !dbg !242
  %66 = load i32* %ncheck69, align 4, !dbg !242, !tbaa !139
  %nindst70 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 10, !dbg !242
  %67 = load i32* %nindst70, align 4, !dbg !242, !tbaa !139
  %noutmtch71 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 11, !dbg !242
  %68 = load i32* %noutmtch71, align 4, !dbg !242, !tbaa !139
  br i1 %cmp59, label %for.body60, label %for.end65, !dbg !240

for.end65:                                        ; preds = %for.body60, %for.end
  %.lcssa149 = phi i32 [ %55, %for.end ], [ %68, %for.body60 ]
  %.lcssa148 = phi i32 [ %54, %for.end ], [ %67, %for.body60 ]
  %.lcssa147 = phi i32 [ %53, %for.end ], [ %66, %for.body60 ]
  %.lcssa146 = phi i32 [ %52, %for.end ], [ %65, %for.body60 ]
  %.lcssa145 = phi i32 [ %51, %for.end ], [ %64, %for.body60 ]
  %.lcssa = phi i32 [ %50, %for.end ], [ %63, %for.body60 ]
  %call72 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0), i32 %.lcssa, i32 %.lcssa145, i32 %.lcssa146, i32 %.lcssa147, i32 %.lcssa148, i32 %.lcssa149) #6, !dbg !242
  ret void, !dbg !246
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @MSMDinfo_isValid(%struct._MSMDinfo* %info) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !126), !dbg !247
  %cmp = icmp eq %struct._MSMDinfo* %info, null, !dbg !248
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !248

lor.lhs.false:                                    ; preds = %entry
  %compressFlag = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0, !dbg !248
  %0 = load i32* %compressFlag, align 4, !dbg !248, !tbaa !139
  %cmp1 = icmp slt i32 %0, 0, !dbg !248
  %cmp4 = icmp eq i32 %0, 3, !dbg !248
  %or.cond = or i1 %cmp1, %cmp4, !dbg !248
  %cmp7 = icmp sgt i32 %0, 6, !dbg !248
  %or.cond18 = or i1 %or.cond, %cmp7, !dbg !248
  br i1 %or.cond18, label %if.end, label %lor.lhs.false8, !dbg !248

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %prioType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1, !dbg !248
  %1 = load i32* %prioType, align 4, !dbg !248, !tbaa !139
  %.off = add i32 %1, -1, !dbg !248
  tail call void @llvm.dbg.value(metadata !249, i64 0, metadata !127), !dbg !250
  %not. = icmp ult i32 %.off, 4, !dbg !248
  %. = zext i1 %not. to i32, !dbg !248
  ret i32 %., !dbg !248

if.end:                                           ; preds = %entry, %lor.lhs.false
  ret i32 0, !dbg !252
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !103, metadata !108, metadata !111, metadata !114, metadata !122}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMDinfo_new", metadata !"MSMDinfo_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._MSMDinfo* ()* @MSMDinfo_new, null, null, metadata !101, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [MSMDinfo_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMDinfo]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"MSMDinfo", i32 16, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [MSMDinfo] [line 16, size 0, align 0, offset 0] [from _MSMDinfo]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_MSMDinfo", i32 100, i64 512, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMDinfo] [line 100, size 512, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../MSMD.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !18, metadata !19, metadata !20, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !100}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"compressFlag", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [compressFlag] [line 101, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"prioType", i32 102, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [prioType] [line 102, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"stepType", i32 103, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [stepType] [line 103, size 64, align 64, offset 64] [from double]
!17 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"seed", i32 104, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [seed] [line 104, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"msglvl", i32 105, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [msglvl] [line 105, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"msgFile", i32 106, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [msgFile] [line 106, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!22 = metadata !{i32 786454, metadata !11, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!24 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !48, metadata !49, metadata !50, metadata !51, metadata !54, metadata !56, metadata !58, metadata !62, metadata !64, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !73, metadata !74}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!29 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!33 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!34 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!35 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!36 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!37 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!38 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!39 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!40 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !41} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!42 = metadata !{i32 786451, metadata !24, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !45, metadata !47}
!44 = metadata !{i32 786445, metadata !24, metadata !42, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !24, metadata !42, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!47 = metadata !{i32 786445, metadata !24, metadata !42, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!48 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !46} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!49 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!50 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!51 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !52} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!52 = metadata !{i32 786454, metadata !24, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!53 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!54 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !55} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!55 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!56 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !57} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!57 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!58 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !59} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !29, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!62 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !63} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !65} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!65 = metadata !{i32 786454, metadata !24, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!66 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!67 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!68 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!69 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!70 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!71 = metadata !{i32 786454, metadata !24, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!72 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!73 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!74 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !75} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!75 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !29, metadata !76, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!78 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnbytes", i32 107, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnbytes] [line 107, size 32, align 32, offset 256] [from int]
!79 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nbytes", i32 108, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytes] [line 108, size 32, align 32, offset 288] [from int]
!80 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"istage", i32 109, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [istage] [line 109, size 32, align 32, offset 320] [from int]
!81 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nstage", i32 110, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [nstage] [line 110, size 32, align 32, offset 352] [from int]
!82 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"stageInfo", i32 111, i64 64, i64 64, i64 384, i32 0, metadata !83} ; [ DW_TAG_member ] [stageInfo] [line 111, size 64, align 64, offset 384] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMDstageInfo]
!84 = metadata !{i32 786454, metadata !11, null, metadata !"MSMDstageInfo", i32 17, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [MSMDstageInfo] [line 17, size 0, align 0, offset 0] [from _MSMDstageInfo]
!85 = metadata !{i32 786451, metadata !11, null, metadata !"_MSMDstageInfo", i32 132, i64 512, i64 64, i32 0, i32 0, null, metadata !86, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMDstageInfo] [line 132, size 512, align 64, offset 0] [from ]
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99}
!87 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"nstep", i32 133, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nstep] [line 133, size 32, align 32, offset 0] [from int]
!88 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"nfront", i32 134, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 134, size 32, align 32, offset 32] [from int]
!89 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"welim", i32 135, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [welim] [line 135, size 32, align 32, offset 64] [from int]
!90 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"nfind", i32 136, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nfind] [line 136, size 32, align 32, offset 96] [from int]
!91 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"nzf", i32 137, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nzf] [line 137, size 32, align 32, offset 128] [from int]
!92 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"ops", i32 138, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [ops] [line 138, size 64, align 64, offset 192] [from double]
!93 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"nexact2", i32 139, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [nexact2] [line 139, size 32, align 32, offset 256] [from int]
!94 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"nexact3", i32 140, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nexact3] [line 140, size 32, align 32, offset 288] [from int]
!95 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"napprox", i32 141, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [napprox] [line 141, size 32, align 32, offset 320] [from int]
!96 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"ncheck", i32 142, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [ncheck] [line 142, size 32, align 32, offset 352] [from int]
!97 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"nindst", i32 143, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [nindst] [line 143, size 32, align 32, offset 384] [from int]
!98 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"noutmtch", i32 144, i64 32, i64 32, i64 416, i32 0, metadata !14} ; [ DW_TAG_member ] [noutmtch] [line 144, size 32, align 32, offset 416] [from int]
!99 = metadata !{i32 786445, metadata !11, metadata !85, metadata !"cpu", i32 145, i64 64, i64 64, i64 448, i32 0, metadata !17} ; [ DW_TAG_member ] [cpu] [line 145, size 64, align 64, offset 448] [from double]
!100 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"totalCPU", i32 112, i64 64, i64 64, i64 448, i32 0, metadata !17} ; [ DW_TAG_member ] [totalCPU] [line 112, size 64, align 64, offset 448] [from double]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786688, metadata !4, metadata !"info", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 19]
!103 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMDinfo_setDefaultFields", metadata !"MSMDinfo_setDefaultFields", metadata !"", i32 35, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMDinfo*)* @MSMDinfo_setDefaultFields, null, null, metadata !106, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [MSMDinfo_setDefaultFields]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{null, metadata !8}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 786689, metadata !103, metadata !"info", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 36]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMDinfo_clearData", metadata !"MSMDinfo_clearData", metadata !"", i32 62, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMDinfo*)* @MSMDinfo_clearData, null, null, metadata !109, i32 64} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 64] [MSMDinfo_clearData]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786689, metadata !108, metadata !"info", metadata !5, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 63]
!111 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMDinfo_free", metadata !"MSMDinfo_free", metadata !"", i32 81, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMDinfo*)* @MSMDinfo_free, null, null, metadata !112, i32 83} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 83] [MSMDinfo_free]
!112 = metadata !{metadata !113}
!113 = metadata !{i32 786689, metadata !111, metadata !"info", metadata !5, i32 16777298, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 82]
!114 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMDinfo_print", metadata !"MSMDinfo_print", metadata !"", i32 98, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMDinfo*, %struct._IO_FILE*)* @MSMDinfo_print, null, null, metadata !117, i32 101} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 101] [MSMDinfo_print]
!115 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{null, metadata !8, metadata !21}
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121}
!118 = metadata !{i32 786689, metadata !114, metadata !"info", metadata !5, i32 16777315, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 99]
!119 = metadata !{i32 786689, metadata !114, metadata !"fp", metadata !5, i32 33554532, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 100]
!120 = metadata !{i32 786688, metadata !114, metadata !"istage", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istage] [line 102]
!121 = metadata !{i32 786688, metadata !114, metadata !"stageinfo", metadata !5, i32 103, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stageinfo] [line 103]
!122 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMDinfo_isValid", metadata !"MSMDinfo_isValid", metadata !"", i32 195, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._MSMDinfo*)* @MSMDinfo_isValid, null, null, metadata !125, i32 197} ; [ DW_TAG_subprogram ] [line 195] [def] [scope 197] [MSMDinfo_isValid]
!123 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{metadata !14, metadata !8}
!125 = metadata !{metadata !126, metadata !127}
!126 = metadata !{i32 786689, metadata !122, metadata !"info", metadata !5, i32 16777412, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 196]
!127 = metadata !{i32 786688, metadata !122, metadata !"rc", metadata !5, i32 198, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 198]
!128 = metadata !{i32 21, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!130 = metadata !{i32 21, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !129, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!132 = metadata !{metadata !"any pointer", metadata !133}
!133 = metadata !{metadata !"omnipotent char", metadata !134}
!134 = metadata !{metadata !"Simple C/C++ TBAA"}
!135 = metadata !{i32 786689, metadata !103, metadata !"info", metadata !5, i32 16777252, metadata !8, i32 0, metadata !136} ; [ DW_TAG_arg_variable ] [info] [line 36]
!136 = metadata !{i32 22, i32 0, metadata !4, null}
!137 = metadata !{i32 36, i32 0, metadata !103, metadata !136}
!138 = metadata !{i32 38, i32 0, metadata !103, metadata !136}
!139 = metadata !{metadata !"int", metadata !133}
!140 = metadata !{i32 39, i32 0, metadata !103, metadata !136}
!141 = metadata !{i32 40, i32 0, metadata !103, metadata !136}
!142 = metadata !{metadata !"double", metadata !133}
!143 = metadata !{i32 41, i32 0, metadata !103, metadata !136}
!144 = metadata !{i32 42, i32 0, metadata !103, metadata !136}
!145 = metadata !{i32 43, i32 0, metadata !103, metadata !136}
!146 = metadata !{i32 44, i32 0, metadata !103, metadata !136}
!147 = metadata !{i32 45, i32 0, metadata !103, metadata !136}
!148 = metadata !{i32 24, i32 0, metadata !4, null}
!149 = metadata !{i32 36, i32 0, metadata !103, null}
!150 = metadata !{i32 38, i32 0, metadata !103, null}
!151 = metadata !{i32 39, i32 0, metadata !103, null}
!152 = metadata !{i32 40, i32 0, metadata !103, null}
!153 = metadata !{i32 41, i32 0, metadata !103, null}
!154 = metadata !{i32 42, i32 0, metadata !103, null}
!155 = metadata !{i32 43, i32 0, metadata !103, null}
!156 = metadata !{i32 44, i32 0, metadata !103, null}
!157 = metadata !{i32 51, i32 0, metadata !103, null}
!158 = metadata !{i32 45, i32 0, metadata !103, null}
!159 = metadata !{i32 63, i32 0, metadata !108, null}
!160 = metadata !{i32 65, i32 0, metadata !108, null}
!161 = metadata !{i32 66, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !163, i32 66, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!163 = metadata !{i32 786443, metadata !1, metadata !108, i32 65, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!164 = metadata !{i32 786689, metadata !103, metadata !"info", metadata !5, i32 16777252, metadata !8, i32 0, metadata !165} ; [ DW_TAG_arg_variable ] [info] [line 36]
!165 = metadata !{i32 68, i32 0, metadata !108, null}
!166 = metadata !{i32 36, i32 0, metadata !103, metadata !165}
!167 = metadata !{i32 38, i32 0, metadata !103, metadata !165}
!168 = metadata !{i32 39, i32 0, metadata !103, metadata !165}
!169 = metadata !{i32 40, i32 0, metadata !103, metadata !165}
!170 = metadata !{i32 41, i32 0, metadata !103, metadata !165}
!171 = metadata !{i32 42, i32 0, metadata !103, metadata !165}
!172 = metadata !{i32 43, i32 0, metadata !103, metadata !165}
!173 = metadata !{i32 44, i32 0, metadata !103, metadata !165}
!174 = metadata !{i32 51, i32 0, metadata !103, metadata !165}
!175 = metadata !{i32 45, i32 0, metadata !103, metadata !165}
!176 = metadata !{i32 70, i32 0, metadata !108, null}
!177 = metadata !{i32 82, i32 0, metadata !111, null}
!178 = metadata !{i32 84, i32 0, metadata !111, null}
!179 = metadata !{i32 85, i32 0, metadata !111, null}
!180 = metadata !{i32 85, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !111, i32 85, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!182 = metadata !{%struct._MSMDinfo* null}
!183 = metadata !{i32 87, i32 0, metadata !111, null}
!184 = metadata !{i32 99, i32 0, metadata !114, null}
!185 = metadata !{i32 100, i32 0, metadata !114, null}
!186 = metadata !{i32 105, i32 0, metadata !114, null}
!187 = metadata !{i32 106, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !114, i32 105, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!189 = metadata !{i32 108, i32 0, metadata !188, null}
!190 = metadata !{i32 110, i32 0, metadata !114, null}
!191 = metadata !{i32 111, i32 0, metadata !114, null}
!192 = metadata !{i32 112, i32 0, metadata !114, null}
!193 = metadata !{i32 113, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !114, i32 112, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!195 = metadata !{i32 115, i32 0, metadata !114, null}
!196 = metadata !{i32 114, i32 0, metadata !194, null}
!197 = metadata !{i32 117, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !114, i32 115, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!199 = metadata !{i32 118, i32 0, metadata !198, null}
!200 = metadata !{i32 120, i32 0, metadata !198, null}
!201 = metadata !{i32 121, i32 0, metadata !198, null}
!202 = metadata !{i32 123, i32 0, metadata !198, null}
!203 = metadata !{i32 124, i32 0, metadata !198, null}
!204 = metadata !{i32 126, i32 0, metadata !198, null}
!205 = metadata !{i32 127, i32 0, metadata !198, null}
!206 = metadata !{i32 129, i32 0, metadata !114, null}
!207 = metadata !{i32 130, i32 0, metadata !114, null}
!208 = metadata !{i32 132, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !114, i32 130, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!210 = metadata !{i32 133, i32 0, metadata !209, null}
!211 = metadata !{i32 135, i32 0, metadata !209, null}
!212 = metadata !{i32 136, i32 0, metadata !209, null}
!213 = metadata !{i32 138, i32 0, metadata !209, null}
!214 = metadata !{i32 139, i32 0, metadata !209, null}
!215 = metadata !{i32 141, i32 0, metadata !209, null}
!216 = metadata !{i32 142, i32 0, metadata !209, null}
!217 = metadata !{i32 144, i32 0, metadata !114, null}
!218 = metadata !{i32 145, i32 0, metadata !114, null}
!219 = metadata !{i32 146, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !114, i32 145, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!221 = metadata !{i32 147, i32 0, metadata !220, null}
!222 = metadata !{i32 147, i32 0, metadata !114, null}
!223 = metadata !{i32 148, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !114, i32 147, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!225 = metadata !{i32 149, i32 0, metadata !224, null}
!226 = metadata !{i32 150, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !114, i32 149, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!228 = metadata !{i32 153, i32 0, metadata !114, null}
!229 = metadata !{i32 154, i32 0, metadata !114, null}
!230 = metadata !{i32 155, i32 0, metadata !114, null}
!231 = metadata !{i32 156, i32 0, metadata !114, null}
!232 = metadata !{i32 157, i32 0, metadata !114, null}
!233 = metadata !{i32 159, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !114, i32 159, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!235 = metadata !{i32 166, i32 0, metadata !114, null}
!236 = metadata !{i32 161, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !234, i32 160, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!238 = metadata !{i32 160, i32 0, metadata !234, null}
!239 = metadata !{i32 170, i32 0, metadata !114, null}
!240 = metadata !{i32 172, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !114, i32 172, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!242 = metadata !{i32 179, i32 0, metadata !114, null}
!243 = metadata !{i32 174, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !241, i32 173, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!245 = metadata !{i32 173, i32 0, metadata !241, null}
!246 = metadata !{i32 184, i32 0, metadata !114, null}
!247 = metadata !{i32 196, i32 0, metadata !122, null}
!248 = metadata !{i32 200, i32 0, metadata !122, null}
!249 = metadata !{i32 1}
!250 = metadata !{i32 208, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !122, i32 207, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c]
!252 = metadata !{i32 211, i32 0, metadata !122, null}
