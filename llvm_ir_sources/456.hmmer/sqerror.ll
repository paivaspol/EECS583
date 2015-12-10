; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/sqerror.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [9 x i8] c"\0AFATAL: \00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str3 = private unnamed_addr constant [21 x i8] c"\0APANIC [%s line %d] \00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"Unusual error\00", align 1
@squid_errno = common global i32 0, align 4

; Function Attrs: noreturn nounwind optsize uwtable
define void @Die(i8* nocapture %format, ...) #0 {
entry:
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %format}, i64 0, metadata !11), !dbg !41
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %argp}, metadata !12), !dbg !42
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !43, !tbaa !44
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %0), !dbg !43
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0, !dbg !47
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %argp to i8*, !dbg !47
  call void @llvm.va_start(i8* %arraydecay1), !dbg !47
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !48, !tbaa !44
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %2, i8* %format, %struct.__va_list_tag* %arraydecay) #6, !dbg !48
  call void @llvm.va_end(i8* %arraydecay1), !dbg !49
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !50, !tbaa !44
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %3), !dbg !50
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !51, !tbaa !44
  %call7 = call i32 @fflush(%struct._IO_FILE* %4) #6, !dbg !51
  call void @exit(i32 1) #7, !dbg !52
  unreachable, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define void @Warn(i8* nocapture %format, ...) #5 {
entry:
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %format}, i64 0, metadata !30), !dbg !53
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %argp}, metadata !31), !dbg !54
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !55, !tbaa !44
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %0), !dbg !55
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0, !dbg !56
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %argp to i8*, !dbg !56
  call void @llvm.va_start(i8* %arraydecay1), !dbg !56
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !57, !tbaa !44
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %2, i8* %format, %struct.__va_list_tag* %arraydecay) #6, !dbg !57
  call void @llvm.va_end(i8* %arraydecay1), !dbg !58
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !59, !tbaa !44
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %3), !dbg !59
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !60, !tbaa !44
  %call7 = call i32 @fflush(%struct._IO_FILE* %4) #6, !dbg !60
  ret void, !dbg !61
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @Panic(i8* %file, i32 %line) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !37), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !38), !dbg !62
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !63, !tbaa !44
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([21 x i8]* @.str3, i64 0, i64 0), i8* %file, i32 %line) #6, !dbg !63
  tail call void @perror(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !64
  tail call void @exit(i32 1) #7, !dbg !65
  unreachable, !dbg !65
}

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !39, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqerror.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/sqerror.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !28, metadata !32}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Die", metadata !"Die", metadata !"", i32 36, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @Die, null, null, metadata !10, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [Die]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqerror.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!9 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!10 = metadata !{metadata !11, metadata !12}
!11 = metadata !{i32 786689, metadata !4, metadata !"format", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 36]
!12 = metadata !{i32 786688, metadata !4, metadata !"argp", metadata !5, i32 38, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argp] [line 38]
!13 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!14 = metadata !{i32 786454, metadata !1, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 38, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 38, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !17, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 38, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [__va_list_tag] [line 38, size 0, align 0, offset 0] [from __va_list_tag]
!18 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 38, i64 192, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 38, size 192, align 64, offset 0] [from ]
!19 = metadata !{metadata !20, metadata !22, metadata !23, metadata !25}
!20 = metadata !{i32 786445, metadata !1, metadata !18, metadata !"gp_offset", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [gp_offset] [line 38, size 32, align 32, offset 0] [from unsigned int]
!21 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!22 = metadata !{i32 786445, metadata !1, metadata !18, metadata !"fp_offset", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [fp_offset] [line 38, size 32, align 32, offset 32] [from unsigned int]
!23 = metadata !{i32 786445, metadata !1, metadata !18, metadata !"overflow_arg_area", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [overflow_arg_area] [line 38, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786445, metadata !1, metadata !18, metadata !"reg_save_area", i32 38, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [reg_save_area] [line 38, size 64, align 64, offset 128] [from ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Warn", metadata !"Warn", metadata !"", i32 61, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @Warn, null, null, metadata !29, i32 62} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 62] [Warn]
!29 = metadata !{metadata !30, metadata !31}
!30 = metadata !{i32 786689, metadata !28, metadata !"format", metadata !5, i32 16777277, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 61]
!31 = metadata !{i32 786688, metadata !28, metadata !"argp", metadata !5, i32 63, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argp] [line 63]
!32 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Panic", metadata !"Panic", metadata !"", i32 88, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @Panic, null, null, metadata !36, i32 89} ; [ DW_TAG_subprogram ] [line 88] [def] [scope 89] [Panic]
!33 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{null, metadata !8, metadata !35}
!35 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!36 = metadata !{metadata !37, metadata !38}
!37 = metadata !{i32 786689, metadata !32, metadata !"file", metadata !5, i32 16777304, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 88]
!38 = metadata !{i32 786689, metadata !32, metadata !"line", metadata !5, i32 33554520, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 88]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786484, i32 0, null, metadata !"squid_errno", metadata !"squid_errno", metadata !"", metadata !5, i32 24, metadata !35, i32 0, i32 1, i32* @squid_errno, null} ; [ DW_TAG_variable ] [squid_errno] [line 24] [def]
!41 = metadata !{i32 36, i32 0, metadata !4, null}
!42 = metadata !{i32 38, i32 0, metadata !4, null}
!43 = metadata !{i32 40, i32 0, metadata !4, null}
!44 = metadata !{metadata !"any pointer", metadata !45}
!45 = metadata !{metadata !"omnipotent char", metadata !46}
!46 = metadata !{metadata !"Simple C/C++ TBAA"}
!47 = metadata !{i32 41, i32 0, metadata !4, null}
!48 = metadata !{i32 42, i32 0, metadata !4, null}
!49 = metadata !{i32 43, i32 0, metadata !4, null}
!50 = metadata !{i32 44, i32 0, metadata !4, null}
!51 = metadata !{i32 45, i32 0, metadata !4, null}
!52 = metadata !{i32 47, i32 0, metadata !4, null}
!53 = metadata !{i32 61, i32 0, metadata !28, null}
!54 = metadata !{i32 63, i32 0, metadata !28, null}
!55 = metadata !{i32 65, i32 0, metadata !28, null}
!56 = metadata !{i32 66, i32 0, metadata !28, null}
!57 = metadata !{i32 67, i32 0, metadata !28, null}
!58 = metadata !{i32 68, i32 0, metadata !28, null}
!59 = metadata !{i32 69, i32 0, metadata !28, null}
!60 = metadata !{i32 70, i32 0, metadata !28, null}
!61 = metadata !{i32 71, i32 0, metadata !28, null}
!62 = metadata !{i32 88, i32 0, metadata !32, null}
!63 = metadata !{i32 90, i32 0, metadata !32, null}
!64 = metadata !{i32 91, i32 0, metadata !32, null}
!65 = metadata !{i32 92, i32 0, metadata !32, null}
