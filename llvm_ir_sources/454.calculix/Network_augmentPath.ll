; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [59 x i8] c"\0A fatal error in Network_augmentPath(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"\0A\0A augment path\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"\0A    w = %d, v = %d\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"\0A   backward arc(%d,%d), flow = %d\00", align 1
@.str4 = private unnamed_addr constant [34 x i8] c"\0A   forward arc(%d,%d), flow = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Network_augmentPath(%struct._Network* %network, i32 %delta, i32* %pred) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Network* %network}, i64 0, metadata !100), !dbg !113
  tail call void @llvm.dbg.value(metadata !{i32 %delta}, i64 0, metadata !101), !dbg !114
  tail call void @llvm.dbg.value(metadata !{i32* %pred}, i64 0, metadata !102), !dbg !115
  %cmp = icmp eq %struct._Network* %network, null, !dbg !116
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !116

lor.lhs.false:                                    ; preds = %entry
  %nnode1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !116
  %0 = load i32* %nnode1, align 4, !dbg !116, !tbaa !117
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !108), !dbg !116
  %cmp2 = icmp slt i32 %0, 1, !dbg !116
  %cmp4 = icmp slt i32 %delta, 1, !dbg !116
  %or.cond = or i1 %cmp2, %cmp4, !dbg !116
  %cmp6 = icmp eq i32* %pred, null, !dbg !116
  %or.cond97 = or i1 %or.cond, %cmp6, !dbg !116
  br i1 %or.cond97, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !120, !tbaa !122
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, i32 %delta, i32* %pred) #5, !dbg !120
  tail call void @exit(i32 -1) #6, !dbg !123
  unreachable, !dbg !123

if.end:                                           ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !110), !dbg !124
  %sub = add nsw i32 %0, -1, !dbg !125
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !109), !dbg !125
  %inheads7 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !126
  %2 = load %struct._Arc*** %inheads7, align 8, !dbg !126, !tbaa !122
  tail call void @llvm.dbg.value(metadata !{%struct._Arc** %2}, i64 0, metadata !104), !dbg !126
  %outheads8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !127
  %3 = load %struct._Arc*** %outheads8, align 8, !dbg !127, !tbaa !122
  tail call void @llvm.dbg.value(metadata !{%struct._Arc** %3}, i64 0, metadata !105), !dbg !127
  %msglvl9 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6, !dbg !128
  %4 = load i32* %msglvl9, align 4, !dbg !128, !tbaa !117
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !107), !dbg !128
  %msgFile10 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !129
  %5 = load %struct._IO_FILE** %msgFile10, align 8, !dbg !129, !tbaa !122
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %5}, i64 0, metadata !106), !dbg !129
  %cmp11 = icmp sgt i32 %4, 2, !dbg !130
  br i1 %cmp11, label %if.then12, label %while.body.preheader, !dbg !130

if.then12:                                        ; preds = %if.end
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %5), !dbg !131
  %call14 = tail call i32 @fflush(%struct._IO_FILE* %5) #5, !dbg !133
  br label %while.body.preheader, !dbg !134

while.body.preheader:                             ; preds = %if.then12, %if.end
  %ntrav39 = getelementptr inbounds %struct._Network* %network, i64 0, i32 2, !dbg !135
  br label %while.body, !dbg !140

while.body:                                       ; preds = %while.body.preheader, %if.end52
  %w.0 = phi i32 [ %7, %if.end52 ], [ %sub, %while.body.preheader ]
  %idxprom = sext i32 %w.0 to i64, !dbg !140
  %arrayidx = getelementptr inbounds i32* %pred, i64 %idxprom, !dbg !140
  %7 = load i32* %arrayidx, align 4, !dbg !140, !tbaa !117
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !111), !dbg !140
  br i1 %cmp11, label %if.then17, label %if.end19, !dbg !141

if.then17:                                        ; preds = %while.body
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0), i32 %w.0, i32 %7) #5, !dbg !142
  br label %if.end19, !dbg !144

if.end19:                                         ; preds = %if.then17, %while.body
  %idxprom20 = sext i32 %7 to i64, !dbg !145
  %arrayidx21 = getelementptr inbounds %struct._Arc** %2, i64 %idxprom20, !dbg !145
  %arc.099 = load %struct._Arc** %arrayidx21, align 8, !dbg !145
  %cond100 = icmp eq %struct._Arc* %arc.099, null, !dbg !145
  br i1 %cond100, label %if.then33, label %for.body.lr.ph, !dbg !145

for.body.lr.ph:                                   ; preds = %if.end19
  %.pre108 = load i32* %ntrav39, align 4, !dbg !147, !tbaa !117
  br label %for.body, !dbg !145

