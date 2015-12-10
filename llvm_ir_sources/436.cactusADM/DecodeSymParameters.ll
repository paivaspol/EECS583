; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@gridrest_ = external global %struct.anon
@.str = private unnamed_addr constant [7 x i8] c"bitant\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"yz\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"quadrant\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"octant\00", align 1
@.str9 = private unnamed_addr constant [103 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/DecodeSymParameters.c,v 1.4 2001/02/24 13:04:43 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_DecodeSymParameters_c() #0 {
  ret i8* getelementptr inbounds ([103 x i8]* @.str9, i64 0, i64 0), !dbg !63
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DecodeSymParameters3D(i32* nocapture %sym) #1 {
  tail call void @llvm.dbg.value(metadata i32* %sym, i64 0, metadata !16, metadata !64), !dbg !65
  %1 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 12), align 8, !dbg !66, !tbaa !67
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !31, metadata !64), !dbg !66
  %2 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 13), align 8, !dbg !66, !tbaa !74
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !32, metadata !64), !dbg !66
  %3 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 14), align 8, !dbg !66, !tbaa !75
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !33, metadata !64), !dbg !66
  %4 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 16) to i64*), align 8, !dbg !66
  %5 = trunc i64 %4 to i32, !dbg !66
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !35, metadata !64), !dbg !66
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !37, metadata !64), !dbg !66
  %8 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 18) to i64*), align 8, !dbg !66
  %9 = trunc i64 %8 to i32, !dbg !66
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !38, metadata !64), !dbg !66
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !39, metadata !64), !dbg !66
  %12 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 20) to i64*), align 8, !dbg !66
  %13 = trunc i64 %12 to i32, !dbg !66
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !40, metadata !64), !dbg !66
  %14 = lshr i64 %12, 32
  %15 = trunc i64 %14 to i32
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !41, metadata !64), !dbg !66
  store i32 %7, i32* %sym, align 4, !dbg !76, !tbaa !77
  %16 = getelementptr inbounds i32* %sym, i64 2, !dbg !78
  store i32 %11, i32* %16, align 4, !dbg !79, !tbaa !77
  %17 = getelementptr inbounds i32* %sym, i64 4, !dbg !80
  store i32 %15, i32* %17, align 4, !dbg !81, !tbaa !77
  %18 = getelementptr inbounds i32* %sym, i64 1, !dbg !82
  store i32 %5, i32* %18, align 4, !dbg !83, !tbaa !77
  %19 = getelementptr inbounds i32* %sym, i64 3, !dbg !84
  store i32 %9, i32* %19, align 4, !dbg !85, !tbaa !77
  %20 = getelementptr inbounds i32* %sym, i64 5, !dbg !86
  store i32 %13, i32* %20, align 4, !dbg !87, !tbaa !77
  %21 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #4, !dbg !88
  %22 = icmp eq i32 %21, 0, !dbg !88
  br i1 %22, label %35, label %23, !dbg !90

; <label>:23                                      ; preds = %0
  %24 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !91
  %25 = icmp eq i32 %24, 0, !dbg !91
  br i1 %25, label %27, label %26, !dbg !94

; <label>:26                                      ; preds = %23
  store i32 1, i32* %17, align 4, !dbg !95, !tbaa !77
  br label %54, !dbg !97

; <label>:27                                      ; preds = %23
  %28 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !98
  %29 = icmp eq i32 %28, 0, !dbg !98
  br i1 %29, label %31, label %30, !dbg !100

; <label>:30                                      ; preds = %27
  store i32 1, i32* %16, align 4, !dbg !101, !tbaa !77
  br label %54, !dbg !103

; <label>:31                                      ; preds = %27
  %32 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !104
  %33 = icmp eq i32 %32, 0, !dbg !104
  br i1 %33, label %54, label %34, !dbg !106

; <label>:34                                      ; preds = %31
  store i32 1, i32* %sym, align 4, !dbg !107, !tbaa !77
  br label %54, !dbg !109

; <label>:35                                      ; preds = %0
  %36 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !110
  %37 = icmp eq i32 %36, 0, !dbg !110
  br i1 %37, label %50, label %38, !dbg !112

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !113
  %40 = icmp eq i32 %39, 0, !dbg !113
  br i1 %40, label %42, label %41, !dbg !116

; <label>:41                                      ; preds = %38
  store i32 1, i32* %16, align 4, !dbg !117, !tbaa !77
  store i32 1, i32* %17, align 4, !dbg !119, !tbaa !77
  br label %54, !dbg !120

