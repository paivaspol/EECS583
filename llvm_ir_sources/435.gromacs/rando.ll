; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rando.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !74, metadata !108), !dbg !109
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !75, metadata !108), !dbg !110
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !111
  %2 = load i32* %1, align 4, !dbg !113, !tbaa !114
  %3 = add nsw i32 %2, -1, !dbg !113
  store i32 %3, i32* %1, align 4, !dbg !113, !tbaa !114
  %4 = icmp sgt i32 %2, 0, !dbg !123
  br i1 %4, label %._crit_edge, label %5, !dbg !124

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !125
  br label %10, !dbg !124

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !126
  %7 = load i32* %6, align 4, !dbg !126, !tbaa !127
  %8 = icmp sle i32 %2, %7, !dbg !128
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !129
  %or.cond = or i1 %9, %8, !dbg !130
  br i1 %or.cond, label %15, label %10, !dbg !130

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !125
  %11 = trunc i32 %_c to i8, !dbg !131
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !132
  %13 = load i8** %12, align 8, !dbg !133, !tbaa !134
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !133
  store i8* %14, i8** %12, align 8, !dbg !133, !tbaa !134
  store i8 %11, i8* %13, align 1, !dbg !135, !tbaa !136
  br label %17, !dbg !137

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #5, !dbg !138
  br label %17, !dbg !139

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !140
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !81, metadata !108), !dbg !141
  %1 = icmp sgt i32 %__signo, 32, !dbg !142
  br i1 %1, label %5, label %2, !dbg !143

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !144
  %4 = shl i32 1, %3, !dbg !145
  br label %5, !dbg !143

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !143
  ret i32 %6, !dbg !146
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @make_seed() #3 {
  %1 = tail call i64 @time(i64* null) #5, !dbg !147
  %2 = tail call i32 @getpid() #5, !dbg !148
  %3 = sext i32 %2 to i64, !dbg !149
  %4 = add nsw i64 %3, %1, !dbg !150
  %5 = srem i64 %4, 1000000, !dbg !151
  %6 = trunc i64 %5 to i32, !dbg !152
  ret i32 %6, !dbg !153
}

; Function Attrs: optsize
declare i64 @time(i64*) #1

; Function Attrs: optsize
declare i32 @getpid() #1

