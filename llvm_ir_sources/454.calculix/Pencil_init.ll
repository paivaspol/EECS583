; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c'
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
@.str = private unnamed_addr constant [60 x i8] c"\0A fatal error in Pencil_init(%p,%d,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [103 x i8] c"\0A fatal error in Pencil_init(%p,%d,%d,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [136 x i8] c"\0A fatal error in Pencil_init(%p,%d,%d,%p,%p,%p)\0A bad symflag %d, must be SPOOLES_SYMMETRIC,\0A SPOOLES_HERMITIAN or SPOOLES_NONSYMMETRIC\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Pencil_init(%struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Pencil* %pencil, i64 0, metadata !62, metadata !82), !dbg !83
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !63, metadata !82), !dbg !84
  tail call void @llvm.dbg.value(metadata i32 %symflag, i64 0, metadata !64, metadata !82), !dbg !85
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* %inpmtxA, i64 0, metadata !65, metadata !82), !dbg !86
  tail call void @llvm.dbg.value(metadata double* %sigma, i64 0, metadata !66, metadata !82), !dbg !87
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* %inpmtxB, i64 0, metadata !67, metadata !82), !dbg !88
  %1 = icmp eq %struct._Pencil* %pencil, null, !dbg !89
  %2 = icmp eq double* %sigma, null, !dbg !91
  %or.cond = or i1 %1, %2, !dbg !92
  br i1 %or.cond, label %3, label %6, !dbg !92

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !93, !tbaa !95
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB) #5, !dbg !99
  tail call void @exit(i32 -1) #6, !dbg !100
  unreachable, !dbg !100

; <label>:6                                       ; preds = %0
  %type.off = add i32 %type, -1, !dbg !101
  %7 = icmp ult i32 %type.off, 2, !dbg !101
  br i1 %7, label %11, label %8, !dbg !101

; <label>:8                                       ; preds = %6
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !103, !tbaa !95
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([103 x i8]* @.str1, i64 0, i64 0), %struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB, i32 %type) #5, !dbg !105
  tail call void @exit(i32 -1) #6, !dbg !106
  unreachable, !dbg !106

; <label>:11                                      ; preds = %6
  %12 = icmp ult i32 %symflag, 3, !dbg !107
  br i1 %12, label %16, label %13, !dbg !107

; <label>:13                                      ; preds = %11
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !109, !tbaa !95
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([136 x i8]* @.str2, i64 0, i64 0), %struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB, i32 %symflag) #5, !dbg !111
  tail call void @exit(i32 -1) #6, !dbg !112
  unreachable, !dbg !112

; <label>:16                                      ; preds = %11
  tail call void @Pencil_clearData(%struct._Pencil* %pencil) #5, !dbg !113
  %17 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 0, !dbg !114
  store i32 %type, i32* %17, align 4, !dbg !115, !tbaa !116
  %18 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 1, !dbg !119
  store i32 %symflag, i32* %18, align 4, !dbg !120, !tbaa !121
  %19 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !122
  store %struct._InpMtx* %inpmtxA, %struct._InpMtx** %19, align 8, !dbg !123, !tbaa !124
  %20 = bitcast double* %sigma to i64*, !dbg !125
  %21 = load i64* %20, align 8, !dbg !125, !tbaa !126
  %22 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, !dbg !128
  %23 = bitcast [2 x double]* %22 to i64*, !dbg !129
  store i64 %21, i64* %23, align 8, !dbg !129, !tbaa !126
  %24 = getelementptr inbounds double* %sigma, i64 1, !dbg !130
  %25 = bitcast double* %24 to i64*, !dbg !130
  %26 = load i64* %25, align 8, !dbg !130, !tbaa !126
  %27 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1, !dbg !131
  %28 = bitcast double* %27 to i64*, !dbg !132
  store i64 %26, i64* %28, align 8, !dbg !132, !tbaa !126
  %29 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !133
  store %struct._InpMtx* %inpmtxB, %struct._InpMtx** %29, align 8, !dbg !134, !tbaa !135
  ret void, !dbg !136
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Pencil_clearData(%struct._Pencil*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Pencil_changeCoordType(%struct._Pencil* nocapture readonly %pencil, i32 %newType) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Pencil* %pencil, i64 0, metadata !72, metadata !82), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %newType, i64 0, metadata !73, metadata !82), !dbg !138
  %1 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !139
  %2 = load %struct._InpMtx** %1, align 8, !dbg !139, !tbaa !124
  %3 = icmp eq %struct._InpMtx* %2, null, !dbg !141
  br i1 %3, label %5, label %4, !dbg !142

