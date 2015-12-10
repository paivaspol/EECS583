; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [79 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Drand_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in Drand_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in Drand_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Drand* @Drand_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 72) #4, !dbg !39
  %0 = bitcast i8* %call to %struct._Drand*, !dbg !39
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %0}, i64 0, metadata !25), !dbg !39
  %cmp = icmp eq i8* %call, null, !dbg !39
  br i1 %cmp, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !41, !tbaa !43
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 72, i32 21, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !41
  tail call void @exit(i32 -1) #5, !dbg !41
  unreachable, !dbg !41

if.end:                                           ; preds = %entry
  tail call void @Drand_setDefaultFields(%struct._Drand* %0) #6, !dbg !46
  ret %struct._Drand* %0, !dbg !47
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Drand_setDefaultFields(%struct._Drand* %drand) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !30), !dbg !48
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !49
  br i1 %cmp, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !50, !tbaa !43
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), %struct._Drand* null) #4, !dbg !50
  tail call void @exit(i32 -1) #5, !dbg !52
  unreachable, !dbg !52

if.end:                                           ; preds = %entry
  %seed1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0, !dbg !53
  store double 0x419D6F3454000000, double* %seed1, align 8, !dbg !53, !tbaa !54
  %seed2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1, !dbg !55
  store double 0x41CD6F3458800000, double* %seed2, align 8, !dbg !55, !tbaa !54
  %base1 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2, !dbg !56
  store double 0x41DFFFFFEAC00000, double* %base1, align 8, !dbg !56, !tbaa !54
  %base2 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3, !dbg !57
  store double 0x41DFFFFFC1C00000, double* %base2, align 8, !dbg !57, !tbaa !54
  %lower = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 4, !dbg !58
  store double 0.000000e+00, double* %lower, align 8, !dbg !58, !tbaa !54
  %upper = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 5, !dbg !59
  store double 1.000000e+00, double* %upper, align 8, !dbg !59, !tbaa !54
  %mean = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 6, !dbg !60
  store double 0.000000e+00, double* %mean, align 8, !dbg !60, !tbaa !54
  %sigma = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 7, !dbg !61
  store double 1.000000e+00, double* %sigma, align 8, !dbg !61, !tbaa !54
  %mode = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8, !dbg !62
  store i32 1, i32* %mode, align 4, !dbg !62, !tbaa !63
  ret void, !dbg !64
}

; Function Attrs: nounwind optsize uwtable
define void @Drand_clearData(%struct._Drand* %drand) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !33), !dbg !65
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !66
  br i1 %cmp, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !67, !tbaa !43
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._Drand* null) #4, !dbg !67
  tail call void @exit(i32 -1) #5, !dbg !69
  unreachable, !dbg !69

if.end:                                           ; preds = %entry
  tail call void @Drand_setDefaultFields(%struct._Drand* %drand) #6, !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct._Drand* @Drand_free(%struct._Drand* %drand) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Drand* %drand}, i64 0, metadata !38), !dbg !72
  %cmp = icmp eq %struct._Drand* %drand, null, !dbg !73
  br i1 %cmp, label %if.then, label %if.end, !dbg !73

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !74, !tbaa !43
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), %struct._Drand* null) #4, !dbg !74
  tail call void @exit(i32 -1) #5, !dbg !76
  unreachable, !dbg !76

