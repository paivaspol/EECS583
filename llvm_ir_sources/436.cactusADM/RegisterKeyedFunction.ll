; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [97 x i8] c"$Header: /cactus/Cactus/src/util/RegisterKeyedFunction.c,v 1.6 2001/05/10 12:35:21 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_RegisterKeyedFunction_c() #0 {
entry:
  ret i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), !dbg !42
}

; Function Attrs: nounwind optsize uwtable
define i32 @RegisterKeyedFunction(void ()** nocapture %array, i32 %min, i32 %max, i32 %key, void ()* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{void ()** %array}, i64 0, metadata !27), !dbg !43
  tail call void @llvm.dbg.value(metadata !{i32 %min}, i64 0, metadata !28), !dbg !44
  tail call void @llvm.dbg.value(metadata !{i32 %max}, i64 0, metadata !29), !dbg !44
  tail call void @llvm.dbg.value(metadata !{i32 %key}, i64 0, metadata !30), !dbg !45
  tail call void @llvm.dbg.value(metadata !{void ()* %func}, i64 0, metadata !31), !dbg !45
  %cmp = icmp slt i32 %key, %min, !dbg !46
  %cmp1 = icmp sgt i32 %key, %max, !dbg !46
  %or.cond = or i1 %cmp, %cmp1, !dbg !46
  br i1 %or.cond, label %if.end7, label %if.then, !dbg !46

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %key to i64, !dbg !47
  %arrayidx = getelementptr inbounds void ()** %array, i64 %idxprom, !dbg !47
  %0 = load void ()** %arrayidx, align 8, !dbg !47, !tbaa !49
  %cmp2 = icmp eq void ()* %0, null, !dbg !47
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !47

if.then3:                                         ; preds = %if.then
  store void ()* %func, void ()** %arrayidx, align 8, !dbg !52, !tbaa !49
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !32), !dbg !54
  br label %if.end7, !dbg !55

if.end7:                                          ; preds = %entry, %if.then, %if.then3
  %return_code.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.then ], [ 2, %entry ]
  ret i32 %return_code.0, !dbg !56
}

; Function Attrs: nounwind optsize uwtable
define noalias void ()** @CreateKeyedFunctionArray(i32 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !37), !dbg !57
  %conv = sext i32 %size to i64, !dbg !58
  %mul = shl nsw i64 %conv, 3, !dbg !58
  %call = tail call noalias i8* @malloc(i64 %mul) #5, !dbg !58
  %0 = bitcast i8* %call to void ()**, !dbg !58
  tail call void @llvm.dbg.value(metadata !{void ()** %0}, i64 0, metadata !38), !dbg !58
  %tobool = icmp ne i8* %call, null, !dbg !59
  %cmp7 = icmp sgt i32 %size, 0, !dbg !60
  %or.cond = and i1 %tobool, %cmp7, !dbg !59
  br i1 %or.cond, label %for.body.lr.ph, label %if.end, !dbg !59

for.body.lr.ph:                                   ; preds = %entry
  %1 = add i32 %size, -1, !dbg !60
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 3, !dbg !60
  %4 = add i64 %3, 8, !dbg !60
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %4, i32 8, i1 false), !dbg !63
  br label %if.end, !dbg !60

