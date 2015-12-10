; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Network_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Network_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Network_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Network* @Network_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 56) #5, !dbg !112
  %0 = bitcast i8* %call to %struct._Network*, !dbg !112
  tail call void @llvm.dbg.value(metadata !{%struct._Network* %0}, i64 0, metadata !99), !dbg !112
  %cmp = icmp eq i8* %call, null, !dbg !112
  br i1 %cmp, label %if.then, label %if.end, !dbg !112

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !114, !tbaa !116
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 56, i32 19, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !114
  tail call void @exit(i32 -1) #6, !dbg !114
  unreachable, !dbg !114

if.end:                                           ; preds = %entry
  tail call void @Network_setDefaultFields(%struct._Network* %0) #7, !dbg !119
  ret %struct._Network* %0, !dbg !120
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Network_setDefaultFields(%struct._Network* %network) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Network* %network}, i64 0, metadata !104), !dbg !121
  %cmp = icmp eq %struct._Network* %network, null, !dbg !122
  br i1 %cmp, label %if.then, label %if.end, !dbg !122

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !123, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._Network* null) #5, !dbg !123
  tail call void @exit(i32 -1) #6, !dbg !125
  unreachable, !dbg !125

if.end:                                           ; preds = %entry
  %nnode = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !126
  store i32 0, i32* %nnode, align 4, !dbg !126, !tbaa !127
  %narc = getelementptr inbounds %struct._Network* %network, i64 0, i32 1, !dbg !128
  store i32 0, i32* %narc, align 4, !dbg !128, !tbaa !127
  %ntrav = getelementptr inbounds %struct._Network* %network, i64 0, i32 2, !dbg !129
  store i32 0, i32* %ntrav, align 4, !dbg !129, !tbaa !127
  %inheads = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !130
  %msgFile = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !131
  store %struct._IO_FILE* null, %struct._IO_FILE** %msgFile, align 8, !dbg !131, !tbaa !116
  %1 = bitcast %struct._Arc*** %inheads to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 28, i32 8, i1 false), !dbg !130
  ret void, !dbg !132
}

; Function Attrs: nounwind optsize uwtable
define void @Network_clearData(%struct._Network* %network) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Network* %network}, i64 0, metadata !107), !dbg !133
  %cmp = icmp eq %struct._Network* %network, null, !dbg !134
  br i1 %cmp, label %if.then, label %if.end, !dbg !134

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !135, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._Network* null) #5, !dbg !135
  tail call void @exit(i32 -1) #6, !dbg !137
  unreachable, !dbg !137

if.end:                                           ; preds = %entry
  %inheads = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !138
  %1 = load %struct._Arc*** %inheads, align 8, !dbg !138, !tbaa !116
  %cmp1 = icmp eq %struct._Arc** %1, null, !dbg !138
  br i1 %cmp1, label %if.end9, label %if.then5, !dbg !138

if.then5:                                         ; preds = %if.end
  %2 = bitcast %struct._Arc** %1 to i8*, !dbg !139
  tail call void @free(i8* %2) #5, !dbg !139
  store %struct._Arc** null, %struct._Arc*** %inheads, align 8, !dbg !139, !tbaa !116
  br label %if.end9, !dbg !139

if.end9:                                          ; preds = %if.end, %if.then5
  %outheads = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !142
  %3 = load %struct._Arc*** %outheads, align 8, !dbg !142, !tbaa !116
  %cmp10 = icmp eq %struct._Arc** %3, null, !dbg !142
  br i1 %cmp10, label %while.cond.preheader, label %if.then14, !dbg !142

if.then14:                                        ; preds = %if.end9
  %4 = bitcast %struct._Arc** %3 to i8*, !dbg !143
  tail call void @free(i8* %4) #5, !dbg !143
  store %struct._Arc** null, %struct._Arc*** %outheads, align 8, !dbg !143, !tbaa !116
  br label %while.cond.preheader, !dbg !143

