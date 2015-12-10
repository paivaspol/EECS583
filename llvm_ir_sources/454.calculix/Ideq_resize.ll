; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in Ideq_resize(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Ideq_resize(%struct._Ideq* %deq, i32 %newsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !29, metadata !42), !dbg !43
  tail call void @llvm.dbg.value(metadata i32 %newsize, i64 0, metadata !30, metadata !42), !dbg !44
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !45
  %2 = icmp slt i32 %newsize, 0, !dbg !47
  %or.cond = or i1 %1, %2, !dbg !48
  br i1 %or.cond, label %3, label %6, !dbg !48

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !49, !tbaa !51
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._Ideq* %deq, i32 %newsize) #5, !dbg !55
  tail call void @exit(i32 -1) #6, !dbg !56
  unreachable, !dbg !56

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !57
  %8 = load i32* %7, align 4, !dbg !57, !tbaa !59
  %9 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !63
  %10 = load i32* %9, align 4, !dbg !63, !tbaa !64
  %11 = icmp slt i32 %8, %10, !dbg !65
  br i1 %11, label %12, label %16, !dbg !66

; <label>:12                                      ; preds = %6
  %13 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0, !dbg !67
  %14 = load i32* %13, align 4, !dbg !67, !tbaa !69
  %15 = add nsw i32 %14, %8, !dbg !70
  br label %16

; <label>:16                                      ; preds = %6, %12
  %.pn = phi i32 [ %15, %12 ], [ %8, %6 ]
  %size.0.in = sub nsw i32 %.pn, %10, !dbg !71
  %size.0 = add nsw i32 %size.0.in, 1, !dbg !73
  %17 = icmp slt i32 %size.0.in, %newsize, !dbg !74
  br i1 %17, label %18, label %46, !dbg !76

; <label>:18                                      ; preds = %16
  %19 = tail call i32* @IVinit(i32 %size.0, i32 -1) #5, !dbg !77
  tail call void @llvm.dbg.value(metadata i32* %19, i64 0, metadata !37, metadata !42), !dbg !78
  %20 = load i32* %9, align 4, !dbg !79, !tbaa !64
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !33, metadata !42), !dbg !81
  %21 = icmp eq i32 %20, -1, !dbg !82
  br i1 %21, label %.loopexit, label %22, !dbg !83

; <label>:22                                      ; preds = %18
  %23 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !84
  %24 = load i32** %23, align 8, !dbg !84, !tbaa !86
  tail call void @llvm.dbg.value(metadata i32* %24, i64 0, metadata !36, metadata !42), !dbg !87
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !31, metadata !42), !dbg !88
  %25 = load i32* %7, align 4, !dbg !89, !tbaa !59
  %26 = icmp eq i32 %20, %25, !dbg !90
  %27 = sext i32 %20 to i64, !dbg !91
  %28 = getelementptr inbounds i32* %24, i64 %27, !dbg !91
  %29 = load i32* %28, align 4, !dbg !91, !tbaa !93
  store i32 %29, i32* %19, align 4, !dbg !94, !tbaa !93
  br i1 %26, label %.loopexit, label %.lr.ph, !dbg !95

.lr.ph:                                           ; preds = %22, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %22 ]
  %j.02 = phi i32 [ %., %.lr.ph ], [ %20, %22 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !95
  %30 = icmp eq i32 %j.02, %size.0.in, !dbg !96
  %31 = add nsw i32 %j.02, 1, !dbg !98
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !33, metadata !42), !dbg !81
  %. = select i1 %30, i32 0, i32 %31, !dbg !100
  %32 = load i32* %7, align 4, !dbg !89, !tbaa !59
  %33 = icmp eq i32 %., %32, !dbg !90
  %34 = sext i32 %. to i64, !dbg !91
  %35 = getelementptr inbounds i32* %24, i64 %34, !dbg !91
  %36 = load i32* %35, align 4, !dbg !91, !tbaa !93
  %37 = getelementptr inbounds i32* %19, i64 %indvars.iv.next, !dbg !101
  store i32 %36, i32* %37, align 4, !dbg !94, !tbaa !93
  br i1 %33, label %..loopexit_crit_edge, label %.lr.ph, !dbg !95

