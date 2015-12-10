; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Subsystems.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/Subsystems.c,v 1.12 2001/11/05 14:58:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Subsystems_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), !dbg !20
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_InitialiseSubsystemDefaults() #1 {
  %1 = tail call i32 @CCTKi_SetupMainFunctions() #3, !dbg !21
  %2 = tail call i32 @CCTKi_SetupCommFunctions() #3, !dbg !22
  %3 = tail call i32 @CCTKi_SetupIOFunctions() #3, !dbg !23
  %4 = tail call i32 @CCTKBindings_SetupThornFunctions() #3, !dbg !24
  %5 = tail call i32 @CCTKi_BindingsImplementationsInitialise() #3, !dbg !25
  %6 = tail call i32 @CCTKi_BindingsParametersInitialise() #3, !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: optsize
declare i32 @CCTKi_SetupMainFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_SetupCommFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_SetupIOFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKBindings_SetupThornFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_BindingsImplementationsInitialise() #2

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParametersInitialise() #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !14, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Subsystems.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_main_Subsystems_c", scope: !1, file: !1, line: 20, type: !5, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_Subsystems_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTKi_InitialiseSubsystemDefaults", scope: !1, file: !1, line: 47, type: !11, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_InitialiseSubsystemDefaults, variables: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !{!15}
!15 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 18, type: !7, isLocal: true, isDefinition: true)
!16 = !{i32 2, !"Dwarf Version", i32 2}
!17 = !{i32 2, !"Debug Info Version", i32 700000003}
!18 = !{i32 1, !"PIC Level", i32 2}
!19 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!20 = !DILocation(line: 20, column: 1, scope: !4)
!21 = !DILocation(line: 49, column: 3, scope: !10)
!22 = !DILocation(line: 50, column: 3, scope: !10)
!23 = !DILocation(line: 51, column: 3, scope: !10)
!24 = !DILocation(line: 52, column: 3, scope: !10)
!25 = !DILocation(line: 53, column: 3, scope: !10)
!26 = !DILocation(line: 54, column: 3, scope: !10)
!27 = !DILocation(line: 56, column: 3, scope: !10)
