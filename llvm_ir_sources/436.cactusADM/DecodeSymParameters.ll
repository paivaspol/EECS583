; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_DecodeSymParameters_c() #0 {
entry:
  ret i8* getelementptr inbounds ([103 x i8]* @.str9, i64 0, i64 0), !dbg !60
}

; Function Attrs: nounwind optsize uwtable
define void @DecodeSymParameters3D(i32* nocapture %sym) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !17), !dbg !61
  %0 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 12), align 8, !dbg !62, !tbaa !63
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !32), !dbg !62
  %1 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 13), align 8, !dbg !62, !tbaa !63
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !33), !dbg !62
  %2 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 14), align 8, !dbg !62, !tbaa !63
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !34), !dbg !62
  %3 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 16) to i64*), align 8, !dbg !62
  %4 = trunc i64 %3 to i32, !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !36), !dbg !62
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !38), !dbg !62
  %7 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 18) to i64*), align 8, !dbg !62
  %8 = trunc i64 %7 to i32, !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !39), !dbg !62
  %9 = lshr i64 %7, 32
  %10 = trunc i64 %9 to i32
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !40), !dbg !62
  %11 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 20) to i64*), align 8, !dbg !62
  %12 = trunc i64 %11 to i32, !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !41), !dbg !62
  %13 = lshr i64 %11, 32
  %14 = trunc i64 %13 to i32
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !42), !dbg !62
  store i32 %6, i32* %sym, align 4, !dbg !66, !tbaa !67
  %arrayidx1 = getelementptr inbounds i32* %sym, i64 2, !dbg !68
  store i32 %10, i32* %arrayidx1, align 4, !dbg !68, !tbaa !67
  %arrayidx2 = getelementptr inbounds i32* %sym, i64 4, !dbg !69
  store i32 %14, i32* %arrayidx2, align 4, !dbg !69, !tbaa !67
  %arrayidx3 = getelementptr inbounds i32* %sym, i64 1, !dbg !70
  store i32 %4, i32* %arrayidx3, align 4, !dbg !70, !tbaa !67
  %arrayidx4 = getelementptr inbounds i32* %sym, i64 3, !dbg !71
  store i32 %8, i32* %arrayidx4, align 4, !dbg !71, !tbaa !67
  %arrayidx5 = getelementptr inbounds i32* %sym, i64 5, !dbg !72
  store i32 %12, i32* %arrayidx5, align 4, !dbg !72, !tbaa !67
  %call = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #4, !dbg !73
  %tobool = icmp eq i32 %call, 0, !dbg !73
  br i1 %tobool, label %if.else21, label %if.then, !dbg !73

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !74
  %tobool7 = icmp eq i32 %call6, 0, !dbg !74
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !74

if.then8:                                         ; preds = %if.then
  store i32 1, i32* %arrayidx2, align 4, !dbg !76, !tbaa !67
  br label %if.end54, !dbg !78

if.else:                                          ; preds = %if.then
  %call10 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !79
  %tobool11 = icmp eq i32 %call10, 0, !dbg !79
  br i1 %tobool11, label %if.else14, label %if.then12, !dbg !79

if.then12:                                        ; preds = %if.else
  store i32 1, i32* %arrayidx1, align 4, !dbg !80, !tbaa !67
  br label %if.end54, !dbg !82

if.else14:                                        ; preds = %if.else
  %call15 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !83
  %tobool16 = icmp eq i32 %call15, 0, !dbg !83
  br i1 %tobool16, label %if.end54, label %if.then17, !dbg !83

if.then17:                                        ; preds = %if.else14
  store i32 1, i32* %sym, align 4, !dbg !84, !tbaa !67
  br label %if.end54, !dbg !86

if.else21:                                        ; preds = %entry
  %call22 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !87
  %tobool23 = icmp eq i32 %call22, 0, !dbg !87
  br i1 %tobool23, label %if.else45, label %if.then24, !dbg !87

if.then24:                                        ; preds = %if.else21
  %call25 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !88
  %tobool26 = icmp eq i32 %call25, 0, !dbg !88
  br i1 %tobool26, label %if.else30, label %if.then27, !dbg !88

if.then27:                                        ; preds = %if.then24
  store i32 1, i32* %arrayidx1, align 4, !dbg !90, !tbaa !67
  store i32 1, i32* %arrayidx2, align 4, !dbg !92, !tbaa !67
  br label %if.end54, !dbg !93

