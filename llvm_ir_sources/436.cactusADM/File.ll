; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str2 = private unnamed_addr constant [80 x i8] c"$Header: /cactus/Cactus/src/util/File.c,v 1.27 2002/01/18 16:29:01 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_File_c() #0 {
entry:
  ret i8* getelementptr inbounds ([80 x i8]* @.str2, i64 0, i64 0), !dbg !76
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CreateDirectory(i32 %mode, i8* %pathname) #1 {
entry:
  %path = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !16), !dbg !77
  call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !17), !dbg !77
  call void @llvm.dbg.declare(metadata !{i8** %path}, metadata !19), !dbg !78
  %0 = bitcast %struct.stat* %statbuf to i8*, !dbg !79
  call void @llvm.lifetime.start(i64 144, i8* %0) #3, !dbg !79
  call void @llvm.dbg.declare(metadata !{%struct.stat* %statbuf}, metadata !23), !dbg !79
  %call = call i64 @strlen(i8* %pathname) #8, !dbg !80
  %add = add i64 %call, 1, !dbg !80
  %call2 = call noalias i8* @malloc(i64 %add) #9, !dbg !80
  call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !20), !dbg !80
  %tobool = icmp eq i8* %call2, null, !dbg !81
  br i1 %tobool, label %if.end63, label %if.then, !dbg !81

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !82
  store i8 0, i8* %call2, align 1, !dbg !84, !tbaa !85
  call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !19), !dbg !87
  store i8* %pathname, i8** %path, align 8, !dbg !87, !tbaa !88
  %st_mode = getelementptr inbounds %struct.stat* %statbuf, i64 0, i32 3, !dbg !89
  br label %while.cond, !dbg !91

while.cond:                                       ; preds = %if.end27, %if.then
  %retval1.0 = phi i32 [ 0, %if.then ], [ %retval1.1, %if.end27 ]
  %call3 = call i8* @Util_StrSep(i8** %path, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !91
  call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !22), !dbg !91
  %tobool4 = icmp eq i8* %call3, null, !dbg !91
  br i1 %tobool4, label %while.end, label %while.body, !dbg !91

while.body:                                       ; preds = %while.cond
  %1 = load i8* %call2, align 1, !dbg !92, !tbaa !85
  %tobool5 = icmp eq i8 %1, 0, !dbg !92
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !92

if.then6:                                         ; preds = %while.body
  %call7 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call2, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i8* %call2, i8* %call3) #9, !dbg !93
  br label %if.end, !dbg !95

if.else:                                          ; preds = %while.body
  %2 = load i8* %call3, align 1, !dbg !96, !tbaa !85
  %tobool8 = icmp ne i8 %2, 0, !dbg !96
  %cond = select i1 %tobool8, i8* %call3, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), !dbg !96
  %call9 = call i8* @strcpy(i8* %call2, i8* %cond) #9, !dbg !96
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %call10 = call i32 @stat(i8* %call2, %struct.stat* %statbuf) #9, !dbg !98
  %tobool11 = icmp eq i32 %call10, 0, !dbg !98
  br i1 %tobool11, label %if.else21, label %if.then12, !dbg !98

if.then12:                                        ; preds = %if.end
  %call13 = call i32 @mkdir(i8* %call2, i32 %mode) #9, !dbg !99
  %cmp = icmp eq i32 %call13, -1, !dbg !99
  br i1 %cmp, label %if.then15, label %if.end27, !dbg !99

if.then15:                                        ; preds = %if.then12
  %call16 = call i32* @__errno_location() #10, !dbg !101
  %3 = load i32* %call16, align 4, !dbg !101, !tbaa !103
  %cmp17 = icmp eq i32 %3, 17, !dbg !101
  %cond19 = select i1 %cmp17, i32 1, i32 -2, !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %cond19}, i64 0, metadata !18), !dbg !101
  br label %if.end27, !dbg !104

