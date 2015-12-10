; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/memdump.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"memdump of %s:\0A\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"%.8X :\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c" %.2X\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c" | %s\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @mem_dump(%struct.__sFILE* %log, i8* %title, i8* nocapture readonly %mem, i32 %len) #0 {
  %s = alloca [17 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !74, metadata !103), !dbg !104
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !75, metadata !103), !dbg !105
  tail call void @llvm.dbg.value(metadata i8* %mem, i64 0, metadata !76, metadata !103), !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !77, metadata !103), !dbg !107
  tail call void @llvm.dbg.declare(metadata [17 x i8]* %s, metadata !80, metadata !103), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* %mem, i64 0, metadata !84, metadata !103), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !79, metadata !103), !dbg !110
  %1 = getelementptr inbounds [17 x i8]* %s, i64 0, i64 0, !dbg !111
  store i8 0, i8* %1, align 16, !dbg !112, !tbaa !113
  %2 = icmp ne i32 %len, 0, !dbg !116
  %3 = icmp ne %struct.__sFILE* %log, null, !dbg !118
  %or.cond = and i1 %3, %2, !dbg !119
  br i1 %or.cond, label %4, label %.preheader, !dbg !119

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* %title) #4, !dbg !120
  br label %.preheader, !dbg !120

.preheader:                                       ; preds = %4, %0
  %6 = icmp sgt i32 %len, 0, !dbg !121
  br i1 %6, label %.lr.ph, label %._crit_edge, !dbg !124

.lr.ph:                                           ; preds = %.preheader
  %7 = add i32 %len, -1, !dbg !124
  br label %8, !dbg !124

; <label>:8                                       ; preds = %.thread6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread6 ]
  %index.07 = phi i32 [ 0, %.lr.ph ], [ %21, %.thread6 ]
  %9 = getelementptr inbounds i8* %mem, i64 %indvars.iv, !dbg !125
  %10 = load i8* %9, align 1, !dbg !125, !tbaa !113
  call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !85, metadata !103), !dbg !127
  %11 = and i32 %index.07, -17, !dbg !128
  %12 = icmp eq i32 %11, 0, !dbg !128
  br i1 %12, label %13, label %16, !dbg !128

; <label>:13                                      ; preds = %8
  call fastcc void @print_chars(%struct.__sFILE* %log, i8* %1, i32 %index.07) #5, !dbg !130
  br i1 %3, label %.thread, label %.thread6, !dbg !132

.thread:                                          ; preds = %13
  %14 = trunc i64 %indvars.iv to i32, !dbg !133
  %15 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32 %14) #4, !dbg !133
  br label %17, !dbg !135

; <label>:16                                      ; preds = %8
  br i1 %3, label %17, label %.thread6, !dbg !135

; <label>:17                                      ; preds = %.thread, %16
  %index.15 = phi i32 [ 0, %.thread ], [ %index.07, %16 ]
  %18 = zext i8 %10 to i32, !dbg !136
  %19 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i32 %18) #4, !dbg !138
  br label %.thread6, !dbg !138

.thread6:                                         ; preds = %13, %17, %16
  %index.14 = phi i32 [ %index.15, %17 ], [ %index.07, %16 ], [ 0, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !98, metadata !103), !dbg !139
  %b.off.i = add i8 %10, -32, !dbg !141
  %20 = icmp ugt i8 %b.off.i, 94, !dbg !141
  %.0.i = select i1 %20, i8 46, i8 %10, !dbg !141
  %21 = add nsw i32 %index.14, 1, !dbg !143
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !79, metadata !103), !dbg !110
  %22 = sext i32 %index.14 to i64, !dbg !144
  %23 = getelementptr inbounds [17 x i8]* %s, i64 0, i64 %22, !dbg !144
  store i8 %.0.i, i8* %23, align 1, !dbg !145, !tbaa !113
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !124
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !124
  %exitcond = icmp eq i32 %lftr.wideiv, %7, !dbg !124
  br i1 %exitcond, label %._crit_edge, label %8, !dbg !124

._crit_edge:                                      ; preds = %.thread6, %.preheader
  %index.0.lcssa = phi i32 [ 0, %.preheader ], [ %21, %.thread6 ]
  call fastcc void @print_chars(%struct.__sFILE* %log, i8* %1, i32 %index.0.lcssa) #5, !dbg !146
  %24 = call i32 @fflush(%struct.__sFILE* %log) #4, !dbg !147
  ret void, !dbg !148
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @print_chars(%struct.__sFILE* %fp, i8* %s, i32 %len) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !90, metadata !103), !dbg !149
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !91, metadata !103), !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !92, metadata !103), !dbg !151
  %1 = icmp eq i32 %len, 0, !dbg !152
  br i1 %1, label %12, label %2, !dbg !154

