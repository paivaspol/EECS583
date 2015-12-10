; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time_FortranWrapper.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"Time::couranttemps\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"time::speedvars\00", align 1
@.str4 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsFortranWrapperTime(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !51, metadata !64), !dbg !65
  tail call void @llvm.dbg.value(metadata i8* %fpointer, i64 0, metadata !52, metadata !64), !dbg !66
  %1 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt, align 4, !dbg !67, !tbaa !69
  %2 = icmp eq i32 %1, -1, !dbg !67
  br i1 %2, label %3, label %5, !dbg !73

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !67
  store i32 %4, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt, align 4, !dbg !67, !tbaa !69
  br label %5, !dbg !67

; <label>:5                                       ; preds = %3, %0
  %6 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps, align 4, !dbg !74, !tbaa !69
  %7 = icmp eq i32 %6, -1, !dbg !74
  br i1 %7, label %8, label %10, !dbg !73

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !74
  store i32 %9, i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps, align 4, !dbg !74, !tbaa !69
  br label %10, !dbg !74

; <label>:10                                      ; preds = %8, %5
  %11 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time, align 4, !dbg !76, !tbaa !69
  %12 = icmp eq i32 %11, -1, !dbg !76
  br i1 %12, label %13, label %15, !dbg !73

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !76
  store i32 %14, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time, align 4, !dbg !76, !tbaa !69
  br label %15, !dbg !76

; <label>:15                                      ; preds = %13, %10
  %16 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars, align 4, !dbg !78, !tbaa !69
  %17 = icmp eq i32 %16, -1, !dbg !78
  br i1 %17, label %18, label %20, !dbg !73

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !78
  store i32 %19, i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars, align 4, !dbg !78, !tbaa !69
  br label %20, !dbg !78

; <label>:20                                      ; preds = %18, %15
  %21 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed, align 4, !dbg !80, !tbaa !69
  %22 = icmp eq i32 %21, -1, !dbg !80
  br i1 %22, label %23, label %25, !dbg !73

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !80
  store i32 %24, i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed, align 4, !dbg !80, !tbaa !69
  br label %25, !dbg !80

; <label>:25                                      ; preds = %23, %20
  %26 = phi i32 [ %24, %23 ], [ %21, %20 ]
  %27 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, double*, double*, double*)*, !dbg !82
  tail call void @llvm.dbg.value(metadata void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, double*, double*, double*)* %27, i64 0, metadata !53, metadata !64), !dbg !83
  %28 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !84
  %29 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !84
  %30 = load i32** %29, align 8, !dbg !84, !tbaa !85
  %31 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !84
  %32 = load i32** %31, align 8, !dbg !84, !tbaa !89
  %33 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !84
  %34 = load i32** %33, align 8, !dbg !84, !tbaa !90
  %35 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !84
  %36 = load i32** %35, align 8, !dbg !84, !tbaa !91
  %37 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !84
  %38 = load i32** %37, align 8, !dbg !84, !tbaa !92
  %39 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8, !dbg !84
  %40 = load i32** %39, align 8, !dbg !84, !tbaa !93
  %41 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7, !dbg !84
  %42 = load i32** %41, align 8, !dbg !84, !tbaa !94
  %43 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !84
  %44 = load i32** %43, align 8, !dbg !84, !tbaa !95
  %45 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9, !dbg !84
  %46 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !84
  %47 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !84
  %48 = load double** %47, align 8, !dbg !84, !tbaa !96
  %49 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11, !dbg !84
  %50 = load double** %49, align 8, !dbg !84, !tbaa !97
  %51 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !84
  %52 = load i32** %51, align 8, !dbg !84, !tbaa !98
  %53 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !84
  %54 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !84
  %55 = load i32** %54, align 8, !dbg !84, !tbaa !99
  %56 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !84
  %57 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt, align 4, !dbg !84, !tbaa !69
  %58 = icmp slt i32 %57, 0, !dbg !84
  br i1 %58, label %67, label %59, !dbg !84