if.else21:                                        ; preds = %if.end
  %4 = load i32* %st_mode, align 8, !dbg !89, !tbaa !103
  %and = and i32 %4, 61440, !dbg !89
  %cmp22 = icmp eq i32 %and, 16384, !dbg !89
  %. = select i1 %cmp22, i32 1, i32 -3
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %if.then12, %if.then15
  %retval1.1 = phi i32 [ %cond19, %if.then15 ], [ %retval1.0, %if.then12 ], [ %., %if.else21 ]
  %cmp28 = icmp slt i32 %retval1.1, 0, !dbg !105
  br i1 %cmp28, label %if.end61, label %while.cond, !dbg !105

while.end:                                        ; preds = %while.cond
  %cmp32 = icmp sgt i32 %retval1.0, -1, !dbg !106
  br i1 %cmp32, label %if.then34, label %if.end61, !dbg !106

if.then34:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata !{i8** %path}, i64 0, metadata !19), !dbg !107
  %5 = load i8** %path, align 8, !dbg !107, !tbaa !88
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !107
  %sub.ptr.rhs.cast = ptrtoint i8* %pathname to i64, !dbg !107
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !107
  %call35 = call i64 @strlen(i8* %pathname) #8, !dbg !107
  %cmp36 = icmp ult i64 %sub.ptr.sub, %call35, !dbg !107
  br i1 %cmp36, label %if.then38, label %if.end61, !dbg !107

if.then38:                                        ; preds = %if.then34
  %call39 = call i32 @stat(i8* %pathname, %struct.stat* %statbuf) #9, !dbg !109
  %tobool40 = icmp eq i32 %call39, 0, !dbg !109
  br i1 %tobool40, label %if.else51, label %if.then41, !dbg !109

if.then41:                                        ; preds = %if.then38
  %call42 = call i32 @mkdir(i8* %pathname, i32 %mode) #9, !dbg !111
  %cmp43 = icmp eq i32 %call42, -1, !dbg !111
  br i1 %cmp43, label %if.then45, label %if.end61, !dbg !111

if.then45:                                        ; preds = %if.then41
  %call46 = call i32* @__errno_location() #10, !dbg !113
  %6 = load i32* %call46, align 4, !dbg !113, !tbaa !103
  %cmp47 = icmp eq i32 %6, 17, !dbg !113
  %cond49 = select i1 %cmp47, i32 1, i32 -2, !dbg !113
  call void @llvm.dbg.value(metadata !{i32 %cond49}, i64 0, metadata !18), !dbg !113
  br label %if.end61, !dbg !115

if.else51:                                        ; preds = %if.then38
  %7 = load i32* %st_mode, align 8, !dbg !116, !tbaa !103
  %and53 = and i32 %7, 61440, !dbg !116
  %cmp54 = icmp eq i32 %and53, 16384, !dbg !116
  %.81 = select i1 %cmp54, i32 1, i32 -3
  br label %if.end61

if.end61:                                         ; preds = %if.end27, %if.else51, %if.then34, %if.then41, %if.then45, %while.end
  %retval1.3 = phi i32 [ %cond49, %if.then45 ], [ %retval1.0, %if.then41 ], [ %retval1.0, %if.then34 ], [ %retval1.0, %while.end ], [ %.81, %if.else51 ], [ %retval1.1, %if.end27 ]
  call void @free(i8* %call2) #9, !dbg !117
  br label %if.end63, !dbg !118

