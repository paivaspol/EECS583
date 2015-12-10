; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Overloadables.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.GROUPDYNAMICDATA = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [92 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/Overloadables.c,v 1.5 2001/11/05 15:01:46 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_Overloadables_c() #0 {
  ret i8* getelementptr inbounds ([92 x i8]* @.str, i64 0, i64 0), !dbg !185
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_GroupDynamicData(%struct.cGH* %GH, i32 %group, %struct.GROUPDYNAMICDATA* %data) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !140, metadata !186), !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !141, metadata !186), !dbg !188
  tail call void @llvm.dbg.value(metadata %struct.GROUPDYNAMICDATA* %data, i64 0, metadata !142, metadata !186), !dbg !189
  %1 = icmp eq %struct.GROUPDYNAMICDATA* %data, null, !dbg !190
  br i1 %1, label %60, label %2, !dbg !192

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_GroupTypeI(i32 %group) #4, !dbg !193
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !143, metadata !186), !dbg !195
  %4 = and i32 %3, -2, !dbg !196
  %5 = icmp eq i32 %4, 2, !dbg !196
  br i1 %5, label %6, label %60, !dbg !196

; <label>:6                                       ; preds = %2
  %7 = tail call i32 @CCTK_FirstVarIndexI(i32 %group) #4, !dbg !198
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !144, metadata !186), !dbg !200
  %8 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #4, !dbg !201
  tail call void @llvm.dbg.value(metadata %struct.PGH* %8, i64 0, metadata !145, metadata !186), !dbg !202
  %9 = icmp eq %struct.PGH* %8, null, !dbg !203
  br i1 %9, label %60, label %10, !dbg !205

; <label>:10                                      ; preds = %6
  %11 = sext i32 %7 to i64, !dbg !206
  %12 = getelementptr inbounds %struct.PGH* %8, i64 0, i32 7, !dbg !208
  %13 = bitcast i8**** %12 to %struct.PGA****, !dbg !208
  %14 = load %struct.PGA**** %13, align 8, !dbg !208, !tbaa !209
  %15 = getelementptr inbounds %struct.PGA*** %14, i64 %11, !dbg !206
  %16 = load %struct.PGA*** %15, align 8, !dbg !206, !tbaa !216
  %17 = load %struct.PGA** %16, align 8, !dbg !206, !tbaa !216
  %18 = getelementptr inbounds %struct.PGA* %17, i64 0, i32 10, !dbg !217
  %19 = load %struct.PGExtras** %18, align 8, !dbg !217, !tbaa !218
  tail call void @llvm.dbg.value(metadata %struct.PGExtras* %19, i64 0, metadata !177, metadata !186), !dbg !220
  %20 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 0, !dbg !221
  %21 = load i32* %20, align 4, !dbg !221, !tbaa !222
  %22 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 0, !dbg !224
  store i32 %21, i32* %22, align 4, !dbg !225, !tbaa !226
  %23 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 6, !dbg !228
  %24 = bitcast i32** %23 to i64*, !dbg !228
  %25 = load i64* %24, align 8, !dbg !228, !tbaa !229
  %26 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 2, !dbg !230
  %27 = bitcast i32** %26 to i64*, !dbg !231
  store i64 %25, i64* %27, align 8, !dbg !231, !tbaa !232
  %28 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 1, !dbg !233
  %29 = bitcast i32** %28 to i64*, !dbg !233
  %30 = load i64* %29, align 8, !dbg !233, !tbaa !234
  %31 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 1, !dbg !235
  %32 = bitcast i32** %31 to i64*, !dbg !236
  store i64 %30, i64* %32, align 8, !dbg !236, !tbaa !237
  %33 = getelementptr inbounds %struct.PGH* %8, i64 0, i32 3, !dbg !238
  %34 = load i32* %33, align 4, !dbg !238, !tbaa !239
  %35 = sext i32 %34 to i64, !dbg !240
  %36 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 3, !dbg !241
  %37 = load i32*** %36, align 8, !dbg !241, !tbaa !242
  %38 = getelementptr inbounds i32** %37, i64 %35, !dbg !240
  %39 = bitcast i32** %38 to i64*, !dbg !240
  %40 = load i64* %39, align 8, !dbg !240, !tbaa !216
  %41 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 3, !dbg !243
  %42 = bitcast i32** %41 to i64*, !dbg !244
  store i64 %40, i64* %42, align 8, !dbg !244, !tbaa !245
  %43 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 4, !dbg !246
  %44 = load i32*** %43, align 8, !dbg !246, !tbaa !247
  %45 = getelementptr inbounds i32** %44, i64 %35, !dbg !248
  %46 = bitcast i32** %45 to i64*, !dbg !248
  %47 = load i64* %46, align 8, !dbg !248, !tbaa !216
  %48 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 4, !dbg !249
  %49 = bitcast i32** %48 to i64*, !dbg !250
  store i64 %47, i64* %49, align 8, !dbg !250, !tbaa !251
  %50 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 12, !dbg !252
  %51 = bitcast i32** %50 to i64*, !dbg !252
  %52 = load i64* %51, align 8, !dbg !252, !tbaa !253
  %53 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 6, !dbg !254
  %54 = bitcast i32** %53 to i64*, !dbg !255
  store i64 %52, i64* %54, align 8, !dbg !255, !tbaa !256
  %55 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 5, !dbg !257
  %56 = bitcast i32** %55 to i64*, !dbg !257
  %57 = load i64* %56, align 8, !dbg !257, !tbaa !258
  %58 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 5, !dbg !259
  %59 = bitcast i32** %58 to i64*, !dbg !260
  store i64 %57, i64* %59, align 8, !dbg !260, !tbaa !261
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !178, metadata !186), !dbg !262
  br label %60, !dbg !263

