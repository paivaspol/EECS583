; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/comlib.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define void @put_serverbyte(i8 zeroext %data) #0 {
  tail call void @llvm.dbg.value(metadata i8 %data, i64 0, metadata !9, metadata !39), !dbg !40
  store volatile i8 %data, i8* inttoptr (i64 2952794328 to i8*), align 8, !dbg !41, !tbaa !42
  store volatile i8 1, i8* inttoptr (i64 2952794312 to i8*), align 8, !dbg !45, !tbaa !42
  br label %1, !dbg !46

; <label>:1                                       ; preds = %1, %0
  %2 = load volatile i8* inttoptr (i64 2952794312 to i8*), align 8, !dbg !47, !tbaa !42
  %3 = and i8 %2, 1, !dbg !46
  %4 = icmp eq i8 %3, 0, !dbg !46
  br i1 %4, label %5, label %1, !dbg !46

; <label>:5                                       ; preds = %1
  ret void, !dbg !48
}

; Function Attrs: nounwind optsize ssp uwtable
define zeroext i8 @get_serverbyte() #0 {
  br label %1, !dbg !49

; <label>:1                                       ; preds = %1, %0
  %2 = load volatile i8* inttoptr (i64 2952794304 to i8*), align 64, !dbg !50, !tbaa !42
  %3 = and i8 %2, 1, !dbg !51
  %4 = icmp eq i8 %3, 0, !dbg !51
  br i1 %4, label %1, label %5, !dbg !49

; <label>:5                                       ; preds = %1
  %6 = load volatile i8* inttoptr (i64 2952794320 to i8*), align 16, !dbg !52, !tbaa !42
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !14, metadata !39), !dbg !53
  store volatile i8 0, i8* inttoptr (i64 2952794304 to i8*), align 64, !dbg !54, !tbaa !42
  ret i8 %6, !dbg !55
}

; Function Attrs: nounwind optsize ssp uwtable
define void @get_serverdata(i8* nocapture %data, i32 %size) #0 {
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !21, metadata !39), !dbg !56
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !22, metadata !39), !dbg !57
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !23, metadata !39), !dbg !58
  %1 = icmp sgt i32 %size, 0, !dbg !59
  br i1 %1, label %.preheader, label %._crit_edge, !dbg !62

.preheader:                                       ; preds = %0, %get_serverbyte.exit
  %p.02 = phi i8* [ %7, %get_serverbyte.exit ], [ %data, %0 ]
  %.01 = phi i32 [ %8, %get_serverbyte.exit ], [ %size, %0 ]
  br label %2, !dbg !63

; <label>:2                                       ; preds = %.preheader, %2
  %3 = load volatile i8* inttoptr (i64 2952794304 to i8*), align 64, !dbg !63, !tbaa !42
  %4 = and i8 %3, 1, !dbg !65
  %5 = icmp eq i8 %4, 0, !dbg !65
  br i1 %5, label %2, label %get_serverbyte.exit, !dbg !66

get_serverbyte.exit:                              ; preds = %2
  %6 = load volatile i8* inttoptr (i64 2952794320 to i8*), align 16, !dbg !67, !tbaa !42
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !14, metadata !39), !dbg !68
  store volatile i8 0, i8* inttoptr (i64 2952794304 to i8*), align 64, !dbg !69, !tbaa !42
  %7 = getelementptr inbounds i8* %p.02, i64 1, !dbg !70
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !23, metadata !39), !dbg !58
  store i8 %6, i8* %p.02, align 1, !dbg !71, !tbaa !42
  %8 = add nsw i32 %.01, -1, !dbg !72
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !22, metadata !39), !dbg !57
  %9 = icmp sgt i32 %.01, 1, !dbg !59
  br i1 %9, label %.preheader, label %._crit_edge, !dbg !62

._crit_edge:                                      ; preds = %get_serverbyte.exit, %0
  ret void, !dbg !73
}

; Function Attrs: nounwind optsize ssp uwtable
define void @put_serverdata(i8* nocapture readonly %data, i32 %size) #0 {
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !28, metadata !39), !dbg !74
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !29, metadata !39), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !30, metadata !39), !dbg !76
  %1 = icmp sgt i32 %size, 0, !dbg !77
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !80

.lr.ph:                                           ; preds = %0, %put_serverbyte.exit
  %p.02 = phi i8* [ %7, %put_serverbyte.exit ], [ %data, %0 ]
  %.01 = phi i32 [ %8, %put_serverbyte.exit ], [ %size, %0 ]
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !30, metadata !39), !dbg !76
  %2 = load i8* %p.02, align 1, !dbg !81, !tbaa !42
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !9, metadata !39), !dbg !82
  store volatile i8 %2, i8* inttoptr (i64 2952794328 to i8*), align 8, !dbg !84, !tbaa !42
  store volatile i8 1, i8* inttoptr (i64 2952794312 to i8*), align 8, !dbg !85, !tbaa !42
  br label %3, !dbg !86

; <label>:3                                       ; preds = %3, %.lr.ph
  %4 = load volatile i8* inttoptr (i64 2952794312 to i8*), align 8, !dbg !87, !tbaa !42
  %5 = and i8 %4, 1, !dbg !86
  %6 = icmp eq i8 %5, 0, !dbg !86
  br i1 %6, label %put_serverbyte.exit, label %3, !dbg !86

