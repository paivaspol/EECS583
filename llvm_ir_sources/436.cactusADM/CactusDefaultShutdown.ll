; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }

@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str = private unnamed_addr constant [15 x i8] c"CCTK_TERMINATE\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"CCTK_SHUTDOWN\00", align 1
@.str4 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/Cactus/src/main/CactusDefaultShutdown.c,v 1.17 2001/11/05 14:58:53 tradke Exp $\00", align 1
@str = private unnamed_addr constant [81 x i8] c"--------------------------------------------------------------------------------\00"
@str5 = private unnamed_addr constant [6 x i8] c"Done.\00"

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_CactusDefaultShutdown_c() #0 {
entry:
  ret i8* getelementptr inbounds ([97 x i8]* @.str4, i64 0, i64 0), !dbg !69
}

; Function Attrs: nounwind optsize uwtable
define i32 @CactusDefaultShutdown(%struct.tFleshConfig* nocapture %config) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !64), !dbg !70
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !71, !tbaa !72
  %GH = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 1, !dbg !71
  %1 = load %struct.cGH*** %GH, align 8, !dbg !71, !tbaa !72
  %2 = load %struct.cGH** %1, align 8, !dbg !71, !tbaa !72
  %call = tail call i32 %0(%struct.cGH* %2) #5, !dbg !71
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !65), !dbg !71
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !66), !dbg !75
  %nGHs = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 2, !dbg !75
  %3 = load i32* %nGHs, align 4, !dbg !75, !tbaa !77
  %cmp30 = icmp eq i32 %3, 0, !dbg !75
  br i1 %cmp30, label %for.end14, label %for.body, !dbg !75

for.cond4.preheader:                              ; preds = %for.body
  %phitmp = icmp eq i32 %6, 0, !dbg !75
  br i1 %phitmp, label %for.end14, label %for.body7, !dbg !78

for.body:                                         ; preds = %entry, %for.body
  %conv_level.031 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %idxprom = zext i32 %conv_level.031 to i64, !dbg !80
  %4 = load %struct.cGH*** %GH, align 8, !dbg !80, !tbaa !72
  %arrayidx2 = getelementptr inbounds %struct.cGH** %4, i64 %idxprom, !dbg !80
  %5 = load %struct.cGH** %arrayidx2, align 8, !dbg !80, !tbaa !72
  %call3 = tail call i32 @CCTK_Traverse(%struct.cGH* %5, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5, !dbg !80
  %inc = add i32 %conv_level.031, 1, !dbg !75
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !66), !dbg !75
  %6 = load i32* %nGHs, align 4, !dbg !75, !tbaa !77
  %cmp = icmp ult i32 %inc, %6, !dbg !75
  br i1 %cmp, label %for.body, label %for.cond4.preheader, !dbg !75

for.body7:                                        ; preds = %for.cond4.preheader, %for.body7
  %conv_level.129 = phi i32 [ %inc13, %for.body7 ], [ 0, %for.cond4.preheader ]
  %idxprom8 = zext i32 %conv_level.129 to i64, !dbg !82
  %7 = load %struct.cGH*** %GH, align 8, !dbg !82, !tbaa !72
  %arrayidx10 = getelementptr inbounds %struct.cGH** %7, i64 %idxprom8, !dbg !82
  %8 = load %struct.cGH** %arrayidx10, align 8, !dbg !82, !tbaa !72
  %call11 = tail call i32 @CCTK_Traverse(%struct.cGH* %8, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !82
  %inc13 = add i32 %conv_level.129, 1, !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32 %inc13}, i64 0, metadata !66), !dbg !78
  %9 = load i32* %nGHs, align 4, !dbg !78, !tbaa !77
  %cmp6 = icmp ult i32 %inc13, %9, !dbg !78
  br i1 %cmp6, label %for.body7, label %for.end14, !dbg !78

for.end14:                                        ; preds = %entry, %for.body7, %for.cond4.preheader
  %cmp15 = icmp eq i32 %call, 0, !dbg !84
  br i1 %cmp15, label %if.then, label %if.end, !dbg !84

if.then:                                          ; preds = %for.end14
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str, i64 0, i64 0)), !dbg !85
  %puts27 = tail call i32 @puts(i8* getelementptr inbounds ([6 x i8]* @str5, i64 0, i64 0)), !dbg !87
  br label %if.end, !dbg !88

if.end:                                           ; preds = %if.then, %for.end14
  ret i32 0, !dbg !89
}

; Function Attrs: optsize
declare i32 @CCTK_Traverse(%struct.cGH*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !67, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_CactusDefaultShutdown_c", metadata !"CCTKi_version_main_CactusDefaultShutdown_c", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_CactusDefaultShutdown_c, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [CCTKi_version_main_CactusDefaultShutdown_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultShutdown", metadata !"CactusDefaultShutdown", metadata !"", i32 67, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.tFleshConfig*)* @CactusDefaultShutdown, null, null, metadata !63, i32 68} ; [ DW_TAG_subprogram ] [line 67] [def] [scope 68] [CactusDefaultShutdown]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !22, metadata !61}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!25 = metadata !{i32 786454, metadata !18, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !41, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !53, metadata !54}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!36 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!38 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!40 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!43 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!44 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!45 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!46 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!47 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!48 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!49 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !50} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !51} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!54 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !55} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!56 = metadata !{i32 786454, metadata !27, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!57 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !58, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !60}
!59 = metadata !{i32 786445, metadata !27, metadata !57, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!60 = metadata !{i32 786445, metadata !27, metadata !57, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!61 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!62 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!63 = metadata !{metadata !64, metadata !65, metadata !66}
!64 = metadata !{i32 786689, metadata !11, metadata !"config", metadata !5, i32 16777283, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 67]
!65 = metadata !{i32 786688, metadata !11, metadata !"myproc", metadata !5, i32 69, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 69]
!66 = metadata !{i32 786688, metadata !11, metadata !"conv_level", metadata !5, i32 70, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conv_level] [line 70]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 23, metadata !8, i32 1, i32 1, null, null}
!69 = metadata !{i32 25, i32 0, metadata !4, null}
!70 = metadata !{i32 67, i32 0, metadata !11, null}
!71 = metadata !{i32 72, i32 0, metadata !11, null}
!72 = metadata !{metadata !"any pointer", metadata !73}
!73 = metadata !{metadata !"omnipotent char", metadata !74}
!74 = metadata !{metadata !"Simple C/C++ TBAA"}
!75 = metadata !{i32 75, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !11, i32 75, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c]
!77 = metadata !{metadata !"int", metadata !73}
!78 = metadata !{i32 81, i32 0, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !11, i32 81, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c]
!80 = metadata !{i32 77, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !76, i32 76, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c]
!82 = metadata !{i32 83, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !79, i32 82, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c]
!84 = metadata !{i32 93, i32 0, metadata !11, null}
!85 = metadata !{i32 95, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !11, i32 94, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c]
!87 = metadata !{i32 96, i32 0, metadata !86, null}
!88 = metadata !{i32 97, i32 0, metadata !86, null}
!89 = metadata !{i32 99, i32 0, metadata !11, null}
