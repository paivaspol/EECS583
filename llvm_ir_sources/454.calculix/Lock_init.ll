; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._Lock = type { i8*, i32, i32 }

; Function Attrs: nounwind optsize readnone ssp uwtable
define void @Lock_init(%struct._Lock* nocapture %lock, i32 %lockflag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Lock* %lock, i64 0, metadata !18, metadata !24), !dbg !25
  tail call void @llvm.dbg.value(metadata i32 %lockflag, i64 0, metadata !19, metadata !24), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "Lock_init", scope: !1, file: !1, line: 26, type: !5, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Lock*, i32)* @Lock_init, variables: !17)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !15}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !9, line: 36, baseType: !10)
!9 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/../Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !9, line: 37, size: 128, align: 64, elements: !11)
!11 = !{!12, !14, !16}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !10, file: !9, line: 45, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !10, file: !9, line: 47, baseType: !15, size: 32, align: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !10, file: !9, line: 48, baseType: !15, size: 32, align: 32, offset: 96)
!17 = !{!18, !19}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !4, file: !1, line: 27, type: !7)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lockflag", arg: 2, scope: !4, file: !1, line: 28, type: !15)
!20 = !{i32 2, !"Dwarf Version", i32 2}
!21 = !{i32 2, !"Debug Info Version", i32 700000003}
!22 = !{i32 1, !"PIC Level", i32 2}
!23 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!24 = !DIExpression()
!25 = !DILocation(line: 27, column: 12, scope: !4)
!26 = !DILocation(line: 28, column: 11, scope: !4)
!27 = !DILocation(line: 49, column: 1, scope: !4)
