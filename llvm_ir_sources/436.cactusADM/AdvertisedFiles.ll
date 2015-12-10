; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOUtil/AdvertisedFiles.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.ioAdvertisedFileListenerCallbacks = type { i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)* }
%struct.ioAdvertisedFileDesc = type { i8*, i8*, i8*, i8*, i8* }

@listener_DB = internal global %struct.PNamedData* null, align 8
@.str = private unnamed_addr constant [96 x i8] c"$Header: /cactus/CactusBase/IOUtil/src/AdvertisedFiles.c,v 1.5 2001/10/30 13:56:31 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOUtil_AdvertisedFiles_c() #0 {
  ret i8* getelementptr inbounds ([96 x i8]* @.str, i64 0, i64 0), !dbg !106
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOUtil_RegisterAdvertisedFileListener(%struct.cGH* nocapture readnone %GH, i8* %listener, %struct.ioAdvertisedFileListenerCallbacks* readonly %callbacks) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !75, metadata !107), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* %listener, i64 0, metadata !76, metadata !107), !dbg !109
  tail call void @llvm.dbg.value(metadata %struct.ioAdvertisedFileListenerCallbacks* %callbacks, i64 0, metadata !77, metadata !107), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !78, metadata !107), !dbg !111
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !75, metadata !107), !dbg !108
  %1 = icmp ne i8* %listener, null, !dbg !112
  %2 = icmp ne %struct.ioAdvertisedFileListenerCallbacks* %callbacks, null, !dbg !114
  %or.cond = and i1 %1, %2, !dbg !115
  br i1 %or.cond, label %3, label %13, !dbg !115

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @malloc(i64 8) #5, !dbg !116
  %5 = icmp eq i8* %4, null, !dbg !118
  br i1 %5, label %13, label %6, !dbg !120

; <label>:6                                       ; preds = %3
  %7 = bitcast %struct.ioAdvertisedFileListenerCallbacks* %callbacks to i64*, !dbg !121
  %8 = bitcast i8* %4 to i64*, !dbg !121
  %9 = load i64* %7, align 8, !dbg !121
  store i64 %9, i64* %8, align 8, !dbg !121
  %10 = tail call i32 @StoreNamedData(%struct.PNamedData** @listener_DB, i8* %listener, i8* %4) #5, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !78, metadata !107), !dbg !111
  %11 = icmp eq i32 %10, 0, !dbg !124
  br i1 %11, label %13, label %12, !dbg !126

; <label>:12                                      ; preds = %6
  tail call void @free(i8* %4) #6, !dbg !127
  br label %13, !dbg !127

; <label>:13                                      ; preds = %6, %3, %12, %0
  %retval.0 = phi i32 [ %10, %12 ], [ 0, %6 ], [ -1, %3 ], [ -1, %0 ]
  ret i32 %retval.0, !dbg !128
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOUtil_AdvertiseFile(%struct.cGH* %GH, i8* %filename, %struct.ioAdvertisedFileDesc* %description) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !82, metadata !107), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !83, metadata !107), !dbg !130
  tail call void @llvm.dbg.value(metadata %struct.ioAdvertisedFileDesc* %description, i64 0, metadata !84, metadata !107), !dbg !131
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !85, metadata !107), !dbg !132
  %listener.01 = load %struct.PNamedData** @listener_DB, align 8, !dbg !133
  %1 = icmp eq %struct.PNamedData* %listener.01, null, !dbg !134
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !134

.lr.ph:                                           ; preds = %0, %13
  %listener.03 = phi %struct.PNamedData* [ %listener.0, %13 ], [ %listener.01, %0 ]
  %retval.02 = phi i32 [ %retval.1, %13 ], [ 0, %0 ]
  %2 = getelementptr inbounds %struct.PNamedData* %listener.03, i64 0, i32 3, !dbg !135
  %3 = bitcast i8** %2 to %struct.ioAdvertisedFileListenerCallbacks**, !dbg !135
  %4 = load %struct.ioAdvertisedFileListenerCallbacks** %3, align 8, !dbg !135, !tbaa !137
  tail call void @llvm.dbg.value(metadata %struct.ioAdvertisedFileListenerCallbacks* %4, i64 0, metadata !98, metadata !107), !dbg !142
  %5 = icmp eq %struct.ioAdvertisedFileListenerCallbacks* %4, null, !dbg !143
  br i1 %5, label %13, label %6, !dbg !145

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.ioAdvertisedFileListenerCallbacks* %4, i64 0, i32 0, !dbg !146
  %8 = load i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)** %7, align 8, !dbg !146, !tbaa !147
  %9 = icmp eq i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)* %8, null, !dbg !149
  br i1 %9, label %13, label %10, !dbg !150