; <label>:42                                      ; preds = %38
  %43 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !121
  %44 = icmp eq i32 %43, 0, !dbg !121
  br i1 %44, label %46, label %45, !dbg !123

; <label>:45                                      ; preds = %42
  store i32 1, i32* %sym, align 4, !dbg !124, !tbaa !77
  store i32 1, i32* %17, align 4, !dbg !126, !tbaa !77
  br label %54, !dbg !127

; <label>:46                                      ; preds = %42
  %47 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !128
  %48 = icmp eq i32 %47, 0, !dbg !128
  br i1 %48, label %54, label %49, !dbg !130

; <label>:49                                      ; preds = %46
  store i32 1, i32* %sym, align 4, !dbg !131, !tbaa !77
  store i32 1, i32* %16, align 4, !dbg !133, !tbaa !77
  br label %54, !dbg !134

; <label>:50                                      ; preds = %35
  %51 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !135
  %52 = icmp eq i32 %51, 0, !dbg !135
  br i1 %52, label %54, label %53, !dbg !137

; <label>:53                                      ; preds = %50
  store i32 1, i32* %sym, align 4, !dbg !138, !tbaa !77
  store i32 1, i32* %16, align 4, !dbg !140, !tbaa !77
  store i32 1, i32* %17, align 4, !dbg !141, !tbaa !77
  br label %54, !dbg !142

