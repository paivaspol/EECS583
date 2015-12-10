; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in IV_init(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in IV_init2(%p,%d,%d,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [69 x i8] c"\0A fatal error in IV_init2(%p,%d,%d,%d,%p)\0A size = %d, maxsize = %d \0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in IV_init2(%p,%d,%d,%d,%p)\0A owned = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"\0A fatal error in IV_init2(%p,%d,%d,%d,%p)\0A owned = %d and vec = %p\00", align 1
@.str5 = private unnamed_addr constant [50 x i8] c"\0A fatal error in IV_setMaxsize(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [73 x i8] c"\0A fatal error in IV_setMaxsize(%p,%d)\0A iv->maxsize = %d, iv->owned = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [71 x i8] c"\0A fatal error in IV_setMaxsize(%p,%d)\0A iv->size = %d, iv->vec is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in IV_setSize(%p,%d)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [84 x i8] c"\0A fatal error in IV_setSize(%p,%d)\0A iv->maxsize = %d, newsize = %d, iv->owned = %d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @IV_init(%struct._IV* %iv, i32 %size, i32* %entries) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !21, metadata !54), !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !22, metadata !54), !dbg !56
  tail call void @llvm.dbg.value(metadata i32* %entries, i64 0, metadata !23, metadata !54), !dbg !57
  %1 = icmp eq %struct._IV* %iv, null, !dbg !58
  %2 = icmp slt i32 %size, 0, !dbg !60
  %or.cond = or i1 %1, %2, !dbg !61
  br i1 %or.cond, label %3, label %6, !dbg !61

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !62, !tbaa !64
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._IV* %iv, i32 %size, i32* %entries) #5, !dbg !68
  tail call void @exit(i32 -1) #6, !dbg !69
  unreachable, !dbg !69

; <label>:6                                       ; preds = %0
  tail call void @IV_clearData(%struct._IV* %iv) #5, !dbg !70
  %7 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !71
  store i32 %size, i32* %7, align 4, !dbg !72, !tbaa !73
  %8 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !76
  store i32 %size, i32* %8, align 4, !dbg !77, !tbaa !78
  %9 = icmp eq i32* %entries, null, !dbg !79
  br i1 %9, label %13, label %10, !dbg !81

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !82
  store i32 0, i32* %11, align 4, !dbg !84, !tbaa !85
  %12 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !86
  store i32* %entries, i32** %12, align 8, !dbg !87, !tbaa !88
  br label %19, !dbg !89

; <label>:13                                      ; preds = %6
  %14 = icmp sgt i32 %size, 0, !dbg !90
  br i1 %14, label %15, label %19, !dbg !92

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !93
  store i32 1, i32* %16, align 4, !dbg !95, !tbaa !85
  %17 = tail call i32* @IVinit(i32 %size, i32 -1) #5, !dbg !96
  %18 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !97
  store i32* %17, i32** %18, align 8, !dbg !98, !tbaa !88
  br label %19, !dbg !99

; <label>:19                                      ; preds = %13, %15, %10
  ret void, !dbg !100
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @IV_init1(%struct._IV* %iv, i32 %size) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !28, metadata !54), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !29, metadata !54), !dbg !102
  tail call void @IV_init(%struct._IV* %iv, i32 %size, i32* null) #7, !dbg !103
  ret void, !dbg !104
}

; Function Attrs: nounwind optsize ssp uwtable
define void @IV_init2(%struct._IV* %iv, i32 %size, i32 %maxsize, i32 %owned, i32* %vec) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !34, metadata !54), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !35, metadata !54), !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %maxsize, i64 0, metadata !36, metadata !54), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %owned, i64 0, metadata !37, metadata !54), !dbg !108
  tail call void @llvm.dbg.value(metadata i32* %vec, i64 0, metadata !38, metadata !54), !dbg !109
  %1 = icmp eq %struct._IV* %iv, null, !dbg !110
  br i1 %1, label %2, label %5, !dbg !112

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !113, !tbaa !64
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._IV* null, i32 %size, i32 %maxsize, i32 %owned, i32* %vec) #5, !dbg !115
  tail call void @exit(i32 -1) #6, !dbg !116
  unreachable, !dbg !116

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %size, 0, !dbg !117
  %7 = icmp slt i32 %maxsize, %size, !dbg !119
  %or.cond = or i1 %6, %7, !dbg !120
  br i1 %or.cond, label %8, label %11, !dbg !120

