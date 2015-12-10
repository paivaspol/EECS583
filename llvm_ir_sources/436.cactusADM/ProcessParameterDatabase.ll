; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"CCTKi_SetParameterSetMask: %d parsing errors in parameter file\00", align 1
@.str5 = private unnamed_addr constant [63 x i8] c"CCTKi_SetParameterSetMask: %d level 1 errors in parameter file\00", align 1
@.str6 = private unnamed_addr constant [63 x i8] c"CCTKi_SetParameterSetMask: %d level 0 errors in parameter file\00", align 1
@stderr = external global %struct._IO_FILE*
@.str7 = private unnamed_addr constant [36 x i8] c"Unable to open parameter file '%s'\0A\00", align 1
@.str8 = private unnamed_addr constant [100 x i8] c"$Header: /cactus/Cactus/src/main/ProcessParameterDatabase.c,v 1.20 2002/01/02 12:24:41 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_ProcessParameterDatabase_c() #0 {
entry:
  ret i8* getelementptr inbounds ([100 x i8]* @.str8, i64 0, i64 0), !dbg !123
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_ProcessParameterDatabase(%struct.tFleshConfig* %ConfigData) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %ConfigData}, i64 0, metadata !64), !dbg !124
  tail call void @CCTKi_SetParameterSetMask(i32 0) #6, !dbg !125
  %parameter_file_name = getelementptr inbounds %struct.tFleshConfig* %ConfigData, i64 0, i32 0, !dbg !126
  %0 = load i8** %parameter_file_name, align 8, !dbg !126, !tbaa !127
  %call = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !126
  %tobool = icmp eq i32 %call, 0, !dbg !126
  br i1 %tobool, label %if.then, label %if.else, !dbg !126

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stdin, align 8, !dbg !130, !tbaa !127
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %1}, i64 0, metadata !66), !dbg !130
  br label %if.end, !dbg !132

if.else:                                          ; preds = %entry
  %call2 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !133
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call2}, i64 0, metadata !66), !dbg !133
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %parameter_file.0 = phi %struct._IO_FILE* [ %call2, %if.else ], [ %1, %if.then ]
  %tobool3 = icmp ne %struct._IO_FILE* %parameter_file.0, null, !dbg !135
  br i1 %tobool3, label %if.then4, label %if.else28, !dbg !135

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @ParseFile(%struct._IO_FILE* %parameter_file.0, i32 (i8*, i8*, i32)* @CCTKi_SetParameter, %struct.tFleshConfig* %ConfigData) #6, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !65), !dbg !136
  %2 = load i8** %parameter_file_name, align 8, !dbg !138, !tbaa !127
  %call7 = tail call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !138
  %tobool8 = icmp eq i32 %call7, 0, !dbg !138
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !138

if.then9:                                         ; preds = %if.then4
  %call10 = tail call i32 @fclose(%struct._IO_FILE* %parameter_file.0) #6, !dbg !139
  br label %if.end11, !dbg !141

if.end11:                                         ; preds = %if.then4, %if.then9
  %tobool12 = icmp eq i32 %call5, 0, !dbg !142
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !142

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 91, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 %call5) #6, !dbg !143
  br label %if.end15, !dbg !145

if.end15:                                         ; preds = %if.end11, %if.then13
  %call16 = tail call i32 @CCTKi_NumParameterFileErrors(i32 1) #6, !dbg !146
  %tobool17 = icmp eq i32 %call16, 0, !dbg !146
  br i1 %tobool17, label %if.end21, label %if.then18, !dbg !146

if.then18:                                        ; preds = %if.end15
  %call19 = tail call i32 @CCTKi_NumParameterFileErrors(i32 1) #6, !dbg !147
  %call20 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 98, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str5, i64 0, i64 0), i32 %call19) #6, !dbg !147
  br label %if.end21, !dbg !149

if.end21:                                         ; preds = %if.end15, %if.then18
  %call22 = tail call i32 @CCTKi_NumParameterFileErrors(i32 0) #6, !dbg !150
  %tobool23 = icmp eq i32 %call22, 0, !dbg !150
  br i1 %tobool23, label %if.end31, label %if.then24, !dbg !150

if.then24:                                        ; preds = %if.end21
  %call25 = tail call i32 @CCTKi_NumParameterFileErrors(i32 0) #6, !dbg !151
  %call26 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 105, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str6, i64 0, i64 0), i32 %call25) #6, !dbg !151
  br label %if.end31, !dbg !153

if.else28:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !154, !tbaa !127
  %4 = load i8** %parameter_file_name, align 8, !dbg !154, !tbaa !127
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), i8* %4) #6, !dbg !154
  br label %if.end31

if.end31:                                         ; preds = %if.end21, %if.then24, %if.else28
  %not.tobool3 = xor i1 %tobool3, true, !dbg !156
  %cond = sext i1 %not.tobool3 to i32, !dbg !156
  ret i32 %cond, !dbg !156
}

