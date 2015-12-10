; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/ParamCheck.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [16 x i8] c"grid::coarse_dx\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"grid::coarse_dy\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"grid::coarse_dz\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"grid::r\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"grid::x\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"grid::y\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"grid::z\00", align 1
@gridrest_ = external global %struct.anon
@.str7 = private unnamed_addr constant [8 x i8] c"byrange\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"octant\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"quadrant\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"bitant\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"byspacing\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str15 = private unnamed_addr constant [40 x i8] c"No symmetries can be used with box grid\00", align 1
@.str16 = private unnamed_addr constant [29 x i8] c"No grid set up in CartGrid3D\00", align 1
@.str17 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/ParamCheck.c,v 1.10 2001/05/10 12:35:37 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_ParamCheck_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str17, i64 0, i64 0), !dbg !125
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ParamCheck_CartGrid3D(%struct.cGH* nocapture readnone %cctkGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !53, metadata !126), !dbg !127
  %1 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #4, !dbg !128
  %2 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !128
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !128
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !128
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !128
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !128
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !128
  %8 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 13), align 8, !dbg !129, !tbaa !130
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !95, metadata !126), !dbg !129
  %9 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 15), align 8, !dbg !129, !tbaa !137
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !97, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !118, metadata !126), !dbg !138
  %10 = tail call i32 @CCTK_Equals(i8* %9, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !139
  %11 = icmp eq i32 %10, 0, !dbg !139
  br i1 %11, label %23, label %12, !dbg !141

; <label>:12                                      ; preds = %0
  %13 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !142
  %14 = icmp eq i32 %13, 0, !dbg !142
  br i1 %14, label %15, label %.critedge, !dbg !145

; <label>:15                                      ; preds = %12
  %16 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0)) #4, !dbg !146
  %17 = icmp eq i32 %16, 0, !dbg !146
  br i1 %17, label %18, label %.critedge, !dbg !148

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #4, !dbg !149
  %20 = icmp eq i32 %19, 0, !dbg !149
  br i1 %20, label %21, label %.critedge, !dbg !151

; <label>:21                                      ; preds = %18
  %22 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #4, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !118, metadata !126), !dbg !138
  br label %44, !dbg !154

; <label>:23                                      ; preds = %0
  %24 = tail call i32 @CCTK_Equals(i8* %9, i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0)) #4, !dbg !155
  %25 = icmp eq i32 %24, 0, !dbg !155
  br i1 %25, label %37, label %26, !dbg !157

; <label>:26                                      ; preds = %23
  %27 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #4, !dbg !158
  %28 = icmp eq i32 %27, 0, !dbg !158
  br i1 %28, label %29, label %.critedge, !dbg !161

; <label>:29                                      ; preds = %26
  %30 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0)) #4, !dbg !162
  %31 = icmp eq i32 %30, 0, !dbg !162
  br i1 %31, label %32, label %.critedge, !dbg !164

; <label>:32                                      ; preds = %29
  %33 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !165
  %34 = icmp eq i32 %33, 0, !dbg !165
  br i1 %34, label %35, label %.critedge, !dbg !167

; <label>:35                                      ; preds = %32
  %36 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #4, !dbg !168
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !118, metadata !126), !dbg !138
  br label %44, !dbg !170

; <label>:37                                      ; preds = %23
  %38 = tail call i32 @CCTK_Equals(i8* %9, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0)) #4, !dbg !171
  %39 = icmp eq i32 %38, 0, !dbg !171
  br i1 %39, label %.critedge3, label %40, !dbg !173

; <label>:40                                      ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !118, metadata !126), !dbg !138
  %41 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #4, !dbg !174
  %42 = icmp eq i32 %41, 0, !dbg !174
  br i1 %42, label %.critedge2, label %.critedge, !dbg !177

.critedge2:                                       ; preds = %40
  %43 = tail call i32 @CCTK_ParamWarn(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str15, i64 0, i64 0)) #4, !dbg !178
  br label %.critedge

; <label>:44                                      ; preds = %35, %21
  %.sink10 = phi i32 [ %36, %35 ], [ %22, %21 ]
  %45 = icmp eq i32 %.sink10, 0, !dbg !168
  br i1 %45, label %.critedge3, label %.critedge, !dbg !179

.critedge3:                                       ; preds = %37, %44
  %46 = tail call i32 @CCTK_ParamWarn(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str16, i64 0, i64 0)) #4, !dbg !180
  br label %.critedge, !dbg !183

