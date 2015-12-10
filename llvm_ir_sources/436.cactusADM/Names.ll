; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T_HASH = type { i32, i32, i32, %struct.T_HASH_ENTRY** }
%struct.T_HASH_ENTRY = type { %struct.T_HASH_ENTRY*, %struct.T_HASH_ENTRY*, i32, i32, i8*, i8* }

@GroupData = internal unnamed_addr global %struct.T_HASH* null, align 8
@VariableData = internal unnamed_addr global %struct.T_HASH* null, align 8
@.str = private unnamed_addr constant [81 x i8] c"$Header: /cactus/Cactus/src/main/Names.c,v 1.4 2001/05/10 12:35:13 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_Names_c() #0 {
entry:
  ret i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), !dbg !102
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_NamesStoreGroup(i8* %gname, i32 %gnum) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %gname}, i64 0, metadata !16), !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32 %gnum}, i64 0, metadata !17), !dbg !103
  %0 = load %struct.T_HASH** @GroupData, align 8, !dbg !104, !tbaa !105
  %tobool = icmp eq %struct.T_HASH* %0, null, !dbg !104
  br i1 %tobool, label %if.then, label %if.end, !dbg !104

if.then:                                          ; preds = %entry
  %call = tail call %struct.T_HASH* @Util_HashCreate(i32 64) #8, !dbg !108
  store %struct.T_HASH* %call, %struct.T_HASH** @GroupData, align 8, !dbg !108, !tbaa !105
  br label %if.end, !dbg !110

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.T_HASH* [ %0, %entry ], [ %call, %if.then ]
  %call2 = tail call noalias i8* @malloc(i64 4) #8, !dbg !111
  %tobool3 = icmp ne i8* %call2, null, !dbg !112
  %tobool4 = icmp ne %struct.T_HASH* %1, null, !dbg !112
  %or.cond = and i1 %tobool3, %tobool4, !dbg !112
  br i1 %or.cond, label %if.then5, label %if.end12, !dbg !112

if.then5:                                         ; preds = %if.end
  %gnum6 = bitcast i8* %call2 to i32*, !dbg !113
  store i32 %gnum, i32* %gnum6, align 4, !dbg !113, !tbaa !115
  %call7 = tail call i64 @strlen(i8* %gname) #9, !dbg !116
  %conv = trunc i64 %call7 to i32, !dbg !116
  %call8 = tail call fastcc i32 @CaseIndependentHash(i32 %conv, i8* %gname) #10, !dbg !116
  tail call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !19), !dbg !116
  %call11 = tail call i32 @Util_HashStore(%struct.T_HASH* %1, i32 %conv, i8* %gname, i32 %call8, i8* %call2) #8, !dbg !117
  tail call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !18), !dbg !117
  br label %if.end12, !dbg !118

if.end12:                                         ; preds = %if.end, %if.then5
  %retval1.0 = phi i32 [ %call11, %if.then5 ], [ -1, %if.end ]
  ret i32 %retval1.0, !dbg !119
}

; Function Attrs: optsize
declare %struct.T_HASH* @Util_HashCreate(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @CaseIndependentHash(i32 %klen, i8* nocapture %key) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !67), !dbg !120
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !68), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !70), !dbg !122
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !71), !dbg !123
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !124
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !70), !dbg !125
  %tobool1 = icmp eq i32 %klen, 0, !dbg !125
  br i1 %tobool1, label %while.end, label %while.body.lr.ph, !dbg !125

while.body.lr.ph:                                 ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #11, !dbg !126
  %0 = load i32** %call, align 8, !dbg !126, !tbaa !105
  br label %while.body, !dbg !125

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %hash.04 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %while.body ]
  %pos.03 = phi i8* [ %key, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %i.02 = phi i32 [ %klen, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add nsw i32 %i.02, -1, !dbg !125
  %mul = mul i32 %hash.04, 33, !dbg !127
  %incdec.ptr = getelementptr inbounds i8* %pos.03, i64 1, !dbg !126
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !71), !dbg !126
  %1 = load i8* %pos.03, align 1, !dbg !126, !tbaa !106
  %idxprom = sext i8 %1 to i64, !dbg !126
  %arrayidx = getelementptr inbounds i32* %0, i64 %idxprom, !dbg !126
  %2 = load i32* %arrayidx, align 4, !dbg !126, !tbaa !115
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !72), !dbg !126
  %add = add i32 %2, %mul, !dbg !126
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !69), !dbg !126
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !70), !dbg !125
  %tobool = icmp eq i32 %dec, 0, !dbg !125
  br i1 %tobool, label %while.end, label %while.body, !dbg !125

