; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/utils/random.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.gg_rand_state = type { [25 x i32], i32 }

@x = internal unnamed_addr global [25 x i32] zeroinitializer, align 16
@k = internal unnamed_addr global i32 0, align 4
@rand_initialized = internal unnamed_addr global i1 false
@__func__.next_rand = private unnamed_addr constant [10 x i8] c"next_rand\00", align 1
@.str = private unnamed_addr constant [70 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/utils/random.c\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"rand_initialized\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @gg_srand(i32 %seed) #0 {
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !11, metadata !65), !dbg !66
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !12, metadata !65), !dbg !67
  br label %1, !dbg !68

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %.01 = phi i32 [ %seed, %0 ], [ %4, %1 ]
  %2 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv, !dbg !70
  store i32 %.01, i32* %2, align 4, !dbg !73, !tbaa !74
  %3 = mul i32 %.01, 1313, !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !11, metadata !65), !dbg !66
  %4 = add i32 %3, 88897, !dbg !79
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !11, metadata !65), !dbg !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !68
  %exitcond = icmp eq i64 %indvars.iv.next, 25, !dbg !68
  br i1 %exitcond, label %5, label %1, !dbg !68

; <label>:5                                       ; preds = %1
  store i32 24, i32* @k, align 4, !dbg !80, !tbaa !74
  store i1 true, i1* @rand_initialized, align 1
  ret void, !dbg !81
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gg_rand() #0 {
  %1 = tail call fastcc i32 @next_rand() #3, !dbg !82
  %2 = and i32 %1, 2147483647, !dbg !83
  ret i32 %2, !dbg !84
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @next_rand() #0 {
  %.b = load i1* @rand_initialized, align 1
  br i1 %.b, label %2, label %1, !dbg !85

; <label>:1                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.next_rand, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @.str, i64 0, i64 0), i32 90, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !86
  unreachable, !dbg !86

; <label>:2                                       ; preds = %0
  %3 = load i32* @k, align 4, !dbg !89, !tbaa !74
  %4 = add nsw i32 %3, 1, !dbg !89
  store i32 %4, i32* @k, align 4, !dbg !89, !tbaa !74
  %5 = icmp eq i32 %4, 25, !dbg !91
  br i1 %5, label %vector.body, label %30, !dbg !92

vector.body:                                      ; preds = %2, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %2 ], !dbg !93
  %6 = add i64 %index, 7, !dbg !95
  %7 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %6, !dbg !95
  %8 = bitcast i32* %7 to <2 x i32>*, !dbg !95
  %wide.load = load <2 x i32>* %8, align 4, !dbg !95, !tbaa !74
  %9 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %index, !dbg !99
  %10 = bitcast i32* %9 to <2 x i32>*, !dbg !99
  %wide.load1 = load <2 x i32>* %10, align 8, !dbg !99, !tbaa !74
  %11 = lshr <2 x i32> %wide.load1, <i32 1, i32 1>, !dbg !100
  %12 = xor <2 x i32> %11, %wide.load, !dbg !101
  %13 = and <2 x i32> %wide.load1, <i32 1, i32 1>, !dbg !102
  %14 = icmp ne <2 x i32> %13, zeroinitializer, !dbg !103
  %15 = select <2 x i1> %14, <2 x i32> <i32 -1900031960, i32 -1900031960>, <2 x i32> zeroinitializer, !dbg !103
  %16 = xor <2 x i32> %12, %15, !dbg !104
  %17 = bitcast i32* %9 to <2 x i32>*, !dbg !105
  store <2 x i32> %16, <2 x i32>* %17, align 8, !dbg !105, !tbaa !74
  %index.next = add i64 %index, 2, !dbg !93
  %18 = icmp eq i64 %index.next, 18, !dbg !93
  br i1 %18, label %.lr.ph.i, label %vector.body, !dbg !93, !llvm.loop !106

.lr.ph.i:                                         ; preds = %vector.body, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 18, %vector.body ], !dbg !93
  %19 = add nsw i64 %indvars.iv.i, -18, !dbg !109
  %20 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %19, !dbg !112
  %21 = load i32* %20, align 4, !dbg !112, !tbaa !74
  %22 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv.i, !dbg !113
  %23 = load i32* %22, align 4, !dbg !113, !tbaa !74
  %24 = lshr i32 %23, 1, !dbg !114
  %25 = xor i32 %24, %21, !dbg !115
  %26 = and i32 %23, 1, !dbg !116
  %27 = icmp ne i32 %26, 0, !dbg !117
  %28 = select i1 %27, i32 -1900031960, i32 0, !dbg !117
  %29 = xor i32 %25, %28, !dbg !118
  store i32 %29, i32* %22, align 4, !dbg !119, !tbaa !74
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !120
  %exitcond = icmp eq i64 %indvars.iv.next.i, 25, !dbg !120
  br i1 %exitcond, label %iterate_tgfsr.exit, label %.lr.ph.i, !dbg !120

