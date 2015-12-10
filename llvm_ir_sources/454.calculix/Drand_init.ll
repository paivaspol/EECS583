; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [44 x i8] c"\0A fatal error in Drand_init(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [70 x i8] c"\0A fatal error in Drand_setSeed(%p,%d)\0A first seed must in in (0,%.0f)\00", align 1
@.str2 = private unnamed_addr constant [108 x i8] c"\0A fatal error in Drand_setSeeds(%p,%d,%d)\0A first seed must in in (0,%.0f)\0A second seed must in in (0,%.0f)\0A\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Drand_setUniform(%p,%f,%f)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Drand_setNormal(%p,%f,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Drand_init(%struct._Drand* %drand) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !26, metadata !56), !dbg !57
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !58
  br i1 %1, label %2, label %5, !dbg !60

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !61, !tbaa !63
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), %struct._Drand* null) #6, !dbg !67
  tail call void @exit(i32 -1) #7, !dbg !68
  unreachable, !dbg !68

; <label>:5                                       ; preds = %0
  tail call void @Drand_setDefaultFields(%struct._Drand* %drand) #6, !dbg !69
  ret void, !dbg !70
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Drand_setSeed(%struct._Drand* %drand, i32 %u) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !31, metadata !56), !dbg !71
  tail call void @llvm.dbg.value(metadata i32 %u, i64 0, metadata !32, metadata !56), !dbg !72
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !73
  %2 = icmp slt i32 %u, 1, !dbg !75
  %or.cond = or i1 %1, %2, !dbg !76
  br i1 %or.cond, label %._crit_edge, label %3, !dbg !76

._crit_edge:                                      ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2
  %.pre = load double* %.phi.trans.insert, align 8, !dbg !77, !tbaa !79
  br label %8, !dbg !76

; <label>:3                                       ; preds = %0
  %4 = sitofp i32 %u to double, !dbg !83
  %5 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2, !dbg !84
  %6 = load double* %5, align 8, !dbg !84, !tbaa !79
  %7 = fcmp ult double %4, %6, !dbg !85
  br i1 %7, label %12, label %8, !dbg !86

; <label>:8                                       ; preds = %._crit_edge, %3
  %9 = phi double [ %.pre, %._crit_edge ], [ %6, %3 ]
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !87, !tbaa !63
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), %struct._Drand* %drand, i32 %u, double %9) #6, !dbg !88
  tail call void @exit(i32 -1) #7, !dbg !89
  unreachable, !dbg !89

; <label>:12                                      ; preds = %3
  %13 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0, !dbg !90
  store double %4, double* %13, align 8, !dbg !91, !tbaa !92
  %14 = fmul double %4, 2.718000e+03, !dbg !93
  %15 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3, !dbg !94
  %16 = load double* %15, align 8, !dbg !94, !tbaa !95
  %17 = tail call double @fmod(double %14, double %16) #8, !dbg !96
  %18 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1, !dbg !97
  store double %17, double* %18, align 8, !dbg !98, !tbaa !99
  ret void, !dbg !100
}

; Function Attrs: nounwind optsize readnone
declare double @fmod(double, double) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @Drand_setSeeds(%struct._Drand* %drand, i32 %u, i32 %v) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !37, metadata !56), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %u, i64 0, metadata !38, metadata !56), !dbg !102
  tail call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !39, metadata !56), !dbg !103
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !104
  %2 = icmp slt i32 %u, 1, !dbg !106
  %or.cond = or i1 %1, %2, !dbg !107
  br i1 %or.cond, label %._crit_edge, label %3, !dbg !107

._crit_edge:                                      ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2
  %.pre = load double* %.phi.trans.insert, align 8, !dbg !108, !tbaa !79
  br label %14, !dbg !107

; <label>:3                                       ; preds = %0
  %4 = sitofp i32 %u to double, !dbg !110
  %5 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2, !dbg !111
  %6 = load double* %5, align 8, !dbg !111, !tbaa !79
  %7 = fcmp oge double %4, %6, !dbg !112
  %8 = icmp slt i32 %v, 1, !dbg !113
  %or.cond3 = or i1 %8, %7, !dbg !114
  br i1 %or.cond3, label %14, label %9, !dbg !114

; <label>:9                                       ; preds = %3
  %10 = sitofp i32 %v to double, !dbg !115
  %11 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3, !dbg !116
  %12 = load double* %11, align 8, !dbg !116, !tbaa !95
  %13 = fcmp ult double %10, %12, !dbg !117
  br i1 %13, label %20, label %14, !dbg !118