; <label>:60                                      ; preds = %0, %2, %6, %10
  %retval.0 = phi i32 [ 0, %10 ], [ -3, %6 ], [ -2, %2 ], [ -1, %0 ]
  ret i32 %retval.0, !dbg !264
}

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!181, !182, !183}
!llvm.ident = !{!184}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !82, globals: !179, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Overloadables.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGA", file: !8, line: 126, baseType: !9)
!8 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGA", file: !8, line: 96, size: 832, align: 64, elements: !10)
!10 = !{!11, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !54, !63, !77, !78, !79, !80}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !8, line: 98, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !9, file: !8, line: 99, baseType: !15, size: 32, align: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "arrayid", scope: !9, file: !8, line: 100, baseType: !15, size: 32, align: 32, offset: 96)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "padddata", scope: !9, file: !8, line: 101, baseType: !18, size: 64, align: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !9, file: !8, line: 102, baseType: !18, size: 64, align: 64, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !9, file: !8, line: 103, baseType: !15, size: 32, align: 32, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "stagger", scope: !9, file: !8, line: 104, baseType: !15, size: 32, align: 32, offset: 288)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !9, file: !8, line: 106, baseType: !18, size: 64, align: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "varsize", scope: !9, file: !8, line: 114, baseType: !15, size: 32, align: 32, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "vtype", scope: !9, file: !8, line: 115, baseType: !15, size: 32, align: 32, offset: 416)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "extras", scope: !9, file: !8, line: 117, baseType: !26, size: 64, align: 64, offset: 448)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGExtras", file: !8, line: 72, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGExtras", file: !8, line: 37, size: 2368, align: 64, elements: !29)
!29 = !{!30, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !51, !53}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !28, file: !8, line: 39, baseType: !15, size: 32, align: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "nsize", scope: !28, file: !8, line: 41, baseType: !32, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "maxskew", scope: !28, file: !8, line: 44, baseType: !34, size: 64, align: 64, offset: 128)
!34 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !28, file: !8, line: 45, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !28, file: !8, line: 46, baseType: !36, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !28, file: !8, line: 47, baseType: !32, size: 64, align: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "lnsize", scope: !28, file: !8, line: 49, baseType: !32, size: 64, align: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !28, file: !8, line: 50, baseType: !15, size: 32, align: 32, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "rnpoints", scope: !28, file: !8, line: 51, baseType: !32, size: 64, align: 64, offset: 512)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "rnsize", scope: !28, file: !8, line: 52, baseType: !36, size: 64, align: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !28, file: !8, line: 55, baseType: !32, size: 64, align: 64, offset: 640)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_volume", scope: !28, file: !8, line: 56, baseType: !32, size: 64, align: 64, offset: 704)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !28, file: !8, line: 59, baseType: !32, size: 64, align: 64, offset: 768)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ownership", scope: !28, file: !8, line: 60, baseType: !47, size: 512, align: 64, offset: 832)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 512, align: 64, elements: !48)
!48 = !{!49, !50}
!49 = !DISubrange(count: 4)
!50 = !DISubrange(count: 2)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ghosts", scope: !28, file: !8, line: 64, baseType: !52, size: 512, align: 64, offset: 1344)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 512, align: 64, elements: !48)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !28, file: !8, line: 68, baseType: !52, size: 512, align: 64, offset: 1856)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "connectivity", scope: !9, file: !8, line: 118, baseType: !55, size: 64, align: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "pConnectivity", file: !8, line: 29, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "PConnectivity", file: !8, line: 23, size: 256, align: 64, elements: !58)
!58 = !{!59, !60, !61, !62}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !57, file: !8, line: 25, baseType: !15, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !57, file: !8, line: 26, baseType: !32, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "neighbours", scope: !57, file: !8, line: 27, baseType: !36, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !57, file: !8, line: 28, baseType: !32, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !9, file: !8, line: 120, baseType: !64, size: 64, align: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "pComm", file: !8, line: 94, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "PComm", file: !8, line: 74, size: 448, align: 64, elements: !67)
!67 = !{!68, !69, !71, !72, !73, !74, !75, !76}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_sz", scope: !66, file: !8, line: 77, baseType: !32, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !66, file: !8, line: 78, baseType: !70, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer", scope: !66, file: !8, line: 79, baseType: !70, size: 64, align: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "commflag", scope: !66, file: !8, line: 80, baseType: !15, size: 32, align: 32, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "docomm", scope: !66, file: !8, line: 82, baseType: !32, size: 64, align: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "first_var", scope: !66, file: !8, line: 84, baseType: !15, size: 32, align: 32, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "n_vars", scope: !66, file: !8, line: 85, baseType: !15, size: 32, align: 32, offset: 352)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "sync_timelevel", scope: !66, file: !8, line: 86, baseType: !15, size: 32, align: 32, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "groupcomm", scope: !9, file: !8, line: 121, baseType: !64, size: 64, align: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "vector_size", scope: !9, file: !8, line: 123, baseType: !15, size: 32, align: 32, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "vector_entry", scope: !9, file: !8, line: 124, baseType: !15, size: 32, align: 32, offset: 736)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "vector_base", scope: !9, file: !8, line: 125, baseType: !81, size: 64, align: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!82 = !{!83, !88}
!83 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGH_Overloadables_c", scope: !1, file: !1, line: 19, type: !84, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGH_Overloadables_c, variables: !2)
!84 = !DISubroutineType(types: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!88 = !DISubprogram(name: "PUGH_GroupDynamicData", scope: !1, file: !1, line: 57, type: !89, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* @PUGH_GroupDynamicData, variables: !139)
!89 = !DISubroutineType(types: !90)
!90 = !{!15, !91, !15, !125}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !94, line: 75, baseType: !95)
!94 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!95 = !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 24, size: 1216, align: 64, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !109, !110, !111, !112, !113, !114, !115, !117, !118}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !95, file: !94, line: 26, baseType: !15, size: 32, align: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !95, file: !94, line: 27, baseType: !15, size: 32, align: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !95, file: !94, line: 30, baseType: !32, size: 64, align: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !95, file: !94, line: 31, baseType: !32, size: 64, align: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !95, file: !94, line: 32, baseType: !32, size: 64, align: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !95, file: !94, line: 33, baseType: !32, size: 64, align: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !95, file: !94, line: 36, baseType: !32, size: 64, align: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !95, file: !94, line: 39, baseType: !32, size: 64, align: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !95, file: !94, line: 40, baseType: !32, size: 64, align: 64, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !95, file: !94, line: 43, baseType: !34, size: 64, align: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !95, file: !94, line: 44, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !95, file: !94, line: 47, baseType: !108, size: 64, align: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !95, file: !94, line: 51, baseType: !32, size: 64, align: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !95, file: !94, line: 54, baseType: !32, size: 64, align: 64, offset: 768)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !95, file: !94, line: 57, baseType: !15, size: 32, align: 32, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !95, file: !94, line: 60, baseType: !32, size: 64, align: 64, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !95, file: !94, line: 63, baseType: !34, size: 64, align: 64, offset: 960)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !95, file: !94, line: 67, baseType: !116, size: 64, align: 64, offset: 1024)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !95, file: !94, line: 70, baseType: !70, size: 64, align: 64, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !95, file: !94, line: 73, baseType: !119, size: 64, align: 64, offset: 1152)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !94, line: 22, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 18, size: 16, align: 8, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !121, file: !94, line: 20, baseType: !13, size: 8, align: 8)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !121, file: !94, line: 21, baseType: !13, size: 8, align: 8, offset: 8)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGroupDynamicData", file: !127, line: 23, baseType: !128)
!127 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_GroupsOnGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "GROUPDYNAMICDATA", file: !127, line: 14, size: 448, align: 64, elements: !129)
!129 = !{!130, !131, !134, !135, !136, !137, !138}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !128, file: !127, line: 16, baseType: !15, size: 32, align: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "gsh", scope: !128, file: !127, line: 17, baseType: !132, size: 64, align: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lsh", scope: !128, file: !127, line: 18, baseType: !132, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lbnd", scope: !128, file: !127, line: 19, baseType: !132, size: 64, align: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ubnd", scope: !128, file: !127, line: 20, baseType: !132, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !128, file: !127, line: 21, baseType: !132, size: 64, align: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !128, file: !127, line: 22, baseType: !132, size: 64, align: 64, offset: 384)
!139 = !{!140, !141, !142, !143, !144, !145, !177, !178}
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !88, file: !1, line: 57, type: !91)
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !88, file: !1, line: 57, type: !15)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !88, file: !1, line: 57, type: !125)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gtype", scope: !88, file: !1, line: 59, type: !15)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "var", scope: !88, file: !1, line: 59, type: !15)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pughGH", scope: !88, file: !1, line: 60, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGH", file: !148, line: 81, baseType: !149)
!148 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGH", file: !148, line: 13, size: 1152, align: 64, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !174, !176}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "callerid", scope: !149, file: !148, line: 17, baseType: !18, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !149, file: !148, line: 18, baseType: !15, size: 32, align: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !149, file: !148, line: 21, baseType: !15, size: 32, align: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "myproc", scope: !149, file: !148, line: 22, baseType: !15, size: 32, align: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "commmodel", scope: !149, file: !148, line: 23, baseType: !15, size: 32, align: 32, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nvariables", scope: !149, file: !148, line: 27, baseType: !15, size: 32, align: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "narrays", scope: !149, file: !148, line: 28, baseType: !15, size: 32, align: 32, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !149, file: !148, line: 29, baseType: !116, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "timelevel", scope: !149, file: !148, line: 32, baseType: !15, size: 32, align: 32, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !149, file: !148, line: 34, baseType: !32, size: 64, align: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !149, file: !148, line: 35, baseType: !15, size: 32, align: 32, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "forceSync", scope: !149, file: !148, line: 37, baseType: !15, size: 32, align: 32, offset: 480)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dx0", scope: !149, file: !148, line: 41, baseType: !34, size: 64, align: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dy0", scope: !149, file: !148, line: 41, baseType: !34, size: 64, align: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dz0", scope: !149, file: !148, line: 41, baseType: !34, size: 64, align: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dt0", scope: !149, file: !148, line: 41, baseType: !34, size: 64, align: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !149, file: !148, line: 44, baseType: !15, size: 32, align: 32, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mglevel", scope: !149, file: !148, line: 45, baseType: !15, size: 32, align: 32, offset: 800)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "convlevel", scope: !149, file: !148, line: 46, baseType: !15, size: 32, align: 32, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !149, file: !148, line: 49, baseType: !15, size: 32, align: 32, offset: 864)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "comm_time", scope: !149, file: !148, line: 53, baseType: !15, size: 32, align: 32, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "GFExtras", scope: !149, file: !148, line: 76, baseType: !173, size: 64, align: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "Connectivity", scope: !149, file: !148, line: 77, baseType: !175, size: 64, align: 64, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "identity_string", scope: !149, file: !148, line: 79, baseType: !12, size: 64, align: 64, offset: 1088)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "extras", scope: !88, file: !1, line: 61, type: !26)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !88, file: !1, line: 62, type: !15)
!179 = !{!180}
!180 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 18, type: !86, isLocal: true, isDefinition: true)
!181 = !{i32 2, !"Dwarf Version", i32 2}
!182 = !{i32 2, !"Debug Info Version", i32 700000003}
!183 = !{i32 1, !"PIC Level", i32 2}
!184 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!185 = !DILocation(line: 19, column: 1, scope: !83)
!186 = !DIExpression()
!187 = !DILocation(line: 57, column: 39, scope: !88)
!188 = !DILocation(line: 57, column: 47, scope: !88)
!189 = !DILocation(line: 57, column: 73, scope: !88)
!190 = !DILocation(line: 65, column: 7, scope: !191)
!191 = distinct !DILexicalBlock(scope: !88, file: !1, line: 65, column: 7)
!192 = !DILocation(line: 65, column: 7, scope: !88)
!193 = !DILocation(line: 67, column: 13, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 66, column: 3)
!195 = !DILocation(line: 59, column: 7, scope: !88)
!196 = !DILocation(line: 68, column: 26, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 68, column: 9)
!198 = !DILocation(line: 71, column: 13, scope: !199)
!199 = distinct !DILexicalBlock(scope: !197, file: !1, line: 69, column: 5)
!200 = !DILocation(line: 59, column: 14, scope: !88)
!201 = !DILocation(line: 73, column: 16, scope: !199)
!202 = !DILocation(line: 60, column: 8, scope: !88)
!203 = !DILocation(line: 74, column: 11, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !1, line: 74, column: 11)
!205 = !DILocation(line: 74, column: 11, scope: !199)
!206 = !DILocation(line: 76, column: 18, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 75, column: 7)
!208 = !DILocation(line: 76, column: 37, scope: !207)
!209 = !{!210, !211, i64 32}
!210 = !{!"PGH", !211, i64 0, !214, i64 8, !214, i64 12, !214, i64 16, !214, i64 20, !214, i64 24, !214, i64 28, !211, i64 32, !214, i64 40, !211, i64 48, !214, i64 56, !214, i64 60, !215, i64 64, !215, i64 72, !215, i64 80, !215, i64 88, !214, i64 96, !214, i64 100, !214, i64 104, !214, i64 108, !214, i64 112, !211, i64 120, !211, i64 128, !211, i64 136}
!211 = !{!"any pointer", !212, i64 0}
!212 = !{!"omnipotent char", !213, i64 0}
!213 = !{!"Simple C/C++ TBAA"}
!214 = !{!"int", !212, i64 0}
!215 = !{!"double", !212, i64 0}
!216 = !{!211, !211, i64 0}
!217 = !DILocation(line: 76, column: 57, scope: !207)
!218 = !{!219, !211, i64 56}
!219 = !{!"PGA", !211, i64 0, !214, i64 8, !214, i64 12, !211, i64 16, !211, i64 24, !214, i64 32, !214, i64 36, !211, i64 40, !214, i64 48, !214, i64 52, !211, i64 56, !211, i64 64, !211, i64 72, !211, i64 80, !214, i64 88, !214, i64 92, !211, i64 96}
!220 = !DILocation(line: 61, column: 13, scope: !88)
!221 = !DILocation(line: 78, column: 37, scope: !207)
!222 = !{!223, !214, i64 0}
!223 = !{!"PGExtras", !214, i64 0, !211, i64 8, !215, i64 16, !211, i64 24, !211, i64 32, !211, i64 40, !211, i64 48, !214, i64 56, !211, i64 64, !211, i64 72, !211, i64 80, !211, i64 88, !211, i64 96, !212, i64 104, !212, i64 168, !212, i64 232}
!224 = !DILocation(line: 78, column: 15, scope: !207)
!225 = !DILocation(line: 78, column: 27, scope: !207)
!226 = !{!227, !214, i64 0}
!227 = !{!"GROUPDYNAMICDATA", !214, i64 0, !211, i64 8, !211, i64 16, !211, i64 24, !211, i64 32, !211, i64 40, !211, i64 48}
!228 = !DILocation(line: 79, column: 37, scope: !207)
!229 = !{!223, !211, i64 48}
!230 = !DILocation(line: 79, column: 15, scope: !207)
!231 = !DILocation(line: 79, column: 27, scope: !207)
!232 = !{!227, !211, i64 16}
!233 = !DILocation(line: 80, column: 37, scope: !207)
!234 = !{!223, !211, i64 8}
!235 = !DILocation(line: 80, column: 15, scope: !207)
!236 = !DILocation(line: 80, column: 27, scope: !207)
!237 = !{!227, !211, i64 8}
!238 = !DILocation(line: 81, column: 48, scope: !207)
!239 = !{!210, !214, i64 16}
!240 = !DILocation(line: 81, column: 29, scope: !207)
!241 = !DILocation(line: 81, column: 37, scope: !207)
!242 = !{!223, !211, i64 24}
!243 = !DILocation(line: 81, column: 15, scope: !207)
!244 = !DILocation(line: 81, column: 27, scope: !207)
!245 = !{!227, !211, i64 24}
!246 = !DILocation(line: 82, column: 37, scope: !207)
!247 = !{!223, !211, i64 32}
!248 = !DILocation(line: 82, column: 29, scope: !207)
!249 = !DILocation(line: 82, column: 15, scope: !207)
!250 = !DILocation(line: 82, column: 27, scope: !207)
!251 = !{!227, !211, i64 32}
!252 = !DILocation(line: 83, column: 37, scope: !207)
!253 = !{!223, !211, i64 96}
!254 = !DILocation(line: 83, column: 15, scope: !207)
!255 = !DILocation(line: 83, column: 27, scope: !207)
!256 = !{!227, !211, i64 48}
!257 = !DILocation(line: 84, column: 37, scope: !207)
!258 = !{!223, !211, i64 40}
!259 = !DILocation(line: 84, column: 15, scope: !207)
!260 = !DILocation(line: 84, column: 27, scope: !207)
!261 = !{!227, !211, i64 40}
!262 = !DILocation(line: 62, column: 7, scope: !88)
!263 = !DILocation(line: 87, column: 7, scope: !207)
!264 = !DILocation(line: 103, column: 3, scope: !88)
