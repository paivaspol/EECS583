; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A inpmtx is NULL \0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A bad coordType \0A\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A bad inputMode \0A\00", align 1
@.str3 = private unnamed_addr constant [78 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A maxnent = %d, maxnvector = %d \0A\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"\0A fatal error in InpMtx_changeCoordType(%p,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [67 x i8] c"\0A fatal error in InpMtx_changeCoordType(%p,%d)\0A bad new coordType\0A\00", align 1
@.str6 = private unnamed_addr constant [72 x i8] c"\0A fatal error in InpMtx_changeCoordType(%p,%d)\0A bad existing coordType\0A\00", align 1
@.str7 = private unnamed_addr constant [66 x i8] c"\0A fatal error in InpMtx_changeStorageMode(%p,%d)\0A inpmtx is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [72 x i8] c"\0A fatal error in InpMtx_changeStorageMode(%p,%d)\0A bad new storage mode\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_init(%struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !48), !dbg !74
  tail call void @llvm.dbg.value(metadata !{i32 %coordType}, i64 0, metadata !49), !dbg !75
  tail call void @llvm.dbg.value(metadata !{i32 %inputMode}, i64 0, metadata !50), !dbg !76
  tail call void @llvm.dbg.value(metadata !{i32 %maxnent}, i64 0, metadata !51), !dbg !77
  tail call void @llvm.dbg.value(metadata !{i32 %maxnvector}, i64 0, metadata !52), !dbg !78
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !79

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !80, !tbaa !82
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #5, !dbg !80
  tail call void @exit(i32 -1) #6, !dbg !85
  unreachable, !dbg !85

if.end:                                           ; preds = %entry
  %coordType1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !86
  %1 = load i32* %coordType1, align 4, !dbg !86, !tbaa !87
  %.off = add i32 %1, -1, !dbg !86
  %switch = icmp ult i32 %.off, 3, !dbg !86
  br i1 %switch, label %if.end10, label %if.then8, !dbg !86

if.then8:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !88, !tbaa !82
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #5, !dbg !88
  tail call void @exit(i32 -1) #6, !dbg !90
  unreachable, !dbg !90

if.end10:                                         ; preds = %if.end
  %inputMode11 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !91
  %3 = load i32* %inputMode11, align 4, !dbg !91, !tbaa !87
  %switch73 = icmp ult i32 %3, 3, !dbg !91
  br i1 %switch73, label %if.end21, label %if.then19, !dbg !91

if.then19:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !92, !tbaa !82
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #5, !dbg !92
  tail call void @exit(i32 -1) #6, !dbg !94
  unreachable, !dbg !94

if.end21:                                         ; preds = %if.end10
  %5 = or i32 %maxnvector, %maxnent, !dbg !95
  %6 = icmp slt i32 %5, 0, !dbg !95
  br i1 %6, label %if.then25, label %if.end27, !dbg !95

if.then25:                                        ; preds = %if.end21
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !96, !tbaa !82
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([78 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector, i32 %maxnent, i32 %maxnvector) #5, !dbg !96
  tail call void @exit(i32 -1) #6, !dbg !98
  unreachable, !dbg !98

if.end27:                                         ; preds = %if.end21
  tail call void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #5, !dbg !99
  store i32 %coordType, i32* %coordType1, align 4, !dbg !100, !tbaa !87
  store i32 %inputMode, i32* %inputMode11, align 4, !dbg !101, !tbaa !87
  %cmp30 = icmp sgt i32 %maxnent, 0, !dbg !102
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !102

if.then31:                                        ; preds = %if.end27
  tail call void @InpMtx_setMaxnent(%struct._InpMtx* %inpmtx, i32 %maxnent) #5, !dbg !103
  br label %if.end32, !dbg !105

if.end32:                                         ; preds = %if.then31, %if.end27
  %cmp33 = icmp sgt i32 %maxnvector, 0, !dbg !106
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !106

if.then34:                                        ; preds = %if.end32
  tail call void @InpMtx_setMaxnvector(%struct._InpMtx* %inpmtx, i32 %maxnvector) #5, !dbg !107
  br label %if.end35, !dbg !109

if.end35:                                         ; preds = %if.then34, %if.end32
  ret void, !dbg !110
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @InpMtx_clearData(%struct._InpMtx*) #3

; Function Attrs: optsize
declare void @InpMtx_setMaxnent(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare void @InpMtx_setMaxnvector(%struct._InpMtx*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_changeCoordType(%struct._InpMtx* %inpmtx, i32 %newType) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !57), !dbg !111
  tail call void @llvm.dbg.value(metadata !{i32 %newType}, i64 0, metadata !58), !dbg !112
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !113
  br i1 %cmp, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !114, !tbaa !82
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null, i32 %newType) #5, !dbg !114
  tail call void @exit(i32 -1) #6, !dbg !116
  unreachable, !dbg !116

if.end:                                           ; preds = %entry
  %newType.off = add i32 %newType, -1, !dbg !117
  %1 = icmp ugt i32 %newType.off, 1, !dbg !117
  %cmp4 = icmp ne i32 %newType, 3, !dbg !117
  %or.cond179 = and i1 %1, %cmp4, !dbg !117
  %cmp6 = icmp ne i32 %newType, 4, !dbg !117
  %or.cond180 = and i1 %or.cond179, %cmp6, !dbg !117
  br i1 %or.cond180, label %if.then7, label %if.end9, !dbg !117

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !118, !tbaa !82
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newType) #5, !dbg !118
  tail call void @exit(i32 -1) #6, !dbg !120
  unreachable, !dbg !120

if.end9:                                          ; preds = %if.end
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !121
  %3 = load i32* %coordType, align 4, !dbg !121, !tbaa !87
  %.off = add i32 %3, -1, !dbg !121
  %switch = icmp ult i32 %.off, 3, !dbg !121
  br i1 %switch, label %if.end18, label %if.then16, !dbg !121

if.then16:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !122, !tbaa !82
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([72 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newType) #5, !dbg !122
  tail call void @exit(i32 -1) #6, !dbg !124
  unreachable, !dbg !124

if.end18:                                         ; preds = %if.end9
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !64), !dbg !125
  %cmp20 = icmp eq i32 %3, %newType, !dbg !126
  br i1 %cmp20, label %return, label %if.end22, !dbg !126

if.end22:                                         ; preds = %if.end18
  %cmp23 = icmp eq i32 %newType, 4, !dbg !127
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !127

if.then24:                                        ; preds = %if.end22
  store i32 4, i32* %coordType, align 4, !dbg !128, !tbaa !87
  br label %return, !dbg !130

if.end26:                                         ; preds = %if.end22
  %nent27 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !131
  %5 = load i32* %nent27, align 4, !dbg !131, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !62), !dbg !131
  %call28 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #5, !dbg !132
  tail call void @llvm.dbg.value(metadata !{i32* %call28}, i64 0, metadata !67), !dbg !132
  %call29 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #5, !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32* %call29}, i64 0, metadata !68), !dbg !133
  switch i32 %3, label %return [
    i32 1, label %if.then31
    i32 2, label %if.then73
    i32 3, label %if.then125
  ], !dbg !134

