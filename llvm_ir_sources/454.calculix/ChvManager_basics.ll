; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_basics.c'
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
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [101 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_basics.c\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ChvManager_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ChvManager_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"\0A fatal error in ChvManager_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._ChvManager* @ChvManager_new() #0 {
  %1 = tail call i8* @malloc(i64 56) #6, !dbg !83
  %2 = bitcast i8* %1 to %struct._ChvManager*, !dbg !83
  tail call void @llvm.dbg.value(metadata %struct._ChvManager* %2, i64 0, metadata !66, metadata !87), !dbg !88
  %3 = icmp eq i8* %1, null, !dbg !83
  br i1 %3, label %4, label %7, !dbg !89

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !90, !tbaa !92
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 56, i32 21, i8* getelementptr inbounds ([101 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !90
  tail call void @exit(i32 -1) #7, !dbg !90
  unreachable, !dbg !90

; <label>:7                                       ; preds = %0
  tail call void @ChvManager_setDefaultFields(%struct._ChvManager* %2) #8, !dbg !96
  ret %struct._ChvManager* %2, !dbg !97
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @ChvManager_setDefaultFields(%struct._ChvManager* %manager) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvManager* %manager, i64 0, metadata !71, metadata !87), !dbg !98
  %1 = icmp eq %struct._ChvManager* %manager, null, !dbg !99
  br i1 %1, label %2, label %5, !dbg !101

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !102, !tbaa !92
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._ChvManager* null) #6, !dbg !104
  tail call void @exit(i32 -1) #7, !dbg !105
  unreachable, !dbg !105

; <label>:5                                       ; preds = %0
  %6 = bitcast %struct._ChvManager* %manager to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 52, i32 8, i1 false), !dbg !107
  ret void, !dbg !106
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ChvManager_clearData(%struct._ChvManager* %manager) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvManager* %manager, i64 0, metadata !74, metadata !87), !dbg !108
  %1 = icmp eq %struct._ChvManager* %manager, null, !dbg !109
  br i1 %1, label %6, label %.preheader, !dbg !111

.preheader:                                       ; preds = %0
  %2 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 0, !dbg !112
  %3 = load %struct._Chv** %2, align 8, !dbg !112, !tbaa !113
  tail call void @llvm.dbg.value(metadata %struct._Chv* %3, i64 0, metadata !75, metadata !87), !dbg !116
  %4 = icmp eq %struct._Chv* %3, null, !dbg !117
  br i1 %4, label %._crit_edge, label %.lr.ph, !dbg !118

.lr.ph:                                           ; preds = %.preheader
  %5 = bitcast %struct._ChvManager* %manager to i64*, !dbg !119
  br label %9, !dbg !118

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !121, !tbaa !92
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), %struct._ChvManager* null) #6, !dbg !123
  tail call void @exit(i32 -1) #7, !dbg !124
  unreachable, !dbg !124

; <label>:9                                       ; preds = %.lr.ph, %9
  %10 = phi %struct._Chv* [ %3, %.lr.ph ], [ %14, %9 ]
  %11 = getelementptr inbounds %struct._Chv* %10, i64 0, i32 10, !dbg !125
  %12 = bitcast %struct._Chv** %11 to i64*, !dbg !125
  %13 = load i64* %12, align 8, !dbg !125, !tbaa !126
  store i64 %13, i64* %5, align 8, !dbg !119, !tbaa !113
  tail call void @Chv_free(%struct._Chv* %10) #6, !dbg !129
  %14 = load %struct._Chv** %2, align 8, !dbg !112, !tbaa !113
  tail call void @llvm.dbg.value(metadata %struct._Chv* %14, i64 0, metadata !75, metadata !87), !dbg !116
  %15 = icmp eq %struct._Chv* %14, null, !dbg !117
  br i1 %15, label %._crit_edge, label %9, !dbg !118

._crit_edge:                                      ; preds = %9, %.preheader
  %16 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 1, !dbg !130
  %17 = load %struct._Lock** %16, align 8, !dbg !130, !tbaa !132
  %18 = icmp eq %struct._Lock* %17, null, !dbg !133
  br i1 %18, label %20, label %19, !dbg !134

; <label>:19                                      ; preds = %._crit_edge
  tail call void @Lock_free(%struct._Lock* %17) #6, !dbg !135
  br label %20, !dbg !137

; <label>:20                                      ; preds = %._crit_edge, %19
  tail call void @ChvManager_setDefaultFields(%struct._ChvManager* %manager) #8, !dbg !138
  ret void, !dbg !139
}

; Function Attrs: optsize
declare void @Chv_free(%struct._Chv*) #3

