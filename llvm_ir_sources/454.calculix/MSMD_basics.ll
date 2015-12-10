; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._MSMD = type { i32, %struct._IIheap*, i32, %struct._IP*, %struct._IP*, %struct._MSMDvtx*, %struct._IV, %struct._IV }
%struct._IIheap = type { i32, i32, i32*, i32*, i32* }
%struct._IP = type { i32, %struct._IP* }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [89 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"\0A fatal error in MSMD_clearData(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._MSMD* @MSMD_new() #0 {
  %1 = tail call i8* @malloc(i64 96) #6, !dbg !88
  tail call void @llvm.dbg.value(metadata %struct._MSMD* %7, i64 0, metadata !68, metadata !92), !dbg !93
  %2 = icmp eq i8* %1, null, !dbg !88
  br i1 %2, label %3, label %6, !dbg !94

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !95, !tbaa !97
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 96, i32 21, i8* getelementptr inbounds ([89 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !95
  tail call void @exit(i32 -1) #7, !dbg !95
  unreachable, !dbg !95

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %1 to %struct._MSMD*, !dbg !88
  tail call void @llvm.dbg.value(metadata %struct._MSMD* %7, i64 0, metadata !73, metadata !92) #5, !dbg !101
  %8 = bitcast i8* %1 to i32*, !dbg !103
  store i32 0, i32* %8, align 4, !dbg !104, !tbaa !105
  %9 = getelementptr inbounds i8* %1, i64 8, !dbg !109
  %10 = bitcast i8* %9 to %struct._IIheap**, !dbg !109
  store %struct._IIheap* null, %struct._IIheap** %10, align 8, !dbg !110, !tbaa !111
  %11 = getelementptr inbounds i8* %1, i64 16, !dbg !112
  %12 = bitcast i8* %11 to i32*, !dbg !112
  store i32 0, i32* %12, align 4, !dbg !113, !tbaa !114
  %13 = getelementptr inbounds i8* %1, i64 24, !dbg !115
  %14 = getelementptr inbounds i8* %1, i64 48, !dbg !116
  %15 = bitcast i8* %14 to %struct._IV*, !dbg !116
  tail call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false) #5, !dbg !117
  tail call void @IV_setDefaultFields(%struct._IV* %15) #6, !dbg !118
  %16 = getelementptr inbounds i8* %1, i64 72, !dbg !119
  %17 = bitcast i8* %16 to %struct._IV*, !dbg !119
  tail call void @IV_setDefaultFields(%struct._IV* %17) #6, !dbg !120
  ret %struct._MSMD* %7, !dbg !121
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @MSMD_setDefaultFields(%struct._MSMD* %msmd) #0 {
  tail call void @llvm.dbg.value(metadata %struct._MSMD* %msmd, i64 0, metadata !73, metadata !92), !dbg !122
  %1 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0, !dbg !123
  store i32 0, i32* %1, align 4, !dbg !124, !tbaa !105
  %2 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !125
  store %struct._IIheap* null, %struct._IIheap** %2, align 8, !dbg !126, !tbaa !111
  %3 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 2, !dbg !127
  store i32 0, i32* %3, align 4, !dbg !128, !tbaa !114
  %4 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 3, !dbg !129
  %5 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6, !dbg !130
  %6 = bitcast %struct._IP** %4 to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false), !dbg !132
  tail call void @IV_setDefaultFields(%struct._IV* %5) #6, !dbg !131
  %7 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7, !dbg !133
  tail call void @IV_setDefaultFields(%struct._IV* %7) #6, !dbg !134
  ret void, !dbg !135
}

; Function Attrs: optsize
declare void @IV_setDefaultFields(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @MSMD_clearData(%struct._MSMD* %msmd) #0 {
  tail call void @llvm.dbg.value(metadata %struct._MSMD* %msmd, i64 0, metadata !76, metadata !92), !dbg !136
  %1 = icmp eq %struct._MSMD* %msmd, null, !dbg !137
  br i1 %1, label %2, label %5, !dbg !139

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !140, !tbaa !97
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), %struct._MSMD* null) #6, !dbg !142
  tail call void @exit(i32 -1) #7, !dbg !143
  unreachable, !dbg !143

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !144
  %7 = load %struct._IIheap** %6, align 8, !dbg !144, !tbaa !111
  %8 = icmp eq %struct._IIheap* %7, null, !dbg !146
  br i1 %8, label %10, label %9, !dbg !147

