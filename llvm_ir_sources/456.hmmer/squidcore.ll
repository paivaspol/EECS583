; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squidcore.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"SQUID %s (%s)\0A\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"1.9g\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"January 2003\00", align 1
@.str4 = private unnamed_addr constant [70 x i8] c"Copyright (C) 1992-2003 HHMI/Washington University School of Medicine\00", align 1
@.str5 = private unnamed_addr constant [62 x i8] c"Freely distributed under the GNU General Public License (GPL)\00", align 1
@.str6 = private unnamed_addr constant [73 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @SqdBanner(%struct.__sFILE* nocapture %fp, i8* %banner) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !72, metadata !78), !dbg !79
  tail call void @llvm.dbg.value(metadata i8* %banner, i64 0, metadata !73, metadata !78), !dbg !80
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* %banner) #4, !dbg !81
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !82
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !83
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !84
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([73 x i8]* @.str6, i64 0, i64 0), i64 72, i64 1, %struct.__sFILE* %fp), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!74, !75, !76}
!llvm.ident = !{!77}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squidcore.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "SqdBanner", scope: !1, file: !1, line: 46, type: !5, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*)* @SqdBanner, variables: !71)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !37}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !9, line: 153, baseType: !10)
!9 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !9, line: 122, size: 1216, align: 64, elements: !11)
!11 = !{!12, !15, !17, !18, !20, !21, !26, !27, !29, !33, !39, !49, !55, !56, !59, !60, !64, !68, !69, !70}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !10, file: !9, line: 123, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !10, file: !9, line: 124, baseType: !16, size: 32, align: 32, offset: 64)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !10, file: !9, line: 125, baseType: !16, size: 32, align: 32, offset: 96)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !10, file: !9, line: 126, baseType: !19, size: 16, align: 16, offset: 128)
!19 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !10, file: !9, line: 127, baseType: !19, size: 16, align: 16, offset: 144)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !10, file: !9, line: 128, baseType: !22, size: 128, align: 64, offset: 192)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !9, line: 88, size: 128, align: 64, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !22, file: !9, line: 89, baseType: !13, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !22, file: !9, line: 90, baseType: !16, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !10, file: !9, line: 129, baseType: !16, size: 32, align: 32, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !10, file: !9, line: 132, baseType: !28, size: 64, align: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !10, file: !9, line: 133, baseType: !30, size: 64, align: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!16, !28}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !10, file: !9, line: 134, baseType: !34, size: 64, align: 64, offset: 512)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!16, !28, !37, !16}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !10, file: !9, line: 135, baseType: !40, size: 64, align: 64, offset: 576)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !28, !43, !16}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !9, line: 77, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !45, line: 71, baseType: !46)
!45 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!48 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !10, file: !9, line: 136, baseType: !50, size: 64, align: 64, offset: 640)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!16, !28, !53, !16}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !10, file: !9, line: 139, baseType: !22, size: 128, align: 64, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !10, file: !9, line: 140, baseType: !57, size: 64, align: 64, offset: 832)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !9, line: 94, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !10, file: !9, line: 141, baseType: !16, size: 32, align: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !10, file: !9, line: 144, baseType: !61, size: 24, align: 8, offset: 928)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, align: 8, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 3)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !10, file: !9, line: 145, baseType: !65, size: 8, align: 8, offset: 952)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, align: 8, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 1)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !10, file: !9, line: 148, baseType: !22, size: 128, align: 64, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !10, file: !9, line: 151, baseType: !16, size: 32, align: 32, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !10, file: !9, line: 152, baseType: !43, size: 64, align: 64, offset: 1152)
!71 = !{!72, !73}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !4, file: !1, line: 46, type: !7)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "banner", arg: 2, scope: !4, file: !1, line: 46, type: !37)
!74 = !{i32 2, !"Dwarf Version", i32 2}
!75 = !{i32 2, !"Debug Info Version", i32 700000003}
!76 = !{i32 1, !"PIC Level", i32 2}
!77 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!78 = !DIExpression()
!79 = !DILocation(line: 46, column: 17, scope: !4)
!80 = !DILocation(line: 46, column: 27, scope: !4)
!81 = !DILocation(line: 48, column: 3, scope: !4)
!82 = !DILocation(line: 49, column: 3, scope: !4)
!83 = !DILocation(line: 50, column: 3, scope: !4)
!84 = !DILocation(line: 51, column: 3, scope: !4)
!85 = !DILocation(line: 52, column: 3, scope: !4)
!86 = !DILocation(line: 53, column: 1, scope: !4)
