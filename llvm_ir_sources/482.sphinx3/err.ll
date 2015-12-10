; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/err.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [21 x i8] c"%s: \22%s\22, line %ld: \00", align 1
@stdout = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [14 x i8] c"%s: %s(%ld): \00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind optsize uwtable
define void @_E__pr_header(i8* %f, i64 %ln, i8* %msg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %f}, i64 0, metadata !13), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i64 %ln}, i64 0, metadata !14), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i8* %msg}, i64 0, metadata !15), !dbg !62
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !63, !tbaa !64
  %call = tail call i32 @fflush(%struct._IO_FILE* %0) #7, !dbg !63
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !67, !tbaa !64
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* %msg, i8* %f, i64 %ln) #7, !dbg !67
  ret void, !dbg !68
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @_E__pr_info_header(i8* %f, i64 %ln, i8* %msg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %f}, i64 0, metadata !18), !dbg !69
  tail call void @llvm.dbg.value(metadata !{i64 %ln}, i64 0, metadata !19), !dbg !69
  tail call void @llvm.dbg.value(metadata !{i8* %msg}, i64 0, metadata !20), !dbg !69
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !70, !tbaa !64
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* %msg, i8* %f, i64 %ln) #7, !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nounwind optsize uwtable
define void @_E__pr_warn(i8* nocapture %fmt, ...) #0 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !25), !dbg !72
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %pvar}, metadata !26), !dbg !73
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !74
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*, !dbg !74
  call void @llvm.va_start(i8* %arraydecay1), !dbg !74
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !75, !tbaa !64
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #7, !dbg !75
  call void @llvm.va_end(i8* %arraydecay1), !dbg !76
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !77, !tbaa !64
  %call5 = call i32 @fflush(%struct._IO_FILE* %1) #7, !dbg !77
  ret void, !dbg !78
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @_E__pr_info(i8* nocapture %fmt, ...) #0 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !44), !dbg !79
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %pvar}, metadata !45), !dbg !80
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !81
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*, !dbg !81
  call void @llvm.va_start(i8* %arraydecay1), !dbg !81
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !82, !tbaa !64
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #7, !dbg !82
  call void @llvm.va_end(i8* %arraydecay1), !dbg !83
  ret void, !dbg !84
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @_E__die_error(i8* nocapture %fmt, ...) #4 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !48), !dbg !85
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %pvar}, metadata !49), !dbg !86
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !87
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*, !dbg !87
  call void @llvm.va_start(i8* %arraydecay1), !dbg !87
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !88, !tbaa !64
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #7, !dbg !88
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !89, !tbaa !64
  %call3 = call i32 @fflush(%struct._IO_FILE* %1) #7, !dbg !89
  call void @llvm.va_end(i8* %arraydecay1), !dbg !90
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !91, !tbaa !64
  %call6 = call i32 @fflush(%struct._IO_FILE* %2) #7, !dbg !91
  call void @exit(i32 -1) #8, !dbg !92
  unreachable, !dbg !92
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: noreturn nounwind optsize uwtable
define void @_E__fatal_sys_error(i8* nocapture %fmt, ...) #4 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !52), !dbg !93
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %pvar}, metadata !53), !dbg !94
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !95
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*, !dbg !95
  call void @llvm.va_start(i8* %arraydecay1), !dbg !95
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !96, !tbaa !64
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #7, !dbg !96
  call void @llvm.va_end(i8* %arraydecay1), !dbg !97
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !98, !tbaa !64
  %call5 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %1) #7, !dbg !98
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !99, !tbaa !64
  %call6 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %2) #7, !dbg !99
  call void @perror(i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !100
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !101, !tbaa !64
  %call7 = call i32 @fflush(%struct._IO_FILE* %3) #7, !dbg !101
  %call8 = call i32* @__errno_location() #9, !dbg !102
  %4 = load i32* %call8, align 4, !dbg !102, !tbaa !103
  call void @exit(i32 %4) #8, !dbg !102
  unreachable, !dbg !102
}