if.then31:                                        ; preds = %if.end26
  switch i32 %newType, label %return [
    i32 2, label %for.cond.preheader
    i32 3, label %for.cond44.preheader
  ], !dbg !135

for.cond44.preheader:                             ; preds = %if.then31
  %cmp45325 = icmp sgt i32 %5, 0, !dbg !137
  br i1 %cmp45325, label %for.body46, label %for.end66, !dbg !137

for.cond.preheader:                               ; preds = %if.then31
  %cmp34323 = icmp sgt i32 %5, 0, !dbg !140
  br i1 %cmp34323, label %for.body, label %for.end, !dbg !140

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call28, i64 %indvars.iv, !dbg !143
  %6 = load i32* %arrayidx, align 4, !dbg !143, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !66), !dbg !143
  %arrayidx36 = getelementptr inbounds i32* %call29, i64 %indvars.iv, !dbg !145
  %7 = load i32* %arrayidx36, align 4, !dbg !145, !tbaa !87
  store i32 %7, i32* %arrayidx, align 4, !dbg !145, !tbaa !87
  store i32 %6, i32* %arrayidx36, align 4, !dbg !146, !tbaa !87
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !140
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !140
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !140
  br i1 %exitcond, label %for.end, label %for.body, !dbg !140

for.end:                                          ; preds = %for.body, %for.cond.preheader
  store i32 2, i32* %coordType, align 4, !dbg !147, !tbaa !87
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !148
  store i32 1, i32* %storageMode, align 4, !dbg !148, !tbaa !87
  br label %return, !dbg !149