; <label>:2                                       ; preds = %0
  %3 = icmp eq %struct.__sFILE* %fp, null, !dbg !155
  br i1 %3, label %.critedge, label %.preheader, !dbg !158

.preheader:                                       ; preds = %2
  %4 = icmp slt i32 %len, 16, !dbg !159
  br i1 %4, label %.lr.ph, label %.loopexit, !dbg !162

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.01 = phi i32 [ %6, %.lr.ph ], [ %len, %.preheader ]
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp), !dbg !163
  %6 = add nsw i32 %i.01, 1, !dbg !164
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !93, metadata !103), !dbg !165
  %exitcond = icmp eq i32 %i.01, 15, !dbg !162
  br i1 %exitcond, label %.loopexit, label %.lr.ph, !dbg !162

.loopexit:                                        ; preds = %.lr.ph, %.preheader
  %7 = sext i32 %len to i64, !dbg !166
  %8 = getelementptr inbounds i8* %s, i64 %7, !dbg !166
  store i8 0, i8* %8, align 1, !dbg !167, !tbaa !113
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %s) #4, !dbg !168
  br label %12, !dbg !168

.critedge:                                        ; preds = %2
  %10 = sext i32 %len to i64, !dbg !166
  %11 = getelementptr inbounds i8* %s, i64 %10, !dbg !166
  store i8 0, i8* %11, align 1, !dbg !167, !tbaa !113
  br label %12

