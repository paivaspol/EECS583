; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct.__sFILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [91 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_basics.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in GPart_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in GPart_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in GPart_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._GPart* @GPart_new() #0 {
  %1 = tail call i8* @malloc(i64 144) #6, !dbg !154
  %2 = bitcast i8* %1 to %struct._GPart*, !dbg !154
  tail call void @llvm.dbg.value(metadata %struct._GPart* %2, i64 0, metadata !138, metadata !158), !dbg !159
  %3 = icmp eq i8* %1, null, !dbg !154
  br i1 %3, label %4, label %7, !dbg !160

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !161, !tbaa !163
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 144, i32 21, i8* getelementptr inbounds ([91 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !161
  tail call void @exit(i32 -1) #7, !dbg !161
  unreachable, !dbg !161

; <label>:7                                       ; preds = %0
  tail call void @GPart_setDefaultFields(%struct._GPart* %2) #8, !dbg !167
  ret %struct._GPart* %2, !dbg !168
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @GPart_setDefaultFields(%struct._GPart* %gpart) #0 {
  tail call void @llvm.dbg.value(metadata %struct._GPart* %gpart, i64 0, metadata !143, metadata !158), !dbg !169
  %1 = icmp eq %struct._GPart* %gpart, null, !dbg !170
  br i1 %1, label %2, label %5, !dbg !172

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !173, !tbaa !163
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._GPart* null) #6, !dbg !175
  tail call void @exit(i32 -1) #7, !dbg !176
  unreachable, !dbg !176

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 0, !dbg !177
  store i32 -1, i32* %6, align 4, !dbg !178, !tbaa !179
  %7 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1, !dbg !183
  %8 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 7, !dbg !184
  %9 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5, !dbg !185
  %10 = bitcast %struct._Graph** %7 to i8*, !dbg !186
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 20, i32 8, i1 false), !dbg !187
  %11 = bitcast %struct._GPart** %8 to i8*, !dbg !186
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false), !dbg !188
  tail call void @IV_setDefaultFields(%struct._IV* %9) #6, !dbg !186
  %12 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6, !dbg !189
  tail call void @IV_setDefaultFields(%struct._IV* %12) #6, !dbg !190
  %13 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 10, !dbg !191
  tail call void @IV_setDefaultFields(%struct._IV* %13) #6, !dbg !192
  %14 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11, !dbg !193
  store i32 0, i32* %14, align 4, !dbg !194, !tbaa !195
  %15 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12, !dbg !196
  store %struct.__sFILE* null, %struct.__sFILE** %15, align 8, !dbg !197, !tbaa !198
  ret void, !dbg !199
}

; Function Attrs: optsize
declare void @IV_setDefaultFields(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @GPart_clearData(%struct._GPart* %gpart) #0 {
  tail call void @llvm.dbg.value(metadata %struct._GPart* %gpart, i64 0, metadata !146, metadata !158), !dbg !200
  %1 = icmp eq %struct._GPart* %gpart, null, !dbg !201
  br i1 %1, label %2, label %5, !dbg !203

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !204, !tbaa !163
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._GPart* null) #6, !dbg !206
  tail call void @exit(i32 -1) #7, !dbg !207
  unreachable, !dbg !207

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5, !dbg !208
  tail call void @IV_clearData(%struct._IV* %6) #6, !dbg !209
  %7 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6, !dbg !210
  tail call void @IV_clearData(%struct._IV* %7) #6, !dbg !211
  %8 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 10, !dbg !212
  tail call void @IV_clearData(%struct._IV* %8) #6, !dbg !213
  tail call void @GPart_setDefaultFields(%struct._GPart* %gpart) #8, !dbg !214
  ret void, !dbg !215
}

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @GPart_free(%struct._GPart* %gpart) #0 {
  tail call void @llvm.dbg.value(metadata %struct._GPart* %gpart, i64 0, metadata !149, metadata !158), !dbg !216
  %1 = icmp eq %struct._GPart* %gpart, null, !dbg !217
  br i1 %1, label %2, label %5, !dbg !219

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !220, !tbaa !163
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), %struct._GPart* null) #6, !dbg !222
  tail call void @exit(i32 -1) #7, !dbg !223
  unreachable, !dbg !223

