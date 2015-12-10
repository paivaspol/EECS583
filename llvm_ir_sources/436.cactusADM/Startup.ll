; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Startup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"norm1\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"norm2\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"norm_inf\00", align 1
@.str7 = private unnamed_addr constant [92 x i8] c"$Header: /cactus/CactusPUGH/PUGHReduce/src/Startup.c,v 1.5 2001/08/27 16:30:51 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_Startup_c() #0 {
  ret i8* getelementptr inbounds ([92 x i8]* @.str7, i64 0, i64 0), !dbg !20
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGHReduce_Startup() #1 {
  %1 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionMinValGVs, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !21
  %2 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionMaxValGVs, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !22
  %3 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionSumGVs, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !23
  %4 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionNorm1GVs, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !24
  %5 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionNorm2GVs, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !25
  %6 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionNormInfGVs, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !26
  %7 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionMinValArrays, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !27
  %8 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionMaxValArrays, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !28
  %9 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionSumArrays, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !29
  %10 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionNorm1Arrays, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !30
  %11 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionNorm2Arrays, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !31
  %12 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionNormInfArrays, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !32
  ret i32 0, !dbg !33
}

; Function Attrs: optsize
declare i32 @CCTKi_RegisterReductionOperator(i8*, i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)*, i8*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionMinValGVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionMaxValGVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionSumGVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNorm1GVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNorm2GVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNormInfGVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)*, i8*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionMinValArrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionMaxValArrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionSumArrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNorm1Arrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNorm2Arrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNormInfArrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !14, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Startup.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGHReduce_Startup_c", scope: !1, file: !1, line: 19, type: !5, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGHReduce_Startup_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "PUGHReduce_Startup", scope: !1, file: !1, line: 41, type: !11, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PUGHReduce_Startup, variables: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !{!15}
!15 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 17, type: !7, isLocal: true, isDefinition: true)
!16 = !{i32 2, !"Dwarf Version", i32 2}
!17 = !{i32 2, !"Debug Info Version", i32 700000003}
!18 = !{i32 1, !"PIC Level", i32 2}
!19 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!20 = !DILocation(line: 19, column: 1, scope: !4)
!21 = !DILocation(line: 44, column: 3, scope: !10)
!22 = !DILocation(line: 45, column: 3, scope: !10)
!23 = !DILocation(line: 46, column: 3, scope: !10)
!24 = !DILocation(line: 47, column: 3, scope: !10)
!25 = !DILocation(line: 48, column: 3, scope: !10)
!26 = !DILocation(line: 49, column: 3, scope: !10)
!27 = !DILocation(line: 51, column: 3, scope: !10)
!28 = !DILocation(line: 52, column: 3, scope: !10)
!29 = !DILocation(line: 53, column: 3, scope: !10)
!30 = !DILocation(line: 54, column: 3, scope: !10)
!31 = !DILocation(line: 55, column: 3, scope: !10)
!32 = !DILocation(line: 56, column: 3, scope: !10)
!33 = !DILocation(line: 58, column: 3, scope: !10)
