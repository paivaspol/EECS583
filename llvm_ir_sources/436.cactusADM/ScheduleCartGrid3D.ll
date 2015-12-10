; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCartGrid3D.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [18 x i8] c"grid::coordinates\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"grid::gridspacings\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"SymmetryStartup\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str5 = private unnamed_addr constant [39 x i8] c"Register GH Extension for GridSymmetry\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"RegisterCartGrid3DCoords\00", align 1
@.str9 = private unnamed_addr constant [44 x i8] c"Register coordinates for the Cartesian grid\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"ParamCheck_CartGrid3D\00", align 1
@.str11 = private unnamed_addr constant [33 x i8] c"Check coordinates for CartGrid3D\00", align 1
@.str12 = private unnamed_addr constant [16 x i8] c"CCTK_PARAMCHECK\00", align 1
@.str13 = private unnamed_addr constant [19 x i8] c"SpatialCoordinates\00", align 1
@.str14 = private unnamed_addr constant [50 x i8] c"Set up spatial 3D Cartesian coordinates on the GH\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_CartGrid3D() #0 {
  %1 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0)) #3, !dbg !58
  %2 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !59
  %3 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0)) #3, !dbg !60
  %4 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !61
  %5 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @SymmetryStartup to i8*), i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !62
  %6 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @RegisterCartGrid3DCoords to i8*), i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !63
  %7 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @ParamCheck_CartGrid3D to i8*), i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !64
  %8 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @CartGrid3D to i8*), i8* getelementptr inbounds ([19 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !65
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !51, metadata !66), !dbg !67
  ret void, !dbg !68
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupStorage(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupComm(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @SymmetryStartup() #1

; Function Attrs: optsize
declare i32 @RegisterCartGrid3DCoords() #1

; Function Attrs: optsize
declare i32 @ParamCheck_CartGrid3D() #1

; Function Attrs: optsize
declare i32 @CartGrid3D() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!54, !55, !56}
!llvm.ident = !{!57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCartGrid3D.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "CCTKi_BindingsSchedule_CartGrid3D", scope: !1, file: !1, line: 34, type: !7, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_BindingsSchedule_CartGrid3D, variables: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{!10, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !28, !29, !30, !31, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !6, file: !1, line: 36, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dxyz", scope: !6, file: !1, line: 36, type: !11)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dy", scope: !6, file: !1, line: 36, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dz", scope: !6, file: !1, line: 36, type: !11)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmax", scope: !6, file: !1, line: 36, type: !11)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmin", scope: !6, file: !1, line: 36, type: !11)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmax", scope: !6, file: !1, line: 36, type: !11)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmin", scope: !6, file: !1, line: 36, type: !11)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymax", scope: !6, file: !1, line: 36, type: !11)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymin", scope: !6, file: !1, line: 36, type: !11)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmax", scope: !6, file: !1, line: 36, type: !11)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmin", scope: !6, file: !1, line: 36, type: !11)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitant_plane", scope: !6, file: !1, line: 36, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !6, file: !1, line: 36, type: !25)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quadrant_direction", scope: !6, file: !1, line: 36, type: !25)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !6, file: !1, line: 36, type: !25)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmax", scope: !6, file: !1, line: 36, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmin", scope: !6, file: !1, line: 36, type: !32)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymax", scope: !6, file: !1, line: 36, type: !32)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymin", scope: !6, file: !1, line: 36, type: !32)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmax", scope: !6, file: !1, line: 36, type: !32)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmin", scope: !6, file: !1, line: 36, type: !32)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_origin", scope: !6, file: !1, line: 36, type: !32)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originx", scope: !6, file: !1, line: 36, type: !32)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originy", scope: !6, file: !1, line: 36, type: !32)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originz", scope: !6, file: !1, line: 36, type: !32)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_origin", scope: !6, file: !1, line: 36, type: !32)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originx", scope: !6, file: !1, line: 36, type: !32)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originy", scope: !6, file: !1, line: 36, type: !32)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originz", scope: !6, file: !1, line: 36, type: !32)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !6, file: !1, line: 36, type: !32)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !6, file: !1, line: 36, type: !32)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !6, file: !1, line: 36, type: !32)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !6, file: !1, line: 36, type: !32)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !6, file: !1, line: 36, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!54 = !{i32 2, !"Dwarf Version", i32 2}
!55 = !{i32 2, !"Debug Info Version", i32 700000003}
!56 = !{i32 1, !"PIC Level", i32 2}
!57 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!58 = !DILocation(line: 37, column: 3, scope: !6)
!59 = !DILocation(line: 38, column: 3, scope: !6)
!60 = !DILocation(line: 39, column: 3, scope: !6)
!61 = !DILocation(line: 40, column: 3, scope: !6)
!62 = !DILocation(line: 42, column: 3, scope: !6)
!63 = !DILocation(line: 59, column: 3, scope: !6)
!64 = !DILocation(line: 76, column: 3, scope: !6)
!65 = !DILocation(line: 93, column: 3, scope: !6)
!66 = !DIExpression()
!67 = !DILocation(line: 36, column: 3, scope: !6)
!68 = !DILocation(line: 111, column: 22, scope: !6)