; <label>:59                                      ; preds = %25
  %60 = sext i32 %57 to i64, !dbg !84
  %61 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !84
  %62 = load i8**** %61, align 8, !dbg !84, !tbaa !100
  %63 = getelementptr inbounds i8*** %62, i64 %60, !dbg !84
  %64 = bitcast i8*** %63 to double***, !dbg !84
  %65 = load double*** %64, align 8, !dbg !84, !tbaa !101
  %66 = load double** %65, align 8, !dbg !84, !tbaa !101
  br label %67, !dbg !84

; <label>:67                                      ; preds = %25, %59
  %68 = phi double* [ %66, %59 ], [ null, %25 ]
  %69 = load i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time, align 4, !dbg !84, !tbaa !69
  %70 = icmp slt i32 %69, 0, !dbg !84
  br i1 %70, label %79, label %71, !dbg !84

; <label>:71                                      ; preds = %67
  %72 = sext i32 %69 to i64, !dbg !84
  %73 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !84
  %74 = load i8**** %73, align 8, !dbg !84, !tbaa !100
  %75 = getelementptr inbounds i8*** %74, i64 %72, !dbg !84
  %76 = bitcast i8*** %75 to double***, !dbg !84
  %77 = load double*** %76, align 8, !dbg !84, !tbaa !101
  %78 = load double** %77, align 8, !dbg !84, !tbaa !101
  br label %79, !dbg !84

; <label>:79                                      ; preds = %67, %71
  %80 = phi double* [ %78, %71 ], [ null, %67 ]
  %81 = icmp slt i32 %26, 0, !dbg !84
  br i1 %81, label %90, label %82, !dbg !84

; <label>:82                                      ; preds = %79
  %83 = sext i32 %26 to i64, !dbg !84
  %84 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !84
  %85 = load i8**** %84, align 8, !dbg !84, !tbaa !100
  %86 = getelementptr inbounds i8*** %85, i64 %83, !dbg !84
  %87 = bitcast i8*** %86 to double***, !dbg !84
  %88 = load double*** %87, align 8, !dbg !84, !tbaa !101
  %89 = load double** %88, align 8, !dbg !84, !tbaa !101
  br label %90, !dbg !84

