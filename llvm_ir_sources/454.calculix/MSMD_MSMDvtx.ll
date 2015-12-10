; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDvtx.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }
%struct._IP = type { i32, %struct._IP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in MSMDvtx_print(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [55 x i8] c"\0A vertex %d, weight %d, mark %c, status %c, stage = %d\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"\0A    edges(%d) :\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"\0A    subtrees :\00", align 1
@.str4 = private unnamed_addr constant [17 x i8] c"\0A    parent = %d\00", align 1
@.str5 = private unnamed_addr constant [28 x i8] c"\0A    bnd(%d), weight = %d :\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MSMDvtx_print(%struct._MSMDvtx* %v, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %v}, i64 0, metadata !94), !dbg !97
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !95), !dbg !98
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !96), !dbg !99
  %cmp = icmp eq %struct._MSMDvtx* %v, null, !dbg !100
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !100
  %or.cond = or i1 %cmp, %cmp1, !dbg !100
  br i1 %or.cond, label %if.then, label %if.end, !dbg !100

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !101, !tbaa !103
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._MSMDvtx* %v, %struct._IO_FILE* %fp) #6, !dbg !101
  call void @exit(i32 -1) #7, !dbg !106
  unreachable, !dbg !106

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0, !dbg !107
  %1 = load i32* %id, align 4, !dbg !107, !tbaa !108
  %wght = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 4, !dbg !107
  %2 = load i32* %wght, align 4, !dbg !107, !tbaa !108
  %mark = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 1, !dbg !107
  %3 = load i8* %mark, align 1, !dbg !107, !tbaa !104
  %conv = sext i8 %3 to i32, !dbg !107
  %status = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 2, !dbg !107
  %4 = load i8* %status, align 1, !dbg !107, !tbaa !104
  %conv2 = sext i8 %4 to i32, !dbg !107
  %stage = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 3, !dbg !107
  %5 = load i32* %stage, align 4, !dbg !107, !tbaa !108
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 %1, i32 %2, i32 %conv, i32 %conv2, i32 %5) #6, !dbg !107
  %6 = load i8* %status, align 1, !dbg !109, !tbaa !104
  %conv5 = sext i8 %6 to i32, !dbg !109
  switch i32 %conv5, label %sw.epilog [
    i32 79, label %sw.bb
    i32 68, label %sw.bb
    i32 82, label %sw.bb
    i32 66, label %sw.bb
    i32 76, label %sw.bb11
    i32 69, label %sw.bb11
    i32 73, label %sw.bb22
  ], !dbg !109

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  %nadj = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5, !dbg !110
  %7 = load i32* %nadj, align 4, !dbg !110, !tbaa !108
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i32 %7) #6, !dbg !110
  %8 = load i32* %nadj, align 4, !dbg !112, !tbaa !108
  %adj = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !112
  %9 = load i32** %adj, align 8, !dbg !112, !tbaa !103
  %call8 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %8, i32* %9, i32 13, i32* %ierr) #6, !dbg !112
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %fp), !dbg !113
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9, !dbg !114
  %11 = load %struct._IP** %subtrees, align 8, !dbg !114, !tbaa !103
  %call10 = call i32 @IP_fp80(%struct._IO_FILE* %fp, %struct._IP* %11, i32 13) #6, !dbg !114
  br label %sw.epilog, !dbg !115

sw.bb11:                                          ; preds = %if.end, %if.end
  %par = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 8, !dbg !116
  %12 = load %struct._MSMDvtx** %par, align 8, !dbg !116, !tbaa !103
  %cmp12 = icmp eq %struct._MSMDvtx* %12, null, !dbg !116
  br i1 %cmp12, label %cond.end, label %cond.false, !dbg !116