if.end:                                           ; preds = %entry
  tail call void @Drand_clearData(%struct._Drand* %drand) #6, !dbg !77
  %1 = bitcast %struct._Drand* %drand to i8*, !dbg !78
  tail call void @free(i8* %1) #4, !dbg !78
  tail call void @llvm.dbg.value(metadata !80, i64 0, metadata !38), !dbg !78
  ret %struct._Drand* null, !dbg !81
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !26, metadata !31, metadata !34}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_new", metadata !"Drand_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Drand* ()* @Drand_new, null, null, metadata !24, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [Drand_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Drand]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Drand", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Drand] [line 27, size 0, align 0, offset 0] [from _Drand]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Drand", i32 17, i64 576, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Drand] [line 17, size 576, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/../Drand.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"seed1", i32 18, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [seed1] [line 18, size 64, align 64, offset 0] [from double]
!14 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"seed2", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [seed2] [line 19, size 64, align 64, offset 64] [from double]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"base1", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [base1] [line 20, size 64, align 64, offset 128] [from double]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"base2", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [base2] [line 21, size 64, align 64, offset 192] [from double]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lower", i32 22, i64 64, i64 64, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [lower] [line 22, size 64, align 64, offset 256] [from double]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"upper", i32 23, i64 64, i64 64, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [upper] [line 23, size 64, align 64, offset 320] [from double]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mean", i32 24, i64 64, i64 64, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [mean] [line 24, size 64, align 64, offset 384] [from double]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sigma", i32 25, i64 64, i64 64, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [sigma] [line 25, size 64, align 64, offset 448] [from double]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 26, i64 32, i64 32, i64 512, i32 0, metadata !23} ; [ DW_TAG_member ] [mode] [line 26, size 32, align 32, offset 512] [from int]
!23 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786688, metadata !4, metadata !"drand", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [drand] [line 19]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_setDefaultFields", metadata !"Drand_setDefaultFields", metadata !"", i32 35, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Drand*)* @Drand_setDefaultFields, null, null, metadata !29, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [Drand_setDefaultFields]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null, metadata !8}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786689, metadata !26, metadata !"drand", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 36]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_clearData", metadata !"Drand_clearData", metadata !"", i32 64, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Drand*)* @Drand_clearData, null, null, metadata !32, i32 66} ; [ DW_TAG_subprogram ] [line 64] [def] [scope 66] [Drand_clearData]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786689, metadata !31, metadata !"drand", metadata !5, i32 16777281, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 65]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Drand_free", metadata !"Drand_free", metadata !"", i32 95, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Drand* (%struct._Drand*)* @Drand_free, null, null, metadata !37, i32 97} ; [ DW_TAG_subprogram ] [line 95] [def] [scope 97] [Drand_free]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !8, metadata !8}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786689, metadata !34, metadata !"drand", metadata !5, i32 16777312, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [drand] [line 96]
!39 = metadata !{i32 21, i32 0, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c]
!41 = metadata !{i32 21, i32 0, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !40, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c]
!43 = metadata !{metadata !"any pointer", metadata !44}
!44 = metadata !{metadata !"omnipotent char", metadata !45}
!45 = metadata !{metadata !"Simple C/C++ TBAA"}
!46 = metadata !{i32 22, i32 0, metadata !4, null}
!47 = metadata !{i32 24, i32 0, metadata !4, null}
!48 = metadata !{i32 36, i32 0, metadata !26, null}
!49 = metadata !{i32 38, i32 0, metadata !26, null}
!50 = metadata !{i32 39, i32 0, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !26, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c]
!52 = metadata !{i32 41, i32 0, metadata !51, null}
!53 = metadata !{i32 43, i32 0, metadata !26, null}
!54 = metadata !{metadata !"double", metadata !44}
!55 = metadata !{i32 44, i32 0, metadata !26, null}
!56 = metadata !{i32 45, i32 0, metadata !26, null}
!57 = metadata !{i32 46, i32 0, metadata !26, null}
!58 = metadata !{i32 47, i32 0, metadata !26, null}
!59 = metadata !{i32 48, i32 0, metadata !26, null}
!60 = metadata !{i32 49, i32 0, metadata !26, null}
!61 = metadata !{i32 50, i32 0, metadata !26, null}
!62 = metadata !{i32 51, i32 0, metadata !26, null}
!63 = metadata !{metadata !"int", metadata !44}
!64 = metadata !{i32 53, i32 0, metadata !26, null}
!65 = metadata !{i32 65, i32 0, metadata !31, null}
!66 = metadata !{i32 72, i32 0, metadata !31, null}
!67 = metadata !{i32 73, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !31, i32 72, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c]
!69 = metadata !{i32 75, i32 0, metadata !68, null}
!70 = metadata !{i32 82, i32 0, metadata !31, null}
!71 = metadata !{i32 84, i32 0, metadata !31, null}
!72 = metadata !{i32 96, i32 0, metadata !34, null}
!73 = metadata !{i32 98, i32 0, metadata !34, null}
!74 = metadata !{i32 99, i32 0, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !34, i32 98, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c]
!76 = metadata !{i32 101, i32 0, metadata !75, null}
!77 = metadata !{i32 103, i32 0, metadata !34, null}
!78 = metadata !{i32 104, i32 0, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !34, i32 104, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c]
!80 = metadata !{%struct._Drand* null}
!81 = metadata !{i32 106, i32 0, metadata !34, null}
