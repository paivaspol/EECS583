; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/draw.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@fifty = external global i32
@move_number = external global i32
@ply = external global i32
@hash = external global i32
@hash_history = external global [600 x i32]

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @is_draw() #0 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !17, metadata !24), !dbg !25
  %1 = load i32* @fifty, align 4, !dbg !26, !tbaa !28
  %2 = icmp sgt i32 %1, 3, !dbg !32
  br i1 %2, label %3, label %.critedge1, !dbg !33

; <label>:3                                       ; preds = %0
  %4 = load i32* @move_number, align 4, !dbg !34, !tbaa !28
  %5 = load i32* @ply, align 4, !dbg !37, !tbaa !28
  %6 = add i32 %5, %4, !dbg !38
  %7 = xor i32 %1, -1, !dbg !39
  %8 = add i32 %6, %7, !dbg !40
  %9 = icmp slt i32 %4, %8, !dbg !41
  %. = select i1 %9, i32 %8, i32 %4, !dbg !42
  %10 = add i32 %6, -3, !dbg !44
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !15, metadata !24), !dbg !46
  %11 = icmp slt i32 %6, 3, !dbg !47
  %12 = icmp slt i32 %10, %., !dbg !49
  %or.cond10 = or i1 %11, %12, !dbg !50
  br i1 %or.cond10, label %.critedge, label %.lr.ph12, !dbg !50

.lr.ph12:                                         ; preds = %3
  %13 = load i32* @hash, align 4, !dbg !51, !tbaa !28
  %14 = sext i32 %10 to i64
  br label %18, !dbg !50

; <label>:15                                      ; preds = %18
  %16 = icmp slt i64 %indvars.iv13, 2, !dbg !47
  %17 = icmp slt i32 %22, %., !dbg !49
  %or.cond = or i1 %16, %17, !dbg !50
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, -2, !dbg !50
  br i1 %or.cond, label %.critedge, label %18, !dbg !50

; <label>:18                                      ; preds = %.lr.ph12, %15
  %indvars.iv13 = phi i64 [ %14, %.lr.ph12 ], [ %indvars.iv.next14, %15 ]
  %i.011 = phi i32 [ %10, %.lr.ph12 ], [ %22, %15 ]
  %19 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %indvars.iv13, !dbg !54
  %20 = load i32* %19, align 4, !dbg !54, !tbaa !28
  %21 = icmp eq i32 %13, %20, !dbg !55
  %22 = add nsw i32 %i.011, -2, !dbg !56
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !15, metadata !24), !dbg !46
  br i1 %21, label %.critedge1, label %15, !dbg !57

.critedge:                                        ; preds = %15, %3
  %23 = icmp sgt i32 %1, 5, !dbg !58
  br i1 %23, label %24, label %.critedge1, !dbg !60

; <label>:24                                      ; preds = %.critedge
  %25 = add i32 %4, -1, !dbg !61
  %26 = srem i32 %5, 2, !dbg !63
  %27 = sub i32 %25, %26, !dbg !64
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !19, metadata !24), !dbg !65
  %28 = add i32 %4, %7, !dbg !66
  %29 = add i32 %28, %5, !dbg !67
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !18, metadata !24), !dbg !68
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !15, metadata !24), !dbg !46
  %30 = icmp slt i32 %27, 0, !dbg !69
  %31 = icmp slt i32 %27, %29, !dbg !72
  %or.cond25 = or i1 %30, %31, !dbg !73
  br i1 %or.cond25, label %.critedge1, label %.lr.ph, !dbg !73

.lr.ph:                                           ; preds = %24
  %32 = load i32* @hash, align 4, !dbg !74, !tbaa !28
  %33 = sext i32 %27 to i64
  br label %37, !dbg !73

; <label>:34                                      ; preds = %37
  %35 = icmp slt i64 %indvars.iv, 2, !dbg !69
  %36 = icmp slt i32 %43, %29, !dbg !72
  %or.cond2 = or i1 %35, %36, !dbg !73
  %indvars.iv.next = add nsw i64 %indvars.iv, -2, !dbg !73
  br i1 %or.cond2, label %.critedge1, label %37, !dbg !73

; <label>:37                                      ; preds = %.lr.ph, %34
  %indvars.iv = phi i64 [ %33, %.lr.ph ], [ %indvars.iv.next, %34 ]
  %repeats.07 = phi i32 [ 0, %.lr.ph ], [ %.repeats.0, %34 ]
  %i.16 = phi i32 [ %27, %.lr.ph ], [ %43, %34 ]
  %38 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %indvars.iv, !dbg !77
  %39 = load i32* %38, align 4, !dbg !77, !tbaa !28
  %40 = icmp eq i32 %32, %39, !dbg !78
  %41 = zext i1 %40 to i32, !dbg !79
  %.repeats.0 = add nsw i32 %41, %repeats.07, !dbg !79
  %42 = icmp sgt i32 %.repeats.0, 1, !dbg !80
  %43 = add nsw i32 %i.16, -2, !dbg !82
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !15, metadata !24), !dbg !46
  br i1 %42, label %.critedge1, label %34, !dbg !83