; <label>:8                                       ; preds = %5
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !121, !tbaa !64
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([69 x i8]* @.str2, i64 0, i64 0), %struct._IV* %iv, i32 %size, i32 %maxsize, i32 %owned, i32* %vec, i32 %size, i32 %maxsize) #5, !dbg !123
  tail call void @exit(i32 -1) #6, !dbg !124
  unreachable, !dbg !124

; <label>:11                                      ; preds = %5
  %12 = icmp ugt i32 %owned, 1, !dbg !125
  br i1 %12, label %13, label %16, !dbg !125

; <label>:13                                      ; preds = %11
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !127, !tbaa !64
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._IV* %iv, i32 %size, i32 %maxsize, i32 %owned, i32* %vec, i32 %owned) #5, !dbg !129
  tail call void @exit(i32 -1) #6, !dbg !130
  unreachable, !dbg !130

; <label>:16                                      ; preds = %11
  %17 = icmp eq i32 %owned, 1, !dbg !131
  %18 = icmp eq i32* %vec, null, !dbg !133
  %or.cond3 = and i1 %17, %18, !dbg !134
  br i1 %or.cond3, label %19, label %22, !dbg !134

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !135, !tbaa !64
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), %struct._IV* %iv, i32 %size, i32 %maxsize, i32 1, i32* null, i32 1, i32* null) #5, !dbg !137
  tail call void @exit(i32 -1) #6, !dbg !138
  unreachable, !dbg !138

; <label>:22                                      ; preds = %16
  tail call void @IV_clearData(%struct._IV* %iv) #5, !dbg !139
  br i1 %18, label %23, label %24, !dbg !140

; <label>:23                                      ; preds = %22
  tail call void @IV_init(%struct._IV* %iv, i32 %size, i32* null) #7, !dbg !141
  br label %29, !dbg !144

; <label>:24                                      ; preds = %22
  %25 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !145
  store i32 %size, i32* %25, align 4, !dbg !147, !tbaa !73
  %26 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !148
  store i32 %maxsize, i32* %26, align 4, !dbg !149, !tbaa !78
  %27 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !150
  store i32 %owned, i32* %27, align 4, !dbg !151, !tbaa !85
  %28 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !152
  store i32* %vec, i32** %28, align 8, !dbg !153, !tbaa !88
  br label %29

; <label>:29                                      ; preds = %24, %23
  ret void, !dbg !154
}

; Function Attrs: nounwind optsize ssp uwtable
define void @IV_setMaxsize(%struct._IV* %iv, i32 %newmaxsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !41, metadata !54), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 %newmaxsize, i64 0, metadata !42, metadata !54), !dbg !156
  %1 = icmp eq %struct._IV* %iv, null, !dbg !157
  %2 = icmp slt i32 %newmaxsize, 0, !dbg !159
  %or.cond = or i1 %1, %2, !dbg !160
  br i1 %or.cond, label %3, label %6, !dbg !160

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !161, !tbaa !64
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0), %struct._IV* %iv, i32 %newmaxsize) #5, !dbg !163
  tail call void @exit(i32 -1) #6, !dbg !164
  unreachable, !dbg !164

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !165
  %8 = load i32* %7, align 4, !dbg !165, !tbaa !78
  %9 = icmp sgt i32 %8, 0, !dbg !167
  br i1 %9, label %10, label %17, !dbg !168

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !169
  %12 = load i32* %11, align 4, !dbg !169, !tbaa !85
  %13 = icmp eq i32 %12, 0, !dbg !170
  br i1 %13, label %14, label %17, !dbg !171

