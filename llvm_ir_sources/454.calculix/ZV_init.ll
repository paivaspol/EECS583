; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._ZV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in ZV_init(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ZV_init2(%p,%d,%d,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [69 x i8] c"\0A fatal error in ZV_init2(%p,%d,%d,%d,%p)\0A size = %d, maxsize = %d \0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in ZV_init2(%p,%d,%d,%d,%p)\0A owned = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"\0A fatal error in ZV_init2(%p,%d,%d,%d,%p)\0A owned = %d and vec = %p\00", align 1
@.str5 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ZV_setMaxsize(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [73 x i8] c"\0A fatal error in ZV_setMaxsize(%p,%d)\0A zv->maxsize = %d, zv->owned = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [71 x i8] c"\0A fatal error in ZV_setMaxsize(%p,%d)\0A zv->size = %d, zv->vec is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in ZV_setSize(%p,%d)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [84 x i8] c"\0A fatal error in ZV_setSize(%p,%d)\0A zv->maxsize = %d, newsize = %d, zv->owned = %d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_init(%struct._ZV* %zv, i32 %size, double* %entries) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %zv, i64 0, metadata !22, metadata !55), !dbg !56
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !23, metadata !55), !dbg !57
  tail call void @llvm.dbg.value(metadata double* %entries, i64 0, metadata !24, metadata !55), !dbg !58
  %1 = icmp eq %struct._ZV* %zv, null, !dbg !59
  %2 = icmp slt i32 %size, 0, !dbg !61
  %or.cond = or i1 %1, %2, !dbg !62
  br i1 %or.cond, label %3, label %6, !dbg !62

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !63, !tbaa !65
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._ZV* %zv, i32 %size, double* %entries) #5, !dbg !69
  tail call void @exit(i32 -1) #6, !dbg !70
  unreachable, !dbg !70

; <label>:6                                       ; preds = %0
  tail call void @ZV_clearData(%struct._ZV* %zv) #5, !dbg !71
  %7 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 0, !dbg !72
  store i32 %size, i32* %7, align 4, !dbg !73, !tbaa !74
  %8 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 1, !dbg !77
  store i32 %size, i32* %8, align 4, !dbg !78, !tbaa !79
  %9 = icmp eq double* %entries, null, !dbg !80
  br i1 %9, label %13, label %10, !dbg !82

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !83
  store i32 0, i32* %11, align 4, !dbg !85, !tbaa !86
  %12 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3, !dbg !87
  store double* %entries, double** %12, align 8, !dbg !88, !tbaa !89
  br label %20, !dbg !90

; <label>:13                                      ; preds = %6
  %14 = icmp sgt i32 %size, 0, !dbg !91
  br i1 %14, label %15, label %20, !dbg !93

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !94
  store i32 1, i32* %16, align 4, !dbg !96, !tbaa !86
  %17 = shl nsw i32 %size, 1, !dbg !97
  %18 = tail call double* @DVinit(i32 %17, double 0.000000e+00) #5, !dbg !98
  %19 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3, !dbg !99
  store double* %18, double** %19, align 8, !dbg !100, !tbaa !89
  br label %20, !dbg !101

; <label>:20                                      ; preds = %13, %15, %10
  ret void, !dbg !102
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @ZV_clearData(%struct._ZV*) #3

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_init1(%struct._ZV* %zv, i32 %size) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %zv, i64 0, metadata !29, metadata !55), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !30, metadata !55), !dbg !104
  tail call void @ZV_init(%struct._ZV* %zv, i32 %size, double* null) #7, !dbg !105
  ret void, !dbg !106
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_init2(%struct._ZV* %zv, i32 %size, i32 %maxsize, i32 %owned, double* %vec) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %zv, i64 0, metadata !35, metadata !55), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !36, metadata !55), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %maxsize, i64 0, metadata !37, metadata !55), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %owned, i64 0, metadata !38, metadata !55), !dbg !110
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !39, metadata !55), !dbg !111
  %1 = icmp eq %struct._ZV* %zv, null, !dbg !112
  br i1 %1, label %2, label %5, !dbg !114

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !115, !tbaa !65
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._ZV* null, i32 %size, i32 %maxsize, i32 %owned, double* %vec) #5, !dbg !117
  tail call void @exit(i32 -1) #6, !dbg !118
  unreachable, !dbg !118

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %size, 0, !dbg !119
  %7 = icmp slt i32 %maxsize, %size, !dbg !121
  %or.cond = or i1 %6, %7, !dbg !122
  br i1 %or.cond, label %8, label %11, !dbg !122

