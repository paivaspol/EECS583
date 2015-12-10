; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._DV = type { i32, i32, i32, double* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [93 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Pencil_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Pencil_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Pencil_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Pencil* @Pencil_new() #0 {
  %1 = tail call i8* @malloc(i64 40) #6, !dbg !84
  %2 = bitcast i8* %1 to %struct._Pencil*, !dbg !84
  tail call void @llvm.dbg.value(metadata %struct._Pencil* %2, i64 0, metadata !66, metadata !88), !dbg !89
  %3 = icmp eq i8* %1, null, !dbg !84
  br i1 %3, label %4, label %7, !dbg !90

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !91, !tbaa !93
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 40, i32 21, i8* getelementptr inbounds ([93 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !91
  tail call void @exit(i32 -1) #7, !dbg !91
  unreachable, !dbg !91

; <label>:7                                       ; preds = %0
  tail call void @Pencil_setDefaultFields(%struct._Pencil* %2) #8, !dbg !97
  ret %struct._Pencil* %2, !dbg !98
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @Pencil_setDefaultFields(%struct._Pencil* %pencil) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Pencil* %pencil, i64 0, metadata !71, metadata !88), !dbg !99
  %1 = icmp eq %struct._Pencil* %pencil, null, !dbg !100
  br i1 %1, label %2, label %5, !dbg !102

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !103, !tbaa !93
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._Pencil* null) #6, !dbg !105
  tail call void @exit(i32 -1) #7, !dbg !106
  unreachable, !dbg !106

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 0, !dbg !107
  store i32 1, i32* %6, align 4, !dbg !108, !tbaa !109
  %7 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 1, !dbg !112
  %8 = bitcast i32* %7 to i8*, !dbg !113
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 36, i32 4, i1 false), !dbg !114
  ret void, !dbg !113
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Pencil_clearData(%struct._Pencil* %pencil) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Pencil* %pencil, i64 0, metadata !74, metadata !88), !dbg !115
  %1 = icmp eq %struct._Pencil* %pencil, null, !dbg !116
  br i1 %1, label %2, label %5, !dbg !118

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !119, !tbaa !93
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), %struct._Pencil* null) #6, !dbg !121
  tail call void @exit(i32 -1) #7, !dbg !122
  unreachable, !dbg !122

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !123
  %7 = load %struct._InpMtx** %6, align 8, !dbg !123, !tbaa !125
  %8 = icmp eq %struct._InpMtx* %7, null, !dbg !126
  br i1 %8, label %11, label %9, !dbg !127

; <label>:9                                       ; preds = %5
  %10 = tail call %struct._InpMtx* @InpMtx_free(%struct._InpMtx* %7) #6, !dbg !128
  br label %11, !dbg !130

; <label>:11                                      ; preds = %5, %9
  %12 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !131
  %13 = load %struct._InpMtx** %12, align 8, !dbg !131, !tbaa !133
  %14 = icmp eq %struct._InpMtx* %13, null, !dbg !134
  br i1 %14, label %17, label %15, !dbg !135

; <label>:15                                      ; preds = %11
  %16 = tail call %struct._InpMtx* @InpMtx_free(%struct._InpMtx* %13) #6, !dbg !136
  br label %17, !dbg !138

; <label>:17                                      ; preds = %11, %15
  tail call void @Pencil_setDefaultFields(%struct._Pencil* %pencil) #8, !dbg !139
  ret void, !dbg !140
}

; Function Attrs: optsize
declare %struct._InpMtx* @InpMtx_free(%struct._InpMtx*) #3

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct._Pencil* @Pencil_free(%struct._Pencil* %pencil) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Pencil* %pencil, i64 0, metadata !79, metadata !88), !dbg !141
  %1 = icmp eq %struct._Pencil* %pencil, null, !dbg !142
  br i1 %1, label %2, label %5, !dbg !144

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !145, !tbaa !93
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._Pencil* null) #6, !dbg !147
  tail call void @exit(i32 -1) #7, !dbg !148
  unreachable, !dbg !148