iterate_tgfsr.exit:                               ; preds = %.lr.ph.i
  store i32 0, i32* @k, align 4, !dbg !121, !tbaa !74
  br label %30, !dbg !122

; <label>:30                                      ; preds = %iterate_tgfsr.exit, %2
  %31 = phi i32 [ 0, %iterate_tgfsr.exit ], [ %4, %2 ]
  %32 = sext i32 %31 to i64, !dbg !123
  %33 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %32, !dbg !123
  %34 = load i32* %33, align 4, !dbg !123, !tbaa !74
  %35 = shl i32 %34, 7, !dbg !124
  %36 = and i32 %35, 727393536, !dbg !125
  %37 = xor i32 %36, %34, !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !43, metadata !65), !dbg !127
  %38 = shl i32 %37, 15, !dbg !128
  %39 = and i32 %38, -611647488, !dbg !129
  %40 = xor i32 %39, %37, !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !43, metadata !65), !dbg !127
  ret i32 %40, !dbg !131
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gg_urand() #0 {
  %1 = tail call fastcc i32 @next_rand() #3, !dbg !132
  ret i32 %1, !dbg !133
}

; Function Attrs: nounwind optsize ssp uwtable
define double @gg_drand() #0 {
  %1 = tail call fastcc i32 @next_rand() #3, !dbg !134
  %2 = uitofp i32 %1 to double, !dbg !134
  %3 = fmul double %2, 0x3DEFFFFFFFFFFFFF, !dbg !135
  ret double %3, !dbg !136
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gg_get_rand_state(%struct.gg_rand_state* nocapture %state) #0 {
  tail call void @llvm.dbg.value(metadata %struct.gg_rand_state* %state, i64 0, metadata !35, metadata !65), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !36, metadata !65), !dbg !138
  br label %1, !dbg !139

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv, !dbg !141
  %3 = load i32* %2, align 4, !dbg !141, !tbaa !74
  %4 = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 0, i64 %indvars.iv, !dbg !143
  store i32 %3, i32* %4, align 4, !dbg !144, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !139
  %exitcond = icmp eq i64 %indvars.iv.next, 25, !dbg !139
  br i1 %exitcond, label %5, label %1, !dbg !139

; <label>:5                                       ; preds = %1
  %6 = load i32* @k, align 4, !dbg !145, !tbaa !74
  %7 = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 1, !dbg !146
  store i32 %6, i32* %7, align 4, !dbg !147, !tbaa !148
  ret void, !dbg !150
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gg_set_rand_state(%struct.gg_rand_state* nocapture readonly %state) #0 {
  tail call void @llvm.dbg.value(metadata %struct.gg_rand_state* %state, i64 0, metadata !39, metadata !65), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !40, metadata !65), !dbg !152
  br label %1, !dbg !153

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 0, i64 %indvars.iv, !dbg !155
  %3 = load i32* %2, align 4, !dbg !155, !tbaa !74
  %4 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv, !dbg !157
  store i32 %3, i32* %4, align 4, !dbg !158, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !153
  %exitcond = icmp eq i64 %indvars.iv.next, 25, !dbg !153
  br i1 %exitcond, label %5, label %1, !dbg !153

