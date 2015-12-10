; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/clearvec.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize ssp uwtable
define void @clearvec(%struct.su3_vector* nocapture %v) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %v, i64 0, metadata !24, metadata !29), !dbg !30
  %1 = bitcast %struct.su3_vector* %v to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false), !dbg !32
  ret void, !dbg !31
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/clearvec.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "clearvec", scope: !1, file: !1, line: 10, type: !5, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_vector*)* @clearvec, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_vector", file: !9, line: 15, baseType: !10)
!9 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 15, size: 384, align: 64, elements: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !10, file: !9, line: 15, baseType: !13, size: 384, align: 64)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, align: 64, elements: !21)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !15, line: 76, baseType: !16)
!15 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 73, size: 128, align: 64, elements: !17)
!17 = !{!18, !20}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !16, file: !15, line: 74, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !16, file: !15, line: 75, baseType: !19, size: 64, align: 64, offset: 64)
!21 = !{!22}
!22 = !DISubrange(count: 3)
!23 = !{!24}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !4, file: !1, line: 10, type: !7)
!25 = !{i32 2, !"Dwarf Version", i32 2}
!26 = !{i32 2, !"Debug Info Version", i32 700000003}
!27 = !{i32 1, !"PIC Level", i32 2}
!28 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!29 = !DIExpression()
!30 = !DILocation(line: 10, column: 28, scope: !4)
!31 = !DILocation(line: 14, column: 1, scope: !4)
!32 = !DILocation(line: 11, column: 19, scope: !4)