; <label>:5                                       ; preds = %0
  tail call void @GPart_clearData(%struct._GPart* %gpart) #8, !dbg !224
  %6 = bitcast %struct._GPart* %gpart to i8*, !dbg !225
  tail call void @free(i8* %6) #8, !dbg !225
  tail call void @llvm.dbg.value(metadata %struct._GPart* null, i64 0, metadata !149, metadata !158), !dbg !216
  ret void, !dbg !228
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
!llvm.module.flags = !{!150, !151, !152}
!llvm.ident = !{!153}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !133, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !132, !89, !98}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GPart", file: !6, line: 38, size: 1152, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../GPart.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !48, !49, !50, !51, !60, !61, !64, !65, !66, !67, !68}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5, file: !6, line: 39, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5, file: !6, line: 40, baseType: !11, size: 64, align: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !13, line: 49, baseType: !14)
!13 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !13, line: 50, size: 384, align: 64, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !46, !47}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !13, line: 51, baseType: !9, size: 32, align: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !14, file: !13, line: 52, baseType: !9, size: 32, align: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !14, file: !13, line: 53, baseType: !9, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !14, file: !13, line: 54, baseType: !9, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !14, file: !13, line: 55, baseType: !9, size: 32, align: 32, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !14, file: !13, line: 56, baseType: !9, size: 32, align: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !14, file: !13, line: 57, baseType: !23, size: 64, align: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !25, line: 55, baseType: !26)
!25 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !25, line: 79, size: 384, align: 64, elements: !27)
!27 = !{!28, !29, !30, !31, !32, !34, !36, !37}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !25, line: 80, baseType: !9, size: 32, align: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !26, file: !25, line: 81, baseType: !9, size: 32, align: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !26, file: !25, line: 82, baseType: !9, size: 32, align: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !26, file: !25, line: 83, baseType: !9, size: 32, align: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !26, file: !25, line: 84, baseType: !33, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !26, file: !25, line: 85, baseType: !35, size: 64, align: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !26, file: !25, line: 86, baseType: !9, size: 32, align: 32, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !26, file: !25, line: 87, baseType: !38, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !25, line: 56, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !25, line: 102, size: 192, align: 64, elements: !41)
!41 = !{!42, !43, !44, !45}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !40, file: !25, line: 103, baseType: !9, size: 32, align: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !40, file: !25, line: 104, baseType: !9, size: 32, align: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !40, file: !25, line: 105, baseType: !33, size: 64, align: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !40, file: !25, line: 106, baseType: !38, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !14, file: !13, line: 58, baseType: !33, size: 64, align: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !14, file: !13, line: 59, baseType: !23, size: 64, align: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !5, file: !6, line: 41, baseType: !9, size: 32, align: 32, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !5, file: !6, line: 42, baseType: !9, size: 32, align: 32, offset: 160)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ncomp", scope: !5, file: !6, line: 43, baseType: !9, size: 32, align: 32, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "compidsIV", scope: !5, file: !6, line: 44, baseType: !52, size: 192, align: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !53, line: 20, baseType: !54)
!53 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !53, line: 21, size: 192, align: 64, elements: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !54, file: !53, line: 22, baseType: !9, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !54, file: !53, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !54, file: !53, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !54, file: !53, line: 25, baseType: !33, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "cweightsIV", scope: !5, file: !6, line: 45, baseType: !52, size: 192, align: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !5, file: !6, line: 46, baseType: !62, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPart", file: !6, line: 37, baseType: !5)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !5, file: !6, line: 47, baseType: !62, size: 64, align: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !5, file: !6, line: 48, baseType: !62, size: 64, align: 64, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "vtxMapIV", scope: !5, file: !6, line: 49, baseType: !52, size: 192, align: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !5, file: !6, line: 50, baseType: !9, size: 32, align: 32, offset: 1024)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !5, file: !6, line: 51, baseType: !69, size: 64, align: 64, offset: 1088)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 153, baseType: !72)
!71 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !71, line: 122, size: 1216, align: 64, elements: !73)
!73 = !{!74, !77, !78, !79, !81, !82, !87, !88, !90, !94, !100, !110, !116, !117, !120, !121, !125, !129, !130, !131}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !72, file: !71, line: 123, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !72, file: !71, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !72, file: !71, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !72, file: !71, line: 126, baseType: !80, size: 16, align: 16, offset: 128)
!80 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !72, file: !71, line: 127, baseType: !80, size: 16, align: 16, offset: 144)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !72, file: !71, line: 128, baseType: !83, size: 128, align: 64, offset: 192)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !71, line: 88, size: 128, align: 64, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !83, file: !71, line: 89, baseType: !75, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !83, file: !71, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !72, file: !71, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !72, file: !71, line: 132, baseType: !89, size: 64, align: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !72, file: !71, line: 133, baseType: !91, size: 64, align: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!9, !89}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !72, file: !71, line: 134, baseType: !95, size: 64, align: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!9, !89, !98, !9}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !72, file: !71, line: 135, baseType: !101, size: 64, align: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !89, !104, !9}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !71, line: 77, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !106, line: 71, baseType: !107)
!106 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !108, line: 46, baseType: !109)
!108 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!109 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !72, file: !71, line: 136, baseType: !111, size: 64, align: 64, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!9, !89, !114, !9}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !72, file: !71, line: 139, baseType: !83, size: 128, align: 64, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !72, file: !71, line: 140, baseType: !118, size: 64, align: 64, offset: 832)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !71, line: 94, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !72, file: !71, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !72, file: !71, line: 144, baseType: !122, size: 24, align: 8, offset: 928)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 24, align: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 3)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !72, file: !71, line: 145, baseType: !126, size: 8, align: 8, offset: 952)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 8, align: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 1)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !72, file: !71, line: 148, baseType: !83, size: 128, align: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !72, file: !71, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !72, file: !71, line: 152, baseType: !104, size: 64, align: 64, offset: 1152)
!132 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!133 = !{!134, !139, !144, !147}
!134 = !DISubprogram(name: "GPart_new", scope: !1, file: !1, line: 16, type: !135, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._GPart* ()* @GPart_new, variables: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{!62}
!137 = !{!138}
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gpart", scope: !134, file: !1, line: 19, type: !62)
!139 = !DISubprogram(name: "GPart_setDefaultFields", scope: !1, file: !1, line: 38, type: !140, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._GPart*)* @GPart_setDefaultFields, variables: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !62}
!142 = !{!143}
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gpart", arg: 1, scope: !139, file: !1, line: 39, type: !62)
!144 = !DISubprogram(name: "GPart_clearData", scope: !1, file: !1, line: 73, type: !140, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._GPart*)* @GPart_clearData, variables: !145)
!145 = !{!146}
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gpart", arg: 1, scope: !144, file: !1, line: 74, type: !62)
!147 = !DISubprogram(name: "GPart_free", scope: !1, file: !1, line: 99, type: !140, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._GPart*)* @GPart_free, variables: !148)
!148 = !{!149}
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gpart", arg: 1, scope: !147, file: !1, line: 100, type: !62)
!150 = !{i32 2, !"Dwarf Version", i32 2}
!151 = !{i32 2, !"Debug Info Version", i32 700000003}
!152 = !{i32 1, !"PIC Level", i32 2}
!153 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!154 = !DILocation(line: 21, column: 1, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 21, column: 1)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 21, column: 1)
!157 = distinct !DILexicalBlock(scope: !134, file: !1, line: 21, column: 1)
!158 = !DIExpression()
!159 = !DILocation(line: 19, column: 10, scope: !134)
!160 = !DILocation(line: 21, column: 1, scope: !156)
!161 = !DILocation(line: 21, column: 1, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !1, line: 21, column: 1)
!163 = !{!164, !164, i64 0}
!164 = !{!"any pointer", !165, i64 0}
!165 = !{!"omnipotent char", !166, i64 0}
!166 = !{!"Simple C/C++ TBAA"}
!167 = !DILocation(line: 23, column: 1, scope: !134)
!168 = !DILocation(line: 25, column: 1, scope: !134)
!169 = !DILocation(line: 39, column: 13, scope: !139)
!170 = !DILocation(line: 41, column: 12, scope: !171)
!171 = distinct !DILexicalBlock(scope: !139, file: !1, line: 41, column: 6)
!172 = !DILocation(line: 41, column: 6, scope: !139)
!173 = !DILocation(line: 42, column: 12, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 41, column: 22)
!175 = !DILocation(line: 42, column: 4, scope: !174)
!176 = !DILocation(line: 44, column: 4, scope: !174)
!177 = !DILocation(line: 46, column: 8, scope: !139)
!178 = !DILocation(line: 46, column: 17, scope: !139)
!179 = !{!180, !181, i64 0}
!180 = !{!"_GPart", !181, i64 0, !164, i64 8, !181, i64 16, !181, i64 20, !181, i64 24, !182, i64 32, !182, i64 56, !164, i64 80, !164, i64 88, !164, i64 96, !182, i64 104, !181, i64 128, !164, i64 136}
!181 = !{!"int", !165, i64 0}
!182 = !{!"_IV", !181, i64 0, !181, i64 4, !181, i64 8, !164, i64 16}
!183 = !DILocation(line: 47, column: 8, scope: !139)
!184 = !DILocation(line: 51, column: 8, scope: !139)
!185 = !DILocation(line: 54, column: 29, scope: !139)
!186 = !DILocation(line: 54, column: 1, scope: !139)
!187 = !DILocation(line: 48, column: 17, scope: !139)
!188 = !DILocation(line: 51, column: 17, scope: !139)
!189 = !DILocation(line: 55, column: 29, scope: !139)
!190 = !DILocation(line: 55, column: 1, scope: !139)
!191 = !DILocation(line: 56, column: 29, scope: !139)
!192 = !DILocation(line: 56, column: 1, scope: !139)
!193 = !DILocation(line: 57, column: 8, scope: !139)
!194 = !DILocation(line: 57, column: 16, scope: !139)
!195 = !{!180, !181, i64 128}
!196 = !DILocation(line: 58, column: 8, scope: !139)
!197 = !DILocation(line: 58, column: 16, scope: !139)
!198 = !{!180, !164, i64 136}
!199 = !DILocation(line: 60, column: 1, scope: !139)
!200 = !DILocation(line: 74, column: 13, scope: !144)
!201 = !DILocation(line: 76, column: 12, scope: !202)
!202 = distinct !DILexicalBlock(scope: !144, file: !1, line: 76, column: 6)
!203 = !DILocation(line: 76, column: 6, scope: !144)
!204 = !DILocation(line: 77, column: 12, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !1, line: 76, column: 22)
!206 = !DILocation(line: 77, column: 4, scope: !205)
!207 = !DILocation(line: 79, column: 4, scope: !205)
!208 = !DILocation(line: 81, column: 22, scope: !144)
!209 = !DILocation(line: 81, column: 1, scope: !144)
!210 = !DILocation(line: 82, column: 22, scope: !144)
!211 = !DILocation(line: 82, column: 1, scope: !144)
!212 = !DILocation(line: 83, column: 22, scope: !144)
!213 = !DILocation(line: 83, column: 1, scope: !144)
!214 = !DILocation(line: 84, column: 1, scope: !144)
!215 = !DILocation(line: 86, column: 1, scope: !144)
!216 = !DILocation(line: 100, column: 13, scope: !147)
!217 = !DILocation(line: 102, column: 12, scope: !218)
!218 = distinct !DILexicalBlock(scope: !147, file: !1, line: 102, column: 6)
!219 = !DILocation(line: 102, column: 6, scope: !147)
!220 = !DILocation(line: 103, column: 12, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !1, line: 102, column: 22)
!222 = !DILocation(line: 103, column: 4, scope: !221)
!223 = !DILocation(line: 105, column: 4, scope: !221)
!224 = !DILocation(line: 107, column: 1, scope: !147)
!225 = !DILocation(line: 112, column: 1, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 112, column: 1)
!227 = distinct !DILexicalBlock(scope: !147, file: !1, line: 112, column: 1)
!228 = !DILocation(line: 114, column: 1, scope: !147)