.critedge1:                                       ; preds = %18, %37, %34, %24, %0, %.critedge
  %.0 = phi i32 [ 0, %.critedge ], [ 0, %0 ], [ 0, %24 ], [ 0, %34 ], [ 1, %37 ], [ 1, %18 ]
  ret i32 %.0, !dbg !84
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !9, globals: !8, imports: !8)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/draw.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/sjeng.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{}
!9 = !{!10}
!10 = !DISubprogram(name: "is_draw", scope: !1, file: !1, line: 14, type: !11, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @is_draw, variables: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xbool", file: !4, line: 14, baseType: !3)
!14 = !{!15, !17, !18, !19}
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !10, file: !1, line: 16, type: !16)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repeats", scope: !10, file: !1, line: 16, type: !16)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !10, file: !1, line: 16, type: !16)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !10, file: !1, line: 16, type: !16)
!20 = !{i32 2, !"Dwarf Version", i32 2}
!21 = !{i32 2, !"Debug Info Version", i32 700000003}
!22 = !{i32 1, !"PIC Level", i32 2}
!23 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!24 = !DIExpression()
!25 = !DILocation(line: 16, column: 10, scope: !10)
!26 = !DILocation(line: 18, column: 7, scope: !27)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 18, column: 7)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 18, column: 13, scope: !27)
!33 = !DILocation(line: 18, column: 7, scope: !10)
!34 = !DILocation(line: 20, column: 12, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 20, column: 11)
!36 = distinct !DILexicalBlock(scope: !27, file: !1, line: 19, column: 5)
!37 = !DILocation(line: 20, column: 42, scope: !35)
!38 = !DILocation(line: 20, column: 40, scope: !35)
!39 = !DILocation(line: 20, column: 46, scope: !35)
!40 = !DILocation(line: 20, column: 50, scope: !35)
!41 = !DILocation(line: 20, column: 25, scope: !35)
!42 = !DILocation(line: 23, column: 2, scope: !43)
!43 = distinct !DILexicalBlock(scope: !35, file: !1, line: 21, column: 2)
!44 = !DILocation(line: 28, column: 35, scope: !45)
!45 = distinct !DILexicalBlock(scope: !36, file: !1, line: 28, column: 7)
!46 = !DILocation(line: 16, column: 7, scope: !10)
!47 = !DILocation(line: 28, column: 43, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !1, line: 28, column: 7)
!49 = !DILocation(line: 28, column: 53, scope: !48)
!50 = !DILocation(line: 28, column: 48, scope: !48)
!51 = !DILocation(line: 30, column: 8, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 30, column: 8)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 29, column: 2)
!54 = !DILocation(line: 30, column: 16, scope: !52)
!55 = !DILocation(line: 30, column: 13, scope: !52)
!56 = !DILocation(line: 28, column: 63, scope: !48)
!57 = !DILocation(line: 30, column: 8, scope: !53)
!58 = !DILocation(line: 37, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !10, file: !1, line: 37, column: 7)
!60 = !DILocation(line: 37, column: 7, scope: !10)
!61 = !DILocation(line: 39, column: 27, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 38, column: 5)
!63 = !DILocation(line: 39, column: 38, scope: !62)
!64 = !DILocation(line: 39, column: 31, scope: !62)
!65 = !DILocation(line: 16, column: 28, scope: !10)
!66 = !DILocation(line: 40, column: 31, scope: !62)
!67 = !DILocation(line: 40, column: 35, scope: !62)
!68 = !DILocation(line: 16, column: 23, scope: !10)
!69 = !DILocation(line: 42, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 42, column: 7)
!71 = distinct !DILexicalBlock(scope: !62, file: !1, line: 42, column: 7)
!72 = !DILocation(line: 42, column: 35, scope: !70)
!73 = !DILocation(line: 42, column: 30, scope: !70)
!74 = !DILocation(line: 44, column: 8, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 44, column: 8)
!76 = distinct !DILexicalBlock(scope: !70, file: !1, line: 43, column: 2)
!77 = !DILocation(line: 44, column: 16, scope: !75)
!78 = !DILocation(line: 44, column: 13, scope: !75)
!79 = !DILocation(line: 44, column: 8, scope: !76)
!80 = !DILocation(line: 48, column: 16, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 48, column: 8)
!82 = !DILocation(line: 42, column: 45, scope: !70)
!83 = !DILocation(line: 48, column: 8, scope: !76)
!84 = !DILocation(line: 57, column: 1, scope: !10)