; Function Attrs: nounwind optsize
declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture) #2

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind optsize uwtable
define void @_E__sys_error(i8* nocapture %fmt, ...) #0 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !56), !dbg !104
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %pvar}, metadata !57), !dbg !105
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !106
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*, !dbg !106
  call void @llvm.va_start(i8* %arraydecay1), !dbg !106
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !107, !tbaa !64
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #7, !dbg !107
  call void @llvm.va_end(i8* %arraydecay1), !dbg !108
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !109, !tbaa !64
  %call5 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %1) #7, !dbg !109
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !110, !tbaa !64
  %call6 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %2) #7, !dbg !110
  call void @perror(i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !111
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !112, !tbaa !64
  %call7 = call i32 @fflush(%struct._IO_FILE* %3) #7, !dbg !112
  ret void, !dbg !113
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @_E__abort_error(i8* nocapture %fmt, ...) #4 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !60), !dbg !114
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %pvar}, metadata !61), !dbg !115
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !116
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*, !dbg !116
  call void @llvm.va_start(i8* %arraydecay1), !dbg !116
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !117, !tbaa !64
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #7, !dbg !117
  call void @llvm.va_end(i8* %arraydecay1), !dbg !118
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !119, !tbaa !64
  %call5 = call i32 @fflush(%struct._IO_FILE* %1) #7, !dbg !119
  call void @abort() #8, !dbg !120
  unreachable, !dbg !120
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/482.sphinx3/src/err.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/482.sphinx3/src/err.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !16, metadata !21, metadata !42, metadata !46, metadata !50, metadata !54, metadata !58}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_E__pr_header", metadata !"_E__pr_header", metadata !"", i32 72, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i64, i8*)* @_E__pr_header, null, null, metadata !12, i32 73} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 73] [_E__pr_header]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/482.sphinx3/src/err.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !11, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!12 = metadata !{metadata !13, metadata !14, metadata !15}
!13 = metadata !{i32 786689, metadata !4, metadata !"f", metadata !5, i32 16777288, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 72]
!14 = metadata !{i32 786689, metadata !4, metadata !"ln", metadata !5, i32 33554504, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ln] [line 72]
!15 = metadata !{i32 786689, metadata !4, metadata !"msg", metadata !5, i32 50331720, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 72]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_E__pr_info_header", metadata !"_E__pr_info_header", metadata !"", i32 79, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i64, i8*)* @_E__pr_info_header, null, null, metadata !17, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [_E__pr_info_header]
!17 = metadata !{metadata !18, metadata !19, metadata !20}
!18 = metadata !{i32 786689, metadata !16, metadata !"f", metadata !5, i32 16777295, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 79]
!19 = metadata !{i32 786689, metadata !16, metadata !"ln", metadata !5, i32 33554511, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ln] [line 79]
!20 = metadata !{i32 786689, metadata !16, metadata !"msg", metadata !5, i32 50331727, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 79]
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_E__pr_warn", metadata !"_E__pr_warn", metadata !"", i32 89, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @_E__pr_warn, null, null, metadata !24, i32 90} ; [ DW_TAG_subprogram ] [line 89] [def] [scope 90] [_E__pr_warn]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !8}
!24 = metadata !{metadata !25, metadata !26}
!25 = metadata !{i32 786689, metadata !21, metadata !"fmt", metadata !5, i32 16777305, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 89]
!26 = metadata !{i32 786688, metadata !21, metadata !"pvar", metadata !5, i32 91, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvar] [line 91]
!27 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!28 = metadata !{i32 786454, metadata !1, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!29 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 91, size 0, align 0, offset 0] [from ]
!30 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !31, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!31 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [__va_list_tag] [line 91, size 0, align 0, offset 0] [from __va_list_tag]
!32 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 91, i64 192, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 91, size 192, align 64, offset 0] [from ]
!33 = metadata !{metadata !34, metadata !36, metadata !37, metadata !39}
!34 = metadata !{i32 786445, metadata !1, metadata !32, metadata !"gp_offset", i32 91, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [gp_offset] [line 91, size 32, align 32, offset 0] [from unsigned int]
!35 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!36 = metadata !{i32 786445, metadata !1, metadata !32, metadata !"fp_offset", i32 91, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [fp_offset] [line 91, size 32, align 32, offset 32] [from unsigned int]
!37 = metadata !{i32 786445, metadata !1, metadata !32, metadata !"overflow_arg_area", i32 91, i64 64, i64 64, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [overflow_arg_area] [line 91, size 64, align 64, offset 64] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!39 = metadata !{i32 786445, metadata !1, metadata !32, metadata !"reg_save_area", i32 91, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [reg_save_area] [line 91, size 64, align 64, offset 128] [from ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!42 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_E__pr_info", metadata !"_E__pr_info", metadata !"", i32 101, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @_E__pr_info, null, null, metadata !43, i32 102} ; [ DW_TAG_subprogram ] [line 101] [def] [scope 102] [_E__pr_info]
!43 = metadata !{metadata !44, metadata !45}
!44 = metadata !{i32 786689, metadata !42, metadata !"fmt", metadata !5, i32 16777317, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 101]
!45 = metadata !{i32 786688, metadata !42, metadata !"pvar", metadata !5, i32 103, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvar] [line 103]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_E__die_error", metadata !"_E__die_error", metadata !"", i32 112, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @_E__die_error, null, null, metadata !47, i32 113} ; [ DW_TAG_subprogram ] [line 112] [def] [scope 113] [_E__die_error]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786689, metadata !46, metadata !"fmt", metadata !5, i32 16777328, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 112]
!49 = metadata !{i32 786688, metadata !46, metadata !"pvar", metadata !5, i32 114, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvar] [line 114]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_E__fatal_sys_error", metadata !"_E__fatal_sys_error", metadata !"", i32 128, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @_E__fatal_sys_error, null, null, metadata !51, i32 129} ; [ DW_TAG_subprogram ] [line 128] [def] [scope 129] [_E__fatal_sys_error]
!51 = metadata !{metadata !52, metadata !53}
!52 = metadata !{i32 786689, metadata !50, metadata !"fmt", metadata !5, i32 16777344, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 128]
!53 = metadata !{i32 786688, metadata !50, metadata !"pvar", metadata !5, i32 130, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvar] [line 130]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_E__sys_error", metadata !"_E__sys_error", metadata !"", i32 146, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @_E__sys_error, null, null, metadata !55, i32 147} ; [ DW_TAG_subprogram ] [line 146] [def] [scope 147] [_E__sys_error]
!55 = metadata !{metadata !56, metadata !57}
!56 = metadata !{i32 786689, metadata !54, metadata !"fmt", metadata !5, i32 16777362, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 146]
!57 = metadata !{i32 786688, metadata !54, metadata !"pvar", metadata !5, i32 148, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvar] [line 148]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_E__abort_error", metadata !"_E__abort_error", metadata !"", i32 162, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @_E__abort_error, null, null, metadata !59, i32 163} ; [ DW_TAG_subprogram ] [line 162] [def] [scope 163] [_E__abort_error]
!59 = metadata !{metadata !60, metadata !61}
!60 = metadata !{i32 786689, metadata !58, metadata !"fmt", metadata !5, i32 16777378, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 162]
!61 = metadata !{i32 786688, metadata !58, metadata !"pvar", metadata !5, i32 164, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pvar] [line 164]
!62 = metadata !{i32 72, i32 0, metadata !4, null}
!63 = metadata !{i32 74, i32 0, metadata !4, null}
!64 = metadata !{metadata !"any pointer", metadata !65}
!65 = metadata !{metadata !"omnipotent char", metadata !66}
!66 = metadata !{metadata !"Simple C/C++ TBAA"}
!67 = metadata !{i32 75, i32 0, metadata !4, null}
!68 = metadata !{i32 76, i32 0, metadata !4, null}
!69 = metadata !{i32 79, i32 0, metadata !16, null}
!70 = metadata !{i32 85, i32 0, metadata !16, null}
!71 = metadata !{i32 86, i32 0, metadata !16, null}
!72 = metadata !{i32 89, i32 0, metadata !21, null}
!73 = metadata !{i32 91, i32 0, metadata !21, null}
!74 = metadata !{i32 93, i32 0, metadata !21, null}
!75 = metadata !{i32 94, i32 0, metadata !21, null}
!76 = metadata !{i32 95, i32 0, metadata !21, null}
!77 = metadata !{i32 97, i32 0, metadata !21, null}
!78 = metadata !{i32 98, i32 0, metadata !21, null}
!79 = metadata !{i32 101, i32 0, metadata !42, null}
!80 = metadata !{i32 103, i32 0, metadata !42, null}
!81 = metadata !{i32 105, i32 0, metadata !42, null}
!82 = metadata !{i32 106, i32 0, metadata !42, null}
!83 = metadata !{i32 107, i32 0, metadata !42, null}
!84 = metadata !{i32 110, i32 0, metadata !42, null}
!85 = metadata !{i32 112, i32 0, metadata !46, null}
!86 = metadata !{i32 114, i32 0, metadata !46, null}
!87 = metadata !{i32 116, i32 0, metadata !46, null}
!88 = metadata !{i32 118, i32 0, metadata !46, null}
!89 = metadata !{i32 119, i32 0, metadata !46, null}
!90 = metadata !{i32 121, i32 0, metadata !46, null}
!91 = metadata !{i32 123, i32 0, metadata !46, null}
!92 = metadata !{i32 125, i32 0, metadata !46, null}
!93 = metadata !{i32 128, i32 0, metadata !50, null}
!94 = metadata !{i32 130, i32 0, metadata !50, null}
!95 = metadata !{i32 132, i32 0, metadata !50, null}
!96 = metadata !{i32 133, i32 0, metadata !50, null}
!97 = metadata !{i32 134, i32 0, metadata !50, null}
!98 = metadata !{i32 136, i32 0, metadata !50, null}
!99 = metadata !{i32 137, i32 0, metadata !50, null}
!100 = metadata !{i32 139, i32 0, metadata !50, null}
!101 = metadata !{i32 141, i32 0, metadata !50, null}
!102 = metadata !{i32 143, i32 0, metadata !50, null}
!103 = metadata !{metadata !"int", metadata !65}
!104 = metadata !{i32 146, i32 0, metadata !54, null}
!105 = metadata !{i32 148, i32 0, metadata !54, null}
!106 = metadata !{i32 150, i32 0, metadata !54, null}
!107 = metadata !{i32 151, i32 0, metadata !54, null}
!108 = metadata !{i32 152, i32 0, metadata !54, null}
!109 = metadata !{i32 154, i32 0, metadata !54, null}
!110 = metadata !{i32 155, i32 0, metadata !54, null}
!111 = metadata !{i32 157, i32 0, metadata !54, null}
!112 = metadata !{i32 159, i32 0, metadata !54, null}
!113 = metadata !{i32 160, i32 0, metadata !54, null}
!114 = metadata !{i32 162, i32 0, metadata !58, null}
!115 = metadata !{i32 164, i32 0, metadata !58, null}
!116 = metadata !{i32 166, i32 0, metadata !58, null}
!117 = metadata !{i32 167, i32 0, metadata !58, null}
!118 = metadata !{i32 168, i32 0, metadata !58, null}
!119 = metadata !{i32 170, i32 0, metadata !58, null}
!120 = metadata !{i32 172, i32 0, metadata !58, null}
