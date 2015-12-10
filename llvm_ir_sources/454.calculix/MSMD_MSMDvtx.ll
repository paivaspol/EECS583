; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDvtx.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }
%struct._IP = type { i32, %struct._IP* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in MSMDvtx_print(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [55 x i8] c"\0A vertex %d, weight %d, mark %c, status %c, stage = %d\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"\0A    edges(%d) :\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"\0A    subtrees :\00", align 1
@.str4 = private unnamed_addr constant [17 x i8] c"\0A    parent = %d\00", align 1
@.str5 = private unnamed_addr constant [28 x i8] c"\0A    bnd(%d), weight = %d :\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @MSMDvtx_print(%struct._MSMDvtx* %v, %struct.__sFILE* %fp) #0 {
  %ierr = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._MSMDvtx* %v, i64 0, metadata !96, metadata !103), !dbg !104
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !97, metadata !103), !dbg !105
  %1 = icmp eq %struct._MSMDvtx* %v, null, !dbg !106
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !108
  %or.cond = or i1 %1, %2, !dbg !109
  br i1 %or.cond, label %3, label %6, !dbg !109

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !110, !tbaa !112
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._MSMDvtx* %v, %struct.__sFILE* %fp) #6, !dbg !116
  tail call void @exit(i32 -1) #7, !dbg !117
  unreachable, !dbg !117

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0, !dbg !118
  %8 = load i32* %7, align 4, !dbg !118, !tbaa !119
  %9 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 4, !dbg !122
  %10 = load i32* %9, align 4, !dbg !122, !tbaa !123
  %11 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 1, !dbg !124
  %12 = load i8* %11, align 1, !dbg !124, !tbaa !125
  %13 = sext i8 %12 to i32, !dbg !126
  %14 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 2, !dbg !127
  %15 = load i8* %14, align 1, !dbg !127, !tbaa !128
  %16 = sext i8 %15 to i32, !dbg !129
  %17 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 3, !dbg !130
  %18 = load i32* %17, align 4, !dbg !130, !tbaa !131
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 %8, i32 %10, i32 %13, i32 %16, i32 %18) #6, !dbg !132
  %20 = load i8* %14, align 1, !dbg !133, !tbaa !128
  %21 = sext i8 %20 to i32, !dbg !134
  switch i32 %21, label %63 [
    i32 79, label %22
    i32 68, label %22
    i32 82, label %22
    i32 66, label %22
    i32 76, label %34
    i32 69, label %34
    i32 73, label %53
  ], !dbg !135

; <label>:22                                      ; preds = %6, %6, %6, %6
  %23 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5, !dbg !136
  %24 = load i32* %23, align 4, !dbg !136, !tbaa !138
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i32 %24) #6, !dbg !139
  %26 = load i32* %23, align 4, !dbg !140, !tbaa !138
  %27 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !141
  %28 = load i32** %27, align 8, !dbg !141, !tbaa !142
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !98, metadata !103), !dbg !143
  %29 = call i32 @IVfp80(%struct.__sFILE* %fp, i32 %26, i32* %28, i32 13, i32* %ierr) #6, !dbg !144
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %fp), !dbg !145
  %31 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9, !dbg !146
  %32 = load %struct._IP** %31, align 8, !dbg !146, !tbaa !147
  %33 = call i32 @IP_fp80(%struct.__sFILE* %fp, %struct._IP* %32, i32 13) #6, !dbg !148
  br label %63, !dbg !149

; <label>:34                                      ; preds = %6, %6
  %35 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 8, !dbg !150
  %36 = load %struct._MSMDvtx** %35, align 8, !dbg !150, !tbaa !151
  %37 = icmp eq %struct._MSMDvtx* %36, null, !dbg !152
  br i1 %37, label %41, label %38, !dbg !153

; <label>:38                                      ; preds = %34
  %39 = getelementptr inbounds %struct._MSMDvtx* %36, i64 0, i32 0, !dbg !154
  %40 = load i32* %39, align 4, !dbg !154, !tbaa !119
  br label %41, !dbg !153

; <label>:41                                      ; preds = %34, %38
  %42 = phi i32 [ %40, %38 ], [ -1, %34 ], !dbg !153
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %42) #6, !dbg !155
  %44 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5, !dbg !156
  %45 = load i32* %44, align 4, !dbg !156, !tbaa !138
  %46 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 7, !dbg !157
  %47 = load i32* %46, align 4, !dbg !157, !tbaa !158
  %48 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0), i32 %45, i32 %47) #6, !dbg !159
  %49 = load i32* %44, align 4, !dbg !160, !tbaa !138
  %50 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !161
  %51 = load i32** %50, align 8, !dbg !161, !tbaa !142
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !98, metadata !103), !dbg !143
  %52 = call i32 @IVfp80(%struct.__sFILE* %fp, i32 %49, i32* %51, i32 10, i32* %ierr) #6, !dbg !162
  br label %63, !dbg !163

