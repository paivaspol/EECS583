; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._ChvManager = type { %struct._Chv*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [55 x i8] c"\0A fatal error in ChvManager_init(%p,%d,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @ChvManager_init(%struct._ChvManager* %manager, i32 %lockflag, i32 %mode) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvManager* %manager, i64 0, metadata !62, metadata !69), !dbg !70
  tail call void @llvm.dbg.value(metadata i32 %lockflag, i64 0, metadata !63, metadata !69), !dbg !71
  tail call void @llvm.dbg.value(metadata i32 %mode, i64 0, metadata !64, metadata !69), !dbg !72
  %1 = icmp eq %struct._ChvManager* %manager, null, !dbg !73
  %2 = icmp ugt i32 %lockflag, 2, !dbg !75
  %3 = or i1 %1, %2, !dbg !75
  %4 = icmp ugt i32 %mode, 1, !dbg !75
  %5 = or i1 %4, %3, !dbg !75
  br i1 %5, label %6, label %9, !dbg !75

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !76, !tbaa !78
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), %struct._ChvManager* %manager, i32 %lockflag, i32 %mode) #5, !dbg !82
  tail call void @exit(i32 -1) #6, !dbg !83
  unreachable, !dbg !83

; <label>:9                                       ; preds = %0
  tail call void @ChvManager_clearData(%struct._ChvManager* %manager) #5, !dbg !84
  %10 = icmp sgt i32 %lockflag, 0, !dbg !85
  br i1 %10, label %11, label %14, !dbg !87

; <label>:11                                      ; preds = %9
  %12 = tail call %struct._Lock* @Lock_new() #5, !dbg !88
  %13 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 1, !dbg !90
  store %struct._Lock* %12, %struct._Lock** %13, align 8, !dbg !91, !tbaa !92
  tail call void @Lock_init(%struct._Lock* %12, i32 %lockflag) #5, !dbg !95
  br label %14, !dbg !96

; <label>:14                                      ; preds = %11, %9
  %15 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 2, !dbg !97
  store i32 %mode, i32* %15, align 4, !dbg !98, !tbaa !99
  ret void, !dbg !100
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @ChvManager_clearData(%struct._ChvManager*) #3

; Function Attrs: optsize
declare %struct._Lock* @Lock_new() #3

