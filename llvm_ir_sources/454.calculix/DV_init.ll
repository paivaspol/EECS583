; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in DV_init(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in DV_init2(%p,%d,%d,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DV_init2(%p,%d,%d,%d,%p)\0A size = %d, maxsize = %d \0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DV_init2(%p,%d,%d,%d,%p)\0A owned = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"\0A fatal error in DV_init2(%p,%d,%d,%d,%p)\0A owned = %d and vec = %p\00", align 1
@.str5 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DV_setMaxsize(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [73 x i8] c"\0A fatal error in DV_setMaxsize(%p,%d)\0A dv->maxsize = %d, dv->owned = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DV_setMaxsize(%p,%d)\0A dv->size = %d, dv->vec is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in DV_setSize(%p,%d)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [84 x i8] c"\0A fatal error in DV_setSize(%p,%d)\0A dv->maxsize = %d, newsize = %d, dv->owned = %d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_init(%struct._DV* %dv, i32 %size, double* %entries) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !22, metadata !55), !dbg !56
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !23, metadata !55), !dbg !57
  tail call void @llvm.dbg.value(metadata double* %entries, i64 0, metadata !24, metadata !55), !dbg !58
  %1 = icmp eq %struct._DV* %dv, null, !dbg !59
  %2 = icmp slt i32 %size, 0, !dbg !61
  %or.cond = or i1 %1, %2, !dbg !62
  br i1 %or.cond, label %3, label %6, !dbg !62

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !63, !tbaa !65
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._DV* %dv, i32 %size, double* %entries) #5, !dbg !69
  tail call void @exit(i32 -1) #6, !dbg !70
  unreachable, !dbg !70

; <label>:6                                       ; preds = %0
  tail call void @DV_clearData(%struct._DV* %dv) #5, !dbg !71
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !72
  store i32 %size, i32* %7, align 4, !dbg !73, !tbaa !74
  %8 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !77
  store i32 %size, i32* %8, align 4, !dbg !78, !tbaa !79
  %9 = icmp eq double* %entries, null, !dbg !80
  br i1 %9, label %13, label %10, !dbg !82

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !83
  store i32 0, i32* %11, align 4, !dbg !85, !tbaa !86
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !87
  store double* %entries, double** %12, align 8, !dbg !88, !tbaa !89
  br label %19, !dbg !90

; <label>:13                                      ; preds = %6
  %14 = icmp sgt i32 %size, 0, !dbg !91
  br i1 %14, label %15, label %19, !dbg !93

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !94
  store i32 1, i32* %16, align 4, !dbg !96, !tbaa !86
  %17 = tail call double* @DVinit2(i32 %size) #5, !dbg !97
  %18 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !98
  store double* %17, double** %18, align 8, !dbg !99, !tbaa !89
  br label %19, !dbg !100

; <label>:19                                      ; preds = %13, %15, %10
  ret void, !dbg !101
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: optsize
declare double* @DVinit2(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_init1(%struct._DV* %dv, i32 %size) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !29, metadata !55), !dbg !102
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !30, metadata !55), !dbg !103
  tail call void @DV_init(%struct._DV* %dv, i32 %size, double* null) #7, !dbg !104
  ret void, !dbg !105
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_init2(%struct._DV* %dv, i32 %size, i32 %maxsize, i32 %owned, double* %vec) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !35, metadata !55), !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !36, metadata !55), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %maxsize, i64 0, metadata !37, metadata !55), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %owned, i64 0, metadata !38, metadata !55), !dbg !109
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !39, metadata !55), !dbg !110
  %1 = icmp eq %struct._DV* %dv, null, !dbg !111
  br i1 %1, label %2, label %5, !dbg !113

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !114, !tbaa !65
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._DV* null, i32 %size, i32 %maxsize, i32 %owned, double* %vec) #5, !dbg !116
  tail call void @exit(i32 -1) #6, !dbg !117
  unreachable, !dbg !117

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %size, 0, !dbg !118
  %7 = icmp slt i32 %maxsize, %size, !dbg !120
  %or.cond = or i1 %6, %7, !dbg !121
  br i1 %or.cond, label %8, label %11, !dbg !121

; <label>:8                                       ; preds = %5
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !122, !tbaa !65
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([69 x i8]* @.str2, i64 0, i64 0), %struct._DV* %dv, i32 %size, i32 %maxsize, i32 %owned, double* %vec, i32 %size, i32 %maxsize) #5, !dbg !124
  tail call void @exit(i32 -1) #6, !dbg !125
  unreachable, !dbg !125

