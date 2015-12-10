; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uStringList = type { i32, %struct.iInternalStringList*, %struct.iInternalStringList*, %struct.iInternalStringList* }
%struct.iInternalStringList = type { %struct.iInternalStringList*, i8* }

@.str = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/util/StringList.c,v 1.3 2001/09/01 10:48:39 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_StringList_c() #0 {
entry:
  ret i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), !dbg !58
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.uStringList* @Util_StringListCreate(i32 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !31), !dbg !59
  %call = tail call noalias i8* @malloc(i64 32) #5, !dbg !60
  %0 = bitcast i8* %call to %struct.uStringList*, !dbg !60
  tail call void @llvm.dbg.value(metadata !{%struct.uStringList* %0}, i64 0, metadata !32), !dbg !60
  %tobool = icmp eq i8* %call, null, !dbg !61
  br i1 %tobool, label %if.end, label %if.then, !dbg !61

if.then:                                          ; preds = %entry
  %add = add nsw i32 %size, 1, !dbg !62
  %conv = sext i32 %add to i64, !dbg !62
  %call1 = tail call noalias i8* @calloc(i64 %conv, i64 16) #5, !dbg !62
  %1 = bitcast i8* %call1 to %struct.iInternalStringList*, !dbg !62
  %list = getelementptr inbounds i8* %call, i64 8, !dbg !62
  %2 = bitcast i8* %list to %struct.iInternalStringList**, !dbg !62
  store %struct.iInternalStringList* %1, %struct.iInternalStringList** %2, align 8, !dbg !62, !tbaa !64
  %current = getelementptr inbounds i8* %call, i64 24, !dbg !67
  %3 = bitcast i8* %current to %struct.iInternalStringList**, !dbg !67
  store %struct.iInternalStringList* null, %struct.iInternalStringList** %3, align 8, !dbg !67, !tbaa !64
  %fill = bitcast i8* %call to i32*, !dbg !68
  store i32 0, i32* %fill, align 4, !dbg !68, !tbaa !69
  br label %if.end, !dbg !70

if.end:                                           ; preds = %entry, %if.then
  ret %struct.uStringList* %0, !dbg !71
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Util_StringListAdd(%struct.uStringList* nocapture %list, i8* %item) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.uStringList* %list}, i64 0, metadata !37), !dbg !72
  tail call void @llvm.dbg.value(metadata !{i8* %item}, i64 0, metadata !38), !dbg !72
  %fill = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 0, !dbg !73
  %0 = load i32* %fill, align 4, !dbg !73, !tbaa !69
  %cmp = icmp eq i32 %0, 0, !dbg !73
  br i1 %cmp, label %if.then, label %if.else, !dbg !73

if.then:                                          ; preds = %entry
  %list2 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 1, !dbg !74
  %1 = load %struct.iInternalStringList** %list2, align 8, !dbg !74, !tbaa !64
  %head = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 2, !dbg !74
  store %struct.iInternalStringList* %1, %struct.iInternalStringList** %head, align 8, !dbg !74, !tbaa !64
  %call = tail call i8* @Util_Strdup(i8* %item) #5, !dbg !76
  %2 = load %struct.iInternalStringList** %head, align 8, !dbg !76, !tbaa !64
  %string = getelementptr inbounds %struct.iInternalStringList* %2, i64 0, i32 1, !dbg !76
  store i8* %call, i8** %string, align 8, !dbg !76, !tbaa !64
  %3 = load %struct.iInternalStringList** %head, align 8, !dbg !77, !tbaa !64
  %next = getelementptr inbounds %struct.iInternalStringList* %3, i64 0, i32 0, !dbg !77
  store %struct.iInternalStringList* null, %struct.iInternalStringList** %next, align 8, !dbg !77, !tbaa !64
  %4 = load i32* %fill, align 4, !dbg !78, !tbaa !69
  %inc = add nsw i32 %4, 1, !dbg !78
  store i32 %inc, i32* %fill, align 4, !dbg !78, !tbaa !69
  tail call void @llvm.dbg.value(metadata !79, i64 0, metadata !39), !dbg !80
  br label %if.end62, !dbg !81

if.else:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !82, i64 0, metadata !39), !dbg !83
  tail call void @llvm.dbg.value(metadata !85, i64 0, metadata !42), !dbg !86
  %head6 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 2, !dbg !87
  %this.0103 = load %struct.iInternalStringList** %head6, align 8, !dbg !87
  %tobool104 = icmp eq %struct.iInternalStringList* %this.0103, null, !dbg !87
  br i1 %tobool104, label %if.then42, label %for.body, !dbg !87

