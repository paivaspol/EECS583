; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOUtil.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@iorest_ = external global %struct.anon
@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_IOUtil() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 17), align 8, !dbg !74, !tbaa !75
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !31, metadata !82), !dbg !74
  %2 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 18), align 8, !dbg !74, !tbaa !83
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !32, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !69, metadata !82), !dbg !84
  %3 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #3, !dbg !85
  %4 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #3, !dbg !87
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !66, metadata !82), !dbg !74
  ret i32 0, !dbg !89
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOUtil.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsParameterRecovery_IOUtil", scope: !1, file: !1, line: 30, type: !5, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsParameterRecovery_IOUtil, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !12, !13, !14, !15, !16, !17, !18, !19, !20, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !69}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_y", scope: !4, file: !1, line: 32, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_z", scope: !4, file: !1, line: 32, type: !10)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xyplane_z", scope: !4, file: !1, line: 32, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xzplane_y", scope: !4, file: !1, line: 32, type: !10)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_x", scope: !4, file: !1, line: 32, type: !10)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_z", scope: !4, file: !1, line: 32, type: !10)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yzplane_x", scope: !4, file: !1, line: 32, type: !10)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_x", scope: !4, file: !1, line: 32, type: !10)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_y", scope: !4, file: !1, line: 32, type: !10)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_ID_file", scope: !4, file: !1, line: 32, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_dir", scope: !4, file: !1, line: 32, type: !21)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_file", scope: !4, file: !1, line: 32, type: !21)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !4, file: !1, line: 32, type: !21)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_mode", scope: !4, file: !1, line: 32, type: !21)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !4, file: !1, line: 32, type: !21)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !4, file: !1, line: 32, type: !21)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parfile_name", scope: !4, file: !1, line: 32, type: !21)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parfile_write", scope: !4, file: !1, line: 32, type: !21)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recover", scope: !4, file: !1, line: 32, type: !21)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recover_ID_files", scope: !4, file: !1, line: 32, type: !21)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recover_ID_vars", scope: !4, file: !1, line: 32, type: !21)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recover_file", scope: !4, file: !1, line: 32, type: !21)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recovery_dir", scope: !4, file: !1, line: 32, type: !21)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_ID", scope: !4, file: !1, line: 32, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_every", scope: !4, file: !1, line: 32, type: !38)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_keep", scope: !4, file: !1, line: 32, type: !38)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_keep_all", scope: !4, file: !1, line: 32, type: !38)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_on_terminate", scope: !4, file: !1, line: 32, type: !38)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !4, file: !1, line: 32, type: !38)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_downsample_x", scope: !4, file: !1, line: 32, type: !38)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_downsample_y", scope: !4, file: !1, line: 32, type: !38)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_downsample_z", scope: !4, file: !1, line: 32, type: !38)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_parameters", scope: !4, file: !1, line: 32, type: !38)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_procs", scope: !4, file: !1, line: 32, type: !38)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_septimefiles", scope: !4, file: !1, line: 32, type: !38)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_single", scope: !4, file: !1, line: 32, type: !38)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_unchunked", scope: !4, file: !1, line: 32, type: !38)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !4, file: !1, line: 32, type: !38)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_yi", scope: !4, file: !1, line: 32, type: !38)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_zi", scope: !4, file: !1, line: 32, type: !38)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xyplane_zi", scope: !4, file: !1, line: 32, type: !38)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xzplane_yi", scope: !4, file: !1, line: 32, type: !38)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_xi", scope: !4, file: !1, line: 32, type: !38)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_zi", scope: !4, file: !1, line: 32, type: !38)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yzplane_xi", scope: !4, file: !1, line: 32, type: !38)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_xi", scope: !4, file: !1, line: 32, type: !38)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_yi", scope: !4, file: !1, line: 32, type: !38)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parfile_update_every", scope: !4, file: !1, line: 32, type: !38)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "print_timing_info", scope: !4, file: !1, line: 32, type: !38)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recover_and_remove", scope: !4, file: !1, line: 32, type: !38)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "verbose", scope: !4, file: !1, line: 32, type: !38)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !4, file: !1, line: 32, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !4, file: !1, line: 33, type: !7)
!70 = !{i32 2, !"Dwarf Version", i32 2}
!71 = !{i32 2, !"Debug Info Version", i32 700000003}
!72 = !{i32 1, !"PIC Level", i32 2}
!73 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!74 = !DILocation(line: 32, column: 3, scope: !4)
!75 = !{!76, !80, i64 136}
!76 = !{!"", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !80, i64 72, !80, i64 80, !80, i64 88, !80, i64 96, !80, i64 104, !80, i64 112, !80, i64 120, !80, i64 128, !80, i64 136, !80, i64 144, !80, i64 152, !80, i64 160, !80, i64 168, !80, i64 176, !81, i64 184, !81, i64 188, !81, i64 192, !81, i64 196, !81, i64 200, !81, i64 204, !81, i64 208, !81, i64 212, !81, i64 216, !81, i64 220, !81, i64 224, !81, i64 228, !81, i64 232, !81, i64 236, !81, i64 240, !81, i64 244, !81, i64 248, !81, i64 252, !81, i64 256, !81, i64 260, !81, i64 264, !81, i64 268, !81, i64 272, !81, i64 276, !81, i64 280, !81, i64 284, !81, i64 288, !81, i64 292}
!77 = !{!"double", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !{!"any pointer", !78, i64 0}
!81 = !{!"int", !78, i64 0}
!82 = !DIExpression()
!83 = !{!76, !80, i64 144}
!84 = !DILocation(line: 33, column: 7, scope: !4)
!85 = !DILocation(line: 36, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !4, file: !1, line: 36, column: 5)
!87 = !DILocation(line: 50, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !4, file: !1, line: 50, column: 5)
!89 = !DILocation(line: 58, column: 26, scope: !4)