; <label>:10                                      ; preds = %6
  %11 = tail call i32 %8(%struct.cGH* %GH, i8* %filename, %struct.ioAdvertisedFileDesc* %description) #5, !dbg !151
  %12 = or i32 %11, %retval.02, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !85, metadata !107), !dbg !132
  br label %13, !dbg !153

; <label>:13                                      ; preds = %6, %.lr.ph, %10
  %retval.1 = phi i32 [ %12, %10 ], [ %retval.02, %6 ], [ %retval.02, %.lr.ph ]
  %14 = getelementptr inbounds %struct.PNamedData* %listener.03, i64 0, i32 1, !dbg !154
  %listener.0 = load %struct.PNamedData** %14, align 8, !dbg !133
  %15 = icmp eq %struct.PNamedData* %listener.0, null, !dbg !134
  br i1 %15, label %._crit_edge, label %.lr.ph, !dbg !134

._crit_edge:                                      ; preds = %13, %0
  %retval.0.lcssa = phi i32 [ 0, %0 ], [ %retval.1, %13 ]
  ret i32 %retval.0.lcssa, !dbg !155
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!102, !103, !104}
!llvm.ident = !{!105}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !65, globals: !99, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOUtil/AdvertisedFiles.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioAdvertisedFileListenerCallbacks", file: !6, line: 48, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOUtil/../include/ioutil_AdvertisedFiles.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 43, size: 64, align: 64, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "advertise", scope: !7, file: !6, line: 45, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !53, !55}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !17, line: 75, baseType: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOUtil/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 24, size: 1216, align: 64, elements: !19)
!19 = !{!20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !38, !39, !40, !44, !45}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !18, file: !17, line: 26, baseType: !13, size: 32, align: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !18, file: !17, line: 27, baseType: !13, size: 32, align: 32, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !18, file: !17, line: 30, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !18, file: !17, line: 31, baseType: !23, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !18, file: !17, line: 32, baseType: !23, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !18, file: !17, line: 33, baseType: !23, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !18, file: !17, line: 36, baseType: !23, size: 64, align: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !18, file: !17, line: 39, baseType: !23, size: 64, align: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !18, file: !17, line: 40, baseType: !23, size: 64, align: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !18, file: !17, line: 43, baseType: !31, size: 64, align: 64, offset: 512)
!31 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !18, file: !17, line: 44, baseType: !33, size: 64, align: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !18, file: !17, line: 47, baseType: !33, size: 64, align: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !18, file: !17, line: 51, baseType: !23, size: 64, align: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !18, file: !17, line: 54, baseType: !23, size: 64, align: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !18, file: !17, line: 57, baseType: !13, size: 32, align: 32, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !18, file: !17, line: 60, baseType: !23, size: 64, align: 64, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !18, file: !17, line: 63, baseType: !31, size: 64, align: 64, offset: 960)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !17, line: 67, baseType: !41, size: 64, align: 64, offset: 1024)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !18, file: !17, line: 70, baseType: !42, size: 64, align: 64, offset: 1088)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !18, file: !17, line: 73, baseType: !46, size: 64, align: 64, offset: 1152)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !17, line: 22, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 18, size: 16, align: 8, elements: !49)
!49 = !{!50, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !48, file: !17, line: 20, baseType: !51, size: 8, align: 8)
!51 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !48, file: !17, line: 21, baseType: !51, size: 8, align: 8, offset: 8)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioAdvertisedFileDesc", file: !6, line: 36, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 29, size: 320, align: 64, elements: !59)
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "thorn", scope: !58, file: !6, line: 31, baseType: !53, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !58, file: !6, line: 32, baseType: !53, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "mimetype", scope: !58, file: !6, line: 33, baseType: !53, size: 64, align: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !58, file: !6, line: 34, baseType: !53, size: 64, align: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !58, file: !6, line: 35, baseType: !53, size: 64, align: 64, offset: 256)
!65 = !{!66, !69, !80}
!66 = !DISubprogram(name: "CCTKi_version_CactusBase_IOUtil_AdvertisedFiles_c", scope: !1, file: !1, line: 24, type: !67, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_IOUtil_AdvertisedFiles_c, variables: !2)
!67 = !DISubroutineType(types: !68)
!68 = !{!53}
!69 = !DISubprogram(name: "IOUtil_RegisterAdvertisedFileListener", scope: !1, file: !1, line: 67, type: !70, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileListenerCallbacks*)* @IOUtil_RegisterAdvertisedFileListener, variables: !74)
!70 = !DISubroutineType(types: !71)
!71 = !{!13, !14, !53, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!74 = !{!75, !76, !77, !78, !79}
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !69, file: !1, line: 67, type: !14)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "listener", arg: 2, scope: !69, file: !1, line: 67, type: !53)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callbacks", arg: 3, scope: !69, file: !1, line: 68, type: !72)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !69, file: !1, line: 70, type: !13)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_callbacks", scope: !69, file: !1, line: 71, type: !4)
!80 = !DISubprogram(name: "IOUtil_AdvertiseFile", scope: !1, file: !1, line: 126, type: !11, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)* @IOUtil_AdvertiseFile, variables: !81)
!81 = !{!82, !83, !84, !85, !86, !98}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !80, file: !1, line: 126, type: !14)
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !80, file: !1, line: 126, type: !53)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "description", arg: 3, scope: !80, file: !1, line: 127, type: !55)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !80, file: !1, line: 129, type: !13)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "listener", scope: !80, file: !1, line: 130, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "pNamedData", file: !89, line: 26, baseType: !90)
!89 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOUtil/../include/StoreNamedData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "PNamedData", file: !89, line: 18, size: 256, align: 64, elements: !91)
!91 = !{!92, !94, !95, !97}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !90, file: !89, line: 20, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !89, line: 21, baseType: !93, size: 64, align: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !89, line: 23, baseType: !96, size: 64, align: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !90, file: !89, line: 25, baseType: !43, size: 64, align: 64, offset: 192)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callbacks", scope: !80, file: !1, line: 131, type: !4)
!99 = !{!100, !101}
!100 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 23, type: !53, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariable(name: "listener_DB", scope: !0, file: !1, line: 32, type: !87, isLocal: true, isDefinition: true, variable: %struct.PNamedData** @listener_DB)
!102 = !{i32 2, !"Dwarf Version", i32 2}
!103 = !{i32 2, !"Debug Info Version", i32 700000003}
!104 = !{i32 1, !"PIC Level", i32 2}
!105 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!106 = !DILocation(line: 24, column: 1, scope: !66)
!107 = !DIExpression()
!108 = !DILocation(line: 67, column: 55, scope: !69)
!109 = !DILocation(line: 67, column: 71, scope: !69)
!110 = !DILocation(line: 68, column: 63, scope: !69)
!111 = !DILocation(line: 70, column: 7, scope: !69)
!112 = !DILocation(line: 77, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !69, file: !1, line: 77, column: 7)
!114 = !DILocation(line: 77, column: 19, scope: !113)
!115 = !DILocation(line: 77, column: 16, scope: !113)
!116 = !DILocation(line: 80, column: 22, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 78, column: 3)
!118 = !DILocation(line: 81, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !117, file: !1, line: 81, column: 9)
!120 = !DILocation(line: 81, column: 9, scope: !117)
!121 = !DILocation(line: 83, column: 24, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 82, column: 5)
!123 = !DILocation(line: 84, column: 16, scope: !122)
!124 = !DILocation(line: 85, column: 11, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 85, column: 11)
!126 = !DILocation(line: 85, column: 11, scope: !122)
!127 = !DILocation(line: 86, column: 9, scope: !125)
!128 = !DILocation(line: 90, column: 3, scope: !69)
!129 = !DILocation(line: 126, column: 38, scope: !80)
!130 = !DILocation(line: 126, column: 54, scope: !80)
!131 = !DILocation(line: 127, column: 55, scope: !80)
!132 = !DILocation(line: 129, column: 7, scope: !80)
!133 = !DILocation(line: 135, column: 14, scope: !80)
!134 = !DILocation(line: 138, column: 3, scope: !80)
!135 = !DILocation(line: 140, column: 65, scope: !136)
!136 = distinct !DILexicalBlock(scope: !80, file: !1, line: 139, column: 3)
!137 = !{!138, !139, i64 24}
!138 = !{!"PNamedData", !139, i64 0, !139, i64 8, !139, i64 16, !139, i64 24}
!139 = !{!"any pointer", !140, i64 0}
!140 = !{!"omnipotent char", !141, i64 0}
!141 = !{!"Simple C/C++ TBAA"}
!142 = !DILocation(line: 131, column: 38, scope: !80)
!143 = !DILocation(line: 141, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !136, file: !1, line: 141, column: 9)
!145 = !DILocation(line: 141, column: 19, scope: !144)
!146 = !DILocation(line: 141, column: 33, scope: !144)
!147 = !{!148, !139, i64 0}
!148 = !{!"", !139, i64 0}
!149 = !DILocation(line: 141, column: 22, scope: !144)
!150 = !DILocation(line: 141, column: 9, scope: !136)
!151 = !DILocation(line: 142, column: 17, scope: !144)
!152 = !DILocation(line: 142, column: 14, scope: !144)
!153 = !DILocation(line: 142, column: 7, scope: !144)
!154 = !DILocation(line: 143, column: 26, scope: !136)
!155 = !DILocation(line: 146, column: 3, scope: !80)
