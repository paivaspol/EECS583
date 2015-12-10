; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_init.c'
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
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in BKL_init(%p,%p,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @BKL_init(%struct._BKL* %bkl, %struct._BPG* %bpg, float %alpha) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !79, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !80, metadata !86), !dbg !88
  tail call void @llvm.dbg.value(metadata float %alpha, i64 0, metadata !81, metadata !86), !dbg !89
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !90
  %2 = icmp eq %struct._BPG* %bpg, null, !dbg !92
  %or.cond = or i1 %1, %2, !dbg !93
  br i1 %or.cond, label %3, label %7, !dbg !93

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !94, !tbaa !96
  %5 = fpext float %alpha to double, !dbg !100
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._BKL* %bkl, %struct._BPG* %bpg, double %5) #5, !dbg !101
  tail call void @exit(i32 -1) #6, !dbg !102
  unreachable, !dbg !102

; <label>:7                                       ; preds = %0
  tail call void @BKL_clearData(%struct._BKL* %bkl) #5, !dbg !103
  %8 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !104
  store %struct._BPG* %bpg, %struct._BPG** %8, align 8, !dbg !105, !tbaa !106
  %9 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !110
  %10 = load i32* %9, align 4, !dbg !110, !tbaa !111
  %11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !113
  store i32 %10, i32* %11, align 4, !dbg !114, !tbaa !115
  %12 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !116
  %13 = load i32* %12, align 4, !dbg !116, !tbaa !117
  %14 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 2, !dbg !118
  store i32 %13, i32* %14, align 4, !dbg !119, !tbaa !120
  %15 = add nsw i32 %13, %10, !dbg !121
  %16 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 3, !dbg !122
  store i32 %15, i32* %16, align 4, !dbg !123, !tbaa !124
  %17 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !125
  %18 = load %struct._Graph** %17, align 8, !dbg !125, !tbaa !127
  %19 = getelementptr inbounds %struct._Graph* %18, i64 0, i32 7, !dbg !128
  %20 = load i32** %19, align 8, !dbg !128, !tbaa !129
  %21 = icmp eq i32* %20, null, !dbg !131
  br i1 %21, label %22, label %26, !dbg !132

; <label>:22                                      ; preds = %7
  %23 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4, !dbg !133
  store i32 %15, i32* %23, align 4, !dbg !135, !tbaa !136
  %24 = tail call i32* @IVinit(i32 %15, i32 1) #5, !dbg !137
  %25 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !138
  store i32* %24, i32** %25, align 8, !dbg !139, !tbaa !140
  br label %30, !dbg !141

; <label>:26                                      ; preds = %7
  %27 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !142
  store i32* %20, i32** %27, align 8, !dbg !144, !tbaa !140
  %28 = tail call i32 @IVsum(i32 %15, i32* %20) #5, !dbg !145
  %29 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4, !dbg !146
  store i32 %28, i32* %29, align 4, !dbg !147, !tbaa !136
  br label %30