cond.false:                                       ; preds = %sw.bb11
  %id15 = getelementptr inbounds %struct._MSMDvtx* %12, i64 0, i32 0, !dbg !116
  %13 = load i32* %id15, align 4, !dbg !116, !tbaa !108
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %sw.bb11, %cond.false
  %cond = phi i32 [ %13, %cond.false ], [ -1, %sw.bb11 ], !dbg !116
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %cond) #6, !dbg !116
  %nadj17 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5, !dbg !117
  %14 = load i32* %nadj17, align 4, !dbg !117, !tbaa !108
  %bndwght = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 7, !dbg !117
  %15 = load i32* %bndwght, align 4, !dbg !117, !tbaa !108
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0), i32 %14, i32 %15) #6, !dbg !117
  %16 = load i32* %nadj17, align 4, !dbg !118, !tbaa !108
  %adj20 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !118
  %17 = load i32** %adj20, align 8, !dbg !118, !tbaa !103
  %call21 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %16, i32* %17, i32 10, i32* %ierr) #6, !dbg !118
  br label %sw.epilog, !dbg !119

sw.bb22:                                          ; preds = %if.end
  %par23 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 8, !dbg !120
  %18 = load %struct._MSMDvtx** %par23, align 8, !dbg !120, !tbaa !103
  %cmp24 = icmp eq %struct._MSMDvtx* %18, null, !dbg !120
  br i1 %cmp24, label %cond.end30, label %cond.false27, !dbg !120

cond.false27:                                     ; preds = %sw.bb22
  %id29 = getelementptr inbounds %struct._MSMDvtx* %18, i64 0, i32 0, !dbg !120
  %19 = load i32* %id29, align 4, !dbg !120, !tbaa !108
  br label %cond.end30, !dbg !120

cond.end30:                                       ; preds = %sw.bb22, %cond.false27
  %cond31 = phi i32 [ %19, %cond.false27 ], [ -1, %sw.bb22 ], !dbg !120
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %cond31) #6, !dbg !120
  br label %sw.epilog, !dbg !121

