; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in Network_init(%p,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str4 = private unnamed_addr constant [62 x i8] c"\0A fatal error in Network_setMessageInfo(%p,%d,%p)\0A bad input\0A\00", align 1
@stdout = external global %struct._IO_FILE*

; Function Attrs: nounwind optsize uwtable
define void @Network_init(%struct._Network* %network, i32 %nnode, i32 %narc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Network* %network}, i64 0, metadata !99), !dbg !112
  tail call void @llvm.dbg.value(metadata !{i32 %nnode}, i64 0, metadata !100), !dbg !113
  tail call void @llvm.dbg.value(metadata !{i32 %narc}, i64 0, metadata !101), !dbg !114
  %cmp = icmp eq %struct._Network* %network, null, !dbg !115
  %cmp1 = icmp slt i32 %nnode, 3, !dbg !115
  %or.cond = or i1 %cmp, %cmp1, !dbg !115
  %cmp3 = icmp slt i32 %narc, 0, !dbg !115
  %or.cond130 = or i1 %or.cond, %cmp3, !dbg !115
  br i1 %or.cond130, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !116, !tbaa !118
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, i32 %nnode, i32 %narc) #6, !dbg !116
  tail call void @exit(i32 -1) #7, !dbg !121
  unreachable, !dbg !121

if.end:                                           ; preds = %entry
  tail call void @Network_clearData(%struct._Network* %network) #6, !dbg !122
  %nnode4 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !123
  store i32 %nnode, i32* %nnode4, align 4, !dbg !123, !tbaa !124
  %cmp5 = icmp sgt i32 %nnode, 0, !dbg !125
  br i1 %cmp5, label %if.then6, label %if.else15, !dbg !125

if.then6:                                         ; preds = %if.end
  %conv = sext i32 %nnode to i64, !dbg !126
  %mul = shl nsw i64 %conv, 3, !dbg !126
  %call7 = tail call noalias i8* @malloc(i64 %mul) #6, !dbg !126
  %1 = bitcast i8* %call7 to %struct._Arc**, !dbg !126
  %inheads = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !126
  store %struct._Arc** %1, %struct._Arc*** %inheads, align 8, !dbg !126, !tbaa !118
  %cmp8 = icmp eq i8* %call7, null, !dbg !126
  br i1 %cmp8, label %if.then10, label %if.then28, !dbg !126

if.then10:                                        ; preds = %if.then6
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !128, !tbaa !118
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 48, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !128
  tail call void @exit(i32 -1) #7, !dbg !128
  unreachable, !dbg !128

if.else15:                                        ; preds = %if.end
  %cmp16 = icmp eq i32 %nnode, 0, !dbg !125
  br i1 %cmp16, label %if.then43, label %if.else20, !dbg !125

if.else20:                                        ; preds = %if.else15
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !130, !tbaa !118
  %conv21 = sext i32 %nnode to i64, !dbg !130
  %mul22 = shl nsw i64 %conv21, 3, !dbg !130
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i64 %mul22, i32 48, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !130
  tail call void @exit(i32 -1) #7, !dbg !130
  unreachable, !dbg !130

if.then28:                                        ; preds = %if.then6
  %call31 = tail call noalias i8* @malloc(i64 %mul) #6, !dbg !132
  %4 = bitcast i8* %call31 to %struct._Arc**, !dbg !132
  %outheads = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !132
  store %struct._Arc** %4, %struct._Arc*** %outheads, align 8, !dbg !132, !tbaa !118
  %cmp32 = icmp eq i8* %call31, null, !dbg !132
  br i1 %cmp32, label %if.then34, label %for.cond.preheader, !dbg !132

if.then34:                                        ; preds = %if.then28
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !134, !tbaa !118
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 49, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !134
  tail call void @exit(i32 -1) #7, !dbg !134
  unreachable, !dbg !134

