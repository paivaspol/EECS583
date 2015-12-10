; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/smalloc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"malloc for %s (%d bytes, file %s, line %d)\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"calloc for %s (nelem=%d, elsize=%d, file %s, line %d)\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"realloc for %s (%d bytes, file %s, line %d, %s=0x%8x)\00", align 1

; Function Attrs: nounwind optsize uwtable
define noalias i8* @save_malloc(i8* %name, i8* %file, i32 %line, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !13), !dbg !59
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !14), !dbg !59
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !15), !dbg !59
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !16), !dbg !59
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !17), !dbg !61
  %cmp = icmp eq i32 %size, 0, !dbg !62
  br i1 %cmp, label %if.end6, label %if.else, !dbg !62

if.else:                                          ; preds = %entry
  %conv = sext i32 %size to i64, !dbg !63
  %call = tail call noalias i8* @malloc(i64 %conv) #7, !dbg !63
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !17), !dbg !63
  %cmp1 = icmp eq i8* %call, null, !dbg !63
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !63

if.then3:                                         ; preds = %if.else
  %call4 = tail call i32* @__errno_location() #8, !dbg !65
  %0 = load i32* %call4, align 4, !dbg !65, !tbaa !66
  tail call void (i32, i8*, ...)* @fatal_error(i32 %0, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), i8* %name, i32 %size, i8* %file, i32 %line) #7, !dbg !65
  br label %if.end, !dbg !65

if.end:                                           ; preds = %if.then3, %if.else
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %conv, i32 1, i1 false), !dbg !69
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.end
  %p.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %p.0, !dbg !70
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define noalias i8* @save_calloc(i8* %name, i8* %file, i32 %line, i32 %nelem, i32 %elsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !23), !dbg !71
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !24), !dbg !71
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !25), !dbg !71
  tail call void @llvm.dbg.value(metadata !{i32 %nelem}, i64 0, metadata !26), !dbg !72
  tail call void @llvm.dbg.value(metadata !{i32 %elsize}, i64 0, metadata !27), !dbg !72
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !28), !dbg !73
  %cmp = icmp eq i32 %nelem, 0, !dbg !74
  %cmp1 = icmp eq i32 %elsize, 0, !dbg !74
  %or.cond = or i1 %cmp, %cmp1, !dbg !74
  br i1 %or.cond, label %if.end7, label %if.else, !dbg !74

if.else:                                          ; preds = %entry
  %conv = zext i32 %nelem to i64, !dbg !75
  %conv2 = zext i32 %elsize to i64, !dbg !75
  %call = tail call noalias i8* @calloc(i64 %conv, i64 %conv2) #7, !dbg !75
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !28), !dbg !75
  %cmp3 = icmp eq i8* %call, null, !dbg !75
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !75

if.then5:                                         ; preds = %if.else
  %call6 = tail call i32* @__errno_location() #8, !dbg !77
  %0 = load i32* %call6, align 4, !dbg !77, !tbaa !66
  tail call void (i32, i8*, ...)* @fatal_error(i32 %0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i8* %name, i32 %nelem, i32 %elsize, i8* %file, i32 %line) #7, !dbg !77
  br label %if.end7, !dbg !77

if.end7:                                          ; preds = %entry, %if.else, %if.then5
  %p.0 = phi i8* [ null, %if.then5 ], [ %call, %if.else ], [ null, %entry ]
  ret i8* %p.0, !dbg !78
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize uwtable
define i8* @save_realloc(i8* %name, i8* %file, i32 %line, i8* %ptr, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !33), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !34), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !35), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i8* %ptr}, i64 0, metadata !36), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !37), !dbg !79
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !38), !dbg !80
  %cmp = icmp eq i32 %size, 0, !dbg !81
  br i1 %cmp, label %if.end11, label %if.else, !dbg !81

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i8* %ptr, null, !dbg !82
  %conv = zext i32 %size to i64, !dbg !84
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !82

if.then2:                                         ; preds = %if.else
  %call = tail call noalias i8* @malloc(i64 %conv) #7, !dbg !84
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !38), !dbg !84
  br label %if.end, !dbg !84

if.else3:                                         ; preds = %if.else
  %call5 = tail call i8* @realloc(i8* %ptr, i64 %conv) #7, !dbg !85
  tail call void @llvm.dbg.value(metadata !{i8* %call5}, i64 0, metadata !38), !dbg !85
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  %p.0 = phi i8* [ %call, %if.then2 ], [ %call5, %if.else3 ]
  %cmp6 = icmp eq i8* %p.0, null, !dbg !86
  br i1 %cmp6, label %if.then8, label %if.end11, !dbg !86

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32* @__errno_location() #8, !dbg !87
  %0 = load i32* %call9, align 4, !dbg !87, !tbaa !66
  tail call void (i32, i8*, ...)* @fatal_error(i32 %0, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i8* %name, i32 %size, i8* %file, i32 %line, i8* %name, i8* %ptr) #7, !dbg !87
  br label %if.end11, !dbg !87