if.else30:                                        ; preds = %if.then24
  %call31 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !94
  %tobool32 = icmp eq i32 %call31, 0, !dbg !94
  br i1 %tobool32, label %if.else36, label %if.then33, !dbg !94

if.then33:                                        ; preds = %if.else30
  store i32 1, i32* %sym, align 4, !dbg !95, !tbaa !67
  store i32 1, i32* %arrayidx2, align 4, !dbg !97, !tbaa !67
  br label %if.end54, !dbg !98

if.else36:                                        ; preds = %if.else30
  %call37 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !99
  %tobool38 = icmp eq i32 %call37, 0, !dbg !99
  br i1 %tobool38, label %if.end54, label %if.then39, !dbg !99

if.then39:                                        ; preds = %if.else36
  store i32 1, i32* %sym, align 4, !dbg !100, !tbaa !67
  store i32 1, i32* %arrayidx1, align 4, !dbg !102, !tbaa !67
  br label %if.end54, !dbg !103

if.else45:                                        ; preds = %if.else21
  %call46 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !104
  %tobool47 = icmp eq i32 %call46, 0, !dbg !104
  br i1 %tobool47, label %if.end54, label %if.then48, !dbg !104

if.then48:                                        ; preds = %if.else45
  store i32 1, i32* %sym, align 4, !dbg !105, !tbaa !67
  store i32 1, i32* %arrayidx1, align 4, !dbg !107, !tbaa !67
  store i32 1, i32* %arrayidx2, align 4, !dbg !108, !tbaa !67
  br label %if.end54, !dbg !109

