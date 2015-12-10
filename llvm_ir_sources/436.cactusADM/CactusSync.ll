; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_SyncGroup = external global i32 (%struct.cGH*, i8*)*
@.str = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/comm/CactusSync.c,v 1.10 2001/12/09 23:34:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_comm_CactusSync_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), !dbg !108
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %group) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !52, metadata !109), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !53, metadata !109), !dbg !111
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !54, metadata !109), !dbg !112
  %1 = tail call i8* @CCTK_GroupName(i32 %group) #5, !dbg !113
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !55, metadata !109), !dbg !114
  %2 = icmp eq i8* %1, null, !dbg !115
  br i1 %2, label %7, label %3, !dbg !117

; <label>:3                                       ; preds = %0
  %4 = load i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup, align 8, !dbg !118, !tbaa !120
  %5 = tail call i32 %4(%struct.cGH* %GH, i8* %1) #5, !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !54, metadata !109), !dbg !112
  %6 = icmp ne i32 %5, 0, !dbg !124
  %. = select i1 %6, i32 -2, i32 0, !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !54, metadata !109), !dbg !112
  tail call void @free(i8* %1) #6, !dbg !127
  br label %7, !dbg !128

; <label>:7                                       ; preds = %0, %3
  %retval.0 = phi i32 [ %., %3 ], [ -1, %0 ]
  ret i32 %retval.0, !dbg !129
}

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_syncgroupi_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture readonly %group) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !63, metadata !109), !dbg !130
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !64, metadata !109), !dbg !131
  tail call void @llvm.dbg.value(metadata i32* %group, i64 0, metadata !65, metadata !109), !dbg !132
  %1 = load i32* %group, align 4, !dbg !133, !tbaa !134
  %2 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %1) #6, !dbg !136
  store i32 0, i32* %ierror, align 4, !dbg !137, !tbaa !134
  ret void, !dbg !138
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SyncGroupWithVar(%struct.cGH* %GH, i8* %varname) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !70, metadata !109), !dbg !139
  tail call void @llvm.dbg.value(metadata i8* %varname, i64 0, metadata !71, metadata !109), !dbg !140
  %1 = tail call i32 @CCTK_VarIndex(i8* %varname) #5, !dbg !141
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !72, metadata !109), !dbg !142
  %2 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %1) #5, !dbg !143
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !72, metadata !109), !dbg !142
  %3 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %2) #6, !dbg !144
  ret i32 %3, !dbg !145
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_syncgroupwithvar_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !78, metadata !109), !dbg !146
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !79, metadata !109), !dbg !147
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !80, metadata !109), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !81, metadata !109), !dbg !148
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !149
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !82, metadata !109), !dbg !149
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !70, metadata !109) #7, !dbg !150
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !71, metadata !109) #7, !dbg !152
  %2 = tail call i32 @CCTK_VarIndex(i8* %1) #5, !dbg !153
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !72, metadata !109) #7, !dbg !154
  %3 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %2) #5, !dbg !155
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !72, metadata !109) #7, !dbg !154
  %4 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %3) #5, !dbg !156
  store i32 %4, i32* %ierror, align 4, !dbg !157, !tbaa !134
  tail call void @free(i8* %1) #6, !dbg !158
  ret void, !dbg !159
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SyncGroupWithVarI(%struct.cGH* %GH, i32 %var) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !85, metadata !109), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 %var, i64 0, metadata !86, metadata !109), !dbg !161
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %var) #5, !dbg !162
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !87, metadata !109), !dbg !163
  %2 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %1) #6, !dbg !164
  ret i32 %2, !dbg !165
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_syncgroupwithvari_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture readonly %var) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !90, metadata !109), !dbg !166
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !91, metadata !109), !dbg !167
  tail call void @llvm.dbg.value(metadata i32* %var, i64 0, metadata !92, metadata !109), !dbg !168
  %1 = load i32* %var, align 4, !dbg !169, !tbaa !134
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !85, metadata !109) #7, !dbg !170
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !86, metadata !109) #7, !dbg !172
  %2 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %1) #5, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !87, metadata !109) #7, !dbg !174
  %3 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %2) #5, !dbg !175
  store i32 %3, i32* %ierror, align 4, !dbg !176, !tbaa !134
  ret void, !dbg !177
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SyncGroupsI(%struct.cGH* %GH, i32 %n_groups, i32* nocapture readonly %groups) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !97, metadata !109), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %n_groups, i64 0, metadata !98, metadata !109), !dbg !179
  tail call void @llvm.dbg.value(metadata i32* %groups, i64 0, metadata !99, metadata !109), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !101, metadata !109), !dbg !181
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !100, metadata !109), !dbg !182
  %1 = icmp sgt i32 %n_groups, 0, !dbg !183
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !186

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n_groups, -1, !dbg !186
  br label %3, !dbg !186

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %retval.02 = phi i32 [ 0, %.lr.ph ], [ %.retval.0, %3 ]
  %4 = getelementptr inbounds i32* %groups, i64 %indvars.iv, !dbg !187
  %5 = load i32* %4, align 4, !dbg !187, !tbaa !134
  %6 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %5) #6, !dbg !190
  %7 = icmp eq i32 %6, 0, !dbg !191
  %8 = zext i1 %7 to i32, !dbg !192
  %.retval.0 = add nsw i32 %8, %retval.02, !dbg !192
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !186
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !186
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !186
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !186

