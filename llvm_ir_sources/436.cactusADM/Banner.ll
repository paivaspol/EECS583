; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [397 x i8] c"       10                                  \0A  1   0101       ************************  \0A  01  1010 10      The Cactus Code V4.0    \0A 1010 1101 011      www.cactuscode.org     \0A  1001 100101    ************************  \0A    00010101                               \0A     100011     (c) Copyright The Authors  \0A      0100      GNU Licensed. No Warranty  \0A      0101                                 \0A\00", align 1
@.str1 = private unnamed_addr constant [20 x i8] c"Cactus version: %s\0A\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"Parameter file: %s\0A\00", align 1
@number_banners = internal unnamed_addr global i32 0, align 4
@banner_strings = internal unnamed_addr global i8** null, align 8
@.str3 = private unnamed_addr constant [18 x i8] c"cctk_show_banners\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str6 = private unnamed_addr constant [82 x i8] c"--------------------------------------------------------------------------------\0A\00", align 1
@.str7 = private unnamed_addr constant [82 x i8] c"$Header: /cactus/Cactus/src/main/Banner.c,v 1.33 2002/01/04 13:30:18 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_Banner_c() #0 {
entry:
  ret i8* getelementptr inbounds ([82 x i8]* @.str7, i64 0, i64 0), !dbg !54
}

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CactusBanner() #1 {
entry:
  %buffer = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buffer, i64 0, i64 0, !dbg !55
  call void @llvm.lifetime.start(i64 256, i8* %0) #3, !dbg !55
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buffer}, metadata !18), !dbg !55
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !22), !dbg !57
  %call = call i32 @puts(i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !58
  %call1 = call i32 @puts(i8* getelementptr inbounds ([397 x i8]* @.str, i64 0, i64 0)) #6, !dbg !59
  %call2 = call i32 @puts(i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !60
  %call3 = call i8* @CCTK_FullVersion() #6, !dbg !61
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str1, i64 0, i64 0), i8* %call3) #6, !dbg !61
  %call5 = call i32 @CCTK_ParameterFilename(i32 255, i8* %0) #6, !dbg !62
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0), i8* %0) #6, !dbg !63
  %call8 = call i32 @puts(i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !64
  call void @llvm.lifetime.end(i64 256, i8* %0) #3, !dbg !65
  ret void, !dbg !65
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: optsize
declare i8* @CCTK_FullVersion() #5

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RegisterBanner(i8* %banner) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %banner}, i64 0, metadata !28), !dbg !66
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !29), !dbg !67
  %0 = load i32* @number_banners, align 4, !dbg !68, !tbaa !69
  %inc = add nsw i32 %0, 1, !dbg !68
  store i32 %inc, i32* @number_banners, align 4, !dbg !68, !tbaa !69
  %cmp = icmp eq i32 %0, 0, !dbg !72
  br i1 %cmp, label %if.then, label %if.else, !dbg !72

if.then:                                          ; preds = %entry
  %conv = sext i32 %inc to i64, !dbg !73
  %mul = shl nsw i64 %conv, 3, !dbg !73
  %call = tail call noalias i8* @malloc(i64 %mul) #6, !dbg !73
  %1 = bitcast i8* %call to i8**, !dbg !73
  store i8** %1, i8*** @banner_strings, align 8, !dbg !73, !tbaa !75
  br label %if.end8, !dbg !76

if.else:                                          ; preds = %entry
  %2 = load i8*** @banner_strings, align 8, !dbg !77, !tbaa !75
  tail call void @llvm.dbg.value(metadata !{i8** %2}, i64 0, metadata !30), !dbg !77
  %3 = bitcast i8** %2 to i8*, !dbg !79
  %conv2 = sext i32 %inc to i64, !dbg !79
  %mul3 = shl nsw i64 %conv2, 3, !dbg !79
  %call4 = tail call i8* @realloc(i8* %3, i64 %mul3) #6, !dbg !79
  %4 = bitcast i8* %call4 to i8**, !dbg !79
  store i8** %4, i8*** @banner_strings, align 8, !dbg !79, !tbaa !75
  %cmp5 = icmp eq i8* %call4, null, !dbg !80
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !80