for.body46:                                       ; preds = %for.cond44.preheader, %for.body46
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %for.body46 ], [ 0, %for.cond44.preheader ]
  %arrayidx48 = getelementptr inbounds i32* %call28, i64 %indvars.iv337, !dbg !150
  %8 = load i32* %arrayidx48, align 4, !dbg !150, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !65), !dbg !150
  %arrayidx50 = getelementptr inbounds i32* %call29, i64 %indvars.iv337, !dbg !152
  %9 = load i32* %arrayidx50, align 4, !dbg !152, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !60), !dbg !152
  %cmp51 = icmp sgt i32 %8, %9, !dbg !153
  %. = select i1 %cmp51, i32 %9, i32 %8
  store i32 %., i32* %arrayidx48, align 4, !dbg !154, !tbaa !87
  %storemerge319 = sub nsw i32 %9, %8, !dbg !156
  store i32 %storemerge319, i32* %arrayidx50, align 4, !dbg !157, !tbaa !87
  %indvars.iv.next338 = add i64 %indvars.iv337, 1, !dbg !137
  %lftr.wideiv339 = trunc i64 %indvars.iv.next338 to i32, !dbg !137
  %exitcond340 = icmp eq i32 %lftr.wideiv339, %5, !dbg !137
  br i1 %exitcond340, label %for.end66, label %for.body46, !dbg !137

for.end66:                                        ; preds = %for.body46, %for.cond44.preheader
  store i32 3, i32* %coordType, align 4, !dbg !159, !tbaa !87
  %storageMode68 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !160
  store i32 1, i32* %storageMode68, align 4, !dbg !160, !tbaa !87
  br label %return, !dbg !161

if.then73:                                        ; preds = %if.end26
  switch i32 %newType, label %return [
    i32 1, label %for.cond76.preheader
    i32 3, label %for.cond95.preheader
  ], !dbg !162

for.cond95.preheader:                             ; preds = %if.then73
  %cmp96329 = icmp sgt i32 %5, 0, !dbg !164
  br i1 %cmp96329, label %for.body97, label %for.end118, !dbg !164

for.cond76.preheader:                             ; preds = %if.then73
  %cmp77327 = icmp sgt i32 %5, 0, !dbg !167
  br i1 %cmp77327, label %for.body78, label %for.end89, !dbg !167

for.body78:                                       ; preds = %for.cond76.preheader, %for.body78
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %for.body78 ], [ 0, %for.cond76.preheader ]
  %arrayidx80 = getelementptr inbounds i32* %call28, i64 %indvars.iv341, !dbg !170
  %10 = load i32* %arrayidx80, align 4, !dbg !170, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !66), !dbg !170
  %arrayidx82 = getelementptr inbounds i32* %call29, i64 %indvars.iv341, !dbg !172
  %11 = load i32* %arrayidx82, align 4, !dbg !172, !tbaa !87
  store i32 %11, i32* %arrayidx80, align 4, !dbg !172, !tbaa !87
  store i32 %10, i32* %arrayidx82, align 4, !dbg !173, !tbaa !87
  %indvars.iv.next342 = add i64 %indvars.iv341, 1, !dbg !167
  %lftr.wideiv343 = trunc i64 %indvars.iv.next342 to i32, !dbg !167
  %exitcond344 = icmp eq i32 %lftr.wideiv343, %5, !dbg !167
  br i1 %exitcond344, label %for.end89, label %for.body78, !dbg !167

for.end89:                                        ; preds = %for.body78, %for.cond76.preheader
  store i32 1, i32* %coordType, align 4, !dbg !174, !tbaa !87
  %storageMode91 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !175
  store i32 1, i32* %storageMode91, align 4, !dbg !175, !tbaa !87
  br label %return, !dbg !176

for.body97:                                       ; preds = %for.cond95.preheader, %for.body97
  %indvars.iv347 = phi i64 [ %indvars.iv.next348, %for.body97 ], [ 0, %for.cond95.preheader ]
  %arrayidx99 = getelementptr inbounds i32* %call28, i64 %indvars.iv347, !dbg !177
  %12 = load i32* %arrayidx99, align 4, !dbg !177, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !60), !dbg !177
  %arrayidx101 = getelementptr inbounds i32* %call29, i64 %indvars.iv347, !dbg !179
  %13 = load i32* %arrayidx101, align 4, !dbg !179, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !65), !dbg !179
  %cmp102 = icmp sgt i32 %13, %12, !dbg !180
  %.322 = select i1 %cmp102, i32 %12, i32 %13
  store i32 %.322, i32* %arrayidx99, align 4, !dbg !181, !tbaa !87
  %storemerge = sub nsw i32 %12, %13, !dbg !183
  store i32 %storemerge, i32* %arrayidx101, align 4, !dbg !184, !tbaa !87
  %indvars.iv.next348 = add i64 %indvars.iv347, 1, !dbg !164
  %lftr.wideiv349 = trunc i64 %indvars.iv.next348 to i32, !dbg !164
  %exitcond350 = icmp eq i32 %lftr.wideiv349, %5, !dbg !164
  br i1 %exitcond350, label %for.end118, label %for.body97, !dbg !164

