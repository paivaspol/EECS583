; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Dummies.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Dummies.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"No driver thorn activated to provide storage for variables\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"No driver thorn activated to provide communication for variables\00", align 1
@.str4 = private unnamed_addr constant [82 x i8] c"$Header: /cactus/Cactus/src/main/Dummies.c,v 1.8 2001/07/04 13:18:00 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_Dummies_c() #0 {
entry:
  ret i8* getelementptr inbounds ([82 x i8]* @.str4, i64 0, i64 0), !dbg !46
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyStorageOn(i8* nocapture %GH, i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !17), !dbg !47
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !18), !dbg !47
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !17), !dbg !48
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !18), !dbg !49
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 25, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !50
  ret i32 0, !dbg !51
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyStorageOff(i8* nocapture %GH, i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !21), !dbg !52
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !22), !dbg !52
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !21), !dbg !53
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !22), !dbg !54
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 34, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyCommunicationOn(i8* nocapture %GH, i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !25), !dbg !57
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !26), !dbg !57
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !25), !dbg !58
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !26), !dbg !59
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 43, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !60
  ret i32 0, !dbg !61
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyCommunicationOff(i8* nocapture %GH, i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !29), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !30), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !29), !dbg !63
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !30), !dbg !64
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 52, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !65
  ret i32 0, !dbg !66
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CCTKi_DummyTriggerable(i32 %variable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %variable}, i64 0, metadata !35), !dbg !67
  tail call void @llvm.dbg.value(metadata !{i32 %variable}, i64 0, metadata !35), !dbg !68
  ret i32 0, !dbg !69
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CCTKi_DummyTriggerSaysGo(i8* nocapture %GH, i32 %variable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !38), !dbg !70
  tail call void @llvm.dbg.value(metadata !{i32 %variable}, i64 0, metadata !39), !dbg !70
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !38), !dbg !71
  tail call void @llvm.dbg.value(metadata !{i32 %variable}, i64 0, metadata !39), !dbg !72
  ret i32 1, !dbg !73
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CCTKi_DummyTriggerAction(i8* nocapture %GH, i32 %group) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !42), !dbg !74
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !43), !dbg !74
  tail call void @llvm.dbg.value(metadata !{i8* %GH}, i64 0, metadata !42), !dbg !75
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !43), !dbg !76
  ret i32 0, !dbg !77
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !44, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Dummies.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Dummies.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !19, metadata !23, metadata !27, metadata !31, metadata !36, metadata !40}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_Dummies_c", metadata !"CCTKi_version_main_Dummies_c", metadata !"", i32 19, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_Dummies_c, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [CCTKi_version_main_Dummies_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Dummies.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_DummyStorageOn", metadata !"CCTKi_DummyStorageOn", metadata !"", i32 21, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @CCTKi_DummyStorageOn, null, null, metadata !16, i32 22} ; [ DW_TAG_subprogram ] [line 21] [def] [scope 22] [CCTKi_DummyStorageOn]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777237, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 21]
!18 = metadata !{i32 786689, metadata !11, metadata !"group", metadata !5, i32 33554453, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 21]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_DummyStorageOff", metadata !"CCTKi_DummyStorageOff", metadata !"", i32 30, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @CCTKi_DummyStorageOff, null, null, metadata !20, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [CCTKi_DummyStorageOff]
!20 = metadata !{metadata !21, metadata !22}
!21 = metadata !{i32 786689, metadata !19, metadata !"GH", metadata !5, i32 16777246, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 30]
!22 = metadata !{i32 786689, metadata !19, metadata !"group", metadata !5, i32 33554462, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 30]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_DummyCommunicationOn", metadata !"CCTKi_DummyCommunicationOn", metadata !"", i32 39, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @CCTKi_DummyCommunicationOn, null, null, metadata !24, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [CCTKi_DummyCommunicationOn]
!24 = metadata !{metadata !25, metadata !26}
!25 = metadata !{i32 786689, metadata !23, metadata !"GH", metadata !5, i32 16777255, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 39]
!26 = metadata !{i32 786689, metadata !23, metadata !"group", metadata !5, i32 33554471, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 39]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_DummyCommunicationOff", metadata !"CCTKi_DummyCommunicationOff", metadata !"", i32 48, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @CCTKi_DummyCommunicationOff, null, null, metadata !28, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [CCTKi_DummyCommunicationOff]
!28 = metadata !{metadata !29, metadata !30}
!29 = metadata !{i32 786689, metadata !27, metadata !"GH", metadata !5, i32 16777264, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 48]
!30 = metadata !{i32 786689, metadata !27, metadata !"group", metadata !5, i32 33554480, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 48]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_DummyTriggerable", metadata !"CCTKi_DummyTriggerable", metadata !"", i32 57, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTKi_DummyTriggerable, null, null, metadata !34, i32 58} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 58] [CCTKi_DummyTriggerable]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !14, metadata !14}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786689, metadata !31, metadata !"variable", metadata !5, i32 16777273, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [variable] [line 57]
!36 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_DummyTriggerSaysGo", metadata !"CCTKi_DummyTriggerSaysGo", metadata !"", i32 63, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @CCTKi_DummyTriggerSaysGo, null, null, metadata !37, i32 64} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 64] [CCTKi_DummyTriggerSaysGo]
!37 = metadata !{metadata !38, metadata !39}
!38 = metadata !{i32 786689, metadata !36, metadata !"GH", metadata !5, i32 16777279, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 63]
!39 = metadata !{i32 786689, metadata !36, metadata !"variable", metadata !5, i32 33554495, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [variable] [line 63]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_DummyTriggerAction", metadata !"CCTKi_DummyTriggerAction", metadata !"", i32 70, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @CCTKi_DummyTriggerAction, null, null, metadata !41, i32 71} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 71] [CCTKi_DummyTriggerAction]
!41 = metadata !{metadata !42, metadata !43}
!42 = metadata !{i32 786689, metadata !40, metadata !"GH", metadata !5, i32 16777286, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 70]
!43 = metadata !{i32 786689, metadata !40, metadata !"group", metadata !5, i32 33554502, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 70]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, null, null}
!46 = metadata !{i32 19, i32 0, metadata !4, null}
!47 = metadata !{i32 21, i32 0, metadata !11, null}
!48 = metadata !{i32 23, i32 0, metadata !11, null}
!49 = metadata !{i32 24, i32 0, metadata !11, null}
!50 = metadata !{i32 25, i32 0, metadata !11, null}
!51 = metadata !{i32 27, i32 0, metadata !11, null}
!52 = metadata !{i32 30, i32 0, metadata !19, null}
!53 = metadata !{i32 32, i32 0, metadata !19, null}
!54 = metadata !{i32 33, i32 0, metadata !19, null}
!55 = metadata !{i32 34, i32 0, metadata !19, null}
!56 = metadata !{i32 36, i32 0, metadata !19, null}
!57 = metadata !{i32 39, i32 0, metadata !23, null}
!58 = metadata !{i32 41, i32 0, metadata !23, null}
!59 = metadata !{i32 42, i32 0, metadata !23, null}
!60 = metadata !{i32 43, i32 0, metadata !23, null}
!61 = metadata !{i32 45, i32 0, metadata !23, null}
!62 = metadata !{i32 48, i32 0, metadata !27, null}
!63 = metadata !{i32 50, i32 0, metadata !27, null}
!64 = metadata !{i32 51, i32 0, metadata !27, null}
!65 = metadata !{i32 52, i32 0, metadata !27, null}
!66 = metadata !{i32 54, i32 0, metadata !27, null}
!67 = metadata !{i32 57, i32 0, metadata !31, null}
!68 = metadata !{i32 59, i32 0, metadata !31, null}
!69 = metadata !{i32 60, i32 0, metadata !31, null}
!70 = metadata !{i32 63, i32 0, metadata !36, null}
!71 = metadata !{i32 65, i32 0, metadata !36, null}
!72 = metadata !{i32 66, i32 0, metadata !36, null}
!73 = metadata !{i32 67, i32 0, metadata !36, null}
!74 = metadata !{i32 70, i32 0, metadata !40, null}
!75 = metadata !{i32 72, i32 0, metadata !40, null}
!76 = metadata !{i32 73, i32 0, metadata !40, null}
!77 = metadata !{i32 74, i32 0, metadata !40, null}