; <label>:9                                       ; preds = %5
  tail call void @IIheap_free(%struct._IIheap* %7) #6, !dbg !148
  br label %10, !dbg !150

; <label>:10                                      ; preds = %5, %9
  %11 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !151
  %12 = load %struct._MSMDvtx** %11, align 8, !dbg !151, !tbaa !153
  %13 = icmp eq %struct._MSMDvtx* %12, null, !dbg !154
  br i1 %13, label %35, label %14, !dbg !155

; <label>:14                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata %struct._MSMDvtx* %12, i64 0, metadata !78, metadata !92), !dbg !156
  %15 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0, !dbg !157
  %16 = load i32* %15, align 4, !dbg !157, !tbaa !105
  %17 = sext i32 %16 to i64, !dbg !159
  %.sum = add nsw i64 %17, -1, !dbg !160
  %18 = getelementptr inbounds %struct._MSMDvtx* %12, i64 %.sum, !dbg !160
  tail call void @llvm.dbg.value(metadata %struct._MSMDvtx* %18, i64 0, metadata !79, metadata !92), !dbg !161
  tail call void @llvm.dbg.value(metadata %struct._MSMDvtx* %12, i64 0, metadata !80, metadata !92), !dbg !162
  %19 = icmp slt i32 %16, 1, !dbg !163
  br i1 %19, label %.thread, label %.lr.ph3, !dbg !166

.lr.ph3:                                          ; preds = %14, %28
  %v.01 = phi %struct._MSMDvtx* [ %29, %28 ], [ %12, %14 ]
  %20 = getelementptr inbounds %struct._MSMDvtx* %v.01, i64 0, i32 2, !dbg !167
  %21 = load i8* %20, align 1, !dbg !167, !tbaa !170
  %22 = icmp eq i8 %21, 69, !dbg !172
  br i1 %22, label %23, label %28, !dbg !173

; <label>:23                                      ; preds = %.lr.ph3
  %24 = getelementptr inbounds %struct._MSMDvtx* %v.01, i64 0, i32 6, !dbg !174
  %25 = load i32** %24, align 8, !dbg !174, !tbaa !175
  %26 = icmp eq i32* %25, null, !dbg !176
  br i1 %26, label %28, label %27, !dbg !177

; <label>:27                                      ; preds = %23
  tail call void @IVfree(i32* %25) #6, !dbg !178
  br label %28, !dbg !180

; <label>:28                                      ; preds = %23, %.lr.ph3, %27
  %29 = getelementptr inbounds %struct._MSMDvtx* %v.01, i64 1, !dbg !181
  tail call void @llvm.dbg.value(metadata %struct._MSMDvtx* %29, i64 0, metadata !80, metadata !92), !dbg !162
  %30 = icmp ugt %struct._MSMDvtx* %29, %18, !dbg !163
  br i1 %30, label %31, label %.lr.ph3, !dbg !166

; <label>:31                                      ; preds = %28
  %.pre = load %struct._MSMDvtx** %11, align 8, !dbg !182, !tbaa !153
  %32 = icmp eq %struct._MSMDvtx* %.pre, null, !dbg !182
  br i1 %32, label %35, label %.thread, !dbg !184

.thread:                                          ; preds = %14, %31
  %33 = phi %struct._MSMDvtx* [ %.pre, %31 ], [ %12, %14 ]
  %34 = bitcast %struct._MSMDvtx* %33 to i8*, !dbg !185
  tail call void @free(i8* %34) #8, !dbg !185
  store %struct._MSMDvtx* null, %struct._MSMDvtx** %11, align 8, !dbg !185, !tbaa !153
  br label %35, !dbg !185

; <label>:35                                      ; preds = %31, %10, %.thread
  %36 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6, !dbg !187
  tail call void @IV_clearData(%struct._IV* %36) #6, !dbg !188
  %37 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7, !dbg !189
  tail call void @IV_clearData(%struct._IV* %37) #6, !dbg !190
  %38 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 3, !dbg !191
  %39 = load %struct._IP** %38, align 8, !dbg !191, !tbaa !192
  tail call void @llvm.dbg.value(metadata %struct._IP* %39, i64 0, metadata !77, metadata !92), !dbg !193
  %40 = icmp eq %struct._IP* %39, null, !dbg !194
  br i1 %40, label %._crit_edge, label %.lr.ph, !dbg !195

