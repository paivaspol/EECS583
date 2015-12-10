; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateIOBasicParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"outInfo_every\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str4 = private unnamed_addr constant [28 x i8] c"How often to do Info output\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@iobasicpriv_ = external global %struct.anon
@.str6 = private unnamed_addr constant [5 x i8] c"-1:*\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str8 = private unnamed_addr constant [19 x i8] c"outInfo_reductions\00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str10 = private unnamed_addr constant [47 x i8] c"List of reductions to output as Info to screen\00", align 1
@.str11 = private unnamed_addr constant [16 x i8] c"minimum maximum\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str13 = private unnamed_addr constant [33 x i8] c"A regex which matches everything\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"outInfo_vars\00", align 1
@.str15 = private unnamed_addr constant [38 x i8] c"Variables to output as Info to screen\00", align 1
@.str16 = private unnamed_addr constant [16 x i8] c"outScalar_every\00", align 1
@.str17 = private unnamed_addr constant [21 x i8] c"outScalar_reductions\00", align 1
@.str18 = private unnamed_addr constant [40 x i8] c"List of reductions to output into files\00", align 1
@.str19 = private unnamed_addr constant [28 x i8] c"minimum maximum norm1 norm2\00", align 1
@.str20 = private unnamed_addr constant [16 x i8] c"outScalar_style\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str22 = private unnamed_addr constant [30 x i8] c"Which style for Scalar output\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"xgraph\00", align 1
@.str24 = private unnamed_addr constant [8 x i8] c"gnuplot\00", align 1
@.str25 = private unnamed_addr constant [30 x i8] c"1D output readable by gnuplot\00", align 1
@.str26 = private unnamed_addr constant [29 x i8] c"1D output readable by xgraph\00", align 1
@.str27 = private unnamed_addr constant [15 x i8] c"outScalar_vars\00", align 1
@.str28 = private unnamed_addr constant [31 x i8] c"Variables to output into files\00", align 1
@.str29 = private unnamed_addr constant [11 x i8] c"out_format\00", align 1
@.str30 = private unnamed_addr constant [53 x i8] c"Which format for Scalar floating-point number output\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c".13f\00", align 1
@.str32 = private unnamed_addr constant [25 x i8] c"^(\5C.[0-9]{1,2})?[EGefg]$\00", align 1
@.str33 = private unnamed_addr constant [69 x i8] c"output with given precision in exponential / floating point notation\00", align 1
@.str34 = private unnamed_addr constant [13 x i8] c"outdirScalar\00", align 1
@.str35 = private unnamed_addr constant [53 x i8] c"Name of IO Scalar output directory, overrides outdir\00", align 1
@.str36 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str38 = private unnamed_addr constant [13 x i8] c"out_fileinfo\00", align 1
@.str39 = private unnamed_addr constant [12 x i8] c"axis labels\00", align 1
@.str40 = private unnamed_addr constant [44 x i8] c"add axis labels information to output files\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsCreateIOBasicParameters() #0 {
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([28 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 7) to i8*), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0)) #2, !dbg !13
  %2 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([47 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str11, i64 0, i64 0), i8* bitcast (%struct.anon* @iobasicpriv_ to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0)) #2, !dbg !14
  %3 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([38 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 1) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0)) #2, !dbg !15
  %4 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([28 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 8) to i8*), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0)) #2, !dbg !16
  %5 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([40 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str19, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 2) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0)) #2, !dbg !17
  %6 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([30 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 3) to i8*), i32 2, i8* getelementptr inbounds ([8 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str26, i64 0, i64 0)) #2, !dbg !18
  %7 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([31 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 4) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0)) #2, !dbg !19
  %8 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([53 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str31, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 5) to i8*), i32 1, i8* getelementptr inbounds ([25 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str33, i64 0, i64 0)) #2, !dbg !20
  %9 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([13 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([53 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 6) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0)) #2, !dbg !21
  ret i32 0, !dbg !22
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterCreate(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsIOBasicParameterExtensions() #0 {
  %1 = tail call i32 @CCTKi_ParameterAddRange(i8* getelementptr inbounds ([3 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str40, i64 0, i64 0)) #2, !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterAddRange(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateIOBasicParameters.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "CCTKi_BindingsCreateIOBasicParameters", scope: !1, file: !1, line: 15, type: !5, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsCreateIOBasicParameters, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "CCTKi_BindingsIOBasicParameterExtensions", scope: !1, file: !1, line: 122, type: !5, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsIOBasicParameterExtensions, variables: !2)
!9 = !{i32 2, !"Dwarf Version", i32 2}
!10 = !{i32 2, !"Debug Info Version", i32 700000003}
!11 = !{i32 1, !"PIC Level", i32 2}
!12 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!13 = !DILocation(line: 17, column: 3, scope: !4)
!14 = !DILocation(line: 28, column: 3, scope: !4)
!15 = !DILocation(line: 39, column: 3, scope: !4)
!16 = !DILocation(line: 50, column: 3, scope: !4)
!17 = !DILocation(line: 61, column: 3, scope: !4)
!18 = !DILocation(line: 72, column: 3, scope: !4)
!19 = !DILocation(line: 84, column: 3, scope: !4)
!20 = !DILocation(line: 95, column: 3, scope: !4)
!21 = !DILocation(line: 106, column: 3, scope: !4)
!22 = !DILocation(line: 117, column: 3, scope: !4)
!23 = !DILocation(line: 124, column: 3, scope: !8)
!24 = !DILocation(line: 130, column: 3, scope: !8)