if.then43:                                        ; preds = %if.else15
  %inheads19 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !136
  %6 = bitcast %struct._Arc*** %inheads19 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false), !dbg !138
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then28, %if.then43
  %7 = phi %struct._Arc** [ %4, %if.then28 ], [ null, %if.then43 ]
  br i1 %cmp5, label %for.body.lr.ph, label %for.end, !dbg !140

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %outheads53 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !142
  %inheads55 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !142
  br label %for.body, !dbg !140

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %8 = phi %struct._Arc** [ %7, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds %struct._Arc** %8, i64 %indvars.iv, !dbg !142
  store %struct._Arc* null, %struct._Arc** %arrayidx, align 8, !dbg !142, !tbaa !118
  %9 = load %struct._Arc*** %inheads55, align 8, !dbg !142, !tbaa !118
  %arrayidx56 = getelementptr inbounds %struct._Arc** %9, i64 %indvars.iv, !dbg !142
  store %struct._Arc* null, %struct._Arc** %arrayidx56, align 8, !dbg !142, !tbaa !118
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !140
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !140
  %exitcond = icmp eq i32 %lftr.wideiv, %nnode, !dbg !140
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !140

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct._Arc*** %outheads53, align 8, !dbg !142, !tbaa !118
  br label %for.body, !dbg !140

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %cmp57 = icmp sgt i32 %narc, 0, !dbg !144
  br i1 %cmp57, label %if.then59, label %if.end93, !dbg !144

if.then59:                                        ; preds = %for.end
  %call60 = tail call noalias i8* @malloc(i64 24) #6, !dbg !145
  %10 = bitcast i8* %call60 to %struct._ArcChunk*, !dbg !145
  tail call void @llvm.dbg.value(metadata !{%struct._ArcChunk* %10}, i64 0, metadata !103), !dbg !145
  %cmp61 = icmp eq i8* %call60, null, !dbg !145
  br i1 %cmp61, label %if.then63, label %if.then69, !dbg !145

if.then63:                                        ; preds = %if.then59
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !147, !tbaa !118
  %call64 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 24, i32 60, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !147
  tail call void @exit(i32 -1) #7, !dbg !147
  unreachable, !dbg !147

if.then69:                                        ; preds = %if.then59
  %conv70 = sext i32 %narc to i64, !dbg !149
  %mul71 = shl nsw i64 %conv70, 5, !dbg !149
  %call72 = tail call noalias i8* @malloc(i64 %mul71) #6, !dbg !149
  %12 = bitcast i8* %call72 to %struct._Arc*, !dbg !149
  %base = getelementptr inbounds i8* %call60, i64 8, !dbg !149
  %13 = bitcast i8* %base to %struct._Arc**, !dbg !149
  store %struct._Arc* %12, %struct._Arc** %13, align 8, !dbg !149, !tbaa !118
  %cmp73 = icmp eq i8* %call72, null, !dbg !149
  br i1 %cmp73, label %if.then75, label %if.end91, !dbg !149

if.then75:                                        ; preds = %if.then69
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !151, !tbaa !118
  %call78 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul71, i32 61, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !151
  tail call void @exit(i32 -1) #7, !dbg !151
  unreachable, !dbg !151

if.end91:                                         ; preds = %if.then69
  %size = bitcast i8* %call60 to i32*, !dbg !153
  store i32 %narc, i32* %size, align 4, !dbg !153, !tbaa !124
  %inuse = getelementptr inbounds i8* %call60, i64 4, !dbg !154
  %15 = bitcast i8* %inuse to i32*, !dbg !154
  store i32 0, i32* %15, align 4, !dbg !154, !tbaa !124
  %next = getelementptr inbounds i8* %call60, i64 16, !dbg !155
  %16 = bitcast i8* %next to %struct._ArcChunk**, !dbg !155
  store %struct._ArcChunk* null, %struct._ArcChunk** %16, align 8, !dbg !155, !tbaa !118
  %chunk92 = getelementptr inbounds %struct._Network* %network, i64 0, i32 5, !dbg !156
  store %struct._ArcChunk* %10, %struct._ArcChunk** %chunk92, align 8, !dbg !156, !tbaa !118
  br label %if.end93, !dbg !157

if.end93:                                         ; preds = %if.end91, %for.end
  ret void, !dbg !158
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Network_clearData(%struct._Network*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize uwtable
define void @Network_setMessageInfo(%struct._Network* %network, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Network* %network}, i64 0, metadata !109), !dbg !159
  tail call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !110), !dbg !160
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !111), !dbg !161
  %cmp = icmp eq %struct._Network* %network, null, !dbg !162
  br i1 %cmp, label %if.then, label %if.end, !dbg !162

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !163, !tbaa !118
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str4, i64 0, i64 0), %struct._Network* null, i32 %msglvl, %struct._IO_FILE* %msgFile) #6, !dbg !163
  tail call void @exit(i32 -1) #7, !dbg !165
  unreachable, !dbg !165

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, -1, !dbg !166
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !166

if.then2:                                         ; preds = %if.end
  %msglvl3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6, !dbg !167
  store i32 %msglvl, i32* %msglvl3, align 4, !dbg !167, !tbaa !124
  br label %if.end4, !dbg !169

if.end4:                                          ; preds = %if.then2, %if.end
  %cmp5 = icmp eq %struct._IO_FILE* %msgFile, null, !dbg !170
  br i1 %cmp5, label %if.else, label %if.then6, !dbg !170