; <label>:11                                      ; preds = %5
  %12 = icmp ugt i32 %owned, 1, !dbg !126
  br i1 %12, label %13, label %16, !dbg !126

; <label>:13                                      ; preds = %11
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !128, !tbaa !65
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv, i32 %size, i32 %maxsize, i32 %owned, double* %vec, i32 %owned) #5, !dbg !130
  tail call void @exit(i32 -1) #6, !dbg !131
  unreachable, !dbg !131

; <label>:16                                      ; preds = %11
  %17 = icmp eq i32 %owned, 1, !dbg !132
  %18 = icmp eq double* %vec, null, !dbg !134
  %or.cond3 = and i1 %17, %18, !dbg !135
  br i1 %or.cond3, label %19, label %22, !dbg !135

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !136, !tbaa !65
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), %struct._DV* %dv, i32 %size, i32 %maxsize, i32 1, double* null, i32 1, double* null) #5, !dbg !138
  tail call void @exit(i32 -1) #6, !dbg !139
  unreachable, !dbg !139

; <label>:22                                      ; preds = %16
  tail call void @DV_clearData(%struct._DV* %dv) #5, !dbg !140
  br i1 %18, label %23, label %24, !dbg !141

; <label>:23                                      ; preds = %22
  tail call void @DV_init(%struct._DV* %dv, i32 %size, double* null) #7, !dbg !142
  br label %29, !dbg !145

; <label>:24                                      ; preds = %22
  %25 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !146
  store i32 %size, i32* %25, align 4, !dbg !148, !tbaa !74
  %26 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !149
  store i32 %maxsize, i32* %26, align 4, !dbg !150, !tbaa !79
  %27 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !151
  store i32 %owned, i32* %27, align 4, !dbg !152, !tbaa !86
  %28 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !153
  store double* %vec, double** %28, align 8, !dbg !154, !tbaa !89
  br label %29

; <label>:29                                      ; preds = %24, %23
  ret void, !dbg !155
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_setMaxsize(%struct._DV* %dv, i32 %newmaxsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !42, metadata !55), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %newmaxsize, i64 0, metadata !43, metadata !55), !dbg !157
  %1 = icmp eq %struct._DV* %dv, null, !dbg !158
  %2 = icmp slt i32 %newmaxsize, 0, !dbg !160
  %or.cond = or i1 %1, %2, !dbg !161
  br i1 %or.cond, label %3, label %6, !dbg !161

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !162, !tbaa !65
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i32 %newmaxsize) #5, !dbg !164
  tail call void @exit(i32 -1) #6, !dbg !165
  unreachable, !dbg !165

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !166
  %8 = load i32* %7, align 4, !dbg !166, !tbaa !79
  %9 = icmp sgt i32 %8, 0, !dbg !168
  br i1 %9, label %10, label %17, !dbg !169

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !170
  %12 = load i32* %11, align 4, !dbg !170, !tbaa !86
  %13 = icmp eq i32 %12, 0, !dbg !171
  br i1 %13, label %14, label %17, !dbg !172

; <label>:14                                      ; preds = %10
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !173, !tbaa !65
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([73 x i8]* @.str6, i64 0, i64 0), %struct._DV* %dv, i32 %newmaxsize, i32 %8, i32 0) #5, !dbg !175
  tail call void @exit(i32 -1) #6, !dbg !176
  unreachable, !dbg !176

; <label>:17                                      ; preds = %10, %6
  %18 = icmp eq i32 %8, %newmaxsize, !dbg !177
  br i1 %18, label %40, label %19, !dbg !178

; <label>:19                                      ; preds = %17
  %20 = tail call double* @DVinit2(i32 %newmaxsize) #5, !dbg !179
  tail call void @llvm.dbg.value(metadata double* %20, i64 0, metadata !44, metadata !55), !dbg !180
  %21 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !181
  %22 = load i32* %21, align 4, !dbg !181, !tbaa !74
  %23 = icmp sgt i32 %22, 0, !dbg !183
  %24 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !184
  br i1 %23, label %25, label %._crit_edge, !dbg !187

; <label>:25                                      ; preds = %19
  %26 = load double** %24, align 8, !dbg !184, !tbaa !89
  %27 = icmp eq double* %26, null, !dbg !188
  br i1 %27, label %28, label %31, !dbg !189