while.end:                                        ; preds = %while.body, %entry
  %hash.0.lcssa = phi i32 [ 0, %entry ], [ %add, %while.body ]
  ret i32 %hash.0.lcssa, !dbg !128
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @Util_HashStore(%struct.T_HASH*, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_NamesStoreVariable(i8* %name, i32 %vnum, i32 %gnum) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !31), !dbg !129
  tail call void @llvm.dbg.value(metadata !{i32 %vnum}, i64 0, metadata !32), !dbg !129
  tail call void @llvm.dbg.value(metadata !{i32 %gnum}, i64 0, metadata !33), !dbg !129
  %0 = load %struct.T_HASH** @VariableData, align 8, !dbg !130, !tbaa !105
  %tobool = icmp eq %struct.T_HASH* %0, null, !dbg !130
  br i1 %tobool, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %entry
  %call = tail call %struct.T_HASH* @Util_HashCreate(i32 64) #8, !dbg !131
  store %struct.T_HASH* %call, %struct.T_HASH** @VariableData, align 8, !dbg !131, !tbaa !105
  br label %if.end, !dbg !133

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.T_HASH* [ %0, %entry ], [ %call, %if.then ]
  %call2 = tail call noalias i8* @malloc(i64 8) #8, !dbg !134
  %tobool3 = icmp ne i8* %call2, null, !dbg !135
  %tobool4 = icmp ne %struct.T_HASH* %1, null, !dbg !135
  %or.cond = and i1 %tobool3, %tobool4, !dbg !135
  br i1 %or.cond, label %if.then5, label %if.end13, !dbg !135

if.then5:                                         ; preds = %if.end
  %vnum6 = bitcast i8* %call2 to i32*, !dbg !136
  store i32 %vnum, i32* %vnum6, align 4, !dbg !136, !tbaa !115
  %gnum7 = getelementptr inbounds i8* %call2, i64 4, !dbg !138
  %2 = bitcast i8* %gnum7 to i32*, !dbg !138
  store i32 %gnum, i32* %2, align 4, !dbg !138, !tbaa !115
  %call8 = tail call i64 @strlen(i8* %name) #9, !dbg !139
  %conv = trunc i64 %call8 to i32, !dbg !139
  %call9 = tail call fastcc i32 @CaseIndependentHash(i32 %conv, i8* %name) #10, !dbg !139
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !35), !dbg !139
  %call12 = tail call i32 @Util_HashStore(%struct.T_HASH* %1, i32 %conv, i8* %name, i32 %call9, i8* %call2) #8, !dbg !140
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !34), !dbg !140
  br label %if.end13, !dbg !141

if.end13:                                         ; preds = %if.end, %if.then5
  %retval1.0 = phi i32 [ %call12, %if.then5 ], [ -1, %if.end ]
  ret i32 %retval1.0, !dbg !142
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_NamesRetrieveGroupNum(i8* %gname, i32* nocapture %gnum) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %gname}, i64 0, metadata !48), !dbg !143
  tail call void @llvm.dbg.value(metadata !{i32* %gnum}, i64 0, metadata !49), !dbg !143
  %0 = load %struct.T_HASH** @GroupData, align 8, !dbg !144, !tbaa !105
  %tobool = icmp eq %struct.T_HASH* %0, null, !dbg !144
  br i1 %tobool, label %if.end10, label %if.then, !dbg !144

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* %gname) #9, !dbg !145
  %conv = trunc i64 %call to i32, !dbg !145
  %call2 = tail call fastcc i32 @CaseIndependentHash(i32 %conv, i8* %gname) #10, !dbg !145
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !51), !dbg !145
  %call5 = tail call i8* @Util_HashData(%struct.T_HASH* %0, i32 %conv, i8* %gname, i32 %call2) #8, !dbg !147
  %tobool6 = icmp eq i8* %call5, null, !dbg !148
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !148