if.then6:                                         ; preds = %if.end4
  %msgFile7 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !171
  store %struct._IO_FILE* %msgFile, %struct._IO_FILE** %msgFile7, align 8, !dbg !171, !tbaa !118
  br label %if.end9, !dbg !173

if.else:                                          ; preds = %if.end4
  %1 = load %struct._IO_FILE** @stdout, align 8, !dbg !174, !tbaa !118
  %msgFile8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !174
  store %struct._IO_FILE* %1, %struct._IO_FILE** %msgFile8, align 8, !dbg !174, !tbaa !118
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  ret void, !dbg !176
}

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

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !105}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Network_init", metadata !"Network_init", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Network*, i32, i32)* @Network_init, null, null, metadata !98, i32 24} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 24] [Network_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Network]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Network", i32 12, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Network] [line 12, size 0, align 0, offset 0] [from _Network]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Network", i32 34, i64 448, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Network] [line 34, size 448, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../Network.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !29, metadata !30, metadata !39, metadata !40}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nnode", i32 35, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nnode] [line 35, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"narc", i32 36, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [narc] [line 36, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ntrav", i32 37, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [ntrav] [line 37, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inheads", i32 38, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [inheads] [line 38, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Arc]
!20 = metadata !{i32 786454, metadata !11, null, metadata !"Arc", i32 13, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [Arc] [line 13, size 0, align 0, offset 0] [from _Arc]
!21 = metadata !{i32 786451, metadata !11, null, metadata !"_Arc", i32 53, i64 256, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Arc] [line 53, size 256, align 64, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28}
!23 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"first", i32 54, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [first] [line 54, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"second", i32 55, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [second] [line 55, size 32, align 32, offset 32] [from int]
!25 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"capacity", i32 56, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [capacity] [line 56, size 32, align 32, offset 64] [from int]
!26 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"flow", i32 57, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [flow] [line 57, size 32, align 32, offset 96] [from int]
!27 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"nextOut", i32 58, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [nextOut] [line 58, size 64, align 64, offset 128] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !21, metadata !"nextIn", i32 59, i64 64, i64 64, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ] [nextIn] [line 59, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"outheads", i32 39, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [outheads] [line 39, size 64, align 64, offset 192] [from ]
!30 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"chunk", i32 40, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [chunk] [line 40, size 64, align 64, offset 256] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ArcChunk]
!32 = metadata !{i32 786454, metadata !11, null, metadata !"ArcChunk", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [ArcChunk] [line 14, size 0, align 0, offset 0] [from _ArcChunk]
!33 = metadata !{i32 786451, metadata !11, null, metadata !"_ArcChunk", i32 74, i64 192, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ArcChunk] [line 74, size 192, align 64, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38}
!35 = metadata !{i32 786445, metadata !11, metadata !33, metadata !"size", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 75, size 32, align 32, offset 0] [from int]
!36 = metadata !{i32 786445, metadata !11, metadata !33, metadata !"inuse", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 76, size 32, align 32, offset 32] [from int]
!37 = metadata !{i32 786445, metadata !11, metadata !33, metadata !"base", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [base] [line 77, size 64, align 64, offset 64] [from ]
!38 = metadata !{i32 786445, metadata !11, metadata !33, metadata !"next", i32 78, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [next] [line 78, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"msglvl", i32 41, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [msglvl] [line 41, size 32, align 32, offset 320] [from int]
!40 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"msgFile", i32 42, i64 64, i64 64, i64 384, i32 0, metadata !41} ; [ DW_TAG_member ] [msgFile] [line 42, size 64, align 64, offset 384] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!42 = metadata !{i32 786454, metadata !11, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!43 = metadata !{i32 786451, metadata !44, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!44 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!45 = metadata !{metadata !46, metadata !47, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !76, metadata !78, metadata !82, metadata !84, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !93, metadata !94}
!46 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!47 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!49 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!50 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!51 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!52 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!53 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!54 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!55 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!56 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!57 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!58 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!59 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !48} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!60 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !61} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!62 = metadata !{i32 786451, metadata !44, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!63 = metadata !{metadata !64, metadata !65, metadata !67}
!64 = metadata !{i32 786445, metadata !44, metadata !62, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!65 = metadata !{i32 786445, metadata !44, metadata !62, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!67 = metadata !{i32 786445, metadata !44, metadata !62, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!68 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !66} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!69 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!70 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!71 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !72} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!72 = metadata !{i32 786454, metadata !44, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!73 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!74 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !75} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!75 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!76 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !77} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!77 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!78 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !79} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!79 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !49, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!82 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !83} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!84 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !85} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!85 = metadata !{i32 786454, metadata !44, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!86 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !83} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!87 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !83} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!88 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !83} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!89 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !83} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!90 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !91} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!91 = metadata !{i32 786454, metadata !44, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!92 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!93 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!94 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !95} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!95 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !49, metadata !96, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!96 = metadata !{metadata !97}
!97 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103}
!99 = metadata !{i32 786689, metadata !4, metadata !"network", metadata !5, i32 16777237, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [network] [line 21]
!100 = metadata !{i32 786689, metadata !4, metadata !"nnode", metadata !5, i32 33554454, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnode] [line 22]
!101 = metadata !{i32 786689, metadata !4, metadata !"narc", metadata !5, i32 50331671, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [narc] [line 23]
!102 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 25, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 25]
!103 = metadata !{i32 786688, metadata !104, metadata !"chunk", metadata !5, i32 54, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chunk] [line 54]
!104 = metadata !{i32 786443, metadata !1, metadata !4, i32 53, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Network_setMessageInfo", metadata !"Network_setMessageInfo", metadata !"", i32 78, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Network*, i32, %struct._IO_FILE*)* @Network_setMessageInfo, null, null, metadata !108, i32 82} ; [ DW_TAG_subprogram ] [line 78] [def] [scope 82] [Network_setMessageInfo]
!106 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{null, metadata !8, metadata !14, metadata !41}
!108 = metadata !{metadata !109, metadata !110, metadata !111}
!109 = metadata !{i32 786689, metadata !105, metadata !"network", metadata !5, i32 16777295, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [network] [line 79]
!110 = metadata !{i32 786689, metadata !105, metadata !"msglvl", metadata !5, i32 33554512, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 80]
!111 = metadata !{i32 786689, metadata !105, metadata !"msgFile", metadata !5, i32 50331729, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 81]
!112 = metadata !{i32 21, i32 0, metadata !4, null}
!113 = metadata !{i32 22, i32 0, metadata !4, null}
!114 = metadata !{i32 23, i32 0, metadata !4, null}
!115 = metadata !{i32 31, i32 0, metadata !4, null}
!116 = metadata !{i32 32, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!118 = metadata !{metadata !"any pointer", metadata !119}
!119 = metadata !{metadata !"omnipotent char", metadata !120}
!120 = metadata !{metadata !"Simple C/C++ TBAA"}
!121 = metadata !{i32 34, i32 0, metadata !117, null}
!122 = metadata !{i32 41, i32 0, metadata !4, null}
!123 = metadata !{i32 42, i32 0, metadata !4, null}
!124 = metadata !{metadata !"int", metadata !119}
!125 = metadata !{i32 48, i32 0, metadata !4, null}
!126 = metadata !{i32 48, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!128 = metadata !{i32 48, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !127, i32 48, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!130 = metadata !{i32 48, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!132 = metadata !{i32 49, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !4, i32 49, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!134 = metadata !{i32 49, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !133, i32 49, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!136 = metadata !{i32 48, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!138 = metadata !{i32 49, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !4, i32 49, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!140 = metadata !{i32 50, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !4, i32 50, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!142 = metadata !{i32 51, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !141, i32 50, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!144 = metadata !{i32 53, i32 0, metadata !4, null}
!145 = metadata !{i32 60, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !104, i32 60, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!147 = metadata !{i32 60, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !146, i32 60, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!149 = metadata !{i32 61, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !104, i32 61, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!151 = metadata !{i32 61, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !150, i32 61, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!153 = metadata !{i32 62, i32 0, metadata !104, null}
!154 = metadata !{i32 63, i32 0, metadata !104, null}
!155 = metadata !{i32 64, i32 0, metadata !104, null}
!156 = metadata !{i32 65, i32 0, metadata !104, null}
!157 = metadata !{i32 66, i32 0, metadata !104, null}
!158 = metadata !{i32 67, i32 0, metadata !4, null}
!159 = metadata !{i32 79, i32 0, metadata !105, null}
!160 = metadata !{i32 80, i32 0, metadata !105, null}
!161 = metadata !{i32 81, i32 0, metadata !105, null}
!162 = metadata !{i32 88, i32 0, metadata !105, null}
!163 = metadata !{i32 89, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !105, i32 88, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!165 = metadata !{i32 91, i32 0, metadata !164, null}
!166 = metadata !{i32 93, i32 0, metadata !105, null}
!167 = metadata !{i32 94, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !105, i32 93, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!169 = metadata !{i32 95, i32 0, metadata !168, null}
!170 = metadata !{i32 96, i32 0, metadata !105, null}
!171 = metadata !{i32 97, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !105, i32 96, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!173 = metadata !{i32 98, i32 0, metadata !172, null}
!174 = metadata !{i32 99, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !105, i32 98, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c]
!176 = metadata !{i32 102, i32 0, metadata !105, null}