for.end118:                                       ; preds = %for.body97, %for.cond95.preheader
  store i32 3, i32* %coordType, align 4, !dbg !186, !tbaa !87
  %storageMode120 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !187
  store i32 1, i32* %storageMode120, align 4, !dbg !187, !tbaa !87
  br label %return, !dbg !188

if.then125:                                       ; preds = %if.end26
  switch i32 %newType, label %return [
    i32 1, label %for.cond128.preheader
    i32 2, label %for.cond152.preheader
  ], !dbg !189

for.cond152.preheader:                            ; preds = %if.then125
  %cmp153333 = icmp sgt i32 %5, 0, !dbg !191
  br i1 %cmp153333, label %for.body154, label %for.end171, !dbg !191

for.cond128.preheader:                            ; preds = %if.then125
  %cmp129331 = icmp sgt i32 %5, 0, !dbg !194
  br i1 %cmp129331, label %for.body130, label %for.end146, !dbg !194

for.body130:                                      ; preds = %for.cond128.preheader, %for.body130
  %indvars.iv351 = phi i64 [ %indvars.iv.next352, %for.body130 ], [ 0, %for.cond128.preheader ]
  %arrayidx132 = getelementptr inbounds i32* %call28, i64 %indvars.iv351, !dbg !197
  %14 = load i32* %arrayidx132, align 4, !dbg !197, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !59), !dbg !197
  %arrayidx134 = getelementptr inbounds i32* %call29, i64 %indvars.iv351, !dbg !199
  %15 = load i32* %arrayidx134, align 4, !dbg !199, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !63), !dbg !199
  %cmp135 = icmp sgt i32 %15, -1, !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !65), !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !60), !dbg !203
  %sub138 = select i1 %cmp135, i32 0, i32 %15, !dbg !200
  %row.0 = sub nsw i32 %14, %sub138, !dbg !200
  %add = select i1 %cmp135, i32 %15, i32 0, !dbg !200
  %col.0 = add nsw i32 %add, %14, !dbg !200
  store i32 %row.0, i32* %arrayidx132, align 4, !dbg !205, !tbaa !87
  store i32 %col.0, i32* %arrayidx134, align 4, !dbg !206, !tbaa !87
  %indvars.iv.next352 = add i64 %indvars.iv351, 1, !dbg !194
  %lftr.wideiv353 = trunc i64 %indvars.iv.next352 to i32, !dbg !194
  %exitcond354 = icmp eq i32 %lftr.wideiv353, %5, !dbg !194
  br i1 %exitcond354, label %for.end146, label %for.body130, !dbg !194

for.end146:                                       ; preds = %for.body130, %for.cond128.preheader
  store i32 1, i32* %coordType, align 4, !dbg !207, !tbaa !87
  %storageMode148 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !208
  store i32 1, i32* %storageMode148, align 4, !dbg !208, !tbaa !87
  br label %return, !dbg !209

for.body154:                                      ; preds = %for.cond152.preheader, %for.body154
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %for.body154 ], [ 0, %for.cond152.preheader ]
  %arrayidx156 = getelementptr inbounds i32* %call28, i64 %indvars.iv355, !dbg !210
  %16 = load i32* %arrayidx156, align 4, !dbg !210, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !59), !dbg !210
  %arrayidx158 = getelementptr inbounds i32* %call29, i64 %indvars.iv355, !dbg !212
  %17 = load i32* %arrayidx158, align 4, !dbg !212, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !63), !dbg !212
  %cmp159 = icmp sgt i32 %17, -1, !dbg !213
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !65), !dbg !214
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !60), !dbg !216
  %sub163 = select i1 %cmp159, i32 0, i32 %17, !dbg !213
  %row.1 = sub nsw i32 %16, %sub163, !dbg !213
  %add161 = select i1 %cmp159, i32 %17, i32 0, !dbg !213
  %col.1 = add nsw i32 %add161, %16, !dbg !213
  store i32 %col.1, i32* %arrayidx156, align 4, !dbg !218, !tbaa !87
  store i32 %row.1, i32* %arrayidx158, align 4, !dbg !219, !tbaa !87
  %indvars.iv.next356 = add i64 %indvars.iv355, 1, !dbg !191
  %lftr.wideiv357 = trunc i64 %indvars.iv.next356 to i32, !dbg !191
  %exitcond358 = icmp eq i32 %lftr.wideiv357, %5, !dbg !191
  br i1 %exitcond358, label %for.end171, label %for.body154, !dbg !191

