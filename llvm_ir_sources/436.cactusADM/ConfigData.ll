; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"Tried to store two GHs at the same convergence level !\0A\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/ConfigData.c,v 1.9 2001/11/05 14:58:53 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_ConfigData_c() #0 {
entry:
  ret i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0), !dbg !72
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_AddGH(%struct.tFleshConfig* nocapture %config, i32 %convergence_level, %struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !64), !dbg !73
  tail call void @llvm.dbg.value(metadata !{i32 %convergence_level}, i64 0, metadata !65), !dbg !73
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !66), !dbg !73
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !67), !dbg !74
  %nGHs = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 2, !dbg !75
  %0 = load i32* %nGHs, align 4, !dbg !75, !tbaa !76
  %cmp = icmp eq i32 %0, 0, !dbg !75
  %sub = add i32 %0, -1, !dbg !75
  %cmp3 = icmp ult i32 %sub, %convergence_level, !dbg !75
  %or.cond = or i1 %cmp, %cmp3, !dbg !75
  %GH4 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 1, !dbg !79
  br i1 %or.cond, label %if.then, label %land.lhs.true, !dbg !75

if.then:                                          ; preds = %entry
  %1 = load %struct.cGH*** %GH4, align 8, !dbg !79, !tbaa !81
  %2 = bitcast %struct.cGH** %1 to i8*, !dbg !79
  %add = add i32 %convergence_level, 1, !dbg !79
  %conv = zext i32 %add to i64, !dbg !79
  %mul = shl nuw nsw i64 %conv, 3, !dbg !79
  %call = tail call i8* @realloc(i8* %2, i64 %mul) #5, !dbg !79
  tail call void @llvm.dbg.value(metadata !{%struct.cGH** %3}, i64 0, metadata !69), !dbg !79
  %tobool = icmp eq i8* %call, null, !dbg !82
  br i1 %tobool, label %if.else24, label %if.then5, !dbg !82

if.then5:                                         ; preds = %if.then
  %3 = bitcast i8* %call to %struct.cGH**, !dbg !79
  store %struct.cGH** %3, %struct.cGH*** %GH4, align 8, !dbg !83, !tbaa !81
  %4 = load i32* %nGHs, align 4, !dbg !85, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !68), !dbg !85
  %cmp948 = icmp ult i32 %4, %add, !dbg !85
  br i1 %cmp948, label %for.body.lr.ph, label %for.end, !dbg !85

for.body.lr.ph:                                   ; preds = %if.then5
  %5 = zext i32 %4 to i64
  br label %for.body, !dbg !85

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %6 = phi %struct.cGH** [ %3, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %i.049 = phi i32 [ %4, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds %struct.cGH** %6, i64 %indvars.iv, !dbg !87
  store %struct.cGH* null, %struct.cGH** %arrayidx, align 8, !dbg !87, !tbaa !81
  %inc = add i32 %i.049, 1, !dbg !85
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !68), !dbg !85
  %exitcond = icmp eq i32 %inc, %add, !dbg !85
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !85

for.body.for.body_crit_edge:                      ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !85
  %.pre = load %struct.cGH*** %GH4, align 8, !dbg !87, !tbaa !81
  br label %for.body, !dbg !85

for.end:                                          ; preds = %for.body, %if.then5
  store i32 %add, i32* %nGHs, align 4, !dbg !89, !tbaa !76
  br label %land.lhs.true, !dbg !90

land.lhs.true:                                    ; preds = %entry, %for.end
  %idxprom16 = zext i32 %convergence_level to i64, !dbg !91
  %7 = load %struct.cGH*** %GH4, align 8, !dbg !91, !tbaa !81
  %arrayidx18 = getelementptr inbounds %struct.cGH** %7, i64 %idxprom16, !dbg !91
  %8 = load %struct.cGH** %arrayidx18, align 8, !dbg !91, !tbaa !81
  %tobool19 = icmp eq %struct.cGH* %8, null, !dbg !91
  br i1 %tobool19, label %if.then20, label %if.else24, !dbg !91

if.then20:                                        ; preds = %land.lhs.true
  store %struct.cGH* %GH, %struct.cGH** %arrayidx18, align 8, !dbg !92, !tbaa !81
  br label %if.end26, !dbg !94

if.else24:                                        ; preds = %if.then, %land.lhs.true
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !95, !tbaa !81
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %9), !dbg !95
  tail call void @llvm.dbg.value(metadata !97, i64 0, metadata !67), !dbg !98
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then20
  %retval1.1 = phi i32 [ 2, %if.else24 ], [ 0, %if.then20 ]
  ret i32 %retval1.1, !dbg !99
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !70, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_ConfigData_c", metadata !"CCTKi_version_main_ConfigData_c", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_ConfigData_c, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [CCTKi_version_main_ConfigData_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_AddGH", metadata !"CCTKi_AddGH", metadata !"", i32 56, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.tFleshConfig*, i32, %struct.cGH*)* @CCTKi_AddGH, null, null, metadata !63, i32 57} ; [ DW_TAG_subprogram ] [line 56] [def] [scope 57] [CCTKi_AddGH]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !62, metadata !24}
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
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69}
!64 = metadata !{i32 786689, metadata !11, metadata !"config", metadata !5, i32 16777272, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 56]
!65 = metadata !{i32 786689, metadata !11, metadata !"convergence_level", metadata !5, i32 33554488, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [convergence_level] [line 56]
!66 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 50331704, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 56]
!67 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 58, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 58]
!68 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 59, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 59]
!69 = metadata !{i32 786688, metadata !11, metadata !"temp", metadata !5, i32 60, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 60]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 19, metadata !8, i32 1, i32 1, null, null}
!72 = metadata !{i32 21, i32 0, metadata !4, null}
!73 = metadata !{i32 56, i32 0, metadata !11, null}
!74 = metadata !{i32 63, i32 0, metadata !11, null}
!75 = metadata !{i32 65, i32 0, metadata !11, null}
!76 = metadata !{metadata !"int", metadata !77}
!77 = metadata !{metadata !"omnipotent char", metadata !78}
!78 = metadata !{metadata !"Simple C/C++ TBAA"}
!79 = metadata !{i32 67, i32 0, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !11, i32 66, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c]
!81 = metadata !{metadata !"any pointer", metadata !77}
!82 = metadata !{i32 69, i32 0, metadata !80, null}
!83 = metadata !{i32 71, i32 0, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !80, i32 70, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c]
!85 = metadata !{i32 72, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !84, i32 72, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c]
!87 = metadata !{i32 74, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !86, i32 73, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c]
!89 = metadata !{i32 76, i32 0, metadata !84, null}
!90 = metadata !{i32 77, i32 0, metadata !84, null}
!91 = metadata !{i32 84, i32 0, metadata !11, null}
!92 = metadata !{i32 86, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !11, i32 85, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c]
!94 = metadata !{i32 87, i32 0, metadata !93, null}
!95 = metadata !{i32 90, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !11, i32 89, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c]
!97 = metadata !{i32 2}
!98 = metadata !{i32 91, i32 0, metadata !96, null}
!99 = metadata !{i32 94, i32 0, metadata !11, null}
