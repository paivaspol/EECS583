; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/MainUtils.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [15 x i8] c"cctk_run_title\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [18 x i8] c"Cactus Simulation\00", align 1
@.str4 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/MainUtils.c,v 1.6 2001/05/10 12:35:13 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_MainUtils_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str4, i64 0, i64 0), !dbg !29
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RunTitle(i32 %len, i8* %title) #1 {
  %param_type = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !18, metadata !30), !dbg !31
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !19, metadata !30), !dbg !32
  tail call void @llvm.dbg.value(metadata i32* %param_type, i64 0, metadata !21, metadata !30), !dbg !33
  %1 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32* %param_type) #6, !dbg !34
  %2 = bitcast i8* %1 to i8**, !dbg !35
  %3 = load i8** %2, align 8, !dbg !36, !tbaa !37
  call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !22, metadata !30), !dbg !41
  %4 = icmp eq i8* %3, null, !dbg !42
  br i1 %4, label %20, label %5, !dbg !44

; <label>:5                                       ; preds = %0
  %6 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !45
  %7 = icmp eq i32 %6, 0, !dbg !45
  %8 = add nsw i32 %len, -1, !dbg !48
  %9 = sext i32 %8 to i64, !dbg !48
  %10 = call i64 @llvm.objectsize.i64.p0i8(i8* %title, i1 false), !dbg !48
  br i1 %7, label %13, label %11, !dbg !50

; <label>:11                                      ; preds = %5
  %12 = call i8* @__strncpy_chk(i8* %title, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i64 %9, i64 %10) #6, !dbg !51
  br label %15, !dbg !53

; <label>:13                                      ; preds = %5
  %14 = call i8* @__strncpy_chk(i8* %title, i8* %3, i64 %9, i64 %10) #6, !dbg !48
  br label %15

; <label>:15                                      ; preds = %13, %11
  %16 = call i64 @strlen(i8* %title) #6, !dbg !54
  %17 = trunc i64 %16 to i32, !dbg !54
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !20, metadata !30), !dbg !55
  %18 = icmp sgt i32 %17, %len, !dbg !56
  %19 = select i1 %18, i32 0, i32 %17, !dbg !57
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !20, metadata !30), !dbg !55
  br label %20, !dbg !58

; <label>:20                                      ; preds = %0, %15
  %retval.0 = phi i32 [ %19, %15 ], [ -1, %0 ]
  ret i32 %retval.0, !dbg !59
}

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !23, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/MainUtils.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !{!9, !12}
!9 = !DISubprogram(name: "CCTKi_version_main_MainUtils_c", scope: !1, file: !1, line: 23, type: !10, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_MainUtils_c, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!5}
!12 = !DISubprogram(name: "CCTK_RunTitle", scope: !1, file: !1, line: 79, type: !13, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*)* @CCTK_RunTitle, variables: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !16}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!17 = !{!18, !19, !20, !21, !22}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 1, scope: !12, file: !1, line: 79, type: !15)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !12, file: !1, line: 79, type: !16)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !12, file: !1, line: 81, type: !15)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "param_type", scope: !12, file: !1, line: 82, type: !15)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_title", scope: !12, file: !1, line: 83, type: !5)
!23 = !{!24}
!24 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 21, type: !5, isLocal: true, isDefinition: true)
!25 = !{i32 2, !"Dwarf Version", i32 2}
!26 = !{i32 2, !"Debug Info Version", i32 700000003}
!27 = !{i32 1, !"PIC Level", i32 2}
!28 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!29 = !DILocation(line: 23, column: 1, scope: !9)
!30 = !DIExpression()
!31 = !DILocation(line: 79, column: 23, scope: !12)
!32 = !DILocation(line: 79, column: 34, scope: !12)
!33 = !DILocation(line: 82, column: 7, scope: !12)
!34 = !DILocation(line: 86, column: 3, scope: !12)
!35 = !DILocation(line: 85, column: 18, scope: !12)
!36 = !DILocation(line: 85, column: 17, scope: !12)
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 83, column: 15, scope: !12)
!42 = !DILocation(line: 90, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !12, file: !1, line: 90, column: 7)
!44 = !DILocation(line: 90, column: 7, scope: !12)
!45 = !DILocation(line: 92, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 92, column: 9)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 91, column: 3)
!48 = !DILocation(line: 98, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 97, column: 5)
!50 = !DILocation(line: 92, column: 9, scope: !47)
!51 = !DILocation(line: 94, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !46, file: !1, line: 93, column: 5)
!53 = !DILocation(line: 95, column: 5, scope: !52)
!54 = !DILocation(line: 100, column: 14, scope: !47)
!55 = !DILocation(line: 81, column: 7, scope: !12)
!56 = !DILocation(line: 101, column: 19, scope: !47)
!57 = !DILocation(line: 101, column: 12, scope: !47)
!58 = !DILocation(line: 102, column: 3, scope: !47)
!59 = !DILocation(line: 107, column: 3, scope: !12)