; <label>:4                                       ; preds = %0
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %2, i32 %newType) #5, !dbg !143
  br label %5, !dbg !145

; <label>:5                                       ; preds = %0, %4
  %6 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !146
  %7 = load %struct._InpMtx** %6, align 8, !dbg !146, !tbaa !135
  %8 = icmp eq %struct._InpMtx* %7, null, !dbg !148
  br i1 %8, label %10, label %9, !dbg !149

; <label>:9                                       ; preds = %5
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %7, i32 %newType) #5, !dbg !150
  br label %10, !dbg !152

; <label>:10                                      ; preds = %5, %9
  ret void, !dbg !153
}

; Function Attrs: optsize
declare void @InpMtx_changeCoordType(%struct._InpMtx*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Pencil_changeStorageMode(%struct._Pencil* nocapture readonly %pencil, i32 %newMode) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Pencil* %pencil, i64 0, metadata !76, metadata !82), !dbg !154
  tail call void @llvm.dbg.value(metadata i32 %newMode, i64 0, metadata !77, metadata !82), !dbg !155
  %1 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !156
  %2 = load %struct._InpMtx** %1, align 8, !dbg !156, !tbaa !124
  %3 = icmp eq %struct._InpMtx* %2, null, !dbg !158
  br i1 %3, label %5, label %4, !dbg !159

; <label>:4                                       ; preds = %0
  tail call void @InpMtx_changeStorageMode(%struct._InpMtx* %2, i32 %newMode) #5, !dbg !160
  br label %5, !dbg !162

; <label>:5                                       ; preds = %0, %4
  %6 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !163
  %7 = load %struct._InpMtx** %6, align 8, !dbg !163, !tbaa !135
  %8 = icmp eq %struct._InpMtx* %7, null, !dbg !165
  br i1 %8, label %10, label %9, !dbg !166

; <label>:9                                       ; preds = %5
  tail call void @InpMtx_changeStorageMode(%struct._InpMtx* %7, i32 %newMode) #5, !dbg !167
  br label %10, !dbg !169

; <label>:10                                      ; preds = %5, %9
  ret void, !dbg !170
}