; <label>:8                                       ; preds = %5
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !123, !tbaa !65
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([69 x i8]* @.str2, i64 0, i64 0), %struct._ZV* %zv, i32 %size, i32 %maxsize, i32 %owned, double* %vec, i32 %size, i32 %maxsize) #5, !dbg !125
  tail call void @exit(i32 -1) #6, !dbg !126
  unreachable, !dbg !126

; <label>:11                                      ; preds = %5
  %12 = icmp ugt i32 %owned, 1, !dbg !127
  br i1 %12, label %13, label %16, !dbg !127

; <label>:13                                      ; preds = %11
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !129, !tbaa !65
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._ZV* %zv, i32 %size, i32 %maxsize, i32 %owned, double* %vec, i32 %owned) #5, !dbg !131
  tail call void @exit(i32 -1) #6, !dbg !132
  unreachable, !dbg !132

; <label>:16                                      ; preds = %11
  %17 = icmp eq i32 %owned, 1, !dbg !133
  %18 = icmp eq double* %vec, null, !dbg !135
  %or.cond3 = and i1 %17, %18, !dbg !136
  br i1 %or.cond3, label %19, label %22, !dbg !136

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !137, !tbaa !65
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), %struct._ZV* %zv, i32 %size, i32 %maxsize, i32 1, double* null, i32 1, double* null) #5, !dbg !139
  tail call void @exit(i32 -1) #6, !dbg !140
  unreachable, !dbg !140

; <label>:22                                      ; preds = %16
  tail call void @ZV_clearData(%struct._ZV* %zv) #5, !dbg !141
  br i1 %18, label %23, label %24, !dbg !142

; <label>:23                                      ; preds = %22
  tail call void @ZV_init(%struct._ZV* %zv, i32 %size, double* null) #7, !dbg !143
  br label %29, !dbg !146

; <label>:24                                      ; preds = %22
  %25 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 0, !dbg !147
  store i32 %size, i32* %25, align 4, !dbg !149, !tbaa !74
  %26 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 1, !dbg !150
  store i32 %maxsize, i32* %26, align 4, !dbg !151, !tbaa !79
  %27 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !152
  store i32 %owned, i32* %27, align 4, !dbg !153, !tbaa !86
  %28 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3, !dbg !154
  store double* %vec, double** %28, align 8, !dbg !155, !tbaa !89
  br label %29

; <label>:29                                      ; preds = %24, %23
  ret void, !dbg !156
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_setMaxsize(%struct._ZV* %zv, i32 %newmaxsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %zv, i64 0, metadata !42, metadata !55), !dbg !157
  tail call void @llvm.dbg.value(metadata i32 %newmaxsize, i64 0, metadata !43, metadata !55), !dbg !158
  %1 = icmp eq %struct._ZV* %zv, null, !dbg !159
  %2 = icmp slt i32 %newmaxsize, 0, !dbg !161
  %or.cond = or i1 %1, %2, !dbg !162
  br i1 %or.cond, label %3, label %6, !dbg !162

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !163, !tbaa !65
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0), %struct._ZV* %zv, i32 %newmaxsize) #5, !dbg !165
  tail call void @exit(i32 -1) #6, !dbg !166
  unreachable, !dbg !166

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 1, !dbg !167
  %8 = load i32* %7, align 4, !dbg !167, !tbaa !79
  %9 = icmp sgt i32 %8, 0, !dbg !169
  br i1 %9, label %10, label %17, !dbg !170

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !171
  %12 = load i32* %11, align 4, !dbg !171, !tbaa !86
  %13 = icmp eq i32 %12, 0, !dbg !172
  br i1 %13, label %14, label %17, !dbg !173