; <label>:28                                      ; preds = %25
  %29 = load %struct.__sFILE** @__stderrp, align 8, !dbg !190, !tbaa !65
  %30 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([71 x i8]* @.str7, i64 0, i64 0), %struct._DV* %dv, i32 %newmaxsize, i32 %22) #5, !dbg !192
  tail call void @exit(i32 -1) #6, !dbg !193
  unreachable, !dbg !193

; <label>:31                                      ; preds = %25
  %32 = icmp sgt i32 %22, %newmaxsize, !dbg !194
  br i1 %32, label %34, label %33, !dbg !196

; <label>:33                                      ; preds = %31
  tail call void @DVcopy(i32 %22, double* %20, double* %26) #5, !dbg !197
  br label %._crit_edge, !dbg !199

; <label>:34                                      ; preds = %31
  tail call void @DVcopy(i32 %newmaxsize, double* %20, double* %26) #5, !dbg !200
  store i32 %newmaxsize, i32* %21, align 4, !dbg !202, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %33, %34
  %35 = load double** %24, align 8, !dbg !203, !tbaa !89
  %36 = icmp eq double* %35, null, !dbg !205
  br i1 %36, label %38, label %37, !dbg !206

; <label>:37                                      ; preds = %._crit_edge
  tail call void @DVfree(double* %35) #5, !dbg !207
  br label %38, !dbg !209

; <label>:38                                      ; preds = %._crit_edge, %37
  store i32 %newmaxsize, i32* %7, align 4, !dbg !210, !tbaa !79
  %39 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !211
  store i32 1, i32* %39, align 4, !dbg !212, !tbaa !86
  store double* %20, double** %24, align 8, !dbg !213, !tbaa !89
  br label %40, !dbg !214

; <label>:40                                      ; preds = %17, %38
  ret void, !dbg !215
}

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_setSize(%struct._DV* %dv, i32 %newsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !49, metadata !55), !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %newsize, i64 0, metadata !50, metadata !55), !dbg !217
  %1 = icmp eq %struct._DV* %dv, null, !dbg !218
  %2 = icmp slt i32 %newsize, 0, !dbg !220
  %or.cond = or i1 %1, %2, !dbg !221
  br i1 %or.cond, label %3, label %6, !dbg !221

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !222, !tbaa !65
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._DV* %dv, i32 %newsize) #5, !dbg !224
  tail call void @exit(i32 -1) #6, !dbg !225
  unreachable, !dbg !225

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !226
  %8 = load i32* %7, align 4, !dbg !226, !tbaa !79
  %9 = icmp sgt i32 %8, 0, !dbg !228
  %10 = icmp slt i32 %8, %newsize, !dbg !229
  %or.cond2 = and i1 %9, %10, !dbg !230
  br i1 %or.cond2, label %11, label %18, !dbg !230

; <label>:11                                      ; preds = %6
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !231
  %13 = load i32* %12, align 4, !dbg !231, !tbaa !86
  %14 = icmp eq i32 %13, 0, !dbg !232
  br i1 %14, label %15, label %18, !dbg !233

; <label>:15                                      ; preds = %11
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !234, !tbaa !65
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([84 x i8]* @.str9, i64 0, i64 0), %struct._DV* %dv, i32 %newsize, i32 %8, i32 %newsize, i32 0) #5, !dbg !236
  tail call void @exit(i32 -1) #6, !dbg !237
  unreachable, !dbg !237

; <label>:18                                      ; preds = %11, %6
  br i1 %10, label %19, label %20, !dbg !238

; <label>:19                                      ; preds = %18
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 %newsize) #7, !dbg !239
  br label %20, !dbg !242