; Function Attrs: nounwind optsize ssp uwtable
define float @rando(i32* nocapture %ig) #3 {
  tail call void @llvm.dbg.value(metadata i32* %ig, i64 0, metadata !93, metadata !108), !dbg !154
  tail call void @llvm.dbg.value(metadata i32 100000000, i64 0, metadata !95, metadata !108), !dbg !155
  tail call void @llvm.dbg.value(metadata float 1.000000e+08, i64 0, metadata !96, metadata !108), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 10000, i64 0, metadata !97, metadata !108), !dbg !157
  tail call void @llvm.dbg.value(metadata i32 31415821, i64 0, metadata !98, metadata !108), !dbg !158
  %1 = load i32* %ig, align 4, !dbg !159, !tbaa !160
  %ispos = icmp sgt i32 %1, -1, !dbg !161
  %neg = sub i32 0, %1, !dbg !161
  %2 = select i1 %ispos, i32 %1, i32 %neg, !dbg !161
  %3 = srem i32 %2, 100000000, !dbg !162
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !94, metadata !108), !dbg !163
  %4 = sdiv i32 %3, 10000, !dbg !164
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !100, metadata !108), !dbg !165
  %5 = srem i32 %3, 10000, !dbg !166
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !101, metadata !108), !dbg !167
  tail call void @llvm.dbg.value(metadata i32 3141, i64 0, metadata !102, metadata !108), !dbg !168
  tail call void @llvm.dbg.value(metadata i32 5821, i64 0, metadata !103, metadata !108), !dbg !169
  %6 = mul nsw i32 %4, 5821, !dbg !170
  %7 = mul nsw i32 %5, 3141, !dbg !171
  %8 = add nsw i32 %7, %6, !dbg !172
  %9 = srem i32 %8, 10000, !dbg !173
  %10 = mul nsw i32 %9, 10000, !dbg !174
  %11 = mul nsw i32 %5, 5821, !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !94, metadata !108), !dbg !163
  %12 = add i32 %11, 1, !dbg !176
  %13 = add i32 %12, %10, !dbg !177
  %14 = srem i32 %13, 100000000, !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !94, metadata !108), !dbg !163
  %15 = sdiv i32 %14, 10, !dbg !179
  %16 = sitofp i32 %15 to float, !dbg !180
  tail call void @llvm.dbg.value(metadata float %16, i64 0, metadata !99, metadata !108), !dbg !181
  %17 = fmul float %16, 1.000000e+01, !dbg !182
  %18 = fdiv float %17, 1.000000e+08, !dbg !183
  tail call void @llvm.dbg.value(metadata float %18, i64 0, metadata !99, metadata !108), !dbg !181
  %19 = fcmp ole float %18, 0.000000e+00, !dbg !184
  %20 = fcmp ogt float %18, 1.000000e+00, !dbg !186
  %or.cond = or i1 %19, %20, !dbg !187
  %. = select i1 %or.cond, float 0.000000e+00, float %18, !dbg !187
  tail call void @llvm.dbg.value(metadata float %., i64 0, metadata !99, metadata !108), !dbg !181
  store i32 %14, i32* %ig, align 4, !dbg !188, !tbaa !160
  ret float %., !dbg !189
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!104, !105, !106}
!llvm.ident = !{!107}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rando.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!7 = !{!8, !76, !82, !85}
!8 = !DISubprogram(name: "__sputc", scope: !9, file: !9, line: 348, type: !10, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !73)
!9 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DISubroutineType(types: !11)
!11 = !{!5, !5, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !9, line: 153, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !9, line: 122, size: 1216, align: 64, elements: !15)
!15 = !{!16, !19, !20, !21, !23, !24, !29, !30, !32, !36, !41, !51, !57, !58, !61, !62, !66, !70, !71, !72}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !14, file: !9, line: 123, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !14, file: !9, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !14, file: !9, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !14, file: !9, line: 126, baseType: !22, size: 16, align: 16, offset: 128)
!22 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !14, file: !9, line: 127, baseType: !22, size: 16, align: 16, offset: 144)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !14, file: !9, line: 128, baseType: !25, size: 128, align: 64, offset: 192)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !9, line: 88, size: 128, align: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !25, file: !9, line: 89, baseType: !17, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !25, file: !9, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !14, file: !9, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !14, file: !9, line: 132, baseType: !31, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !14, file: !9, line: 133, baseType: !33, size: 64, align: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!5, !31}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !14, file: !9, line: 134, baseType: !37, size: 64, align: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!5, !31, !40, !5}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !14, file: !9, line: 135, baseType: !42, size: 64, align: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !31, !45, !5}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !9, line: 77, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !47, line: 71, baseType: !48)
!47 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !14, file: !9, line: 136, baseType: !52, size: 64, align: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!5, !31, !55, !5}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !14, file: !9, line: 139, baseType: !25, size: 128, align: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !14, file: !9, line: 140, baseType: !59, size: 64, align: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !9, line: 94, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !14, file: !9, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !14, file: !9, line: 144, baseType: !63, size: 24, align: 8, offset: 928)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, align: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !14, file: !9, line: 145, baseType: !67, size: 8, align: 8, offset: 952)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !14, file: !9, line: 148, baseType: !25, size: 128, align: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !14, file: !9, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !14, file: !9, line: 152, baseType: !45, size: 64, align: 64, offset: 1152)
!73 = !{!74, !75}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !8, file: !9, line: 348, type: !5)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !8, file: !9, line: 348, type: !12)
!76 = !DISubprogram(name: "__sigbits", scope: !77, file: !77, line: 114, type: !78, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !80)
!77 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!78 = !DISubroutineType(types: !79)
!79 = !{!5, !5}
!80 = !{!81}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !76, file: !77, line: 114, type: !5)
!82 = !DISubprogram(name: "make_seed", scope: !1, file: !1, line: 37, type: !83, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @make_seed, variables: !2)
!83 = !DISubroutineType(types: !84)
!84 = !{!5}
!85 = !DISubprogram(name: "rando", scope: !1, file: !1, line: 42, type: !86, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: float (i32*)* @rando, variables: !92)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !91}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !89, line: 87, baseType: !90)
!89 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!90 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ig", arg: 1, scope: !85, file: !1, line: 42, type: !91)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irand", scope: !85, file: !1, line: 45, type: !5)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !85, file: !1, line: 47, type: !5)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rm", scope: !85, file: !1, line: 48, type: !88)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m1", scope: !85, file: !1, line: 49, type: !5)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mult", scope: !85, file: !1, line: 50, type: !5)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !85, file: !1, line: 52, type: !88)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irandh", scope: !85, file: !1, line: 53, type: !5)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irandl", scope: !85, file: !1, line: 53, type: !5)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "multh", scope: !85, file: !1, line: 53, type: !5)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "multl", scope: !85, file: !1, line: 53, type: !5)
!104 = !{i32 2, !"Dwarf Version", i32 2}
!105 = !{i32 2, !"Debug Info Version", i32 700000003}
!106 = !{i32 1, !"PIC Level", i32 2}
!107 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!108 = !DIExpression()
!109 = !DILocation(line: 348, column: 40, scope: !8)
!110 = !DILocation(line: 348, column: 50, scope: !8)
!111 = !DILocation(line: 349, column: 12, scope: !112)
!112 = distinct !DILexicalBlock(scope: !8, file: !9, line: 349, column: 6)
!113 = !DILocation(line: 349, column: 6, scope: !112)
!114 = !{!115, !119, i64 12}
!115 = !{!"__sFILE", !116, i64 0, !119, i64 8, !119, i64 12, !120, i64 16, !120, i64 18, !121, i64 24, !119, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !121, i64 88, !116, i64 104, !119, i64 112, !117, i64 116, !117, i64 119, !121, i64 120, !119, i64 136, !122, i64 144}
!116 = !{!"any pointer", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !{!"int", !117, i64 0}
!120 = !{!"short", !117, i64 0}
!121 = !{!"__sbuf", !116, i64 0, !119, i64 8}
!122 = !{!"long long", !117, i64 0}
!123 = !DILocation(line: 349, column: 15, scope: !112)
!124 = !DILocation(line: 349, column: 20, scope: !112)
!125 = !DILocation(line: 350, column: 10, scope: !112)
!126 = !DILocation(line: 349, column: 38, scope: !112)
!127 = !{!115, !119, i64 40}
!128 = !DILocation(line: 349, column: 31, scope: !112)
!129 = !DILocation(line: 349, column: 59, scope: !112)
!130 = !DILocation(line: 349, column: 47, scope: !112)
!131 = !DILocation(line: 350, column: 23, scope: !112)
!132 = !DILocation(line: 350, column: 16, scope: !112)
!133 = !DILocation(line: 350, column: 18, scope: !112)
!134 = !{!115, !116, i64 0}
!135 = !DILocation(line: 350, column: 21, scope: !112)
!136 = !{!117, !117, i64 0}
!137 = !DILocation(line: 350, column: 3, scope: !112)
!138 = !DILocation(line: 352, column: 11, scope: !112)
!139 = !DILocation(line: 352, column: 3, scope: !112)
!140 = !DILocation(line: 353, column: 1, scope: !8)
!141 = !DILocation(line: 114, column: 15, scope: !76)
!142 = !DILocation(line: 116, column: 20, scope: !76)
!143 = !DILocation(line: 116, column: 12, scope: !76)
!144 = !DILocation(line: 116, column: 57, scope: !76)
!145 = !DILocation(line: 116, column: 45, scope: !76)
!146 = !DILocation(line: 116, column: 5, scope: !76)
!147 = !DILocation(line: 39, column: 23, scope: !82)
!148 = !DILocation(line: 39, column: 40, scope: !82)
!149 = !DILocation(line: 39, column: 34, scope: !82)
!150 = !DILocation(line: 39, column: 33, scope: !82)
!151 = !DILocation(line: 39, column: 50, scope: !82)
!152 = !DILocation(line: 39, column: 10, scope: !82)
!153 = !DILocation(line: 39, column: 3, scope: !82)
!154 = !DILocation(line: 42, column: 17, scope: !85)
!155 = !DILocation(line: 47, column: 8, scope: !85)
!156 = !DILocation(line: 48, column: 8, scope: !85)
!157 = !DILocation(line: 49, column: 8, scope: !85)
!158 = !DILocation(line: 50, column: 8, scope: !85)
!159 = !DILocation(line: 55, column: 15, scope: !85)
!160 = !{!119, !119, i64 0}
!161 = !DILocation(line: 55, column: 11, scope: !85)
!162 = !DILocation(line: 55, column: 20, scope: !85)
!163 = !DILocation(line: 45, column: 8, scope: !85)
!164 = !DILocation(line: 60, column: 18, scope: !85)
!165 = !DILocation(line: 53, column: 8, scope: !85)
!166 = !DILocation(line: 61, column: 18, scope: !85)
!167 = !DILocation(line: 53, column: 15, scope: !85)
!168 = !DILocation(line: 53, column: 22, scope: !85)
!169 = !DILocation(line: 53, column: 28, scope: !85)
!170 = !DILocation(line: 64, column: 20, scope: !85)
!171 = !DILocation(line: 64, column: 33, scope: !85)
!172 = !DILocation(line: 64, column: 26, scope: !85)
!173 = !DILocation(line: 64, column: 41, scope: !85)
!174 = !DILocation(line: 64, column: 47, scope: !85)
!175 = !DILocation(line: 64, column: 60, scope: !85)
!176 = !DILocation(line: 64, column: 52, scope: !85)
!177 = !DILocation(line: 65, column: 19, scope: !85)
!178 = !DILocation(line: 65, column: 24, scope: !85)
!179 = !DILocation(line: 68, column: 14, scope: !85)
!180 = !DILocation(line: 68, column: 7, scope: !85)
!181 = !DILocation(line: 52, column: 8, scope: !85)
!182 = !DILocation(line: 69, column: 9, scope: !85)
!183 = !DILocation(line: 69, column: 14, scope: !85)
!184 = !DILocation(line: 70, column: 10, scope: !185)
!185 = distinct !DILexicalBlock(scope: !85, file: !1, line: 70, column: 7)
!186 = !DILocation(line: 70, column: 22, scope: !185)
!187 = !DILocation(line: 70, column: 16, scope: !185)
!188 = !DILocation(line: 72, column: 7, scope: !85)
!189 = !DILocation(line: 74, column: 3, scope: !85)