if.then7:                                         ; preds = %if.else
  store i8** %2, i8*** @banner_strings, align 8, !dbg !81, !tbaa !75
  %5 = load i32* @number_banners, align 4, !dbg !83, !tbaa !69
  %dec = add nsw i32 %5, -1, !dbg !83
  store i32 %dec, i32* @number_banners, align 4, !dbg !83, !tbaa !69
  br label %if.end8, !dbg !84

if.end8:                                          ; preds = %if.else, %if.then7, %if.then
  %6 = phi i8** [ %4, %if.else ], [ %2, %if.then7 ], [ %1, %if.then ], !dbg !85
  %tobool = icmp eq i8** %6, null, !dbg !85
  br i1 %tobool, label %if.end20, label %if.then9, !dbg !85

if.then9:                                         ; preds = %if.end8
  %call10 = tail call i8* @Util_Strdup(i8* %banner) #6, !dbg !86
  %7 = load i32* @number_banners, align 4, !dbg !86, !tbaa !69
  %sub = add nsw i32 %7, -1, !dbg !86
  %idxprom = sext i32 %sub to i64, !dbg !86
  %8 = load i8*** @banner_strings, align 8, !dbg !86, !tbaa !75
  %arrayidx = getelementptr inbounds i8** %8, i64 %idxprom, !dbg !86
  store i8* %call10, i8** %arrayidx, align 8, !dbg !86, !tbaa !75
  %9 = load i8*** @banner_strings, align 8, !dbg !88, !tbaa !75
  %arrayidx13 = getelementptr inbounds i8** %9, i64 %idxprom, !dbg !88
  %10 = load i8** %arrayidx13, align 8, !dbg !88, !tbaa !75
  %cmp14 = icmp eq i8* %10, null, !dbg !88
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !88

if.then16:                                        ; preds = %if.then9
  store i32 %sub, i32* @number_banners, align 4, !dbg !89, !tbaa !69
  tail call void @llvm.dbg.value(metadata !91, i64 0, metadata !29), !dbg !92
  br label %if.end20, !dbg !93

if.end20:                                         ; preds = %if.end8, %if.then9, %if.then16
  %retval1.0 = phi i32 [ -1, %if.then16 ], [ 0, %if.then9 ], [ -1, %if.end8 ]
  ret i32 %retval1.0, !dbg !94
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #4

; Function Attrs: optsize
declare i8* @Util_Strdup(i8*) #5

; Function Attrs: nounwind optsize uwtable
define void @cctk_registerbanner_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !37), !dbg !95
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !38), !dbg !96
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !39), !dbg !96
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !97
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !40), !dbg !97
  %call1 = tail call i32 @CCTK_RegisterBanner(i8* %call) #7, !dbg !98
  store i32 %call1, i32* %ierr, align 4, !dbg !98, !tbaa !69
  tail call void @free(i8* %call) #6, !dbg !99
  ret void, !dbg !100
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_PrintBanners() #1 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !45), !dbg !101
  %call = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %i) #6, !dbg !102
  %0 = bitcast i8* %call to i32*, !dbg !102
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !46), !dbg !102
  %1 = load i32* %0, align 4, !dbg !103, !tbaa !69
  %tobool = icmp eq i32 %1, 0, !dbg !103
  br i1 %tobool, label %if.end7, label %for.cond.preheader, !dbg !103

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !104
  store i32 0, i32* %i, align 4, !dbg !104, !tbaa !69
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !45), !dbg !104
  %2 = load i32* @number_banners, align 4, !dbg !104, !tbaa !69
  %cmp8 = icmp sgt i32 %2, 0, !dbg !104
  br i1 %cmp8, label %for.body, label %for.end, !dbg !104

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %3 = phi i32 [ %2, %for.cond.preheader ], [ %6, %for.inc ]
  %storemerge9 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %idxprom = sext i32 %storemerge9 to i64, !dbg !107
  %4 = load i8*** @banner_strings, align 8, !dbg !107, !tbaa !75
  %arrayidx = getelementptr inbounds i8** %4, i64 %idxprom, !dbg !107
  %5 = load i8** %arrayidx, align 8, !dbg !107, !tbaa !75
  %tobool1 = icmp eq i8* %5, null, !dbg !107
  br i1 %tobool1, label %for.inc, label %if.then2, !dbg !107

if.then2:                                         ; preds = %for.body
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0), i8* %5) #6, !dbg !109
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !45), !dbg !104
  %.pre = load i32* %i, align 4, !dbg !104, !tbaa !69
  %.pre10 = load i32* @number_banners, align 4, !dbg !104, !tbaa !69
  br label %for.inc, !dbg !111

