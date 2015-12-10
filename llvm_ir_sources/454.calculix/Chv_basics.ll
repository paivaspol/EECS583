; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Chv_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in Chv_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"\0A fatal error in Chv_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Chv* @Chv_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 80) #6, !dbg !51
  %0 = bitcast i8* %call to %struct._Chv*, !dbg !51
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %0}, i64 0, metadata !39), !dbg !51
  %cmp = icmp eq i8* %call, null, !dbg !51
  br i1 %cmp, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !53, !tbaa !55
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 80, i32 21, i8* getelementptr inbounds ([75 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !53
  tail call void @exit(i32 -1) #7, !dbg !53
  unreachable, !dbg !53

if.end:                                           ; preds = %entry
  tail call void @Chv_setDefaultFields(%struct._Chv* %0) #8, !dbg !58
  ret %struct._Chv* %0, !dbg !59
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Chv_setDefaultFields(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !44), !dbg !60
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !61
  br i1 %cmp, label %if.then, label %if.end, !dbg !61

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !62, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._Chv* null) #6, !dbg !62
  tail call void @exit(i32 -1) #7, !dbg !64
  unreachable, !dbg !64

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !65
  store i32 -1, i32* %id, align 4, !dbg !65, !tbaa !66
  %nD = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !67
  store i32 0, i32* %nD, align 4, !dbg !67, !tbaa !66
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !68
  store i32 0, i32* %nL, align 4, !dbg !68, !tbaa !66
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !69
  store i32 0, i32* %nU, align 4, !dbg !69, !tbaa !66
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !70
  store i32 1, i32* %type, align 4, !dbg !70, !tbaa !66
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !71
  store i32 0, i32* %symflag, align 4, !dbg !71, !tbaa !66
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !72
  tail call void @DV_setDefaultFields(%struct._DV* %wrkDV) #6, !dbg !72
  %rowind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6, !dbg !73
  %next = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 10, !dbg !74
  store %struct._Chv* null, %struct._Chv** %next, align 8, !dbg !74, !tbaa !55
  %1 = bitcast i32** %rowind to i8*, !dbg !75
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false), !dbg !76
  ret void, !dbg !75
}

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_clearData(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !47), !dbg !77
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !78
  br i1 %cmp, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !79, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._Chv* null) #6, !dbg !79
  tail call void @exit(i32 -1) #7, !dbg !81
  unreachable, !dbg !81

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !82
  tail call void @DV_clearData(%struct._DV* %wrkDV) #6, !dbg !82
  tail call void @Chv_setDefaultFields(%struct._Chv* %chv) #8, !dbg !83
  ret void, !dbg !84
}

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_free(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !50), !dbg !85
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !86
  br i1 %cmp, label %if.then, label %if.end, !dbg !86

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !87, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str4, i64 0, i64 0), %struct._Chv* null) #6, !dbg !87
  tail call void @exit(i32 -1) #7, !dbg !89
  unreachable, !dbg !89

if.end:                                           ; preds = %entry
  tail call void @Chv_clearData(%struct._Chv* %chv) #8, !dbg !90
  %1 = bitcast %struct._Chv* %chv to i8*, !dbg !91
  tail call void @free(i8* %1) #6, !dbg !91
  tail call void @llvm.dbg.value(metadata !93, i64 0, metadata !50), !dbg !91
  ret void, !dbg !94
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !40, metadata !45, metadata !48}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_new", metadata !"Chv_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Chv* ()* @Chv_new, null, null, metadata !38, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [Chv_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !11, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786688, metadata !4, metadata !"chv", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chv] [line 19]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_setDefaultFields", metadata !"Chv_setDefaultFields", metadata !"", i32 35, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*)* @Chv_setDefaultFields, null, null, metadata !43, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [Chv_setDefaultFields]
!41 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null, metadata !8}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786689, metadata !40, metadata !"chv", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 36]
!45 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_clearData", metadata !"Chv_clearData", metadata !"", i32 66, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*)* @Chv_clearData, null, null, metadata !46, i32 68} ; [ DW_TAG_subprogram ] [line 66] [def] [scope 68] [Chv_clearData]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786689, metadata !45, metadata !"chv", metadata !5, i32 16777283, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 67]
!48 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_free", metadata !"Chv_free", metadata !"", i32 103, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*)* @Chv_free, null, null, metadata !49, i32 105} ; [ DW_TAG_subprogram ] [line 103] [def] [scope 105] [Chv_free]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786689, metadata !48, metadata !"chv", metadata !5, i32 16777320, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 104]
!51 = metadata !{i32 21, i32 0, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c]
!53 = metadata !{i32 21, i32 0, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !52, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c]
!55 = metadata !{metadata !"any pointer", metadata !56}
!56 = metadata !{metadata !"omnipotent char", metadata !57}
!57 = metadata !{metadata !"Simple C/C++ TBAA"}
!58 = metadata !{i32 22, i32 0, metadata !4, null}
!59 = metadata !{i32 24, i32 0, metadata !4, null}
!60 = metadata !{i32 36, i32 0, metadata !40, null}
!61 = metadata !{i32 38, i32 0, metadata !40, null}
!62 = metadata !{i32 39, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !40, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c]
!64 = metadata !{i32 41, i32 0, metadata !63, null}
!65 = metadata !{i32 43, i32 0, metadata !40, null}
!66 = metadata !{metadata !"int", metadata !56}
!67 = metadata !{i32 44, i32 0, metadata !40, null}
!68 = metadata !{i32 45, i32 0, metadata !40, null}
!69 = metadata !{i32 46, i32 0, metadata !40, null}
!70 = metadata !{i32 47, i32 0, metadata !40, null}
!71 = metadata !{i32 48, i32 0, metadata !40, null}
!72 = metadata !{i32 49, i32 0, metadata !40, null}
!73 = metadata !{i32 50, i32 0, metadata !40, null}
!74 = metadata !{i32 53, i32 0, metadata !40, null}
!75 = metadata !{i32 55, i32 0, metadata !40, null}
!76 = metadata !{i32 51, i32 0, metadata !40, null}
!77 = metadata !{i32 67, i32 0, metadata !45, null}
!78 = metadata !{i32 74, i32 0, metadata !45, null}
!79 = metadata !{i32 75, i32 0, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !45, i32 74, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c]
!81 = metadata !{i32 77, i32 0, metadata !80, null}
!82 = metadata !{i32 84, i32 0, metadata !45, null}
!83 = metadata !{i32 90, i32 0, metadata !45, null}
!84 = metadata !{i32 92, i32 0, metadata !45, null}
!85 = metadata !{i32 104, i32 0, metadata !48, null}
!86 = metadata !{i32 106, i32 0, metadata !48, null}
!87 = metadata !{i32 107, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !48, i32 106, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c]
!89 = metadata !{i32 109, i32 0, metadata !88, null}
!90 = metadata !{i32 111, i32 0, metadata !48, null}
!91 = metadata !{i32 112, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !48, i32 112, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c]
!93 = metadata !{%struct._Chv* null}
!94 = metadata !{i32 114, i32 0, metadata !48, null}
