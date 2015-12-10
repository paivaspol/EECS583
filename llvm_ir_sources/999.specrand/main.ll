; ModuleID = '../../SPEC/benchspec/CPU2006/999.specrand/src/main.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str1 = private unnamed_addr constant [22 x i8] c"seed = %d\0Acount = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"%%f sequence:\0A\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"%%d sequence (1-2048000):\0A\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"Please supply seed and count\00"

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** nocapture %argv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !13), !dbg !18
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !14), !dbg !18
  %cmp = icmp slt i32 %argc, 2, !dbg !19
  br i1 %cmp, label %if.then, label %if.end, !dbg !19

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([29 x i8]* @str, i64 0, i64 0)), !dbg !20
  br label %return, !dbg !22

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8** %argv, i64 1, !dbg !23
  %0 = load i8** %arrayidx, align 8, !dbg !23, !tbaa !24
  %call1 = tail call i32 @atoi(i8* %0) #6, !dbg !23
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !15), !dbg !23
  %arrayidx2 = getelementptr inbounds i8** %argv, i64 2, !dbg !27
  %1 = load i8** %arrayidx2, align 8, !dbg !27, !tbaa !24
  %call3 = tail call i32 @atoi(i8* %1) #6, !dbg !27
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !16), !dbg !27
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), i32 %call1, i32 %call3) #7, !dbg !28
  %call5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !29
  tail call void @spec_srand(i32 %call1) #7, !dbg !30
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !17), !dbg !31
  %cmp627 = icmp sgt i32 %call3, 0, !dbg !31
  br i1 %cmp627, label %for.body, label %for.end.thread, !dbg !31

for.end.thread:                                   ; preds = %if.end
  %call930 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !33
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !17), !dbg !34
  br label %return, !dbg !34

for.body:                                         ; preds = %if.end, %for.body
  %i.028 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %call7 = tail call double @spec_rand() #7, !dbg !36
  %call8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), double %call7) #7, !dbg !36
  %inc = add nsw i32 %i.028, 1, !dbg !31
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !17), !dbg !31
  %exitcond29 = icmp eq i32 %inc, %call3, !dbg !31
  br i1 %exitcond29, label %for.end, label %for.body, !dbg !31

for.end:                                          ; preds = %for.body
  %call9 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !33
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !17), !dbg !34
  br i1 %cmp627, label %for.body12, label %return, !dbg !34

for.body12:                                       ; preds = %for.end, %for.body12
  %i.126 = phi i32 [ %inc16, %for.body12 ], [ 0, %for.end ]
  %call13 = tail call double @spec_rand() #7, !dbg !38
  %mul = fmul double %call13, 2.048000e+06, !dbg !38
  %add = fadd double %mul, 1.000000e+00, !dbg !38
  %conv = fptosi double %add to i32, !dbg !38
  %call14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i32 %conv) #7, !dbg !38
  %inc16 = add nsw i32 %i.126, 1, !dbg !34
  tail call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !17), !dbg !34
  %exitcond = icmp eq i32 %inc16, %call3, !dbg !34
  br i1 %exitcond, label %return, label %for.body12, !dbg !34

return:                                           ; preds = %for.end, %for.end.thread, %for.body12, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.body12 ], [ 0, %for.end.thread ], [ 0, %for.end ]
  ret i32 %retval.0, !dbg !40
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #2

; Function Attrs: optsize
declare void @spec_srand(i32) #3

; Function Attrs: optsize
declare double @spec_rand() #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/999.specrand/src/main.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/999.specrand/src/main.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 5, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @main, null, null, metadata !12, i32 5} ; [ DW_TAG_subprogram ] [line 5] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/999.specrand/src/main.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786689, metadata !4, metadata !"argc", metadata !5, i32 16777221, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 5]
!14 = metadata !{i32 786689, metadata !4, metadata !"argv", metadata !5, i32 33554437, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 5]
!15 = metadata !{i32 786688, metadata !4, metadata !"seed", metadata !5, i32 6, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seed] [line 6]
!16 = metadata !{i32 786688, metadata !4, metadata !"count", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 7]
!17 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 7]
!18 = metadata !{i32 5, i32 0, metadata !4, null}
!19 = metadata !{i32 9, i32 0, metadata !4, null}
!20 = metadata !{i32 10, i32 0, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !4, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/999.specrand/src/main.c]
!22 = metadata !{i32 11, i32 0, metadata !21, null}
!23 = metadata !{i32 13, i32 0, metadata !4, null}
!24 = metadata !{metadata !"any pointer", metadata !25}
!25 = metadata !{metadata !"omnipotent char", metadata !26}
!26 = metadata !{metadata !"Simple C/C++ TBAA"}
!27 = metadata !{i32 14, i32 0, metadata !4, null}
!28 = metadata !{i32 16, i32 0, metadata !4, null}
!29 = metadata !{i32 17, i32 0, metadata !4, null}
!30 = metadata !{i32 18, i32 0, metadata !4, null}
!31 = metadata !{i32 19, i32 0, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/999.specrand/src/main.c]
!33 = metadata !{i32 22, i32 0, metadata !4, null}
!34 = metadata !{i32 23, i32 0, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/999.specrand/src/main.c]
!36 = metadata !{i32 20, i32 0, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !32, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/999.specrand/src/main.c]
!38 = metadata !{i32 24, i32 0, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !35, i32 23, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/999.specrand/src/main.c]
!40 = metadata !{i32 27, i32 0, metadata !4, null}