if.then7:                                         ; preds = %if.then
  %gnum8 = bitcast i8* %call5 to i32*, !dbg !149
  %1 = load i32* %gnum8, align 4, !dbg !149, !tbaa !115
  store i32 %1, i32* %gnum, align 4, !dbg !149, !tbaa !115
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !50), !dbg !151
  br label %if.end10, !dbg !152

if.end10:                                         ; preds = %entry, %if.then, %if.then7
  %retval1.0 = phi i32 [ 0, %if.then7 ], [ -1, %if.then ], [ -2, %entry ]
  ret i32 %retval1.0, !dbg !153
}

; Function Attrs: optsize
declare i8* @Util_HashData(%struct.T_HASH*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_NamesRetrieveVariableNum(i8* %name, i32* nocapture %vnum, i32* nocapture %gnum) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !57), !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32* %vnum}, i64 0, metadata !58), !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32* %gnum}, i64 0, metadata !59), !dbg !154
  %0 = load %struct.T_HASH** @VariableData, align 8, !dbg !155, !tbaa !105
  %tobool = icmp eq %struct.T_HASH* %0, null, !dbg !155
  br i1 %tobool, label %if.end11, label %if.then, !dbg !155

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* %name) #9, !dbg !156
  %conv = trunc i64 %call to i32, !dbg !156
  %call2 = tail call fastcc i32 @CaseIndependentHash(i32 %conv, i8* %name) #10, !dbg !156
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !61), !dbg !156
  %call5 = tail call i8* @Util_HashData(%struct.T_HASH* %0, i32 %conv, i8* %name, i32 %call2) #8, !dbg !158
  %tobool6 = icmp eq i8* %call5, null, !dbg !159
  br i1 %tobool6, label %if.end11, label %if.then7, !dbg !159

if.then7:                                         ; preds = %if.then
  %vnum8 = bitcast i8* %call5 to i32*, !dbg !160
  %1 = load i32* %vnum8, align 4, !dbg !160, !tbaa !115
  store i32 %1, i32* %vnum, align 4, !dbg !160, !tbaa !115
  %gnum9 = getelementptr inbounds i8* %call5, i64 4, !dbg !162
  %2 = bitcast i8* %gnum9 to i32*, !dbg !162
  %3 = load i32* %2, align 4, !dbg !162, !tbaa !115
  store i32 %3, i32* %gnum, align 4, !dbg !162, !tbaa !115
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !60), !dbg !163
  br label %if.end11, !dbg !164

