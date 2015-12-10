; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xdrd.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !81, metadata !162), !dbg !163
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !82, metadata !162), !dbg !164
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !165
  %2 = load i32* %1, align 4, !dbg !167, !tbaa !168
  %3 = add nsw i32 %2, -1, !dbg !167
  store i32 %3, i32* %1, align 4, !dbg !167, !tbaa !168
  %4 = icmp sgt i32 %2, 0, !dbg !177
  br i1 %4, label %._crit_edge, label %5, !dbg !178

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !179
  br label %10, !dbg !178

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !180
  %7 = load i32* %6, align 4, !dbg !180, !tbaa !181
  %8 = icmp sle i32 %2, %7, !dbg !182
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !183
  %or.cond = or i1 %9, %8, !dbg !184
  br i1 %or.cond, label %15, label %10, !dbg !184

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !179
  %11 = trunc i32 %_c to i8, !dbg !185
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !186
  %13 = load i8** %12, align 8, !dbg !187, !tbaa !188
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !187
  store i8* %14, i8** %12, align 8, !dbg !187, !tbaa !188
  store i8 %11, i8* %13, align 1, !dbg !189, !tbaa !190
  br label %17, !dbg !191

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #5, !dbg !192
  br label %17, !dbg !193

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !194
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !88, metadata !162), !dbg !195
  %1 = icmp sgt i32 %__signo, 32, !dbg !196
  br i1 %1, label %5, label %2, !dbg !197

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !198
  %4 = shl i32 1, %3, !dbg !199
  br label %5, !dbg !197

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !197
  ret i32 %6, !dbg !200
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_real(%struct.XDR* %xdrs, float* %r) #3 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !146, metadata !162), !dbg !201
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !147, metadata !162), !dbg !202
  %1 = tail call i32 @xdr_float(%struct.XDR* %xdrs, float* %r) #5, !dbg !203
  ret i32 %1, !dbg !204
}

; Function Attrs: optsize
declare i32 @xdr_float(%struct.XDR*, float*) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr3drcoord(%struct.XDR* %xdrs, float* %fp, i32* %size, float* %precision) #3 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !153, metadata !162), !dbg !205
  tail call void @llvm.dbg.value(metadata float* %fp, i64 0, metadata !154, metadata !162), !dbg !206
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !155, metadata !162), !dbg !207
  tail call void @llvm.dbg.value(metadata float* %precision, i64 0, metadata !156, metadata !162), !dbg !208
  %1 = tail call i32 @xdr3dfcoord(%struct.XDR* %xdrs, float* %fp, i32* %size, float* %precision) #5, !dbg !209
  ret i32 %1, !dbg !210
}

