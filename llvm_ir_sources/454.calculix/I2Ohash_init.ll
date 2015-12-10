; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [87 x i8] c"\0A\0A error in I2Ohash_init(%p,%d,%d,%d)\0A hashtable is NULL or nlist = %d is nonpositive\0A\00", align 1
@.str1 = private unnamed_addr constant [61 x i8] c"\0A\0A error in I2Ohash_init(%p,%d,%d,%d)\0A nobj = %d, grow = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str3 = private unnamed_addr constant [93 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @I2Ohash_init(%struct._I2Ohash* %hashtable, i32 %nlist, i32 %nobj, i32 %grow) #0 {
  tail call void @llvm.dbg.value(metadata %struct._I2Ohash* %hashtable, i64 0, metadata !35, metadata !44), !dbg !45
  tail call void @llvm.dbg.value(metadata i32 %nlist, i64 0, metadata !36, metadata !44), !dbg !46
  tail call void @llvm.dbg.value(metadata i32 %nobj, i64 0, metadata !37, metadata !44), !dbg !47
  tail call void @llvm.dbg.value(metadata i32 %grow, i64 0, metadata !38, metadata !44), !dbg !48
  %1 = icmp eq %struct._I2Ohash* %hashtable, null, !dbg !49
  %2 = icmp slt i32 %nlist, 1, !dbg !51
  %or.cond = or i1 %1, %2, !dbg !52
  br i1 %or.cond, label %3, label %6, !dbg !52

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !53, !tbaa !55
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([87 x i8]* @.str, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %nlist, i32 %nobj, i32 %grow, i32 %nlist) #5, !dbg !59
  tail call void @exit(i32 -1) #6, !dbg !60
  unreachable, !dbg !60

; <label>:6                                       ; preds = %0
  %7 = icmp slt i32 %nobj, 1, !dbg !61
  %8 = icmp slt i32 %grow, 1, !dbg !63
  %or.cond3 = and i1 %7, %8, !dbg !64
  br i1 %or.cond3, label %9, label %12, !dbg !64

; <label>:9                                       ; preds = %6
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !65, !tbaa !55
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([61 x i8]* @.str1, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %nlist, i32 %nobj, i32 %grow, i32 %nobj, i32 %grow) #5, !dbg !67
  tail call void @exit(i32 -1) #6, !dbg !68
  unreachable, !dbg !68

; <label>:12                                      ; preds = %6
  tail call void @I2Ohash_clearData(%struct._I2Ohash* %hashtable) #5, !dbg !69
  %13 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0, !dbg !70
  store i32 %nlist, i32* %13, align 4, !dbg !71, !tbaa !72
  %14 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 1, !dbg !75
  store i32 %grow, i32* %14, align 4, !dbg !76, !tbaa !77
  %15 = icmp sgt i32 %nobj, 0, !dbg !78
  br i1 %15, label %16, label %23, !dbg !80

; <label>:16                                      ; preds = %12
  %17 = add nsw i32 %nobj, 1, !dbg !81
  %18 = tail call %struct._I2OP* @I2OP_init(i32 %17, i32 1) #5, !dbg !83
  %19 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 3, !dbg !84
  store %struct._I2OP* %18, %struct._I2OP** %19, align 8, !dbg !85, !tbaa !86
  %20 = getelementptr inbounds %struct._I2OP* %18, i64 1, !dbg !87
  %21 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 4, !dbg !88
  store %struct._I2OP* %20, %struct._I2OP** %21, align 8, !dbg !89, !tbaa !90
  %22 = getelementptr inbounds %struct._I2OP* %18, i64 0, i32 3, !dbg !91
  store %struct._I2OP* null, %struct._I2OP** %22, align 8, !dbg !92, !tbaa !93
  br label %23, !dbg !95

; <label>:23                                      ; preds = %16, %12
  %24 = icmp sgt i32 %nlist, 0, !dbg !96
  br i1 %24, label %25, label %35, !dbg !98

; <label>:25                                      ; preds = %23
  %26 = sext i32 %nlist to i64, !dbg !99
  %27 = shl nsw i64 %26, 3, !dbg !99
  %28 = tail call i8* @malloc(i64 %27) #5, !dbg !99
  %29 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !99
  %30 = bitcast %struct._I2OP*** %29 to i8**, !dbg !99
  store i8* %28, i8** %30, align 8, !dbg !99, !tbaa !102
  %31 = icmp eq i8* %28, null, !dbg !99
  br i1 %31, label %32, label %.lr.ph, !dbg !103