if.end11:                                         ; preds = %entry, %if.then, %if.then7
  %retval1.0 = phi i32 [ 0, %if.then7 ], [ -1, %if.then ], [ -2, %entry ]
  ret i32 %retval1.0, !dbg !165
}

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_toupper_loc() #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #7

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !75, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !27, metadata !43, metadata !53, metadata !63}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_Names_c", metadata !"CCTKi_version_main_Names_c", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_Names_c, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [CCTKi_version_main_Names_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_NamesStoreGroup", metadata !"CCTKi_NamesStoreGroup", metadata !"", i32 96, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @CCTKi_NamesStoreGroup, null, null, metadata !15, i32 97} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 97] [CCTKi_NamesStoreGroup]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !8, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !21}
!16 = metadata !{i32 786689, metadata !11, metadata !"gname", metadata !5, i32 16777312, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname] [line 96]
!17 = metadata !{i32 786689, metadata !11, metadata !"gnum", metadata !5, i32 33554528, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnum] [line 96]
!18 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 98, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 98]
!19 = metadata !{i32 786688, metadata !11, metadata !"hash", metadata !5, i32 100, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 100]
!20 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!21 = metadata !{i32 786688, metadata !11, metadata !"data", metadata !5, i32 102, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 102]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iGroupData]
!23 = metadata !{i32 786454, metadata !1, null, metadata !"iGroupData", i32 33, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [iGroupData] [line 33, size 0, align 0, offset 0] [from IGroupData]
!24 = metadata !{i32 786451, metadata !1, null, metadata !"IGroupData", i32 30, i64 32, i64 32, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [IGroupData] [line 30, size 32, align 32, offset 0] [from ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786445, metadata !1, metadata !24, metadata !"gnum", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [gnum] [line 32, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_NamesStoreVariable", metadata !"CCTKi_NamesStoreVariable", metadata !"", i32 171, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @CCTKi_NamesStoreVariable, null, null, metadata !30, i32 172} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 172] [CCTKi_NamesStoreVariable]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !14, metadata !8, metadata !14, metadata !14}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!31 = metadata !{i32 786689, metadata !27, metadata !"name", metadata !5, i32 16777387, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 171]
!32 = metadata !{i32 786689, metadata !27, metadata !"vnum", metadata !5, i32 33554603, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vnum] [line 171]
!33 = metadata !{i32 786689, metadata !27, metadata !"gnum", metadata !5, i32 50331819, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnum] [line 171]
!34 = metadata !{i32 786688, metadata !27, metadata !"retval", metadata !5, i32 173, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 173]
!35 = metadata !{i32 786688, metadata !27, metadata !"hash", metadata !5, i32 175, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 175]
!36 = metadata !{i32 786688, metadata !27, metadata !"data", metadata !5, i32 177, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 177]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iVariableData]
!38 = metadata !{i32 786454, metadata !1, null, metadata !"iVariableData", i32 39, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [iVariableData] [line 39, size 0, align 0, offset 0] [from IVariableData]
!39 = metadata !{i32 786451, metadata !1, null, metadata !"IVariableData", i32 35, i64 64, i64 32, i32 0, i32 0, null, metadata !40, i32 0, null, null} ; [ DW_TAG_structure_type ] [IVariableData] [line 35, size 64, align 32, offset 0] [from ]
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 786445, metadata !1, metadata !39, metadata !"vnum", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [vnum] [line 37, size 32, align 32, offset 0] [from int]
!42 = metadata !{i32 786445, metadata !1, metadata !39, metadata !"gnum", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [gnum] [line 38, size 32, align 32, offset 32] [from int]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_NamesRetrieveGroupNum", metadata !"CCTKi_NamesRetrieveGroupNum", metadata !"", i32 241, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @CCTKi_NamesRetrieveGroupNum, null, null, metadata !47, i32 242} ; [ DW_TAG_subprogram ] [line 241] [def] [scope 242] [CCTKi_NamesRetrieveGroupNum]
!44 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{metadata !14, metadata !8, metadata !46}
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!48 = metadata !{i32 786689, metadata !43, metadata !"gname", metadata !5, i32 16777457, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname] [line 241]
!49 = metadata !{i32 786689, metadata !43, metadata !"gnum", metadata !5, i32 33554673, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnum] [line 241]
!50 = metadata !{i32 786688, metadata !43, metadata !"retval", metadata !5, i32 243, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 243]
!51 = metadata !{i32 786688, metadata !43, metadata !"hash", metadata !5, i32 244, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 244]
!52 = metadata !{i32 786688, metadata !43, metadata !"data", metadata !5, i32 246, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 246]
!53 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_NamesRetrieveVariableNum", metadata !"CCTKi_NamesRetrieveVariableNum", metadata !"", i32 313, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*)* @CCTKi_NamesRetrieveVariableNum, null, null, metadata !56, i32 314} ; [ DW_TAG_subprogram ] [line 313] [def] [scope 314] [CCTKi_NamesRetrieveVariableNum]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{metadata !14, metadata !8, metadata !46, metadata !46}
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!57 = metadata !{i32 786689, metadata !53, metadata !"name", metadata !5, i32 16777529, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 313]
!58 = metadata !{i32 786689, metadata !53, metadata !"vnum", metadata !5, i32 33554745, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vnum] [line 313]
!59 = metadata !{i32 786689, metadata !53, metadata !"gnum", metadata !5, i32 50331961, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnum] [line 313]
!60 = metadata !{i32 786688, metadata !53, metadata !"retval", metadata !5, i32 315, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 315]
!61 = metadata !{i32 786688, metadata !53, metadata !"hash", metadata !5, i32 316, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 316]
!62 = metadata !{i32 786688, metadata !53, metadata !"data", metadata !5, i32 318, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 318]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CaseIndependentHash", metadata !"CaseIndependentHash", metadata !"", i32 385, metadata !64, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*)* @CaseIndependentHash, null, null, metadata !66, i32 387} ; [ DW_TAG_subprogram ] [line 385] [local] [def] [scope 387] [CaseIndependentHash]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !20, metadata !20, metadata !8}
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!67 = metadata !{i32 786689, metadata !63, metadata !"klen", metadata !5, i32 16777601, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [klen] [line 385]
!68 = metadata !{i32 786689, metadata !63, metadata !"key", metadata !5, i32 33554818, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 386]
!69 = metadata !{i32 786688, metadata !63, metadata !"hash", metadata !5, i32 388, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 388]
!70 = metadata !{i32 786688, metadata !63, metadata !"i", metadata !5, i32 389, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 389]
!71 = metadata !{i32 786688, metadata !63, metadata !"pos", metadata !5, i32 390, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 390]
!72 = metadata !{i32 786688, metadata !73, metadata !"__res", metadata !5, i32 399, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 399]
!73 = metadata !{i32 786443, metadata !1, metadata !74, i32 399, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!74 = metadata !{i32 786443, metadata !1, metadata !63, i32 398, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!75 = metadata !{metadata !76, metadata !100, metadata !101}
!76 = metadata !{i32 786484, i32 0, null, metadata !"VariableData", metadata !"VariableData", metadata !"", metadata !5, i32 57, metadata !77, i32 1, i32 1, %struct.T_HASH** @VariableData, null} ; [ DW_TAG_variable ] [VariableData] [line 57] [local] [def]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uHash]
!78 = metadata !{i32 786454, metadata !1, null, metadata !"uHash", i32 39, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [uHash] [line 39, size 0, align 0, offset 0] [from T_HASH]
!79 = metadata !{i32 786451, metadata !80, null, metadata !"T_HASH", i32 32, i64 192, i64 64, i32 0, i32 0, null, metadata !81, i32 0, null, null} ; [ DW_TAG_structure_type ] [T_HASH] [line 32, size 192, align 64, offset 0] [from ]
!80 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/util_Hash.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!81 = metadata !{metadata !82, metadata !83, metadata !84, metadata !85}
!82 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"size", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [size] [line 34, size 32, align 32, offset 0] [from unsigned int]
!83 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"fill", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [fill] [line 35, size 32, align 32, offset 32] [from unsigned int]
!84 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"keys", i32 36, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [keys] [line 36, size 32, align 32, offset 64] [from unsigned int]
!85 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"array", i32 38, i64 64, i64 64, i64 128, i32 0, metadata !86} ; [ DW_TAG_member ] [array] [line 38, size 64, align 64, offset 128] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iHashEntry]
!88 = metadata !{i32 786454, metadata !80, null, metadata !"iHashEntry", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [iHashEntry] [line 30, size 0, align 0, offset 0] [from T_HASH_ENTRY]
!89 = metadata !{i32 786451, metadata !80, null, metadata !"T_HASH_ENTRY", i32 19, i64 320, i64 64, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_structure_type ] [T_HASH_ENTRY] [line 19, size 320, align 64, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !93, metadata !94, metadata !95, metadata !96, metadata !98}
!91 = metadata !{i32 786445, metadata !80, metadata !89, metadata !"last", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [last] [line 21, size 64, align 64, offset 0] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from T_HASH_ENTRY]
!93 = metadata !{i32 786445, metadata !80, metadata !89, metadata !"next", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [next] [line 22, size 64, align 64, offset 64] [from ]
!94 = metadata !{i32 786445, metadata !80, metadata !89, metadata !"hash", i32 24, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [hash] [line 24, size 32, align 32, offset 128] [from unsigned int]
!95 = metadata !{i32 786445, metadata !80, metadata !89, metadata !"klen", i32 26, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [klen] [line 26, size 32, align 32, offset 160] [from unsigned int]
!96 = metadata !{i32 786445, metadata !80, metadata !89, metadata !"key", i32 27, i64 64, i64 64, i64 192, i32 0, metadata !97} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 192] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!98 = metadata !{i32 786445, metadata !80, metadata !89, metadata !"data", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !99} ; [ DW_TAG_member ] [data] [line 29, size 64, align 64, offset 256] [from ]
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!100 = metadata !{i32 786484, i32 0, null, metadata !"GroupData", metadata !"GroupData", metadata !"", metadata !5, i32 56, metadata !77, i32 1, i32 1, %struct.T_HASH** @GroupData, null} ; [ DW_TAG_variable ] [GroupData] [line 56] [local] [def]
!101 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 22, metadata !8, i32 1, i32 1, null, null}
!102 = metadata !{i32 24, i32 0, metadata !4, null}
!103 = metadata !{i32 96, i32 0, metadata !11, null}
!104 = metadata !{i32 105, i32 0, metadata !11, null}
!105 = metadata !{metadata !"any pointer", metadata !106}
!106 = metadata !{metadata !"omnipotent char", metadata !107}
!107 = metadata !{metadata !"Simple C/C++ TBAA"}
!108 = metadata !{i32 107, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !11, i32 106, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!110 = metadata !{i32 108, i32 0, metadata !109, null}
!111 = metadata !{i32 111, i32 0, metadata !11, null}
!112 = metadata !{i32 114, i32 0, metadata !11, null}
!113 = metadata !{i32 116, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !11, i32 115, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!115 = metadata !{metadata !"int", metadata !106}
!116 = metadata !{i32 118, i32 0, metadata !114, null}
!117 = metadata !{i32 120, i32 0, metadata !114, null}
!118 = metadata !{i32 121, i32 0, metadata !114, null}
!119 = metadata !{i32 127, i32 0, metadata !11, null}
!120 = metadata !{i32 385, i32 0, metadata !63, null}
!121 = metadata !{i32 386, i32 0, metadata !63, null}
!122 = metadata !{i32 392, i32 0, metadata !63, null}
!123 = metadata !{i32 393, i32 0, metadata !63, null}
!124 = metadata !{i32 395, i32 0, metadata !63, null}
!125 = metadata !{i32 397, i32 0, metadata !63, null}
!126 = metadata !{i32 399, i32 0, metadata !73, null}
!127 = metadata !{i32 399, i32 0, metadata !74, null}
!128 = metadata !{i32 406, i32 0, metadata !63, null}
!129 = metadata !{i32 171, i32 0, metadata !27, null}
!130 = metadata !{i32 180, i32 0, metadata !27, null}
!131 = metadata !{i32 182, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !27, i32 181, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!133 = metadata !{i32 183, i32 0, metadata !132, null}
!134 = metadata !{i32 186, i32 0, metadata !27, null}
!135 = metadata !{i32 189, i32 0, metadata !27, null}
!136 = metadata !{i32 191, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !27, i32 190, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!138 = metadata !{i32 192, i32 0, metadata !137, null}
!139 = metadata !{i32 194, i32 0, metadata !137, null}
!140 = metadata !{i32 196, i32 0, metadata !137, null}
!141 = metadata !{i32 197, i32 0, metadata !137, null}
!142 = metadata !{i32 203, i32 0, metadata !27, null}
!143 = metadata !{i32 241, i32 0, metadata !43, null}
!144 = metadata !{i32 248, i32 0, metadata !43, null}
!145 = metadata !{i32 250, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !43, i32 249, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!147 = metadata !{i32 252, i32 0, metadata !146, null}
!148 = metadata !{i32 254, i32 0, metadata !146, null}
!149 = metadata !{i32 256, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !146, i32 255, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!151 = metadata !{i32 257, i32 0, metadata !150, null}
!152 = metadata !{i32 258, i32 0, metadata !150, null}
!153 = metadata !{i32 269, i32 0, metadata !43, null}
!154 = metadata !{i32 313, i32 0, metadata !53, null}
!155 = metadata !{i32 320, i32 0, metadata !53, null}
!156 = metadata !{i32 322, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !53, i32 321, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!158 = metadata !{i32 324, i32 0, metadata !157, null}
!159 = metadata !{i32 326, i32 0, metadata !157, null}
!160 = metadata !{i32 328, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !157, i32 327, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c]
!162 = metadata !{i32 329, i32 0, metadata !161, null}
!163 = metadata !{i32 330, i32 0, metadata !161, null}
!164 = metadata !{i32 331, i32 0, metadata !161, null}
!165 = metadata !{i32 342, i32 0, metadata !53, null}