; <label>:5                                       ; preds = %0
  tail call void @Pencil_clearData(%struct._Pencil* %pencil) #8, !dbg !149
  %6 = bitcast %struct._Pencil* %pencil to i8*, !dbg !150
  tail call void @free(i8* %6) #8, !dbg !150
  tail call void @llvm.dbg.value(metadata %struct._Pencil* null, i64 0, metadata !79, metadata !88), !dbg !141
  ret %struct._Pencil* null, !dbg !153
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
!llvm.module.flags = !{!80, !81, !82}
!llvm.ident = !{!83}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !59, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !55, !56, !57}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Pencil", file: !6, line: 18, size: 320, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../Pencil.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !50, !51}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !6, line: 19, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "symflag", scope: !5, file: !6, line: 20, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "inpmtxA", scope: !5, file: !6, line: 21, baseType: !12, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "InpMtx", file: !14, line: 51, baseType: !15)
!14 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../InpMtx/InpMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_InpMtx", file: !14, line: 52, size: 1472, align: 64, elements: !16)
!16 = !{!17, !18, !19, !20, !21, !22, !24, !34, !35, !45, !46, !47, !48, !49}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "coordType", scope: !15, file: !14, line: 53, baseType: !9, size: 32, align: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "storageMode", scope: !15, file: !14, line: 54, baseType: !9, size: 32, align: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "inputMode", scope: !15, file: !14, line: 55, baseType: !9, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "maxnent", scope: !15, file: !14, line: 56, baseType: !9, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !15, file: !14, line: 57, baseType: !9, size: 32, align: 32, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "resizeMultiple", scope: !15, file: !14, line: 58, baseType: !23, size: 64, align: 64, offset: 192)
!23 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ivec1IV", scope: !15, file: !14, line: 59, baseType: !25, size: 192, align: 64, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !26, line: 20, baseType: !27)
!26 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !26, line: 21, size: 192, align: 64, elements: !28)
!28 = !{!29, !30, !31, !32}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !27, file: !26, line: 22, baseType: !9, size: 32, align: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !27, file: !26, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !27, file: !26, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !27, file: !26, line: 25, baseType: !33, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ivec2IV", scope: !15, file: !14, line: 60, baseType: !25, size: 192, align: 64, offset: 448)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "dvecDV", scope: !15, file: !14, line: 61, baseType: !36, size: 192, align: 64, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !37, line: 20, baseType: !38)
!37 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !37, line: 21, size: 192, align: 64, elements: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !38, file: !37, line: 22, baseType: !9, size: 32, align: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !38, file: !37, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !38, file: !37, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !38, file: !37, line: 25, baseType: !44, size: 64, align: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "maxnvector", scope: !15, file: !14, line: 62, baseType: !9, size: 32, align: 32, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nvector", scope: !15, file: !14, line: 63, baseType: !9, size: 32, align: 32, offset: 864)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "vecidsIV", scope: !15, file: !14, line: 64, baseType: !25, size: 192, align: 64, offset: 896)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "sizesIV", scope: !15, file: !14, line: 65, baseType: !25, size: 192, align: 64, offset: 1088)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsIV", scope: !15, file: !14, line: 66, baseType: !25, size: 192, align: 64, offset: 1280)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "inpmtxB", scope: !5, file: !6, line: 22, baseType: !12, size: 64, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !5, file: !6, line: 23, baseType: !52, size: 128, align: 64, offset: 192)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, align: 64, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 2)
!55 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!59 = !{!60, !67, !72, !75}
!60 = !DISubprogram(name: "Pencil_new", scope: !1, file: !1, line: 16, type: !61, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Pencil* ()* @Pencil_new, variables: !65)
!61 = !DISubroutineType(types: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pencil", file: !6, line: 17, baseType: !5)
!65 = !{!66}
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pencil", scope: !60, file: !1, line: 19, type: !63)
!67 = !DISubprogram(name: "Pencil_setDefaultFields", scope: !1, file: !1, line: 35, type: !68, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Pencil*)* @Pencil_setDefaultFields, variables: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !63}
!70 = !{!71}
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pencil", arg: 1, scope: !67, file: !1, line: 36, type: !63)
!72 = !DISubprogram(name: "Pencil_clearData", scope: !1, file: !1, line: 61, type: !68, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Pencil*)* @Pencil_clearData, variables: !73)
!73 = !{!74}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pencil", arg: 1, scope: !72, file: !1, line: 62, type: !63)
!75 = !DISubprogram(name: "Pencil_free", scope: !1, file: !1, line: 103, type: !76, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Pencil* (%struct._Pencil*)* @Pencil_free, variables: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{!63, !63}
!78 = !{!79}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pencil", arg: 1, scope: !75, file: !1, line: 104, type: !63)
!80 = !{i32 2, !"Dwarf Version", i32 2}
!81 = !{i32 2, !"Debug Info Version", i32 700000003}
!82 = !{i32 1, !"PIC Level", i32 2}
!83 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!84 = !DILocation(line: 21, column: 1, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 21, column: 1)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 21, column: 1)
!87 = distinct !DILexicalBlock(scope: !60, file: !1, line: 21, column: 1)
!88 = !DIExpression()
!89 = !DILocation(line: 19, column: 11, scope: !60)
!90 = !DILocation(line: 21, column: 1, scope: !86)
!91 = !DILocation(line: 21, column: 1, scope: !92)
!92 = distinct !DILexicalBlock(scope: !85, file: !1, line: 21, column: 1)
!93 = !{!94, !94, i64 0}
!94 = !{!"any pointer", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !DILocation(line: 22, column: 1, scope: !60)
!98 = !DILocation(line: 24, column: 1, scope: !60)
!99 = !DILocation(line: 36, column: 14, scope: !67)
!100 = !DILocation(line: 38, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !67, file: !1, line: 38, column: 6)
!102 = !DILocation(line: 38, column: 6, scope: !67)
!103 = !DILocation(line: 39, column: 12, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 38, column: 23)
!105 = !DILocation(line: 39, column: 4, scope: !104)
!106 = !DILocation(line: 41, column: 4, scope: !104)
!107 = !DILocation(line: 43, column: 9, scope: !67)
!108 = !DILocation(line: 43, column: 18, scope: !67)
!109 = !{!110, !111, i64 0}
!110 = !{!"_Pencil", !111, i64 0, !111, i64 4, !94, i64 8, !94, i64 16, !95, i64 24}
!111 = !{!"int", !95, i64 0}
!112 = !DILocation(line: 44, column: 9, scope: !67)
!113 = !DILocation(line: 50, column: 1, scope: !67)
!114 = !DILocation(line: 47, column: 18, scope: !67)
!115 = !DILocation(line: 62, column: 14, scope: !72)
!116 = !DILocation(line: 69, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !72, file: !1, line: 69, column: 6)
!118 = !DILocation(line: 69, column: 6, scope: !72)
!119 = !DILocation(line: 70, column: 12, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !1, line: 69, column: 23)
!121 = !DILocation(line: 70, column: 4, scope: !120)
!122 = !DILocation(line: 72, column: 4, scope: !120)
!123 = !DILocation(line: 79, column: 14, scope: !124)
!124 = distinct !DILexicalBlock(scope: !72, file: !1, line: 79, column: 6)
!125 = !{!110, !94, i64 8}
!126 = !DILocation(line: 79, column: 22, scope: !124)
!127 = !DILocation(line: 79, column: 6, scope: !72)
!128 = !DILocation(line: 80, column: 4, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 79, column: 32)
!130 = !DILocation(line: 81, column: 1, scope: !129)
!131 = !DILocation(line: 82, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !72, file: !1, line: 82, column: 6)
!133 = !{!110, !94, i64 16}
!134 = !DILocation(line: 82, column: 22, scope: !132)
!135 = !DILocation(line: 82, column: 6, scope: !72)
!136 = !DILocation(line: 83, column: 4, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !1, line: 82, column: 32)
!138 = !DILocation(line: 84, column: 1, scope: !137)
!139 = !DILocation(line: 90, column: 1, scope: !72)
!140 = !DILocation(line: 92, column: 1, scope: !72)
!141 = !DILocation(line: 104, column: 14, scope: !75)
!142 = !DILocation(line: 106, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !75, file: !1, line: 106, column: 6)
!144 = !DILocation(line: 106, column: 6, scope: !75)
!145 = !DILocation(line: 107, column: 12, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 106, column: 23)
!147 = !DILocation(line: 107, column: 4, scope: !146)
!148 = !DILocation(line: 109, column: 4, scope: !146)
!149 = !DILocation(line: 111, column: 1, scope: !75)
!150 = !DILocation(line: 112, column: 1, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 112, column: 1)
!152 = distinct !DILexicalBlock(scope: !75, file: !1, line: 112, column: 1)
!153 = !DILocation(line: 114, column: 1, scope: !75)