for.inc:                                          ; preds = %for.body, %if.then2
  %6 = phi i32 [ %3, %for.body ], [ %.pre10, %if.then2 ], !dbg !104
  %7 = phi i32 [ %storemerge9, %for.body ], [ %.pre, %if.then2 ], !dbg !104
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !45), !dbg !104
  %inc = add nsw i32 %7, 1, !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !45), !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %storemerge9}, i64 0, metadata !45), !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !45), !dbg !104
  store i32 %inc, i32* %i, align 4, !dbg !104, !tbaa !69
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !45), !dbg !104
  %cmp = icmp slt i32 %inc, %6, !dbg !104
  br i1 %cmp, label %for.body, label %for.end, !dbg !104

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call6 = call i32 @puts(i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !112
  br label %if.end7, !dbg !113

if.end7:                                          ; preds = %entry, %for.end
  ret i32 0, !dbg !114
}

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !49, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !23, metadata !31, metadata !41}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_Banner_c", metadata !"CCTKi_version_main_Banner_c", metadata !"", i32 32, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_Banner_c, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 32] [def] [CCTKi_version_main_Banner_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CactusBanner", metadata !"CCTKi_CactusBanner", metadata !"", i32 78, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_CactusBanner, null, null, metadata !14, i32 79} ; [ DW_TAG_subprogram ] [line 78] [def] [scope 79] [CCTKi_CactusBanner]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null}
!14 = metadata !{metadata !15, metadata !18, metadata !22}
!15 = metadata !{i32 786688, metadata !11, metadata !"commandargs", metadata !5, i32 80, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [commandargs] [line 80]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!18 = metadata !{i32 786688, metadata !11, metadata !"buffer", metadata !5, i32 81, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 81]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !10, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!22 = metadata !{i32 786688, metadata !11, metadata !"banner", metadata !5, i32 82, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [banner] [line 82]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RegisterBanner", metadata !"CCTK_RegisterBanner", metadata !"", i32 135, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_RegisterBanner, null, null, metadata !27, i32 136} ; [ DW_TAG_subprogram ] [line 135] [def] [scope 136] [CCTK_RegisterBanner]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !26, metadata !8}
!26 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!27 = metadata !{metadata !28, metadata !29, metadata !30}
!28 = metadata !{i32 786689, metadata !23, metadata !"banner", metadata !5, i32 16777351, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [banner] [line 135]
!29 = metadata !{i32 786688, metadata !23, metadata !"retval", metadata !5, i32 137, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 137]
!30 = metadata !{i32 786688, metadata !23, metadata !"old_banner_strings", metadata !5, i32 138, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_banner_strings] [line 138]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_registerbanner_", metadata !"cctk_registerbanner_", metadata !"", i32 184, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_registerbanner_, null, null, metadata !36, i32 187} ; [ DW_TAG_subprogram ] [line 184] [def] [scope 187] [cctk_registerbanner_]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{null, metadata !34, metadata !17, metadata !35}
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!35 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40}
!37 = metadata !{i32 786689, metadata !31, metadata !"ierr", metadata !5, i32 16777401, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 185]
!38 = metadata !{i32 786689, metadata !31, metadata !"cctk_str1", metadata !5, i32 33554618, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 186]
!39 = metadata !{i32 786689, metadata !31, metadata !"cctk_strlen1", metadata !5, i32 50331834, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 186]
!40 = metadata !{i32 786688, metadata !31, metadata !"message", metadata !5, i32 188, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [message] [line 188]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_PrintBanners", metadata !"CCTKi_PrintBanners", metadata !"", i32 208, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_PrintBanners, null, null, metadata !44, i32 209} ; [ DW_TAG_subprogram ] [line 208] [def] [scope 209] [CCTKi_PrintBanners]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{metadata !26}
!44 = metadata !{metadata !45, metadata !46}
!45 = metadata !{i32 786688, metadata !41, metadata !"i", metadata !5, i32 210, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 210]
!46 = metadata !{i32 786688, metadata !41, metadata !"cctk_show_banners", metadata !5, i32 211, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_show_banners] [line 211]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53}
!50 = metadata !{i32 786484, i32 0, null, metadata !"banner_strings", metadata !"banner_strings", metadata !"", metadata !5, i32 54, metadata !16, i32 1, i32 1, i8*** @banner_strings, null} ; [ DW_TAG_variable ] [banner_strings] [line 54] [local] [def]
!51 = metadata !{i32 786484, i32 0, null, metadata !"number_banners", metadata !"number_banners", metadata !"", metadata !5, i32 53, metadata !26, i32 1, i32 1, i32* @number_banners, null} ; [ DW_TAG_variable ] [number_banners] [line 53] [local] [def]
!52 = metadata !{i32 786484, i32 0, null, metadata !"delimiter", metadata !"delimiter", metadata !"", metadata !5, i32 55, metadata !8, i32 1, i32 1, null, null}
!53 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 30, metadata !8, i32 1, i32 1, null, null}
!54 = metadata !{i32 32, i32 0, metadata !4, null}
!55 = metadata !{i32 81, i32 0, metadata !11, null}
!56 = metadata !{null}
!57 = metadata !{i32 90, i32 0, metadata !11, null}
!58 = metadata !{i32 93, i32 0, metadata !11, null}
!59 = metadata !{i32 94, i32 0, metadata !11, null}
!60 = metadata !{i32 95, i32 0, metadata !11, null}
!61 = metadata !{i32 97, i32 0, metadata !11, null}
!62 = metadata !{i32 109, i32 0, metadata !11, null}
!63 = metadata !{i32 110, i32 0, metadata !11, null}
!64 = metadata !{i32 112, i32 0, metadata !11, null}
!65 = metadata !{i32 113, i32 0, metadata !11, null}
!66 = metadata !{i32 135, i32 0, metadata !23, null}
!67 = metadata !{i32 141, i32 0, metadata !23, null}
!68 = metadata !{i32 142, i32 0, metadata !23, null}
!69 = metadata !{metadata !"int", metadata !70}
!70 = metadata !{metadata !"omnipotent char", metadata !71}
!71 = metadata !{metadata !"Simple C/C++ TBAA"}
!72 = metadata !{i32 145, i32 0, metadata !23, null}
!73 = metadata !{i32 147, i32 0, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !23, i32 146, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c]
!75 = metadata !{metadata !"any pointer", metadata !70}
!76 = metadata !{i32 148, i32 0, metadata !74, null}
!77 = metadata !{i32 151, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !23, i32 150, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c]
!79 = metadata !{i32 152, i32 0, metadata !78, null}
!80 = metadata !{i32 154, i32 0, metadata !78, null}
!81 = metadata !{i32 156, i32 0, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !78, i32 155, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c]
!83 = metadata !{i32 157, i32 0, metadata !82, null}
!84 = metadata !{i32 158, i32 0, metadata !82, null}
!85 = metadata !{i32 162, i32 0, metadata !23, null}
!86 = metadata !{i32 164, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !23, i32 163, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c]
!88 = metadata !{i32 165, i32 0, metadata !87, null}
!89 = metadata !{i32 167, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !87, i32 166, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c]
!91 = metadata !{i32 -1}
!92 = metadata !{i32 168, i32 0, metadata !90, null}
!93 = metadata !{i32 169, i32 0, metadata !90, null}
!94 = metadata !{i32 180, i32 0, metadata !23, null}
!95 = metadata !{i32 185, i32 0, metadata !31, null}
!96 = metadata !{i32 186, i32 0, metadata !31, null}
!97 = metadata !{i32 188, i32 0, metadata !31, null}
!98 = metadata !{i32 189, i32 0, metadata !31, null}
!99 = metadata !{i32 190, i32 0, metadata !31, null}
!100 = metadata !{i32 191, i32 0, metadata !31, null}
!101 = metadata !{i32 210, i32 0, metadata !41, null}
!102 = metadata !{i32 215, i32 0, metadata !41, null}
!103 = metadata !{i32 216, i32 0, metadata !41, null}
!104 = metadata !{i32 218, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !106, i32 218, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c]
!106 = metadata !{i32 786443, metadata !1, metadata !41, i32 217, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c]
!107 = metadata !{i32 220, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !105, i32 219, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c]
!109 = metadata !{i32 222, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !108, i32 221, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Banner.c]
!111 = metadata !{i32 223, i32 0, metadata !110, null}
!112 = metadata !{i32 225, i32 0, metadata !106, null}
!113 = metadata !{i32 226, i32 0, metadata !106, null}
!114 = metadata !{i32 228, i32 0, metadata !41, null}