for.cond:                                         ; preds = %for.body
  %nextIn = getelementptr inbounds %struct._Arc* %arc.0101, i64 0, i32 5, !dbg !145
  %arc.0 = load %struct._Arc** %nextIn, align 8, !dbg !145
  %cond = icmp eq %struct._Arc* %arc.0, null, !dbg !145
  br i1 %cond, label %if.then33, label %for.body, !dbg !145

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %8 = phi i32 [ %.pre108, %for.body.lr.ph ], [ %inc, %for.cond ], !dbg !147
  %arc.0101 = phi %struct._Arc* [ %arc.099, %for.body.lr.ph ], [ %arc.0, %for.cond ]
  %inc = add nsw i32 %8, 1, !dbg !147
  store i32 %inc, i32* %ntrav39, align 4, !dbg !147, !tbaa !117
  %first = getelementptr inbounds %struct._Arc* %arc.0101, i64 0, i32 0, !dbg !149
  %9 = load i32* %first, align 4, !dbg !149, !tbaa !117
  %cmp23 = icmp eq i32 %9, %w.0, !dbg !149
  br i1 %cmp23, label %if.then24, label %for.cond, !dbg !149

if.then24:                                        ; preds = %for.body
  %flow = getelementptr inbounds %struct._Arc* %arc.0101, i64 0, i32 3, !dbg !150
  %10 = load i32* %flow, align 4, !dbg !150, !tbaa !117
  %sub25 = sub nsw i32 %10, %delta, !dbg !150
  store i32 %sub25, i32* %flow, align 4, !dbg !150, !tbaa !117
  br i1 %cmp11, label %if.then27, label %for.end, !dbg !152

if.then27:                                        ; preds = %if.then24
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8]* @.str3, i64 0, i64 0), i32 %w.0, i32 %7, i32 %sub25) #5, !dbg !153
  br label %for.end, !dbg !155

for.end:                                          ; preds = %if.then24, %if.then27
  %cmp32 = icmp eq %struct._Arc* %arc.0101, null, !dbg !156
  br i1 %cmp32, label %if.then33, label %if.end52, !dbg !156

if.then33:                                        ; preds = %if.end19, %for.cond, %for.end
  %arrayidx35 = getelementptr inbounds %struct._Arc** %3, i64 %idxprom20, !dbg !157
  %arc.1103 = load %struct._Arc** %arrayidx35, align 8, !dbg !157
  %cmp37104 = icmp eq %struct._Arc* %arc.1103, null, !dbg !157
  br i1 %cmp37104, label %if.end52, label %for.body38.lr.ph, !dbg !157

for.body38.lr.ph:                                 ; preds = %if.then33
  %.pre = load i32* %ntrav39, align 4, !dbg !135, !tbaa !117
  br label %for.body38, !dbg !157

for.cond36:                                       ; preds = %for.body38
  %nextOut = getelementptr inbounds %struct._Arc* %arc.1105, i64 0, i32 4, !dbg !157
  %arc.1 = load %struct._Arc** %nextOut, align 8, !dbg !157
  %cmp37 = icmp eq %struct._Arc* %arc.1, null, !dbg !157
  br i1 %cmp37, label %if.end52, label %for.body38, !dbg !157

for.body38:                                       ; preds = %for.body38.lr.ph, %for.cond36
  %11 = phi i32 [ %.pre, %for.body38.lr.ph ], [ %inc40, %for.cond36 ], !dbg !135
  %arc.1105 = phi %struct._Arc* [ %arc.1103, %for.body38.lr.ph ], [ %arc.1, %for.cond36 ]
  %inc40 = add nsw i32 %11, 1, !dbg !135
  store i32 %inc40, i32* %ntrav39, align 4, !dbg !135, !tbaa !117
  %second = getelementptr inbounds %struct._Arc* %arc.1105, i64 0, i32 1, !dbg !158
  %12 = load i32* %second, align 4, !dbg !158, !tbaa !117
  %cmp41 = icmp eq i32 %12, %w.0, !dbg !158
  br i1 %cmp41, label %if.then42, label %for.cond36, !dbg !158

if.then42:                                        ; preds = %for.body38
  %flow43 = getelementptr inbounds %struct._Arc* %arc.1105, i64 0, i32 3, !dbg !159
  %13 = load i32* %flow43, align 4, !dbg !159, !tbaa !117
  %add = add nsw i32 %13, %delta, !dbg !159
  store i32 %add, i32* %flow43, align 4, !dbg !159, !tbaa !117
  br i1 %cmp11, label %if.then45, label %if.end52, !dbg !161

if.then45:                                        ; preds = %if.then42
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i32 %7, i32 %w.0, i32 %add) #5, !dbg !162
  br label %if.end52, !dbg !164

if.end52:                                         ; preds = %if.then33, %for.cond36, %if.then45, %if.then42, %for.end
  %cmp53 = icmp eq i32 %7, 0, !dbg !165
  br i1 %cmp53, label %while.end, label %while.body, !dbg !165