for.cond:                                         ; preds = %if.else35
  %next40 = getelementptr inbounds %struct.iInternalStringList* %this.0106, i64 0, i32 0, !dbg !87
  %this.0 = load %struct.iInternalStringList** %next40, align 8, !dbg !87
  %tobool = icmp eq %struct.iInternalStringList* %this.0, null, !dbg !87
  br i1 %tobool, label %if.then42, label %for.body, !dbg !87

for.body:                                         ; preds = %if.else, %for.cond
  %this.0106 = phi %struct.iInternalStringList* [ %this.0, %for.cond ], [ %this.0103, %if.else ]
  %prev.0105 = phi %struct.iInternalStringList* [ %this.0106, %for.cond ], [ null, %if.else ]
  %string7 = getelementptr inbounds %struct.iInternalStringList* %this.0106, i64 0, i32 1, !dbg !89
  %5 = load i8** %string7, align 8, !dbg !89, !tbaa !64
  %call8 = tail call i32 @Util_StrCmpi(i8* %item, i8* %5) #5, !dbg !89
  tail call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !40), !dbg !89
  %cmp9 = icmp slt i32 %call8, 0, !dbg !89
  br i1 %cmp9, label %if.then10, label %if.else35, !dbg !89

if.then10:                                        ; preds = %for.body
  %call11 = tail call i8* @Util_Strdup(i8* %item) #5, !dbg !91
  %6 = load i32* %fill, align 4, !dbg !91, !tbaa !69
  %idxprom = sext i32 %6 to i64, !dbg !91
  %list13 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 1, !dbg !91
  %7 = load %struct.iInternalStringList** %list13, align 8, !dbg !91, !tbaa !64
  %string14 = getelementptr inbounds %struct.iInternalStringList* %7, i64 %idxprom, i32 1, !dbg !91
  store i8* %call11, i8** %string14, align 8, !dbg !91, !tbaa !64
  %8 = load %struct.iInternalStringList** %list13, align 8, !dbg !93, !tbaa !64
  %next19 = getelementptr inbounds %struct.iInternalStringList* %8, i64 %idxprom, i32 0, !dbg !93
  store %struct.iInternalStringList* %this.0106, %struct.iInternalStringList** %next19, align 8, !dbg !93, !tbaa !64
  %tobool20 = icmp eq %struct.iInternalStringList* %prev.0105, null, !dbg !94
  %9 = load %struct.iInternalStringList** %list13, align 8, !dbg !95, !tbaa !64
  %arrayidx25 = getelementptr inbounds %struct.iInternalStringList* %9, i64 %idxprom, !dbg !95
  br i1 %tobool20, label %if.else27, label %if.then21, !dbg !94

if.then21:                                        ; preds = %if.then10
  %next26 = getelementptr inbounds %struct.iInternalStringList* %prev.0105, i64 0, i32 0, !dbg !95
  store %struct.iInternalStringList* %arrayidx25, %struct.iInternalStringList** %next26, align 8, !dbg !95, !tbaa !64
  br label %if.end, !dbg !97

if.else27:                                        ; preds = %if.then10
  store %struct.iInternalStringList* %arrayidx25, %struct.iInternalStringList** %head6, align 8, !dbg !98, !tbaa !64
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then21
  %inc34 = add nsw i32 %6, 1, !dbg !100
  store i32 %inc34, i32* %fill, align 4, !dbg !100, !tbaa !69
  tail call void @llvm.dbg.value(metadata !79, i64 0, metadata !39), !dbg !101
  br label %if.end62, !dbg !102

if.else35:                                        ; preds = %for.body
  %cmp36 = icmp eq i32 %call8, 0, !dbg !103
  tail call void @llvm.dbg.value(metadata !{%struct.iInternalStringList* %this.0106}, i64 0, metadata !42), !dbg !104
  br i1 %cmp36, label %if.end62, label %for.cond, !dbg !103

