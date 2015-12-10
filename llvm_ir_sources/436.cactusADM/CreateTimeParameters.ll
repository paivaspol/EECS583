; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateTimeParameters.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }
%struct.anon.0 = type { double, double, double, i32 }

@.str = private unnamed_addr constant [16 x i8] c"timestep_method\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@.str4 = private unnamed_addr constant [32 x i8] c"Method for calculating timestep\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"courant_static\00", align 1
@timerest_ = external global %struct.anon
@.str6 = private unnamed_addr constant [6 x i8] c"given\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"Use given timestep\00", align 1
@.str8 = private unnamed_addr constant [30 x i8] c"Courant condition at BASEGRID\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"courant_speed\00", align 1
@.str10 = private unnamed_addr constant [47 x i8] c"Courant condition at PRESTEP (using wavespeed)\00", align 1
@.str11 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1
@.str12 = private unnamed_addr constant [46 x i8] c"Courant condition at PRESTEP (using min time)\00", align 1
@.str13 = private unnamed_addr constant [17 x i8] c"timestep_outonly\00", align 1
@.str14 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str15 = private unnamed_addr constant [59 x i8] c"Don't set a dynamic timestep, just output what it would be\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str17 = private unnamed_addr constant [12 x i8] c"courant_fac\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str19 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str20 = private unnamed_addr constant [81 x i8] c"The courant timestep condition dt = courant_fac*max(delta_space)/speed/sqrt(dim)\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"0.9\00", align 1
@timepriv_ = external global %struct.anon.0
@.str22 = private unnamed_addr constant [4 x i8] c"0:*\00", align 1
@.str23 = private unnamed_addr constant [22 x i8] c"For positive timestep\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"*:0\00", align 1
@.str25 = private unnamed_addr constant [22 x i8] c"For negative timestep\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"dtfac\00", align 1
@.str27 = private unnamed_addr constant [60 x i8] c"The standard timestep condition dt = dtfac*max(delta_space)\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"0.5 \00", align 1
@.str29 = private unnamed_addr constant [18 x i8] c"outtimestep_every\00", align 1
@.str30 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str31 = private unnamed_addr constant [37 x i8] c"How often to output courant timestep\00", align 1
@.str32 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str33 = private unnamed_addr constant [21 x i8] c"Zero means no output\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c"timestep\00", align 1
@.str35 = private unnamed_addr constant [28 x i8] c"Absolute value for timestep\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"*:*\00", align 1
@.str38 = private unnamed_addr constant [18 x i8] c"Could be anything\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsCreateTimeParameters() #0 {
entry:
  %call = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([32 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* bitcast (%struct.anon* @timerest_ to i8*), i32 4, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !10
  %call1 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([17 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([59 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 1) to i8*), i32 0) #3, !dbg !11
  %call2 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([12 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([81 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i8* bitcast (%struct.anon.0* @timepriv_ to i8*), i32 2, i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0)) #3, !dbg !12
  %call3 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([6 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([60 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 1) to i8*), i32 2, i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0)) #3, !dbg !13
  %call4 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([18 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([37 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str32, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 3) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str33, i64 0, i64 0)) #3, !dbg !14
  %call5 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([9 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([28 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 2) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !15
  ret i32 0, !dbg !16
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterCreate(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CCTKi_BindingsTimeParameterExtensions() #2 {
entry:
  ret i32 0, !dbg !17
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateTimeParameters.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateTimeParameters.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsCreateTimeParameters", metadata !"CCTKi_BindingsCreateTimeParameters", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsCreateTimeParameters, null, null, metadata !2, i32 16} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 16] [CCTKi_BindingsCreateTimeParameters]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateTimeParameters.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsTimeParameterExtensions", metadata !"CCTKi_BindingsTimeParameterExtensions", metadata !"", i32 92, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsTimeParameterExtensions, null, null, metadata !2, i32 93} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 93] [CCTKi_BindingsTimeParameterExtensions]
!10 = metadata !{i32 17, i32 0, metadata !4, null}
!11 = metadata !{i32 31, i32 0, metadata !4, null}
!12 = metadata !{i32 41, i32 0, metadata !4, null}
!13 = metadata !{i32 53, i32 0, metadata !4, null}
!14 = metadata !{i32 65, i32 0, metadata !4, null}
!15 = metadata !{i32 76, i32 0, metadata !4, null}
!16 = metadata !{i32 87, i32 0, metadata !4, null}
!17 = metadata !{i32 94, i32 0, metadata !9, null}