; <label>:14                                      ; preds = %10
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !172, !tbaa !64
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([73 x i8]* @.str6, i64 0, i64 0), %struct._IV* %iv, i32 %newmaxsize, i32 %8, i32 0) #5, !dbg !174
  tail call void @exit(i32 -1) #6, !dbg !175
  unreachable, !dbg !175

; <label>:17                                      ; preds = %10, %6
  %18 = icmp eq i32 %8, %newmaxsize, !dbg !176
  br i1 %18, label %40, label %19, !dbg !177

; <label>:19                                      ; preds = %17
  %20 = tail call i32* @IVinit(i32 %newmaxsize, i32 -1) #5, !dbg !178
  tail call void @llvm.dbg.value(metadata i32* %20, i64 0, metadata !43, metadata !54), !dbg !179
  %21 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !180
  %22 = load i32* %21, align 4, !dbg !180, !tbaa !73
  %23 = icmp sgt i32 %22, 0, !dbg !182
  %24 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !183
  br i1 %23, label %25, label %._crit_edge, !dbg !186

; <label>:25                                      ; preds = %19
  %26 = load i32** %24, align 8, !dbg !183, !tbaa !88
  %27 = icmp eq i32* %26, null, !dbg !187
  br i1 %27, label %28, label %31, !dbg !188

; <label>:28                                      ; preds = %25
  %29 = load %struct.__sFILE** @__stderrp, align 8, !dbg !189, !tbaa !64
  %30 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([71 x i8]* @.str7, i64 0, i64 0), %struct._IV* %iv, i32 %newmaxsize, i32 %22) #5, !dbg !191
  tail call void @exit(i32 -1) #6, !dbg !192
  unreachable, !dbg !192

; <label>:31                                      ; preds = %25
  %32 = icmp sgt i32 %22, %newmaxsize, !dbg !193
  br i1 %32, label %34, label %33, !dbg !195

; <label>:33                                      ; preds = %31
  tail call void @IVcopy(i32 %22, i32* %20, i32* %26) #5, !dbg !196
  br label %._crit_edge, !dbg !198

; <label>:34                                      ; preds = %31
  tail call void @IVcopy(i32 %newmaxsize, i32* %20, i32* %26) #5, !dbg !199
  store i32 %newmaxsize, i32* %21, align 4, !dbg !201, !tbaa !73
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %33, %34
  %35 = load i32** %24, align 8, !dbg !202, !tbaa !88
  %36 = icmp eq i32* %35, null, !dbg !204
  br i1 %36, label %38, label %37, !dbg !205

; <label>:37                                      ; preds = %._crit_edge
  tail call void @IVfree(i32* %35) #5, !dbg !206
  br label %38, !dbg !208

; <label>:38                                      ; preds = %._crit_edge, %37
  store i32 %newmaxsize, i32* %7, align 4, !dbg !209, !tbaa !78
  %39 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !210
  store i32 1, i32* %39, align 4, !dbg !211, !tbaa !85
  store i32* %20, i32** %24, align 8, !dbg !212, !tbaa !88
  br label %40, !dbg !213

; <label>:40                                      ; preds = %17, %38
  ret void, !dbg !214
}

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @IV_setSize(%struct._IV* %iv, i32 %newsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !48, metadata !54), !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %newsize, i64 0, metadata !49, metadata !54), !dbg !216
  %1 = icmp eq %struct._IV* %iv, null, !dbg !217
  %2 = icmp slt i32 %newsize, 0, !dbg !219
  %or.cond = or i1 %1, %2, !dbg !220
  br i1 %or.cond, label %3, label %6, !dbg !220

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !221, !tbaa !64
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._IV* %iv, i32 %newsize) #5, !dbg !223
  tail call void @exit(i32 -1) #6, !dbg !224
  unreachable, !dbg !224

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !225
  %8 = load i32* %7, align 4, !dbg !225, !tbaa !78
  %9 = icmp sgt i32 %8, 0, !dbg !227
  %10 = icmp slt i32 %8, %newsize, !dbg !228
  %or.cond2 = and i1 %9, %10, !dbg !229
  br i1 %or.cond2, label %11, label %18, !dbg !229

