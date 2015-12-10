; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/invblock.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"invblock\00", align 1
@.str1 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/invblock.c\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !75, metadata !110), !dbg !111
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !76, metadata !110), !dbg !112
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !113
  %2 = load i32* %1, align 4, !dbg !115, !tbaa !116
  %3 = add nsw i32 %2, -1, !dbg !115
  store i32 %3, i32* %1, align 4, !dbg !115, !tbaa !116
  %4 = icmp sgt i32 %2, 0, !dbg !125
  br i1 %4, label %._crit_edge, label %5, !dbg !126

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !127
  br label %10, !dbg !126

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !128
  %7 = load i32* %6, align 4, !dbg !128, !tbaa !129
  %8 = icmp sle i32 %2, %7, !dbg !130
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !131
  %or.cond = or i1 %9, %8, !dbg !132
  br i1 %or.cond, label %15, label %10, !dbg !132

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !127
  %11 = trunc i32 %_c to i8, !dbg !133
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !134
  %13 = load i8** %12, align 8, !dbg !135, !tbaa !136
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !135
  store i8* %14, i8** %12, align 8, !dbg !135, !tbaa !136
  store i8 %11, i8* %13, align 1, !dbg !137, !tbaa !138
  br label %17, !dbg !139

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6, !dbg !140
  br label %17, !dbg !141

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !142
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !82, metadata !110), !dbg !143
  %1 = icmp sgt i32 %__signo, 32, !dbg !144
  br i1 %1, label %5, label %2, !dbg !145

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !146
  %4 = shl i32 1, %3, !dbg !147
  br label %5, !dbg !145

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !145
  ret i32 %6, !dbg !148
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @make_invblock(%struct.t_block* nocapture readonly %block, i32 %nr) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_block* %block, i64 0, metadata !101, metadata !110), !dbg !149
  tail call void @llvm.dbg.value(metadata i32 %nr, i64 0, metadata !102, metadata !110), !dbg !150
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 42, i32 %nr, i32 4) #6, !dbg !151
  %2 = bitcast i8* %1 to i32*, !dbg !151
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !105, metadata !110), !dbg !152
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !103, metadata !110), !dbg !153
  %3 = icmp sgt i32 %nr, 0, !dbg !154
  br i1 %3, label %.lr.ph6, label %.preheader, !dbg !157

.lr.ph6:                                          ; preds = %0
  %4 = add i32 %nr, -1, !dbg !157
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 2, !dbg !157
  %7 = add nuw nsw i64 %6, 4, !dbg !157
  call void @llvm.memset.p0i8.i64(i8* %1, i8 -1, i64 %7, i32 4, i1 false), !dbg !158
  br label %.preheader, !dbg !157

.preheader:                                       ; preds = %.lr.ph6, %0
  %8 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !159
  %9 = load i32* %8, align 4, !dbg !159, !tbaa !162
  %10 = icmp sgt i32 %9, 0, !dbg !164
  br i1 %10, label %.lr.ph3, label %._crit_edge, !dbg !165

.lr.ph3:                                          ; preds = %.preheader
  %11 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !166
  %12 = load i32** %11, align 8, !dbg !166, !tbaa !168
  %13 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !169
  %.pre11 = load i32* %12, align 4, !dbg !171, !tbaa !172
  br label %18, !dbg !165

..loopexit_crit_edge:                             ; preds = %26
  %.pre = load i32* %8, align 4, !dbg !159, !tbaa !162
  br label %.loopexit, !dbg !173

.loopexit:                                        ; preds = %..loopexit_crit_edge, %18
  %14 = phi i32 [ %32, %..loopexit_crit_edge ], [ %22, %18 ]
  %15 = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %20, %18 ], !dbg !159
  %16 = sext i32 %15 to i64, !dbg !164
  %17 = icmp slt i64 %indvars.iv.next8, %16, !dbg !164
  br i1 %17, label %18, label %._crit_edge, !dbg !165

; <label>:18                                      ; preds = %.lr.ph3, %.loopexit
  %19 = phi i32 [ %.pre11, %.lr.ph3 ], [ %14, %.loopexit ], !dbg !171
  %20 = phi i32 [ %9, %.lr.ph3 ], [ %15, %.loopexit ]
  %indvars.iv7 = phi i64 [ 0, %.lr.ph3 ], [ %indvars.iv.next8, %.loopexit ]
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !104, metadata !110), !dbg !174
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !165
  %21 = getelementptr inbounds i32* %12, i64 %indvars.iv.next8, !dbg !175
  %22 = load i32* %21, align 4, !dbg !175, !tbaa !172
  %23 = icmp slt i32 %19, %22, !dbg !176
  br i1 %23, label %.lr.ph, label %.loopexit, !dbg !173

.lr.ph:                                           ; preds = %18
  %24 = load i32** %13, align 8, !dbg !169, !tbaa !177
  %25 = sext i32 %19 to i64
  br label %26, !dbg !173

