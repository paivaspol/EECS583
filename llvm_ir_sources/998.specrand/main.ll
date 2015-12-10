; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/998.specrand/src/main.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str1 = private unnamed_addr constant [22 x i8] c"seed = %d\0Acount = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"%%f sequence:\0A\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"%%d sequence (1-2048000):\0A\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"Please supply seed and count\00"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !13, metadata !22), !dbg !23
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !14, metadata !22), !dbg !24
  %1 = icmp slt i32 %argc, 2, !dbg !25
  br i1 %1, label %2, label %3, !dbg !27

; <label>:2                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([29 x i8]* @str, i64 0, i64 0)), !dbg !28
  br label %.loopexit, !dbg !30

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds i8** %argv, i64 1, !dbg !31
  %5 = load i8** %4, align 8, !dbg !31, !tbaa !32
  %6 = tail call i32 @atoi(i8* %5) #6, !dbg !36
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !15, metadata !22), !dbg !37
  %7 = getelementptr inbounds i8** %argv, i64 2, !dbg !38
  %8 = load i8** %7, align 8, !dbg !38, !tbaa !32
  %9 = tail call i32 @atoi(i8* %8) #6, !dbg !39
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !16, metadata !22), !dbg !40
  %10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), i32 %6, i32 %9) #6, !dbg !41
  %11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !42
  tail call void @spec_srand(i32 %6) #6, !dbg !43
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !17, metadata !22), !dbg !44
  %12 = icmp sgt i32 %9, 0, !dbg !45
  br i1 %12, label %.lr.ph3, label %._crit_edge.thread, !dbg !48

._crit_edge.thread:                               ; preds = %3
  %13 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !49
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !17, metadata !22), !dbg !44
  br label %.loopexit, !dbg !50

.lr.ph3:                                          ; preds = %3
  %14 = add i32 %9, -1, !dbg !48
  br label %15, !dbg !48

; <label>:15                                      ; preds = %15, %.lr.ph3
  %i.02 = phi i32 [ 0, %.lr.ph3 ], [ %18, %15 ]
  %16 = tail call double @spec_rand() #6, !dbg !52
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), double %16) #6, !dbg !54
  %18 = add nuw nsw i32 %i.02, 1, !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !17, metadata !22), !dbg !44
  %exitcond4 = icmp eq i32 %i.02, %14, !dbg !48
  br i1 %exitcond4, label %._crit_edge, label %15, !dbg !48

._crit_edge:                                      ; preds = %15
  %19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !49
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !17, metadata !22), !dbg !44
  br i1 %12, label %.lr.ph, label %.loopexit, !dbg !50

.lr.ph:                                           ; preds = %._crit_edge
  %20 = add i32 %9, -1, !dbg !50
  br label %21, !dbg !50

; <label>:21                                      ; preds = %21, %.lr.ph
  %i.11 = phi i32 [ 0, %.lr.ph ], [ %27, %21 ]
  %22 = tail call double @spec_rand() #6, !dbg !56
  %23 = fmul double %22, 2.048000e+06, !dbg !59
  %24 = fadd double %23, 1.000000e+00, !dbg !60
  %25 = fptosi double %24 to i32, !dbg !61
  %26 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i32 %25) #6, !dbg !62
  %27 = add nuw nsw i32 %i.11, 1, !dbg !63
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !17, metadata !22), !dbg !44
  %exitcond = icmp eq i32 %i.11, %20, !dbg !50
  br i1 %exitcond, label %.loopexit, label %21, !dbg !50

.loopexit:                                        ; preds = %21, %._crit_edge, %._crit_edge.thread, %2
  %.0 = phi i32 [ 1, %2 ], [ 0, %._crit_edge.thread ], [ 0, %._crit_edge ], [ 0, %21 ]
  ret i32 %.0, !dbg !64
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #2

; Function Attrs: optsize
declare void @spec_srand(i32) #3

; Function Attrs: optsize
declare double @spec_rand() #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/998.specrand/src/main.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !{!6}
!6 = !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !7, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !12)
!7 = !DISubroutineType(types: !8)
!8 = !{!4, !4, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !{!13, !14, !15, !16, !17}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !6, file: !1, line: 5, type: !4)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !6, file: !1, line: 5, type: !9)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seed", scope: !6, file: !1, line: 6, type: !4)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !6, file: !1, line: 7, type: !4)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !6, file: !1, line: 7, type: !4)
!18 = !{i32 2, !"Dwarf Version", i32 2}
!19 = !{i32 2, !"Debug Info Version", i32 700000003}
!20 = !{i32 1, !"PIC Level", i32 2}
!21 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!22 = !DIExpression()
!23 = !DILocation(line: 5, column: 14, scope: !6)
!24 = !DILocation(line: 5, column: 27, scope: !6)
!25 = !DILocation(line: 9, column: 12, scope: !26)
!26 = distinct !DILexicalBlock(scope: !6, file: !1, line: 9, column: 7)
!27 = !DILocation(line: 9, column: 7, scope: !6)
!28 = !DILocation(line: 10, column: 5, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 17)
!30 = !DILocation(line: 11, column: 5, scope: !29)
!31 = !DILocation(line: 13, column: 15, scope: !6)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 13, column: 10, scope: !6)
!37 = !DILocation(line: 6, column: 7, scope: !6)
!38 = !DILocation(line: 14, column: 16, scope: !6)
!39 = !DILocation(line: 14, column: 11, scope: !6)
!40 = !DILocation(line: 7, column: 7, scope: !6)
!41 = !DILocation(line: 16, column: 3, scope: !6)
!42 = !DILocation(line: 17, column: 3, scope: !6)
!43 = !DILocation(line: 18, column: 3, scope: !6)
!44 = !DILocation(line: 7, column: 14, scope: !6)
!45 = !DILocation(line: 19, column: 16, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 19, column: 3)
!47 = distinct !DILexicalBlock(scope: !6, file: !1, line: 19, column: 3)
!48 = !DILocation(line: 19, column: 3, scope: !47)
!49 = !DILocation(line: 22, column: 3, scope: !6)
!50 = !DILocation(line: 23, column: 3, scope: !51)
!51 = distinct !DILexicalBlock(scope: !6, file: !1, line: 23, column: 3)
!52 = !DILocation(line: 20, column: 20, scope: !53)
!53 = distinct !DILexicalBlock(scope: !46, file: !1, line: 19, column: 30)
!54 = !DILocation(line: 20, column: 5, scope: !53)
!55 = !DILocation(line: 19, column: 26, scope: !46)
!56 = !DILocation(line: 24, column: 27, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 23, column: 30)
!58 = distinct !DILexicalBlock(scope: !51, file: !1, line: 23, column: 3)
!59 = !DILocation(line: 24, column: 38, scope: !57)
!60 = !DILocation(line: 24, column: 47, scope: !57)
!61 = !DILocation(line: 24, column: 20, scope: !57)
!62 = !DILocation(line: 24, column: 5, scope: !57)
!63 = !DILocation(line: 23, column: 26, scope: !58)
!64 = !DILocation(line: 28, column: 1, scope: !6)