put_serverbyte.exit:                              ; preds = %3
  %7 = getelementptr inbounds i8* %p.02, i64 1, !dbg !88
  %8 = add nsw i32 %.01, -1, !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !29, metadata !39), !dbg !75
  %9 = icmp sgt i32 %.01, 1, !dbg !77
  br i1 %9, label %.lr.ph, label %._crit_edge, !dbg !80

._crit_edge:                                      ; preds = %put_serverbyte.exit, %0
  ret void, !dbg !90
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !31, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/comlib.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !15, !26}
!4 = !DISubprogram(name: "put_serverbyte", scope: !1, file: !1, line: 44, type: !5, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i8)* @put_serverbyte, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9}
!9 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !4, file: !1, line: 44, type: !7)
!10 = !DISubprogram(name: "get_serverbyte", scope: !1, file: !1, line: 51, type: !11, isLocal: false, isDefinition: true, scopeLine: 52, isOptimized: true, function: i8 ()* @get_serverbyte, variables: !13)
!11 = !DISubroutineType(types: !12)
!12 = !{!7}
!13 = !{!14}
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !10, file: !1, line: 53, type: !7)
!15 = !DISubprogram(name: "get_serverdata", scope: !1, file: !1, line: 61, type: !16, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @get_serverdata, variables: !20)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !19}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !15, file: !1, line: 61, type: !18)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !15, file: !1, line: 61, type: !19)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !15, file: !1, line: 63, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!26 = !DISubprogram(name: "put_serverdata", scope: !1, file: !1, line: 68, type: !16, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @put_serverdata, variables: !27)
!27 = !{!28, !29, !30}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !26, file: !1, line: 68, type: !18)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !26, file: !1, line: 68, type: !19)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !26, file: !1, line: 70, type: !24)
!31 = !{!32}
!32 = !DIGlobalVariable(name: "dualcp", scope: !0, file: !1, line: 42, type: !33, isLocal: true, isDefinition: true)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!35 = !{i32 2, !"Dwarf Version", i32 2}
!36 = !{i32 2, !"Debug Info Version", i32 700000003}
!37 = !{i32 1, !"PIC Level", i32 2}
!38 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!39 = !DIExpression()
!40 = !DILocation(line: 44, column: 35, scope: !4)
!41 = !DILocation(line: 46, column: 17, scope: !4)
!42 = !{!43, !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 47, column: 17, scope: !4)
!46 = !DILocation(line: 48, column: 3, scope: !4)
!47 = !DILocation(line: 48, column: 9, scope: !4)
!48 = !DILocation(line: 49, column: 1, scope: !4)
!49 = !DILocation(line: 55, column: 3, scope: !10)
!50 = !DILocation(line: 55, column: 10, scope: !10)
!51 = !DILocation(line: 55, column: 30, scope: !10)
!52 = !DILocation(line: 56, column: 8, scope: !10)
!53 = !DILocation(line: 53, column: 17, scope: !10)
!54 = !DILocation(line: 57, column: 17, scope: !10)
!55 = !DILocation(line: 58, column: 3, scope: !10)
!56 = !DILocation(line: 61, column: 27, scope: !15)
!57 = !DILocation(line: 61, column: 36, scope: !15)
!58 = !DILocation(line: 63, column: 9, scope: !15)
!59 = !DILocation(line: 65, column: 19, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 65, column: 3)
!61 = distinct !DILexicalBlock(scope: !15, file: !1, line: 65, column: 3)
!62 = !DILocation(line: 65, column: 3, scope: !61)
!63 = !DILocation(line: 55, column: 10, scope: !10, inlinedAt: !64)
!64 = distinct !DILocation(line: 65, column: 38, scope: !60)
!65 = !DILocation(line: 55, column: 30, scope: !10, inlinedAt: !64)
!66 = !DILocation(line: 55, column: 3, scope: !10, inlinedAt: !64)
!67 = !DILocation(line: 56, column: 8, scope: !10, inlinedAt: !64)
!68 = !DILocation(line: 53, column: 17, scope: !10, inlinedAt: !64)
!69 = !DILocation(line: 57, column: 17, scope: !10, inlinedAt: !64)
!70 = !DILocation(line: 65, column: 34, scope: !60)
!71 = !DILocation(line: 65, column: 37, scope: !60)
!72 = !DILocation(line: 65, column: 27, scope: !60)
!73 = !DILocation(line: 66, column: 1, scope: !15)
!74 = !DILocation(line: 68, column: 27, scope: !26)
!75 = !DILocation(line: 68, column: 36, scope: !26)
!76 = !DILocation(line: 70, column: 9, scope: !26)
!77 = !DILocation(line: 72, column: 19, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 72, column: 3)
!79 = distinct !DILexicalBlock(scope: !26, file: !1, line: 72, column: 3)
!80 = !DILocation(line: 72, column: 3, scope: !79)
!81 = !DILocation(line: 72, column: 46, scope: !78)
!82 = !DILocation(line: 44, column: 35, scope: !4, inlinedAt: !83)
!83 = distinct !DILocation(line: 72, column: 31, scope: !78)
!84 = !DILocation(line: 46, column: 17, scope: !4, inlinedAt: !83)
!85 = !DILocation(line: 47, column: 17, scope: !4, inlinedAt: !83)
!86 = !DILocation(line: 48, column: 3, scope: !4, inlinedAt: !83)
!87 = !DILocation(line: 48, column: 9, scope: !4, inlinedAt: !83)
!88 = !DILocation(line: 72, column: 49, scope: !78)
!89 = !DILocation(line: 72, column: 27, scope: !78)
!90 = !DILocation(line: 73, column: 1, scope: !26)