if.then42:                                        ; preds = %if.else, %for.cond
  %prev.0.lcssa = phi %struct.iInternalStringList* [ null, %if.else ], [ %this.0106, %for.cond ]
  %call43 = tail call i8* @Util_Strdup(i8* %item) #5, !dbg !105
  %10 = load i32* %fill, align 4, !dbg !105, !tbaa !69
  %idxprom45 = sext i32 %10 to i64, !dbg !105
  %list46 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 1, !dbg !105
  %11 = load %struct.iInternalStringList** %list46, align 8, !dbg !105, !tbaa !64
  %string48 = getelementptr inbounds %struct.iInternalStringList* %11, i64 %idxprom45, i32 1, !dbg !105
  store i8* %call43, i8** %string48, align 8, !dbg !105, !tbaa !64
  %12 = load %struct.iInternalStringList** %list46, align 8, !dbg !107, !tbaa !64
  %next53 = getelementptr inbounds %struct.iInternalStringList* %12, i64 %idxprom45, i32 0, !dbg !107
  store %struct.iInternalStringList* null, %struct.iInternalStringList** %next53, align 8, !dbg !107, !tbaa !64
  %13 = load %struct.iInternalStringList** %list46, align 8, !dbg !108, !tbaa !64
  %arrayidx57 = getelementptr inbounds %struct.iInternalStringList* %13, i64 %idxprom45, !dbg !108
  %next58 = getelementptr inbounds %struct.iInternalStringList* %prev.0.lcssa, i64 0, i32 0, !dbg !108
  store %struct.iInternalStringList* %arrayidx57, %struct.iInternalStringList** %next58, align 8, !dbg !108, !tbaa !64
  %inc60 = add nsw i32 %10, 1, !dbg !109
  store i32 %inc60, i32* %fill, align 4, !dbg !109, !tbaa !69
  tail call void @llvm.dbg.value(metadata !79, i64 0, metadata !39), !dbg !110
  br label %if.end62, !dbg !111

if.end62:                                         ; preds = %if.end, %if.else35, %if.then42, %if.then
  %retval1.1 = phi i32 [ 1, %if.then ], [ 1, %if.then42 ], [ 1, %if.end ], [ 0, %if.else35 ]
  ret i32 %retval1.1, !dbg !112
}

; Function Attrs: optsize
declare i8* @Util_Strdup(i8*) #3

; Function Attrs: optsize
declare i32 @Util_StrCmpi(i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i8* @Util_StringListNext(%struct.uStringList* nocapture %this, i32 %flag) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.uStringList* %this}, i64 0, metadata !47), !dbg !113
  tail call void @llvm.dbg.value(metadata !{i32 %flag}, i64 0, metadata !48), !dbg !113
  %tobool = icmp eq i32 %flag, 0, !dbg !114
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then, !dbg !114

entry.if.end_crit_edge:                           ; preds = %entry
  %current2.phi.trans.insert = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 3
  %.pre = load %struct.iInternalStringList** %current2.phi.trans.insert, align 8, !dbg !115, !tbaa !64
  br label %if.end, !dbg !114

if.then:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 2, !dbg !116
  %0 = load %struct.iInternalStringList** %head, align 8, !dbg !116, !tbaa !64
  %current = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 3, !dbg !116
  store %struct.iInternalStringList* %0, %struct.iInternalStringList** %current, align 8, !dbg !116, !tbaa !64
  br label %if.end, !dbg !118

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %1 = phi %struct.iInternalStringList* [ %.pre, %entry.if.end_crit_edge ], [ %0, %if.then ]
  %tobool3 = icmp eq %struct.iInternalStringList* %1, null, !dbg !115
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !115

if.then4:                                         ; preds = %if.end
  %current2 = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 3, !dbg !115
  %string = getelementptr inbounds %struct.iInternalStringList* %1, i64 0, i32 1, !dbg !119
  %2 = load i8** %string, align 8, !dbg !119, !tbaa !64
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !49), !dbg !119
  %next = getelementptr inbounds %struct.iInternalStringList* %1, i64 0, i32 0, !dbg !121
  %3 = load %struct.iInternalStringList** %next, align 8, !dbg !121, !tbaa !64
  store %struct.iInternalStringList* %3, %struct.iInternalStringList** %current2, align 8, !dbg !121, !tbaa !64
  br label %if.end8, !dbg !122

if.end8:                                          ; preds = %if.end, %if.then4
  %retval1.0 = phi i8* [ %2, %if.then4 ], [ null, %if.end ]
  ret i8* %retval1.0, !dbg !123
}

; Function Attrs: nounwind optsize uwtable
define void @Util_StringListDestroy(%struct.uStringList* nocapture %this) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.uStringList* %this}, i64 0, metadata !54), !dbg !124
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !55), !dbg !125
  %fill = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 0, !dbg !125
  %0 = load i32* %fill, align 4, !dbg !125, !tbaa !69
  %cmp7 = icmp sgt i32 %0, 0, !dbg !125
  %list = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 1, !dbg !127
  br i1 %cmp7, label %for.body, label %for.end, !dbg !125

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = load %struct.iInternalStringList** %list, align 8, !dbg !127, !tbaa !64
  %string = getelementptr inbounds %struct.iInternalStringList* %1, i64 %indvars.iv, i32 1, !dbg !127
  %2 = load i8** %string, align 8, !dbg !127, !tbaa !64
  tail call void @free(i8* %2) #5, !dbg !127
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !125
  %3 = load i32* %fill, align 4, !dbg !125, !tbaa !69
  %4 = trunc i64 %indvars.iv.next to i32, !dbg !125
  %cmp = icmp slt i32 %4, %3, !dbg !125
  br i1 %cmp, label %for.body, label %for.end, !dbg !125