while.cond.preheader:                             ; preds = %if.then14, %if.end9
  %chunk19 = getelementptr inbounds %struct._Network* %network, i64 0, i32 5, !dbg !146
  %5 = load %struct._ArcChunk** %chunk19, align 8, !dbg !146, !tbaa !116
  tail call void @llvm.dbg.value(metadata !{%struct._ArcChunk* %5}, i64 0, metadata !108), !dbg !146
  %cmp2047 = icmp eq %struct._ArcChunk* %5, null, !dbg !146
  br i1 %cmp2047, label %while.end, label %while.body, !dbg !146

while.body:                                       ; preds = %while.cond.preheader, %if.then28
  %6 = phi %struct._ArcChunk* [ %11, %if.then28 ], [ %5, %while.cond.preheader ]
  %next = getelementptr inbounds %struct._ArcChunk* %6, i64 0, i32 3, !dbg !147
  %7 = load %struct._ArcChunk** %next, align 8, !dbg !147, !tbaa !116
  store %struct._ArcChunk* %7, %struct._ArcChunk** %chunk19, align 8, !dbg !147, !tbaa !116
  %base = getelementptr inbounds %struct._ArcChunk* %6, i64 0, i32 2, !dbg !149
  %8 = load %struct._Arc** %base, align 8, !dbg !149, !tbaa !116
  %cmp22 = icmp eq %struct._Arc* %8, null, !dbg !149
  br i1 %cmp22, label %if.then28, label %if.then23, !dbg !149

if.then23:                                        ; preds = %while.body
  %9 = bitcast %struct._Arc* %8 to i8*, !dbg !150
  tail call void @free(i8* %9) #5, !dbg !150
  br label %if.then28, !dbg !150

if.then28:                                        ; preds = %if.then23, %while.body
  %10 = bitcast %struct._ArcChunk* %6 to i8*, !dbg !152
  tail call void @free(i8* %10) #5, !dbg !152
  tail call void @llvm.dbg.value(metadata !154, i64 0, metadata !108), !dbg !152
  %11 = load %struct._ArcChunk** %chunk19, align 8, !dbg !146, !tbaa !116
  tail call void @llvm.dbg.value(metadata !{%struct._ArcChunk* %6}, i64 0, metadata !108), !dbg !146
  %cmp20 = icmp eq %struct._ArcChunk* %11, null, !dbg !146
  br i1 %cmp20, label %while.end, label %while.body, !dbg !146

while.end:                                        ; preds = %if.then28, %while.cond.preheader
  tail call void @Network_setDefaultFields(%struct._Network* %network) #7, !dbg !155
  ret void, !dbg !156
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @Network_free(%struct._Network* %network) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Network* %network}, i64 0, metadata !111), !dbg !157
  %cmp = icmp eq %struct._Network* %network, null, !dbg !158
  br i1 %cmp, label %if.then, label %if.end, !dbg !158

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !159, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Network* null) #5, !dbg !159
  tail call void @exit(i32 -1) #6, !dbg !161
  unreachable, !dbg !161

