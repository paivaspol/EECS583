; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/translate.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@squid_errno = external global i32
@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Translate(i8* readonly %seq, i8** nocapture readonly %code) #0 {
  tail call void @llvm.dbg.value(metadata i8* %seq, i64 0, metadata !13, metadata !24), !dbg !25
  tail call void @llvm.dbg.value(metadata i8** %code, i64 0, metadata !14, metadata !24), !dbg !26
  %1 = icmp eq i8* %seq, null, !dbg !27
  br i1 %1, label %2, label %3, !dbg !29

; <label>:2                                       ; preds = %0
  store i32 2, i32* @squid_errno, align 4, !dbg !30, !tbaa !32
  br label %.critedge, !dbg !36

; <label>:3                                       ; preds = %0
  %4 = tail call i64 @strlen(i8* %seq) #5, !dbg !37
  %5 = add i64 %4, 1, !dbg !39
  %6 = tail call i8* @calloc(i64 %5, i64 1) #5, !dbg !40
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !17, metadata !24), !dbg !41
  %7 = icmp eq i8* %6, null, !dbg !42
  br i1 %7, label %8, label %.preheader5, !dbg !43

; <label>:8                                       ; preds = %3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #5, !dbg !44
  br label %.preheader5, !dbg !44

.preheader5:                                      ; preds = %8, %3
  %aaptr.0.ph = phi i8* [ %6, %3 ], [ null, %8 ]
  %9 = load i8* %seq, align 1, !dbg !45, !tbaa !48
  %10 = icmp eq i8 %9, 0, !dbg !49
  br i1 %10, label %.critedge, label %.lr.ph, !dbg !50

.lr.ph:                                           ; preds = %.preheader5, %.thread4
  %11 = phi i8 [ %42, %.thread4 ], [ %9, %.preheader5 ]
  %aaptr.09 = phi i8* [ %40, %.thread4 ], [ %aaptr.0.ph, %.preheader5 ]
  %.028 = phi i8* [ %41, %.thread4 ], [ %seq, %.preheader5 ]
  %12 = getelementptr inbounds i8* %.028, i64 1, !dbg !51
  %13 = load i8* %12, align 1, !dbg !52, !tbaa !48
  %14 = icmp eq i8 %13, 0, !dbg !53
  br i1 %14, label %.critedge, label %15, !dbg !54

; <label>:15                                      ; preds = %.lr.ph
  %16 = getelementptr inbounds i8* %.028, i64 2, !dbg !55
  %17 = load i8* %16, align 1, !dbg !56, !tbaa !48
  %18 = icmp eq i8 %17, 0, !dbg !57
  br i1 %18, label %.critedge, label %.preheader, !dbg !58

.preheader:                                       ; preds = %15, %.thread._crit_edge
  %19 = phi i8 [ %.pre, %.thread._crit_edge ], [ %11, %15 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread._crit_edge ], [ 0, %15 ]
  %codon.06 = phi i32 [ %codon.13, %.thread._crit_edge ], [ 0, %15 ]
  %20 = shl nsw i32 %codon.06, 2, !dbg !59
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !15, metadata !24), !dbg !64
  %21 = sext i8 %19 to i32, !dbg !65
  switch i32 %21, label %.thread4 [
    i32 65, label %30
    i32 97, label %30
    i32 67, label %22
    i32 99, label %22
    i32 71, label %24
    i32 103, label %24
    i32 84, label %26
    i32 116, label %26
    i32 85, label %28
    i32 117, label %28
  ], !dbg !66

; <label>:22                                      ; preds = %.preheader, %.preheader
  %23 = or i32 %20, 1, !dbg !67
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !15, metadata !24), !dbg !64
  br label %.thread, !dbg !69

; <label>:24                                      ; preds = %.preheader, %.preheader
  %25 = or i32 %20, 2, !dbg !70
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !15, metadata !24), !dbg !64
  br label %.thread, !dbg !71

; <label>:26                                      ; preds = %.preheader, %.preheader
  %27 = or i32 %20, 3, !dbg !72
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !15, metadata !24), !dbg !64
  br label %.thread, !dbg !73

; <label>:28                                      ; preds = %.preheader, %.preheader
  %29 = or i32 %20, 3, !dbg !74
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !15, metadata !24), !dbg !64
  br label %.thread, !dbg !75

; <label>:30                                      ; preds = %.preheader, %.preheader
  %31 = icmp eq i32 %20, 64, !dbg !76
  br i1 %31, label %.thread4, label %.thread, !dbg !78

.thread:                                          ; preds = %22, %24, %26, %28, %30
  %codon.13 = phi i32 [ %20, %30 ], [ %23, %22 ], [ %25, %24 ], [ %27, %26 ], [ %29, %28 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !79
  %32 = icmp slt i64 %indvars.iv.next, 3, !dbg !80
  br i1 %32, label %.thread._crit_edge, label %.thread4, !dbg !79

.thread._crit_edge:                               ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds i8* %.028, i64 %indvars.iv.next
  %.pre = load i8* %.phi.trans.insert, align 1, !dbg !65, !tbaa !48
  br label %.preheader, !dbg !79

.thread4:                                         ; preds = %.preheader, %30, %.thread
  %codon.2 = phi i32 [ 64, %30 ], [ %codon.13, %.thread ], [ 64, %.preheader ]
  %33 = sext i32 %codon.2 to i64, !dbg !81
  %34 = getelementptr inbounds i8** %code, i64 %33, !dbg !81
  %35 = load i8** %34, align 8, !dbg !81, !tbaa !82
  %36 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %aaptr.09, i1 false), !dbg !81
  %37 = tail call i8* @__strcpy_chk(i8* %aaptr.09, i8* %35, i64 %36) #5, !dbg !81
  %38 = load i8** %34, align 8, !dbg !84, !tbaa !82
  %39 = tail call i64 @strlen(i8* %38) #5, !dbg !85
  %40 = getelementptr inbounds i8* %aaptr.09, i64 %39, !dbg !86
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !18, metadata !24), !dbg !87
  %41 = getelementptr inbounds i8* %.028, i64 3, !dbg !88
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !13, metadata !24), !dbg !25
  %42 = load i8* %41, align 1, !dbg !45, !tbaa !48
  %43 = icmp eq i8 %42, 0, !dbg !49
  br i1 %43, label %.critedge, label %.lr.ph, !dbg !50

