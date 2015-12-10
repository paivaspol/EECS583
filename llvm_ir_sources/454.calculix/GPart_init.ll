; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct.__sFILE* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in GPart_init(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [60 x i8] c"\0A fatal error in GPart_setMessageInfo(%p,%d,%p)\0A bad input\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*

; Function Attrs: nounwind optsize ssp uwtable
define void @GPart_init(%struct._GPart* %gpart, %struct._Graph* %g) #0 {
  tail call void @llvm.dbg.value(metadata %struct._GPart* %gpart, i64 0, metadata !136, metadata !149), !dbg !150
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !137, metadata !149), !dbg !151
  %1 = icmp eq %struct._GPart* %gpart, null, !dbg !152
  %2 = icmp eq %struct._Graph* %g, null, !dbg !154
  %or.cond = or i1 %1, %2, !dbg !155
  br i1 %or.cond, label %7, label %3, !dbg !155

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !156
  %5 = load i32* %4, align 4, !dbg !156, !tbaa !157
  %6 = icmp slt i32 %5, 1, !dbg !163
  br i1 %6, label %7, label %10, !dbg !164

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !165, !tbaa !167
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, %struct._Graph* %g) #5, !dbg !168
  tail call void @exit(i32 -1) #6, !dbg !169
  unreachable, !dbg !169

; <label>:10                                      ; preds = %3
  tail call void @GPart_clearData(%struct._GPart* %gpart) #5, !dbg !170
  %11 = load i32* %4, align 4, !dbg !171, !tbaa !157
  %12 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2, !dbg !172
  store i32 %11, i32* %12, align 4, !dbg !173, !tbaa !174
  %13 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !177
  %14 = load i32* %13, align 4, !dbg !177, !tbaa !178
  %15 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 3, !dbg !179
  store i32 %14, i32* %15, align 4, !dbg !180, !tbaa !181
  %16 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1, !dbg !182
  store %struct._Graph* %g, %struct._Graph** %16, align 8, !dbg !183, !tbaa !184
  %17 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4, !dbg !185
  store i32 1, i32* %17, align 4, !dbg !186, !tbaa !187
  %18 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5, !dbg !188
  tail call void @IV_setSize(%struct._IV* %18, i32 %11) #5, !dbg !189
  tail call void @IV_fill(%struct._IV* %18, i32 1) #5, !dbg !190
  ret void, !dbg !191
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @GPart_clearData(%struct._GPart*) #3

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @GPart_setMessageInfo(%struct._GPart* %gpart, i32 %msglvl, %struct.__sFILE* %msgFile) #0 {
  tail call void @llvm.dbg.value(metadata %struct._GPart* %gpart, i64 0, metadata !142, metadata !149), !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %msglvl, i64 0, metadata !143, metadata !149), !dbg !193
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %msgFile, i64 0, metadata !144, metadata !149), !dbg !194
  %1 = icmp eq %struct._GPart* %gpart, null, !dbg !195
  br i1 %1, label %2, label %5, !dbg !197

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !198, !tbaa !167
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([60 x i8]* @.str1, i64 0, i64 0), %struct._GPart* null, i32 %msglvl, %struct.__sFILE* %msgFile) #5, !dbg !200
  tail call void @exit(i32 -1) #6, !dbg !201
  unreachable, !dbg !201

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11, !dbg !202
  store i32 %msglvl, i32* %6, align 4, !dbg !203, !tbaa !204
  %7 = icmp eq %struct.__sFILE* %msgFile, null, !dbg !205
  br i1 %7, label %10, label %8, !dbg !207

; <label>:8                                       ; preds = %5
  %9 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12, !dbg !208
  store %struct.__sFILE* %msgFile, %struct.__sFILE** %9, align 8, !dbg !210, !tbaa !211
  br label %14, !dbg !212

; <label>:10                                      ; preds = %5
  %11 = load i64* bitcast (%struct.__sFILE** @__stdoutp to i64*), align 8, !dbg !213, !tbaa !167
  %12 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12, !dbg !215
  %13 = bitcast %struct.__sFILE** %12 to i64*, !dbg !216
  store i64 %11, i64* %13, align 8, !dbg !216, !tbaa !211
  br label %14