; <label>:14                                      ; preds = %10
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !174, !tbaa !65
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([73 x i8]* @.str6, i64 0, i64 0), %struct._ZV* %zv, i32 %newmaxsize, i32 %8, i32 0) #5, !dbg !176
  tail call void @exit(i32 -1) #6, !dbg !177
  unreachable, !dbg !177

; <label>:17                                      ; preds = %10, %6
  %18 = icmp eq i32 %8, %newmaxsize, !dbg !178
  br i1 %18, label %42, label %19, !dbg !179

; <label>:19                                      ; preds = %17
  %20 = shl nsw i32 %newmaxsize, 1, !dbg !180
  %21 = tail call double* @DVinit(i32 %20, double 0.000000e+00) #5, !dbg !181
  tail call void @llvm.dbg.value(metadata double* %21, i64 0, metadata !44, metadata !55), !dbg !182
  %22 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 0, !dbg !183
  %23 = load i32* %22, align 4, !dbg !183, !tbaa !74
  %24 = icmp sgt i32 %23, 0, !dbg !185
  %25 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3, !dbg !186
  br i1 %24, label %26, label %._crit_edge, !dbg !189

; <label>:26                                      ; preds = %19
  %27 = load double** %25, align 8, !dbg !186, !tbaa !89
  %28 = icmp eq double* %27, null, !dbg !190
  br i1 %28, label %29, label %32, !dbg !191

; <label>:29                                      ; preds = %26
  %30 = load %struct.__sFILE** @__stderrp, align 8, !dbg !192, !tbaa !65
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([71 x i8]* @.str7, i64 0, i64 0), %struct._ZV* %zv, i32 %newmaxsize, i32 %23) #5, !dbg !194
  tail call void @exit(i32 -1) #6, !dbg !195
  unreachable, !dbg !195

; <label>:32                                      ; preds = %26
  %33 = icmp sgt i32 %23, %newmaxsize, !dbg !196
  br i1 %33, label %36, label %34, !dbg !198

; <label>:34                                      ; preds = %32
  %35 = shl nsw i32 %23, 1, !dbg !199
  tail call void @DVcopy(i32 %35, double* %21, double* %27) #5, !dbg !201
  br label %._crit_edge, !dbg !202

; <label>:36                                      ; preds = %32
  tail call void @DVcopy(i32 %20, double* %21, double* %27) #5, !dbg !203
  store i32 %newmaxsize, i32* %22, align 4, !dbg !205, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %34, %36
  %37 = load double** %25, align 8, !dbg !206, !tbaa !89
  %38 = icmp eq double* %37, null, !dbg !208
  br i1 %38, label %40, label %39, !dbg !209

; <label>:39                                      ; preds = %._crit_edge
  tail call void @DVfree(double* %37) #5, !dbg !210
  br label %40, !dbg !212

; <label>:40                                      ; preds = %._crit_edge, %39
  store i32 %newmaxsize, i32* %7, align 4, !dbg !213, !tbaa !79
  %41 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !214
  store i32 1, i32* %41, align 4, !dbg !215, !tbaa !86
  store double* %21, double** %25, align 8, !dbg !216, !tbaa !89
  br label %42, !dbg !217

; <label>:42                                      ; preds = %17, %40
  ret void, !dbg !218
}

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_setSize(%struct._ZV* %zv, i32 %newsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %zv, i64 0, metadata !49, metadata !55), !dbg !219
  tail call void @llvm.dbg.value(metadata i32 %newsize, i64 0, metadata !50, metadata !55), !dbg !220
  %1 = icmp eq %struct._ZV* %zv, null, !dbg !221
  %2 = icmp slt i32 %newsize, 0, !dbg !223
  %or.cond = or i1 %1, %2, !dbg !224
  br i1 %or.cond, label %3, label %6, !dbg !224

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !225, !tbaa !65
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._ZV* %zv, i32 %newsize) #5, !dbg !227
  tail call void @exit(i32 -1) #6, !dbg !228
  unreachable, !dbg !228

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 1, !dbg !229
  %8 = load i32* %7, align 4, !dbg !229, !tbaa !79
  %9 = icmp sgt i32 %8, 0, !dbg !231
  %10 = icmp slt i32 %8, %newsize, !dbg !232
  %or.cond2 = and i1 %9, %10, !dbg !233
  br i1 %or.cond2, label %11, label %18, !dbg !233

