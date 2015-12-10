; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._DV = type { i32, i32, i32, double* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [93 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in InpMtx_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A fatal error in InpMtx_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in InpMtx_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._InpMtx* @InpMtx_new() #0 {
  %1 = tail call i8* @malloc(i64 184) #5, !dbg !71
  %2 = bitcast i8* %1 to %struct._InpMtx*, !dbg !71
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* %2, i64 0, metadata !53, metadata !75), !dbg !76
  %3 = icmp eq i8* %1, null, !dbg !71
  br i1 %3, label %4, label %7, !dbg !77

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !78, !tbaa !80
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 184, i32 21, i8* getelementptr inbounds ([93 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !78
  tail call void @exit(i32 -1) #6, !dbg !78
  unreachable, !dbg !78

; <label>:7                                       ; preds = %0
  tail call void @InpMtx_setDefaultFields(%struct._InpMtx* %2) #7, !dbg !84
  ret %struct._InpMtx* %2, !dbg !85
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @InpMtx_setDefaultFields(%struct._InpMtx* %inpmtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* %inpmtx, i64 0, metadata !58, metadata !75), !dbg !86
  %1 = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !87
  br i1 %1, label %2, label %5, !dbg !89

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !90, !tbaa !80
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !92
  tail call void @exit(i32 -1) #6, !dbg !93
  unreachable, !dbg !93

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !94
  store i32 1, i32* %6, align 4, !dbg !95, !tbaa !96
  %7 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !102
  store i32 1, i32* %7, align 4, !dbg !103, !tbaa !104
  %8 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !105
  store i32 1, i32* %8, align 4, !dbg !106, !tbaa !107
  %9 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3, !dbg !108
  store i32 0, i32* %9, align 4, !dbg !109, !tbaa !110
  %10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !111
  store i32 0, i32* %10, align 4, !dbg !112, !tbaa !113
  %11 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5, !dbg !114
  store double 1.250000e+00, double* %11, align 8, !dbg !115, !tbaa !116
  %12 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9, !dbg !117
  store i32 0, i32* %12, align 4, !dbg !118, !tbaa !119
  %13 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10, !dbg !120
  store i32 0, i32* %13, align 4, !dbg !121, !tbaa !122
  %14 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !123
  tail call void @IV_setDefaultFields(%struct._IV* %14) #5, !dbg !124
  %15 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !125
  tail call void @IV_setDefaultFields(%struct._IV* %15) #5, !dbg !126
  %16 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !127
  tail call void @DV_setDefaultFields(%struct._DV* %16) #5, !dbg !128
  %17 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !129
  tail call void @IV_setDefaultFields(%struct._IV* %17) #5, !dbg !130
  %18 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !131
  tail call void @IV_setDefaultFields(%struct._IV* %18) #5, !dbg !132
  %19 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !133
  tail call void @IV_setDefaultFields(%struct._IV* %19) #5, !dbg !134
  ret void, !dbg !135
}

; Function Attrs: optsize
declare void @IV_setDefaultFields(%struct._IV*) #3

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* %inpmtx, i64 0, metadata !61, metadata !75), !dbg !136
  %1 = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !137
  br i1 %1, label %2, label %5, !dbg !139

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !140, !tbaa !80
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !142
  tail call void @exit(i32 -1) #6, !dbg !143
  unreachable, !dbg !143

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !144
  tail call void @IV_clearData(%struct._IV* %6) #5, !dbg !145
  %7 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !146
  tail call void @IV_clearData(%struct._IV* %7) #5, !dbg !147
  %8 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !148
  tail call void @DV_clearData(%struct._DV* %8) #5, !dbg !149
  %9 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !150
  tail call void @IV_clearData(%struct._IV* %9) #5, !dbg !151
  %10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !152
  tail call void @IV_clearData(%struct._IV* %10) #5, !dbg !153
  %11 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !154
  tail call void @IV_clearData(%struct._IV* %11) #5, !dbg !155
  tail call void @InpMtx_setDefaultFields(%struct._InpMtx* %inpmtx) #7, !dbg !156
  ret void, !dbg !157
}

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct._InpMtx* @InpMtx_free(%struct._InpMtx* %inpmtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* %inpmtx, i64 0, metadata !66, metadata !75), !dbg !158
  %1 = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !159
  br i1 %1, label %2, label %5, !dbg !161

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !162, !tbaa !80
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !164
  tail call void @exit(i32 -1) #6, !dbg !165
  unreachable, !dbg !165

