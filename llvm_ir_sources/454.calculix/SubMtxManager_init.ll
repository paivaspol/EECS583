; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in SubMtxManager_init(%p,%d,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtxManager_init(%struct._SubMtxManager* %manager, i32 %lockflag, i32 %mode) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxManager* %manager, i64 0, metadata !60, metadata !67), !dbg !68
  tail call void @llvm.dbg.value(metadata i32 %lockflag, i64 0, metadata !61, metadata !67), !dbg !69
  tail call void @llvm.dbg.value(metadata i32 %mode, i64 0, metadata !62, metadata !67), !dbg !70
  %1 = icmp eq %struct._SubMtxManager* %manager, null, !dbg !71
  %2 = icmp ugt i32 %lockflag, 2, !dbg !73
  %3 = or i1 %1, %2, !dbg !73
  %4 = icmp ugt i32 %mode, 1, !dbg !73
  %5 = or i1 %4, %3, !dbg !73
  br i1 %5, label %6, label %9, !dbg !73

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !74, !tbaa !76
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._SubMtxManager* %manager, i32 %lockflag, i32 %mode) #5, !dbg !80
  tail call void @exit(i32 -1) #6, !dbg !81
  unreachable, !dbg !81

; <label>:9                                       ; preds = %0
  tail call void @SubMtxManager_clearData(%struct._SubMtxManager* %manager) #5, !dbg !82
  %10 = icmp eq i32 %lockflag, 0, !dbg !83
  br i1 %10, label %14, label %11, !dbg !85

; <label>:11                                      ; preds = %9
  %12 = tail call %struct._Lock* @Lock_new() #5, !dbg !86
  %13 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1, !dbg !88
  store %struct._Lock* %12, %struct._Lock** %13, align 8, !dbg !89, !tbaa !90
  tail call void @Lock_init(%struct._Lock* %12, i32 %lockflag) #5, !dbg !93
  br label %14, !dbg !94

; <label>:14                                      ; preds = %9, %11
  %15 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 2, !dbg !95
  store i32 %mode, i32* %15, align 4, !dbg !96, !tbaa !97
  ret void, !dbg !98
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @SubMtxManager_clearData(%struct._SubMtxManager*) #3

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
!llvm.module.flags = !{!63, !64, !65}
!llvm.ident = !{!66}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "SubMtxManager_init", scope: !1, file: !1, line: 23, type: !7, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtxManager*, i32, i32)* @SubMtxManager_init, variables: !59)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !21, !21}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtxManager", file: !11, line: 9, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../SubMtxManager.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SubMtxManager", file: !11, line: 10, size: 448, align: 64, elements: !13)
!13 = !{!14, !41, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !12, file: !11, line: 11, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtx", file: !17, line: 43, baseType: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../SubMtx/SubMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SubMtx", file: !17, line: 44, size: 576, align: 64, elements: !19)
!19 = !{!20, !22, !23, !24, !25, !26, !27, !28, !31, !40}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !18, file: !17, line: 45, baseType: !21, size: 32, align: 32)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !18, file: !17, line: 46, baseType: !21, size: 32, align: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !18, file: !17, line: 47, baseType: !21, size: 32, align: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !18, file: !17, line: 48, baseType: !21, size: 32, align: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !18, file: !17, line: 49, baseType: !21, size: 32, align: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !18, file: !17, line: 50, baseType: !21, size: 32, align: 32, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !18, file: !17, line: 51, baseType: !21, size: 32, align: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !18, file: !17, line: 52, baseType: !29, size: 64, align: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !18, file: !17, line: 53, baseType: !32, size: 192, align: 64, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !33, line: 20, baseType: !34)
!33 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !33, line: 21, size: 192, align: 64, elements: !35)
!35 = !{!36, !37, !38, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !34, file: !33, line: 22, baseType: !21, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !34, file: !33, line: 23, baseType: !21, size: 32, align: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !34, file: !33, line: 24, baseType: !21, size: 32, align: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !34, file: !33, line: 25, baseType: !29, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !17, line: 54, baseType: !15, size: 64, align: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !12, file: !11, line: 12, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !44, line: 36, baseType: !45)
!44 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../Lock/Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !44, line: 37, size: 128, align: 64, elements: !46)
!46 = !{!47, !48, !49}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !45, file: !44, line: 45, baseType: !4, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !45, file: !44, line: 47, baseType: !21, size: 32, align: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !45, file: !44, line: 48, baseType: !21, size: 32, align: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !12, file: !11, line: 13, baseType: !21, size: 32, align: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nactive", scope: !12, file: !11, line: 14, baseType: !21, size: 32, align: 32, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesactive", scope: !12, file: !11, line: 15, baseType: !21, size: 32, align: 32, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesrequested", scope: !12, file: !11, line: 16, baseType: !21, size: 32, align: 32, offset: 224)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesalloc", scope: !12, file: !11, line: 17, baseType: !21, size: 32, align: 32, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !12, file: !11, line: 18, baseType: !21, size: 32, align: 32, offset: 288)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "nreleases", scope: !12, file: !11, line: 19, baseType: !21, size: 32, align: 32, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !12, file: !11, line: 20, baseType: !21, size: 32, align: 32, offset: 352)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !12, file: !11, line: 21, baseType: !21, size: 32, align: 32, offset: 384)
!59 = !{!60, !61, !62}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !6, file: !1, line: 24, type: !9)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lockflag", arg: 2, scope: !6, file: !1, line: 25, type: !21)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 3, scope: !6, file: !1, line: 26, type: !21)
!63 = !{i32 2, !"Dwarf Version", i32 2}
!64 = !{i32 2, !"Debug Info Version", i32 700000003}
!65 = !{i32 1, !"PIC Level", i32 2}
!66 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!67 = !DIExpression()
!68 = !DILocation(line: 24, column: 21, scope: !6)
!69 = !DILocation(line: 25, column: 20, scope: !6)
!70 = !DILocation(line: 26, column: 20, scope: !6)
!71 = !DILocation(line: 33, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !6, file: !1, line: 33, column: 6)
!73 = !DILocation(line: 34, column: 4, scope: !72)
!74 = !DILocation(line: 36, column: 12, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 35, column: 30)
!76 = !{!77, !77, i64 0}
!77 = !{!"any pointer", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !DILocation(line: 36, column: 4, scope: !75)
!81 = !DILocation(line: 38, column: 4, scope: !75)
!82 = !DILocation(line: 45, column: 1, scope: !6)
!83 = !DILocation(line: 46, column: 15, scope: !84)
!84 = distinct !DILexicalBlock(scope: !6, file: !1, line: 46, column: 6)
!85 = !DILocation(line: 46, column: 6, scope: !6)
!86 = !DILocation(line: 52, column: 20, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 46, column: 22)
!88 = !DILocation(line: 52, column: 13, scope: !87)
!89 = !DILocation(line: 52, column: 18, scope: !87)
!90 = !{!91, !77, i64 8}
!91 = !{!"_SubMtxManager", !77, i64 0, !77, i64 8, !92, i64 16, !92, i64 20, !92, i64 24, !92, i64 28, !92, i64 32, !92, i64 36, !92, i64 40, !92, i64 44, !92, i64 48}
!92 = !{!"int", !78, i64 0}
!93 = !DILocation(line: 53, column: 4, scope: !87)
!94 = !DILocation(line: 54, column: 1, scope: !87)
!95 = !DILocation(line: 60, column: 10, scope: !6)
!96 = !DILocation(line: 60, column: 15, scope: !6)
!97 = !{!91, !92, i64 16}
!98 = !DILocation(line: 62, column: 1, scope: !6)
