; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOASCII.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [16 x i8] c"IOASCII_Startup\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"Startup routine\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"IOUtil_Startup\00", align 1
@.str6 = private unnamed_addr constant [17 x i8] c"IOASCII_Choose1D\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"Choose 1D output lines\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str9 = private unnamed_addr constant [19 x i8] c"SpatialCoordinates\00", align 1
@.str10 = private unnamed_addr constant [17 x i8] c"IOASCII_Choose2D\00", align 1
@.str11 = private unnamed_addr constant [24 x i8] c"Choose 2D output planes\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_IOASCII() #0 {
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOASCII_Startup to i8*), i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !83
  %2 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOASCII_Choose1D to i8*), i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !84
  %3 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOASCII_Choose2D to i8*), i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !76, metadata !86), !dbg !87
  ret void, !dbg !88
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @IOASCII_Startup() #1

; Function Attrs: optsize
declare i32 @IOASCII_Choose1D() #1

; Function Attrs: optsize
declare i32 @IOASCII_Choose2D() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!79, !80, !81}
!llvm.ident = !{!82}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOASCII.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "CCTKi_BindingsSchedule_IOASCII", scope: !1, file: !1, line: 33, type: !7, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_BindingsSchedule_IOASCII, variables: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{!10, !13, !14, !15, !16, !17, !18, !19, !20, !21, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_y", scope: !6, file: !1, line: 35, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_z", scope: !6, file: !1, line: 35, type: !11)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_x", scope: !6, file: !1, line: 35, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_z", scope: !6, file: !1, line: 35, type: !11)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_x", scope: !6, file: !1, line: 35, type: !11)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_y", scope: !6, file: !1, line: 35, type: !11)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xyplane_z", scope: !6, file: !1, line: 35, type: !11)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xzplane_y", scope: !6, file: !1, line: 35, type: !11)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_yzplane_x", scope: !6, file: !1, line: 35, type: !11)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_style", scope: !6, file: !1, line: 35, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_vars", scope: !6, file: !1, line: 35, type: !22)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_style", scope: !6, file: !1, line: 35, type: !22)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_vars", scope: !6, file: !1, line: 35, type: !22)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_style", scope: !6, file: !1, line: 35, type: !22)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_vars", scope: !6, file: !1, line: 35, type: !22)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_format", scope: !6, file: !1, line: 35, type: !22)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_style", scope: !6, file: !1, line: 35, type: !22)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir1D", scope: !6, file: !1, line: 35, type: !22)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir2D", scope: !6, file: !1, line: 35, type: !22)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir3D", scope: !6, file: !1, line: 35, type: !22)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_d", scope: !6, file: !1, line: 35, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_every", scope: !6, file: !1, line: 35, type: !36)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_x", scope: !6, file: !1, line: 35, type: !36)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_yi", scope: !6, file: !1, line: 35, type: !36)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_zi", scope: !6, file: !1, line: 35, type: !36)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_y", scope: !6, file: !1, line: 35, type: !36)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_xi", scope: !6, file: !1, line: 35, type: !36)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_zi", scope: !6, file: !1, line: 35, type: !36)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_z", scope: !6, file: !1, line: 35, type: !36)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_xi", scope: !6, file: !1, line: 35, type: !36)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_yi", scope: !6, file: !1, line: 35, type: !36)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_every", scope: !6, file: !1, line: 35, type: !36)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xyplane_zi", scope: !6, file: !1, line: 35, type: !36)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xzplane_yi", scope: !6, file: !1, line: 35, type: !36)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_yzplane_xi", scope: !6, file: !1, line: 35, type: !36)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_every", scope: !6, file: !1, line: 35, type: !36)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !6, file: !1, line: 35, type: !22)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !6, file: !1, line: 35, type: !36)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_y", scope: !6, file: !1, line: 35, type: !11)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_z", scope: !6, file: !1, line: 35, type: !11)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_x", scope: !6, file: !1, line: 35, type: !11)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_z", scope: !6, file: !1, line: 35, type: !11)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_x", scope: !6, file: !1, line: 35, type: !11)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_y", scope: !6, file: !1, line: 35, type: !11)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_yi", scope: !6, file: !1, line: 35, type: !36)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_zi", scope: !6, file: !1, line: 35, type: !36)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_xi", scope: !6, file: !1, line: 35, type: !36)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_zi", scope: !6, file: !1, line: 35, type: !36)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_xi", scope: !6, file: !1, line: 35, type: !36)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_yi", scope: !6, file: !1, line: 35, type: !36)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yzplane_x", scope: !6, file: !1, line: 35, type: !11)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xzplane_y", scope: !6, file: !1, line: 35, type: !11)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xyplane_z", scope: !6, file: !1, line: 35, type: !11)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xyplane_zi", scope: !6, file: !1, line: 35, type: !36)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xzplane_yi", scope: !6, file: !1, line: 35, type: !36)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yzplane_xi", scope: !6, file: !1, line: 35, type: !36)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !6, file: !1, line: 35, type: !22)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !6, file: !1, line: 35, type: !36)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !6, file: !1, line: 35, type: !22)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !6, file: !1, line: 35, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!79 = !{i32 2, !"Dwarf Version", i32 2}
!80 = !{i32 2, !"Debug Info Version", i32 700000003}
!81 = !{i32 1, !"PIC Level", i32 2}
!82 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!83 = !DILocation(line: 36, column: 3, scope: !6)
!84 = !DILocation(line: 54, column: 3, scope: !6)
!85 = !DILocation(line: 72, column: 3, scope: !6)
!86 = !DIExpression()
!87 = !DILocation(line: 35, column: 3, scope: !6)
!88 = !DILocation(line: 91, column: 22, scope: !6)