if.end:                                           ; preds = %entry
  tail call void @Network_clearData(%struct._Network* %network) #7, !dbg !162
  %1 = bitcast %struct._Network* %network to i8*, !dbg !163
  tail call void @free(i8* %1) #5, !dbg !163
  tail call void @llvm.dbg.value(metadata !165, i64 0, metadata !111), !dbg !163
  ret void, !dbg !166
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !100, metadata !105, metadata !109}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Network_new", metadata !"Network_new", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Network* ()* @Network_new, null, null, metadata !98, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [Network_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
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
!98 = metadata !{metadata !99}
!99 = metadata !{i32 786688, metadata !4, metadata !"network", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [network] [line 17]
!100 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Network_setDefaultFields", metadata !"Network_setDefaultFields", metadata !"", i32 34, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Network*)* @Network_setDefaultFields, null, null, metadata !103, i32 36} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 36] [Network_setDefaultFields]
!101 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{null, metadata !8}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786689, metadata !100, metadata !"network", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [network] [line 35]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Network_clearData", metadata !"Network_clearData", metadata !"", i32 62, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Network*)* @Network_clearData, null, null, metadata !106, i32 64} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 64] [Network_clearData]
!106 = metadata !{metadata !107, metadata !108}
!107 = metadata !{i32 786689, metadata !105, metadata !"network", metadata !5, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [network] [line 63]
!108 = metadata !{i32 786688, metadata !105, metadata !"chunk", metadata !5, i32 65, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chunk] [line 65]
!109 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Network_free", metadata !"Network_free", metadata !"", i32 96, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Network*)* @Network_free, null, null, metadata !110, i32 98} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 98] [Network_free]
!110 = metadata !{metadata !111}
!111 = metadata !{i32 786689, metadata !109, metadata !"network", metadata !5, i32 16777313, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [network] [line 97]
!112 = metadata !{i32 19, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!114 = metadata !{i32 19, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !113, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!116 = metadata !{metadata !"any pointer", metadata !117}
!117 = metadata !{metadata !"omnipotent char", metadata !118}
!118 = metadata !{metadata !"Simple C/C++ TBAA"}
!119 = metadata !{i32 21, i32 0, metadata !4, null}
!120 = metadata !{i32 23, i32 0, metadata !4, null}
!121 = metadata !{i32 35, i32 0, metadata !100, null}
!122 = metadata !{i32 37, i32 0, metadata !100, null}
!123 = metadata !{i32 38, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !100, i32 37, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!125 = metadata !{i32 40, i32 0, metadata !124, null}
!126 = metadata !{i32 42, i32 0, metadata !100, null}
!127 = metadata !{metadata !"int", metadata !117}
!128 = metadata !{i32 43, i32 0, metadata !100, null}
!129 = metadata !{i32 44, i32 0, metadata !100, null}
!130 = metadata !{i32 45, i32 0, metadata !100, null}
!131 = metadata !{i32 49, i32 0, metadata !100, null}
!132 = metadata !{i32 51, i32 0, metadata !100, null}
!133 = metadata !{i32 63, i32 0, metadata !105, null}
!134 = metadata !{i32 67, i32 0, metadata !105, null}
!135 = metadata !{i32 68, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !105, i32 67, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!137 = metadata !{i32 70, i32 0, metadata !136, null}
!138 = metadata !{i32 72, i32 0, metadata !105, null}
!139 = metadata !{i32 73, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !141, i32 73, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!141 = metadata !{i32 786443, metadata !1, metadata !105, i32 72, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!142 = metadata !{i32 75, i32 0, metadata !105, null}
!143 = metadata !{i32 76, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !145, i32 76, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!145 = metadata !{i32 786443, metadata !1, metadata !105, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!146 = metadata !{i32 78, i32 0, metadata !105, null}
!147 = metadata !{i32 79, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !105, i32 78, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!149 = metadata !{i32 80, i32 0, metadata !148, null}
!150 = metadata !{i32 80, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !148, i32 80, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!152 = metadata !{i32 81, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !148, i32 81, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!154 = metadata !{%struct._ArcChunk* null}
!155 = metadata !{i32 83, i32 0, metadata !105, null}
!156 = metadata !{i32 85, i32 0, metadata !105, null}
!157 = metadata !{i32 97, i32 0, metadata !109, null}
!158 = metadata !{i32 99, i32 0, metadata !109, null}
!159 = metadata !{i32 100, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !109, i32 99, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!161 = metadata !{i32 102, i32 0, metadata !160, null}
!162 = metadata !{i32 104, i32 0, metadata !109, null}
!163 = metadata !{i32 105, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !109, i32 105, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c]
!165 = metadata !{%struct._Network* null}
!166 = metadata !{i32 107, i32 0, metadata !109, null}
