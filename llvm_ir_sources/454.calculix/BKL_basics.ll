; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [87 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in BKL_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in BKL_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"\0A fatal error in BKL_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._BKL* @BKL_new() #0 {
  %1 = tail call i8* @malloc(i64 88) #6, !dbg !99
  %2 = bitcast i8* %1 to %struct._BKL*, !dbg !99
  tail call void @llvm.dbg.value(metadata %struct._BKL* %2, i64 0, metadata !83, metadata !103), !dbg !104
  %3 = icmp eq i8* %1, null, !dbg !99
  br i1 %3, label %4, label %7, !dbg !105

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !106, !tbaa !108
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 88, i32 19, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !106
  tail call void @exit(i32 -1) #7, !dbg !106
  unreachable, !dbg !106

; <label>:7                                       ; preds = %0
  tail call void @BKL_setDefaultFields(%struct._BKL* %2) #8, !dbg !112
  ret %struct._BKL* %2, !dbg !113
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @BKL_setDefaultFields(%struct._BKL* %bkl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !88, metadata !103), !dbg !114
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !115
  br i1 %1, label %2, label %5, !dbg !117

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !118, !tbaa !108
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), %struct._BKL* null) #6, !dbg !120
  tail call void @exit(i32 -1) #7, !dbg !121
  unreachable, !dbg !121

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !122
  %7 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13, !dbg !123
  store float 0.000000e+00, float* %7, align 4, !dbg !124, !tbaa !125
  %8 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !129
  store i32* null, i32** %8, align 8, !dbg !130, !tbaa !131
  %9 = bitcast %struct._BKL* %bkl to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 44, i32 8, i1 false), !dbg !133
  %10 = bitcast i32** %6 to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 20, i32 8, i1 false), !dbg !134
  ret void, !dbg !132
}

; Function Attrs: nounwind optsize ssp uwtable
define void @BKL_clearData(%struct._BKL* %bkl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !91, metadata !103), !dbg !135
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !136
  br i1 %1, label %2, label %5, !dbg !138

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !139, !tbaa !108
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._BKL* null) #6, !dbg !141
  tail call void @exit(i32 -1) #7, !dbg !142
  unreachable, !dbg !142

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !143
  %7 = load i32** %6, align 8, !dbg !143, !tbaa !145
  %8 = icmp eq i32* %7, null, !dbg !146
  br i1 %8, label %10, label %9, !dbg !147

; <label>:9                                       ; preds = %5
  tail call void @IVfree(i32* %7) #6, !dbg !148
  br label %10, !dbg !150

; <label>:10                                      ; preds = %5, %9
  %11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !151
  %12 = load %struct._BPG** %11, align 8, !dbg !151, !tbaa !153
  %13 = icmp eq %struct._BPG* %12, null, !dbg !154
  br i1 %13, label %27, label %14, !dbg !155

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct._BPG* %12, i64 0, i32 2, !dbg !156
  %16 = load %struct._Graph** %15, align 8, !dbg !156, !tbaa !157
  %17 = icmp eq %struct._Graph* %16, null, !dbg !159
  br i1 %17, label %27, label %18, !dbg !160

; <label>:18                                      ; preds = %14
  %19 = getelementptr inbounds %struct._Graph* %16, i64 0, i32 7, !dbg !161
  %20 = load i32** %19, align 8, !dbg !161, !tbaa !162
  %21 = icmp eq i32* %20, null, !dbg !164
  br i1 %21, label %22, label %27, !dbg !165

; <label>:22                                      ; preds = %18
  %23 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !166
  %24 = load i32** %23, align 8, !dbg !166, !tbaa !131
  %25 = icmp eq i32* %24, null, !dbg !167
  br i1 %25, label %27, label %26, !dbg !168

; <label>:26                                      ; preds = %22
  tail call void @IVfree(i32* %24) #6, !dbg !169
  br label %27, !dbg !171

; <label>:27                                      ; preds = %22, %14, %10, %26, %18
  tail call void @BKL_setDefaultFields(%struct._BKL* %bkl) #8, !dbg !172
  ret void, !dbg !173
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @BKL_free(%struct._BKL* %bkl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !94, metadata !103), !dbg !174
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !175
  br i1 %1, label %2, label %5, !dbg !177

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !178, !tbaa !108
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([42 x i8]* @.str4, i64 0, i64 0), %struct._BKL* null) #6, !dbg !180
  tail call void @exit(i32 -1) #7, !dbg !181
  unreachable, !dbg !181