; <label>:11                                      ; preds = %6
  %12 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !234
  %13 = load i32* %12, align 4, !dbg !234, !tbaa !86
  %14 = icmp eq i32 %13, 0, !dbg !235
  br i1 %14, label %15, label %18, !dbg !236

; <label>:15                                      ; preds = %11
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !237, !tbaa !65
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([84 x i8]* @.str9, i64 0, i64 0), %struct._ZV* %zv, i32 %newsize, i32 %8, i32 %newsize, i32 0) #5, !dbg !239
  tail call void @exit(i32 -1) #6, !dbg !240
  unreachable, !dbg !240

; <label>:18                                      ; preds = %11, %6
  br i1 %10, label %19, label %20, !dbg !241

; <label>:19                                      ; preds = %18
  tail call void @ZV_setMaxsize(%struct._ZV* %zv, i32 %newsize) #7, !dbg !242
  br label %20, !dbg !245

; <label>:20                                      ; preds = %19, %18
  %21 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 0, !dbg !246
  store i32 %newsize, i32* %21, align 4, !dbg !247, !tbaa !74
  ret void, !dbg !248
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!51, !52, !53}
!llvm.ident = !{!54}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !25, !31, !40, !47}
!6 = !DISubprogram(name: "ZV_init", scope: !1, file: !1, line: 25, type: !7, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*, i32, double*)* @ZV_init, variables: !21)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !19}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZV", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/../ZV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ZV", file: !11, line: 21, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !11, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zv", arg: 1, scope: !6, file: !1, line: 26, type: !9)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !6, file: !1, line: 27, type: !15)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entries", arg: 3, scope: !6, file: !1, line: 28, type: !19)
!25 = !DISubprogram(name: "ZV_init1", scope: !1, file: !1, line: 70, type: !26, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*, i32)* @ZV_init1, variables: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !9, !15}
!28 = !{!29, !30}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zv", arg: 1, scope: !25, file: !1, line: 71, type: !9)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !25, file: !1, line: 72, type: !15)
!31 = !DISubprogram(name: "ZV_init2", scope: !1, file: !1, line: 87, type: !32, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*, i32, i32, i32, double*)* @ZV_init2, variables: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !9, !15, !15, !15, !19}
!34 = !{!35, !36, !37, !38, !39}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zv", arg: 1, scope: !31, file: !1, line: 88, type: !9)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !31, file: !1, line: 89, type: !15)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxsize", arg: 3, scope: !31, file: !1, line: 90, type: !15)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "owned", arg: 4, scope: !31, file: !1, line: 91, type: !15)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 5, scope: !31, file: !1, line: 92, type: !19)
!40 = !DISubprogram(name: "ZV_setMaxsize", scope: !1, file: !1, line: 157, type: !26, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*, i32)* @ZV_setMaxsize, variables: !41)
!41 = !{!42, !43, !44}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zv", arg: 1, scope: !40, file: !1, line: 158, type: !9)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newmaxsize", arg: 2, scope: !40, file: !1, line: 159, type: !15)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vec", scope: !45, file: !1, line: 183, type: !19)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 177, column: 34)
!46 = distinct !DILexicalBlock(scope: !40, file: !1, line: 177, column: 6)
!47 = !DISubprogram(name: "ZV_setSize", scope: !1, file: !1, line: 236, type: !26, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*, i32)* @ZV_setSize, variables: !48)
!48 = !{!49, !50}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zv", arg: 1, scope: !47, file: !1, line: 237, type: !9)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newsize", arg: 2, scope: !47, file: !1, line: 238, type: !15)
!51 = !{i32 2, !"Dwarf Version", i32 2}
!52 = !{i32 2, !"Debug Info Version", i32 700000003}
!53 = !{i32 1, !"PIC Level", i32 2}
!54 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!55 = !DIExpression()
!56 = !DILocation(line: 26, column: 14, scope: !6)
!57 = !DILocation(line: 27, column: 13, scope: !6)
!58 = !DILocation(line: 28, column: 14, scope: !6)
!59 = !DILocation(line: 30, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !6, file: !1, line: 30, column: 6)
!61 = !DILocation(line: 30, column: 25, scope: !60)
!62 = !DILocation(line: 30, column: 17, scope: !60)
!63 = !DILocation(line: 31, column: 12, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 30, column: 31)
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 31, column: 4, scope: !64)
!70 = !DILocation(line: 33, column: 4, scope: !64)
!71 = !DILocation(line: 40, column: 1, scope: !6)
!72 = !DILocation(line: 46, column: 19, scope: !6)
!73 = !DILocation(line: 46, column: 24, scope: !6)
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZV", !76, i64 0, !76, i64 4, !76, i64 8, !66, i64 16}
!76 = !{!"int", !67, i64 0}
!77 = !DILocation(line: 46, column: 5, scope: !6)
!78 = !DILocation(line: 46, column: 13, scope: !6)
!79 = !{!75, !76, i64 4}
!80 = !DILocation(line: 52, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !6, file: !1, line: 52, column: 6)
!82 = !DILocation(line: 52, column: 6, scope: !6)
!83 = !DILocation(line: 53, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 52, column: 24)
!85 = !DILocation(line: 53, column: 14, scope: !84)
!86 = !{!75, !76, i64 8}
!87 = !DILocation(line: 54, column: 8, scope: !84)
!88 = !DILocation(line: 54, column: 14, scope: !84)
!89 = !{!75, !66, i64 16}
!90 = !DILocation(line: 55, column: 1, scope: !84)
!91 = !DILocation(line: 55, column: 18, scope: !92)
!92 = distinct !DILexicalBlock(scope: !81, file: !1, line: 55, column: 13)
!93 = !DILocation(line: 55, column: 13, scope: !81)
!94 = !DILocation(line: 56, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 55, column: 24)
!96 = !DILocation(line: 56, column: 14, scope: !95)
!97 = !DILocation(line: 57, column: 24, scope: !95)
!98 = !DILocation(line: 57, column: 16, scope: !95)
!99 = !DILocation(line: 57, column: 8, scope: !95)
!100 = !DILocation(line: 57, column: 14, scope: !95)
!101 = !DILocation(line: 58, column: 1, scope: !95)
!102 = !DILocation(line: 59, column: 1, scope: !6)
!103 = !DILocation(line: 71, column: 11, scope: !25)
!104 = !DILocation(line: 72, column: 10, scope: !25)
!105 = !DILocation(line: 74, column: 1, scope: !25)
!106 = !DILocation(line: 76, column: 1, scope: !25)
!107 = !DILocation(line: 88, column: 14, scope: !31)
!108 = !DILocation(line: 89, column: 13, scope: !31)
!109 = !DILocation(line: 90, column: 13, scope: !31)
!110 = !DILocation(line: 91, column: 13, scope: !31)
!111 = !DILocation(line: 92, column: 14, scope: !31)
!112 = !DILocation(line: 99, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !31, file: !1, line: 99, column: 6)
!114 = !DILocation(line: 99, column: 6, scope: !31)
!115 = !DILocation(line: 100, column: 12, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !1, line: 99, column: 19)
!117 = !DILocation(line: 100, column: 4, scope: !116)
!118 = !DILocation(line: 102, column: 4, scope: !116)
!119 = !DILocation(line: 104, column: 11, scope: !120)
!120 = distinct !DILexicalBlock(scope: !31, file: !1, line: 104, column: 6)
!121 = !DILocation(line: 104, column: 26, scope: !120)
!122 = !DILocation(line: 104, column: 15, scope: !120)
!123 = !DILocation(line: 105, column: 12, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 104, column: 35)
!125 = !DILocation(line: 105, column: 4, scope: !124)
!126 = !DILocation(line: 108, column: 4, scope: !124)
!127 = !DILocation(line: 110, column: 16, scope: !128)
!128 = distinct !DILexicalBlock(scope: !31, file: !1, line: 110, column: 6)
!129 = !DILocation(line: 111, column: 12, scope: !130)
!130 = distinct !DILexicalBlock(scope: !128, file: !1, line: 110, column: 31)
!131 = !DILocation(line: 111, column: 4, scope: !130)
!132 = !DILocation(line: 113, column: 4, scope: !130)
!133 = !DILocation(line: 115, column: 12, scope: !134)
!134 = distinct !DILexicalBlock(scope: !31, file: !1, line: 115, column: 6)
!135 = !DILocation(line: 115, column: 24, scope: !134)
!136 = !DILocation(line: 115, column: 17, scope: !134)
!137 = !DILocation(line: 116, column: 12, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !1, line: 115, column: 34)
!139 = !DILocation(line: 116, column: 4, scope: !138)
!140 = !DILocation(line: 119, column: 4, scope: !138)
!141 = !DILocation(line: 126, column: 1, scope: !31)
!142 = !DILocation(line: 128, column: 6, scope: !31)
!143 = !DILocation(line: 134, column: 4, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 128, column: 20)
!145 = distinct !DILexicalBlock(scope: !31, file: !1, line: 128, column: 6)
!146 = !DILocation(line: 135, column: 1, scope: !144)
!147 = !DILocation(line: 141, column: 8, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 135, column: 8)
!149 = !DILocation(line: 141, column: 16, scope: !148)
!150 = !DILocation(line: 142, column: 8, scope: !148)
!151 = !DILocation(line: 142, column: 16, scope: !148)
!152 = !DILocation(line: 143, column: 8, scope: !148)
!153 = !DILocation(line: 143, column: 16, scope: !148)
!154 = !DILocation(line: 144, column: 8, scope: !148)
!155 = !DILocation(line: 144, column: 16, scope: !148)
!156 = !DILocation(line: 146, column: 1, scope: !31)
!157 = !DILocation(line: 158, column: 11, scope: !40)
!158 = !DILocation(line: 159, column: 10, scope: !40)
!159 = !DILocation(line: 166, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !40, file: !1, line: 166, column: 6)
!161 = !DILocation(line: 166, column: 31, scope: !160)
!162 = !DILocation(line: 166, column: 17, scope: !160)
!163 = !DILocation(line: 167, column: 12, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 166, column: 37)
!165 = !DILocation(line: 167, column: 4, scope: !164)
!166 = !DILocation(line: 169, column: 4, scope: !164)
!167 = !DILocation(line: 171, column: 10, scope: !168)
!168 = distinct !DILexicalBlock(scope: !40, file: !1, line: 171, column: 6)
!169 = !DILocation(line: 171, column: 18, scope: !168)
!170 = !DILocation(line: 171, column: 22, scope: !168)
!171 = !DILocation(line: 171, column: 29, scope: !168)
!172 = !DILocation(line: 171, column: 35, scope: !168)
!173 = !DILocation(line: 171, column: 6, scope: !40)
!174 = !DILocation(line: 172, column: 12, scope: !175)
!175 = distinct !DILexicalBlock(scope: !168, file: !1, line: 171, column: 42)
!176 = !DILocation(line: 172, column: 4, scope: !175)
!177 = !DILocation(line: 175, column: 4, scope: !175)
!178 = !DILocation(line: 177, column: 18, scope: !46)
!179 = !DILocation(line: 177, column: 6, scope: !40)
!180 = !DILocation(line: 183, column: 28, scope: !45)
!181 = !DILocation(line: 183, column: 20, scope: !45)
!182 = !DILocation(line: 183, column: 14, scope: !45)
!183 = !DILocation(line: 184, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !45, file: !1, line: 184, column: 9)
!185 = !DILocation(line: 184, column: 18, scope: !184)
!186 = !DILocation(line: 190, column: 16, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 190, column: 12)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 184, column: 24)
!189 = !DILocation(line: 184, column: 9, scope: !45)
!190 = !DILocation(line: 190, column: 20, scope: !187)
!191 = !DILocation(line: 190, column: 12, scope: !188)
!192 = !DILocation(line: 191, column: 18, scope: !193)
!193 = distinct !DILexicalBlock(scope: !187, file: !1, line: 190, column: 30)
!194 = !DILocation(line: 191, column: 10, scope: !193)
!195 = !DILocation(line: 194, column: 10, scope: !193)
!196 = !DILocation(line: 196, column: 21, scope: !197)
!197 = distinct !DILexicalBlock(scope: !188, file: !1, line: 196, column: 12)
!198 = !DILocation(line: 196, column: 12, scope: !188)
!199 = !DILocation(line: 197, column: 18, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 196, column: 37)
!201 = !DILocation(line: 197, column: 10, scope: !200)
!202 = !DILocation(line: 198, column: 7, scope: !200)
!203 = !DILocation(line: 204, column: 10, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !1, line: 198, column: 14)
!205 = !DILocation(line: 205, column: 19, scope: !204)
!206 = !DILocation(line: 208, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !45, file: !1, line: 208, column: 9)
!208 = !DILocation(line: 208, column: 17, scope: !207)
!209 = !DILocation(line: 208, column: 9, scope: !45)
!210 = !DILocation(line: 214, column: 7, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 208, column: 27)
!212 = !DILocation(line: 215, column: 4, scope: !211)
!213 = !DILocation(line: 221, column: 16, scope: !45)
!214 = !DILocation(line: 222, column: 8, scope: !45)
!215 = !DILocation(line: 222, column: 16, scope: !45)
!216 = !DILocation(line: 223, column: 16, scope: !45)
!217 = !DILocation(line: 224, column: 1, scope: !45)
!218 = !DILocation(line: 225, column: 1, scope: !40)
!219 = !DILocation(line: 237, column: 11, scope: !47)
!220 = !DILocation(line: 238, column: 10, scope: !47)
!221 = !DILocation(line: 245, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !47, file: !1, line: 245, column: 6)
!223 = !DILocation(line: 245, column: 28, scope: !222)
!224 = !DILocation(line: 245, column: 17, scope: !222)
!225 = !DILocation(line: 246, column: 12, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 245, column: 34)
!227 = !DILocation(line: 246, column: 4, scope: !226)
!228 = !DILocation(line: 248, column: 4, scope: !226)
!229 = !DILocation(line: 250, column: 14, scope: !230)
!230 = distinct !DILexicalBlock(scope: !47, file: !1, line: 250, column: 6)
!231 = !DILocation(line: 250, column: 8, scope: !230)
!232 = !DILocation(line: 250, column: 37, scope: !230)
!233 = !DILocation(line: 250, column: 22, scope: !230)
!234 = !DILocation(line: 250, column: 54, scope: !230)
!235 = !DILocation(line: 250, column: 60, scope: !230)
!236 = !DILocation(line: 250, column: 6, scope: !47)
!237 = !DILocation(line: 251, column: 12, scope: !238)
!238 = distinct !DILexicalBlock(scope: !230, file: !1, line: 250, column: 67)
!239 = !DILocation(line: 251, column: 4, scope: !238)
!240 = !DILocation(line: 254, column: 4, scope: !238)
!241 = !DILocation(line: 256, column: 6, scope: !47)
!242 = !DILocation(line: 262, column: 4, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 256, column: 30)
!244 = distinct !DILexicalBlock(scope: !47, file: !1, line: 256, column: 6)
!245 = !DILocation(line: 263, column: 1, scope: !243)
!246 = !DILocation(line: 264, column: 5, scope: !47)
!247 = !DILocation(line: 264, column: 10, scope: !47)
!248 = !DILocation(line: 266, column: 1, scope: !47)