if.end54:                                         ; preds = %if.else14, %if.else36, %if.else45, %if.then33, %if.then39, %if.then27, %if.then48, %if.then8, %if.then17, %if.then12
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !55), !dbg !111
  ret void, !dbg !111
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !58, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_CartGrid3D_DecodeSymParameters_c", metadata !"CCTKi_version_CactusBase_CartGrid3D_DecodeSymParameters_c", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_CartGrid3D_DecodeSymParameters_c, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [CCTKi_version_CactusBase_CartGrid3D_DecodeSymParameters_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DecodeSymParameters3D", metadata !"DecodeSymParameters3D", metadata !"", i32 41, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @DecodeSymParameters3D, null, null, metadata !16, i32 42} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 42] [DecodeSymParameters3D]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{metadata !17, metadata !18, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55}
!17 = metadata !{i32 786689, metadata !11, metadata !"sym", metadata !5, i32 16777257, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 41]
!18 = metadata !{i32 786688, metadata !11, metadata !"dx", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 43]
!19 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786688, metadata !11, metadata !"dxyz", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dxyz] [line 43]
!22 = metadata !{i32 786688, metadata !11, metadata !"dy", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 43]
!23 = metadata !{i32 786688, metadata !11, metadata !"dz", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 43]
!24 = metadata !{i32 786688, metadata !11, metadata !"xmax", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmax] [line 43]
!25 = metadata !{i32 786688, metadata !11, metadata !"xmin", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin] [line 43]
!26 = metadata !{i32 786688, metadata !11, metadata !"xyzmax", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmax] [line 43]
!27 = metadata !{i32 786688, metadata !11, metadata !"xyzmin", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmin] [line 43]
!28 = metadata !{i32 786688, metadata !11, metadata !"ymax", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymax] [line 43]
!29 = metadata !{i32 786688, metadata !11, metadata !"ymin", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymin] [line 43]
!30 = metadata !{i32 786688, metadata !11, metadata !"zmax", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmax] [line 43]
!31 = metadata !{i32 786688, metadata !11, metadata !"zmin", metadata !5, i32 43, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmin] [line 43]
!32 = metadata !{i32 786688, metadata !11, metadata !"bitant_plane", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitant_plane] [line 43]
!33 = metadata !{i32 786688, metadata !11, metadata !"domain", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 43]
!34 = metadata !{i32 786688, metadata !11, metadata !"quadrant_direction", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quadrant_direction] [line 43]
!35 = metadata !{i32 786688, metadata !11, metadata !"type", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 43]
!36 = metadata !{i32 786688, metadata !11, metadata !"symmetry_xmax", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmax] [line 43]
!37 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!38 = metadata !{i32 786688, metadata !11, metadata !"symmetry_xmin", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmin] [line 43]
!39 = metadata !{i32 786688, metadata !11, metadata !"symmetry_ymax", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymax] [line 43]
!40 = metadata !{i32 786688, metadata !11, metadata !"symmetry_ymin", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymin] [line 43]
!41 = metadata !{i32 786688, metadata !11, metadata !"symmetry_zmax", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmax] [line 43]
!42 = metadata !{i32 786688, metadata !11, metadata !"symmetry_zmin", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmin] [line 43]
!43 = metadata !{i32 786688, metadata !11, metadata !"avoid_origin", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_origin] [line 43]
!44 = metadata !{i32 786688, metadata !11, metadata !"avoid_originx", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originx] [line 43]
!45 = metadata !{i32 786688, metadata !11, metadata !"avoid_originy", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originy] [line 43]
!46 = metadata !{i32 786688, metadata !11, metadata !"avoid_originz", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originz] [line 43]
!47 = metadata !{i32 786688, metadata !11, metadata !"no_origin", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_origin] [line 43]
!48 = metadata !{i32 786688, metadata !11, metadata !"no_originx", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originx] [line 43]
!49 = metadata !{i32 786688, metadata !11, metadata !"no_originy", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originy] [line 43]
!50 = metadata !{i32 786688, metadata !11, metadata !"no_originz", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originz] [line 43]
!51 = metadata !{i32 786688, metadata !11, metadata !"periodic", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 43]
!52 = metadata !{i32 786688, metadata !11, metadata !"periodic_x", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 43]
!53 = metadata !{i32 786688, metadata !11, metadata !"periodic_y", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 43]
!54 = metadata !{i32 786688, metadata !11, metadata !"periodic_z", metadata !5, i32 43, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 43]
!55 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 43, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 43]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!57 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 18, metadata !8, i32 1, i32 1, null, null}
!60 = metadata !{i32 20, i32 0, metadata !4, null}
!61 = metadata !{i32 41, i32 0, metadata !11, null}
!62 = metadata !{i32 43, i32 0, metadata !11, null}
!63 = metadata !{metadata !"any pointer", metadata !64}
!64 = metadata !{metadata !"omnipotent char", metadata !65}
!65 = metadata !{metadata !"Simple C/C++ TBAA"}
!66 = metadata !{i32 47, i32 0, metadata !11, null}
!67 = metadata !{metadata !"int", metadata !64}
!68 = metadata !{i32 48, i32 0, metadata !11, null}
!69 = metadata !{i32 49, i32 0, metadata !11, null}
!70 = metadata !{i32 52, i32 0, metadata !11, null}
!71 = metadata !{i32 53, i32 0, metadata !11, null}
!72 = metadata !{i32 54, i32 0, metadata !11, null}
!73 = metadata !{i32 57, i32 0, metadata !11, null}
!74 = metadata !{i32 59, i32 0, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !11, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c]
!76 = metadata !{i32 61, i32 0, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !75, i32 60, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c]
!78 = metadata !{i32 62, i32 0, metadata !77, null}
!79 = metadata !{i32 63, i32 0, metadata !75, null}
!80 = metadata !{i32 65, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !75, i32 64, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c]
!82 = metadata !{i32 66, i32 0, metadata !81, null}
!83 = metadata !{i32 67, i32 0, metadata !75, null}
!84 = metadata !{i32 69, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !75, i32 68, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c]
!86 = metadata !{i32 70, i32 0, metadata !85, null}
!87 = metadata !{i32 72, i32 0, metadata !11, null}
!88 = metadata !{i32 74, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !11, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c]
!90 = metadata !{i32 76, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !89, i32 75, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c]
!92 = metadata !{i32 77, i32 0, metadata !91, null}
!93 = metadata !{i32 78, i32 0, metadata !91, null}
!94 = metadata !{i32 79, i32 0, metadata !89, null}
!95 = metadata !{i32 81, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !89, i32 80, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c]
!97 = metadata !{i32 82, i32 0, metadata !96, null}
!98 = metadata !{i32 83, i32 0, metadata !96, null}
!99 = metadata !{i32 84, i32 0, metadata !89, null}
!100 = metadata !{i32 86, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !89, i32 85, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c]
!102 = metadata !{i32 87, i32 0, metadata !101, null}
!103 = metadata !{i32 88, i32 0, metadata !101, null}
!104 = metadata !{i32 90, i32 0, metadata !11, null}
!105 = metadata !{i32 92, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !11, i32 91, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/DecodeSymParameters.c]
!107 = metadata !{i32 93, i32 0, metadata !106, null}
!108 = metadata !{i32 94, i32 0, metadata !106, null}
!109 = metadata !{i32 95, i32 0, metadata !106, null}
!110 = metadata !{i8* undef}
!111 = metadata !{i32 96, i32 0, metadata !11, null}