.critedge:                                        ; preds = %15, %.lr.ph, %.thread4, %.preheader5, %2
  %.0 = phi i8* [ null, %2 ], [ %6, %.preheader5 ], [ %6, %.thread4 ], [ %6, %.lr.ph ], [ %6, %15 ]
  ret i8* %.0, !dbg !89
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/translate.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !{!8}
!8 = !DISubprogram(name: "Translate", scope: !1, file: !1, line: 48, type: !9, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8**)* @Translate, variables: !12)
!9 = !DISubroutineType(types: !10)
!10 = !{!5, !5, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!12 = !{!13, !14, !15, !17, !18, !19}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !8, file: !1, line: 48, type: !5)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 2, scope: !8, file: !1, line: 48, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codon", scope: !8, file: !1, line: 50, type: !16)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aaseq", scope: !8, file: !1, line: 51, type: !5)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aaptr", scope: !8, file: !1, line: 52, type: !5)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 53, type: !16)
!20 = !{i32 2, !"Dwarf Version", i32 2}
!21 = !{i32 2, !"Debug Info Version", i32 700000003}
!22 = !{i32 1, !"PIC Level", i32 2}
!23 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!24 = !DIExpression()
!25 = !DILocation(line: 48, column: 17, scope: !8)
!26 = !DILocation(line: 48, column: 29, scope: !8)
!27 = !DILocation(line: 55, column: 11, scope: !28)
!28 = distinct !DILexicalBlock(scope: !8, file: !1, line: 55, column: 7)
!29 = !DILocation(line: 55, column: 7, scope: !8)
!30 = !DILocation(line: 56, column: 19, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 56, column: 5)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 56, column: 35, scope: !31)
!37 = !DILocation(line: 57, column: 33, scope: !38)
!38 = distinct !DILexicalBlock(scope: !8, file: !1, line: 57, column: 7)
!39 = !DILocation(line: 57, column: 45, scope: !38)
!40 = !DILocation(line: 57, column: 25, scope: !38)
!41 = !DILocation(line: 51, column: 9, scope: !8)
!42 = !DILocation(line: 57, column: 65, scope: !38)
!43 = !DILocation(line: 57, column: 7, scope: !8)
!44 = !DILocation(line: 58, column: 5, scope: !38)
!45 = !DILocation(line: 61, column: 10, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 61, column: 3)
!47 = distinct !DILexicalBlock(scope: !8, file: !1, line: 61, column: 3)
!48 = !{!34, !34, i64 0}
!49 = !DILocation(line: 61, column: 15, scope: !46)
!50 = !DILocation(line: 61, column: 23, scope: !46)
!51 = !DILocation(line: 61, column: 31, scope: !46)
!52 = !DILocation(line: 61, column: 26, scope: !46)
!53 = !DILocation(line: 61, column: 35, scope: !46)
!54 = !DILocation(line: 61, column: 43, scope: !46)
!55 = !DILocation(line: 61, column: 51, scope: !46)
!56 = !DILocation(line: 61, column: 46, scope: !46)
!57 = !DILocation(line: 61, column: 55, scope: !46)
!58 = !DILocation(line: 61, column: 3, scope: !47)
!59 = !DILocation(line: 68, column: 10, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 67, column: 2)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 66, column: 7)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 66, column: 7)
!63 = distinct !DILexicalBlock(scope: !46, file: !1, line: 62, column: 5)
!64 = !DILocation(line: 50, column: 9, scope: !8)
!65 = !DILocation(line: 69, column: 12, scope: !60)
!66 = !DILocation(line: 69, column: 4, scope: !60)
!67 = !DILocation(line: 71, column: 30, scope: !68)
!68 = distinct !DILexicalBlock(scope: !60, file: !1, line: 69, column: 24)
!69 = !DILocation(line: 71, column: 36, scope: !68)
!70 = !DILocation(line: 72, column: 30, scope: !68)
!71 = !DILocation(line: 72, column: 36, scope: !68)
!72 = !DILocation(line: 73, column: 30, scope: !68)
!73 = !DILocation(line: 73, column: 36, scope: !68)
!74 = !DILocation(line: 74, column: 30, scope: !68)
!75 = !DILocation(line: 74, column: 36, scope: !68)
!76 = !DILocation(line: 77, column: 14, scope: !77)
!77 = distinct !DILexicalBlock(scope: !60, file: !1, line: 77, column: 8)
!78 = !DILocation(line: 77, column: 8, scope: !60)
!79 = !DILocation(line: 66, column: 7, scope: !62)
!80 = !DILocation(line: 66, column: 21, scope: !61)
!81 = !DILocation(line: 80, column: 7, scope: !63)
!82 = !{!83, !83, i64 0}
!83 = !{!"any pointer", !34, i64 0}
!84 = !DILocation(line: 81, column: 23, scope: !63)
!85 = !DILocation(line: 81, column: 16, scope: !63)
!86 = !DILocation(line: 81, column: 13, scope: !63)
!87 = !DILocation(line: 52, column: 9, scope: !8)
!88 = !DILocation(line: 61, column: 68, scope: !46)
!89 = !DILocation(line: 84, column: 1, scope: !8)