for.end:                                          ; preds = %entry, %for.body
  %5 = load %struct.iInternalStringList** %list, align 8, !dbg !129, !tbaa !64
  %6 = bitcast %struct.iInternalStringList* %5 to i8*, !dbg !129
  tail call void @free(i8* %6) #5, !dbg !129
  %7 = bitcast %struct.uStringList* %this to i8*, !dbg !130
  tail call void @free(i8* %7) #5, !dbg !130
  ret void, !dbg !131
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !56, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !33, metadata !43, metadata !50}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_util_StringList_c", metadata !"CCTKi_version_util_StringList_c", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_StringList_c, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [CCTKi_version_util_StringList_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_StringListCreate", metadata !"Util_StringListCreate", metadata !"", i32 74, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.uStringList* (i32)* @Util_StringListCreate, null, null, metadata !30, i32 75} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 75] [Util_StringListCreate]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !20}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uStringList]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"uStringList", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [uStringList] [line 30, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 24, i64 256, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 256, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/util_StringList.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !28, metadata !29}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"fill", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [fill] [line 26, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"list", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [list] [line 27, size 64, align 64, offset 64] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iInternalStringList]
!23 = metadata !{i32 786451, metadata !17, null, metadata !"iInternalStringList", i32 18, i64 128, i64 64, i32 0, i32 0, null, metadata !24, i32 0, null, null} ; [ DW_TAG_structure_type ] [iInternalStringList] [line 18, size 128, align 64, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !26}
!25 = metadata !{i32 786445, metadata !17, metadata !23, metadata !"next", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [next] [line 20, size 64, align 64, offset 0] [from ]
!26 = metadata !{i32 786445, metadata !17, metadata !23, metadata !"string", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [string] [line 21, size 64, align 64, offset 64] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!28 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"head", i32 28, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [head] [line 28, size 64, align 64, offset 128] [from ]
!29 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"current", i32 29, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [current] [line 29, size 64, align 64, offset 192] [from ]
!30 = metadata !{metadata !31, metadata !32}
!31 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777290, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 74]
!32 = metadata !{i32 786688, metadata !11, metadata !"this", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this] [line 76]
!33 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_StringListAdd", metadata !"Util_StringListAdd", metadata !"", i32 125, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.uStringList*, i8*)* @Util_StringListAdd, null, null, metadata !36, i32 126} ; [ DW_TAG_subprogram ] [line 125] [def] [scope 126] [Util_StringListAdd]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !20, metadata !14, metadata !8}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!37 = metadata !{i32 786689, metadata !33, metadata !"list", metadata !5, i32 16777341, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 125]
!38 = metadata !{i32 786689, metadata !33, metadata !"item", metadata !5, i32 33554557, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [item] [line 125]
!39 = metadata !{i32 786688, metadata !33, metadata !"retval", metadata !5, i32 127, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 127]
!40 = metadata !{i32 786688, metadata !33, metadata !"position", metadata !5, i32 128, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [position] [line 128]
!41 = metadata !{i32 786688, metadata !33, metadata !"this", metadata !5, i32 129, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this] [line 129]
!42 = metadata !{i32 786688, metadata !33, metadata !"prev", metadata !5, i32 129, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 129]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_StringListNext", metadata !"Util_StringListNext", metadata !"", i32 219, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.uStringList*, i32)* @Util_StringListNext, null, null, metadata !46, i32 220} ; [ DW_TAG_subprogram ] [line 219] [def] [scope 220] [Util_StringListNext]
!44 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{metadata !8, metadata !14, metadata !20}
!46 = metadata !{metadata !47, metadata !48, metadata !49}
!47 = metadata !{i32 786689, metadata !43, metadata !"this", metadata !5, i32 16777435, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 219]
!48 = metadata !{i32 786689, metadata !43, metadata !"flag", metadata !5, i32 33554651, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flag] [line 219]
!49 = metadata !{i32 786688, metadata !43, metadata !"retval", metadata !5, i32 221, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 221]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_StringListDestroy", metadata !"Util_StringListDestroy", metadata !"", i32 262, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.uStringList*)* @Util_StringListDestroy, null, null, metadata !53, i32 263} ; [ DW_TAG_subprogram ] [line 262] [def] [scope 263] [Util_StringListDestroy]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{null, metadata !14}
!53 = metadata !{metadata !54, metadata !55}
!54 = metadata !{i32 786689, metadata !50, metadata !"this", metadata !5, i32 16777478, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 262]
!55 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !5, i32 264, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 264]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 23, metadata !8, i32 1, i32 1, null, null}
!58 = metadata !{i32 26, i32 0, metadata !4, null}
!59 = metadata !{i32 74, i32 0, metadata !11, null}
!60 = metadata !{i32 78, i32 0, metadata !11, null}
!61 = metadata !{i32 80, i32 0, metadata !11, null}
!62 = metadata !{i32 82, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !11, i32 81, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!64 = metadata !{metadata !"any pointer", metadata !65}
!65 = metadata !{metadata !"omnipotent char", metadata !66}
!66 = metadata !{metadata !"Simple C/C++ TBAA"}
!67 = metadata !{i32 84, i32 0, metadata !63, null}
!68 = metadata !{i32 85, i32 0, metadata !63, null}
!69 = metadata !{metadata !"int", metadata !65}
!70 = metadata !{i32 86, i32 0, metadata !63, null}
!71 = metadata !{i32 88, i32 0, metadata !11, null}
!72 = metadata !{i32 125, i32 0, metadata !33, null}
!73 = metadata !{i32 131, i32 0, metadata !33, null}
!74 = metadata !{i32 133, i32 0, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !33, i32 132, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!76 = metadata !{i32 134, i32 0, metadata !75, null}
!77 = metadata !{i32 135, i32 0, metadata !75, null}
!78 = metadata !{i32 136, i32 0, metadata !75, null}
!79 = metadata !{i32 1}
!80 = metadata !{i32 137, i32 0, metadata !75, null}
!81 = metadata !{i32 138, i32 0, metadata !75, null}
!82 = metadata !{i32 -1}
!83 = metadata !{i32 141, i32 0, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !33, i32 140, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!85 = metadata !{%struct.iInternalStringList* null}
!86 = metadata !{i32 142, i32 0, metadata !84, null}
!87 = metadata !{i32 143, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !84, i32 143, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!89 = metadata !{i32 145, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !88, i32 144, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!91 = metadata !{i32 147, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !90, i32 146, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!93 = metadata !{i32 148, i32 0, metadata !92, null}
!94 = metadata !{i32 149, i32 0, metadata !92, null}
!95 = metadata !{i32 151, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !92, i32 150, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!97 = metadata !{i32 152, i32 0, metadata !96, null}
!98 = metadata !{i32 155, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !92, i32 154, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!100 = metadata !{i32 158, i32 0, metadata !92, null}
!101 = metadata !{i32 159, i32 0, metadata !92, null}
!102 = metadata !{i32 160, i32 0, metadata !92, null}
!103 = metadata !{i32 162, i32 0, metadata !90, null}
!104 = metadata !{i32 168, i32 0, metadata !90, null}
!105 = metadata !{i32 173, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !84, i32 172, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!107 = metadata !{i32 174, i32 0, metadata !106, null}
!108 = metadata !{i32 175, i32 0, metadata !106, null}
!109 = metadata !{i32 176, i32 0, metadata !106, null}
!110 = metadata !{i32 177, i32 0, metadata !106, null}
!111 = metadata !{i32 178, i32 0, metadata !106, null}
!112 = metadata !{i32 181, i32 0, metadata !33, null}
!113 = metadata !{i32 219, i32 0, metadata !43, null}
!114 = metadata !{i32 223, i32 0, metadata !43, null}
!115 = metadata !{i32 228, i32 0, metadata !43, null}
!116 = metadata !{i32 225, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !43, i32 224, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!118 = metadata !{i32 226, i32 0, metadata !117, null}
!119 = metadata !{i32 230, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !43, i32 229, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!121 = metadata !{i32 231, i32 0, metadata !120, null}
!122 = metadata !{i32 232, i32 0, metadata !120, null}
!123 = metadata !{i32 238, i32 0, metadata !43, null}
!124 = metadata !{i32 262, i32 0, metadata !50, null}
!125 = metadata !{i32 265, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !50, i32 265, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!127 = metadata !{i32 267, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !126, i32 266, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c]
!129 = metadata !{i32 269, i32 0, metadata !50, null}
!130 = metadata !{i32 270, i32 0, metadata !50, null}
!131 = metadata !{i32 271, i32 0, metadata !50, null}