; <label>:14                                      ; preds = %10, %8
  ret void, !dbg !217
}

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
!llvm.module.flags = !{!145, !146, !147}
!llvm.ident = !{!148}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !138}
!6 = !DISubprogram(name: "GPart_init", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._GPart*, %struct._Graph*)* @GPart_init, variables: !135)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !17}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPart", file: !11, line: 37, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../GPart.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GPart", file: !11, line: 38, size: 1152, align: 64, elements: !13)
!13 = !{!14, !16, !54, !55, !56, !57, !66, !67, !68, !69, !70, !71, !72}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !12, file: !11, line: 39, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !12, file: !11, line: 40, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !19, line: 49, baseType: !20)
!19 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !19, line: 50, size: 384, align: 64, elements: !21)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !52, !53}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !20, file: !19, line: 51, baseType: !15, size: 32, align: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !20, file: !19, line: 52, baseType: !15, size: 32, align: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !20, file: !19, line: 53, baseType: !15, size: 32, align: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !20, file: !19, line: 54, baseType: !15, size: 32, align: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !20, file: !19, line: 55, baseType: !15, size: 32, align: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !20, file: !19, line: 56, baseType: !15, size: 32, align: 32, offset: 160)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !20, file: !19, line: 57, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !31, line: 55, baseType: !32)
!31 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !31, line: 79, size: 384, align: 64, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !40, !42, !43}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !31, line: 80, baseType: !15, size: 32, align: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !32, file: !31, line: 81, baseType: !15, size: 32, align: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !32, file: !31, line: 82, baseType: !15, size: 32, align: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !32, file: !31, line: 83, baseType: !15, size: 32, align: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !32, file: !31, line: 84, baseType: !39, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !32, file: !31, line: 85, baseType: !41, size: 64, align: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !32, file: !31, line: 86, baseType: !15, size: 32, align: 32, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !32, file: !31, line: 87, baseType: !44, size: 64, align: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !31, line: 56, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !31, line: 102, size: 192, align: 64, elements: !47)
!47 = !{!48, !49, !50, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !46, file: !31, line: 103, baseType: !15, size: 32, align: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !46, file: !31, line: 104, baseType: !15, size: 32, align: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !46, file: !31, line: 105, baseType: !39, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !46, file: !31, line: 106, baseType: !44, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !20, file: !19, line: 58, baseType: !39, size: 64, align: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !20, file: !19, line: 59, baseType: !29, size: 64, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !12, file: !11, line: 41, baseType: !15, size: 32, align: 32, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !12, file: !11, line: 42, baseType: !15, size: 32, align: 32, offset: 160)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ncomp", scope: !12, file: !11, line: 43, baseType: !15, size: 32, align: 32, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "compidsIV", scope: !12, file: !11, line: 44, baseType: !58, size: 192, align: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !59, line: 20, baseType: !60)
!59 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !59, line: 21, size: 192, align: 64, elements: !61)
!61 = !{!62, !63, !64, !65}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !60, file: !59, line: 22, baseType: !15, size: 32, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !60, file: !59, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !60, file: !59, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !60, file: !59, line: 25, baseType: !39, size: 64, align: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cweightsIV", scope: !12, file: !11, line: 45, baseType: !58, size: 192, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !12, file: !11, line: 46, baseType: !9, size: 64, align: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !12, file: !11, line: 47, baseType: !9, size: 64, align: 64, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !12, file: !11, line: 48, baseType: !9, size: 64, align: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "vtxMapIV", scope: !12, file: !11, line: 49, baseType: !58, size: 192, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !12, file: !11, line: 50, baseType: !15, size: 32, align: 32, offset: 1024)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !12, file: !11, line: 51, baseType: !73, size: 64, align: 64, offset: 1088)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 153, baseType: !76)
!75 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !75, line: 122, size: 1216, align: 64, elements: !77)
!77 = !{!78, !81, !82, !83, !85, !86, !91, !92, !93, !97, !103, !113, !119, !120, !123, !124, !128, !132, !133, !134}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !76, file: !75, line: 123, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !76, file: !75, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !76, file: !75, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !76, file: !75, line: 126, baseType: !84, size: 16, align: 16, offset: 128)
!84 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !76, file: !75, line: 127, baseType: !84, size: 16, align: 16, offset: 144)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !76, file: !75, line: 128, baseType: !87, size: 128, align: 64, offset: 192)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !75, line: 88, size: 128, align: 64, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !87, file: !75, line: 89, baseType: !79, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !87, file: !75, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !76, file: !75, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !76, file: !75, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !76, file: !75, line: 133, baseType: !94, size: 64, align: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!15, !4}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !76, file: !75, line: 134, baseType: !98, size: 64, align: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!15, !4, !101, !15}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !76, file: !75, line: 135, baseType: !104, size: 64, align: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !4, !107, !15}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !75, line: 77, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !109, line: 71, baseType: !110)
!109 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !111, line: 46, baseType: !112)
!111 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!112 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !76, file: !75, line: 136, baseType: !114, size: 64, align: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!15, !4, !117, !15}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !76, file: !75, line: 139, baseType: !87, size: 128, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !76, file: !75, line: 140, baseType: !121, size: 64, align: 64, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !75, line: 94, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !76, file: !75, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !76, file: !75, line: 144, baseType: !125, size: 24, align: 8, offset: 928)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 24, align: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 3)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !76, file: !75, line: 145, baseType: !129, size: 8, align: 8, offset: 952)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 8, align: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 1)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !76, file: !75, line: 148, baseType: !87, size: 128, align: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !76, file: !75, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !76, file: !75, line: 152, baseType: !107, size: 64, align: 64, offset: 1152)
!135 = !{!136, !137}
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gpart", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 2, scope: !6, file: !1, line: 16, type: !17)
!138 = !DISubprogram(name: "GPart_setMessageInfo", scope: !1, file: !1, line: 42, type: !139, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._GPart*, i32, %struct.__sFILE*)* @GPart_setMessageInfo, variables: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !9, !15, !73}
!141 = !{!142, !143, !144}
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gpart", arg: 1, scope: !138, file: !1, line: 43, type: !9)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msglvl", arg: 2, scope: !138, file: !1, line: 44, type: !15)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgFile", arg: 3, scope: !138, file: !1, line: 45, type: !73)
!145 = !{i32 2, !"Dwarf Version", i32 2}
!146 = !{i32 2, !"Debug Info Version", i32 700000003}
!147 = !{i32 1, !"PIC Level", i32 2}
!148 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!149 = !DIExpression()
!150 = !DILocation(line: 15, column: 13, scope: !6)
!151 = !DILocation(line: 16, column: 13, scope: !6)
!152 = !DILocation(line: 18, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !6, file: !1, line: 18, column: 6)
!154 = !DILocation(line: 18, column: 25, scope: !153)
!155 = !DILocation(line: 18, column: 20, scope: !153)
!156 = !DILocation(line: 18, column: 39, scope: !153)
!157 = !{!158, !159, i64 4}
!158 = !{!"_Graph", !159, i64 0, !159, i64 4, !159, i64 8, !159, i64 12, !159, i64 16, !159, i64 20, !162, i64 24, !162, i64 32, !162, i64 40}
!159 = !{!"int", !160, i64 0}
!160 = !{!"omnipotent char", !161, i64 0}
!161 = !{!"Simple C/C++ TBAA"}
!162 = !{!"any pointer", !160, i64 0}
!163 = !DILocation(line: 18, column: 44, scope: !153)
!164 = !DILocation(line: 18, column: 6, scope: !6)
!165 = !DILocation(line: 19, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !153, file: !1, line: 18, column: 51)
!167 = !{!162, !162, i64 0}
!168 = !DILocation(line: 19, column: 4, scope: !166)
!169 = !DILocation(line: 21, column: 4, scope: !166)
!170 = !DILocation(line: 23, column: 1, scope: !6)
!171 = !DILocation(line: 24, column: 22, scope: !6)
!172 = !DILocation(line: 24, column: 8, scope: !6)
!173 = !DILocation(line: 24, column: 17, scope: !6)
!174 = !{!175, !159, i64 16}
!175 = !{!"_GPart", !159, i64 0, !162, i64 8, !159, i64 16, !159, i64 20, !159, i64 24, !176, i64 32, !176, i64 56, !162, i64 80, !162, i64 88, !162, i64 96, !176, i64 104, !159, i64 128, !162, i64 136}
!176 = !{!"_IV", !159, i64 0, !159, i64 4, !159, i64 8, !162, i64 16}
!177 = !DILocation(line: 25, column: 22, scope: !6)
!178 = !{!158, !159, i64 8}
!179 = !DILocation(line: 25, column: 8, scope: !6)
!180 = !DILocation(line: 25, column: 17, scope: !6)
!181 = !{!175, !159, i64 20}
!182 = !DILocation(line: 26, column: 8, scope: !6)
!183 = !DILocation(line: 26, column: 17, scope: !6)
!184 = !{!175, !162, i64 8}
!185 = !DILocation(line: 27, column: 8, scope: !6)
!186 = !DILocation(line: 27, column: 17, scope: !6)
!187 = !{!175, !159, i64 24}
!188 = !DILocation(line: 28, column: 20, scope: !6)
!189 = !DILocation(line: 28, column: 1, scope: !6)
!190 = !DILocation(line: 29, column: 1, scope: !6)
!191 = !DILocation(line: 31, column: 1, scope: !6)
!192 = !DILocation(line: 43, column: 13, scope: !138)
!193 = !DILocation(line: 44, column: 12, scope: !138)
!194 = !DILocation(line: 45, column: 13, scope: !138)
!195 = !DILocation(line: 47, column: 12, scope: !196)
!196 = distinct !DILexicalBlock(scope: !138, file: !1, line: 47, column: 6)
!197 = !DILocation(line: 47, column: 6, scope: !138)
!198 = !DILocation(line: 48, column: 12, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !1, line: 47, column: 22)
!200 = !DILocation(line: 48, column: 4, scope: !199)
!201 = !DILocation(line: 50, column: 4, scope: !199)
!202 = !DILocation(line: 52, column: 8, scope: !138)
!203 = !DILocation(line: 52, column: 15, scope: !138)
!204 = !{!175, !159, i64 128}
!205 = !DILocation(line: 53, column: 14, scope: !206)
!206 = distinct !DILexicalBlock(scope: !138, file: !1, line: 53, column: 6)
!207 = !DILocation(line: 53, column: 6, scope: !138)
!208 = !DILocation(line: 54, column: 11, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 53, column: 24)
!210 = !DILocation(line: 54, column: 19, scope: !209)
!211 = !{!175, !162, i64 136}
!212 = !DILocation(line: 55, column: 1, scope: !209)
!213 = !DILocation(line: 56, column: 21, scope: !214)
!214 = distinct !DILexicalBlock(scope: !206, file: !1, line: 55, column: 8)
!215 = !DILocation(line: 56, column: 11, scope: !214)
!216 = !DILocation(line: 56, column: 19, scope: !214)
!217 = !DILocation(line: 58, column: 1, scope: !138)
