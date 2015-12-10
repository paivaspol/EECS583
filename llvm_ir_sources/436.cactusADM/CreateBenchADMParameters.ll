; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateBenchADMParameters.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8* }
%struct.anon.0 = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@.str4 = private unnamed_addr constant [32 x i8] c"Numerical method to use for ADM\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"stagleap\00", align 1
@benchadmrest_ = external global %struct.anon
@.str6 = private unnamed_addr constant [32 x i8] c"Evolve using Staggered Leapfrog\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"bound\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str9 = private unnamed_addr constant [32 x i8] c"Boundary condition to implement\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@benchadmpriv_ = external global %struct.anon.0
@.str11 = private unnamed_addr constant [22 x i8] c"No boundary condition\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"time_symmetric\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str14 = private unnamed_addr constant [51 x i8] c"How to get the initial data for staggered leapfrog\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"EINSTEIN\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"evolution_system\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"ADM\00", align 1
@.str19 = private unnamed_addr constant [34 x i8] c"Evolve using ADM evolution scheme\00", align 1
@.str20 = private unnamed_addr constant [8 x i8] c"slicing\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"geodesic\00", align 1
@.str22 = private unnamed_addr constant [22 x i8] c"Lapse is set to unity\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsCreateBenchADMParameters() #0 {
entry:
  %call = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([32 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* bitcast (%struct.anon* @benchadmrest_ to i8*), i32 1, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0)) #2, !dbg !10
  %call1 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([32 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* bitcast (%struct.anon.0* @benchadmpriv_ to i8*), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0)) #2, !dbg !11
  %call2 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([51 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @benchadmpriv_, i64 0, i32 1) to i8*), i32 0) #2, !dbg !12
  ret i32 0, !dbg !13
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterCreate(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsBenchADMParameterExtensions() #0 {
entry:
  %call = tail call i32 @CCTKi_ParameterAddRange(i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str19, i64 0, i64 0)) #2, !dbg !14
  %call1 = tail call i32 @CCTKi_ParameterAddRange(i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str22, i64 0, i64 0)) #2, !dbg !15
  ret i32 0, !dbg !16
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterAddRange(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateBenchADMParameters.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateBenchADMParameters.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsCreateBenchADMParameters", metadata !"CCTKi_BindingsCreateBenchADMParameters", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsCreateBenchADMParameters, null, null, metadata !2, i32 18} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 18] [CCTKi_BindingsCreateBenchADMParameters]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateBenchADMParameters.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsBenchADMParameterExtensions", metadata !"CCTKi_BindingsBenchADMParameterExtensions", metadata !"", i32 56, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsBenchADMParameterExtensions, null, null, metadata !2, i32 57} ; [ DW_TAG_subprogram ] [line 56] [def] [scope 57] [CCTKi_BindingsBenchADMParameterExtensions]
!10 = metadata !{i32 19, i32 0, metadata !4, null}
!11 = metadata !{i32 30, i32 0, metadata !4, null}
!12 = metadata !{i32 41, i32 0, metadata !4, null}
!13 = metadata !{i32 51, i32 0, metadata !4, null}
!14 = metadata !{i32 58, i32 0, metadata !9, null} ; [ DW_TAG_imported_module ]
!15 = metadata !{i32 64, i32 0, metadata !9, null}
!16 = metadata !{i32 70, i32 0, metadata !9, null}