..loopexit_crit_edge:                             ; preds = %.lr.ph
  %38 = trunc i64 %indvars.iv.next to i32, !dbg !95
  br label %.loopexit, !dbg !95

.loopexit:                                        ; preds = %22, %..loopexit_crit_edge, %18
  %head.0 = phi i32 [ -1, %18 ], [ 0, %..loopexit_crit_edge ], [ 0, %22 ]
  %tail.0 = phi i32 [ -1, %18 ], [ %38, %..loopexit_crit_edge ], [ 0, %22 ]
  tail call void @Ideq_clearData(%struct._Ideq* %deq) #5, !dbg !102
  %39 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, !dbg !103
  tail call void @IV_init(%struct._IV* %39, i32 %newsize, i32* null) #5, !dbg !104
  %40 = icmp sgt i32 %size.0.in, -1, !dbg !105
  br i1 %40, label %41, label %44, !dbg !107

; <label>:41                                      ; preds = %.loopexit
  %42 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !108
  %43 = load i32** %42, align 8, !dbg !108, !tbaa !86
  tail call void @IVcopy(i32 %size.0, i32* %43, i32* %19) #5, !dbg !110
  br label %44, !dbg !111

; <label>:44                                      ; preds = %41, %.loopexit
  tail call void @IVfree(i32* %19) #5, !dbg !112
  store i32 %head.0, i32* %9, align 4, !dbg !113, !tbaa !64
  store i32 %tail.0, i32* %7, align 4, !dbg !114, !tbaa !59
  %45 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 0, !dbg !115
  store i32 %newsize, i32* %45, align 4, !dbg !116, !tbaa !117
  br label %46, !dbg !118