.lr.ph:                                           ; preds = %35
  %41 = bitcast %struct._IP** %38 to i64*, !dbg !196
  br label %42, !dbg !195

; <label>:42                                      ; preds = %.lr.ph, %42
  %43 = phi %struct._IP* [ %39, %.lr.ph ], [ %47, %42 ]
  %44 = getelementptr inbounds %struct._IP* %43, i64 0, i32 1, !dbg !198
  %45 = bitcast %struct._IP** %44 to i64*, !dbg !198
  %46 = load i64* %45, align 8, !dbg !198, !tbaa !199
  store i64 %46, i64* %41, align 8, !dbg !196, !tbaa !192
  tail call void @IP_free(%struct._IP* %43) #6, !dbg !201
  %47 = load %struct._IP** %38, align 8, !dbg !191, !tbaa !192
  tail call void @llvm.dbg.value(metadata %struct._IP* %47, i64 0, metadata !77, metadata !92), !dbg !193
  %48 = icmp eq %struct._IP* %47, null, !dbg !194
  br i1 %48, label %._crit_edge, label %42, !dbg !195

._crit_edge:                                      ; preds = %42, %35
  tail call void @llvm.dbg.value(metadata %struct._MSMD* %msmd, i64 0, metadata !73, metadata !92) #5, !dbg !202
  %49 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0, !dbg !204
  store i32 0, i32* %49, align 4, !dbg !205, !tbaa !105
  store %struct._IIheap* null, %struct._IIheap** %6, align 8, !dbg !206, !tbaa !111
  %50 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 2, !dbg !207
  store i32 0, i32* %50, align 4, !dbg !208, !tbaa !114
  %51 = bitcast %struct._IP** %38 to i8*, !dbg !209
  tail call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 24, i32 8, i1 false) #5, !dbg !210
  tail call void @IV_setDefaultFields(%struct._IV* %36) #6, !dbg !209
  tail call void @IV_setDefaultFields(%struct._IV* %37) #6, !dbg !211
  ret void, !dbg !212
}