; <label>:54                                      ; preds = %31, %46, %50, %45, %49, %41, %53, %26, %34, %30
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !54, metadata !64), !dbg !66
  ret void, !dbg !143
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !57, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_CactusBase_CartGrid3D_DecodeSymParameters_c", scope: !1, file: !1, line: 20, type: !5, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_CartGrid3D_DecodeSymParameters_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "DecodeSymParameters3D", scope: !1, file: !1, line: 41, type: !11, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*)* @DecodeSymParameters3D, variables: !15)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 1, scope: !10, file: !1, line: 41, type: !13)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !10, file: !1, line: 43, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dxyz", scope: !10, file: !1, line: 43, type: !18)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dy", scope: !10, file: !1, line: 43, type: !18)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dz", scope: !10, file: !1, line: 43, type: !18)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmax", scope: !10, file: !1, line: 43, type: !18)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmin", scope: !10, file: !1, line: 43, type: !18)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmax", scope: !10, file: !1, line: 43, type: !18)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmin", scope: !10, file: !1, line: 43, type: !18)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymax", scope: !10, file: !1, line: 43, type: !18)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymin", scope: !10, file: !1, line: 43, type: !18)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmax", scope: !10, file: !1, line: 43, type: !18)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmin", scope: !10, file: !1, line: 43, type: !18)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitant_plane", scope: !10, file: !1, line: 43, type: !7)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !10, file: !1, line: 43, type: !7)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quadrant_direction", scope: !10, file: !1, line: 43, type: !7)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !10, file: !1, line: 43, type: !7)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmax", scope: !10, file: !1, line: 43, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmin", scope: !10, file: !1, line: 43, type: !36)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymax", scope: !10, file: !1, line: 43, type: !36)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymin", scope: !10, file: !1, line: 43, type: !36)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmax", scope: !10, file: !1, line: 43, type: !36)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmin", scope: !10, file: !1, line: 43, type: !36)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_origin", scope: !10, file: !1, line: 43, type: !36)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originx", scope: !10, file: !1, line: 43, type: !36)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originy", scope: !10, file: !1, line: 43, type: !36)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originz", scope: !10, file: !1, line: 43, type: !36)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_origin", scope: !10, file: !1, line: 43, type: !36)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originx", scope: !10, file: !1, line: 43, type: !36)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originy", scope: !10, file: !1, line: 43, type: !36)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originz", scope: !10, file: !1, line: 43, type: !36)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !10, file: !1, line: 43, type: !36)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !10, file: !1, line: 43, type: !36)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !10, file: !1, line: 43, type: !36)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !10, file: !1, line: 43, type: !36)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !10, file: !1, line: 43, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!57 = !{!58}
!58 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 18, type: !7, isLocal: true, isDefinition: true)
!59 = !{i32 2, !"Dwarf Version", i32 2}
!60 = !{i32 2, !"Debug Info Version", i32 700000003}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!63 = !DILocation(line: 20, column: 1, scope: !4)
!64 = !DIExpression()
!65 = !DILocation(line: 41, column: 32, scope: !10)
!66 = !DILocation(line: 43, column: 3, scope: !10)
!67 = !{!68, !72, i64 96}
!68 = !{!"", !69, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !72, i64 96, !72, i64 104, !72, i64 112, !72, i64 120, !73, i64 128, !73, i64 132, !73, i64 136, !73, i64 140, !73, i64 144, !73, i64 148}
!69 = !{!"double", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !{!"any pointer", !70, i64 0}
!73 = !{!"int", !70, i64 0}
!74 = !{!68, !72, i64 104}
!75 = !{!68, !72, i64 112}
!76 = !DILocation(line: 47, column: 10, scope: !10)
!77 = !{!73, !73, i64 0}
!78 = !DILocation(line: 48, column: 3, scope: !10)
!79 = !DILocation(line: 48, column: 10, scope: !10)
!80 = !DILocation(line: 49, column: 3, scope: !10)
!81 = !DILocation(line: 49, column: 10, scope: !10)
!82 = !DILocation(line: 52, column: 3, scope: !10)
!83 = !DILocation(line: 52, column: 10, scope: !10)
!84 = !DILocation(line: 53, column: 3, scope: !10)
!85 = !DILocation(line: 53, column: 10, scope: !10)
!86 = !DILocation(line: 54, column: 3, scope: !10)
!87 = !DILocation(line: 54, column: 10, scope: !10)
!88 = !DILocation(line: 57, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !10, file: !1, line: 57, column: 7)
!90 = !DILocation(line: 57, column: 7, scope: !10)
!91 = !DILocation(line: 59, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 59, column: 9)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 58, column: 3)
!94 = !DILocation(line: 59, column: 9, scope: !93)
!95 = !DILocation(line: 61, column: 14, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 60, column: 5)
!97 = !DILocation(line: 62, column: 5, scope: !96)
!98 = !DILocation(line: 63, column: 14, scope: !99)
!99 = distinct !DILexicalBlock(scope: !92, file: !1, line: 63, column: 14)
!100 = !DILocation(line: 63, column: 14, scope: !92)
!101 = !DILocation(line: 65, column: 14, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 64, column: 5)
!103 = !DILocation(line: 66, column: 5, scope: !102)
!104 = !DILocation(line: 67, column: 14, scope: !105)
!105 = distinct !DILexicalBlock(scope: !99, file: !1, line: 67, column: 14)
!106 = !DILocation(line: 67, column: 14, scope: !99)
!107 = !DILocation(line: 69, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 68, column: 5)
!109 = !DILocation(line: 70, column: 5, scope: !108)
!110 = !DILocation(line: 72, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !89, file: !1, line: 72, column: 12)
!112 = !DILocation(line: 72, column: 12, scope: !89)
!113 = !DILocation(line: 74, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 74, column: 9)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 73, column: 3)
!116 = !DILocation(line: 74, column: 9, scope: !115)
!117 = !DILocation(line: 76, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 75, column: 5)
!119 = !DILocation(line: 77, column: 14, scope: !118)
!120 = !DILocation(line: 78, column: 5, scope: !118)
!121 = !DILocation(line: 79, column: 14, scope: !122)
!122 = distinct !DILexicalBlock(scope: !114, file: !1, line: 79, column: 14)
!123 = !DILocation(line: 79, column: 14, scope: !114)
!124 = !DILocation(line: 81, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 80, column: 5)
!126 = !DILocation(line: 82, column: 14, scope: !125)
!127 = !DILocation(line: 83, column: 5, scope: !125)
!128 = !DILocation(line: 84, column: 14, scope: !129)
!129 = distinct !DILexicalBlock(scope: !122, file: !1, line: 84, column: 14)
!130 = !DILocation(line: 84, column: 14, scope: !122)
!131 = !DILocation(line: 86, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !1, line: 85, column: 5)
!133 = !DILocation(line: 87, column: 14, scope: !132)
!134 = !DILocation(line: 88, column: 5, scope: !132)
!135 = !DILocation(line: 90, column: 12, scope: !136)
!136 = distinct !DILexicalBlock(scope: !111, file: !1, line: 90, column: 12)
!137 = !DILocation(line: 90, column: 12, scope: !111)
!138 = !DILocation(line: 92, column: 12, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !1, line: 91, column: 3)
!140 = !DILocation(line: 93, column: 12, scope: !139)
!141 = !DILocation(line: 94, column: 12, scope: !139)
!142 = !DILocation(line: 95, column: 3, scope: !139)
!143 = !DILocation(line: 96, column: 24, scope: !10)