; <label>:26                                      ; preds = %.lr.ph, %26
  %indvars.iv = phi i64 [ %25, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %27 = getelementptr inbounds i32* %24, i64 %indvars.iv, !dbg !178
  %28 = load i32* %27, align 4, !dbg !178, !tbaa !172
  %29 = sext i32 %28 to i64, !dbg !179
  %30 = getelementptr inbounds i32* %2, i64 %29, !dbg !179
  %31 = trunc i64 %indvars.iv7 to i32, !dbg !180
  store i32 %31, i32* %30, align 4, !dbg !180, !tbaa !172
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !173
  %32 = load i32* %21, align 4, !dbg !175, !tbaa !172
  %33 = sext i32 %32 to i64, !dbg !176
  %34 = icmp slt i64 %indvars.iv.next, %33, !dbg !176
  br i1 %34, label %26, label %..loopexit_crit_edge, !dbg !173

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret i32* %2, !dbg !181
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!106, !107, !108}
!llvm.ident = !{!109}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/invblock.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !6, line: 73, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !77, !83}
!9 = !DISubprogram(name: "__sputc", scope: !10, file: !10, line: 348, type: !11, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !74)
!10 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!11 = !DISubroutineType(types: !12)
!12 = !{!7, !7, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !10, line: 153, baseType: !15)
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !10, line: 122, size: 1216, align: 64, elements: !16)
!16 = !{!17, !20, !21, !22, !24, !25, !30, !31, !33, !37, !42, !52, !58, !59, !62, !63, !67, !71, !72, !73}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !15, file: !10, line: 123, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !15, file: !10, line: 124, baseType: !7, size: 32, align: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !15, file: !10, line: 125, baseType: !7, size: 32, align: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !10, line: 126, baseType: !23, size: 16, align: 16, offset: 128)
!23 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !15, file: !10, line: 127, baseType: !23, size: 16, align: 16, offset: 144)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !15, file: !10, line: 128, baseType: !26, size: 128, align: 64, offset: 192)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !10, line: 88, size: 128, align: 64, elements: !27)
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !26, file: !10, line: 89, baseType: !18, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !26, file: !10, line: 90, baseType: !7, size: 32, align: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !15, file: !10, line: 129, baseType: !7, size: 32, align: 32, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !15, file: !10, line: 132, baseType: !32, size: 64, align: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !15, file: !10, line: 133, baseType: !34, size: 64, align: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!7, !32}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !15, file: !10, line: 134, baseType: !38, size: 64, align: 64, offset: 512)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!7, !32, !41, !7}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !15, file: !10, line: 135, baseType: !43, size: 64, align: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !32, !46, !7}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !10, line: 77, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !48, line: 71, baseType: !49)
!48 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!51 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !15, file: !10, line: 136, baseType: !53, size: 64, align: 64, offset: 640)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!7, !32, !56, !7}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !15, file: !10, line: 139, baseType: !26, size: 128, align: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !15, file: !10, line: 140, baseType: !60, size: 64, align: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !10, line: 94, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !15, file: !10, line: 141, baseType: !7, size: 32, align: 32, offset: 896)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !15, file: !10, line: 144, baseType: !64, size: 24, align: 8, offset: 928)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, align: 8, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !15, file: !10, line: 145, baseType: !68, size: 8, align: 8, offset: 952)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, align: 8, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 1)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !15, file: !10, line: 148, baseType: !26, size: 128, align: 64, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !15, file: !10, line: 151, baseType: !7, size: 32, align: 32, offset: 1088)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !10, line: 152, baseType: !46, size: 64, align: 64, offset: 1152)
!74 = !{!75, !76}
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !9, file: !10, line: 348, type: !7)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !9, file: !10, line: 348, type: !13)
!77 = !DISubprogram(name: "__sigbits", scope: !78, file: !78, line: 114, type: !79, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !81)
!78 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!79 = !DISubroutineType(types: !80)
!80 = !{!7, !7}
!81 = !{!82}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !77, file: !78, line: 114, type: !7)
!83 = !DISubprogram(name: "make_invblock", scope: !1, file: !1, line: 37, type: !84, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct.t_block*, i32)* @make_invblock, variables: !100)
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !87, !7}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !89, line: 52, baseType: !90)
!89 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!90 = !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 36, size: 8448, align: 64, elements: !91)
!91 = !{!92, !96, !97, !98, !99}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !90, file: !89, line: 37, baseType: !93, size: 8192, align: 32)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, align: 32, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !90, file: !89, line: 43, baseType: !7, size: 32, align: 32, offset: 8192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !90, file: !89, line: 44, baseType: !86, size: 64, align: 64, offset: 8256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !90, file: !89, line: 45, baseType: !7, size: 32, align: 32, offset: 8320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !90, file: !89, line: 46, baseType: !86, size: 64, align: 64, offset: 8384)
!100 = !{!101, !102, !103, !104, !105}
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "block", arg: 1, scope: !83, file: !1, line: 37, type: !87)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nr", arg: 2, scope: !83, file: !1, line: 37, type: !7)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !83, file: !1, line: 39, type: !7)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !83, file: !1, line: 39, type: !7)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "invblock", scope: !83, file: !1, line: 40, type: !86)
!106 = !{i32 2, !"Dwarf Version", i32 2}
!107 = !{i32 2, !"Debug Info Version", i32 700000003}
!108 = !{i32 1, !"PIC Level", i32 2}
!109 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!110 = !DIExpression()
!111 = !DILocation(line: 348, column: 40, scope: !9)
!112 = !DILocation(line: 348, column: 50, scope: !9)
!113 = !DILocation(line: 349, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !9, file: !10, line: 349, column: 6)
!115 = !DILocation(line: 349, column: 6, scope: !114)
!116 = !{!117, !121, i64 12}
!117 = !{!"__sFILE", !118, i64 0, !121, i64 8, !121, i64 12, !122, i64 16, !122, i64 18, !123, i64 24, !121, i64 40, !118, i64 48, !118, i64 56, !118, i64 64, !118, i64 72, !118, i64 80, !123, i64 88, !118, i64 104, !121, i64 112, !119, i64 116, !119, i64 119, !123, i64 120, !121, i64 136, !124, i64 144}
!118 = !{!"any pointer", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C/C++ TBAA"}
!121 = !{!"int", !119, i64 0}
!122 = !{!"short", !119, i64 0}
!123 = !{!"__sbuf", !118, i64 0, !121, i64 8}
!124 = !{!"long long", !119, i64 0}
!125 = !DILocation(line: 349, column: 15, scope: !114)
!126 = !DILocation(line: 349, column: 20, scope: !114)
!127 = !DILocation(line: 350, column: 10, scope: !114)
!128 = !DILocation(line: 349, column: 38, scope: !114)
!129 = !{!117, !121, i64 40}
!130 = !DILocation(line: 349, column: 31, scope: !114)
!131 = !DILocation(line: 349, column: 59, scope: !114)
!132 = !DILocation(line: 349, column: 47, scope: !114)
!133 = !DILocation(line: 350, column: 23, scope: !114)
!134 = !DILocation(line: 350, column: 16, scope: !114)
!135 = !DILocation(line: 350, column: 18, scope: !114)
!136 = !{!117, !118, i64 0}
!137 = !DILocation(line: 350, column: 21, scope: !114)
!138 = !{!119, !119, i64 0}
!139 = !DILocation(line: 350, column: 3, scope: !114)
!140 = !DILocation(line: 352, column: 11, scope: !114)
!141 = !DILocation(line: 352, column: 3, scope: !114)
!142 = !DILocation(line: 353, column: 1, scope: !9)
!143 = !DILocation(line: 114, column: 15, scope: !77)
!144 = !DILocation(line: 116, column: 20, scope: !77)
!145 = !DILocation(line: 116, column: 12, scope: !77)
!146 = !DILocation(line: 116, column: 57, scope: !77)
!147 = !DILocation(line: 116, column: 45, scope: !77)
!148 = !DILocation(line: 116, column: 5, scope: !77)
!149 = !DILocation(line: 37, column: 33, scope: !83)
!150 = !DILocation(line: 37, column: 43, scope: !83)
!151 = !DILocation(line: 42, column: 3, scope: !83)
!152 = !DILocation(line: 40, column: 12, scope: !83)
!153 = !DILocation(line: 39, column: 7, scope: !83)
!154 = !DILocation(line: 43, column: 14, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 43, column: 3)
!156 = distinct !DILexicalBlock(scope: !83, file: !1, line: 43, column: 3)
!157 = !DILocation(line: 43, column: 3, scope: !156)
!158 = !DILocation(line: 43, column: 35, scope: !155)
!159 = !DILocation(line: 45, column: 22, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 45, column: 3)
!161 = distinct !DILexicalBlock(scope: !83, file: !1, line: 45, column: 3)
!162 = !{!163, !121, i64 1024}
!163 = !{!"", !119, i64 0, !121, i64 1024, !118, i64 1032, !121, i64 1040, !118, i64 1048}
!164 = !DILocation(line: 45, column: 14, scope: !160)
!165 = !DILocation(line: 45, column: 3, scope: !161)
!166 = !DILocation(line: 46, column: 19, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !1, line: 46, column: 5)
!168 = !{!163, !118, i64 1032}
!169 = !DILocation(line: 47, column: 23, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !1, line: 46, column: 5)
!171 = !DILocation(line: 46, column: 12, scope: !167)
!172 = !{!121, !121, i64 0}
!173 = !DILocation(line: 46, column: 5, scope: !167)
!174 = !DILocation(line: 39, column: 9, scope: !83)
!175 = !DILocation(line: 46, column: 36, scope: !170)
!176 = !DILocation(line: 46, column: 30, scope: !170)
!177 = !{!163, !118, i64 1048}
!178 = !DILocation(line: 47, column: 16, scope: !170)
!179 = !DILocation(line: 47, column: 7, scope: !170)
!180 = !DILocation(line: 47, column: 28, scope: !170)
!181 = !DILocation(line: 48, column: 3, scope: !83)