while.end:                                        ; preds = %if.end52
  ret void, !dbg !166
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Network_augmentPath", metadata !"Network_augmentPath", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Network*, i32, i32*)* @Network_augmentPath, null, null, metadata !99, i32 19} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 19] [Network_augmentPath]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !98}
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
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112}
!100 = metadata !{i32 786689, metadata !4, metadata !"network", metadata !5, i32 16777232, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [network] [line 16]
!101 = metadata !{i32 786689, metadata !4, metadata !"delta", metadata !5, i32 33554449, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delta] [line 17]
!102 = metadata !{i32 786689, metadata !4, metadata !"pred", metadata !5, i32 50331666, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pred] [line 18]
!103 = metadata !{i32 786688, metadata !4, metadata !"arc", metadata !5, i32 20, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arc] [line 20]
!104 = metadata !{i32 786688, metadata !4, metadata !"inheads", metadata !5, i32 21, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inheads] [line 21]
!105 = metadata !{i32 786688, metadata !4, metadata !"outheads", metadata !5, i32 21, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outheads] [line 21]
!106 = metadata !{i32 786688, metadata !4, metadata !"msgFile", metadata !5, i32 22, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msgFile] [line 22]
!107 = metadata !{i32 786688, metadata !4, metadata !"msglvl", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msglvl] [line 23]
!108 = metadata !{i32 786688, metadata !4, metadata !"nnode", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnode] [line 23]
!109 = metadata !{i32 786688, metadata !4, metadata !"sink", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sink] [line 23]
!110 = metadata !{i32 786688, metadata !4, metadata !"source", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [source] [line 23]
!111 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 23]
!112 = metadata !{i32 786688, metadata !4, metadata !"w", metadata !5, i32 23, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 23]
!113 = metadata !{i32 16, i32 0, metadata !4, null}
!114 = metadata !{i32 17, i32 0, metadata !4, null}
!115 = metadata !{i32 18, i32 0, metadata !4, null}
!116 = metadata !{i32 29, i32 0, metadata !4, null}
!117 = metadata !{metadata !"int", metadata !118}
!118 = metadata !{metadata !"omnipotent char", metadata !119}
!119 = metadata !{metadata !"Simple C/C++ TBAA"}
!120 = metadata !{i32 31, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !4, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!122 = metadata !{metadata !"any pointer", metadata !118}
!123 = metadata !{i32 34, i32 0, metadata !121, null}
!124 = metadata !{i32 36, i32 0, metadata !4, null}
!125 = metadata !{i32 37, i32 0, metadata !4, null}
!126 = metadata !{i32 38, i32 0, metadata !4, null}
!127 = metadata !{i32 39, i32 0, metadata !4, null}
!128 = metadata !{i32 40, i32 0, metadata !4, null}
!129 = metadata !{i32 41, i32 0, metadata !4, null}
!130 = metadata !{i32 47, i32 0, metadata !4, null}
!131 = metadata !{i32 48, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !4, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!133 = metadata !{i32 49, i32 0, metadata !132, null}
!134 = metadata !{i32 50, i32 0, metadata !132, null}
!135 = metadata !{i32 70, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !137, i32 69, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!137 = metadata !{i32 786443, metadata !1, metadata !138, i32 69, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!138 = metadata !{i32 786443, metadata !1, metadata !139, i32 68, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!139 = metadata !{i32 786443, metadata !1, metadata !4, i32 52, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!140 = metadata !{i32 53, i32 0, metadata !139, null}
!141 = metadata !{i32 54, i32 0, metadata !139, null}
!142 = metadata !{i32 55, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !139, i32 54, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!144 = metadata !{i32 56, i32 0, metadata !143, null}
!145 = metadata !{i32 57, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !139, i32 57, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!147 = metadata !{i32 58, i32 0, metadata !148, null} ; [ DW_TAG_imported_module ]
!148 = metadata !{i32 786443, metadata !1, metadata !146, i32 57, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!149 = metadata !{i32 59, i32 0, metadata !148, null}
!150 = metadata !{i32 60, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !148, i32 59, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!152 = metadata !{i32 61, i32 0, metadata !151, null}
!153 = metadata !{i32 62, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !151, i32 61, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!155 = metadata !{i32 64, i32 0, metadata !154, null}
!156 = metadata !{i32 68, i32 0, metadata !139, null}
!157 = metadata !{i32 69, i32 0, metadata !137, null}
!158 = metadata !{i32 71, i32 0, metadata !136, null}
!159 = metadata !{i32 72, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !136, i32 71, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!161 = metadata !{i32 73, i32 0, metadata !160, null}
!162 = metadata !{i32 74, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !160, i32 73, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c]
!164 = metadata !{i32 76, i32 0, metadata !163, null}
!165 = metadata !{i32 81, i32 0, metadata !139, null}
!166 = metadata !{i32 86, i32 0, metadata !4, null}