if.end:                                           ; preds = %entry, %for.body.lr.ph
  ret void ()** %0, !dbg !65
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !9, metadata !10, metadata !40, metadata !9, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"RegisterKeyedFunctionErrors", i32 36, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [RegisterKeyedFunctionErrors] [line 36, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/RegisterKeyedFunction.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"REG_KEYED_FUNCTION_SUCCESS", i64 0} ; [ DW_TAG_enumerator ] [REG_KEYED_FUNCTION_SUCCESS :: 0]
!7 = metadata !{i32 786472, metadata !"REG_KEYED_FUNCTION_ALREADY_ASSIGNED", i64 1} ; [ DW_TAG_enumerator ] [REG_KEYED_FUNCTION_ALREADY_ASSIGNED :: 1]
!8 = metadata !{i32 786472, metadata !"REG_KEYED_FUNCTION_RANGE_ERROR", i64 2} ; [ DW_TAG_enumerator ] [REG_KEYED_FUNCTION_RANGE_ERROR :: 2]
!9 = metadata !{i32 0}
!10 = metadata !{metadata !11, metadata !18, metadata !33}
!11 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"CCTKi_version_util_RegisterKeyedFunction_c", metadata !"CCTKi_version_util_RegisterKeyedFunction_c", metadata !"", i32 19, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_RegisterKeyedFunction_c, null, null, metadata !9, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [CCTKi_version_util_RegisterKeyedFunction_c]
!12 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c]
!13 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!17 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!18 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"RegisterKeyedFunction", metadata !"RegisterKeyedFunction", metadata !"", i32 35, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (void ()**, i32, i32, i32, void ()*)* @RegisterKeyedFunction, null, null, metadata !26, i32 38} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 38] [RegisterKeyedFunction]
!19 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{metadata !21, metadata !22, metadata !21, metadata !21, metadata !21, metadata !23}
!21 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null}
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!27 = metadata !{i32 786689, metadata !18, metadata !"array", metadata !12, i32 16777251, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 35]
!28 = metadata !{i32 786689, metadata !18, metadata !"min", metadata !12, i32 33554468, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min] [line 36]
!29 = metadata !{i32 786689, metadata !18, metadata !"max", metadata !12, i32 50331684, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 36]
!30 = metadata !{i32 786689, metadata !18, metadata !"key", metadata !12, i32 67108901, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 37]
!31 = metadata !{i32 786689, metadata !18, metadata !"func", metadata !12, i32 83886117, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 37]
!32 = metadata !{i32 786688, metadata !18, metadata !"return_code", metadata !12, i32 39, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 39]
!33 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"CreateKeyedFunctionArray", metadata !"CreateKeyedFunctionArray", metadata !"", i32 80, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()** (i32)* @CreateKeyedFunctionArray, null, null, metadata !36, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [CreateKeyedFunctionArray]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !22, metadata !21}
!36 = metadata !{metadata !37, metadata !38, metadata !39}
!37 = metadata !{i32 786689, metadata !33, metadata !"size", metadata !12, i32 16777296, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 80]
!38 = metadata !{i32 786688, metadata !33, metadata !"array", metadata !12, i32 82, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array] [line 82]
!39 = metadata !{i32 786688, metadata !33, metadata !"i", metadata !12, i32 83, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 83]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !12, i32 17, metadata !15, i32 1, i32 1, null, null}
!42 = metadata !{i32 19, i32 0, metadata !11, null}
!43 = metadata !{i32 35, i32 0, metadata !18, null}
!44 = metadata !{i32 36, i32 0, metadata !18, null}
!45 = metadata !{i32 37, i32 0, metadata !18, null}
!46 = metadata !{i32 41, i32 0, metadata !18, null}
!47 = metadata !{i32 43, i32 0, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !18, i32 42, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c]
!49 = metadata !{metadata !"any pointer", metadata !50}
!50 = metadata !{metadata !"omnipotent char", metadata !51}
!51 = metadata !{metadata !"Simple C/C++ TBAA"}
!52 = metadata !{i32 45, i32 0, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !48, i32 44, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c]
!54 = metadata !{i32 46, i32 0, metadata !53, null}
!55 = metadata !{i32 47, i32 0, metadata !53, null}
!56 = metadata !{i32 58, i32 0, metadata !18, null} ; [ DW_TAG_imported_module ]
!57 = metadata !{i32 80, i32 0, metadata !33, null}
!58 = metadata !{i32 86, i32 0, metadata !33, null}
!59 = metadata !{i32 88, i32 0, metadata !33, null}
!60 = metadata !{i32 91, i32 0, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !62, i32 91, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c]
!62 = metadata !{i32 786443, metadata !1, metadata !33, i32 89, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c]
!63 = metadata !{i32 93, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !61, i32 92, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/RegisterKeyedFunction.c]
!65 = metadata !{i32 97, i32 0, metadata !33, null}