; Function Attrs: optsize
declare void @Lock_init(%struct._Lock*, i32) #3

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
!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "ChvManager_init", scope: !1, file: !1, line: 23, type: !7, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ChvManager*, i32, i32)* @ChvManager_init, variables: !61)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !21, !21}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChvManager", file: !11, line: 9, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../ChvManager.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ChvManager", file: !11, line: 10, size: 448, align: 64, elements: !13)
!13 = !{!14, !43, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !12, file: !11, line: 11, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "Chv", file: !17, line: 30, baseType: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../Chv/Chv.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Chv", file: !17, line: 31, size: 640, align: 64, elements: !19)
!19 = !{!20, !22, !23, !24, !25, !26, !27, !29, !30, !33, !42}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !18, file: !17, line: 32, baseType: !21, size: 32, align: 32)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nD", scope: !18, file: !17, line: 33, baseType: !21, size: 32, align: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nL", scope: !18, file: !17, line: 34, baseType: !21, size: 32, align: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nU", scope: !18, file: !17, line: 35, baseType: !21, size: 32, align: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !18, file: !17, line: 36, baseType: !21, size: 32, align: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "symflag", scope: !18, file: !17, line: 37, baseType: !21, size: 32, align: 32, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !18, file: !17, line: 38, baseType: !28, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !18, file: !17, line: 39, baseType: !28, size: 64, align: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !18, file: !17, line: 40, baseType: !31, size: 64, align: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !18, file: !17, line: 41, baseType: !34, size: 192, align: 64, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !35, line: 20, baseType: !36)
!35 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !35, line: 21, size: 192, align: 64, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !36, file: !35, line: 22, baseType: !21, size: 32, align: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !36, file: !35, line: 23, baseType: !21, size: 32, align: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !36, file: !35, line: 24, baseType: !21, size: 32, align: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !36, file: !35, line: 25, baseType: !31, size: 64, align: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !17, line: 42, baseType: !15, size: 64, align: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !12, file: !11, line: 12, baseType: !44, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !46, line: 36, baseType: !47)
!46 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../Lock/Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !46, line: 37, size: 128, align: 64, elements: !48)
!48 = !{!49, !50, !51}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !47, file: !46, line: 45, baseType: !4, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !47, file: !46, line: 47, baseType: !21, size: 32, align: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !47, file: !46, line: 48, baseType: !21, size: 32, align: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !12, file: !11, line: 13, baseType: !21, size: 32, align: 32, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nactive", scope: !12, file: !11, line: 14, baseType: !21, size: 32, align: 32, offset: 160)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesactive", scope: !12, file: !11, line: 15, baseType: !21, size: 32, align: 32, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesrequested", scope: !12, file: !11, line: 16, baseType: !21, size: 32, align: 32, offset: 224)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesalloc", scope: !12, file: !11, line: 17, baseType: !21, size: 32, align: 32, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !12, file: !11, line: 18, baseType: !21, size: 32, align: 32, offset: 288)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nreleases", scope: !12, file: !11, line: 19, baseType: !21, size: 32, align: 32, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !12, file: !11, line: 20, baseType: !21, size: 32, align: 32, offset: 352)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !12, file: !11, line: 21, baseType: !21, size: 32, align: 32, offset: 384)
!61 = !{!62, !63, !64}
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !6, file: !1, line: 24, type: !9)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lockflag", arg: 2, scope: !6, file: !1, line: 25, type: !21)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 3, scope: !6, file: !1, line: 26, type: !21)
!65 = !{i32 2, !"Dwarf Version", i32 2}
!66 = !{i32 2, !"Debug Info Version", i32 700000003}
!67 = !{i32 1, !"PIC Level", i32 2}
!68 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!69 = !DIExpression()
!70 = !DILocation(line: 24, column: 18, scope: !6)
!71 = !DILocation(line: 25, column: 17, scope: !6)
!72 = !DILocation(line: 26, column: 17, scope: !6)
!73 = !DILocation(line: 33, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !6, file: !1, line: 33, column: 6)
!75 = !DILocation(line: 34, column: 4, scope: !74)
!76 = !DILocation(line: 36, column: 12, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 35, column: 30)
!78 = !{!79, !79, i64 0}
!79 = !{!"any pointer", !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C/C++ TBAA"}
!82 = !DILocation(line: 36, column: 4, scope: !77)
!83 = !DILocation(line: 38, column: 4, scope: !77)
!84 = !DILocation(line: 45, column: 1, scope: !6)
!85 = !DILocation(line: 46, column: 15, scope: !86)
!86 = distinct !DILexicalBlock(scope: !6, file: !1, line: 46, column: 6)
!87 = !DILocation(line: 46, column: 6, scope: !6)
!88 = !DILocation(line: 52, column: 20, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 46, column: 21)
!90 = !DILocation(line: 52, column: 13, scope: !89)
!91 = !DILocation(line: 52, column: 18, scope: !89)
!92 = !{!93, !79, i64 8}
!93 = !{!"_ChvManager", !79, i64 0, !79, i64 8, !94, i64 16, !94, i64 20, !94, i64 24, !94, i64 28, !94, i64 32, !94, i64 36, !94, i64 40, !94, i64 44, !94, i64 48}
!94 = !{!"int", !80, i64 0}
!95 = !DILocation(line: 53, column: 4, scope: !89)
!96 = !DILocation(line: 54, column: 1, scope: !89)
!97 = !DILocation(line: 60, column: 10, scope: !6)
!98 = !DILocation(line: 60, column: 15, scope: !6)
!99 = !{!93, !94, i64 16}
!100 = !DILocation(line: 62, column: 1, scope: !6)