if.end11:                                         ; preds = %entry, %if.end, %if.then8
  %p.1 = phi i8* [ null, %if.then8 ], [ %p.0, %if.end ], [ null, %entry ]
  ret i8* %p.1, !dbg !88
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @save_free(i8* nocapture %name, i8* nocapture %file, i32 %line, i8* %ptr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !43), !dbg !89
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !44), !dbg !89
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !45), !dbg !89
  tail call void @llvm.dbg.value(metadata !{i8* %ptr}, i64 0, metadata !46), !dbg !89
  %cmp = icmp eq i8* %ptr, null, !dbg !90
  br i1 %cmp, label %if.end, label %if.then, !dbg !90

if.then:                                          ; preds = %entry
  tail call void @free(i8* %ptr) #7, !dbg !91
  br label %if.end, !dbg !91

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !92
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @maxavail() #5 {
entry:
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !52), !dbg !93
  tail call void @llvm.dbg.value(metadata !94, i64 0, metadata !53), !dbg !95
  ret i32 255999996, !dbg !96
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @memavail() #5 {
if.end6:
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !97), !dbg !99
  tail call void @llvm.dbg.value(metadata !94, i64 0, metadata !100), !dbg !101
  tail call void @llvm.dbg.value(metadata !102, i64 0, metadata !58), !dbg !98
  %call5 = tail call i32 @memavail() #9, !dbg !103
  %add = add i32 %call5, 255999996, !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !58), !dbg !103
  ret i32 %add, !dbg !106
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/smalloc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/smalloc.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !18, metadata !29, metadata !39, metadata !47, metadata !55}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"save_malloc", metadata !"save_malloc", metadata !"", i32 61, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32, i32)* @save_malloc, null, null, metadata !12, i32 62} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 62] [save_malloc]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/smalloc.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9, metadata !11, metadata !11}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786689, metadata !4, metadata !"name", metadata !5, i32 16777277, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 61]
!14 = metadata !{i32 786689, metadata !4, metadata !"file", metadata !5, i32 33554493, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 61]
!15 = metadata !{i32 786689, metadata !4, metadata !"line", metadata !5, i32 50331709, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 61]
!16 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 67108925, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 61]
!17 = metadata !{i32 786688, metadata !4, metadata !"p", metadata !5, i32 63, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 63]
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"save_calloc", metadata !"save_calloc", metadata !"", i32 81, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32, i32, i32)* @save_calloc, null, null, metadata !22, i32 83} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 83] [save_calloc]
!19 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{metadata !8, metadata !9, metadata !9, metadata !11, metadata !21, metadata !21}
!21 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28}
!23 = metadata !{i32 786689, metadata !18, metadata !"name", metadata !5, i32 16777297, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 81]
!24 = metadata !{i32 786689, metadata !18, metadata !"file", metadata !5, i32 33554513, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 81]
!25 = metadata !{i32 786689, metadata !18, metadata !"line", metadata !5, i32 50331729, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 81]
!26 = metadata !{i32 786689, metadata !18, metadata !"nelem", metadata !5, i32 67108946, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelem] [line 82]
!27 = metadata !{i32 786689, metadata !18, metadata !"elsize", metadata !5, i32 83886162, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [elsize] [line 82]
!28 = metadata !{i32 786688, metadata !18, metadata !"p", metadata !5, i32 84, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 84]
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"save_realloc", metadata !"save_realloc", metadata !"", i32 101, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32, i8*, i32)* @save_realloc, null, null, metadata !32, i32 102} ; [ DW_TAG_subprogram ] [line 101] [def] [scope 102] [save_realloc]
!30 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{metadata !8, metadata !9, metadata !9, metadata !11, metadata !8, metadata !21}
!32 = metadata !{metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38}
!33 = metadata !{i32 786689, metadata !29, metadata !"name", metadata !5, i32 16777317, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 101]
!34 = metadata !{i32 786689, metadata !29, metadata !"file", metadata !5, i32 33554533, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 101]
!35 = metadata !{i32 786689, metadata !29, metadata !"line", metadata !5, i32 50331749, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 101]
!36 = metadata !{i32 786689, metadata !29, metadata !"ptr", metadata !5, i32 67108965, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ptr] [line 101]
!37 = metadata !{i32 786689, metadata !29, metadata !"size", metadata !5, i32 83886181, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 101]
!38 = metadata !{i32 786688, metadata !29, metadata !"p", metadata !5, i32 103, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 103]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"save_free", metadata !"save_free", metadata !"", i32 125, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i8*)* @save_free, null, null, metadata !42, i32 126} ; [ DW_TAG_subprogram ] [line 125] [def] [scope 126] [save_free]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !9, metadata !9, metadata !11, metadata !8}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46}
!43 = metadata !{i32 786689, metadata !39, metadata !"name", metadata !5, i32 16777341, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 125]
!44 = metadata !{i32 786689, metadata !39, metadata !"file", metadata !5, i32 33554557, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 125]
!45 = metadata !{i32 786689, metadata !39, metadata !"line", metadata !5, i32 50331773, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 125]
!46 = metadata !{i32 786689, metadata !39, metadata !"ptr", metadata !5, i32 67108989, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ptr] [line 125]
!47 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"maxavail", metadata !"maxavail", metadata !"", i32 134, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @maxavail, null, null, metadata !50, i32 135} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 135] [maxavail]
!48 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{metadata !21}
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54}
!51 = metadata !{i32 786688, metadata !47, metadata !"ptr", metadata !5, i32 136, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 136]
!52 = metadata !{i32 786688, metadata !47, metadata !"low", metadata !5, i32 137, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [low] [line 137]
!53 = metadata !{i32 786688, metadata !47, metadata !"high", metadata !5, i32 137, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [high] [line 137]
!54 = metadata !{i32 786688, metadata !47, metadata !"size", metadata !5, i32 137, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 137]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"memavail", metadata !"memavail", metadata !"", i32 153, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @memavail, null, null, metadata !56, i32 154} ; [ DW_TAG_subprogram ] [line 153] [def] [scope 154] [memavail]
!56 = metadata !{metadata !57, metadata !58}
!57 = metadata !{i32 786688, metadata !55, metadata !"ptr", metadata !5, i32 155, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 155]
!58 = metadata !{i32 786688, metadata !55, metadata !"size", metadata !5, i32 156, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 156]
!59 = metadata !{i32 61, i32 0, metadata !4, null}
!60 = metadata !{i8* null}
!61 = metadata !{i32 65, i32 0, metadata !4, null}
!62 = metadata !{i32 66, i32 0, metadata !4, null}
!63 = metadata !{i32 70, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !4, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/smalloc.c]
!65 = metadata !{i32 71, i32 0, metadata !64, null}
!66 = metadata !{metadata !"int", metadata !67}
!67 = metadata !{metadata !"omnipotent char", metadata !68}
!68 = metadata !{metadata !"Simple C/C++ TBAA"}
!69 = metadata !{i32 73, i32 0, metadata !64, null}
!70 = metadata !{i32 78, i32 0, metadata !4, null}
!71 = metadata !{i32 81, i32 0, metadata !18, null}
!72 = metadata !{i32 82, i32 0, metadata !18, null}
!73 = metadata !{i32 86, i32 0, metadata !18, null}
!74 = metadata !{i32 87, i32 0, metadata !18, null}
!75 = metadata !{i32 91, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !18, i32 90, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/smalloc.c]
!77 = metadata !{i32 92, i32 0, metadata !76, null}
!78 = metadata !{i32 98, i32 0, metadata !18, null}
!79 = metadata !{i32 101, i32 0, metadata !29, null}
!80 = metadata !{i32 105, i32 0, metadata !29, null}
!81 = metadata !{i32 106, i32 0, metadata !29, null}
!82 = metadata !{i32 110, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !29, i32 109, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/smalloc.c]
!84 = metadata !{i32 111, i32 0, metadata !83, null}
!85 = metadata !{i32 113, i32 0, metadata !83, null}
!86 = metadata !{i32 114, i32 0, metadata !83, null}
!87 = metadata !{i32 115, i32 0, metadata !83, null}
!88 = metadata !{i32 122, i32 0, metadata !29, null}
!89 = metadata !{i32 125, i32 0, metadata !39, null}
!90 = metadata !{i32 130, i32 0, metadata !39, null}
!91 = metadata !{i32 131, i32 0, metadata !39, null}
!92 = metadata !{i32 132, i32 0, metadata !39, null}
!93 = metadata !{i32 139, i32 0, metadata !47, null}
!94 = metadata !{i32 256000000}
!95 = metadata !{i32 140, i32 0, metadata !47, null}
!96 = metadata !{i32 150, i32 0, metadata !47, null}
!97 = metadata !{i32 786688, metadata !47, metadata !"low", metadata !5, i32 137, metadata !21, i32 0, metadata !98} ; [ DW_TAG_auto_variable ] [low] [line 137]
!98 = metadata !{i32 158, i32 0, metadata !55, null}
!99 = metadata !{i32 139, i32 0, metadata !47, metadata !98}
!100 = metadata !{i32 786688, metadata !47, metadata !"high", metadata !5, i32 137, metadata !21, i32 0, metadata !98} ; [ DW_TAG_auto_variable ] [high] [line 137]
!101 = metadata !{i32 140, i32 0, metadata !47, metadata !98}
!102 = metadata !{i32 255999996}
!103 = metadata !{i32 161, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !105, i32 160, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/smalloc.c]
!105 = metadata !{i32 786443, metadata !1, metadata !55, i32 159, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/smalloc.c]
!106 = metadata !{i32 165, i32 0, metadata !55, null}