sw.epilog:                                        ; preds = %if.end, %cond.end30, %cond.end, %sw.bb
  ret void, !dbg !122
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: optsize
declare i32 @IP_fp80(%struct._IO_FILE*, %struct._IP*, i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDvtx.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDvtx.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMDvtx_print", metadata !"MSMDvtx_print", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMDvtx*, %struct._IO_FILE*)* @MSMDvtx_print, null, null, metadata !93, i32 17} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 17] [MSMDvtx_print]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDvtx.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !37}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMDvtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"MSMDvtx", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [MSMDvtx] [line 18, size 0, align 0, offset 0] [from _MSMDvtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_MSMDvtx", i32 180, i64 448, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMDvtx] [line 180, size 448, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../MSMD.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !23, metadata !24, metadata !27}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"id", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 181, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mark", i32 182, i64 8, i64 8, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [mark] [line 182, size 8, align 8, offset 32] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"status", i32 183, i64 8, i64 8, i64 40, i32 0, metadata !16} ; [ DW_TAG_member ] [status] [line 183, size 8, align 8, offset 40] [from char]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"stage", i32 184, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [stage] [line 184, size 32, align 32, offset 64] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wght", i32 185, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [wght] [line 185, size 32, align 32, offset 96] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nadj", i32 186, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nadj] [line 186, size 32, align 32, offset 128] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"adj", i32 187, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [adj] [line 187, size 64, align 64, offset 192] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"bndwght", i32 188, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [bndwght] [line 188, size 32, align 32, offset 256] [from int]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"par", i32 189, i64 64, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [par] [line 189, size 64, align 64, offset 320] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMDvtx]
!26 = metadata !{i32 786454, metadata !11, null, metadata !"MSMDvtx", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [MSMDvtx] [line 18, size 0, align 0, offset 0] [from _MSMDvtx]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"subtrees", i32 190, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [subtrees] [line 190, size 64, align 64, offset 384] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IP]
!29 = metadata !{i32 786454, metadata !11, null, metadata !"IP", i32 10, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [IP] [line 10, size 0, align 0, offset 0] [from _IP]
!30 = metadata !{i32 786451, metadata !31, null, metadata !"_IP", i32 11, i64 128, i64 64, i32 0, i32 0, null, metadata !32, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IP] [line 11, size 128, align 64, offset 0] [from ]
!31 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../Utilities/IP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!32 = metadata !{metadata !33, metadata !34}
!33 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"val", i32 12, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [val] [line 12, size 32, align 32, offset 0] [from int]
!34 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"next", i32 13, i64 64, i64 64, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [next] [line 13, size 64, align 64, offset 64] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IP]
!36 = metadata !{i32 786454, metadata !31, null, metadata !"IP", i32 10, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [IP] [line 10, size 0, align 0, offset 0] [from _IP]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!38 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!39 = metadata !{i32 786451, metadata !40, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !41, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!40 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!41 = metadata !{metadata !42, metadata !43, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !63, metadata !64, metadata !65, metadata !66, metadata !69, metadata !71, metadata !73, metadata !77, metadata !79, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !88, metadata !89}
!42 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!45 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!47 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!48 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!49 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!50 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!51 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!52 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!53 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!54 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !44} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!55 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !56} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!57 = metadata !{i32 786451, metadata !40, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !58, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !60, metadata !62}
!59 = metadata !{i32 786445, metadata !40, metadata !57, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786445, metadata !40, metadata !57, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!62 = metadata !{i32 786445, metadata !40, metadata !57, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!63 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !61} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!64 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!65 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!66 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !67} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!67 = metadata !{i32 786454, metadata !40, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!68 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!69 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !70} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!70 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!71 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !72} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!72 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!73 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !74} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!74 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !16, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!75 = metadata !{metadata !76}
!76 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!77 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !78} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!79 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !80} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!80 = metadata !{i32 786454, metadata !40, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!81 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !78} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!82 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !78} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!83 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !78} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!84 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !78} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!85 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !86} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!86 = metadata !{i32 786454, metadata !40, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!87 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!88 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!89 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !90} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!90 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !16, metadata !91, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!93 = metadata !{metadata !94, metadata !95, metadata !96}
!94 = metadata !{i32 786689, metadata !4, metadata !"v", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 15]
!95 = metadata !{i32 786689, metadata !4, metadata !"fp", metadata !5, i32 33554448, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 16]
!96 = metadata !{i32 786688, metadata !4, metadata !"ierr", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 18]
!97 = metadata !{i32 15, i32 0, metadata !4, null}
!98 = metadata !{i32 16, i32 0, metadata !4, null}
!99 = metadata !{i32 18, i32 0, metadata !4, null}
!100 = metadata !{i32 24, i32 0, metadata !4, null}
!101 = metadata !{i32 25, i32 0, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDvtx.c]
!103 = metadata !{metadata !"any pointer", metadata !104}
!104 = metadata !{metadata !"omnipotent char", metadata !105}
!105 = metadata !{metadata !"Simple C/C++ TBAA"}
!106 = metadata !{i32 27, i32 0, metadata !102, null}
!107 = metadata !{i32 29, i32 0, metadata !4, null}
!108 = metadata !{metadata !"int", metadata !104}
!109 = metadata !{i32 32, i32 0, metadata !4, null}
!110 = metadata !{i32 37, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !4, i32 32, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDvtx.c]
!112 = metadata !{i32 38, i32 0, metadata !111, null}
!113 = metadata !{i32 39, i32 0, metadata !111, null}
!114 = metadata !{i32 40, i32 0, metadata !111, null}
!115 = metadata !{i32 41, i32 0, metadata !111, null}
!116 = metadata !{i32 44, i32 0, metadata !111, null}
!117 = metadata !{i32 46, i32 0, metadata !111, null}
!118 = metadata !{i32 47, i32 0, metadata !111, null}
!119 = metadata !{i32 48, i32 0, metadata !111, null}
!120 = metadata !{i32 50, i32 0, metadata !111, null}
!121 = metadata !{i32 52, i32 0, metadata !111, null}
!122 = metadata !{i32 56, i32 0, metadata !4, null}
