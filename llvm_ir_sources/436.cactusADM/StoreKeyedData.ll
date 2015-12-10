; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PKeyedData = type { %struct.PKeyedData*, %struct.PKeyedData*, i32, i8* }

@.str = private unnamed_addr constant [90 x i8] c"$Header: /cactus/Cactus/src/util/StoreKeyedData.c,v 1.4 2001/05/10 12:35:22 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_StoreKeyedData_c() #0 {
entry:
  ret i8* getelementptr inbounds ([90 x i8]* @.str, i64 0, i64 0), !dbg !50
}

; Function Attrs: nounwind optsize uwtable
define i32 @StoreKeyedData(%struct.PKeyedData** nocapture %storage, i32 %key, i8* %data) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PKeyedData** %storage}, i64 0, metadata !28), !dbg !51
  tail call void @llvm.dbg.value(metadata !{i32 %key}, i64 0, metadata !29), !dbg !51
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !30), !dbg !51
  %call = tail call noalias i8* @malloc(i64 32) #5, !dbg !52
  %0 = bitcast i8* %call to %struct.PKeyedData*, !dbg !52
  tail call void @llvm.dbg.value(metadata !{%struct.PKeyedData* %0}, i64 0, metadata !32), !dbg !52
  %tobool = icmp eq i8* %call, null, !dbg !53
  br i1 %tobool, label %if.end8, label %if.then, !dbg !53

if.then:                                          ; preds = %entry
  %key1 = getelementptr inbounds i8* %call, i64 16, !dbg !54
  %1 = bitcast i8* %key1 to i32*, !dbg !54
  store i32 %key, i32* %1, align 4, !dbg !54, !tbaa !56
  %data2 = getelementptr inbounds i8* %call, i64 24, !dbg !59
  %2 = bitcast i8* %data2 to i8**, !dbg !59
  store i8* %data, i8** %2, align 8, !dbg !59, !tbaa !60
  %3 = load %struct.PKeyedData** %storage, align 8, !dbg !61, !tbaa !60
  %next = getelementptr inbounds i8* %call, i64 8, !dbg !61
  %4 = bitcast i8* %next to %struct.PKeyedData**, !dbg !61
  store %struct.PKeyedData* %3, %struct.PKeyedData** %4, align 8, !dbg !61, !tbaa !60
  %last = bitcast i8* %call to %struct.PKeyedData**, !dbg !62
  store %struct.PKeyedData* null, %struct.PKeyedData** %last, align 8, !dbg !62, !tbaa !60
  %tobool4 = icmp eq %struct.PKeyedData* %3, null, !dbg !63
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !63

if.then5:                                         ; preds = %if.then
  %last7 = getelementptr inbounds %struct.PKeyedData* %3, i64 0, i32 0, !dbg !63
  store %struct.PKeyedData* %0, %struct.PKeyedData** %last7, align 8, !dbg !63, !tbaa !60
  br label %if.end, !dbg !63

if.end:                                           ; preds = %if.then, %if.then5
  store %struct.PKeyedData* %0, %struct.PKeyedData** %storage, align 8, !dbg !64, !tbaa !60
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !31), !dbg !65
  br label %if.end8, !dbg !66

if.end8:                                          ; preds = %entry, %if.end
  %return_code.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %return_code.0, !dbg !67
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize readonly uwtable
define i8* @GetKeyedData(%struct.PKeyedData* %storage, i32 %key) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PKeyedData* %storage}, i64 0, metadata !37), !dbg !68
  tail call void @llvm.dbg.value(metadata !{i32 %key}, i64 0, metadata !38), !dbg !68
  tail call void @llvm.dbg.value(metadata !69, i64 0, metadata !39), !dbg !70
  %tobool = icmp eq %struct.PKeyedData* %storage, null, !dbg !71
  br i1 %tobool, label %if.end4, label %for.body, !dbg !71

for.body:                                         ; preds = %entry, %for.inc
  %current.010 = phi %struct.PKeyedData* [ %2, %for.inc ], [ %storage, %entry ]
  %key2 = getelementptr inbounds %struct.PKeyedData* %current.010, i64 0, i32 2, !dbg !72
  %0 = load i32* %key2, align 4, !dbg !72, !tbaa !56
  %cmp = icmp eq i32 %0, %key, !dbg !72
  br i1 %cmp, label %if.then3, label %for.inc, !dbg !72