; Function Attrs: optsize
declare i32 @xdr3dfcoord(%struct.XDR*, float*, i32*, float*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!158, !159, !160}
!llvm.ident = !{!161}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !13, globals: !157, imports: !157)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xdrd.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 119, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!13 = !{!14, !83, !89, !148}
!14 = !DISubprogram(name: "__sputc", scope: !15, file: !15, line: 348, type: !16, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !80)
!15 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !19}
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !15, line: 153, baseType: !21)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !15, line: 122, size: 1216, align: 64, elements: !22)
!22 = !{!23, !26, !27, !28, !30, !31, !36, !37, !39, !43, !48, !58, !64, !65, !68, !69, !73, !77, !78, !79}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !21, file: !15, line: 123, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !21, file: !15, line: 124, baseType: !18, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !21, file: !15, line: 125, baseType: !18, size: 32, align: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !21, file: !15, line: 126, baseType: !29, size: 16, align: 16, offset: 128)
!29 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !21, file: !15, line: 127, baseType: !29, size: 16, align: 16, offset: 144)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !21, file: !15, line: 128, baseType: !32, size: 128, align: 64, offset: 192)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !15, line: 88, size: 128, align: 64, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !32, file: !15, line: 89, baseType: !24, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !32, file: !15, line: 90, baseType: !18, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !21, file: !15, line: 129, baseType: !18, size: 32, align: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !21, file: !15, line: 132, baseType: !38, size: 64, align: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !21, file: !15, line: 133, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!18, !38}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !21, file: !15, line: 134, baseType: !44, size: 64, align: 64, offset: 512)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!18, !38, !47, !18}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !21, file: !15, line: 135, baseType: !49, size: 64, align: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !38, !52, !18}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !15, line: 77, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !54, line: 71, baseType: !55)
!54 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!57 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !21, file: !15, line: 136, baseType: !59, size: 64, align: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!18, !38, !62, !18}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !21, file: !15, line: 139, baseType: !32, size: 128, align: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !21, file: !15, line: 140, baseType: !66, size: 64, align: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !15, line: 94, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !21, file: !15, line: 141, baseType: !18, size: 32, align: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !21, file: !15, line: 144, baseType: !70, size: 24, align: 8, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, align: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !21, file: !15, line: 145, baseType: !74, size: 8, align: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, align: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !21, file: !15, line: 148, baseType: !32, size: 128, align: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !21, file: !15, line: 151, baseType: !18, size: 32, align: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !21, file: !15, line: 152, baseType: !52, size: 64, align: 64, offset: 1152)
!80 = !{!81, !82}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !14, file: !15, line: 348, type: !18)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !14, file: !15, line: 348, type: !19)
!83 = !DISubprogram(name: "__sigbits", scope: !84, file: !84, line: 114, type: !85, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !87)
!84 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!85 = !DISubroutineType(types: !86)
!86 = !{!18, !18}
!87 = !{!88}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !83, file: !84, line: 114, type: !18)
!89 = !DISubprogram(name: "xdr_real", scope: !1, file: !1, line: 38, type: !90, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, float*)* @xdr_real, variables: !145)
!90 = !DISubroutineType(types: !91)
!91 = !{!18, !92, !142}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 144, baseType: !94)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 145, size: 384, align: 64, elements: !95)
!95 = !{!96, !97, !138, !139, !140, !141}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !94, file: !4, line: 147, baseType: !3, size: 32, align: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !94, file: !4, line: 171, baseType: !98, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 148, size: 640, align: 64, elements: !100)
!100 = !{!101, !108, !109, !114, !115, !119, !123, !129, !133, !137}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !99, file: !4, line: 150, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !92, !106}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !4, line: 99, baseType: !18)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !99, file: !4, line: 152, baseType: !102, size: 64, align: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !99, file: !4, line: 154, baseType: !110, size: 64, align: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!105, !92, !47, !113}
!113 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !99, file: !4, line: 156, baseType: !110, size: 64, align: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !99, file: !4, line: 158, baseType: !116, size: 64, align: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!113, !92}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !99, file: !4, line: 160, baseType: !120, size: 64, align: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!105, !92, !113}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !99, file: !4, line: 162, baseType: !124, size: 64, align: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !92, !18}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdr_int32_t", file: !4, line: 106, baseType: !18)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !99, file: !4, line: 164, baseType: !130, size: 64, align: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !92}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !99, file: !4, line: 166, baseType: !134, size: 64, align: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!105, !92, !127}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !99, file: !4, line: 168, baseType: !134, size: 64, align: 64, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !94, file: !4, line: 172, baseType: !47, size: 64, align: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !94, file: !4, line: 173, baseType: !47, size: 64, align: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !94, file: !4, line: 174, baseType: !47, size: 64, align: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !94, file: !4, line: 175, baseType: !18, size: 32, align: 32, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !144, line: 87, baseType: !12)
!144 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!145 = !{!146, !147}
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !89, file: !1, line: 38, type: !92)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 2, scope: !89, file: !1, line: 38, type: !142)
!148 = !DISubprogram(name: "xdr3drcoord", scope: !1, file: !1, line: 54, type: !149, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, float*, i32*, float*)* @xdr3drcoord, variables: !152)
!149 = !DISubroutineType(types: !150)
!150 = !{!18, !92, !142, !151, !142}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!152 = !{!153, !154, !155, !156}
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !148, file: !1, line: 54, type: !92)
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !148, file: !1, line: 54, type: !142)
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !148, file: !1, line: 54, type: !151)
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "precision", arg: 4, scope: !148, file: !1, line: 54, type: !142)
!157 = !{}
!158 = !{i32 2, !"Dwarf Version", i32 2}
!159 = !{i32 2, !"Debug Info Version", i32 700000003}
!160 = !{i32 1, !"PIC Level", i32 2}
!161 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!162 = !DIExpression()
!163 = !DILocation(line: 348, column: 40, scope: !14)
!164 = !DILocation(line: 348, column: 50, scope: !14)
!165 = !DILocation(line: 349, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !14, file: !15, line: 349, column: 6)
!167 = !DILocation(line: 349, column: 6, scope: !166)
!168 = !{!169, !173, i64 12}
!169 = !{!"__sFILE", !170, i64 0, !173, i64 8, !173, i64 12, !174, i64 16, !174, i64 18, !175, i64 24, !173, i64 40, !170, i64 48, !170, i64 56, !170, i64 64, !170, i64 72, !170, i64 80, !175, i64 88, !170, i64 104, !173, i64 112, !171, i64 116, !171, i64 119, !175, i64 120, !173, i64 136, !176, i64 144}
!170 = !{!"any pointer", !171, i64 0}
!171 = !{!"omnipotent char", !172, i64 0}
!172 = !{!"Simple C/C++ TBAA"}
!173 = !{!"int", !171, i64 0}
!174 = !{!"short", !171, i64 0}
!175 = !{!"__sbuf", !170, i64 0, !173, i64 8}
!176 = !{!"long long", !171, i64 0}
!177 = !DILocation(line: 349, column: 15, scope: !166)
!178 = !DILocation(line: 349, column: 20, scope: !166)
!179 = !DILocation(line: 350, column: 10, scope: !166)
!180 = !DILocation(line: 349, column: 38, scope: !166)
!181 = !{!169, !173, i64 40}
!182 = !DILocation(line: 349, column: 31, scope: !166)
!183 = !DILocation(line: 349, column: 59, scope: !166)
!184 = !DILocation(line: 349, column: 47, scope: !166)
!185 = !DILocation(line: 350, column: 23, scope: !166)
!186 = !DILocation(line: 350, column: 16, scope: !166)
!187 = !DILocation(line: 350, column: 18, scope: !166)
!188 = !{!169, !170, i64 0}
!189 = !DILocation(line: 350, column: 21, scope: !166)
!190 = !{!171, !171, i64 0}
!191 = !DILocation(line: 350, column: 3, scope: !166)
!192 = !DILocation(line: 352, column: 11, scope: !166)
!193 = !DILocation(line: 352, column: 3, scope: !166)
!194 = !DILocation(line: 353, column: 1, scope: !14)
!195 = !DILocation(line: 114, column: 15, scope: !83)
!196 = !DILocation(line: 116, column: 20, scope: !83)
!197 = !DILocation(line: 116, column: 12, scope: !83)
!198 = !DILocation(line: 116, column: 57, scope: !83)
!199 = !DILocation(line: 116, column: 45, scope: !83)
!200 = !DILocation(line: 116, column: 5, scope: !83)
!201 = !DILocation(line: 38, column: 19, scope: !89)
!202 = !DILocation(line: 38, column: 30, scope: !89)
!203 = !DILocation(line: 50, column: 10, scope: !89)
!204 = !DILocation(line: 50, column: 3, scope: !89)
!205 = !DILocation(line: 54, column: 22, scope: !148)
!206 = !DILocation(line: 54, column: 34, scope: !148)
!207 = !DILocation(line: 54, column: 43, scope: !148)
!208 = !DILocation(line: 54, column: 55, scope: !148)
!209 = !DILocation(line: 81, column: 10, scope: !148)
!210 = !DILocation(line: 81, column: 3, scope: !148)