; <label>:53                                      ; preds = %6
  %54 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 8, !dbg !164
  %55 = load %struct._MSMDvtx** %54, align 8, !dbg !164, !tbaa !151
  %56 = icmp eq %struct._MSMDvtx* %55, null, !dbg !165
  br i1 %56, label %60, label %57, !dbg !166

; <label>:57                                      ; preds = %53
  %58 = getelementptr inbounds %struct._MSMDvtx* %55, i64 0, i32 0, !dbg !167
  %59 = load i32* %58, align 4, !dbg !167, !tbaa !119
  br label %60, !dbg !166

; <label>:60                                      ; preds = %53, %57
  %61 = phi i32 [ %59, %57 ], [ -1, %53 ], !dbg !166
  %62 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %61) #6, !dbg !168
  br label %63, !dbg !169

; <label>:63                                      ; preds = %6, %60, %41, %22
  ret void, !dbg !170
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @IVfp80(%struct.__sFILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @IP_fp80(%struct.__sFILE*, %struct._IP*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!99, !100, !101}
!llvm.ident = !{!102}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDvtx.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "MSMDvtx_print", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._MSMDvtx*, %struct.__sFILE*)* @MSMDvtx_print, variables: !95)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !34}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSMDvtx", file: !11, line: 18, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../MSMD.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MSMDvtx", file: !11, line: 180, size: 448, align: 64, elements: !13)
!13 = !{!14, !16, !18, !19, !20, !21, !22, !24, !25, !26}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !12, file: !11, line: 181, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !12, file: !11, line: 182, baseType: !17, size: 8, align: 8, offset: 32)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !12, file: !11, line: 183, baseType: !17, size: 8, align: 8, offset: 40)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "stage", scope: !12, file: !11, line: 184, baseType: !15, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "wght", scope: !12, file: !11, line: 185, baseType: !15, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nadj", scope: !12, file: !11, line: 186, baseType: !15, size: 32, align: 32, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "adj", scope: !12, file: !11, line: 187, baseType: !23, size: 64, align: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "bndwght", scope: !12, file: !11, line: 188, baseType: !15, size: 32, align: 32, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !12, file: !11, line: 189, baseType: !9, size: 64, align: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "subtrees", scope: !12, file: !11, line: 190, baseType: !27, size: 64, align: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "IP", file: !29, line: 10, baseType: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../Utilities/IP.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IP", file: !29, line: 11, size: 128, align: 64, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !30, file: !29, line: 12, baseType: !15, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !29, line: 13, baseType: !27, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !36, line: 153, baseType: !37)
!36 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !36, line: 122, size: 1216, align: 64, elements: !38)
!38 = !{!39, !42, !43, !44, !46, !47, !52, !53, !54, !58, !63, !73, !79, !80, !83, !84, !88, !92, !93, !94}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !37, file: !36, line: 123, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !37, file: !36, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !37, file: !36, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !37, file: !36, line: 126, baseType: !45, size: 16, align: 16, offset: 128)
!45 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !37, file: !36, line: 127, baseType: !45, size: 16, align: 16, offset: 144)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !37, file: !36, line: 128, baseType: !48, size: 128, align: 64, offset: 192)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !36, line: 88, size: 128, align: 64, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !48, file: !36, line: 89, baseType: !40, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !48, file: !36, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !37, file: !36, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !37, file: !36, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !37, file: !36, line: 133, baseType: !55, size: 64, align: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!15, !4}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !37, file: !36, line: 134, baseType: !59, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!15, !4, !62, !15}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !37, file: !36, line: 135, baseType: !64, size: 64, align: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !4, !67, !15}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !36, line: 77, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !69, line: 71, baseType: !70)
!69 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!72 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !37, file: !36, line: 136, baseType: !74, size: 64, align: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!15, !4, !77, !15}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !37, file: !36, line: 139, baseType: !48, size: 128, align: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !37, file: !36, line: 140, baseType: !81, size: 64, align: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !36, line: 94, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !37, file: !36, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !37, file: !36, line: 144, baseType: !85, size: 24, align: 8, offset: 928)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 24, align: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 3)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !37, file: !36, line: 145, baseType: !89, size: 8, align: 8, offset: 952)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, align: 8, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 1)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !37, file: !36, line: 148, baseType: !48, size: 128, align: 64, offset: 960)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !37, file: !36, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !37, file: !36, line: 152, baseType: !67, size: 64, align: 64, offset: 1152)
!95 = !{!96, !97, !98}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !6, file: !1, line: 16, type: !34)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !6, file: !1, line: 18, type: !15)
!99 = !{i32 2, !"Dwarf Version", i32 2}
!100 = !{i32 2, !"Debug Info Version", i32 700000003}
!101 = !{i32 1, !"PIC Level", i32 2}
!102 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!103 = !DIExpression()
!104 = !DILocation(line: 15, column: 15, scope: !6)
!105 = !DILocation(line: 16, column: 15, scope: !6)
!106 = !DILocation(line: 24, column: 8, scope: !107)
!107 = distinct !DILexicalBlock(scope: !6, file: !1, line: 24, column: 6)
!108 = !DILocation(line: 24, column: 22, scope: !107)
!109 = !DILocation(line: 24, column: 16, scope: !107)
!110 = !DILocation(line: 25, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 24, column: 32)
!112 = !{!113, !113, i64 0}
!113 = !{!"any pointer", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !DILocation(line: 25, column: 4, scope: !111)
!117 = !DILocation(line: 27, column: 4, scope: !111)
!118 = !DILocation(line: 31, column: 12, scope: !6)
!119 = !{!120, !121, i64 0}
!120 = !{!"_MSMDvtx", !121, i64 0, !114, i64 4, !114, i64 5, !121, i64 8, !121, i64 12, !121, i64 16, !113, i64 24, !121, i64 32, !113, i64 40, !113, i64 48}
!121 = !{!"int", !114, i64 0}
!122 = !DILocation(line: 31, column: 19, scope: !6)
!123 = !{!120, !121, i64 12}
!124 = !DILocation(line: 31, column: 28, scope: !6)
!125 = !{!120, !114, i64 4}
!126 = !DILocation(line: 31, column: 25, scope: !6)
!127 = !DILocation(line: 31, column: 37, scope: !6)
!128 = !{!120, !114, i64 5}
!129 = !DILocation(line: 31, column: 34, scope: !6)
!130 = !DILocation(line: 31, column: 48, scope: !6)
!131 = !{!120, !121, i64 8}
!132 = !DILocation(line: 29, column: 1, scope: !6)
!133 = !DILocation(line: 32, column: 13, scope: !6)
!134 = !DILocation(line: 32, column: 10, scope: !6)
!135 = !DILocation(line: 32, column: 1, scope: !6)
!136 = !DILocation(line: 37, column: 40, scope: !137)
!137 = distinct !DILexicalBlock(scope: !6, file: !1, line: 32, column: 22)
!138 = !{!120, !121, i64 16}
!139 = !DILocation(line: 37, column: 4, scope: !137)
!140 = !DILocation(line: 38, column: 18, scope: !137)
!141 = !DILocation(line: 38, column: 27, scope: !137)
!142 = !{!120, !113, i64 24}
!143 = !DILocation(line: 18, column: 7, scope: !6)
!144 = !DILocation(line: 38, column: 4, scope: !137)
!145 = !DILocation(line: 39, column: 4, scope: !137)
!146 = !DILocation(line: 40, column: 19, scope: !137)
!147 = !{!120, !113, i64 48}
!148 = !DILocation(line: 40, column: 4, scope: !137)
!149 = !DILocation(line: 41, column: 4, scope: !137)
!150 = !DILocation(line: 45, column: 37, scope: !137)
!151 = !{!120, !113, i64 40}
!152 = !DILocation(line: 45, column: 41, scope: !137)
!153 = !DILocation(line: 45, column: 33, scope: !137)
!154 = !DILocation(line: 45, column: 65, scope: !137)
!155 = !DILocation(line: 44, column: 4, scope: !137)
!156 = !DILocation(line: 46, column: 51, scope: !137)
!157 = !DILocation(line: 46, column: 60, scope: !137)
!158 = !{!120, !121, i64 32}
!159 = !DILocation(line: 46, column: 4, scope: !137)
!160 = !DILocation(line: 47, column: 18, scope: !137)
!161 = !DILocation(line: 47, column: 27, scope: !137)
!162 = !DILocation(line: 47, column: 4, scope: !137)
!163 = !DILocation(line: 48, column: 4, scope: !137)
!164 = !DILocation(line: 51, column: 37, scope: !137)
!165 = !DILocation(line: 51, column: 41, scope: !137)
!166 = !DILocation(line: 51, column: 33, scope: !137)
!167 = !DILocation(line: 51, column: 65, scope: !137)
!168 = !DILocation(line: 50, column: 4, scope: !137)
!169 = !DILocation(line: 52, column: 4, scope: !137)
!170 = !DILocation(line: 56, column: 1, scope: !6)