; <label>:30                                      ; preds = %26, %22
  %31 = load i32* %16, align 4, !dbg !148, !tbaa !124
  %32 = tail call i32* @IVinit(i32 %31, i32 0) #5, !dbg !149
  %33 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !150
  store i32* %32, i32** %33, align 8, !dbg !151, !tbaa !152
  %34 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13, !dbg !153
  store float %alpha, float* %34, align 4, !dbg !154, !tbaa !155
  ret void, !dbg !156
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @BKL_clearData(%struct._BKL*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!82, !83, !84}
!llvm.ident = !{!85}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "BKL_init", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._BKL*, %struct._BPG*, float)* @BKL_init, variables: !78)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !77}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "BKL", file: !11, line: 45, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BKL", file: !11, line: 46, size: 704, align: 64, elements: !13)
!13 = !{!14, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !75, !76}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "bpg", scope: !12, file: !11, line: 47, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "BPG", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BPG", file: !17, line: 22, size: 128, align: 64, elements: !19)
!19 = !{!20, !22, !23}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "nX", scope: !18, file: !17, line: 23, baseType: !21, size: 32, align: 32)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nY", scope: !18, file: !17, line: 24, baseType: !21, size: 32, align: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !18, file: !17, line: 25, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !26, line: 49, baseType: !27)
!26 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !26, line: 50, size: 384, align: 64, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !59, !60}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !26, line: 51, baseType: !21, size: 32, align: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !27, file: !26, line: 52, baseType: !21, size: 32, align: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !27, file: !26, line: 53, baseType: !21, size: 32, align: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !27, file: !26, line: 54, baseType: !21, size: 32, align: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !27, file: !26, line: 55, baseType: !21, size: 32, align: 32, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !27, file: !26, line: 56, baseType: !21, size: 32, align: 32, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !27, file: !26, line: 57, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !38, line: 55, baseType: !39)
!38 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !38, line: 79, size: 384, align: 64, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !47, !49, !50}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !38, line: 80, baseType: !21, size: 32, align: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !39, file: !38, line: 81, baseType: !21, size: 32, align: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !39, file: !38, line: 82, baseType: !21, size: 32, align: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !39, file: !38, line: 83, baseType: !21, size: 32, align: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !39, file: !38, line: 84, baseType: !46, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !39, file: !38, line: 85, baseType: !48, size: 64, align: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !39, file: !38, line: 86, baseType: !21, size: 32, align: 32, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !39, file: !38, line: 87, baseType: !51, size: 64, align: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !38, line: 56, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !38, line: 102, size: 192, align: 64, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !53, file: !38, line: 103, baseType: !21, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !53, file: !38, line: 104, baseType: !21, size: 32, align: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !53, file: !38, line: 105, baseType: !46, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !53, file: !38, line: 106, baseType: !51, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !27, file: !26, line: 58, baseType: !46, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !27, file: !26, line: 59, baseType: !36, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ndom", scope: !12, file: !11, line: 48, baseType: !21, size: 32, align: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nseg", scope: !12, file: !11, line: 49, baseType: !21, size: 32, align: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !12, file: !11, line: 50, baseType: !21, size: 32, align: 32, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "totweight", scope: !12, file: !11, line: 51, baseType: !21, size: 32, align: 32, offset: 160)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "npass", scope: !12, file: !11, line: 52, baseType: !21, size: 32, align: 32, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "npatch", scope: !12, file: !11, line: 53, baseType: !21, size: 32, align: 32, offset: 224)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nflips", scope: !12, file: !11, line: 54, baseType: !21, size: 32, align: 32, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nimprove", scope: !12, file: !11, line: 55, baseType: !21, size: 32, align: 32, offset: 288)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ngaineval", scope: !12, file: !11, line: 56, baseType: !21, size: 32, align: 32, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !12, file: !11, line: 57, baseType: !46, size: 64, align: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cweights", scope: !12, file: !11, line: 58, baseType: !72, size: 96, align: 32, offset: 448)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 96, align: 32, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "regwghts", scope: !12, file: !11, line: 59, baseType: !46, size: 64, align: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !12, file: !11, line: 60, baseType: !77, size: 32, align: 32, offset: 640)
!77 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!78 = !{!79, !80, !81}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 2, scope: !6, file: !1, line: 16, type: !15)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alpha", arg: 3, scope: !6, file: !1, line: 17, type: !77)
!82 = !{i32 2, !"Dwarf Version", i32 2}
!83 = !{i32 2, !"Debug Info Version", i32 700000003}
!84 = !{i32 1, !"PIC Level", i32 2}
!85 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!86 = !DIExpression()
!87 = !DILocation(line: 15, column: 13, scope: !6)
!88 = !DILocation(line: 16, column: 13, scope: !6)
!89 = !DILocation(line: 17, column: 12, scope: !6)
!90 = !DILocation(line: 24, column: 10, scope: !91)
!91 = distinct !DILexicalBlock(scope: !6, file: !1, line: 24, column: 6)
!92 = !DILocation(line: 24, column: 25, scope: !91)
!93 = !DILocation(line: 24, column: 18, scope: !91)
!94 = !DILocation(line: 25, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 24, column: 35)
!96 = !{!97, !97, i64 0}
!97 = !{!"any pointer", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !DILocation(line: 26, column: 40, scope: !95)
!101 = !DILocation(line: 25, column: 4, scope: !95)
!102 = !DILocation(line: 27, column: 4, scope: !95)
!103 = !DILocation(line: 34, column: 1, scope: !6)
!104 = !DILocation(line: 40, column: 6, scope: !6)
!105 = !DILocation(line: 40, column: 11, scope: !6)
!106 = !{!107, !97, i64 0}
!107 = !{!"_BKL", !97, i64 0, !108, i64 8, !108, i64 12, !108, i64 16, !108, i64 20, !108, i64 24, !108, i64 28, !108, i64 32, !108, i64 36, !108, i64 40, !97, i64 48, !98, i64 56, !97, i64 72, !109, i64 80}
!108 = !{!"int", !98, i64 0}
!109 = !{!"float", !98, i64 0}
!110 = !DILocation(line: 41, column: 18, scope: !6)
!111 = !{!112, !108, i64 0}
!112 = !{!"_BPG", !108, i64 0, !108, i64 4, !97, i64 8}
!113 = !DILocation(line: 41, column: 6, scope: !6)
!114 = !DILocation(line: 41, column: 11, scope: !6)
!115 = !{!107, !108, i64 8}
!116 = !DILocation(line: 42, column: 18, scope: !6)
!117 = !{!112, !108, i64 4}
!118 = !DILocation(line: 42, column: 6, scope: !6)
!119 = !DILocation(line: 42, column: 11, scope: !6)
!120 = !{!107, !108, i64 12}
!121 = !DILocation(line: 43, column: 21, scope: !6)
!122 = !DILocation(line: 43, column: 6, scope: !6)
!123 = !DILocation(line: 43, column: 11, scope: !6)
!124 = !{!107, !108, i64 16}
!125 = !DILocation(line: 44, column: 11, scope: !126)
!126 = distinct !DILexicalBlock(scope: !6, file: !1, line: 44, column: 6)
!127 = !{!112, !97, i64 8}
!128 = !DILocation(line: 44, column: 18, scope: !126)
!129 = !{!130, !97, i64 32}
!130 = !{!"_Graph", !108, i64 0, !108, i64 4, !108, i64 8, !108, i64 12, !108, i64 16, !108, i64 20, !97, i64 24, !97, i64 32, !97, i64 40}
!131 = !DILocation(line: 44, column: 25, scope: !126)
!132 = !DILocation(line: 44, column: 6, scope: !6)
!133 = !DILocation(line: 45, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !126, file: !1, line: 44, column: 35)
!135 = !DILocation(line: 45, column: 19, scope: !134)
!136 = !{!107, !108, i64 20}
!137 = !DILocation(line: 46, column: 21, scope: !134)
!138 = !DILocation(line: 46, column: 9, scope: !134)
!139 = !DILocation(line: 46, column: 19, scope: !134)
!140 = !{!107, !97, i64 72}
!141 = !DILocation(line: 47, column: 1, scope: !134)
!142 = !DILocation(line: 48, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !126, file: !1, line: 47, column: 8)
!144 = !DILocation(line: 48, column: 19, scope: !143)
!145 = !DILocation(line: 49, column: 21, scope: !143)
!146 = !DILocation(line: 49, column: 9, scope: !143)
!147 = !DILocation(line: 49, column: 19, scope: !143)
!148 = !DILocation(line: 51, column: 27, scope: !6)
!149 = !DILocation(line: 51, column: 15, scope: !6)
!150 = !DILocation(line: 51, column: 6, scope: !6)
!151 = !DILocation(line: 51, column: 13, scope: !6)
!152 = !{!107, !97, i64 48}
!153 = !DILocation(line: 52, column: 6, scope: !6)
!154 = !DILocation(line: 52, column: 13, scope: !6)
!155 = !{!107, !109, i64 80}
!156 = !DILocation(line: 54, column: 1, scope: !6)