; <label>:11                                      ; preds = %6
  %12 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !230
  %13 = load i32* %12, align 4, !dbg !230, !tbaa !85
  %14 = icmp eq i32 %13, 0, !dbg !231
  br i1 %14, label %15, label %18, !dbg !232

; <label>:15                                      ; preds = %11
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !233, !tbaa !64
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([84 x i8]* @.str9, i64 0, i64 0), %struct._IV* %iv, i32 %newsize, i32 %8, i32 %newsize, i32 0) #5, !dbg !235
  tail call void @exit(i32 -1) #6, !dbg !236
  unreachable, !dbg !236

; <label>:18                                      ; preds = %11, %6
  br i1 %10, label %19, label %20, !dbg !237

; <label>:19                                      ; preds = %18
  tail call void @IV_setMaxsize(%struct._IV* %iv, i32 %newsize) #7, !dbg !238
  br label %20, !dbg !241

; <label>:20                                      ; preds = %19, %18
  %21 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !242
  store i32 %newsize, i32* %21, align 4, !dbg !243, !tbaa !73
  ret void, !dbg !244
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
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !24, !30, !39, !46}
!6 = !DISubprogram(name: "IV_init", scope: !1, file: !1, line: 24, type: !7, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IV*, i32, i32*)* @IV_init, variables: !20)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !19}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/../IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !11, line: 21, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !11, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!20 = !{!21, !22, !23}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !6, file: !1, line: 25, type: !9)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !6, file: !1, line: 26, type: !15)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entries", arg: 3, scope: !6, file: !1, line: 27, type: !19)
!24 = !DISubprogram(name: "IV_init1", scope: !1, file: !1, line: 76, type: !25, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IV*, i32)* @IV_init1, variables: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !9, !15}
!27 = !{!28, !29}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !24, file: !1, line: 77, type: !9)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !24, file: !1, line: 78, type: !15)
!30 = !DISubprogram(name: "IV_init2", scope: !1, file: !1, line: 93, type: !31, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IV*, i32, i32, i32, i32*)* @IV_init2, variables: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !9, !15, !15, !15, !19}
!33 = !{!34, !35, !36, !37, !38}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !30, file: !1, line: 94, type: !9)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !30, file: !1, line: 95, type: !15)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxsize", arg: 3, scope: !30, file: !1, line: 96, type: !15)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "owned", arg: 4, scope: !30, file: !1, line: 97, type: !15)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 5, scope: !30, file: !1, line: 98, type: !19)
!39 = !DISubprogram(name: "IV_setMaxsize", scope: !1, file: !1, line: 163, type: !25, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IV*, i32)* @IV_setMaxsize, variables: !40)
!40 = !{!41, !42, !43}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !39, file: !1, line: 164, type: !9)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newmaxsize", arg: 2, scope: !39, file: !1, line: 165, type: !15)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vec", scope: !44, file: !1, line: 189, type: !19)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 183, column: 34)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 183, column: 6)
!46 = !DISubprogram(name: "IV_setSize", scope: !1, file: !1, line: 253, type: !25, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IV*, i32)* @IV_setSize, variables: !47)
!47 = !{!48, !49}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !46, file: !1, line: 254, type: !9)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newsize", arg: 2, scope: !46, file: !1, line: 255, type: !15)
!50 = !{i32 2, !"Dwarf Version", i32 2}
!51 = !{i32 2, !"Debug Info Version", i32 700000003}
!52 = !{i32 1, !"PIC Level", i32 2}
!53 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!54 = !DIExpression()
!55 = !DILocation(line: 25, column: 11, scope: !6)
!56 = !DILocation(line: 26, column: 10, scope: !6)
!57 = !DILocation(line: 27, column: 11, scope: !6)
!58 = !DILocation(line: 29, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !6, file: !1, line: 29, column: 6)
!60 = !DILocation(line: 29, column: 25, scope: !59)
!61 = !DILocation(line: 29, column: 17, scope: !59)
!62 = !DILocation(line: 30, column: 12, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 29, column: 31)
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !DILocation(line: 30, column: 4, scope: !63)
!69 = !DILocation(line: 32, column: 4, scope: !63)
!70 = !DILocation(line: 39, column: 1, scope: !6)
!71 = !DILocation(line: 45, column: 19, scope: !6)
!72 = !DILocation(line: 45, column: 24, scope: !6)
!73 = !{!74, !75, i64 0}
!74 = !{!"_IV", !75, i64 0, !75, i64 4, !75, i64 8, !65, i64 16}
!75 = !{!"int", !66, i64 0}
!76 = !DILocation(line: 45, column: 5, scope: !6)
!77 = !DILocation(line: 45, column: 13, scope: !6)
!78 = !{!74, !75, i64 4}
!79 = !DILocation(line: 51, column: 14, scope: !80)
!80 = distinct !DILexicalBlock(scope: !6, file: !1, line: 51, column: 6)
!81 = !DILocation(line: 51, column: 6, scope: !6)
!82 = !DILocation(line: 52, column: 8, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 51, column: 24)
!84 = !DILocation(line: 52, column: 14, scope: !83)
!85 = !{!74, !75, i64 8}
!86 = !DILocation(line: 53, column: 8, scope: !83)
!87 = !DILocation(line: 53, column: 14, scope: !83)
!88 = !{!74, !65, i64 16}
!89 = !DILocation(line: 54, column: 1, scope: !83)
!90 = !DILocation(line: 54, column: 18, scope: !91)
!91 = distinct !DILexicalBlock(scope: !80, file: !1, line: 54, column: 13)
!92 = !DILocation(line: 54, column: 13, scope: !80)
!93 = !DILocation(line: 55, column: 8, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !1, line: 54, column: 24)
!95 = !DILocation(line: 55, column: 14, scope: !94)
!96 = !DILocation(line: 56, column: 16, scope: !94)
!97 = !DILocation(line: 56, column: 8, scope: !94)
!98 = !DILocation(line: 56, column: 14, scope: !94)
!99 = !DILocation(line: 57, column: 1, scope: !94)
!100 = !DILocation(line: 65, column: 1, scope: !6)
!101 = !DILocation(line: 77, column: 11, scope: !24)
!102 = !DILocation(line: 78, column: 10, scope: !24)
!103 = !DILocation(line: 80, column: 1, scope: !24)
!104 = !DILocation(line: 82, column: 1, scope: !24)
!105 = !DILocation(line: 94, column: 11, scope: !30)
!106 = !DILocation(line: 95, column: 10, scope: !30)
!107 = !DILocation(line: 96, column: 10, scope: !30)
!108 = !DILocation(line: 97, column: 10, scope: !30)
!109 = !DILocation(line: 98, column: 11, scope: !30)
!110 = !DILocation(line: 105, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !30, file: !1, line: 105, column: 6)
!112 = !DILocation(line: 105, column: 6, scope: !30)
!113 = !DILocation(line: 106, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 105, column: 19)
!115 = !DILocation(line: 106, column: 4, scope: !114)
!116 = !DILocation(line: 108, column: 4, scope: !114)
!117 = !DILocation(line: 110, column: 11, scope: !118)
!118 = distinct !DILexicalBlock(scope: !30, file: !1, line: 110, column: 6)
!119 = !DILocation(line: 110, column: 26, scope: !118)
!120 = !DILocation(line: 110, column: 15, scope: !118)
!121 = !DILocation(line: 111, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 110, column: 35)
!123 = !DILocation(line: 111, column: 4, scope: !122)
!124 = !DILocation(line: 114, column: 4, scope: !122)
!125 = !DILocation(line: 116, column: 16, scope: !126)
!126 = distinct !DILexicalBlock(scope: !30, file: !1, line: 116, column: 6)
!127 = !DILocation(line: 117, column: 12, scope: !128)
!128 = distinct !DILexicalBlock(scope: !126, file: !1, line: 116, column: 31)
!129 = !DILocation(line: 117, column: 4, scope: !128)
!130 = !DILocation(line: 119, column: 4, scope: !128)
!131 = !DILocation(line: 121, column: 12, scope: !132)
!132 = distinct !DILexicalBlock(scope: !30, file: !1, line: 121, column: 6)
!133 = !DILocation(line: 121, column: 24, scope: !132)
!134 = !DILocation(line: 121, column: 17, scope: !132)
!135 = !DILocation(line: 122, column: 12, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 121, column: 34)
!137 = !DILocation(line: 122, column: 4, scope: !136)
!138 = !DILocation(line: 125, column: 4, scope: !136)
!139 = !DILocation(line: 132, column: 1, scope: !30)
!140 = !DILocation(line: 134, column: 6, scope: !30)
!141 = !DILocation(line: 140, column: 4, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 134, column: 20)
!143 = distinct !DILexicalBlock(scope: !30, file: !1, line: 134, column: 6)
!144 = !DILocation(line: 141, column: 1, scope: !142)
!145 = !DILocation(line: 147, column: 8, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 141, column: 8)
!147 = !DILocation(line: 147, column: 16, scope: !146)
!148 = !DILocation(line: 148, column: 8, scope: !146)
!149 = !DILocation(line: 148, column: 16, scope: !146)
!150 = !DILocation(line: 149, column: 8, scope: !146)
!151 = !DILocation(line: 149, column: 16, scope: !146)
!152 = !DILocation(line: 150, column: 8, scope: !146)
!153 = !DILocation(line: 150, column: 16, scope: !146)
!154 = !DILocation(line: 152, column: 1, scope: !30)
!155 = !DILocation(line: 164, column: 11, scope: !39)
!156 = !DILocation(line: 165, column: 10, scope: !39)
!157 = !DILocation(line: 172, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !39, file: !1, line: 172, column: 6)
!159 = !DILocation(line: 172, column: 31, scope: !158)
!160 = !DILocation(line: 172, column: 17, scope: !158)
!161 = !DILocation(line: 173, column: 12, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 172, column: 37)
!163 = !DILocation(line: 173, column: 4, scope: !162)
!164 = !DILocation(line: 175, column: 4, scope: !162)
!165 = !DILocation(line: 177, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !39, file: !1, line: 177, column: 6)
!167 = !DILocation(line: 177, column: 18, scope: !166)
!168 = !DILocation(line: 177, column: 22, scope: !166)
!169 = !DILocation(line: 177, column: 29, scope: !166)
!170 = !DILocation(line: 177, column: 35, scope: !166)
!171 = !DILocation(line: 177, column: 6, scope: !39)
!172 = !DILocation(line: 178, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !166, file: !1, line: 177, column: 42)
!174 = !DILocation(line: 178, column: 4, scope: !173)
!175 = !DILocation(line: 181, column: 4, scope: !173)
!176 = !DILocation(line: 183, column: 18, scope: !45)
!177 = !DILocation(line: 183, column: 6, scope: !39)
!178 = !DILocation(line: 189, column: 17, scope: !44)
!179 = !DILocation(line: 189, column: 11, scope: !44)
!180 = !DILocation(line: 190, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !44, file: !1, line: 190, column: 9)
!182 = !DILocation(line: 190, column: 18, scope: !181)
!183 = !DILocation(line: 196, column: 16, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 196, column: 12)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 190, column: 24)
!186 = !DILocation(line: 190, column: 9, scope: !44)
!187 = !DILocation(line: 196, column: 20, scope: !184)
!188 = !DILocation(line: 196, column: 12, scope: !185)
!189 = !DILocation(line: 197, column: 18, scope: !190)
!190 = distinct !DILexicalBlock(scope: !184, file: !1, line: 196, column: 30)
!191 = !DILocation(line: 197, column: 10, scope: !190)
!192 = !DILocation(line: 200, column: 10, scope: !190)
!193 = !DILocation(line: 202, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !185, file: !1, line: 202, column: 12)
!195 = !DILocation(line: 202, column: 12, scope: !185)
!196 = !DILocation(line: 208, column: 10, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 202, column: 37)
!198 = !DILocation(line: 209, column: 7, scope: !197)
!199 = !DILocation(line: 215, column: 10, scope: !200)
!200 = distinct !DILexicalBlock(scope: !194, file: !1, line: 209, column: 14)
!201 = !DILocation(line: 216, column: 19, scope: !200)
!202 = !DILocation(line: 219, column: 13, scope: !203)
!203 = distinct !DILexicalBlock(scope: !44, file: !1, line: 219, column: 9)
!204 = !DILocation(line: 219, column: 17, scope: !203)
!205 = !DILocation(line: 219, column: 9, scope: !44)
!206 = !DILocation(line: 225, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !1, line: 219, column: 27)
!208 = !DILocation(line: 226, column: 4, scope: !207)
!209 = !DILocation(line: 232, column: 16, scope: !44)
!210 = !DILocation(line: 233, column: 8, scope: !44)
!211 = !DILocation(line: 233, column: 16, scope: !44)
!212 = !DILocation(line: 234, column: 16, scope: !44)
!213 = !DILocation(line: 235, column: 1, scope: !44)
!214 = !DILocation(line: 242, column: 1, scope: !39)
!215 = !DILocation(line: 254, column: 11, scope: !46)
!216 = !DILocation(line: 255, column: 10, scope: !46)
!217 = !DILocation(line: 262, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !46, file: !1, line: 262, column: 6)
!219 = !DILocation(line: 262, column: 28, scope: !218)
!220 = !DILocation(line: 262, column: 17, scope: !218)
!221 = !DILocation(line: 263, column: 12, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 262, column: 34)
!223 = !DILocation(line: 263, column: 4, scope: !222)
!224 = !DILocation(line: 265, column: 4, scope: !222)
!225 = !DILocation(line: 267, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !46, file: !1, line: 267, column: 6)
!227 = !DILocation(line: 267, column: 8, scope: !226)
!228 = !DILocation(line: 267, column: 37, scope: !226)
!229 = !DILocation(line: 267, column: 22, scope: !226)
!230 = !DILocation(line: 267, column: 54, scope: !226)
!231 = !DILocation(line: 267, column: 60, scope: !226)
!232 = !DILocation(line: 267, column: 6, scope: !46)
!233 = !DILocation(line: 268, column: 12, scope: !234)
!234 = distinct !DILexicalBlock(scope: !226, file: !1, line: 267, column: 67)
!235 = !DILocation(line: 268, column: 4, scope: !234)
!236 = !DILocation(line: 271, column: 4, scope: !234)
!237 = !DILocation(line: 273, column: 6, scope: !46)
!238 = !DILocation(line: 279, column: 4, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 273, column: 30)
!240 = distinct !DILexicalBlock(scope: !46, file: !1, line: 273, column: 6)
!241 = !DILocation(line: 280, column: 1, scope: !239)
!242 = !DILocation(line: 281, column: 5, scope: !46)
!243 = !DILocation(line: 281, column: 10, scope: !46)
!244 = !DILocation(line: 289, column: 1, scope: !46)