for.end171:                                       ; preds = %for.body154, %for.cond152.preheader
  store i32 2, i32* %coordType, align 4, !dbg !220, !tbaa !87
  %storageMode173 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !221
  store i32 1, i32* %storageMode173, align 4, !dbg !221, !tbaa !87
  br label %return, !dbg !222

return:                                           ; preds = %if.then125, %if.end26, %if.then73, %if.then31, %for.end66, %for.end, %for.end171, %for.end146, %for.end89, %for.end118, %if.end18, %if.then24
  ret void, !dbg !223
}

; Function Attrs: optsize
declare i32* @InpMtx_ivec1(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_ivec2(%struct._InpMtx*) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_changeStorageMode(%struct._InpMtx* %inpmtx, i32 %newMode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !71), !dbg !224
  tail call void @llvm.dbg.value(metadata !{i32 %newMode}, i64 0, metadata !72), !dbg !225
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !226
  br i1 %cmp, label %if.then, label %if.end, !dbg !226

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !227, !tbaa !82
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* null, i32 %newMode) #5, !dbg !227
  tail call void @exit(i32 -1) #6, !dbg !229
  unreachable, !dbg !229

if.end:                                           ; preds = %entry
  %newMode.off = add i32 %newMode, -1, !dbg !230
  %1 = icmp ugt i32 %newMode.off, 1, !dbg !230
  %cmp4 = icmp ne i32 %newMode, 3, !dbg !230
  %or.cond44 = and i1 %1, %cmp4, !dbg !230
  br i1 %or.cond44, label %if.then5, label %if.end7, !dbg !230

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !231, !tbaa !82
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([72 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newMode) #5, !dbg !231
  tail call void @exit(i32 -1) #6, !dbg !233
  unreachable, !dbg !233

if.end7:                                          ; preds = %if.end
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !234
  %3 = load i32* %storageMode, align 4, !dbg !234, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !73), !dbg !234
  %cmp8 = icmp eq i32 %3, %newMode, !dbg !235
  br i1 %cmp8, label %return, label %if.end10, !dbg !235

if.end10:                                         ; preds = %if.end7
  switch i32 %3, label %return [
    i32 1, label %if.then12
    i32 2, label %if.then23
    i32 3, label %if.then35
  ], !dbg !236

if.then12:                                        ; preds = %if.end10
  switch i32 %newMode, label %return [
    i32 2, label %if.then14
    i32 3, label %if.then17
  ], !dbg !237

if.then14:                                        ; preds = %if.then12
  tail call void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #5, !dbg !239
  store i32 2, i32* %storageMode, align 4, !dbg !241, !tbaa !87
  br label %return, !dbg !242

if.then17:                                        ; preds = %if.then12
  tail call void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #5, !dbg !243
  tail call void @InpMtx_convertToVectors(%struct._InpMtx* %inpmtx) #5, !dbg !245
  store i32 3, i32* %storageMode, align 4, !dbg !246, !tbaa !87
  br label %return, !dbg !247

if.then23:                                        ; preds = %if.end10
  switch i32 %newMode, label %return [
    i32 1, label %if.then25
    i32 3, label %if.then29
  ], !dbg !248

if.then25:                                        ; preds = %if.then23
  store i32 1, i32* %storageMode, align 4, !dbg !250, !tbaa !87
  br label %return, !dbg !252

if.then29:                                        ; preds = %if.then23
  tail call void @InpMtx_convertToVectors(%struct._InpMtx* %inpmtx) #5, !dbg !253
  store i32 3, i32* %storageMode, align 4, !dbg !255, !tbaa !87
  br label %return, !dbg !256

if.then35:                                        ; preds = %if.end10
  %4 = icmp ult i32 %newMode.off, 2, !dbg !257
  br i1 %4, label %if.then38, label %return, !dbg !257

if.then38:                                        ; preds = %if.then35
  store i32 %newMode, i32* %storageMode, align 4, !dbg !259, !tbaa !87
  br label %return, !dbg !261

return:                                           ; preds = %if.end10, %if.then23, %if.then12, %if.then17, %if.then14, %if.then35, %if.then38, %if.then25, %if.then29, %if.end7
  ret void, !dbg !262
}