if.then3:                                         ; preds = %for.body
  %data = getelementptr inbounds %struct.PKeyedData* %current.010, i64 0, i32 3, !dbg !76
  %1 = load i8** %data, align 8, !dbg !76, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !39), !dbg !76
  br label %if.end4, !dbg !78

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.PKeyedData* %current.010, i64 0, i32 1, !dbg !79
  %2 = load %struct.PKeyedData** %next, align 8, !dbg !79, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{%struct.PKeyedData* %2}, i64 0, metadata !40), !dbg !79
  %tobool1 = icmp eq %struct.PKeyedData* %2, null, !dbg !79
  br i1 %tobool1, label %if.end4, label %for.body, !dbg !79

if.end4:                                          ; preds = %for.inc, %entry, %if.then3
  %return_val.0 = phi i8* [ %1, %if.then3 ], [ null, %entry ], [ null, %for.inc ]
  ret i8* %return_val.0, !dbg !80
}

; Function Attrs: nounwind optsize uwtable
define void @DestroyKeyedData(%struct.PKeyedData* %storage) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PKeyedData* %storage}, i64 0, metadata !45), !dbg !81
  tail call void @llvm.dbg.value(metadata !{%struct.PKeyedData* %storage}, i64 0, metadata !46), !dbg !82
  %tobool4 = icmp eq %struct.PKeyedData* %storage, null, !dbg !82
  br i1 %tobool4, label %for.end, label %for.body, !dbg !82