; <label>:32                                      ; preds = %25
  %33 = load %struct.__sFILE** @__stderrp, align 8, !dbg !104, !tbaa !55
  %34 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %33, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %27, i32 45, i8* getelementptr inbounds ([93 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !104
  tail call void @exit(i32 -1) #6, !dbg !104
  unreachable, !dbg !104

; <label>:35                                      ; preds = %23
  %36 = icmp eq i32 %nlist, 0, !dbg !106
  br i1 %36, label %.preheader, label %41, !dbg !96

.preheader:                                       ; preds = %35
  %37 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !108
  store %struct._I2OP** null, %struct._I2OP*** %37, align 8, !dbg !108, !tbaa !102
  br label %._crit_edge

.lr.ph:                                           ; preds = %25
  %38 = bitcast i8* %28 to %struct._I2OP**
  %39 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !110
  %40 = add i32 %nlist, -1, !dbg !114
  store %struct._I2OP* null, %struct._I2OP** %38, align 8, !dbg !115, !tbaa !55
  %exitcond6 = icmp eq i32 %40, 0, !dbg !114
  br i1 %exitcond6, label %._crit_edge, label %._crit_edge5, !dbg !114

; <label>:41                                      ; preds = %35
  %42 = load %struct.__sFILE** @__stderrp, align 8, !dbg !116, !tbaa !55
  %43 = sext i32 %nlist to i64, !dbg !116
  %44 = shl nsw i64 %43, 3, !dbg !116
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %42, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %44, i32 45, i8* getelementptr inbounds ([93 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !116
  tail call void @exit(i32 -1) #6, !dbg !116
  unreachable, !dbg !116

._crit_edge5:                                     ; preds = %.lr.ph, %._crit_edge5
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %._crit_edge5 ], [ 0, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !114
  %.pre = load %struct._I2OP*** %39, align 8, !dbg !110, !tbaa !102
  %46 = getelementptr inbounds %struct._I2OP** %.pre, i64 %indvars.iv.next, !dbg !118
  store %struct._I2OP* null, %struct._I2OP** %46, align 8, !dbg !115, !tbaa !55
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !114
  %exitcond = icmp eq i32 %lftr.wideiv, %40, !dbg !114
  br i1 %exitcond, label %._crit_edge, label %._crit_edge5, !dbg !114

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge5, %.preheader
  ret void, !dbg !119
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @I2Ohash_clearData(%struct._I2Ohash*) #3

; Function Attrs: optsize
declare %struct._I2OP* @I2OP_init(i32, i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

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
!llvm.module.flags = !{!40, !41, !42}
!llvm.ident = !{!43}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !18, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !17}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_I2OP", file: !8, line: 6, size: 192, align: 64, elements: !9)
!8 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/../../Utilities/I2OP.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !{!10, !12, !13, !14}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "value0", scope: !7, file: !8, line: 7, baseType: !11, size: 32, align: 32)
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !7, file: !8, line: 8, baseType: !11, size: 32, align: 32, offset: 32)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !7, file: !8, line: 9, baseType: !4, size: 64, align: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !8, line: 10, baseType: !15, size: 64, align: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "I2OP", file: !8, line: 5, baseType: !7)
!17 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!18 = !{!19}
!19 = !DISubprogram(name: "I2Ohash_init", scope: !1, file: !1, line: 18, type: !20, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._I2Ohash*, i32, i32, i32)* @I2Ohash_init, variables: !34)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !11, !11, !11}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "I2Ohash", file: !24, line: 6, baseType: !25)
!24 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/../I2Ohash.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_I2Ohash", file: !24, line: 7, size: 320, align: 64, elements: !26)
!26 = !{!27, !28, !29, !30, !31, !32}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !25, file: !24, line: 8, baseType: !11, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "grow", scope: !25, file: !24, line: 9, baseType: !11, size: 32, align: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nitem", scope: !25, file: !24, line: 10, baseType: !11, size: 32, align: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "baseI2OP", scope: !25, file: !24, line: 11, baseType: !15, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "freeI2OP", scope: !25, file: !24, line: 12, baseType: !15, size: 64, align: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !25, file: !24, line: 13, baseType: !33, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hashtable", arg: 1, scope: !19, file: !1, line: 19, type: !22)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nlist", arg: 2, scope: !19, file: !1, line: 20, type: !11)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nobj", arg: 3, scope: !19, file: !1, line: 21, type: !11)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grow", arg: 4, scope: !19, file: !1, line: 22, type: !11)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !19, file: !1, line: 24, type: !11)
!40 = !{i32 2, !"Dwarf Version", i32 2}
!41 = !{i32 2, !"Debug Info Version", i32 700000003}
!42 = !{i32 1, !"PIC Level", i32 2}
!43 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!44 = !DIExpression()
!45 = !DILocation(line: 19, column: 15, scope: !19)
!46 = !DILocation(line: 20, column: 14, scope: !19)
!47 = !DILocation(line: 21, column: 14, scope: !19)
!48 = !DILocation(line: 22, column: 14, scope: !19)
!49 = !DILocation(line: 25, column: 16, scope: !50)
!50 = distinct !DILexicalBlock(scope: !19, file: !1, line: 25, column: 6)
!51 = !DILocation(line: 25, column: 33, scope: !50)
!52 = !DILocation(line: 25, column: 24, scope: !50)
!53 = !DILocation(line: 26, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 25, column: 40)
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 26, column: 4, scope: !54)
!60 = !DILocation(line: 29, column: 4, scope: !54)
!61 = !DILocation(line: 31, column: 11, scope: !62)
!62 = distinct !DILexicalBlock(scope: !19, file: !1, line: 31, column: 6)
!63 = !DILocation(line: 31, column: 24, scope: !62)
!64 = !DILocation(line: 31, column: 16, scope: !62)
!65 = !DILocation(line: 32, column: 12, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 31, column: 31)
!67 = !DILocation(line: 32, column: 4, scope: !66)
!68 = !DILocation(line: 35, column: 4, scope: !66)
!69 = !DILocation(line: 37, column: 1, scope: !19)
!70 = !DILocation(line: 38, column: 12, scope: !19)
!71 = !DILocation(line: 38, column: 18, scope: !19)
!72 = !{!73, !74, i64 0}
!73 = !{!"_I2Ohash", !74, i64 0, !74, i64 4, !74, i64 8, !56, i64 16, !56, i64 24, !56, i64 32}
!74 = !{!"int", !57, i64 0}
!75 = !DILocation(line: 39, column: 12, scope: !19)
!76 = !DILocation(line: 39, column: 18, scope: !19)
!77 = !{!73, !74, i64 4}
!78 = !DILocation(line: 40, column: 11, scope: !79)
!79 = distinct !DILexicalBlock(scope: !19, file: !1, line: 40, column: 6)
!80 = !DILocation(line: 40, column: 6, scope: !19)
!81 = !DILocation(line: 41, column: 40, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 40, column: 17)
!83 = !DILocation(line: 41, column: 26, scope: !82)
!84 = !DILocation(line: 41, column: 15, scope: !82)
!85 = !DILocation(line: 41, column: 24, scope: !82)
!86 = !{!73, !56, i64 16}
!87 = !DILocation(line: 42, column: 46, scope: !82)
!88 = !DILocation(line: 42, column: 15, scope: !82)
!89 = !DILocation(line: 42, column: 24, scope: !82)
!90 = !{!73, !56, i64 24}
!91 = !DILocation(line: 43, column: 25, scope: !82)
!92 = !DILocation(line: 43, column: 30, scope: !82)
!93 = !{!94, !56, i64 16}
!94 = !{!"_I2OP", !74, i64 0, !74, i64 4, !56, i64 8, !56, i64 16}
!95 = !DILocation(line: 44, column: 1, scope: !82)
!96 = !DILocation(line: 45, column: 1, scope: !97)
!97 = distinct !DILexicalBlock(scope: !19, file: !1, line: 45, column: 1)
!98 = !DILocation(line: 45, column: 1, scope: !19)
!99 = !DILocation(line: 45, column: 1, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 45, column: 1)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 45, column: 1)
!102 = !{!73, !56, i64 32}
!103 = !DILocation(line: 45, column: 1, scope: !101)
!104 = !DILocation(line: 45, column: 1, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 45, column: 1)
!106 = !DILocation(line: 45, column: 1, scope: !107)
!107 = distinct !DILexicalBlock(scope: !97, file: !1, line: 45, column: 1)
!108 = !DILocation(line: 45, column: 1, scope: !109)
!109 = distinct !DILexicalBlock(scope: !107, file: !1, line: 45, column: 1)
!110 = !DILocation(line: 47, column: 15, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 46, column: 36)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 46, column: 1)
!113 = distinct !DILexicalBlock(scope: !19, file: !1, line: 46, column: 1)
!114 = !DILocation(line: 46, column: 1, scope: !113)
!115 = !DILocation(line: 47, column: 25, scope: !111)
!116 = !DILocation(line: 45, column: 1, scope: !117)
!117 = distinct !DILexicalBlock(scope: !107, file: !1, line: 45, column: 1)
!118 = !DILocation(line: 47, column: 4, scope: !111)
!119 = !DILocation(line: 50, column: 1, scope: !19)