._crit_edge:                                      ; preds = %3, %0
  %retval.0.lcssa = phi i32 [ 0, %0 ], [ %.retval.0, %3 ]
  ret i32 %retval.0.lcssa, !dbg !193
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!104, !105, !106}
!llvm.ident = !{!107}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !102, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !57, !66, !73, !83, !88, !93}
!4 = !DISubprogram(name: "CCTKi_version_comm_CactusSync_c", scope: !1, file: !1, line: 28, type: !5, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_comm_CactusSync_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTK_SyncGroupI", scope: !1, file: !1, line: 72, type: !11, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @CCTK_SyncGroupI, variables: !51)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !16, line: 75, baseType: !17)
!16 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 24, size: 1216, align: 64, elements: !18)
!18 = !{!19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !37, !38, !39, !43, !44}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !17, file: !16, line: 26, baseType: !13, size: 32, align: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !17, file: !16, line: 27, baseType: !13, size: 32, align: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !17, file: !16, line: 30, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !17, file: !16, line: 31, baseType: !22, size: 64, align: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !17, file: !16, line: 32, baseType: !22, size: 64, align: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !17, file: !16, line: 33, baseType: !22, size: 64, align: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !17, file: !16, line: 36, baseType: !22, size: 64, align: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !17, file: !16, line: 39, baseType: !22, size: 64, align: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !17, file: !16, line: 40, baseType: !22, size: 64, align: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !17, file: !16, line: 43, baseType: !30, size: 64, align: 64, offset: 512)
!30 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !17, file: !16, line: 44, baseType: !32, size: 64, align: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !17, file: !16, line: 47, baseType: !32, size: 64, align: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !17, file: !16, line: 51, baseType: !22, size: 64, align: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !17, file: !16, line: 54, baseType: !22, size: 64, align: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !17, file: !16, line: 57, baseType: !13, size: 32, align: 32, offset: 832)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !17, file: !16, line: 60, baseType: !22, size: 64, align: 64, offset: 896)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !17, file: !16, line: 63, baseType: !30, size: 64, align: 64, offset: 960)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !17, file: !16, line: 67, baseType: !40, size: 64, align: 64, offset: 1024)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !17, file: !16, line: 70, baseType: !41, size: 64, align: 64, offset: 1088)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !17, file: !16, line: 73, baseType: !45, size: 64, align: 64, offset: 1152)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !16, line: 22, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 18, size: 16, align: 8, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !47, file: !16, line: 20, baseType: !9, size: 8, align: 8)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !47, file: !16, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!51 = !{!52, !53, !54, !55}
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !10, file: !1, line: 72, type: !14)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !10, file: !1, line: 72, type: !13)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !10, file: !1, line: 74, type: !13)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "groupname", scope: !10, file: !1, line: 75, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!57 = !DISubprogram(name: "cctk_syncgroupi_", scope: !1, file: !1, line: 93, type: !58, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*)* @cctk_syncgroupi_, variables: !62)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !22, !14, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!62 = !{!63, !64, !65}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !57, file: !1, line: 94, type: !22)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !57, file: !1, line: 94, type: !14)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 3, scope: !57, file: !1, line: 94, type: !60)
!66 = !DISubprogram(name: "CCTK_SyncGroupWithVar", scope: !1, file: !1, line: 129, type: !67, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTK_SyncGroupWithVar, variables: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{!13, !14, !7}
!69 = !{!70, !71, !72}
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !66, file: !1, line: 129, type: !14)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "varname", arg: 2, scope: !66, file: !1, line: 129, type: !7)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !66, file: !1, line: 131, type: !13)
!73 = !DISubprogram(name: "cctk_syncgroupwithvar_", scope: !1, file: !1, line: 139, type: !74, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i32)* @cctk_syncgroupwithvar_, variables: !77)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !22, !14, !56, !76}
!76 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80, !81, !82}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !73, file: !1, line: 140, type: !22)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !73, file: !1, line: 140, type: !14)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !73, file: !1, line: 140, type: !56)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !73, file: !1, line: 140, type: !76)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "varname", scope: !73, file: !1, line: 142, type: !56)
!83 = !DISubprogram(name: "CCTK_SyncGroupWithVarI", scope: !1, file: !1, line: 175, type: !11, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @CCTK_SyncGroupWithVarI, variables: !84)
!84 = !{!85, !86, !87}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !83, file: !1, line: 175, type: !14)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "var", arg: 2, scope: !83, file: !1, line: 175, type: !13)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !83, file: !1, line: 177, type: !13)
!88 = !DISubprogram(name: "cctk_syncgroupwithvari_", scope: !1, file: !1, line: 184, type: !58, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*)* @cctk_syncgroupwithvari_, variables: !89)
!89 = !{!90, !91, !92}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !88, file: !1, line: 185, type: !22)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !88, file: !1, line: 185, type: !14)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "var", arg: 3, scope: !88, file: !1, line: 185, type: !60)
!93 = !DISubprogram(name: "CCTK_SyncGroupsI", scope: !1, file: !1, line: 221, type: !94, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i32*)* @CCTK_SyncGroupsI, variables: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{!13, !14, !13, !60}
!96 = !{!97, !98, !99, !100, !101}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !93, file: !1, line: 221, type: !14)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_groups", arg: 2, scope: !93, file: !1, line: 222, type: !13)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "groups", arg: 3, scope: !93, file: !1, line: 223, type: !60)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !93, file: !1, line: 225, type: !13)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !93, file: !1, line: 225, type: !13)
!102 = !{!103}
!103 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 27, type: !7, isLocal: true, isDefinition: true)
!104 = !{i32 2, !"Dwarf Version", i32 2}
!105 = !{i32 2, !"Debug Info Version", i32 700000003}
!106 = !{i32 1, !"PIC Level", i32 2}
!107 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!108 = !DILocation(line: 28, column: 1, scope: !4)
!109 = !DIExpression()
!110 = !DILocation(line: 72, column: 27, scope: !10)
!111 = !DILocation(line: 72, column: 35, scope: !10)
!112 = !DILocation(line: 74, column: 7, scope: !10)
!113 = !DILocation(line: 79, column: 15, scope: !10)
!114 = !DILocation(line: 75, column: 9, scope: !10)
!115 = !DILocation(line: 80, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !10, file: !1, line: 80, column: 7)
!117 = !DILocation(line: 80, column: 7, scope: !10)
!118 = !DILocation(line: 82, column: 14, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 81, column: 3)
!120 = !{!121, !121, i64 0}
!121 = !{!"any pointer", !122, i64 0}
!122 = !{!"omnipotent char", !123, i64 0}
!123 = !{!"Simple C/C++ TBAA"}
!124 = !DILocation(line: 83, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !119, file: !1, line: 83, column: 9)
!126 = !DILocation(line: 83, column: 9, scope: !119)
!127 = !DILocation(line: 87, column: 5, scope: !119)
!128 = !DILocation(line: 88, column: 3, scope: !119)
!129 = !DILocation(line: 90, column: 3, scope: !10)
!130 = !DILocation(line: 94, column: 34, scope: !57)
!131 = !DILocation(line: 94, column: 47, scope: !57)
!132 = !DILocation(line: 94, column: 62, scope: !57)
!133 = !DILocation(line: 96, column: 24, scope: !57)
!134 = !{!135, !135, i64 0}
!135 = !{!"int", !122, i64 0}
!136 = !DILocation(line: 96, column: 3, scope: !57)
!137 = !DILocation(line: 97, column: 11, scope: !57)
!138 = !DILocation(line: 98, column: 1, scope: !57)
!139 = !DILocation(line: 129, column: 33, scope: !66)
!140 = !DILocation(line: 129, column: 49, scope: !66)
!141 = !DILocation(line: 134, column: 9, scope: !66)
!142 = !DILocation(line: 131, column: 7, scope: !66)
!143 = !DILocation(line: 135, column: 9, scope: !66)
!144 = !DILocation(line: 136, column: 11, scope: !66)
!145 = !DILocation(line: 136, column: 3, scope: !66)
!146 = !DILocation(line: 140, column: 34, scope: !73)
!147 = !DILocation(line: 140, column: 47, scope: !73)
!148 = !DILocation(line: 140, column: 51, scope: !73)
!149 = !DILocation(line: 142, column: 3, scope: !73)
!150 = !DILocation(line: 129, column: 33, scope: !66, inlinedAt: !151)
!151 = distinct !DILocation(line: 143, column: 13, scope: !73)
!152 = !DILocation(line: 129, column: 49, scope: !66, inlinedAt: !151)
!153 = !DILocation(line: 134, column: 9, scope: !66, inlinedAt: !151)
!154 = !DILocation(line: 131, column: 7, scope: !66, inlinedAt: !151)
!155 = !DILocation(line: 135, column: 9, scope: !66, inlinedAt: !151)
!156 = !DILocation(line: 136, column: 11, scope: !66, inlinedAt: !151)
!157 = !DILocation(line: 143, column: 11, scope: !73)
!158 = !DILocation(line: 144, column: 3, scope: !73)
!159 = !DILocation(line: 145, column: 1, scope: !73)
!160 = !DILocation(line: 175, column: 34, scope: !83)
!161 = !DILocation(line: 175, column: 42, scope: !83)
!162 = !DILocation(line: 180, column: 9, scope: !83)
!163 = !DILocation(line: 177, column: 7, scope: !83)
!164 = !DILocation(line: 181, column: 11, scope: !83)
!165 = !DILocation(line: 181, column: 3, scope: !83)
!166 = !DILocation(line: 185, column: 34, scope: !88)
!167 = !DILocation(line: 185, column: 47, scope: !88)
!168 = !DILocation(line: 185, column: 62, scope: !88)
!169 = !DILocation(line: 187, column: 41, scope: !88)
!170 = !DILocation(line: 175, column: 34, scope: !83, inlinedAt: !171)
!171 = distinct !DILocation(line: 187, column: 13, scope: !88)
!172 = !DILocation(line: 175, column: 42, scope: !83, inlinedAt: !171)
!173 = !DILocation(line: 180, column: 9, scope: !83, inlinedAt: !171)
!174 = !DILocation(line: 177, column: 7, scope: !83, inlinedAt: !171)
!175 = !DILocation(line: 181, column: 11, scope: !83, inlinedAt: !171)
!176 = !DILocation(line: 187, column: 11, scope: !88)
!177 = !DILocation(line: 188, column: 1, scope: !88)
!178 = !DILocation(line: 221, column: 28, scope: !93)
!179 = !DILocation(line: 222, column: 27, scope: !93)
!180 = !DILocation(line: 223, column: 34, scope: !93)
!181 = !DILocation(line: 225, column: 10, scope: !93)
!182 = !DILocation(line: 225, column: 7, scope: !93)
!183 = !DILocation(line: 229, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 229, column: 3)
!185 = distinct !DILexicalBlock(scope: !93, file: !1, line: 229, column: 3)
!186 = !DILocation(line: 229, column: 3, scope: !185)
!187 = !DILocation(line: 231, column: 30, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 231, column: 9)
!189 = distinct !DILexicalBlock(scope: !184, file: !1, line: 230, column: 3)
!190 = !DILocation(line: 231, column: 9, scope: !188)
!191 = !DILocation(line: 231, column: 41, scope: !188)
!192 = !DILocation(line: 231, column: 9, scope: !189)
!193 = !DILocation(line: 237, column: 3, scope: !93)