; <label>:12                                      ; preds = %.critedge, %0, %.loopexit
  ret void, !dbg !170
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!99, !100, !101}
!llvm.ident = !{!102}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/memdump.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !{!7, !86, !94}
!7 = !DISubprogram(name: "mem_dump", scope: !1, file: !1, line: 61, type: !8, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*, i8*, i32)* @mem_dump, variables: !73)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !40, !31, !19}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !12, line: 153, baseType: !13)
!12 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !12, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !20, !21, !23, !24, !29, !30, !32, !36, !41, !51, !57, !58, !61, !62, !66, !70, !71, !72}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !12, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !12, line: 124, baseType: !19, size: 32, align: 32, offset: 64)
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !12, line: 125, baseType: !19, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !12, line: 126, baseType: !22, size: 16, align: 16, offset: 128)
!22 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !12, line: 127, baseType: !22, size: 16, align: 16, offset: 144)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !12, line: 128, baseType: !25, size: 128, align: 64, offset: 192)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !12, line: 88, size: 128, align: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !25, file: !12, line: 89, baseType: !16, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !25, file: !12, line: 90, baseType: !19, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !12, line: 129, baseType: !19, size: 32, align: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !12, line: 132, baseType: !31, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !12, line: 133, baseType: !33, size: 64, align: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!19, !31}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !12, line: 134, baseType: !37, size: 64, align: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!19, !31, !40, !19}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !12, line: 135, baseType: !42, size: 64, align: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !31, !45, !19}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !12, line: 77, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !47, line: 71, baseType: !48)
!47 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !12, line: 136, baseType: !52, size: 64, align: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!19, !31, !55, !19}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !12, line: 139, baseType: !25, size: 128, align: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !12, line: 140, baseType: !59, size: 64, align: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !12, line: 94, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !12, line: 141, baseType: !19, size: 32, align: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !12, line: 144, baseType: !63, size: 24, align: 8, offset: 928)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !12, line: 145, baseType: !67, size: 8, align: 8, offset: 952)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !12, line: 148, baseType: !25, size: 128, align: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !12, line: 151, baseType: !19, size: 32, align: 32, offset: 1088)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !12, line: 152, baseType: !45, size: 64, align: 64, offset: 1152)
!73 = !{!74, !75, !76, !77, !78, !79, !80, !84, !85}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !7, file: !1, line: 61, type: !10)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !7, file: !1, line: 61, type: !40)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mem", arg: 3, scope: !7, file: !1, line: 61, type: !31)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 4, scope: !7, file: !1, line: 61, type: !19)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !7, file: !1, line: 63, type: !19)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !7, file: !1, line: 63, type: !19)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !7, file: !1, line: 64, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 136, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 17)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !7, file: !1, line: 65, type: !16)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !7, file: !1, line: 65, type: !17)
!86 = !DISubprogram(name: "print_chars", scope: !1, file: !1, line: 40, type: !87, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*, i32)* @print_chars, variables: !89)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !10, !40, !19}
!89 = !{!90, !91, !92, !93}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !86, file: !1, line: 40, type: !10)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !86, file: !1, line: 40, type: !40)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !86, file: !1, line: 40, type: !19)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !86, file: !1, line: 42, type: !19)
!94 = !DISubprogram(name: "ascii", scope: !1, file: !1, line: 56, type: !95, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, variables: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!5, !17}
!97 = !{!98}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !94, file: !1, line: 56, type: !17)
!99 = !{i32 2, !"Dwarf Version", i32 2}
!100 = !{i32 2, !"Debug Info Version", i32 700000003}
!101 = !{i32 1, !"PIC Level", i32 2}
!102 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!103 = !DIExpression()
!104 = !DILocation(line: 61, column: 21, scope: !7)
!105 = !DILocation(line: 61, column: 31, scope: !7)
!106 = !DILocation(line: 61, column: 43, scope: !7)
!107 = !DILocation(line: 61, column: 51, scope: !7)
!108 = !DILocation(line: 64, column: 8, scope: !7)
!109 = !DILocation(line: 65, column: 9, scope: !7)
!110 = !DILocation(line: 63, column: 9, scope: !7)
!111 = !DILocation(line: 69, column: 3, scope: !7)
!112 = !DILocation(line: 69, column: 7, scope: !7)
!113 = !{!114, !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !DILocation(line: 70, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !7, file: !1, line: 70, column: 7)
!118 = !DILocation(line: 70, column: 14, scope: !117)
!119 = !DILocation(line: 70, column: 11, scope: !117)
!120 = !DILocation(line: 71, column: 7, scope: !117)
!121 = !DILocation(line: 72, column: 14, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 72, column: 3)
!123 = distinct !DILexicalBlock(scope: !7, file: !1, line: 72, column: 3)
!124 = !DILocation(line: 72, column: 3, scope: !123)
!125 = !DILocation(line: 74, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !1, line: 73, column: 5)
!127 = !DILocation(line: 65, column: 11, scope: !7)
!128 = !DILocation(line: 75, column: 21, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !1, line: 75, column: 11)
!130 = !DILocation(line: 77, column: 11, scope: !131)
!131 = distinct !DILexicalBlock(scope: !129, file: !1, line: 76, column: 9)
!132 = !DILocation(line: 78, column: 14, scope: !131)
!133 = !DILocation(line: 79, column: 15, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !1, line: 78, column: 14)
!135 = !DILocation(line: 82, column: 10, scope: !126)
!136 = !DILocation(line: 83, column: 31, scope: !137)
!137 = distinct !DILexicalBlock(scope: !126, file: !1, line: 82, column: 10)
!138 = !DILocation(line: 83, column: 11, scope: !137)
!139 = !DILocation(line: 56, column: 24, scope: !94, inlinedAt: !140)
!140 = distinct !DILocation(line: 84, column: 18, scope: !126)
!141 = !DILocation(line: 58, column: 14, scope: !142, inlinedAt: !140)
!142 = distinct !DILexicalBlock(scope: !94, file: !1, line: 58, column: 7)
!143 = !DILocation(line: 84, column: 14, scope: !126)
!144 = !DILocation(line: 84, column: 7, scope: !126)
!145 = !DILocation(line: 84, column: 17, scope: !126)
!146 = !DILocation(line: 86, column: 3, scope: !7)
!147 = !DILocation(line: 87, column: 10, scope: !7)
!148 = !DILocation(line: 88, column: 1, scope: !7)
!149 = !DILocation(line: 40, column: 31, scope: !86)
!150 = !DILocation(line: 40, column: 39, scope: !86)
!151 = !DILocation(line: 40, column: 47, scope: !86)
!152 = !DILocation(line: 44, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !86, file: !1, line: 44, column: 7)
!154 = !DILocation(line: 44, column: 7, scope: !86)
!155 = !DILocation(line: 46, column: 10, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 46, column: 10)
!157 = distinct !DILexicalBlock(scope: !153, file: !1, line: 45, column: 5)
!158 = !DILocation(line: 46, column: 10, scope: !157)
!159 = !DILocation(line: 47, column: 24, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 47, column: 11)
!161 = distinct !DILexicalBlock(scope: !156, file: !1, line: 47, column: 11)
!162 = !DILocation(line: 47, column: 11, scope: !161)
!163 = !DILocation(line: 48, column: 15, scope: !160)
!164 = !DILocation(line: 47, column: 38, scope: !160)
!165 = !DILocation(line: 42, column: 7, scope: !86)
!166 = !DILocation(line: 49, column: 7, scope: !157)
!167 = !DILocation(line: 49, column: 13, scope: !157)
!168 = !DILocation(line: 52, column: 11, scope: !169)
!169 = distinct !DILexicalBlock(scope: !157, file: !1, line: 51, column: 10)
!170 = !DILocation(line: 54, column: 1, scope: !86)