; <label>:14                                      ; preds = %._crit_edge, %9, %3
  %15 = phi double [ %.pre, %._crit_edge ], [ %6, %9 ], [ %6, %3 ]
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !119, !tbaa !63
  %17 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3, !dbg !120
  %18 = load double* %17, align 8, !dbg !120, !tbaa !95
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([108 x i8]* @.str2, i64 0, i64 0), %struct._Drand* %drand, i32 %u, i32 %v, double %15, double %18) #6, !dbg !121
  tail call void @exit(i32 -1) #7, !dbg !122
  unreachable, !dbg !122

; <label>:20                                      ; preds = %9
  %21 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0, !dbg !123
  store double %4, double* %21, align 8, !dbg !124, !tbaa !92
  %22 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1, !dbg !125
  store double %10, double* %22, align 8, !dbg !126, !tbaa !99
  ret void, !dbg !127
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Drand_setUniform(%struct._Drand* %drand, double %lower, double %upper) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !44, metadata !56), !dbg !128
  tail call void @llvm.dbg.value(metadata double %lower, i64 0, metadata !45, metadata !56), !dbg !129
  tail call void @llvm.dbg.value(metadata double %upper, i64 0, metadata !46, metadata !56), !dbg !130
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !131
  %2 = fcmp ogt double %lower, %upper, !dbg !133
  %or.cond = or i1 %1, %2, !dbg !134
  br i1 %or.cond, label %3, label %6, !dbg !134

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !135, !tbaa !63
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), %struct._Drand* %drand, double %lower, double %upper) #6, !dbg !137
  tail call void @exit(i32 -1) #7, !dbg !138
  unreachable, !dbg !138

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8, !dbg !139
  store i32 1, i32* %7, align 4, !dbg !140, !tbaa !141
  %8 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 4, !dbg !142
  store double %lower, double* %8, align 8, !dbg !143, !tbaa !144
  %9 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 5, !dbg !145
  store double %upper, double* %9, align 8, !dbg !146, !tbaa !147
  ret void, !dbg !148
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Drand_setNormal(%struct._Drand* %drand, double %mean, double %sigma) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !49, metadata !56), !dbg !149
  tail call void @llvm.dbg.value(metadata double %mean, i64 0, metadata !50, metadata !56), !dbg !150
  tail call void @llvm.dbg.value(metadata double %sigma, i64 0, metadata !51, metadata !56), !dbg !151
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !152
  %2 = fcmp ole double %sigma, 0.000000e+00, !dbg !154
  %or.cond = or i1 %1, %2, !dbg !155
  br i1 %or.cond, label %3, label %6, !dbg !155

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !156, !tbaa !63
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), %struct._Drand* %drand, double %mean, double %sigma) #6, !dbg !158
  tail call void @exit(i32 -1) #7, !dbg !159
  unreachable, !dbg !159

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8, !dbg !160
  store i32 2, i32* %7, align 4, !dbg !161, !tbaa !141
  %8 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 6, !dbg !162
  store double %mean, double* %8, align 8, !dbg !163, !tbaa !164
  %9 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 7, !dbg !165
  store double %sigma, double* %9, align 8, !dbg !166, !tbaa !167
  ret void, !dbg !168
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !27, !33, !40, !47}
!6 = !DISubprogram(name: "Drand_init", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Drand*)* @Drand_init, variables: !25)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Drand", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/../Drand.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Drand", file: !11, line: 17, size: 576, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21, !22, !23}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "seed1", scope: !12, file: !11, line: 18, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "seed2", scope: !12, file: !11, line: 19, baseType: !15, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !12, file: !11, line: 20, baseType: !15, size: 64, align: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !12, file: !11, line: 21, baseType: !15, size: 64, align: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !12, file: !11, line: 22, baseType: !15, size: 64, align: 64, offset: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !12, file: !11, line: 23, baseType: !15, size: 64, align: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !12, file: !11, line: 24, baseType: !15, size: 64, align: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !12, file: !11, line: 25, baseType: !15, size: 64, align: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !12, file: !11, line: 26, baseType: !24, size: 32, align: 32, offset: 512)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !{!26}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!27 = !DISubprogram(name: "Drand_setSeed", scope: !1, file: !1, line: 45, type: !28, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Drand*, i32)* @Drand_setSeed, variables: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !9, !24}
!30 = !{!31, !32}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !27, file: !1, line: 46, type: !9)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "u", arg: 2, scope: !27, file: !1, line: 47, type: !24)
!33 = !DISubprogram(name: "Drand_setSeeds", scope: !1, file: !1, line: 69, type: !34, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Drand*, i32, i32)* @Drand_setSeeds, variables: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !9, !24, !24}
!36 = !{!37, !38, !39}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !33, file: !1, line: 70, type: !9)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "u", arg: 2, scope: !33, file: !1, line: 71, type: !24)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !33, file: !1, line: 72, type: !24)
!40 = !DISubprogram(name: "Drand_setUniform", scope: !1, file: !1, line: 97, type: !41, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Drand*, double, double)* @Drand_setUniform, variables: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !9, !15, !15}
!43 = !{!44, !45, !46}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !40, file: !1, line: 98, type: !9)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lower", arg: 2, scope: !40, file: !1, line: 99, type: !15)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "upper", arg: 3, scope: !40, file: !1, line: 100, type: !15)
!47 = !DISubprogram(name: "Drand_setNormal", scope: !1, file: !1, line: 127, type: !41, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Drand*, double, double)* @Drand_setNormal, variables: !48)
!48 = !{!49, !50, !51}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !47, file: !1, line: 128, type: !9)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mean", arg: 2, scope: !47, file: !1, line: 129, type: !15)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sigma", arg: 3, scope: !47, file: !1, line: 130, type: !15)
!52 = !{i32 2, !"Dwarf Version", i32 2}
!53 = !{i32 2, !"Debug Info Version", i32 700000003}
!54 = !{i32 1, !"PIC Level", i32 2}
!55 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!56 = !DIExpression()
!57 = !DILocation(line: 15, column: 13, scope: !6)
!58 = !DILocation(line: 22, column: 12, scope: !59)
!59 = distinct !DILexicalBlock(scope: !6, file: !1, line: 22, column: 6)
!60 = !DILocation(line: 22, column: 6, scope: !6)
!61 = !DILocation(line: 23, column: 12, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 22, column: 22)
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !DILocation(line: 23, column: 4, scope: !62)
!68 = !DILocation(line: 25, column: 4, scope: !62)
!69 = !DILocation(line: 32, column: 1, scope: !6)
!70 = !DILocation(line: 34, column: 1, scope: !6)
!71 = !DILocation(line: 46, column: 13, scope: !27)
!72 = !DILocation(line: 47, column: 12, scope: !27)
!73 = !DILocation(line: 49, column: 12, scope: !74)
!74 = distinct !DILexicalBlock(scope: !27, file: !1, line: 49, column: 6)
!75 = !DILocation(line: 49, column: 25, scope: !74)
!76 = !DILocation(line: 49, column: 20, scope: !74)
!77 = !DILocation(line: 52, column: 29, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 49, column: 53)
!79 = !{!80, !81, i64 16}
!80 = !{!"_Drand", !81, i64 0, !81, i64 8, !81, i64 16, !81, i64 24, !81, i64 32, !81, i64 40, !81, i64 48, !81, i64 56, !82, i64 64}
!81 = !{!"double", !65, i64 0}
!82 = !{!"int", !65, i64 0}
!83 = !DILocation(line: 49, column: 33, scope: !74)
!84 = !DILocation(line: 49, column: 45, scope: !74)
!85 = !DILocation(line: 49, column: 35, scope: !74)
!86 = !DILocation(line: 49, column: 6, scope: !27)
!87 = !DILocation(line: 50, column: 12, scope: !78)
!88 = !DILocation(line: 50, column: 4, scope: !78)
!89 = !DILocation(line: 53, column: 4, scope: !78)
!90 = !DILocation(line: 55, column: 8, scope: !27)
!91 = !DILocation(line: 55, column: 14, scope: !27)
!92 = !{!80, !81, i64 0}
!93 = !DILocation(line: 56, column: 26, scope: !27)
!94 = !DILocation(line: 56, column: 37, scope: !27)
!95 = !{!80, !81, i64 24}
!96 = !DILocation(line: 56, column: 16, scope: !27)
!97 = !DILocation(line: 56, column: 8, scope: !27)
!98 = !DILocation(line: 56, column: 14, scope: !27)
!99 = !{!80, !81, i64 8}
!100 = !DILocation(line: 58, column: 1, scope: !27)
!101 = !DILocation(line: 70, column: 13, scope: !33)
!102 = !DILocation(line: 71, column: 12, scope: !33)
!103 = !DILocation(line: 72, column: 12, scope: !33)
!104 = !DILocation(line: 74, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !33, file: !1, line: 74, column: 7)
!106 = !DILocation(line: 75, column: 9, scope: !105)
!107 = !DILocation(line: 75, column: 4, scope: !105)
!108 = !DILocation(line: 80, column: 32, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 76, column: 37)
!110 = !DILocation(line: 75, column: 17, scope: !105)
!111 = !DILocation(line: 75, column: 29, scope: !105)
!112 = !DILocation(line: 75, column: 19, scope: !105)
!113 = !DILocation(line: 76, column: 9, scope: !105)
!114 = !DILocation(line: 76, column: 4, scope: !105)
!115 = !DILocation(line: 76, column: 17, scope: !105)
!116 = !DILocation(line: 76, column: 29, scope: !105)
!117 = !DILocation(line: 76, column: 19, scope: !105)
!118 = !DILocation(line: 74, column: 7, scope: !33)
!119 = !DILocation(line: 77, column: 12, scope: !109)
!120 = !DILocation(line: 80, column: 46, scope: !109)
!121 = !DILocation(line: 77, column: 4, scope: !109)
!122 = !DILocation(line: 81, column: 4, scope: !109)
!123 = !DILocation(line: 83, column: 8, scope: !33)
!124 = !DILocation(line: 83, column: 14, scope: !33)
!125 = !DILocation(line: 84, column: 8, scope: !33)
!126 = !DILocation(line: 84, column: 14, scope: !33)
!127 = !DILocation(line: 86, column: 1, scope: !33)
!128 = !DILocation(line: 98, column: 14, scope: !40)
!129 = !DILocation(line: 99, column: 13, scope: !40)
!130 = !DILocation(line: 100, column: 13, scope: !40)
!131 = !DILocation(line: 107, column: 12, scope: !132)
!132 = distinct !DILexicalBlock(scope: !40, file: !1, line: 107, column: 6)
!133 = !DILocation(line: 107, column: 29, scope: !132)
!134 = !DILocation(line: 107, column: 20, scope: !132)
!135 = !DILocation(line: 108, column: 12, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 107, column: 39)
!137 = !DILocation(line: 108, column: 4, scope: !136)
!138 = !DILocation(line: 110, column: 4, scope: !136)
!139 = !DILocation(line: 112, column: 8, scope: !40)
!140 = !DILocation(line: 112, column: 14, scope: !40)
!141 = !{!80, !82, i64 64}
!142 = !DILocation(line: 113, column: 8, scope: !40)
!143 = !DILocation(line: 113, column: 14, scope: !40)
!144 = !{!80, !81, i64 32}
!145 = !DILocation(line: 114, column: 8, scope: !40)
!146 = !DILocation(line: 114, column: 14, scope: !40)
!147 = !{!80, !81, i64 40}
!148 = !DILocation(line: 116, column: 1, scope: !40)
!149 = !DILocation(line: 128, column: 14, scope: !47)
!150 = !DILocation(line: 129, column: 13, scope: !47)
!151 = !DILocation(line: 130, column: 13, scope: !47)
!152 = !DILocation(line: 137, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !47, file: !1, line: 137, column: 6)
!154 = !DILocation(line: 137, column: 29, scope: !153)
!155 = !DILocation(line: 137, column: 20, scope: !153)
!156 = !DILocation(line: 138, column: 12, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !1, line: 137, column: 36)
!158 = !DILocation(line: 138, column: 4, scope: !157)
!159 = !DILocation(line: 140, column: 4, scope: !157)
!160 = !DILocation(line: 142, column: 8, scope: !47)
!161 = !DILocation(line: 142, column: 14, scope: !47)
!162 = !DILocation(line: 143, column: 8, scope: !47)
!163 = !DILocation(line: 143, column: 14, scope: !47)
!164 = !{!80, !81, i64 48}
!165 = !DILocation(line: 144, column: 8, scope: !47)
!166 = !DILocation(line: 144, column: 14, scope: !47)
!167 = !{!80, !81, i64 56}
!168 = !DILocation(line: 146, column: 1, scope: !47)