; Function Attrs: optsize
declare void @InpMtx_sortAndCompress(%struct._InpMtx*) #3

; Function Attrs: optsize
declare void @InpMtx_convertToVectors(%struct._InpMtx*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !53, metadata !69}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_init", metadata !"InpMtx_init", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32, i32, i32)* @InpMtx_init, null, null, metadata !47, i32 43} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 43] [InpMtx_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !21, metadata !31, metadata !32, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!22 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!32 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!33 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!38 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!39 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!40 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!43 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!45 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !22} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !22} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!48 = metadata !{i32 786689, metadata !4, metadata !"inpmtx", metadata !5, i32 16777254, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 38]
!49 = metadata !{i32 786689, metadata !4, metadata !"coordType", metadata !5, i32 33554471, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coordType] [line 39]
!50 = metadata !{i32 786689, metadata !4, metadata !"inputMode", metadata !5, i32 50331688, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inputMode] [line 40]
!51 = metadata !{i32 786689, metadata !4, metadata !"maxnent", metadata !5, i32 67108905, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxnent] [line 41]
!52 = metadata !{i32 786689, metadata !4, metadata !"maxnvector", metadata !5, i32 83886122, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxnvector] [line 42]
!53 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_changeCoordType", metadata !"InpMtx_changeCoordType", metadata !"", i32 114, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32)* @InpMtx_changeCoordType, null, null, metadata !56, i32 117} ; [ DW_TAG_subprogram ] [line 114] [def] [scope 117] [InpMtx_changeCoordType]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{null, metadata !8, metadata !14}
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!57 = metadata !{i32 786689, metadata !53, metadata !"inpmtx", metadata !5, i32 16777331, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 115]
!58 = metadata !{i32 786689, metadata !53, metadata !"newType", metadata !5, i32 33554548, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newType] [line 116]
!59 = metadata !{i32 786688, metadata !53, metadata !"chev", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chev] [line 118]
!60 = metadata !{i32 786688, metadata !53, metadata !"col", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 118]
!61 = metadata !{i32 786688, metadata !53, metadata !"i", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 118]
!62 = metadata !{i32 786688, metadata !53, metadata !"nent", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 118]
!63 = metadata !{i32 786688, metadata !53, metadata !"off", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 118]
!64 = metadata !{i32 786688, metadata !53, metadata !"oldType", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldType] [line 118]
!65 = metadata !{i32 786688, metadata !53, metadata !"row", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 118]
!66 = metadata !{i32 786688, metadata !53, metadata !"temp", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 118]
!67 = metadata !{i32 786688, metadata !53, metadata !"ivec1", metadata !5, i32 119, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 119]
!68 = metadata !{i32 786688, metadata !53, metadata !"ivec2", metadata !5, i32 119, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 119]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_changeStorageMode", metadata !"InpMtx_changeStorageMode", metadata !"", i32 286, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32)* @InpMtx_changeStorageMode, null, null, metadata !70, i32 289} ; [ DW_TAG_subprogram ] [line 286] [def] [scope 289] [InpMtx_changeStorageMode]
!70 = metadata !{metadata !71, metadata !72, metadata !73}
!71 = metadata !{i32 786689, metadata !69, metadata !"inpmtx", metadata !5, i32 16777503, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 287]
!72 = metadata !{i32 786689, metadata !69, metadata !"newMode", metadata !5, i32 33554720, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newMode] [line 288]
!73 = metadata !{i32 786688, metadata !69, metadata !"oldMode", metadata !5, i32 290, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldMode] [line 290]
!74 = metadata !{i32 38, i32 0, metadata !4, null}
!75 = metadata !{i32 39, i32 0, metadata !4, null}
!76 = metadata !{i32 40, i32 0, metadata !4, null}
!77 = metadata !{i32 41, i32 0, metadata !4, null}
!78 = metadata !{i32 42, i32 0, metadata !4, null}
!79 = metadata !{i32 49, i32 0, metadata !4, null}
!80 = metadata !{i32 50, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !4, i32 49, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!82 = metadata !{metadata !"any pointer", metadata !83}
!83 = metadata !{metadata !"omnipotent char", metadata !84}
!84 = metadata !{metadata !"Simple C/C++ TBAA"}
!85 = metadata !{i32 53, i32 0, metadata !81, null}
!86 = metadata !{i32 55, i32 0, metadata !4, null}
!87 = metadata !{metadata !"int", metadata !83}
!88 = metadata !{i32 58, i32 0, metadata !89, null} ; [ DW_TAG_imported_module ]
!89 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!90 = metadata !{i32 61, i32 0, metadata !89, null}
!91 = metadata !{i32 63, i32 0, metadata !4, null}
!92 = metadata !{i32 66, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !4, i32 65, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!94 = metadata !{i32 69, i32 0, metadata !93, null}
!95 = metadata !{i32 71, i32 0, metadata !4, null}
!96 = metadata !{i32 72, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !4, i32 71, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!98 = metadata !{i32 76, i32 0, metadata !97, null}
!99 = metadata !{i32 83, i32 0, metadata !4, null}
!100 = metadata !{i32 89, i32 0, metadata !4, null}
!101 = metadata !{i32 90, i32 0, metadata !4, null}
!102 = metadata !{i32 91, i32 0, metadata !4, null}
!103 = metadata !{i32 92, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !4, i32 91, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!105 = metadata !{i32 93, i32 0, metadata !104, null}
!106 = metadata !{i32 100, i32 0, metadata !4, null}
!107 = metadata !{i32 101, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !4, i32 100, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!109 = metadata !{i32 102, i32 0, metadata !108, null}
!110 = metadata !{i32 103, i32 0, metadata !4, null}
!111 = metadata !{i32 115, i32 0, metadata !53, null}
!112 = metadata !{i32 116, i32 0, metadata !53, null}
!113 = metadata !{i32 125, i32 0, metadata !53, null}
!114 = metadata !{i32 126, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !53, i32 125, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!116 = metadata !{i32 129, i32 0, metadata !115, null}
!117 = metadata !{i32 131, i32 0, metadata !53, null}
!118 = metadata !{i32 133, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !53, i32 132, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!120 = metadata !{i32 136, i32 0, metadata !119, null}
!121 = metadata !{i32 138, i32 0, metadata !53, null}
!122 = metadata !{i32 141, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !53, i32 140, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!124 = metadata !{i32 144, i32 0, metadata !123, null}
!125 = metadata !{i32 146, i32 0, metadata !53, null}
!126 = metadata !{i32 147, i32 0, metadata !53, null}
!127 = metadata !{i32 150, i32 0, metadata !53, null}
!128 = metadata !{i32 156, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !53, i32 150, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!130 = metadata !{i32 157, i32 0, metadata !129, null}
!131 = metadata !{i32 159, i32 0, metadata !53, null}
!132 = metadata !{i32 160, i32 0, metadata !53, null}
!133 = metadata !{i32 161, i32 0, metadata !53, null}
!134 = metadata !{i32 162, i32 0, metadata !53, null}
!135 = metadata !{i32 163, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !53, i32 162, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!137 = metadata !{i32 182, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !139, i32 182, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!139 = metadata !{i32 786443, metadata !1, metadata !136, i32 176, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!140 = metadata !{i32 169, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !142, i32 169, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!142 = metadata !{i32 786443, metadata !1, metadata !136, i32 163, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!143 = metadata !{i32 170, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !141, i32 169, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!145 = metadata !{i32 171, i32 0, metadata !144, null}
!146 = metadata !{i32 172, i32 0, metadata !144, null}
!147 = metadata !{i32 174, i32 0, metadata !142, null}
!148 = metadata !{i32 175, i32 0, metadata !142, null}
!149 = metadata !{i32 176, i32 0, metadata !142, null}
!150 = metadata !{i32 183, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !138, i32 182, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!152 = metadata !{i32 184, i32 0, metadata !151, null}
!153 = metadata !{i32 185, i32 0, metadata !151, null}
!154 = metadata !{i32 189, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !151, i32 188, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!156 = metadata !{i32 190, i32 0, metadata !155, null}
!157 = metadata !{i32 187, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !151, i32 185, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!159 = metadata !{i32 193, i32 0, metadata !139, null}
!160 = metadata !{i32 194, i32 0, metadata !139, null}
!161 = metadata !{i32 195, i32 0, metadata !139, null}
!162 = metadata !{i32 197, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !53, i32 196, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!164 = metadata !{i32 216, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !166, i32 216, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!166 = metadata !{i32 786443, metadata !1, metadata !163, i32 210, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!167 = metadata !{i32 203, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !169, i32 203, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!169 = metadata !{i32 786443, metadata !1, metadata !163, i32 197, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!170 = metadata !{i32 204, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !168, i32 203, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!172 = metadata !{i32 205, i32 0, metadata !171, null}
!173 = metadata !{i32 206, i32 0, metadata !171, null}
!174 = metadata !{i32 208, i32 0, metadata !169, null}
!175 = metadata !{i32 209, i32 0, metadata !169, null}
!176 = metadata !{i32 210, i32 0, metadata !169, null}
!177 = metadata !{i32 217, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !165, i32 216, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!179 = metadata !{i32 218, i32 0, metadata !178, null}
!180 = metadata !{i32 219, i32 0, metadata !178, null}
!181 = metadata !{i32 223, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !178, i32 222, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!183 = metadata !{i32 224, i32 0, metadata !182, null}
!184 = metadata !{i32 221, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !178, i32 219, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!186 = metadata !{i32 227, i32 0, metadata !166, null}
!187 = metadata !{i32 228, i32 0, metadata !166, null}
!188 = metadata !{i32 229, i32 0, metadata !166, null}
!189 = metadata !{i32 231, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !53, i32 230, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!191 = metadata !{i32 258, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !193, i32 258, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!193 = metadata !{i32 786443, metadata !1, metadata !190, i32 252, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!194 = metadata !{i32 237, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !196, i32 237, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!196 = metadata !{i32 786443, metadata !1, metadata !190, i32 231, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!197 = metadata !{i32 238, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !195, i32 237, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!199 = metadata !{i32 239, i32 0, metadata !198, null}
!200 = metadata !{i32 240, i32 0, metadata !198, null}
!201 = metadata !{i32 241, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !198, i32 240, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!203 = metadata !{i32 244, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !198, i32 243, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!205 = metadata !{i32 247, i32 0, metadata !198, null}
!206 = metadata !{i32 248, i32 0, metadata !198, null}
!207 = metadata !{i32 250, i32 0, metadata !196, null}
!208 = metadata !{i32 251, i32 0, metadata !196, null}
!209 = metadata !{i32 252, i32 0, metadata !196, null}
!210 = metadata !{i32 259, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !192, i32 258, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!212 = metadata !{i32 260, i32 0, metadata !211, null}
!213 = metadata !{i32 261, i32 0, metadata !211, null}
!214 = metadata !{i32 262, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !211, i32 261, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!216 = metadata !{i32 265, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !211, i32 264, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!218 = metadata !{i32 268, i32 0, metadata !211, null}
!219 = metadata !{i32 269, i32 0, metadata !211, null}
!220 = metadata !{i32 271, i32 0, metadata !193, null}
!221 = metadata !{i32 272, i32 0, metadata !193, null}
!222 = metadata !{i32 273, i32 0, metadata !193, null}
!223 = metadata !{i32 275, i32 0, metadata !53, null}
!224 = metadata !{i32 287, i32 0, metadata !69, null}
!225 = metadata !{i32 288, i32 0, metadata !69, null}
!226 = metadata !{i32 296, i32 0, metadata !69, null}
!227 = metadata !{i32 297, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !69, i32 296, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!229 = metadata !{i32 299, i32 0, metadata !228, null}
!230 = metadata !{i32 301, i32 0, metadata !69, null}
!231 = metadata !{i32 303, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !69, i32 302, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!233 = metadata !{i32 305, i32 0, metadata !232, null}
!234 = metadata !{i32 307, i32 0, metadata !69, null}
!235 = metadata !{i32 308, i32 0, metadata !69, null}
!236 = metadata !{i32 311, i32 0, metadata !69, null}
!237 = metadata !{i32 312, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !69, i32 311, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!239 = metadata !{i32 318, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !238, i32 312, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!241 = metadata !{i32 319, i32 0, metadata !240, null}
!242 = metadata !{i32 320, i32 0, metadata !240, null}
!243 = metadata !{i32 326, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !238, i32 320, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!245 = metadata !{i32 327, i32 0, metadata !244, null}
!246 = metadata !{i32 328, i32 0, metadata !244, null}
!247 = metadata !{i32 329, i32 0, metadata !244, null}
!248 = metadata !{i32 331, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !69, i32 330, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!250 = metadata !{i32 338, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !249, i32 331, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!252 = metadata !{i32 339, i32 0, metadata !251, null}
!253 = metadata !{i32 345, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !249, i32 339, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!255 = metadata !{i32 346, i32 0, metadata !254, null}
!256 = metadata !{i32 347, i32 0, metadata !254, null}
!257 = metadata !{i32 349, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !69, i32 348, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!259 = metadata !{i32 356, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !258, i32 349, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c]
!261 = metadata !{i32 357, i32 0, metadata !260, null}
!262 = metadata !{i32 359, i32 0, metadata !69, null}