; Function Attrs: optsize
declare void @InpMtx_changeStorageMode(%struct._InpMtx*, i32) #3

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
!llvm.module.flags = !{!78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !68, !74}
!6 = !DISubprogram(name: "Pencil_init", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Pencil*, i32, i32, %struct._InpMtx*, double*, %struct._InpMtx*)* @Pencil_init, variables: !61)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !15, !18, !50, !18}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pencil", file: !11, line: 17, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../Pencil.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Pencil", file: !11, line: 18, size: 320, align: 64, elements: !13)
!13 = !{!14, !16, !17, !56, !57}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 19, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "symflag", scope: !12, file: !11, line: 20, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "inpmtxA", scope: !12, file: !11, line: 21, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "InpMtx", file: !20, line: 51, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../InpMtx/InpMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_InpMtx", file: !20, line: 52, size: 1472, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !30, !40, !41, !51, !52, !53, !54, !55}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "coordType", scope: !21, file: !20, line: 53, baseType: !15, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "storageMode", scope: !21, file: !20, line: 54, baseType: !15, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "inputMode", scope: !21, file: !20, line: 55, baseType: !15, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "maxnent", scope: !21, file: !20, line: 56, baseType: !15, size: 32, align: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !21, file: !20, line: 57, baseType: !15, size: 32, align: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "resizeMultiple", scope: !21, file: !20, line: 58, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ivec1IV", scope: !21, file: !20, line: 59, baseType: !31, size: 192, align: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !32, line: 20, baseType: !33)
!32 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !32, line: 21, size: 192, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !33, file: !32, line: 22, baseType: !15, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !33, file: !32, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !33, file: !32, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !33, file: !32, line: 25, baseType: !39, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ivec2IV", scope: !21, file: !20, line: 60, baseType: !31, size: 192, align: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dvecDV", scope: !21, file: !20, line: 61, baseType: !42, size: 192, align: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !43, line: 20, baseType: !44)
!43 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !43, line: 21, size: 192, align: 64, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !44, file: !43, line: 22, baseType: !15, size: 32, align: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !44, file: !43, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !44, file: !43, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !44, file: !43, line: 25, baseType: !50, size: 64, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "maxnvector", scope: !21, file: !20, line: 62, baseType: !15, size: 32, align: 32, offset: 832)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nvector", scope: !21, file: !20, line: 63, baseType: !15, size: 32, align: 32, offset: 864)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "vecidsIV", scope: !21, file: !20, line: 64, baseType: !31, size: 192, align: 64, offset: 896)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sizesIV", scope: !21, file: !20, line: 65, baseType: !31, size: 192, align: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsIV", scope: !21, file: !20, line: 66, baseType: !31, size: 192, align: 64, offset: 1280)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "inpmtxB", scope: !12, file: !11, line: 22, baseType: !18, size: 64, align: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !12, file: !11, line: 23, baseType: !58, size: 128, align: 64, offset: 192)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, align: 64, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 2)
!61 = !{!62, !63, !64, !65, !66, !67}
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pencil", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !6, file: !1, line: 16, type: !15)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symflag", arg: 3, scope: !6, file: !1, line: 17, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtxA", arg: 4, scope: !6, file: !1, line: 18, type: !18)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sigma", arg: 5, scope: !6, file: !1, line: 19, type: !50)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtxB", arg: 6, scope: !6, file: !1, line: 20, type: !18)
!68 = !DISubprogram(name: "Pencil_changeCoordType", scope: !1, file: !1, line: 77, type: !69, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Pencil*, i32)* @Pencil_changeCoordType, variables: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !9, !15}
!71 = !{!72, !73}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pencil", arg: 1, scope: !68, file: !1, line: 78, type: !9)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newType", arg: 2, scope: !68, file: !1, line: 79, type: !15)
!74 = !DISubprogram(name: "Pencil_changeStorageMode", scope: !1, file: !1, line: 98, type: !69, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Pencil*, i32)* @Pencil_changeStorageMode, variables: !75)
!75 = !{!76, !77}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pencil", arg: 1, scope: !74, file: !1, line: 99, type: !9)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newMode", arg: 2, scope: !74, file: !1, line: 100, type: !15)
!78 = !{i32 2, !"Dwarf Version", i32 2}
!79 = !{i32 2, !"Debug Info Version", i32 700000003}
!80 = !{i32 1, !"PIC Level", i32 2}
!81 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!82 = !DIExpression()
!83 = !DILocation(line: 15, column: 13, scope: !6)
!84 = !DILocation(line: 16, column: 12, scope: !6)
!85 = !DILocation(line: 17, column: 12, scope: !6)
!86 = !DILocation(line: 18, column: 13, scope: !6)
!87 = !DILocation(line: 19, column: 12, scope: !6)
!88 = !DILocation(line: 20, column: 13, scope: !6)
!89 = !DILocation(line: 27, column: 14, scope: !90)
!90 = distinct !DILexicalBlock(scope: !6, file: !1, line: 27, column: 7)
!91 = !DILocation(line: 27, column: 31, scope: !90)
!92 = !DILocation(line: 27, column: 22, scope: !90)
!93 = !DILocation(line: 28, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 27, column: 41)
!95 = !{!96, !96, i64 0}
!96 = !{!"any pointer", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !DILocation(line: 28, column: 4, scope: !94)
!100 = !DILocation(line: 31, column: 4, scope: !94)
!101 = !DILocation(line: 33, column: 29, scope: !102)
!102 = distinct !DILexicalBlock(scope: !6, file: !1, line: 33, column: 6)
!103 = !DILocation(line: 34, column: 12, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !1, line: 33, column: 59)
!105 = !DILocation(line: 34, column: 4, scope: !104)
!106 = !DILocation(line: 37, column: 4, scope: !104)
!107 = !DILocation(line: 40, column: 4, scope: !108)
!108 = distinct !DILexicalBlock(scope: !6, file: !1, line: 39, column: 6)
!109 = !DILocation(line: 42, column: 12, scope: !110)
!110 = distinct !DILexicalBlock(scope: !108, file: !1, line: 41, column: 43)
!111 = !DILocation(line: 42, column: 4, scope: !110)
!112 = !DILocation(line: 46, column: 4, scope: !110)
!113 = !DILocation(line: 53, column: 1, scope: !6)
!114 = !DILocation(line: 59, column: 9, scope: !6)
!115 = !DILocation(line: 59, column: 18, scope: !6)
!116 = !{!117, !118, i64 0}
!117 = !{!"_Pencil", !118, i64 0, !118, i64 4, !96, i64 8, !96, i64 16, !97, i64 24}
!118 = !{!"int", !97, i64 0}
!119 = !DILocation(line: 60, column: 9, scope: !6)
!120 = !DILocation(line: 60, column: 18, scope: !6)
!121 = !{!117, !118, i64 4}
!122 = !DILocation(line: 61, column: 9, scope: !6)
!123 = !DILocation(line: 61, column: 18, scope: !6)
!124 = !{!117, !96, i64 8}
!125 = !DILocation(line: 62, column: 20, scope: !6)
!126 = !{!127, !127, i64 0}
!127 = !{!"double", !97, i64 0}
!128 = !DILocation(line: 62, column: 9, scope: !6)
!129 = !DILocation(line: 62, column: 18, scope: !6)
!130 = !DILocation(line: 63, column: 20, scope: !6)
!131 = !DILocation(line: 63, column: 1, scope: !6)
!132 = !DILocation(line: 63, column: 18, scope: !6)
!133 = !DILocation(line: 64, column: 9, scope: !6)
!134 = !DILocation(line: 64, column: 18, scope: !6)
!135 = !{!117, !96, i64 16}
!136 = !DILocation(line: 66, column: 1, scope: !6)
!137 = !DILocation(line: 78, column: 14, scope: !68)
!138 = !DILocation(line: 79, column: 14, scope: !68)
!139 = !DILocation(line: 81, column: 14, scope: !140)
!140 = distinct !DILexicalBlock(scope: !68, file: !1, line: 81, column: 6)
!141 = !DILocation(line: 81, column: 22, scope: !140)
!142 = !DILocation(line: 81, column: 6, scope: !68)
!143 = !DILocation(line: 82, column: 4, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 81, column: 32)
!145 = !DILocation(line: 83, column: 1, scope: !144)
!146 = !DILocation(line: 84, column: 14, scope: !147)
!147 = distinct !DILexicalBlock(scope: !68, file: !1, line: 84, column: 6)
!148 = !DILocation(line: 84, column: 22, scope: !147)
!149 = !DILocation(line: 84, column: 6, scope: !68)
!150 = !DILocation(line: 85, column: 4, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 84, column: 32)
!152 = !DILocation(line: 86, column: 1, scope: !151)
!153 = !DILocation(line: 87, column: 1, scope: !68)
!154 = !DILocation(line: 99, column: 14, scope: !74)
!155 = !DILocation(line: 100, column: 14, scope: !74)
!156 = !DILocation(line: 102, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !74, file: !1, line: 102, column: 6)
!158 = !DILocation(line: 102, column: 22, scope: !157)
!159 = !DILocation(line: 102, column: 6, scope: !74)
!160 = !DILocation(line: 103, column: 4, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 102, column: 32)
!162 = !DILocation(line: 104, column: 1, scope: !161)
!163 = !DILocation(line: 105, column: 14, scope: !164)
!164 = distinct !DILexicalBlock(scope: !74, file: !1, line: 105, column: 6)
!165 = !DILocation(line: 105, column: 22, scope: !164)
!166 = !DILocation(line: 105, column: 6, scope: !74)
!167 = !DILocation(line: 106, column: 4, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 105, column: 32)
!169 = !DILocation(line: 107, column: 1, scope: !168)
!170 = !DILocation(line: 108, column: 1, scope: !74)
