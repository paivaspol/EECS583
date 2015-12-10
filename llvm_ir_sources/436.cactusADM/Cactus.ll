; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Cactus.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusBindingsVariables_Cactus_Initialise() #0 {
  %1 = tail call i32 @CCTKi_RegisterFortranWrapper(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i32 (i8*, i8*)* @CCTKi_BindingsFortranWrapperCactus) #2, !dbg !12
  ret i32 0, !dbg !13
}

; Function Attrs: optsize
declare i32 @CCTKi_RegisterFortranWrapper(i8*, i32 (i8*, i8*)*) #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsFortranWrapperCactus(i8*, i8*) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Cactus.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CactusBindingsVariables_Cactus_Initialise", scope: !1, file: !1, line: 11, type: !5, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CactusBindingsVariables_Cactus_Initialise, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 2}
!9 = !{i32 2, !"Debug Info Version", i32 700000003}
!10 = !{i32 1, !"PIC Level", i32 2}
!11 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!12 = !DILocation(line: 13, column: 3, scope: !4)
!13 = !DILocation(line: 15, column: 3, scope: !4)
