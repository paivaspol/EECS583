; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranWrappers.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@registry = internal global %struct.PNamedData* null, align 8
@.str = private unnamed_addr constant [91 x i8] c"$Header: /cactus/Cactus/src/main/FortranWrappers.c,v 1.5 2001/05/10 12:35:12 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_FortranWrappers_c() #0 {
  ret i8* getelementptr inbounds ([91 x i8]* @.str, i64 0, i64 0), !dbg !46
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_RegisterFortranWrapper(i8* %name, i32 (i8*, i8*)* %function) #1 {
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !20, metadata !47), !dbg !48
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %function, i64 0, metadata !21, metadata !47), !dbg !49
  %1 = bitcast i32 (i8*, i8*)* %function to i8*, !dbg !50
  %2 = tail call i32 @StoreNamedData(%struct.PNamedData** @registry, i8* %name, i8* %1) #4, !dbg !51
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !22, metadata !47), !dbg !52
  ret i32 %2, !dbg !53
}

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 (i8*, i8*)* @CCTKi_FortranWrapper(i8* %name) #1 {
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !27, metadata !47), !dbg !54
  %1 = load %struct.PNamedData** @registry, align 8, !dbg !55, !tbaa !56
  %2 = tail call i8* @GetNamedData(%struct.PNamedData* %1, i8* %name) #4, !dbg !60
  %3 = bitcast i8* %2 to i32 (i8*, i8*)*, !dbg !61
  ret i32 (i8*, i8*)* %3, !dbg !62
}

; Function Attrs: optsize
declare i8* @GetNamedData(%struct.PNamedData*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !9, globals: !28, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranWrappers.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !4, !4}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{!10, !16, !23}
!10 = !DISubprogram(name: "CCTKi_version_main_FortranWrappers_c", scope: !1, file: !1, line: 23, type: !11, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_FortranWrappers_c, variables: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !DISubprogram(name: "CCTKi_RegisterFortranWrapper", scope: !1, file: !1, line: 79, type: !17, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32 (i8*, i8*)*)* @CCTKi_RegisterFortranWrapper, variables: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!8, !13, !5}
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !16, file: !1, line: 79, type: !13)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "function", arg: 2, scope: !16, file: !1, line: 80, type: !5)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retcode", scope: !16, file: !1, line: 82, type: !8)
!23 = !DISubprogram(name: "CCTKi_FortranWrapper", scope: !1, file: !1, line: 114, type: !24, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* (i8*)* @CCTKi_FortranWrapper, variables: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!5, !13}
!26 = !{!27}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !23, file: !1, line: 114, type: !13)
!28 = !{!29, !30}
!29 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 21, type: !13, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariable(name: "registry", scope: !0, file: !1, line: 41, type: !31, isLocal: true, isDefinition: true, variable: %struct.PNamedData** @registry)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "pNamedData", file: !33, line: 26, baseType: !34)
!33 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreNamedData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "PNamedData", file: !33, line: 18, size: 256, align: 64, elements: !35)
!35 = !{!36, !38, !39, !41}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !34, file: !33, line: 20, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !33, line: 21, baseType: !37, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !33, line: 23, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !34, file: !33, line: 25, baseType: !4, size: 64, align: 64, offset: 192)
!42 = !{i32 2, !"Dwarf Version", i32 2}
!43 = !{i32 2, !"Debug Info Version", i32 700000003}
!44 = !{i32 1, !"PIC Level", i32 2}
!45 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!46 = !DILocation(line: 23, column: 1, scope: !10)
!47 = !DIExpression()
!48 = !DILocation(line: 79, column: 46, scope: !16)
!49 = !DILocation(line: 80, column: 40, scope: !16)
!50 = !DILocation(line: 83, column: 45, scope: !16)
!51 = !DILocation(line: 83, column: 13, scope: !16)
!52 = !DILocation(line: 82, column: 7, scope: !16)
!53 = !DILocation(line: 85, column: 3, scope: !16)
!54 = !DILocation(line: 114, column: 40, scope: !23)
!55 = !DILocation(line: 116, column: 47, scope: !23)
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !DILocation(line: 116, column: 34, scope: !23)
!61 = !DILocation(line: 116, column: 10, scope: !23)
!62 = !DILocation(line: 116, column: 3, scope: !23)