; Function Attrs: optsize
declare void @IIheap_free(%struct._IIheap*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: optsize
declare void @IP_free(%struct._IP*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @MSMD_free(%struct._MSMD* %msmd) #0 {
  tail call void @llvm.dbg.value(metadata %struct._MSMD* %msmd, i64 0, metadata !83, metadata !92), !dbg !213
  tail call void @MSMD_clearData(%struct._MSMD* %msmd) #8, !dbg !214
  %1 = icmp eq %struct._MSMD* %msmd, null, !dbg !215
  br i1 %1, label %4, label %2, !dbg !217

; <label>:2                                       ; preds = %0
  %3 = bitcast %struct._MSMD* %msmd to i8*, !dbg !218
  tail call void @free(i8* %3) #8, !dbg !218
  tail call void @llvm.dbg.value(metadata %struct._MSMD* null, i64 0, metadata !83, metadata !92), !dbg !213
  br label %4, !dbg !218

; <label>:4                                       ; preds = %0, %2
  ret void, !dbg !220
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!84, !85, !86}
!llvm.ident = !{!87}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !61, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !58, !59, !60}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MSMD", file: !6, line: 38, size: 768, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../MSMD.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !22, !23, !31, !32, !48, !57}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !5, file: !6, line: 39, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !5, file: !6, line: 40, baseType: !11, size: 64, align: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "IIheap", file: !13, line: 20, baseType: !14)
!13 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../IIheap/IIheap.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IIheap", file: !13, line: 21, size: 256, align: 64, elements: !15)
!15 = !{!16, !17, !18, !20, !21}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !14, file: !13, line: 22, baseType: !9, size: 32, align: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !14, file: !13, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "heapLoc", scope: !14, file: !13, line: 24, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !14, file: !13, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !14, file: !13, line: 26, baseType: !19, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "incrIP", scope: !5, file: !6, line: 41, baseType: !9, size: 32, align: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "baseIP", scope: !5, file: !6, line: 42, baseType: !24, size: 64, align: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "IP", file: !26, line: 10, baseType: !27)
!26 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../Utilities/IP.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IP", file: !26, line: 11, size: 128, align: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !27, file: !26, line: 12, baseType: !9, size: 32, align: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !27, file: !26, line: 13, baseType: !24, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "freeIP", scope: !5, file: !6, line: 43, baseType: !24, size: 64, align: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "vertices", scope: !5, file: !6, line: 44, baseType: !33, size: 64, align: 64, offset: 320)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSMDvtx", file: !6, line: 18, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MSMDvtx", file: !6, line: 180, size: 448, align: 64, elements: !36)
!36 = !{!37, !38, !40, !41, !42, !43, !44, !45, !46, !47}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !35, file: !6, line: 181, baseType: !9, size: 32, align: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !35, file: !6, line: 182, baseType: !39, size: 8, align: 8, offset: 32)
!39 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !35, file: !6, line: 183, baseType: !39, size: 8, align: 8, offset: 40)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "stage", scope: !35, file: !6, line: 184, baseType: !9, size: 32, align: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "wght", scope: !35, file: !6, line: 185, baseType: !9, size: 32, align: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nadj", scope: !35, file: !6, line: 186, baseType: !9, size: 32, align: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "adj", scope: !35, file: !6, line: 187, baseType: !19, size: 64, align: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "bndwght", scope: !35, file: !6, line: 188, baseType: !9, size: 32, align: 32, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !35, file: !6, line: 189, baseType: !33, size: 64, align: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "subtrees", scope: !35, file: !6, line: 190, baseType: !24, size: 64, align: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ivtmpIV", scope: !5, file: !6, line: 45, baseType: !49, size: 192, align: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !50, line: 20, baseType: !51)
!50 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !50, line: 21, size: 192, align: 64, elements: !52)
!52 = !{!53, !54, !55, !56}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !51, file: !50, line: 22, baseType: !9, size: 32, align: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !51, file: !50, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !51, file: !50, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !51, file: !50, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reachIV", scope: !5, file: !6, line: 46, baseType: !49, size: 192, align: 64, offset: 576)
!58 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!61 = !{!62, !69, !74, !81}
!62 = !DISubprogram(name: "MSMD_new", scope: !1, file: !1, line: 16, type: !63, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._MSMD* ()* @MSMD_new, variables: !67)
!63 = !DISubroutineType(types: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSMD", file: !6, line: 15, baseType: !5)
!67 = !{!68}
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msmd", scope: !62, file: !1, line: 19, type: !65)
!69 = !DISubprogram(name: "MSMD_setDefaultFields", scope: !1, file: !1, line: 35, type: !70, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._MSMD*)* @MSMD_setDefaultFields, variables: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !65}
!72 = !{!73}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msmd", arg: 1, scope: !69, file: !1, line: 36, type: !65)
!74 = !DISubprogram(name: "MSMD_clearData", scope: !1, file: !1, line: 58, type: !70, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._MSMD*)* @MSMD_clearData, variables: !75)
!75 = !{!76, !77, !78, !79, !80}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msmd", arg: 1, scope: !74, file: !1, line: 59, type: !65)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ip", scope: !74, file: !1, line: 61, type: !24)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first", scope: !74, file: !1, line: 62, type: !33)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last", scope: !74, file: !1, line: 62, type: !33)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !74, file: !1, line: 62, type: !33)
!81 = !DISubprogram(name: "MSMD_free", scope: !1, file: !1, line: 113, type: !70, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._MSMD*)* @MSMD_free, variables: !82)
!82 = !{!83}
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msmd", arg: 1, scope: !81, file: !1, line: 114, type: !65)
!84 = !{i32 2, !"Dwarf Version", i32 2}
!85 = !{i32 2, !"Debug Info Version", i32 700000003}
!86 = !{i32 1, !"PIC Level", i32 2}
!87 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!88 = !DILocation(line: 21, column: 1, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 21, column: 1)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 21, column: 1)
!91 = distinct !DILexicalBlock(scope: !62, file: !1, line: 21, column: 1)
!92 = !DIExpression()
!93 = !DILocation(line: 19, column: 9, scope: !62)
!94 = !DILocation(line: 21, column: 1, scope: !90)
!95 = !DILocation(line: 21, column: 1, scope: !96)
!96 = distinct !DILexicalBlock(scope: !89, file: !1, line: 21, column: 1)
!97 = !{!98, !98, i64 0}
!98 = !{!"any pointer", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !DILocation(line: 36, column: 12, scope: !69, inlinedAt: !102)
!102 = distinct !DILocation(line: 22, column: 1, scope: !62)
!103 = !DILocation(line: 38, column: 7, scope: !69, inlinedAt: !102)
!104 = !DILocation(line: 38, column: 17, scope: !69, inlinedAt: !102)
!105 = !{!106, !107, i64 0}
!106 = !{!"_MSMD", !107, i64 0, !98, i64 8, !107, i64 16, !98, i64 24, !98, i64 32, !98, i64 40, !108, i64 48, !108, i64 72}
!107 = !{!"int", !99, i64 0}
!108 = !{!"_IV", !107, i64 0, !107, i64 4, !107, i64 8, !98, i64 16}
!109 = !DILocation(line: 39, column: 7, scope: !69, inlinedAt: !102)
!110 = !DILocation(line: 39, column: 17, scope: !69, inlinedAt: !102)
!111 = !{!106, !98, i64 8}
!112 = !DILocation(line: 40, column: 7, scope: !69, inlinedAt: !102)
!113 = !DILocation(line: 40, column: 17, scope: !69, inlinedAt: !102)
!114 = !{!106, !107, i64 16}
!115 = !DILocation(line: 41, column: 7, scope: !69, inlinedAt: !102)
!116 = !DILocation(line: 44, column: 28, scope: !69, inlinedAt: !102)
!117 = !DILocation(line: 41, column: 17, scope: !69, inlinedAt: !102)
!118 = !DILocation(line: 44, column: 1, scope: !69, inlinedAt: !102)
!119 = !DILocation(line: 45, column: 28, scope: !69, inlinedAt: !102)
!120 = !DILocation(line: 45, column: 1, scope: !69, inlinedAt: !102)
!121 = !DILocation(line: 24, column: 1, scope: !62)
!122 = !DILocation(line: 36, column: 12, scope: !69)
!123 = !DILocation(line: 38, column: 7, scope: !69)
!124 = !DILocation(line: 38, column: 17, scope: !69)
!125 = !DILocation(line: 39, column: 7, scope: !69)
!126 = !DILocation(line: 39, column: 17, scope: !69)
!127 = !DILocation(line: 40, column: 7, scope: !69)
!128 = !DILocation(line: 40, column: 17, scope: !69)
!129 = !DILocation(line: 41, column: 7, scope: !69)
!130 = !DILocation(line: 44, column: 28, scope: !69)
!131 = !DILocation(line: 44, column: 1, scope: !69)
!132 = !DILocation(line: 41, column: 17, scope: !69)
!133 = !DILocation(line: 45, column: 28, scope: !69)
!134 = !DILocation(line: 45, column: 1, scope: !69)
!135 = !DILocation(line: 47, column: 1, scope: !69)
!136 = !DILocation(line: 59, column: 12, scope: !74)
!137 = !DILocation(line: 68, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !74, file: !1, line: 68, column: 6)
!139 = !DILocation(line: 68, column: 6, scope: !74)
!140 = !DILocation(line: 69, column: 12, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 68, column: 21)
!142 = !DILocation(line: 69, column: 4, scope: !141)
!143 = !DILocation(line: 71, column: 4, scope: !141)
!144 = !DILocation(line: 73, column: 12, scope: !145)
!145 = distinct !DILexicalBlock(scope: !74, file: !1, line: 73, column: 6)
!146 = !DILocation(line: 73, column: 17, scope: !145)
!147 = !DILocation(line: 73, column: 6, scope: !74)
!148 = !DILocation(line: 78, column: 4, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 73, column: 27)
!150 = !DILocation(line: 79, column: 1, scope: !149)
!151 = !DILocation(line: 80, column: 12, scope: !152)
!152 = distinct !DILexicalBlock(scope: !74, file: !1, line: 80, column: 6)
!153 = !{!106, !98, i64 40}
!154 = !DILocation(line: 80, column: 21, scope: !152)
!155 = !DILocation(line: 80, column: 6, scope: !74)
!156 = !DILocation(line: 62, column: 12, scope: !74)
!157 = !DILocation(line: 86, column: 26, scope: !158)
!158 = distinct !DILexicalBlock(scope: !152, file: !1, line: 80, column: 31)
!159 = !DILocation(line: 86, column: 18, scope: !158)
!160 = !DILocation(line: 86, column: 31, scope: !158)
!161 = !DILocation(line: 62, column: 20, scope: !74)
!162 = !DILocation(line: 62, column: 27, scope: !74)
!163 = !DILocation(line: 87, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 87, column: 4)
!165 = distinct !DILexicalBlock(scope: !158, file: !1, line: 87, column: 4)
!166 = !DILocation(line: 87, column: 4, scope: !165)
!167 = !DILocation(line: 88, column: 15, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 88, column: 12)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 87, column: 40)
!170 = !{!171, !99, i64 5}
!171 = !{!"_MSMDvtx", !107, i64 0, !99, i64 4, !99, i64 5, !107, i64 8, !107, i64 12, !107, i64 16, !98, i64 24, !107, i64 32, !98, i64 40, !98, i64 48}
!172 = !DILocation(line: 88, column: 22, scope: !168)
!173 = !DILocation(line: 88, column: 29, scope: !168)
!174 = !DILocation(line: 88, column: 35, scope: !168)
!175 = !{!171, !98, i64 24}
!176 = !DILocation(line: 88, column: 39, scope: !168)
!177 = !DILocation(line: 88, column: 12, scope: !169)
!178 = !DILocation(line: 89, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !168, file: !1, line: 88, column: 49)
!180 = !DILocation(line: 90, column: 7, scope: !179)
!181 = !DILocation(line: 87, column: 35, scope: !164)
!182 = !DILocation(line: 92, column: 4, scope: !183)
!183 = distinct !DILexicalBlock(scope: !158, file: !1, line: 92, column: 4)
!184 = !DILocation(line: 92, column: 4, scope: !158)
!185 = !DILocation(line: 92, column: 4, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !1, line: 92, column: 4)
!187 = !DILocation(line: 94, column: 21, scope: !74)
!188 = !DILocation(line: 94, column: 1, scope: !74)
!189 = !DILocation(line: 95, column: 21, scope: !74)
!190 = !DILocation(line: 95, column: 1, scope: !74)
!191 = !DILocation(line: 96, column: 21, scope: !74)
!192 = !{!106, !98, i64 24}
!193 = !DILocation(line: 61, column: 12, scope: !74)
!194 = !DILocation(line: 96, column: 29, scope: !74)
!195 = !DILocation(line: 96, column: 1, scope: !74)
!196 = !DILocation(line: 97, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !74, file: !1, line: 96, column: 39)
!198 = !DILocation(line: 97, column: 23, scope: !197)
!199 = !{!200, !98, i64 8}
!200 = !{!"_IP", !107, i64 0, !98, i64 8}
!201 = !DILocation(line: 98, column: 4, scope: !197)
!202 = !DILocation(line: 36, column: 12, scope: !69, inlinedAt: !203)
!203 = distinct !DILocation(line: 100, column: 1, scope: !74)
!204 = !DILocation(line: 38, column: 7, scope: !69, inlinedAt: !203)
!205 = !DILocation(line: 38, column: 17, scope: !69, inlinedAt: !203)
!206 = !DILocation(line: 39, column: 17, scope: !69, inlinedAt: !203)
!207 = !DILocation(line: 40, column: 7, scope: !69, inlinedAt: !203)
!208 = !DILocation(line: 40, column: 17, scope: !69, inlinedAt: !203)
!209 = !DILocation(line: 44, column: 1, scope: !69, inlinedAt: !203)
!210 = !DILocation(line: 41, column: 17, scope: !69, inlinedAt: !203)
!211 = !DILocation(line: 45, column: 1, scope: !69, inlinedAt: !203)
!212 = !DILocation(line: 102, column: 1, scope: !74)
!213 = !DILocation(line: 114, column: 12, scope: !81)
!214 = !DILocation(line: 116, column: 1, scope: !81)
!215 = !DILocation(line: 117, column: 1, scope: !216)
!216 = distinct !DILexicalBlock(scope: !81, file: !1, line: 117, column: 1)
!217 = !DILocation(line: 117, column: 1, scope: !81)
!218 = !DILocation(line: 117, column: 1, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 117, column: 1)
!220 = !DILocation(line: 119, column: 1, scope: !81)
