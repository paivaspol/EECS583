; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCartGrid3D.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_BindingsSchedule_CartGrid3D() #0 {
entry:
  %call = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0)) #3, !dbg !53
  %call1 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !54
  %call2 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0)) #3, !dbg !55
  %call3 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !56
  %call4 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @SymmetryStartup to i8*), i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !57
  %call5 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @RegisterCartGrid3DCoords to i8*), i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !58
  %call6 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @ParamCheck_CartGrid3D to i8*), i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !59
  %call7 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @CartGrid3D to i8*), i8* getelementptr inbounds ([19 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !60
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !50), !dbg !62
  ret void, !dbg !62
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
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCartGrid3D.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCartGrid3D.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsSchedule_CartGrid3D", metadata !"CCTKi_BindingsSchedule_CartGrid3D", metadata !"", i32 34, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_BindingsSchedule_CartGrid3D, null, null, metadata !8, i32 35} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 35] [CCTKi_BindingsSchedule_CartGrid3D]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCartGrid3D.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{metadata !9, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !27, metadata !28, metadata !29, metadata !30, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!9 = metadata !{i32 786688, metadata !4, metadata !"dx", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 36]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!11 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!12 = metadata !{i32 786688, metadata !4, metadata !"dxyz", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dxyz] [line 36]
!13 = metadata !{i32 786688, metadata !4, metadata !"dy", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 36]
!14 = metadata !{i32 786688, metadata !4, metadata !"dz", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 36]
!15 = metadata !{i32 786688, metadata !4, metadata !"xmax", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmax] [line 36]
!16 = metadata !{i32 786688, metadata !4, metadata !"xmin", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin] [line 36]
!17 = metadata !{i32 786688, metadata !4, metadata !"xyzmax", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmax] [line 36]
!18 = metadata !{i32 786688, metadata !4, metadata !"xyzmin", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmin] [line 36]
!19 = metadata !{i32 786688, metadata !4, metadata !"ymax", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymax] [line 36]
!20 = metadata !{i32 786688, metadata !4, metadata !"ymin", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymin] [line 36]
!21 = metadata !{i32 786688, metadata !4, metadata !"zmax", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmax] [line 36]
!22 = metadata !{i32 786688, metadata !4, metadata !"zmin", metadata !5, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmin] [line 36]
!23 = metadata !{i32 786688, metadata !4, metadata !"bitant_plane", metadata !5, i32 36, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitant_plane] [line 36]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{i32 786688, metadata !4, metadata !"domain", metadata !5, i32 36, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 36]
!28 = metadata !{i32 786688, metadata !4, metadata !"quadrant_direction", metadata !5, i32 36, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quadrant_direction] [line 36]
!29 = metadata !{i32 786688, metadata !4, metadata !"type", metadata !5, i32 36, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 36]
!30 = metadata !{i32 786688, metadata !4, metadata !"symmetry_xmax", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmax] [line 36]
!31 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!32 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!33 = metadata !{i32 786688, metadata !4, metadata !"symmetry_xmin", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmin] [line 36]
!34 = metadata !{i32 786688, metadata !4, metadata !"symmetry_ymax", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymax] [line 36]
!35 = metadata !{i32 786688, metadata !4, metadata !"symmetry_ymin", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymin] [line 36]
!36 = metadata !{i32 786688, metadata !4, metadata !"symmetry_zmax", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmax] [line 36]
!37 = metadata !{i32 786688, metadata !4, metadata !"symmetry_zmin", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmin] [line 36]
!38 = metadata !{i32 786688, metadata !4, metadata !"avoid_origin", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_origin] [line 36]
!39 = metadata !{i32 786688, metadata !4, metadata !"avoid_originx", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originx] [line 36]
!40 = metadata !{i32 786688, metadata !4, metadata !"avoid_originy", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originy] [line 36]
!41 = metadata !{i32 786688, metadata !4, metadata !"avoid_originz", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originz] [line 36]
!42 = metadata !{i32 786688, metadata !4, metadata !"no_origin", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_origin] [line 36]
!43 = metadata !{i32 786688, metadata !4, metadata !"no_originx", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originx] [line 36]
!44 = metadata !{i32 786688, metadata !4, metadata !"no_originy", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originy] [line 36]
!45 = metadata !{i32 786688, metadata !4, metadata !"no_originz", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originz] [line 36]
!46 = metadata !{i32 786688, metadata !4, metadata !"periodic", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 36]
!47 = metadata !{i32 786688, metadata !4, metadata !"periodic_x", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 36]
!48 = metadata !{i32 786688, metadata !4, metadata !"periodic_y", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 36]
!49 = metadata !{i32 786688, metadata !4, metadata !"periodic_z", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 36]
!50 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 36, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 36]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{i32 37, i32 0, metadata !4, null}
!54 = metadata !{i32 38, i32 0, metadata !4, null}
!55 = metadata !{i32 39, i32 0, metadata !4, null}
!56 = metadata !{i32 40, i32 0, metadata !4, null}
!57 = metadata !{i32 42, i32 0, metadata !4, null}
!58 = metadata !{i32 59, i32 0, metadata !4, null}
!59 = metadata !{i32 76, i32 0, metadata !4, null}
!60 = metadata !{i32 93, i32 0, metadata !4, null}
!61 = metadata !{i8* undef}
!62 = metadata !{i32 111, i32 0, metadata !4, null}