if.end63:                                         ; preds = %entry, %if.end61
  %retval1.4 = phi i32 [ %retval1.3, %if.end61 ], [ -1, %entry ]
  call void @llvm.lifetime.end(i64 144, i8* %0) #3, !dbg !119
  ret i32 %retval1.4, !dbg !119
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i8* @Util_StrSep(i8**, i8*) #6

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @mkdir(i8* nocapture, i32) #4

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_createdirectory_(i32* nocapture %ierr, i32* nocapture %mode, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !69), !dbg !120
  tail call void @llvm.dbg.value(metadata !{i32* %mode}, i64 0, metadata !70), !dbg !120
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !71), !dbg !120
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !72), !dbg !120
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #9, !dbg !121
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !73), !dbg !121
  %0 = load i32* %mode, align 4, !dbg !122, !tbaa !103
  %call1 = tail call i32 @CCTK_CreateDirectory(i32 %0, i8* %call) #11, !dbg !122
  store i32 %call1, i32* %ierr, align 4, !dbg !122, !tbaa !103
  tail call void @free(i8* %call) #9, !dbg !123
  ret void, !dbg !124
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !74, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !64}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_util_File_c", metadata !"CCTKi_version_util_File_c", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_File_c, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 30] [def] [CCTKi_version_util_File_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CreateDirectory", metadata !"CCTK_CreateDirectory", metadata !"", i32 85, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*)* @CCTK_CreateDirectory, null, null, metadata !15, i32 86} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 86] [CCTK_CreateDirectory]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !8}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23}
!16 = metadata !{i32 786689, metadata !11, metadata !"mode", metadata !5, i32 16777301, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 85]
!17 = metadata !{i32 786689, metadata !11, metadata !"pathname", metadata !5, i32 33554517, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 85]
!18 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 87, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 87]
!19 = metadata !{i32 786688, metadata !11, metadata !"path", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 88]
!20 = metadata !{i32 786688, metadata !11, metadata !"current", metadata !5, i32 89, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [current] [line 89]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!22 = metadata !{i32 786688, metadata !11, metadata !"token", metadata !5, i32 90, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [token] [line 90]
!23 = metadata !{i32 786688, metadata !11, metadata !"statbuf", metadata !5, i32 91, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statbuf] [line 91]
!24 = metadata !{i32 786451, metadata !25, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !26, i32 0, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [from ]
!25 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/bits/stat.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!26 = metadata !{metadata !27, metadata !30, metadata !32, metadata !34, metadata !37, metadata !39, metadata !41, metadata !42, metadata !43, metadata !46, metadata !48, metadata !50, metadata !58, metadata !59, metadata !60}
!27 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!28 = metadata !{i32 786454, metadata !25, null, metadata !"__dev_t", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [__dev_t] [line 124, size 0, align 0, offset 0] [from long unsigned int]
!29 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!30 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!31 = metadata !{i32 786454, metadata !25, null, metadata !"__ino_t", i32 127, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [__ino_t] [line 127, size 0, align 0, offset 0] [from long unsigned int]
!32 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!33 = metadata !{i32 786454, metadata !25, null, metadata !"__nlink_t", i32 130, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [__nlink_t] [line 130, size 0, align 0, offset 0] [from long unsigned int]
!34 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!35 = metadata !{i32 786454, metadata !25, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!36 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!37 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !38} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!38 = metadata !{i32 786454, metadata !25, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!39 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !40} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!40 = metadata !{i32 786454, metadata !25, null, metadata !"__gid_t", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__gid_t] [line 126, size 0, align 0, offset 0] [from unsigned int]
!41 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!42 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!43 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !44} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!44 = metadata !{i32 786454, metadata !25, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!45 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!46 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !47} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!47 = metadata !{i32 786454, metadata !25, null, metadata !"__blksize_t", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [__blksize_t] [line 153, size 0, align 0, offset 0] [from long int]
!48 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !49} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!49 = metadata !{i32 786454, metadata !25, null, metadata !"__blkcnt_t", i32 158, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [__blkcnt_t] [line 158, size 0, align 0, offset 0] [from long int]
!50 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !51} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!51 = metadata !{i32 786451, metadata !52, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !53, i32 0, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [from ]
!52 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!53 = metadata !{metadata !54, metadata !56}
!54 = metadata !{i32 786445, metadata !52, metadata !51, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!55 = metadata !{i32 786454, metadata !52, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!56 = metadata !{i32 786445, metadata !52, metadata !51, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!57 = metadata !{i32 786454, metadata !52, null, metadata !"__syscall_slong_t", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [__syscall_slong_t] [line 175, size 0, align 0, offset 0] [from long int]
!58 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !51} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!59 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !51} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!60 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !61} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !57, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __syscall_slong_t]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_createdirectory_", metadata !"cctk_createdirectory_", metadata !"", i32 170, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i8*, i32)* @cctk_createdirectory_, null, null, metadata !68, i32 172} ; [ DW_TAG_subprogram ] [line 170] [def] [scope 172] [cctk_createdirectory_]
!65 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{null, metadata !67, metadata !67, metadata !21, metadata !36}
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!69 = metadata !{i32 786689, metadata !64, metadata !"ierr", metadata !5, i32 16777387, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 171]
!70 = metadata !{i32 786689, metadata !64, metadata !"mode", metadata !5, i32 33554603, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 171]
!71 = metadata !{i32 786689, metadata !64, metadata !"cctk_str1", metadata !5, i32 50331819, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 171]
!72 = metadata !{i32 786689, metadata !64, metadata !"cctk_strlen1", metadata !5, i32 67109035, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 171]
!73 = metadata !{i32 786688, metadata !64, metadata !"dirname", metadata !5, i32 173, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dirname] [line 173]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 28, metadata !8, i32 1, i32 1, null, null}
!76 = metadata !{i32 30, i32 0, metadata !4, null}
!77 = metadata !{i32 85, i32 0, metadata !11, null}
!78 = metadata !{i32 88, i32 0, metadata !11, null}
!79 = metadata !{i32 91, i32 0, metadata !11, null}
!80 = metadata !{i32 94, i32 0, metadata !11, null}
!81 = metadata !{i32 95, i32 0, metadata !11, null}
!82 = metadata !{i32 97, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !11, i32 96, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!84 = metadata !{i32 98, i32 0, metadata !83, null}
!85 = metadata !{metadata !"omnipotent char", metadata !86}
!86 = metadata !{metadata !"Simple C/C++ TBAA"}
!87 = metadata !{i32 100, i32 0, metadata !83, null}
!88 = metadata !{metadata !"any pointer", metadata !85}
!89 = metadata !{i32 120, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !83, i32 102, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!91 = metadata !{i32 101, i32 0, metadata !83, null}
!92 = metadata !{i32 104, i32 0, metadata !90, null}
!93 = metadata !{i32 106, i32 0, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !90, i32 105, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!95 = metadata !{i32 107, i32 0, metadata !94, null}
!96 = metadata !{i32 110, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !90, i32 109, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!98 = metadata !{i32 113, i32 0, metadata !90, null}
!99 = metadata !{i32 115, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !90, i32 114, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!101 = metadata !{i32 117, i32 0, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !100, i32 116, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!103 = metadata !{metadata !"int", metadata !85}
!104 = metadata !{i32 118, i32 0, metadata !102, null}
!105 = metadata !{i32 129, i32 0, metadata !90, null}
!106 = metadata !{i32 135, i32 0, metadata !83, null}
!107 = metadata !{i32 138, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !83, i32 136, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!109 = metadata !{i32 140, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !108, i32 139, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!111 = metadata !{i32 142, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !110, i32 141, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!113 = metadata !{i32 144, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !112, i32 143, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c]
!115 = metadata !{i32 145, i32 0, metadata !114, null}
!116 = metadata !{i32 147, i32 0, metadata !110, null}
!117 = metadata !{i32 158, i32 0, metadata !83, null}
!118 = metadata !{i32 160, i32 0, metadata !83, null}
!119 = metadata !{i32 167, i32 0, metadata !11, null}
!120 = metadata !{i32 171, i32 0, metadata !64, null}
!121 = metadata !{i32 173, i32 0, metadata !64, null}
!122 = metadata !{i32 174, i32 0, metadata !64, null}
!123 = metadata !{i32 175, i32 0, metadata !64, null}
!124 = metadata !{i32 176, i32 0, metadata !64, null}
