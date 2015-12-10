; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOBasic.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [16 x i8] c"IOBasic_Startup\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"Startup routine\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"IOUtil_Startup\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_IOBasic() #0 {
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOBasic_Startup to i8*), i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !36
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !37), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @IOBasic_Startup() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOBasic.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "CCTKi_BindingsSchedule_IOBasic", scope: !1, file: !1, line: 31, type: !7, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_BindingsSchedule_IOBasic, variables: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{!10, !14, !15, !16, !17, !18, !19, !20, !23, !24, !25, !26, !27, !28, !29}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_reductions", scope: !6, file: !1, line: 33, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_vars", scope: !6, file: !1, line: 33, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_reductions", scope: !6, file: !1, line: 33, type: !11)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_style", scope: !6, file: !1, line: 33, type: !11)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_vars", scope: !6, file: !1, line: 33, type: !11)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_format", scope: !6, file: !1, line: 33, type: !11)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdirScalar", scope: !6, file: !1, line: 33, type: !11)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_every", scope: !6, file: !1, line: 33, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_every", scope: !6, file: !1, line: 33, type: !21)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !6, file: !1, line: 33, type: !11)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !6, file: !1, line: 33, type: !21)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !6, file: !1, line: 33, type: !11)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !6, file: !1, line: 33, type: !21)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !6, file: !1, line: 33, type: !11)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !6, file: !1, line: 33, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!32 = !{i32 2, !"Dwarf Version", i32 2}
!33 = !{i32 2, !"Debug Info Version", i32 700000003}
!34 = !{i32 1, !"PIC Level", i32 2}
!35 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!36 = !DILocation(line: 34, column: 3, scope: !6)
!37 = !DIExpression()
!38 = !DILocation(line: 33, column: 3, scope: !6)
!39 = !DILocation(line: 53, column: 22, scope: !6)