; <label>:46                                      ; preds = %16, %44
  %.0 = phi i32 [ 1, %44 ], [ -1, %16 ]
  ret i32 %.0, !dbg !119
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @Ideq_clearData(%struct._Ideq*) #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

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
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "Ideq_resize", scope: !1, file: !1, line: 20, type: !7, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Ideq*, i32)* @Ideq_resize, variables: !28)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !9}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ideq", file: !12, line: 19, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../Ideq.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ideq", file: !12, line: 20, size: 320, align: 64, elements: !14)
!14 = !{!15, !16, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !13, file: !12, line: 21, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !13, file: !12, line: 22, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !13, file: !12, line: 23, baseType: !9, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !13, file: !12, line: 24, baseType: !19, size: 192, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !20, line: 20, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !20, line: 21, size: 192, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !21, file: !20, line: 22, baseType: !9, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !21, file: !20, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !21, file: !20, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !21, file: !20, line: 25, baseType: !27, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !6, file: !1, line: 21, type: !10)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newsize", arg: 2, scope: !6, file: !1, line: 22, type: !9)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !6, file: !1, line: 24, type: !9)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "head", scope: !6, file: !1, line: 24, type: !9)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !6, file: !1, line: 24, type: !9)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !6, file: !1, line: 24, type: !9)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !6, file: !1, line: 24, type: !9)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivec", scope: !6, file: !1, line: 25, type: !27)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !6, file: !1, line: 25, type: !27)
!38 = !{i32 2, !"Dwarf Version", i32 2}
!39 = !{i32 2, !"Debug Info Version", i32 700000003}
!40 = !{i32 1, !"PIC Level", i32 2}
!41 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!42 = !DIExpression()
!43 = !DILocation(line: 21, column: 12, scope: !6)
!44 = !DILocation(line: 22, column: 11, scope: !6)
!45 = !DILocation(line: 31, column: 10, scope: !46)
!46 = distinct !DILexicalBlock(scope: !6, file: !1, line: 31, column: 6)
!47 = !DILocation(line: 31, column: 29, scope: !46)
!48 = !DILocation(line: 31, column: 18, scope: !46)
!49 = !DILocation(line: 32, column: 12, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 31, column: 35)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 32, column: 4, scope: !50)
!56 = !DILocation(line: 34, column: 4, scope: !50)
!57 = !DILocation(line: 41, column: 11, scope: !58)
!58 = distinct !DILexicalBlock(scope: !6, file: !1, line: 41, column: 6)
!59 = !{!60, !61, i64 8}
!60 = !{!"_Ideq", !61, i64 0, !61, i64 4, !61, i64 8, !62, i64 16}
!61 = !{!"int", !53, i64 0}
!62 = !{!"_IV", !61, i64 0, !61, i64 4, !61, i64 8, !52, i64 16}
!63 = !DILocation(line: 41, column: 24, scope: !58)
!64 = !{!60, !61, i64 4}
!65 = !DILocation(line: 41, column: 16, scope: !58)
!66 = !DILocation(line: 41, column: 6, scope: !6)
!67 = !DILocation(line: 44, column: 31, scope: !68)
!68 = distinct !DILexicalBlock(scope: !58, file: !1, line: 43, column: 8)
!69 = !{!60, !61, i64 16}
!70 = !DILocation(line: 44, column: 21, scope: !68)
!71 = !DILocation(line: 42, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !58, file: !1, line: 41, column: 31)
!73 = !DILocation(line: 42, column: 33, scope: !72)
!74 = !DILocation(line: 46, column: 11, scope: !75)
!75 = distinct !DILexicalBlock(scope: !6, file: !1, line: 46, column: 6)
!76 = !DILocation(line: 46, column: 6, scope: !6)
!77 = !DILocation(line: 54, column: 7, scope: !6)
!78 = !DILocation(line: 25, column: 15, scope: !6)
!79 = !DILocation(line: 55, column: 16, scope: !80)
!80 = distinct !DILexicalBlock(scope: !6, file: !1, line: 55, column: 6)
!81 = !DILocation(line: 24, column: 20, scope: !6)
!82 = !DILocation(line: 55, column: 22, scope: !80)
!83 = !DILocation(line: 55, column: 6, scope: !6)
!84 = !DILocation(line: 56, column: 19, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 55, column: 30)
!86 = !{!60, !52, i64 32}
!87 = !DILocation(line: 25, column: 8, scope: !6)
!88 = !DILocation(line: 24, column: 7, scope: !6)
!89 = !DILocation(line: 58, column: 22, scope: !85)
!90 = !DILocation(line: 58, column: 14, scope: !85)
!91 = !DILocation(line: 59, column: 22, scope: !92)
!92 = distinct !DILexicalBlock(scope: !85, file: !1, line: 58, column: 29)
!93 = !{!61, !61, i64 0}
!94 = !DILocation(line: 59, column: 20, scope: !92)
!95 = !DILocation(line: 58, column: 4, scope: !85)
!96 = !DILocation(line: 60, column: 14, scope: !97)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 60, column: 12)
!98 = !DILocation(line: 63, column: 11, scope: !99)
!99 = distinct !DILexicalBlock(scope: !97, file: !1, line: 62, column: 14)
!100 = !DILocation(line: 60, column: 12, scope: !92)
!101 = !DILocation(line: 59, column: 7, scope: !92)
!102 = !DILocation(line: 72, column: 1, scope: !6)
!103 = !DILocation(line: 73, column: 15, scope: !6)
!104 = !DILocation(line: 73, column: 1, scope: !6)
!105 = !DILocation(line: 74, column: 11, scope: !106)
!106 = distinct !DILexicalBlock(scope: !6, file: !1, line: 74, column: 6)
!107 = !DILocation(line: 74, column: 6, scope: !6)
!108 = !DILocation(line: 75, column: 25, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 74, column: 17)
!110 = !DILocation(line: 75, column: 4, scope: !109)
!111 = !DILocation(line: 76, column: 1, scope: !109)
!112 = !DILocation(line: 77, column: 1, scope: !6)
!113 = !DILocation(line: 78, column: 14, scope: !6)
!114 = !DILocation(line: 79, column: 14, scope: !6)
!115 = !DILocation(line: 80, column: 6, scope: !6)
!116 = !DILocation(line: 80, column: 14, scope: !6)
!117 = !{!60, !61, i64 0}
!118 = !DILocation(line: 82, column: 1, scope: !6)
!119 = !DILocation(line: 82, column: 13, scope: !6)
