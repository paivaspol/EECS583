; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/xmalloc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@name = internal unnamed_addr global i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), align 8
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [32 x i8] c"\0A%s%sCannot allocate %lu bytes\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind optsize uwtable
define void @xmalloc_set_program_name(i8* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !12), !dbg !43
  store i8* %s, i8** @name, align 8, !dbg !44, !tbaa !45
  ret void, !dbg !48
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @xmalloc_failed(i64 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !19), !dbg !49
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !50, !tbaa !45
  %1 = load i8** @name, align 8, !dbg !50, !tbaa !45
  %2 = load i8* %1, align 1, !dbg !50, !tbaa !46
  %tobool = icmp ne i8 %2, 0, !dbg !50
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), !dbg !50
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0), i8* %1, i8* %cond, i64 %size) #5, !dbg !50
  tail call void @xexit(i32 1) #6, !dbg !51
  unreachable, !dbg !51
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn optsize
declare void @xexit(i32) #3

; Function Attrs: nounwind optsize uwtable
define noalias i8* @xmalloc(i64 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !25), !dbg !52
  %cmp = icmp eq i64 %size, 0, !dbg !53
  %.size = select i1 %cmp, i64 1, i64 %size, !dbg !53
  tail call void @llvm.dbg.value(metadata !{i64 %.size}, i64 0, metadata !25), !dbg !54
  %call = tail call i8* @malloc(i64 %.size) #5, !dbg !55
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !26), !dbg !55
  %tobool = icmp eq i8* %call, null, !dbg !56
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !56

if.then1:                                         ; preds = %entry
  tail call void @xmalloc_failed(i64 %.size) #7, !dbg !57
  unreachable, !dbg !57

if.end2:                                          ; preds = %entry
  ret i8* %call, !dbg !58
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize uwtable
define noalias i8* @xcalloc(i64 %nelem, i64 %elsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %nelem}, i64 0, metadata !31), !dbg !59
  tail call void @llvm.dbg.value(metadata !{i64 %elsize}, i64 0, metadata !32), !dbg !59
  %cmp = icmp eq i64 %nelem, 0, !dbg !60
  %cmp1 = icmp eq i64 %elsize, 0, !dbg !60
  %or.cond = or i1 %cmp, %cmp1, !dbg !60
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !32), !dbg !62
  tail call void @llvm.dbg.value(metadata !61, i64 0, metadata !31), !dbg !62
  %elsize.addr.0 = select i1 %or.cond, i64 1, i64 %elsize, !dbg !60
  %nelem.addr.0 = select i1 %or.cond, i64 1, i64 %nelem, !dbg !60
  %call = tail call i8* @calloc(i64 %nelem.addr.0, i64 %elsize.addr.0) #5, !dbg !63
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !33), !dbg !63
  %tobool = icmp eq i8* %call, null, !dbg !64
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !64

if.then2:                                         ; preds = %entry
  %mul = mul i64 %nelem.addr.0, %elsize.addr.0, !dbg !65
  tail call void @xmalloc_failed(i64 %mul) #7, !dbg !65
  unreachable, !dbg !65

if.end3:                                          ; preds = %entry
  ret i8* %call, !dbg !66
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize uwtable
define i8* @xrealloc(i8* %oldmem, i64 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %oldmem}, i64 0, metadata !38), !dbg !67
  tail call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !39), !dbg !68
  %cmp = icmp eq i64 %size, 0, !dbg !69
  %.size = select i1 %cmp, i64 1, i64 %size, !dbg !69
  tail call void @llvm.dbg.value(metadata !{i64 %.size}, i64 0, metadata !39), !dbg !70
  %tobool = icmp eq i8* %oldmem, null, !dbg !71
  br i1 %tobool, label %if.then1, label %if.else, !dbg !71

if.then1:                                         ; preds = %entry
  %call = tail call i8* @malloc(i64 %.size) #5, !dbg !72
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !40), !dbg !72
  br label %if.end3, !dbg !72

if.else:                                          ; preds = %entry
  %call2 = tail call i8* @realloc(i8* %oldmem, i64 %.size) #5, !dbg !73
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !40), !dbg !73
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %newmem.0 = phi i8* [ %call2, %if.else ], [ %call, %if.then1 ]
  %tobool4 = icmp eq i8* %newmem.0, null, !dbg !74
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !74

if.then5:                                         ; preds = %if.end3
  tail call void @xmalloc_failed(i64 %.size) #7, !dbg !75
  unreachable, !dbg !75