for.body:                                         ; preds = %entry, %for.body
  %current.05 = phi %struct.PKeyedData* [ %0, %for.body ], [ %storage, %entry ]
  %next1 = getelementptr inbounds %struct.PKeyedData* %current.05, i64 0, i32 1, !dbg !84
  %0 = load %struct.PKeyedData** %next1, align 8, !dbg !84, !tbaa !60
  tail call void @llvm.dbg.value(metadata !{%struct.PKeyedData* %0}, i64 0, metadata !47), !dbg !84
  %1 = bitcast %struct.PKeyedData* %current.05 to i8*, !dbg !86
  tail call void @free(i8* %1) #5, !dbg !86
  tail call void @llvm.dbg.value(metadata !{%struct.PKeyedData* %0}, i64 0, metadata !46), !dbg !82
  %tobool = icmp eq %struct.PKeyedData* %0, null, !dbg !82
  br i1 %tobool, label %for.end, label %for.body, !dbg !82

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !87
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !48, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !33, metadata !41}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_util_StoreKeyedData_c", metadata !"CCTKi_version_util_StoreKeyedData_c", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_StoreKeyedData_c, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [CCTKi_version_util_StoreKeyedData_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"StoreKeyedData", metadata !"StoreKeyedData", metadata !"", i32 65, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.PKeyedData**, i32, i8*)* @StoreKeyedData, null, null, metadata !27, i32 66} ; [ DW_TAG_subprogram ] [line 65] [def] [scope 66] [StoreKeyedData]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14, metadata !26}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pKeyedData]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"pKeyedData", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [pKeyedData] [line 26, size 0, align 0, offset 0] [from PKeyedData]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"PKeyedData", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [PKeyedData] [line 18, size 256, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreKeyedData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !23, metadata !24, metadata !25}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"last", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [last] [line 20, size 64, align 64, offset 0] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PKeyedData]
!23 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"next", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"key", i32 23, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 128] [from int]
!25 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"data", i32 25, i64 64, i64 64, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [data] [line 25, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!28 = metadata !{i32 786689, metadata !11, metadata !"storage", metadata !5, i32 16777281, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [storage] [line 65]
!29 = metadata !{i32 786689, metadata !11, metadata !"key", metadata !5, i32 33554497, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 65]
!30 = metadata !{i32 786689, metadata !11, metadata !"data", metadata !5, i32 50331713, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 65]
!31 = metadata !{i32 786688, metadata !11, metadata !"return_code", metadata !5, i32 67, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 67]
!32 = metadata !{i32 786688, metadata !11, metadata !"new", metadata !5, i32 69, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 69]
!33 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GetKeyedData", metadata !"GetKeyedData", metadata !"", i32 136, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.PKeyedData*, i32)* @GetKeyedData, null, null, metadata !36, i32 137} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 137] [GetKeyedData]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !26, metadata !16, metadata !14}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40}
!37 = metadata !{i32 786689, metadata !33, metadata !"storage", metadata !5, i32 16777352, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [storage] [line 136]
!38 = metadata !{i32 786689, metadata !33, metadata !"key", metadata !5, i32 33554568, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 136]
!39 = metadata !{i32 786688, metadata !33, metadata !"return_val", metadata !5, i32 138, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_val] [line 138]
!40 = metadata !{i32 786688, metadata !33, metadata !"current", metadata !5, i32 140, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [current] [line 140]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DestroyKeyedData", metadata !"DestroyKeyedData", metadata !"", i32 183, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.PKeyedData*)* @DestroyKeyedData, null, null, metadata !44, i32 184} ; [ DW_TAG_subprogram ] [line 183] [def] [scope 184] [DestroyKeyedData]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{null, metadata !16}
!44 = metadata !{metadata !45, metadata !46, metadata !47}
!45 = metadata !{i32 786689, metadata !41, metadata !"storage", metadata !5, i32 16777399, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [storage] [line 183]
!46 = metadata !{i32 786688, metadata !41, metadata !"current", metadata !5, i32 185, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [current] [line 185]
!47 = metadata !{i32 786688, metadata !41, metadata !"next", metadata !5, i32 186, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 186]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 20, metadata !8, i32 1, i32 1, null, null}
!50 = metadata !{i32 22, i32 0, metadata !4, null}
!51 = metadata !{i32 65, i32 0, metadata !11, null}
!52 = metadata !{i32 72, i32 0, metadata !11, null}
!53 = metadata !{i32 74, i32 0, metadata !11, null}
!54 = metadata !{i32 77, i32 0, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !11, i32 75, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c]
!56 = metadata !{metadata !"int", metadata !57}
!57 = metadata !{metadata !"omnipotent char", metadata !58}
!58 = metadata !{metadata !"Simple C/C++ TBAA"}
!59 = metadata !{i32 80, i32 0, metadata !55, null}
!60 = metadata !{metadata !"any pointer", metadata !57}
!61 = metadata !{i32 83, i32 0, metadata !55, null}
!62 = metadata !{i32 84, i32 0, metadata !55, null}
!63 = metadata !{i32 86, i32 0, metadata !55, null}
!64 = metadata !{i32 88, i32 0, metadata !55, null}
!65 = metadata !{i32 90, i32 0, metadata !55, null}
!66 = metadata !{i32 91, i32 0, metadata !55, null}
!67 = metadata !{i32 98, i32 0, metadata !11, null}
!68 = metadata !{i32 136, i32 0, metadata !33, null}
!69 = metadata !{i8* null}
!70 = metadata !{i32 142, i32 0, metadata !33, null}
!71 = metadata !{i32 144, i32 0, metadata !33, null}
!72 = metadata !{i32 150, i32 0, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !74, i32 148, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c]
!74 = metadata !{i32 786443, metadata !1, metadata !75, i32 147, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c]
!75 = metadata !{i32 786443, metadata !1, metadata !33, i32 145, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c]
!76 = metadata !{i32 152, i32 0, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !73, i32 151, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c]
!78 = metadata !{i32 153, i32 0, metadata !77, null}
!79 = metadata !{i32 147, i32 0, metadata !74, null}
!80 = metadata !{i32 158, i32 0, metadata !33, null}
!81 = metadata !{i32 183, i32 0, metadata !41, null}
!82 = metadata !{i32 189, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !41, i32 189, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c]
!84 = metadata !{i32 191, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !83, i32 190, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c]
!86 = metadata !{i32 193, i32 0, metadata !85, null}
!87 = metadata !{i32 196, i32 0, metadata !41, null}