; <label>:5                                       ; preds = %0
  tail call void @BKL_clearData(%struct._BKL* %bkl) #8, !dbg !182
  %6 = bitcast %struct._BKL* %bkl to i8*, !dbg !183
  tail call void @free(i8* %6) #8, !dbg !183
  tail call void @llvm.dbg.value(metadata %struct._BKL* null, i64 0, metadata !94, metadata !103), !dbg !174
  ret void, !dbg !186
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

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
!llvm.module.flags = !{!95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !76, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !72, !73, !74}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BKL", file: !6, line: 46, size: 704, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !69, !70}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "bpg", scope: !5, file: !6, line: 47, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "BPG", file: !11, line: 21, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BPG", file: !11, line: 22, size: 128, align: 64, elements: !13)
!13 = !{!14, !16, !17}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nX", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nY", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !12, file: !11, line: 25, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !20, line: 49, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !20, line: 50, size: 384, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !53, !54}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !20, line: 51, baseType: !15, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !21, file: !20, line: 52, baseType: !15, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !21, file: !20, line: 53, baseType: !15, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !21, file: !20, line: 54, baseType: !15, size: 32, align: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !21, file: !20, line: 55, baseType: !15, size: 32, align: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !21, file: !20, line: 56, baseType: !15, size: 32, align: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !21, file: !20, line: 57, baseType: !30, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !32, line: 55, baseType: !33)
!32 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !32, line: 79, size: 384, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !41, !43, !44}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 80, baseType: !15, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !33, file: !32, line: 81, baseType: !15, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !33, file: !32, line: 82, baseType: !15, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !33, file: !32, line: 83, baseType: !15, size: 32, align: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !33, file: !32, line: 84, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !33, file: !32, line: 85, baseType: !42, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !33, file: !32, line: 86, baseType: !15, size: 32, align: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !33, file: !32, line: 87, baseType: !45, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !32, line: 56, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !32, line: 102, size: 192, align: 64, elements: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !47, file: !32, line: 103, baseType: !15, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !47, file: !32, line: 104, baseType: !15, size: 32, align: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !47, file: !32, line: 105, baseType: !40, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !47, file: !32, line: 106, baseType: !45, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !21, file: !20, line: 58, baseType: !40, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !21, file: !20, line: 59, baseType: !30, size: 64, align: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ndom", scope: !5, file: !6, line: 48, baseType: !15, size: 32, align: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "nseg", scope: !5, file: !6, line: 49, baseType: !15, size: 32, align: 32, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !5, file: !6, line: 50, baseType: !15, size: 32, align: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "totweight", scope: !5, file: !6, line: 51, baseType: !15, size: 32, align: 32, offset: 160)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "npass", scope: !5, file: !6, line: 52, baseType: !15, size: 32, align: 32, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "npatch", scope: !5, file: !6, line: 53, baseType: !15, size: 32, align: 32, offset: 224)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nflips", scope: !5, file: !6, line: 54, baseType: !15, size: 32, align: 32, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nimprove", scope: !5, file: !6, line: 55, baseType: !15, size: 32, align: 32, offset: 288)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ngaineval", scope: !5, file: !6, line: 56, baseType: !15, size: 32, align: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !5, file: !6, line: 57, baseType: !40, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "cweights", scope: !5, file: !6, line: 58, baseType: !66, size: 96, align: 32, offset: 448)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 96, align: 32, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "regwghts", scope: !5, file: !6, line: 59, baseType: !40, size: 64, align: 64, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5, file: !6, line: 60, baseType: !71, size: 32, align: 32, offset: 640)
!71 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!72 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!76 = !{!77, !84, !89, !92}
!77 = !DISubprogram(name: "BKL_new", scope: !1, file: !1, line: 14, type: !78, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: %struct._BKL* ()* @BKL_new, variables: !82)
!78 = !DISubroutineType(types: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "BKL", file: !6, line: 45, baseType: !5)
!82 = !{!83}
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bkl", scope: !77, file: !1, line: 17, type: !80)
!84 = !DISubprogram(name: "BKL_setDefaultFields", scope: !1, file: !1, line: 34, type: !85, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._BKL*)* @BKL_setDefaultFields, variables: !87)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !80}
!87 = !{!88}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !84, file: !1, line: 35, type: !80)
!89 = !DISubprogram(name: "BKL_clearData", scope: !1, file: !1, line: 70, type: !85, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._BKL*)* @BKL_clearData, variables: !90)
!90 = !{!91}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !89, file: !1, line: 71, type: !80)
!92 = !DISubprogram(name: "BKL_free", scope: !1, file: !1, line: 100, type: !85, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._BKL*)* @BKL_free, variables: !93)
!93 = !{!94}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !92, file: !1, line: 101, type: !80)
!95 = !{i32 2, !"Dwarf Version", i32 2}
!96 = !{i32 2, !"Debug Info Version", i32 700000003}
!97 = !{i32 1, !"PIC Level", i32 2}
!98 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!99 = !DILocation(line: 19, column: 1, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 19, column: 1)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 19, column: 1)
!102 = distinct !DILexicalBlock(scope: !77, file: !1, line: 19, column: 1)
!103 = !DIExpression()
!104 = !DILocation(line: 17, column: 8, scope: !77)
!105 = !DILocation(line: 19, column: 1, scope: !101)
!106 = !DILocation(line: 19, column: 1, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !1, line: 19, column: 1)
!108 = !{!109, !109, i64 0}
!109 = !{!"any pointer", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !DILocation(line: 21, column: 1, scope: !77)
!113 = !DILocation(line: 23, column: 1, scope: !77)
!114 = !DILocation(line: 35, column: 11, scope: !84)
!115 = !DILocation(line: 37, column: 10, scope: !116)
!116 = distinct !DILexicalBlock(scope: !84, file: !1, line: 37, column: 6)
!117 = !DILocation(line: 37, column: 6, scope: !84)
!118 = !DILocation(line: 38, column: 12, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 37, column: 20)
!120 = !DILocation(line: 38, column: 4, scope: !119)
!121 = !DILocation(line: 40, column: 4, scope: !119)
!122 = !DILocation(line: 52, column: 6, scope: !84)
!123 = !DILocation(line: 53, column: 6, scope: !84)
!124 = !DILocation(line: 53, column: 16, scope: !84)
!125 = !{!126, !128, i64 80}
!126 = !{!"_BKL", !109, i64 0, !127, i64 8, !127, i64 12, !127, i64 16, !127, i64 20, !127, i64 24, !127, i64 28, !127, i64 32, !127, i64 36, !127, i64 40, !109, i64 48, !110, i64 56, !109, i64 72, !128, i64 80}
!127 = !{!"int", !110, i64 0}
!128 = !{!"float", !110, i64 0}
!129 = !DILocation(line: 55, column: 6, scope: !84)
!130 = !DILocation(line: 55, column: 16, scope: !84)
!131 = !{!126, !109, i64 72}
!132 = !DILocation(line: 57, column: 1, scope: !84)
!133 = !DILocation(line: 43, column: 16, scope: !84)
!134 = !DILocation(line: 52, column: 16, scope: !84)
!135 = !DILocation(line: 71, column: 11, scope: !89)
!136 = !DILocation(line: 73, column: 10, scope: !137)
!137 = distinct !DILexicalBlock(scope: !89, file: !1, line: 73, column: 6)
!138 = !DILocation(line: 73, column: 6, scope: !89)
!139 = !DILocation(line: 74, column: 12, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !1, line: 73, column: 20)
!141 = !DILocation(line: 74, column: 4, scope: !140)
!142 = !DILocation(line: 76, column: 4, scope: !140)
!143 = !DILocation(line: 78, column: 11, scope: !144)
!144 = distinct !DILexicalBlock(scope: !89, file: !1, line: 78, column: 6)
!145 = !{!126, !109, i64 48}
!146 = !DILocation(line: 78, column: 18, scope: !144)
!147 = !DILocation(line: 78, column: 6, scope: !89)
!148 = !DILocation(line: 79, column: 4, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 78, column: 28)
!150 = !DILocation(line: 80, column: 1, scope: !149)
!151 = !DILocation(line: 81, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !89, file: !1, line: 81, column: 6)
!153 = !{!126, !109, i64 0}
!154 = !DILocation(line: 81, column: 15, scope: !152)
!155 = !DILocation(line: 82, column: 4, scope: !152)
!156 = !DILocation(line: 82, column: 17, scope: !152)
!157 = !{!158, !109, i64 8}
!158 = !{!"_BPG", !127, i64 0, !127, i64 4, !109, i64 8}
!159 = !DILocation(line: 82, column: 23, scope: !152)
!160 = !DILocation(line: 83, column: 4, scope: !152)
!161 = !DILocation(line: 83, column: 24, scope: !152)
!162 = !{!163, !109, i64 32}
!163 = !{!"_Graph", !127, i64 0, !127, i64 4, !127, i64 8, !127, i64 12, !127, i64 16, !127, i64 20, !109, i64 24, !109, i64 32, !109, i64 40}
!164 = !DILocation(line: 83, column: 31, scope: !152)
!165 = !DILocation(line: 84, column: 4, scope: !152)
!166 = !DILocation(line: 84, column: 12, scope: !152)
!167 = !DILocation(line: 84, column: 21, scope: !152)
!168 = !DILocation(line: 81, column: 6, scope: !89)
!169 = !DILocation(line: 85, column: 4, scope: !170)
!170 = distinct !DILexicalBlock(scope: !152, file: !1, line: 84, column: 31)
!171 = !DILocation(line: 86, column: 1, scope: !170)
!172 = !DILocation(line: 87, column: 1, scope: !89)
!173 = !DILocation(line: 89, column: 1, scope: !89)
!174 = !DILocation(line: 101, column: 11, scope: !92)
!175 = !DILocation(line: 103, column: 10, scope: !176)
!176 = distinct !DILexicalBlock(scope: !92, file: !1, line: 103, column: 6)
!177 = !DILocation(line: 103, column: 6, scope: !92)
!178 = !DILocation(line: 104, column: 12, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !1, line: 103, column: 20)
!180 = !DILocation(line: 104, column: 4, scope: !179)
!181 = !DILocation(line: 106, column: 4, scope: !179)
!182 = !DILocation(line: 108, column: 1, scope: !92)
!183 = !DILocation(line: 109, column: 1, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 109, column: 1)
!185 = distinct !DILexicalBlock(scope: !92, file: !1, line: 109, column: 1)
!186 = !DILocation(line: 111, column: 1, scope: !92)