; Function Attrs: optsize
declare void @Lock_free(%struct._Lock*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ChvManager_free(%struct._ChvManager* %manager) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvManager* %manager, i64 0, metadata !78, metadata !87), !dbg !140
  %1 = icmp eq %struct._ChvManager* %manager, null, !dbg !141
  br i1 %1, label %2, label %5, !dbg !143

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !144, !tbaa !92
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0), %struct._ChvManager* null) #6, !dbg !146
  tail call void @exit(i32 -1) #7, !dbg !147
  unreachable, !dbg !147

; <label>:5                                       ; preds = %0
  tail call void @ChvManager_clearData(%struct._ChvManager* %manager) #8, !dbg !148
  %6 = bitcast %struct._ChvManager* %manager to i8*, !dbg !149
  tail call void @free(i8* %6) #8, !dbg !149
  tail call void @llvm.dbg.value(metadata %struct._ChvManager* null, i64 0, metadata !78, metadata !87), !dbg !140
  ret void, !dbg !152
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
!llvm.module.flags = !{!79, !80, !81}
!llvm.ident = !{!82}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !59, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !56, !44, !57}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ChvManager", file: !6, line: 10, size: 448, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../ChvManager.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !37, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5, file: !6, line: 11, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Chv", file: !11, line: 30, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../Chv/Chv.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Chv", file: !11, line: 31, size: 640, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21, !23, !24, !27, !36}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !12, file: !11, line: 32, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nD", scope: !12, file: !11, line: 33, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nL", scope: !12, file: !11, line: 34, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nU", scope: !12, file: !11, line: 35, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 36, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "symflag", scope: !12, file: !11, line: 37, baseType: !15, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !12, file: !11, line: 38, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !12, file: !11, line: 39, baseType: !22, size: 64, align: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !12, file: !11, line: 40, baseType: !25, size: 64, align: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !12, file: !11, line: 41, baseType: !28, size: 192, align: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !29, line: 20, baseType: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !29, line: 21, size: 192, align: 64, elements: !31)
!31 = !{!32, !33, !34, !35}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !29, line: 22, baseType: !15, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !30, file: !29, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !30, file: !29, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !30, file: !29, line: 25, baseType: !25, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 42, baseType: !9, size: 64, align: 64, offset: 576)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5, file: !6, line: 12, baseType: !38, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !40, line: 36, baseType: !41)
!40 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../Lock/Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !40, line: 37, size: 128, align: 64, elements: !42)
!42 = !{!43, !45, !46}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !41, file: !40, line: 45, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !41, file: !40, line: 47, baseType: !15, size: 32, align: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !41, file: !40, line: 48, baseType: !15, size: 32, align: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5, file: !6, line: 13, baseType: !15, size: 32, align: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "nactive", scope: !5, file: !6, line: 14, baseType: !15, size: 32, align: 32, offset: 160)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesactive", scope: !5, file: !6, line: 15, baseType: !15, size: 32, align: 32, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesrequested", scope: !5, file: !6, line: 16, baseType: !15, size: 32, align: 32, offset: 224)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesalloc", scope: !5, file: !6, line: 17, baseType: !15, size: 32, align: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !5, file: !6, line: 18, baseType: !15, size: 32, align: 32, offset: 288)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nreleases", scope: !5, file: !6, line: 19, baseType: !15, size: 32, align: 32, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !5, file: !6, line: 20, baseType: !15, size: 32, align: 32, offset: 352)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !5, file: !6, line: 21, baseType: !15, size: 32, align: 32, offset: 384)
!56 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!59 = !{!60, !67, !72, !76}
!60 = !DISubprogram(name: "ChvManager_new", scope: !1, file: !1, line: 16, type: !61, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._ChvManager* ()* @ChvManager_new, variables: !65)
!61 = !DISubroutineType(types: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChvManager", file: !6, line: 9, baseType: !5)
!65 = !{!66}
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manager", scope: !60, file: !1, line: 19, type: !63)
!67 = !DISubprogram(name: "ChvManager_setDefaultFields", scope: !1, file: !1, line: 35, type: !68, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ChvManager*)* @ChvManager_setDefaultFields, variables: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !63}
!70 = !{!71}
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !67, file: !1, line: 36, type: !63)
!72 = !DISubprogram(name: "ChvManager_clearData", scope: !1, file: !1, line: 66, type: !68, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ChvManager*)* @ChvManager_clearData, variables: !73)
!73 = !{!74, !75}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !72, file: !1, line: 67, type: !63)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chv", scope: !72, file: !1, line: 69, type: !9)
!76 = !DISubprogram(name: "ChvManager_free", scope: !1, file: !1, line: 115, type: !68, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ChvManager*)* @ChvManager_free, variables: !77)
!77 = !{!78}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !76, file: !1, line: 116, type: !63)
!79 = !{i32 2, !"Dwarf Version", i32 2}
!80 = !{i32 2, !"Debug Info Version", i32 700000003}
!81 = !{i32 1, !"PIC Level", i32 2}
!82 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!83 = !DILocation(line: 21, column: 1, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 21, column: 1)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 21, column: 1)
!86 = distinct !DILexicalBlock(scope: !60, file: !1, line: 21, column: 1)
!87 = !DIExpression()
!88 = !DILocation(line: 19, column: 15, scope: !60)
!89 = !DILocation(line: 21, column: 1, scope: !85)
!90 = !DILocation(line: 21, column: 1, scope: !91)
!91 = distinct !DILexicalBlock(scope: !84, file: !1, line: 21, column: 1)
!92 = !{!93, !93, i64 0}
!93 = !{!"any pointer", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !DILocation(line: 22, column: 1, scope: !60)
!97 = !DILocation(line: 24, column: 1, scope: !60)
!98 = !DILocation(line: 36, column: 18, scope: !67)
!99 = !DILocation(line: 38, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !67, file: !1, line: 38, column: 6)
!101 = !DILocation(line: 38, column: 6, scope: !67)
!102 = !DILocation(line: 39, column: 12, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 38, column: 24)
!104 = !DILocation(line: 39, column: 4, scope: !103)
!105 = !DILocation(line: 41, column: 4, scope: !103)
!106 = !DILocation(line: 55, column: 1, scope: !67)
!107 = !DILocation(line: 44, column: 26, scope: !67)
!108 = !DILocation(line: 67, column: 18, scope: !72)
!109 = !DILocation(line: 75, column: 14, scope: !110)
!110 = distinct !DILexicalBlock(scope: !72, file: !1, line: 75, column: 6)
!111 = !DILocation(line: 75, column: 6, scope: !72)
!112 = !DILocation(line: 85, column: 25, scope: !72)
!113 = !{!114, !93, i64 0}
!114 = !{!"_ChvManager", !93, i64 0, !93, i64 8, !115, i64 16, !115, i64 20, !115, i64 24, !115, i64 28, !115, i64 32, !115, i64 36, !115, i64 40, !115, i64 44, !115, i64 48}
!115 = !{!"int", !94, i64 0}
!116 = !DILocation(line: 69, column: 8, scope: !72)
!117 = !DILocation(line: 85, column: 31, scope: !72)
!118 = !DILocation(line: 85, column: 1, scope: !72)
!119 = !DILocation(line: 86, column: 18, scope: !120)
!120 = distinct !DILexicalBlock(scope: !72, file: !1, line: 85, column: 41)
!121 = !DILocation(line: 76, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !110, file: !1, line: 75, column: 24)
!123 = !DILocation(line: 76, column: 4, scope: !122)
!124 = !DILocation(line: 78, column: 4, scope: !122)
!125 = !DILocation(line: 86, column: 25, scope: !120)
!126 = !{!127, !93, i64 72}
!127 = !{!"_Chv", !115, i64 0, !115, i64 4, !115, i64 8, !115, i64 12, !115, i64 16, !115, i64 20, !93, i64 24, !93, i64 32, !93, i64 40, !128, i64 48, !93, i64 72}
!128 = !{!"_DV", !115, i64 0, !115, i64 4, !115, i64 8, !93, i64 16}
!129 = !DILocation(line: 87, column: 4, scope: !120)
!130 = !DILocation(line: 89, column: 15, scope: !131)
!131 = distinct !DILexicalBlock(scope: !72, file: !1, line: 89, column: 6)
!132 = !{!114, !93, i64 8}
!133 = !DILocation(line: 89, column: 20, scope: !131)
!134 = !DILocation(line: 89, column: 6, scope: !72)
!135 = !DILocation(line: 95, column: 4, scope: !136)
!136 = distinct !DILexicalBlock(scope: !131, file: !1, line: 89, column: 30)
!137 = !DILocation(line: 96, column: 1, scope: !136)
!138 = !DILocation(line: 102, column: 1, scope: !72)
!139 = !DILocation(line: 104, column: 1, scope: !72)
!140 = !DILocation(line: 116, column: 18, scope: !76)
!141 = !DILocation(line: 118, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !76, file: !1, line: 118, column: 6)
!143 = !DILocation(line: 118, column: 6, scope: !76)
!144 = !DILocation(line: 119, column: 12, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 118, column: 24)
!146 = !DILocation(line: 119, column: 4, scope: !145)
!147 = !DILocation(line: 121, column: 4, scope: !145)
!148 = !DILocation(line: 123, column: 1, scope: !76)
!149 = !DILocation(line: 124, column: 1, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 124, column: 1)
!151 = distinct !DILexicalBlock(scope: !76, file: !1, line: 124, column: 1)
!152 = !DILocation(line: 126, column: 1, scope: !76)