; <label>:5                                       ; preds = %0
  tail call void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #7, !dbg !166
  %6 = bitcast %struct._InpMtx* %inpmtx to i8*, !dbg !167
  tail call void @free(i8* %6) #7, !dbg !167
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* null, i64 0, metadata !66, metadata !75), !dbg !158
  ret %struct._InpMtx* null, !dbg !170
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!67, !68, !69}
!llvm.ident = !{!70}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !46, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !42, !43, !44}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_InpMtx", file: !6, line: 52, size: 1472, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../InpMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12, !13, !14, !16, !26, !27, !37, !38, !39, !40, !41}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "coordType", scope: !5, file: !6, line: 53, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "storageMode", scope: !5, file: !6, line: 54, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "inputMode", scope: !5, file: !6, line: 55, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "maxnent", scope: !5, file: !6, line: 56, baseType: !9, size: 32, align: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !5, file: !6, line: 57, baseType: !9, size: 32, align: 32, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "resizeMultiple", scope: !5, file: !6, line: 58, baseType: !15, size: 64, align: 64, offset: 192)
!15 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ivec1IV", scope: !5, file: !6, line: 59, baseType: !17, size: 192, align: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !18, line: 20, baseType: !19)
!18 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !18, line: 21, size: 192, align: 64, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !19, file: !18, line: 22, baseType: !9, size: 32, align: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !19, file: !18, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !19, file: !18, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !19, file: !18, line: 25, baseType: !25, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ivec2IV", scope: !5, file: !6, line: 60, baseType: !17, size: 192, align: 64, offset: 448)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "dvecDV", scope: !5, file: !6, line: 61, baseType: !28, size: 192, align: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !29, line: 20, baseType: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !29, line: 21, size: 192, align: 64, elements: !31)
!31 = !{!32, !33, !34, !35}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !29, line: 22, baseType: !9, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !30, file: !29, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !30, file: !29, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !30, file: !29, line: 25, baseType: !36, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "maxnvector", scope: !5, file: !6, line: 62, baseType: !9, size: 32, align: 32, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nvector", scope: !5, file: !6, line: 63, baseType: !9, size: 32, align: 32, offset: 864)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "vecidsIV", scope: !5, file: !6, line: 64, baseType: !17, size: 192, align: 64, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "sizesIV", scope: !5, file: !6, line: 65, baseType: !17, size: 192, align: 64, offset: 1088)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsIV", scope: !5, file: !6, line: 66, baseType: !17, size: 192, align: 64, offset: 1280)
!42 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !{!47, !54, !59, !62}
!47 = !DISubprogram(name: "InpMtx_new", scope: !1, file: !1, line: 16, type: !48, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._InpMtx* ()* @InpMtx_new, variables: !52)
!48 = !DISubroutineType(types: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "InpMtx", file: !6, line: 51, baseType: !5)
!52 = !{!53}
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inpmtx", scope: !47, file: !1, line: 19, type: !50)
!54 = !DISubprogram(name: "InpMtx_setDefaultFields", scope: !1, file: !1, line: 35, type: !55, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._InpMtx*)* @InpMtx_setDefaultFields, variables: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !50}
!57 = !{!58}
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtx", arg: 1, scope: !54, file: !1, line: 36, type: !50)
!59 = !DISubprogram(name: "InpMtx_clearData", scope: !1, file: !1, line: 69, type: !55, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._InpMtx*)* @InpMtx_clearData, variables: !60)
!60 = !{!61}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtx", arg: 1, scope: !59, file: !1, line: 70, type: !50)
!62 = !DISubprogram(name: "InpMtx_free", scope: !1, file: !1, line: 111, type: !63, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, function: %struct._InpMtx* (%struct._InpMtx*)* @InpMtx_free, variables: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{!50, !50}
!65 = !{!66}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtx", arg: 1, scope: !62, file: !1, line: 112, type: !50)
!67 = !{i32 2, !"Dwarf Version", i32 2}
!68 = !{i32 2, !"Debug Info Version", i32 700000003}
!69 = !{i32 1, !"PIC Level", i32 2}
!70 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!71 = !DILocation(line: 21, column: 1, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 21, column: 1)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 21, column: 1)
!74 = distinct !DILexicalBlock(scope: !47, file: !1, line: 21, column: 1)
!75 = !DIExpression()
!76 = !DILocation(line: 19, column: 11, scope: !47)
!77 = !DILocation(line: 21, column: 1, scope: !73)
!78 = !DILocation(line: 21, column: 1, scope: !79)
!79 = distinct !DILexicalBlock(scope: !72, file: !1, line: 21, column: 1)
!80 = !{!81, !81, i64 0}
!81 = !{!"any pointer", !82, i64 0}
!82 = !{!"omnipotent char", !83, i64 0}
!83 = !{!"Simple C/C++ TBAA"}
!84 = !DILocation(line: 22, column: 1, scope: !47)
!85 = !DILocation(line: 24, column: 1, scope: !47)
!86 = !DILocation(line: 36, column: 14, scope: !54)
!87 = !DILocation(line: 38, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !54, file: !1, line: 38, column: 6)
!89 = !DILocation(line: 38, column: 6, scope: !54)
!90 = !DILocation(line: 39, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 38, column: 23)
!92 = !DILocation(line: 39, column: 4, scope: !91)
!93 = !DILocation(line: 41, column: 4, scope: !91)
!94 = !DILocation(line: 43, column: 9, scope: !54)
!95 = !DILocation(line: 43, column: 24, scope: !54)
!96 = !{!97, !98, i64 0}
!97 = !{!"_InpMtx", !98, i64 0, !98, i64 4, !98, i64 8, !98, i64 12, !98, i64 16, !99, i64 24, !100, i64 32, !100, i64 56, !101, i64 80, !98, i64 104, !98, i64 108, !100, i64 112, !100, i64 136, !100, i64 160}
!98 = !{!"int", !82, i64 0}
!99 = !{!"double", !82, i64 0}
!100 = !{!"_IV", !98, i64 0, !98, i64 4, !98, i64 8, !81, i64 16}
!101 = !{!"_DV", !98, i64 0, !98, i64 4, !98, i64 8, !81, i64 16}
!102 = !DILocation(line: 44, column: 9, scope: !54)
!103 = !DILocation(line: 44, column: 24, scope: !54)
!104 = !{!97, !98, i64 4}
!105 = !DILocation(line: 45, column: 9, scope: !54)
!106 = !DILocation(line: 45, column: 24, scope: !54)
!107 = !{!97, !98, i64 8}
!108 = !DILocation(line: 46, column: 9, scope: !54)
!109 = !DILocation(line: 46, column: 24, scope: !54)
!110 = !{!97, !98, i64 12}
!111 = !DILocation(line: 47, column: 9, scope: !54)
!112 = !DILocation(line: 47, column: 24, scope: !54)
!113 = !{!97, !98, i64 16}
!114 = !DILocation(line: 48, column: 9, scope: !54)
!115 = !DILocation(line: 48, column: 24, scope: !54)
!116 = !{!97, !99, i64 24}
!117 = !DILocation(line: 49, column: 9, scope: !54)
!118 = !DILocation(line: 49, column: 24, scope: !54)
!119 = !{!97, !98, i64 104}
!120 = !DILocation(line: 50, column: 9, scope: !54)
!121 = !DILocation(line: 50, column: 24, scope: !54)
!122 = !{!97, !98, i64 108}
!123 = !DILocation(line: 51, column: 30, scope: !54)
!124 = !DILocation(line: 51, column: 1, scope: !54)
!125 = !DILocation(line: 52, column: 30, scope: !54)
!126 = !DILocation(line: 52, column: 1, scope: !54)
!127 = !DILocation(line: 53, column: 30, scope: !54)
!128 = !DILocation(line: 53, column: 1, scope: !54)
!129 = !DILocation(line: 54, column: 30, scope: !54)
!130 = !DILocation(line: 54, column: 1, scope: !54)
!131 = !DILocation(line: 55, column: 30, scope: !54)
!132 = !DILocation(line: 55, column: 1, scope: !54)
!133 = !DILocation(line: 56, column: 30, scope: !54)
!134 = !DILocation(line: 56, column: 1, scope: !54)
!135 = !DILocation(line: 58, column: 1, scope: !54)
!136 = !DILocation(line: 70, column: 14, scope: !59)
!137 = !DILocation(line: 77, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !59, file: !1, line: 77, column: 6)
!139 = !DILocation(line: 77, column: 6, scope: !59)
!140 = !DILocation(line: 78, column: 12, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 77, column: 23)
!142 = !DILocation(line: 78, column: 4, scope: !141)
!143 = !DILocation(line: 80, column: 4, scope: !141)
!144 = !DILocation(line: 87, column: 23, scope: !59)
!145 = !DILocation(line: 87, column: 1, scope: !59)
!146 = !DILocation(line: 88, column: 23, scope: !59)
!147 = !DILocation(line: 88, column: 1, scope: !59)
!148 = !DILocation(line: 89, column: 23, scope: !59)
!149 = !DILocation(line: 89, column: 1, scope: !59)
!150 = !DILocation(line: 90, column: 23, scope: !59)
!151 = !DILocation(line: 90, column: 1, scope: !59)
!152 = !DILocation(line: 91, column: 23, scope: !59)
!153 = !DILocation(line: 91, column: 1, scope: !59)
!154 = !DILocation(line: 92, column: 23, scope: !59)
!155 = !DILocation(line: 92, column: 1, scope: !59)
!156 = !DILocation(line: 98, column: 1, scope: !59)
!157 = !DILocation(line: 100, column: 1, scope: !59)
!158 = !DILocation(line: 112, column: 14, scope: !62)
!159 = !DILocation(line: 114, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !62, file: !1, line: 114, column: 6)
!161 = !DILocation(line: 114, column: 6, scope: !62)
!162 = !DILocation(line: 115, column: 12, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !1, line: 114, column: 23)
!164 = !DILocation(line: 115, column: 4, scope: !163)
!165 = !DILocation(line: 117, column: 4, scope: !163)
!166 = !DILocation(line: 119, column: 1, scope: !62)
!167 = !DILocation(line: 120, column: 1, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 120, column: 1)
!169 = distinct !DILexicalBlock(scope: !62, file: !1, line: 120, column: 1)
!170 = !DILocation(line: 122, column: 1, scope: !62)