; Function Attrs: optsize
declare void @CCTKi_SetParameterSetMask(i32) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @ParseFile(%struct._IO_FILE*, i32 (i8*, i8*, i32)*, %struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CCTKi_SetParameter(i8*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTKi_NumParameterFileErrors(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !121, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_ProcessParameterDatabase_c", metadata !"CCTKi_version_main_ProcessParameterDatabase_c", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_ProcessParameterDatabase_c, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [CCTKi_version_main_ProcessParameterDatabase_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ProcessParameterDatabase", metadata !"CCTKi_ProcessParameterDatabase", metadata !"", i32 63, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.tFleshConfig*)* @CCTKi_ProcessParameterDatabase, null, null, metadata !63, i32 64} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 64] [CCTKi_ProcessParameterDatabase]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !22, metadata !61}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!25 = metadata !{i32 786454, metadata !18, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !41, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !53, metadata !54}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!36 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!38 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!40 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!43 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!44 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!45 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!46 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!47 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!48 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!49 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !50} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !51} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!54 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !55} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!56 = metadata !{i32 786454, metadata !27, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!57 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !58, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !60}
!59 = metadata !{i32 786445, metadata !27, metadata !57, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!60 = metadata !{i32 786445, metadata !27, metadata !57, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!61 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!62 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!63 = metadata !{metadata !64, metadata !65, metadata !66}
!64 = metadata !{i32 786689, metadata !11, metadata !"ConfigData", metadata !5, i32 16777279, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ConfigData] [line 63]
!65 = metadata !{i32 786688, metadata !11, metadata !"parse_errors", metadata !5, i32 65, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parse_errors] [line 65]
!66 = metadata !{i32 786688, metadata !11, metadata !"parameter_file", metadata !5, i32 66, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parameter_file] [line 66]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!68 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!69 = metadata !{i32 786451, metadata !70, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !71, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!70 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !92, metadata !93, metadata !94, metadata !95, metadata !98, metadata !100, metadata !102, metadata !106, metadata !107, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !116, metadata !117}
!72 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!73 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!74 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!75 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!76 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!77 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!78 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!79 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!80 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!81 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!82 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!83 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!84 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !85} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!86 = metadata !{i32 786451, metadata !70, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !87, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!87 = metadata !{metadata !88, metadata !89, metadata !91}
!88 = metadata !{i32 786445, metadata !70, metadata !86, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!89 = metadata !{i32 786445, metadata !70, metadata !86, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !90} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!91 = metadata !{i32 786445, metadata !70, metadata !86, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!92 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !90} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!93 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!94 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!95 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !96} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!96 = metadata !{i32 786454, metadata !70, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!97 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!98 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !99} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!99 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!100 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !101} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!101 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!102 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !103} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!103 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !10, metadata !104, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!106 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !52} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!107 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !108} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!108 = metadata !{i32 786454, metadata !70, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!109 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !52} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!110 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !52} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!111 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !52} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!112 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !52} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!113 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !114} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!114 = metadata !{i32 786454, metadata !70, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!115 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!116 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!117 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !118} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!118 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !10, metadata !119, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 23, metadata !8, i32 1, i32 1, null, null}
!123 = metadata !{i32 25, i32 0, metadata !4, null}
!124 = metadata !{i32 63, i32 0, metadata !11, null}
!125 = metadata !{i32 69, i32 0, metadata !11, null}
!126 = metadata !{i32 71, i32 0, metadata !11, null}
!127 = metadata !{metadata !"any pointer", metadata !128}
!128 = metadata !{metadata !"omnipotent char", metadata !129}
!129 = metadata !{metadata !"Simple C/C++ TBAA"}
!130 = metadata !{i32 73, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !11, i32 72, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c]
!132 = metadata !{i32 74, i32 0, metadata !131, null}
!133 = metadata !{i32 77, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !11, i32 76, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c]
!135 = metadata !{i32 80, i32 0, metadata !11, null}
!136 = metadata !{i32 82, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !11, i32 81, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c]
!138 = metadata !{i32 84, i32 0, metadata !137, null}
!139 = metadata !{i32 86, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !137, i32 85, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c]
!141 = metadata !{i32 87, i32 0, metadata !140, null}
!142 = metadata !{i32 89, i32 0, metadata !137, null}
!143 = metadata !{i32 91, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !137, i32 90, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c]
!145 = metadata !{i32 94, i32 0, metadata !144, null}
!146 = metadata !{i32 96, i32 0, metadata !137, null}
!147 = metadata !{i32 100, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !137, i32 97, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c]
!149 = metadata !{i32 101, i32 0, metadata !148, null}
!150 = metadata !{i32 103, i32 0, metadata !137, null}
!151 = metadata !{i32 107, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !137, i32 104, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c]
!153 = metadata !{i32 108, i32 0, metadata !152, null}
!154 = metadata !{i32 112, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !11, i32 111, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c]
!156 = metadata !{i32 116, i32 0, metadata !11, null}