; <label>:20                                      ; preds = %19, %18
  %21 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !243
  store i32 %newsize, i32* %21, align 4, !dbg !244, !tbaa !74
  ret void, !dbg !245
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
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !25, !31, !40, !47}
!6 = !DISubprogram(name: "DV_init", scope: !1, file: !1, line: 24, type: !7, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, i32, double*)* @DV_init, variables: !21)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !19}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/../DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !11, line: 21, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !11, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !6, file: !1, line: 25, type: !9)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !6, file: !1, line: 26, type: !15)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entries", arg: 3, scope: !6, file: !1, line: 27, type: !19)
!25 = !DISubprogram(name: "DV_init1", scope: !1, file: !1, line: 72, type: !26, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, i32)* @DV_init1, variables: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !9, !15}
!28 = !{!29, !30}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !25, file: !1, line: 73, type: !9)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !25, file: !1, line: 74, type: !15)
!31 = !DISubprogram(name: "DV_init2", scope: !1, file: !1, line: 89, type: !32, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, i32, i32, i32, double*)* @DV_init2, variables: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !9, !15, !15, !15, !19}
!34 = !{!35, !36, !37, !38, !39}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !31, file: !1, line: 90, type: !9)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !31, file: !1, line: 91, type: !15)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxsize", arg: 3, scope: !31, file: !1, line: 92, type: !15)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "owned", arg: 4, scope: !31, file: !1, line: 93, type: !15)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 5, scope: !31, file: !1, line: 94, type: !19)
!40 = !DISubprogram(name: "DV_setMaxsize", scope: !1, file: !1, line: 159, type: !26, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, i32)* @DV_setMaxsize, variables: !41)
!41 = !{!42, !43, !44}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !40, file: !1, line: 160, type: !9)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newmaxsize", arg: 2, scope: !40, file: !1, line: 161, type: !15)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vec", scope: !45, file: !1, line: 185, type: !19)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 179, column: 34)
!46 = distinct !DILexicalBlock(scope: !40, file: !1, line: 179, column: 6)
!47 = !DISubprogram(name: "DV_setSize", scope: !1, file: !1, line: 242, type: !26, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, i32)* @DV_setSize, variables: !48)
!48 = !{!49, !50}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !47, file: !1, line: 243, type: !9)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newsize", arg: 2, scope: !47, file: !1, line: 244, type: !15)
!51 = !{i32 2, !"Dwarf Version", i32 2}
!52 = !{i32 2, !"Debug Info Version", i32 700000003}
!53 = !{i32 1, !"PIC Level", i32 2}
!54 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!55 = !DIExpression()
!56 = !DILocation(line: 25, column: 14, scope: !6)
!57 = !DILocation(line: 26, column: 13, scope: !6)
!58 = !DILocation(line: 27, column: 14, scope: !6)
!59 = !DILocation(line: 29, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !6, file: !1, line: 29, column: 6)
!61 = !DILocation(line: 29, column: 25, scope: !60)
!62 = !DILocation(line: 29, column: 17, scope: !60)
!63 = !DILocation(line: 30, column: 12, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 29, column: 31)
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 30, column: 4, scope: !64)
!70 = !DILocation(line: 32, column: 4, scope: !64)
!71 = !DILocation(line: 39, column: 1, scope: !6)
!72 = !DILocation(line: 45, column: 19, scope: !6)
!73 = !DILocation(line: 45, column: 24, scope: !6)
!74 = !{!75, !76, i64 0}
!75 = !{!"_DV", !76, i64 0, !76, i64 4, !76, i64 8, !66, i64 16}
!76 = !{!"int", !67, i64 0}
!77 = !DILocation(line: 45, column: 5, scope: !6)
!78 = !DILocation(line: 45, column: 13, scope: !6)
!79 = !{!75, !76, i64 4}
!80 = !DILocation(line: 51, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !6, file: !1, line: 51, column: 6)
!82 = !DILocation(line: 51, column: 6, scope: !6)
!83 = !DILocation(line: 52, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 51, column: 24)
!85 = !DILocation(line: 52, column: 14, scope: !84)
!86 = !{!75, !76, i64 8}
!87 = !DILocation(line: 53, column: 8, scope: !84)
!88 = !DILocation(line: 53, column: 14, scope: !84)
!89 = !{!75, !66, i64 16}
!90 = !DILocation(line: 54, column: 1, scope: !84)
!91 = !DILocation(line: 54, column: 18, scope: !92)
!92 = distinct !DILexicalBlock(scope: !81, file: !1, line: 54, column: 13)
!93 = !DILocation(line: 54, column: 13, scope: !81)
!94 = !DILocation(line: 55, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 54, column: 24)
!96 = !DILocation(line: 55, column: 14, scope: !95)
!97 = !DILocation(line: 59, column: 16, scope: !95)
!98 = !DILocation(line: 59, column: 8, scope: !95)
!99 = !DILocation(line: 59, column: 14, scope: !95)
!100 = !DILocation(line: 60, column: 1, scope: !95)
!101 = !DILocation(line: 61, column: 1, scope: !6)
!102 = !DILocation(line: 73, column: 11, scope: !25)
!103 = !DILocation(line: 74, column: 10, scope: !25)
!104 = !DILocation(line: 76, column: 1, scope: !25)
!105 = !DILocation(line: 78, column: 1, scope: !25)
!106 = !DILocation(line: 90, column: 14, scope: !31)
!107 = !DILocation(line: 91, column: 13, scope: !31)
!108 = !DILocation(line: 92, column: 13, scope: !31)
!109 = !DILocation(line: 93, column: 13, scope: !31)
!110 = !DILocation(line: 94, column: 14, scope: !31)
!111 = !DILocation(line: 101, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !31, file: !1, line: 101, column: 6)
!113 = !DILocation(line: 101, column: 6, scope: !31)
!114 = !DILocation(line: 102, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 101, column: 19)
!116 = !DILocation(line: 102, column: 4, scope: !115)
!117 = !DILocation(line: 104, column: 4, scope: !115)
!118 = !DILocation(line: 106, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !31, file: !1, line: 106, column: 6)
!120 = !DILocation(line: 106, column: 26, scope: !119)
!121 = !DILocation(line: 106, column: 15, scope: !119)
!122 = !DILocation(line: 107, column: 12, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 106, column: 35)
!124 = !DILocation(line: 107, column: 4, scope: !123)
!125 = !DILocation(line: 110, column: 4, scope: !123)
!126 = !DILocation(line: 112, column: 16, scope: !127)
!127 = distinct !DILexicalBlock(scope: !31, file: !1, line: 112, column: 6)
!128 = !DILocation(line: 113, column: 12, scope: !129)
!129 = distinct !DILexicalBlock(scope: !127, file: !1, line: 112, column: 31)
!130 = !DILocation(line: 113, column: 4, scope: !129)
!131 = !DILocation(line: 115, column: 4, scope: !129)
!132 = !DILocation(line: 117, column: 12, scope: !133)
!133 = distinct !DILexicalBlock(scope: !31, file: !1, line: 117, column: 6)
!134 = !DILocation(line: 117, column: 24, scope: !133)
!135 = !DILocation(line: 117, column: 17, scope: !133)
!136 = !DILocation(line: 118, column: 12, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 117, column: 34)
!138 = !DILocation(line: 118, column: 4, scope: !137)
!139 = !DILocation(line: 121, column: 4, scope: !137)
!140 = !DILocation(line: 128, column: 1, scope: !31)
!141 = !DILocation(line: 130, column: 6, scope: !31)
!142 = !DILocation(line: 136, column: 4, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 130, column: 20)
!144 = distinct !DILexicalBlock(scope: !31, file: !1, line: 130, column: 6)
!145 = !DILocation(line: 137, column: 1, scope: !143)
!146 = !DILocation(line: 143, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !1, line: 137, column: 8)
!148 = !DILocation(line: 143, column: 16, scope: !147)
!149 = !DILocation(line: 144, column: 8, scope: !147)
!150 = !DILocation(line: 144, column: 16, scope: !147)
!151 = !DILocation(line: 145, column: 8, scope: !147)
!152 = !DILocation(line: 145, column: 16, scope: !147)
!153 = !DILocation(line: 146, column: 8, scope: !147)
!154 = !DILocation(line: 146, column: 16, scope: !147)
!155 = !DILocation(line: 148, column: 1, scope: !31)
!156 = !DILocation(line: 160, column: 11, scope: !40)
!157 = !DILocation(line: 161, column: 10, scope: !40)
!158 = !DILocation(line: 168, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !40, file: !1, line: 168, column: 6)
!160 = !DILocation(line: 168, column: 31, scope: !159)
!161 = !DILocation(line: 168, column: 17, scope: !159)
!162 = !DILocation(line: 169, column: 12, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 168, column: 37)
!164 = !DILocation(line: 169, column: 4, scope: !163)
!165 = !DILocation(line: 171, column: 4, scope: !163)
!166 = !DILocation(line: 173, column: 10, scope: !167)
!167 = distinct !DILexicalBlock(scope: !40, file: !1, line: 173, column: 6)
!168 = !DILocation(line: 173, column: 18, scope: !167)
!169 = !DILocation(line: 173, column: 22, scope: !167)
!170 = !DILocation(line: 173, column: 29, scope: !167)
!171 = !DILocation(line: 173, column: 35, scope: !167)
!172 = !DILocation(line: 173, column: 6, scope: !40)
!173 = !DILocation(line: 174, column: 12, scope: !174)
!174 = distinct !DILexicalBlock(scope: !167, file: !1, line: 173, column: 42)
!175 = !DILocation(line: 174, column: 4, scope: !174)
!176 = !DILocation(line: 177, column: 4, scope: !174)
!177 = !DILocation(line: 179, column: 18, scope: !46)
!178 = !DILocation(line: 179, column: 6, scope: !40)
!179 = !DILocation(line: 189, column: 10, scope: !45)
!180 = !DILocation(line: 185, column: 14, scope: !45)
!181 = !DILocation(line: 190, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !45, file: !1, line: 190, column: 9)
!183 = !DILocation(line: 190, column: 18, scope: !182)
!184 = !DILocation(line: 196, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 196, column: 12)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 190, column: 24)
!187 = !DILocation(line: 190, column: 9, scope: !45)
!188 = !DILocation(line: 196, column: 20, scope: !185)
!189 = !DILocation(line: 196, column: 12, scope: !186)
!190 = !DILocation(line: 197, column: 18, scope: !191)
!191 = distinct !DILexicalBlock(scope: !185, file: !1, line: 196, column: 30)
!192 = !DILocation(line: 197, column: 10, scope: !191)
!193 = !DILocation(line: 200, column: 10, scope: !191)
!194 = !DILocation(line: 202, column: 21, scope: !195)
!195 = distinct !DILexicalBlock(scope: !186, file: !1, line: 202, column: 12)
!196 = !DILocation(line: 202, column: 12, scope: !186)
!197 = !DILocation(line: 203, column: 10, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 202, column: 37)
!199 = !DILocation(line: 204, column: 7, scope: !198)
!200 = !DILocation(line: 210, column: 10, scope: !201)
!201 = distinct !DILexicalBlock(scope: !195, file: !1, line: 204, column: 14)
!202 = !DILocation(line: 211, column: 19, scope: !201)
!203 = !DILocation(line: 214, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !45, file: !1, line: 214, column: 9)
!205 = !DILocation(line: 214, column: 17, scope: !204)
!206 = !DILocation(line: 214, column: 9, scope: !45)
!207 = !DILocation(line: 220, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !1, line: 214, column: 27)
!209 = !DILocation(line: 221, column: 4, scope: !208)
!210 = !DILocation(line: 227, column: 16, scope: !45)
!211 = !DILocation(line: 228, column: 8, scope: !45)
!212 = !DILocation(line: 228, column: 16, scope: !45)
!213 = !DILocation(line: 229, column: 16, scope: !45)
!214 = !DILocation(line: 230, column: 1, scope: !45)
!215 = !DILocation(line: 231, column: 1, scope: !40)
!216 = !DILocation(line: 243, column: 11, scope: !47)
!217 = !DILocation(line: 244, column: 10, scope: !47)
!218 = !DILocation(line: 251, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !47, file: !1, line: 251, column: 6)
!220 = !DILocation(line: 251, column: 28, scope: !219)
!221 = !DILocation(line: 251, column: 17, scope: !219)
!222 = !DILocation(line: 252, column: 12, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 251, column: 34)
!224 = !DILocation(line: 252, column: 4, scope: !223)
!225 = !DILocation(line: 254, column: 4, scope: !223)
!226 = !DILocation(line: 256, column: 14, scope: !227)
!227 = distinct !DILexicalBlock(scope: !47, file: !1, line: 256, column: 6)
!228 = !DILocation(line: 256, column: 8, scope: !227)
!229 = !DILocation(line: 256, column: 37, scope: !227)
!230 = !DILocation(line: 256, column: 22, scope: !227)
!231 = !DILocation(line: 256, column: 54, scope: !227)
!232 = !DILocation(line: 256, column: 60, scope: !227)
!233 = !DILocation(line: 256, column: 6, scope: !47)
!234 = !DILocation(line: 257, column: 12, scope: !235)
!235 = distinct !DILexicalBlock(scope: !227, file: !1, line: 256, column: 67)
!236 = !DILocation(line: 257, column: 4, scope: !235)
!237 = !DILocation(line: 260, column: 4, scope: !235)
!238 = !DILocation(line: 262, column: 6, scope: !47)
!239 = !DILocation(line: 268, column: 4, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 262, column: 30)
!241 = distinct !DILexicalBlock(scope: !47, file: !1, line: 262, column: 6)
!242 = !DILocation(line: 269, column: 1, scope: !240)
!243 = !DILocation(line: 270, column: 5, scope: !47)
!244 = !DILocation(line: 270, column: 10, scope: !47)
!245 = !DILocation(line: 272, column: 1, scope: !47)