.critedge:                                        ; preds = %32, %29, %26, %18, %15, %12, %40, %.critedge2, %.critedge3, %44
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !117, metadata !126), !dbg !129
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !126), !dbg !128
  ret void, !dbg !184
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_ParamWarn(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!121, !122, !123}
!llvm.ident = !{!124}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !119, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/ParamCheck.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!6 = !{!7, !13}
!7 = !DISubprogram(name: "CCTKi_version_CactusBase_CartGrid3D_ParamCheck_c", scope: !1, file: !1, line: 19, type: !8, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_CartGrid3D_ParamCheck_c, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DISubprogram(name: "ParamCheck_CartGrid3D", scope: !1, file: !1, line: 38, type: !14, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @ParamCheck_CartGrid3D, variables: !52)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !18, line: 75, baseType: !19)
!18 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 24, size: 1216, align: 64, elements: !20)
!20 = !{!21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !44, !45}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !19, file: !18, line: 26, baseType: !22, size: 32, align: 32)
!22 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !19, file: !18, line: 27, baseType: !22, size: 32, align: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !19, file: !18, line: 30, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !19, file: !18, line: 31, baseType: !25, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !19, file: !18, line: 32, baseType: !25, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !19, file: !18, line: 33, baseType: !25, size: 64, align: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !19, file: !18, line: 36, baseType: !25, size: 64, align: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !19, file: !18, line: 39, baseType: !25, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !19, file: !18, line: 40, baseType: !25, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !19, file: !18, line: 43, baseType: !5, size: 64, align: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !19, file: !18, line: 44, baseType: !4, size: 64, align: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !19, file: !18, line: 47, baseType: !4, size: 64, align: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !19, file: !18, line: 51, baseType: !25, size: 64, align: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !19, file: !18, line: 54, baseType: !25, size: 64, align: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !19, file: !18, line: 57, baseType: !22, size: 32, align: 32, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !19, file: !18, line: 60, baseType: !25, size: 64, align: 64, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !19, file: !18, line: 63, baseType: !5, size: 64, align: 64, offset: 960)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !18, line: 67, baseType: !41, size: 64, align: 64, offset: 1024)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !19, file: !18, line: 70, baseType: !42, size: 64, align: 64, offset: 1088)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !19, file: !18, line: 73, baseType: !46, size: 64, align: 64, offset: 1152)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !18, line: 22, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 18, size: 16, align: 8, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !48, file: !18, line: 20, baseType: !12, size: 8, align: 8)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !48, file: !18, line: 21, baseType: !12, size: 8, align: 8, offset: 8)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !75, !76, !77, !78, !79, !80, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !13, file: !1, line: 38, type: !16)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !13, file: !1, line: 40, type: !22)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !13, file: !1, line: 40, type: !25)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !13, file: !1, line: 40, type: !25)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !13, file: !1, line: 40, type: !25)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !13, file: !1, line: 40, type: !25)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !13, file: !1, line: 40, type: !25)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !13, file: !1, line: 40, type: !25)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !13, file: !1, line: 40, type: !25)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !13, file: !1, line: 40, type: !25)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !13, file: !1, line: 40, type: !5)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !13, file: !1, line: 40, type: !5)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !13, file: !1, line: 40, type: !4)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !13, file: !1, line: 40, type: !4)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !13, file: !1, line: 40, type: !25)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !13, file: !1, line: 40, type: !22)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !13, file: !1, line: 40, type: !25)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !13, file: !1, line: 40, type: !22)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !13, file: !1, line: 40, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dx", scope: !13, file: !1, line: 40, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dy", scope: !13, file: !1, line: 40, type: !4)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dz", scope: !13, file: !1, line: 40, type: !4)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !13, file: !1, line: 40, type: !4)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !13, file: !1, line: 40, type: !4)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !13, file: !1, line: 40, type: !4)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !13, file: !1, line: 40, type: !4)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !13, file: !1, line: 41, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dxyz", scope: !13, file: !1, line: 41, type: !82)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dy", scope: !13, file: !1, line: 41, type: !82)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dz", scope: !13, file: !1, line: 41, type: !82)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmax", scope: !13, file: !1, line: 41, type: !82)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmin", scope: !13, file: !1, line: 41, type: !82)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmax", scope: !13, file: !1, line: 41, type: !82)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmin", scope: !13, file: !1, line: 41, type: !82)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymax", scope: !13, file: !1, line: 41, type: !82)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymin", scope: !13, file: !1, line: 41, type: !82)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmax", scope: !13, file: !1, line: 41, type: !82)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmin", scope: !13, file: !1, line: 41, type: !82)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitant_plane", scope: !13, file: !1, line: 41, type: !10)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !13, file: !1, line: 41, type: !10)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quadrant_direction", scope: !13, file: !1, line: 41, type: !10)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !13, file: !1, line: 41, type: !10)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmax", scope: !13, file: !1, line: 41, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmin", scope: !13, file: !1, line: 41, type: !99)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymax", scope: !13, file: !1, line: 41, type: !99)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymin", scope: !13, file: !1, line: 41, type: !99)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmax", scope: !13, file: !1, line: 41, type: !99)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmin", scope: !13, file: !1, line: 41, type: !99)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_origin", scope: !13, file: !1, line: 41, type: !99)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originx", scope: !13, file: !1, line: 41, type: !99)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originy", scope: !13, file: !1, line: 41, type: !99)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originz", scope: !13, file: !1, line: 41, type: !99)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_origin", scope: !13, file: !1, line: 41, type: !99)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originx", scope: !13, file: !1, line: 41, type: !99)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originy", scope: !13, file: !1, line: 41, type: !99)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originz", scope: !13, file: !1, line: 41, type: !99)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !13, file: !1, line: 41, type: !99)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !13, file: !1, line: 41, type: !99)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !13, file: !1, line: 41, type: !99)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !13, file: !1, line: 41, type: !99)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !13, file: !1, line: 41, type: !72)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iflag", scope: !13, file: !1, line: 43, type: !22)
!119 = !{!120}
!120 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 17, type: !10, isLocal: true, isDefinition: true)
!121 = !{i32 2, !"Dwarf Version", i32 2}
!122 = !{i32 2, !"Debug Info Version", i32 700000003}
!123 = !{i32 1, !"PIC Level", i32 2}
!124 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!125 = !DILocation(line: 19, column: 1, scope: !7)
!126 = !DIExpression()
!127 = !DILocation(line: 38, column: 28, scope: !13)
!128 = !DILocation(line: 40, column: 3, scope: !13)
!129 = !DILocation(line: 41, column: 3, scope: !13)
!130 = !{!131, !135, i64 104}
!131 = !{!"", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !132, i64 48, !132, i64 56, !132, i64 64, !132, i64 72, !132, i64 80, !132, i64 88, !135, i64 96, !135, i64 104, !135, i64 112, !135, i64 120, !136, i64 128, !136, i64 132, !136, i64 136, !136, i64 140, !136, i64 144, !136, i64 148}
!132 = !{!"double", !133, i64 0}
!133 = !{!"omnipotent char", !134, i64 0}
!134 = !{!"Simple C/C++ TBAA"}
!135 = !{!"any pointer", !133, i64 0}
!136 = !{!"int", !133, i64 0}
!137 = !{!131, !135, i64 120}
!138 = !DILocation(line: 43, column: 8, scope: !13)
!139 = !DILocation(line: 47, column: 7, scope: !140)
!140 = distinct !DILexicalBlock(scope: !13, file: !1, line: 47, column: 7)
!141 = !DILocation(line: 47, column: 7, scope: !13)
!142 = !DILocation(line: 49, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 49, column: 9)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 48, column: 3)
!145 = !DILocation(line: 49, column: 9, scope: !144)
!146 = !DILocation(line: 53, column: 14, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 53, column: 14)
!148 = !DILocation(line: 53, column: 14, scope: !143)
!149 = !DILocation(line: 57, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !1, line: 57, column: 14)
!151 = !DILocation(line: 57, column: 14, scope: !147)
!152 = !DILocation(line: 61, column: 14, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !1, line: 61, column: 14)
!154 = !DILocation(line: 61, column: 14, scope: !150)
!155 = !DILocation(line: 67, column: 12, scope: !156)
!156 = distinct !DILexicalBlock(scope: !140, file: !1, line: 67, column: 12)
!157 = !DILocation(line: 67, column: 12, scope: !140)
!158 = !DILocation(line: 69, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 69, column: 9)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 68, column: 3)
!161 = !DILocation(line: 69, column: 9, scope: !160)
!162 = !DILocation(line: 73, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 73, column: 14)
!164 = !DILocation(line: 73, column: 14, scope: !159)
!165 = !DILocation(line: 76, column: 16, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !1, line: 76, column: 16)
!167 = !DILocation(line: 76, column: 16, scope: !163)
!168 = !DILocation(line: 80, column: 14, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 80, column: 14)
!170 = !DILocation(line: 80, column: 14, scope: !166)
!171 = !DILocation(line: 85, column: 12, scope: !172)
!172 = distinct !DILexicalBlock(scope: !156, file: !1, line: 85, column: 12)
!173 = !DILocation(line: 85, column: 12, scope: !156)
!174 = !DILocation(line: 89, column: 10, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 89, column: 9)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 86, column: 3)
!177 = !DILocation(line: 89, column: 9, scope: !176)
!178 = !DILocation(line: 90, column: 7, scope: !175)
!179 = !DILocation(line: 95, column: 7, scope: !13)
!180 = !DILocation(line: 97, column: 5, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 96, column: 3)
!182 = distinct !DILexicalBlock(scope: !13, file: !1, line: 95, column: 7)
!183 = !DILocation(line: 98, column: 3, scope: !181)
!184 = !DILocation(line: 100, column: 49, scope: !13)
