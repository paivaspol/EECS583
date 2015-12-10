; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/synclib.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define void @syncall() #0 {
  tail call void @put_serverbyte(i8 zeroext 17) #2, !dbg !11
  tail call void @put_serverbyte(i8 zeroext 19) #2, !dbg !12
  %1 = tail call zeroext i8 (...)* @get_serverbyte() #2, !dbg !13
  ret void, !dbg !14
}

; Function Attrs: optsize
declare void @put_serverbyte(i8 zeroext) #1

; Function Attrs: optsize
declare zeroext i8 @get_serverbyte(...) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/synclib.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "syncall", scope: !1, file: !1, line: 37, type: !5, isLocal: false, isDefinition: true, scopeLine: 38, isOptimized: true, function: void ()* @syncall, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null}
!7 = !{i32 2, !"Dwarf Version", i32 2}
!8 = !{i32 2, !"Debug Info Version", i32 700000003}
!9 = !{i32 1, !"PIC Level", i32 2}
!10 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!11 = !DILocation(line: 39, column: 3, scope: !4)
!12 = !DILocation(line: 40, column: 3, scope: !4)
!13 = !DILocation(line: 41, column: 10, scope: !4)
!14 = !DILocation(line: 42, column: 1, scope: !4)