; <label>:5                                       ; preds = %1
  %6 = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 1, !dbg !159
  %7 = load i32* %6, align 4, !dbg !159, !tbaa !148
  store i32 %7, i32* @k, align 4, !dbg !160, !tbaa !74
  ret void, !dbg !161
}

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize }
attributes #4 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!61, !62, !63}
!llvm.ident = !{!64}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !49, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/utils/random.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !{!6, !13, !15, !18, !22, !37, !41, !44}
!6 = !DISubprogram(name: "gg_srand", scope: !1, file: !1, line: 118, type: !7, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @gg_srand, variables: !10)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !12}
!11 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 1, scope: !6, file: !1, line: 118, type: !9)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !6, file: !1, line: 120, type: !4)
!13 = !DISubprogram(name: "gg_rand", scope: !1, file: !1, line: 138, type: !14, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @gg_rand, variables: !2)
!14 = !DISubroutineType(types: !3)
!15 = !DISubprogram(name: "gg_urand", scope: !1, file: !1, line: 148, type: !16, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @gg_urand, variables: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!9}
!18 = !DISubprogram(name: "gg_drand", scope: !1, file: !1, line: 163, type: !19, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @gg_drand, variables: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!22 = !DISubprogram(name: "gg_get_rand_state", scope: !1, file: !1, line: 173, type: !23, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.gg_rand_state*)* @gg_get_rand_state, variables: !34)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "gg_rand_state", file: !27, line: 46, size: 832, align: 32, elements: !28)
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/utils/random.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !{!29, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !26, file: !27, line: 47, baseType: !30, size: 800, align: 32)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 800, align: 32, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 25)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !26, file: !27, line: 48, baseType: !4, size: 32, align: 32, offset: 800)
!34 = !{!35, !36}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !22, file: !1, line: 173, type: !25)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !22, file: !1, line: 175, type: !4)
!37 = !DISubprogram(name: "gg_set_rand_state", scope: !1, file: !1, line: 186, type: !23, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.gg_rand_state*)* @gg_set_rand_state, variables: !38)
!38 = !{!39, !40}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !37, file: !1, line: 186, type: !25)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !37, file: !1, line: 188, type: !4)
!41 = !DISubprogram(name: "next_rand", scope: !1, file: !1, line: 86, type: !16, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @next_rand, variables: !42)
!42 = !{!43}
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !41, file: !1, line: 88, type: !4)
!44 = !DISubprogram(name: "iterate_tgfsr", scope: !1, file: !1, line: 72, type: !45, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, variables: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{null}
!47 = !{!48}
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !44, file: !1, line: 74, type: !4)
!49 = !{!50, !51, !52, !53, !55, !57, !58, !59, !60}
!50 = !DIGlobalVariable(name: "x", scope: !0, file: !1, line: 53, type: !30, isLocal: true, isDefinition: true, variable: [25 x i32]* @x)
!51 = !DIGlobalVariable(name: "k", scope: !0, file: !1, line: 54, type: !4, isLocal: true, isDefinition: true, variable: i32* @k)
!52 = !DIGlobalVariable(name: "rand_initialized", scope: !0, file: !1, line: 58, type: !4, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 45, type: !54, isLocal: true, isDefinition: true, variable: i32 7)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!55 = !DIGlobalVariable(name: "b", scope: !0, file: !1, line: 48, type: !56, isLocal: true, isDefinition: true, variable: i32 727393536)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!57 = !DIGlobalVariable(name: "t", scope: !0, file: !1, line: 46, type: !54, isLocal: true, isDefinition: true, variable: i32 15)
!58 = !DIGlobalVariable(name: "c", scope: !0, file: !1, line: 49, type: !56, isLocal: true, isDefinition: true, variable: i32 -611647488)
!59 = !DIGlobalVariable(name: "m", scope: !0, file: !1, line: 44, type: !54, isLocal: true, isDefinition: true, variable: i32 7)
!60 = !DIGlobalVariable(name: "a", scope: !0, file: !1, line: 47, type: !56, isLocal: true, isDefinition: true, variable: i32 -1900031960)
!61 = !{i32 2, !"Dwarf Version", i32 2}
!62 = !{i32 2, !"Debug Info Version", i32 700000003}
!63 = !{i32 1, !"PIC Level", i32 2}
!64 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!65 = !DIExpression()
!66 = !DILocation(line: 118, column: 23, scope: !6)
!67 = !DILocation(line: 120, column: 7, scope: !6)
!68 = !DILocation(line: 121, column: 3, scope: !69)
!69 = distinct !DILexicalBlock(scope: !6, file: !1, line: 121, column: 3)
!70 = !DILocation(line: 125, column: 5, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 121, column: 27)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 121, column: 3)
!73 = !DILocation(line: 125, column: 10, scope: !71)
!74 = !{!75, !75, i64 0}
!75 = !{!"int", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !DILocation(line: 126, column: 10, scope: !71)
!79 = !DILocation(line: 127, column: 10, scope: !71)
!80 = !DILocation(line: 129, column: 5, scope: !6)
!81 = !DILocation(line: 131, column: 1, scope: !6)
!82 = !DILocation(line: 140, column: 17, scope: !13)
!83 = !DILocation(line: 140, column: 29, scope: !13)
!84 = !DILocation(line: 140, column: 3, scope: !13)
!85 = !DILocation(line: 89, column: 7, scope: !41)
!86 = !DILocation(line: 90, column: 5, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 89, column: 26)
!88 = distinct !DILexicalBlock(scope: !41, file: !1, line: 89, column: 7)
!89 = !DILocation(line: 93, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !41, file: !1, line: 93, column: 7)
!91 = !DILocation(line: 93, column: 11, scope: !90)
!92 = !DILocation(line: 93, column: 7, scope: !41)
!93 = !DILocation(line: 94, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 93, column: 17)
!95 = !DILocation(line: 76, column: 12, scope: !96, inlinedAt: !98)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 75, column: 3)
!97 = distinct !DILexicalBlock(scope: !44, file: !1, line: 75, column: 3)
!98 = distinct !DILocation(line: 94, column: 5, scope: !94)
!99 = !DILocation(line: 76, column: 25, scope: !96, inlinedAt: !98)
!100 = !DILocation(line: 76, column: 30, scope: !96, inlinedAt: !98)
!101 = !DILocation(line: 76, column: 21, scope: !96, inlinedAt: !98)
!102 = !DILocation(line: 76, column: 47, scope: !96, inlinedAt: !98)
!103 = !DILocation(line: 76, column: 41, scope: !96, inlinedAt: !98)
!104 = !DILocation(line: 76, column: 37, scope: !96, inlinedAt: !98)
!105 = !DILocation(line: 76, column: 10, scope: !96, inlinedAt: !98)
!106 = distinct !{!106, !107, !108}
!107 = !{!"llvm.loop.vectorize.width", i32 1}
!108 = !{!"llvm.loop.interleave.count", i32 1}
!109 = !DILocation(line: 78, column: 17, scope: !110, inlinedAt: !98)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 77, column: 3)
!111 = distinct !DILexicalBlock(scope: !44, file: !1, line: 77, column: 3)
!112 = !DILocation(line: 78, column: 12, scope: !110, inlinedAt: !98)
!113 = !DILocation(line: 78, column: 25, scope: !110, inlinedAt: !98)
!114 = !DILocation(line: 78, column: 30, scope: !110, inlinedAt: !98)
!115 = !DILocation(line: 78, column: 21, scope: !110, inlinedAt: !98)
!116 = !DILocation(line: 78, column: 47, scope: !110, inlinedAt: !98)
!117 = !DILocation(line: 78, column: 41, scope: !110, inlinedAt: !98)
!118 = !DILocation(line: 78, column: 37, scope: !110, inlinedAt: !98)
!119 = !DILocation(line: 78, column: 10, scope: !110, inlinedAt: !98)
!120 = !DILocation(line: 77, column: 3, scope: !111, inlinedAt: !98)
!121 = !DILocation(line: 95, column: 7, scope: !94)
!122 = !DILocation(line: 96, column: 3, scope: !94)
!123 = !DILocation(line: 97, column: 7, scope: !41)
!124 = !DILocation(line: 97, column: 21, scope: !41)
!125 = !DILocation(line: 97, column: 27, scope: !41)
!126 = !DILocation(line: 97, column: 12, scope: !41)
!127 = !DILocation(line: 88, column: 7, scope: !41)
!128 = !DILocation(line: 98, column: 12, scope: !41)
!129 = !DILocation(line: 98, column: 18, scope: !41)
!130 = !DILocation(line: 98, column: 5, scope: !41)
!131 = !DILocation(line: 102, column: 3, scope: !41)
!132 = !DILocation(line: 150, column: 10, scope: !15)
!133 = !DILocation(line: 150, column: 3, scope: !15)
!134 = !DILocation(line: 165, column: 10, scope: !18)
!135 = !DILocation(line: 165, column: 22, scope: !18)
!136 = !DILocation(line: 165, column: 3, scope: !18)
!137 = !DILocation(line: 173, column: 41, scope: !22)
!138 = !DILocation(line: 175, column: 7, scope: !22)
!139 = !DILocation(line: 176, column: 3, scope: !140)
!140 = distinct !DILexicalBlock(scope: !22, file: !1, line: 176, column: 3)
!141 = !DILocation(line: 177, column: 19, scope: !142)
!142 = distinct !DILexicalBlock(scope: !140, file: !1, line: 176, column: 3)
!143 = !DILocation(line: 177, column: 5, scope: !142)
!144 = !DILocation(line: 177, column: 17, scope: !142)
!145 = !DILocation(line: 178, column: 14, scope: !22)
!146 = !DILocation(line: 178, column: 10, scope: !22)
!147 = !DILocation(line: 178, column: 12, scope: !22)
!148 = !{!149, !75, i64 100}
!149 = !{!"gg_rand_state", !76, i64 0, !75, i64 100}
!150 = !DILocation(line: 179, column: 1, scope: !22)
!151 = !DILocation(line: 186, column: 41, scope: !37)
!152 = !DILocation(line: 188, column: 7, scope: !37)
!153 = !DILocation(line: 189, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !37, file: !1, line: 189, column: 3)
!155 = !DILocation(line: 190, column: 12, scope: !156)
!156 = distinct !DILexicalBlock(scope: !154, file: !1, line: 189, column: 3)
!157 = !DILocation(line: 190, column: 5, scope: !156)
!158 = !DILocation(line: 190, column: 10, scope: !156)
!159 = !DILocation(line: 191, column: 14, scope: !37)
!160 = !DILocation(line: 191, column: 5, scope: !37)
!161 = !DILocation(line: 192, column: 1, scope: !37)