if.end6:                                          ; preds = %if.end3
  ret i8* %newmem.0, !dbg !76
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { noreturn optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !41, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/xmalloc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/403.gcc/src/xmalloc.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !13, metadata !20, metadata !27, metadata !34}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"xmalloc_set_program_name", metadata !"xmalloc_set_program_name", metadata !"", i32 97, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void (i8*)* @xmalloc_set_program_name, null, null, metadata !11, i32 99} ; [ DW_TAG_subprogram ] [line 97] [def] [scope 99] [xmalloc_set_program_name]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/xmalloc.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786689, metadata !4, metadata !"s", metadata !5, i32 16777314, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 98]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"xmalloc_failed", metadata !"xmalloc_failed", metadata !"", i32 109, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void (i64)* @xmalloc_failed, null, null, metadata !18, i32 111} ; [ DW_TAG_subprogram ] [line 109] [def] [scope 111] [xmalloc_failed]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{null, metadata !16}
!16 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!17 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786689, metadata !13, metadata !"size", metadata !5, i32 16777326, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 110]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"xmalloc", metadata !"xmalloc", metadata !"", i32 134, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (i64)* @xmalloc, null, null, metadata !24, i32 136} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 136] [xmalloc]
!21 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !16}
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !26}
!25 = metadata !{i32 786689, metadata !20, metadata !"size", metadata !5, i32 16777351, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 135]
!26 = metadata !{i32 786688, metadata !20, metadata !"newmem", metadata !5, i32 137, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newmem] [line 137]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"xcalloc", metadata !"xcalloc", metadata !"", i32 149, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (i64, i64)* @xcalloc, null, null, metadata !30, i32 151} ; [ DW_TAG_subprogram ] [line 149] [def] [scope 151] [xcalloc]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !23, metadata !16, metadata !16}
!30 = metadata !{metadata !31, metadata !32, metadata !33}
!31 = metadata !{i32 786689, metadata !27, metadata !"nelem", metadata !5, i32 16777366, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelem] [line 150]
!32 = metadata !{i32 786689, metadata !27, metadata !"elsize", metadata !5, i32 33554582, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [elsize] [line 150]
!33 = metadata !{i32 786688, metadata !27, metadata !"newmem", metadata !5, i32 152, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newmem] [line 152]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"xrealloc", metadata !"xrealloc", metadata !"", i32 165, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (i8*, i64)* @xrealloc, null, null, metadata !37, i32 168} ; [ DW_TAG_subprogram ] [line 165] [def] [scope 168] [xrealloc]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !23, metadata !23, metadata !16}
!37 = metadata !{metadata !38, metadata !39, metadata !40}
!38 = metadata !{i32 786689, metadata !34, metadata !"oldmem", metadata !5, i32 16777382, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldmem] [line 166]
!39 = metadata !{i32 786689, metadata !34, metadata !"size", metadata !5, i32 33554599, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 167]
!40 = metadata !{i32 786688, metadata !34, metadata !"newmem", metadata !5, i32 169, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newmem] [line 169]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786484, i32 0, null, metadata !"name", metadata !"name", metadata !"", metadata !5, i32 88, metadata !8, i32 1, i32 1, i8** @name, null} ; [ DW_TAG_variable ] [name] [line 88] [local] [def]
!43 = metadata !{i32 98, i32 0, metadata !4, null}
!44 = metadata !{i32 100, i32 0, metadata !4, null}
!45 = metadata !{metadata !"any pointer", metadata !46}
!46 = metadata !{metadata !"omnipotent char", metadata !47}
!47 = metadata !{metadata !"Simple C/C++ TBAA"}
!48 = metadata !{i32 106, i32 0, metadata !4, null}
!49 = metadata !{i32 110, i32 0, metadata !13, null}
!50 = metadata !{i32 125, i32 0, metadata !13, null}
!51 = metadata !{i32 130, i32 0, metadata !13, null}
!52 = metadata !{i32 135, i32 0, metadata !20, null}
!53 = metadata !{i32 139, i32 0, metadata !20, null}
!54 = metadata !{i32 140, i32 0, metadata !20, null}
!55 = metadata !{i32 141, i32 0, metadata !20, null}
!56 = metadata !{i32 142, i32 0, metadata !20, null}
!57 = metadata !{i32 143, i32 0, metadata !20, null}
!58 = metadata !{i32 145, i32 0, metadata !20, null}
!59 = metadata !{i32 150, i32 0, metadata !27, null}
!60 = metadata !{i32 154, i32 0, metadata !27, null}
!61 = metadata !{i64 1}
!62 = metadata !{i32 155, i32 0, metadata !27, null}
!63 = metadata !{i32 157, i32 0, metadata !27, null}
!64 = metadata !{i32 158, i32 0, metadata !27, null}
!65 = metadata !{i32 159, i32 0, metadata !27, null}
!66 = metadata !{i32 161, i32 0, metadata !27, null}
!67 = metadata !{i32 166, i32 0, metadata !34, null}
!68 = metadata !{i32 167, i32 0, metadata !34, null}
!69 = metadata !{i32 171, i32 0, metadata !34, null}
!70 = metadata !{i32 172, i32 0, metadata !34, null}
!71 = metadata !{i32 173, i32 0, metadata !34, null}
!72 = metadata !{i32 174, i32 0, metadata !34, null}
!73 = metadata !{i32 176, i32 0, metadata !34, null}
!74 = metadata !{i32 177, i32 0, metadata !34, null}
!75 = metadata !{i32 178, i32 0, metadata !34, null}
!76 = metadata !{i32 180, i32 0, metadata !34, null}
