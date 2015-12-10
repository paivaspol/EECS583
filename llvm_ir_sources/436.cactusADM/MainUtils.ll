; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/MainUtils.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"cctk_run_title\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [18 x i8] c"Cactus Simulation\00", align 1
@.str4 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/MainUtils.c,v 1.6 2001/05/10 12:35:13 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_MainUtils_c() #0 {
entry:
  ret i8* getelementptr inbounds ([85 x i8]* @.str4, i64 0, i64 0), !dbg !24
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RunTitle(i32 %len, i8* %title) #1 {
entry:
  %param_type = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !17), !dbg !25
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !18), !dbg !25
  call void @llvm.dbg.declare(metadata !{i32* %param_type}, metadata !20), !dbg !26
  %call = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32* %param_type) #6, !dbg !27
  %0 = bitcast i8* %call to i8**, !dbg !27
  %1 = load i8** %0, align 8, !dbg !27, !tbaa !28
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !21), !dbg !27
  %tobool = icmp eq i8* %1, null, !dbg !31
  br i1 %tobool, label %if.end13, label %if.then, !dbg !31

if.then:                                          ; preds = %entry
  %call2 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !32
  %tobool3 = icmp eq i32 %call2, 0, !dbg !32
  %sub6 = add nsw i32 %len, -1, !dbg !34
  %conv7 = sext i32 %sub6 to i64, !dbg !34
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !32

if.then4:                                         ; preds = %if.then
  %call5 = call i8* @strncpy(i8* %title, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i64 %conv7) #6, !dbg !36
  br label %if.end, !dbg !38

if.else:                                          ; preds = %if.then
  %call8 = call i8* @strncpy(i8* %title, i8* %1, i64 %conv7) #6, !dbg !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %call9 = call i64 @strlen(i8* %title) #7, !dbg !39
  %conv10 = trunc i64 %call9 to i32, !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %conv10}, i64 0, metadata !19), !dbg !39
  %cmp = icmp sgt i32 %conv10, %len, !dbg !40
  %cond = select i1 %cmp, i32 0, i32 %conv10, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !19), !dbg !40
  br label %if.end13, !dbg !41

if.end13:                                         ; preds = %entry, %if.end
  %retval1.0 = phi i32 [ %cond, %if.end ], [ -1, %entry ]
  ret i32 %retval1.0, !dbg !42
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !22, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/MainUtils.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/MainUtils.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_MainUtils_c", metadata !"CCTKi_version_main_MainUtils_c", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_MainUtils_c, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [CCTKi_version_main_MainUtils_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/MainUtils.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RunTitle", metadata !"CCTK_RunTitle", metadata !"", i32 79, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*)* @CCTK_RunTitle, null, null, metadata !16, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [CCTK_RunTitle]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20, metadata !21}
!17 = metadata !{i32 786689, metadata !11, metadata !"len", metadata !5, i32 16777295, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 79]
!18 = metadata !{i32 786689, metadata !11, metadata !"title", metadata !5, i32 33554511, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 79]
!19 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 81, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 81]
!20 = metadata !{i32 786688, metadata !11, metadata !"param_type", metadata !5, i32 82, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 82]
!21 = metadata !{i32 786688, metadata !11, metadata !"cctk_title", metadata !5, i32 83, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_title] [line 83]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 21, metadata !8, i32 1, i32 1, null, null}
!24 = metadata !{i32 23, i32 0, metadata !4, null}
!25 = metadata !{i32 79, i32 0, metadata !11, null}
!26 = metadata !{i32 82, i32 0, metadata !11, null}
!27 = metadata !{i32 86, i32 0, metadata !11, null}
!28 = metadata !{metadata !"any pointer", metadata !29}
!29 = metadata !{metadata !"omnipotent char", metadata !30}
!30 = metadata !{metadata !"Simple C/C++ TBAA"}
!31 = metadata !{i32 90, i32 0, metadata !11, null}
!32 = metadata !{i32 92, i32 0, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !11, i32 91, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/MainUtils.c]
!34 = metadata !{i32 98, i32 0, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !33, i32 97, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/MainUtils.c]
!36 = metadata !{i32 94, i32 0, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !33, i32 93, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/MainUtils.c]
!38 = metadata !{i32 95, i32 0, metadata !37, null}
!39 = metadata !{i32 100, i32 0, metadata !33, null}
!40 = metadata !{i32 101, i32 0, metadata !33, null}
!41 = metadata !{i32 102, i32 0, metadata !33, null}
!42 = metadata !{i32 107, i32 0, metadata !11, null}