; <label>:90                                      ; preds = %79, %82
  %91 = phi double* [ %89, %82 ], [ null, %79 ]
  tail call void %27(i32* %28, i32* %30, i32* %32, i32* %34, i32* %36, i32* %38, i32* %40, i32* %42, i32* %44, double* %45, double* %46, double* %48, double* %50, i32* %52, i32* %53, i32* %55, i32* %56, %struct.cGH* %GH, double* %68, double* %80, double* %91) #3, !dbg !102
  ret i32 0, !dbg !103
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !46, globals: !54, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time_FortranWrapper.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !9, !36}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !7, !7, !7, !7, !7, !7, !7, !7, !9, !9, !9, !9, !7, !7, !7, !7, !11, !9, !9, !9}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !13, line: 75, baseType: !14)
!13 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 24, size: 1216, align: 64, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !37, !38}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !14, file: !13, line: 26, baseType: !8, size: 32, align: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !14, file: !13, line: 27, baseType: !8, size: 32, align: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !14, file: !13, line: 30, baseType: !7, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !14, file: !13, line: 31, baseType: !7, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !14, file: !13, line: 32, baseType: !7, size: 64, align: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !14, file: !13, line: 33, baseType: !7, size: 64, align: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !14, file: !13, line: 36, baseType: !7, size: 64, align: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !14, file: !13, line: 39, baseType: !7, size: 64, align: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !14, file: !13, line: 40, baseType: !7, size: 64, align: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !14, file: !13, line: 43, baseType: !10, size: 64, align: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !14, file: !13, line: 44, baseType: !9, size: 64, align: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !14, file: !13, line: 47, baseType: !9, size: 64, align: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !14, file: !13, line: 51, baseType: !7, size: 64, align: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !14, file: !13, line: 54, baseType: !7, size: 64, align: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !14, file: !13, line: 57, baseType: !8, size: 32, align: 32, offset: 832)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !14, file: !13, line: 60, baseType: !7, size: 64, align: 64, offset: 896)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !14, file: !13, line: 63, baseType: !10, size: 64, align: 64, offset: 960)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !13, line: 67, baseType: !34, size: 64, align: 64, offset: 1024)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !14, file: !13, line: 70, baseType: !35, size: 64, align: 64, offset: 1088)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !14, file: !13, line: 73, baseType: !39, size: 64, align: 64, offset: 1152)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !13, line: 22, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 18, size: 16, align: 8, elements: !42)
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !41, file: !13, line: 20, baseType: !44, size: 8, align: 8)
!44 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !41, file: !13, line: 21, baseType: !44, size: 8, align: 8, offset: 8)
!46 = !{!47}
!47 = !DISubprogram(name: "CCTKi_BindingsFortranWrapperTime", scope: !1, file: !1, line: 13, type: !48, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTKi_BindingsFortranWrapperTime, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{!8, !11, !36}
!50 = !{!51, !52, !53}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !47, file: !1, line: 13, type: !11)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fpointer", arg: 2, scope: !47, file: !1, line: 13, type: !36)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "function", scope: !47, file: !1, line: 15, type: !4)
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIGlobalVariable(name: "CCTKARGNUM_courant_dt", scope: !47, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_dt)
!56 = !DIGlobalVariable(name: "CCTKGROUPNUM_couranttemps", scope: !47, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_couranttemps)
!57 = !DIGlobalVariable(name: "CCTKARGNUM_courant_min_time", scope: !47, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_min_time)
!58 = !DIGlobalVariable(name: "CCTKGROUPNUM_speedvars", scope: !47, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperTime.CCTKGROUPNUM_speedvars)
!59 = !DIGlobalVariable(name: "CCTKARGNUM_courant_wave_speed", scope: !47, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperTime.CCTKARGNUM_courant_wave_speed)
!60 = !{i32 2, !"Dwarf Version", i32 2}
!61 = !{i32 2, !"Debug Info Version", i32 700000003}
!62 = !{i32 1, !"PIC Level", i32 2}
!63 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!64 = !DIExpression()
!65 = !DILocation(line: 13, column: 43, scope: !47)
!66 = !DILocation(line: 13, column: 53, scope: !47)
!67 = !DILocation(line: 18, column: 3, scope: !68)
!68 = distinct !DILexicalBlock(scope: !47, file: !1, line: 18, column: 3)
!69 = !{!70, !70, i64 0}
!70 = !{!"int", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !DILocation(line: 18, column: 3, scope: !47)
!74 = !DILocation(line: 18, column: 3, scope: !75)
!75 = distinct !DILexicalBlock(scope: !47, file: !1, line: 18, column: 3)
!76 = !DILocation(line: 18, column: 3, scope: !77)
!77 = distinct !DILexicalBlock(scope: !47, file: !1, line: 18, column: 3)
!78 = !DILocation(line: 18, column: 3, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !1, line: 18, column: 3)
!80 = !DILocation(line: 18, column: 3, scope: !81)
!81 = distinct !DILexicalBlock(scope: !47, file: !1, line: 18, column: 3)
!82 = !DILocation(line: 20, column: 14, scope: !47)
!83 = !DILocation(line: 15, column: 10, scope: !47)
!84 = !DILocation(line: 22, column: 12, scope: !47)
!85 = !{!86, !87, i64 8}
!86 = !{!"", !70, i64 0, !70, i64 4, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !88, i64 64, !87, i64 72, !87, i64 80, !87, i64 88, !87, i64 96, !70, i64 104, !87, i64 112, !88, i64 120, !87, i64 128, !87, i64 136, !87, i64 144}
!87 = !{!"any pointer", !71, i64 0}
!88 = !{!"double", !71, i64 0}
!89 = !{!86, !87, i64 16}
!90 = !{!86, !87, i64 24}
!91 = !{!86, !87, i64 32}
!92 = !{!86, !87, i64 40}
!93 = !{!86, !87, i64 56}
!94 = !{!86, !87, i64 48}
!95 = !{!86, !87, i64 88}
!96 = !{!86, !87, i64 72}
!97 = !{!86, !87, i64 80}
!98 = !{!86, !87, i64 96}
!99 = !{!86, !87, i64 112}
!100 = !{!86, !87, i64 128}
!101 = !{!87, !87, i64 0}
!102 = !DILocation(line: 22, column: 3, scope: !47)
!103 = !DILocation(line: 24, column: 3, scope: !47)
