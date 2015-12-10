; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._MSMD = type { i32, %struct._IIheap*, i32, %struct._IP*, %struct._IP*, %struct._MSMDvtx*, %struct._IV, %struct._IV }
%struct._IIheap = type { i32, i32, i32*, i32*, i32* }
%struct._IP = type { i32, %struct._IP* }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [77 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"\0A fatal error in MSMD_clearData(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._MSMD* @MSMD_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 96) #6, !dbg !82
  tail call void @llvm.dbg.value(metadata !{%struct._MSMD* %1}, i64 0, metadata !66), !dbg !82
  %cmp = icmp eq i8* %call, null, !dbg !82
  br i1 %cmp, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !84, !tbaa !86
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 96, i32 21, i8* getelementptr inbounds ([77 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !84
  tail call void @exit(i32 -1) #7, !dbg !84
  unreachable, !dbg !84

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct._MSMD*, !dbg !82
  tail call void @llvm.dbg.value(metadata !{%struct._MSMD* %1}, i64 0, metadata !89) #5, !dbg !91
  %nvtx.i = bitcast i8* %call to i32*, !dbg !92
  store i32 0, i32* %nvtx.i, align 4, !dbg !92, !tbaa !93
  %heap.i = getelementptr inbounds i8* %call, i64 8, !dbg !94
  %2 = bitcast i8* %heap.i to %struct._IIheap**, !dbg !94
  store %struct._IIheap* null, %struct._IIheap** %2, align 8, !dbg !94, !tbaa !86
  %incrIP.i = getelementptr inbounds i8* %call, i64 16, !dbg !95
  %3 = bitcast i8* %incrIP.i to i32*, !dbg !95
  store i32 0, i32* %3, align 4, !dbg !95, !tbaa !93
  %baseIP.i = getelementptr inbounds i8* %call, i64 24, !dbg !96
  %ivtmpIV.i = getelementptr inbounds i8* %call, i64 48, !dbg !97
  %4 = bitcast i8* %ivtmpIV.i to %struct._IV*, !dbg !97
  tail call void @llvm.memset.p0i8.i64(i8* %baseIP.i, i8 0, i64 24, i32 8, i1 false) #5, !dbg !96
  tail call void @IV_setDefaultFields(%struct._IV* %4) #6, !dbg !97
  %reachIV.i = getelementptr inbounds i8* %call, i64 72, !dbg !98
  %5 = bitcast i8* %reachIV.i to %struct._IV*, !dbg !98
  tail call void @IV_setDefaultFields(%struct._IV* %5) #6, !dbg !98
  ret %struct._MSMD* %1, !dbg !99
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @MSMD_setDefaultFields(%struct._MSMD* %msmd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !71), !dbg !100
  %nvtx = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0, !dbg !101
  store i32 0, i32* %nvtx, align 4, !dbg !101, !tbaa !93
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !102
  store %struct._IIheap* null, %struct._IIheap** %heap, align 8, !dbg !102, !tbaa !86
  %incrIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 2, !dbg !103
  store i32 0, i32* %incrIP, align 4, !dbg !103, !tbaa !93
  %baseIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 3, !dbg !104
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6, !dbg !105
  %0 = bitcast %struct._IP** %baseIP to i8*, !dbg !105
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false), !dbg !104
  tail call void @IV_setDefaultFields(%struct._IV* %ivtmpIV) #6, !dbg !105
  %reachIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7, !dbg !106
  tail call void @IV_setDefaultFields(%struct._IV* %reachIV) #6, !dbg !106
  ret void, !dbg !107
}

; Function Attrs: optsize
declare void @IV_setDefaultFields(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define void @MSMD_clearData(%struct._MSMD* %msmd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !74), !dbg !108
  %cmp = icmp eq %struct._MSMD* %msmd, null, !dbg !109
  br i1 %cmp, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !110, !tbaa !86
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), %struct._MSMD* null) #6, !dbg !110
  tail call void @exit(i32 -1) #7, !dbg !112
  unreachable, !dbg !112

if.end:                                           ; preds = %entry
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !113
  %1 = load %struct._IIheap** %heap, align 8, !dbg !113, !tbaa !86
  %cmp1 = icmp eq %struct._IIheap* %1, null, !dbg !113
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !113

if.then2:                                         ; preds = %if.end
  tail call void @IIheap_free(%struct._IIheap* %1) #6, !dbg !114
  br label %if.end4, !dbg !116

if.end4:                                          ; preds = %if.end, %if.then2
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !117
  %2 = load %struct._MSMDvtx** %vertices, align 8, !dbg !117, !tbaa !86
  %cmp5 = icmp eq %struct._MSMDvtx* %2, null, !dbg !117
  br i1 %cmp5, label %if.end24, label %if.then6, !dbg !117

if.then6:                                         ; preds = %if.end4
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %2}, i64 0, metadata !76), !dbg !118
  %nvtx = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0, !dbg !120
  %3 = load i32* %nvtx, align 4, !dbg !120, !tbaa !93
  %idx.ext = sext i32 %3 to i64, !dbg !120
  %add.ptr.sum = add i64 %idx.ext, -1, !dbg !120
  %add.ptr8 = getelementptr inbounds %struct._MSMDvtx* %2, i64 %add.ptr.sum, !dbg !120
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr8}, i64 0, metadata !77), !dbg !120
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %2}, i64 0, metadata !78), !dbg !121
  %cmp949 = icmp slt i64 %add.ptr.sum, 0, !dbg !121
  br i1 %cmp949, label %if.then20, label %for.body, !dbg !121

for.body:                                         ; preds = %if.then6, %for.inc
  %v.050 = phi %struct._MSMDvtx* [ %incdec.ptr, %for.inc ], [ %2, %if.then6 ]
  %status = getelementptr inbounds %struct._MSMDvtx* %v.050, i64 0, i32 2, !dbg !123
  %4 = load i8* %status, align 1, !dbg !123, !tbaa !87
  %cmp10 = icmp eq i8 %4, 69, !dbg !123
  br i1 %cmp10, label %land.lhs.true, label %for.inc, !dbg !123

land.lhs.true:                                    ; preds = %for.body
  %adj = getelementptr inbounds %struct._MSMDvtx* %v.050, i64 0, i32 6, !dbg !123
  %5 = load i32** %adj, align 8, !dbg !123, !tbaa !86
  %cmp12 = icmp eq i32* %5, null, !dbg !123
  br i1 %cmp12, label %for.inc, label %if.then14, !dbg !123

if.then14:                                        ; preds = %land.lhs.true
  tail call void @IVfree(i32* %5) #6, !dbg !125
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then14
  %incdec.ptr = getelementptr inbounds %struct._MSMDvtx* %v.050, i64 1, !dbg !121
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %incdec.ptr}, i64 0, metadata !78), !dbg !121
  %cmp9 = icmp ugt %struct._MSMDvtx* %incdec.ptr, %add.ptr8, !dbg !121
  br i1 %cmp9, label %for.end, label %for.body, !dbg !121

for.end:                                          ; preds = %for.inc
  %.pre = load %struct._MSMDvtx** %vertices, align 8, !dbg !128, !tbaa !86
  %cmp18 = icmp eq %struct._MSMDvtx* %.pre, null, !dbg !128
  br i1 %cmp18, label %if.end24, label %if.then20, !dbg !128

if.then20:                                        ; preds = %if.then6, %for.end
  %6 = phi %struct._MSMDvtx* [ %.pre, %for.end ], [ %2, %if.then6 ]
  %7 = bitcast %struct._MSMDvtx* %6 to i8*, !dbg !129
  tail call void @free(i8* %7) #6, !dbg !129
  store %struct._MSMDvtx* null, %struct._MSMDvtx** %vertices, align 8, !dbg !129, !tbaa !86
  br label %if.end24, !dbg !129

if.end24:                                         ; preds = %for.end, %if.end4, %if.then20
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6, !dbg !131
  tail call void @IV_clearData(%struct._IV* %ivtmpIV) #6, !dbg !131
  %reachIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7, !dbg !132
  tail call void @IV_clearData(%struct._IV* %reachIV) #6, !dbg !132
  %baseIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 3, !dbg !133
  %8 = load %struct._IP** %baseIP, align 8, !dbg !133, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{%struct._IP* %8}, i64 0, metadata !75), !dbg !133
  %cmp2548 = icmp eq %struct._IP* %8, null, !dbg !133
  br i1 %cmp2548, label %while.end, label %while.body, !dbg !133

while.body:                                       ; preds = %if.end24, %while.body
  %9 = phi %struct._IP* [ %11, %while.body ], [ %8, %if.end24 ]
  %next = getelementptr inbounds %struct._IP* %9, i64 0, i32 1, !dbg !134
  %10 = load %struct._IP** %next, align 8, !dbg !134, !tbaa !86
  store %struct._IP* %10, %struct._IP** %baseIP, align 8, !dbg !134, !tbaa !86
  tail call void @IP_free(%struct._IP* %9) #6, !dbg !136
  %11 = load %struct._IP** %baseIP, align 8, !dbg !133, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{%struct._IP* %9}, i64 0, metadata !75), !dbg !133
  %cmp25 = icmp eq %struct._IP* %11, null, !dbg !133
  br i1 %cmp25, label %while.end, label %while.body, !dbg !133

while.end:                                        ; preds = %while.body, %if.end24
  tail call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !137) #5, !dbg !139
  %nvtx.i = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0, !dbg !140
  store i32 0, i32* %nvtx.i, align 4, !dbg !140, !tbaa !93
  store %struct._IIheap* null, %struct._IIheap** %heap, align 8, !dbg !141, !tbaa !86
  %incrIP.i = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 2, !dbg !142
  store i32 0, i32* %incrIP.i, align 4, !dbg !142, !tbaa !93
  %12 = bitcast %struct._IP** %baseIP to i8*, !dbg !143
  tail call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i32 8, i1 false) #5, !dbg !144
  tail call void @IV_setDefaultFields(%struct._IV* %ivtmpIV) #6, !dbg !143
  tail call void @IV_setDefaultFields(%struct._IV* %reachIV) #6, !dbg !145
  ret void, !dbg !146
}

; Function Attrs: optsize
declare void @IIheap_free(%struct._IIheap*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: optsize
declare void @IP_free(%struct._IP*) #3

; Function Attrs: nounwind optsize uwtable
define void @MSMD_free(%struct._MSMD* %msmd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !81), !dbg !147
  tail call void @MSMD_clearData(%struct._MSMD* %msmd) #8, !dbg !148
  %cmp = icmp eq %struct._MSMD* %msmd, null, !dbg !149
  br i1 %cmp, label %if.end, label %if.then, !dbg !149

if.then:                                          ; preds = %entry
  %0 = bitcast %struct._MSMD* %msmd to i8*, !dbg !150
  tail call void @free(i8* %0) #6, !dbg !150
  tail call void @llvm.dbg.value(metadata !152, i64 0, metadata !81), !dbg !150
  br label %if.end, !dbg !150

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !153
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
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !67, metadata !72, metadata !79}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_new", metadata !"MSMD_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._MSMD* ()* @MSMD_new, null, null, metadata !65, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [MSMD_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMD]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"MSMD", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [MSMD] [line 15, size 0, align 0, offset 0] [from _MSMD]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_MSMD", i32 38, i64 768, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMD] [line 38, size 768, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../MSMD.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !27, metadata !28, metadata !38, metadata !39, metadata !55, metadata !64}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvtx", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 39, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"heap", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [heap] [line 40, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IIheap]
!17 = metadata !{i32 786454, metadata !11, null, metadata !"IIheap", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [IIheap] [line 20, size 0, align 0, offset 0] [from _IIheap]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"_IIheap", i32 21, i64 256, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IIheap] [line 21, size 256, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../IIheap/IIheap.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !25, metadata !26}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"heapLoc", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [heapLoc] [line 24, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"keys", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [keys] [line 25, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"values", i32 26, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [values] [line 26, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"incrIP", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [incrIP] [line 41, size 32, align 32, offset 128] [from int]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"baseIP", i32 42, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [baseIP] [line 42, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IP]
!30 = metadata !{i32 786454, metadata !11, null, metadata !"IP", i32 10, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IP] [line 10, size 0, align 0, offset 0] [from _IP]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IP", i32 11, i64 128, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IP] [line 11, size 128, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../Utilities/IP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"val", i32 12, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [val] [line 12, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"next", i32 13, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 13, size 64, align 64, offset 64] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IP]
!37 = metadata !{i32 786454, metadata !32, null, metadata !"IP", i32 10, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IP] [line 10, size 0, align 0, offset 0] [from _IP]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"freeIP", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [freeIP] [line 43, size 64, align 64, offset 256] [from ]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vertices", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !40} ; [ DW_TAG_member ] [vertices] [line 44, size 64, align 64, offset 320] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMDvtx]
!41 = metadata !{i32 786454, metadata !11, null, metadata !"MSMDvtx", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [MSMDvtx] [line 18, size 0, align 0, offset 0] [from _MSMDvtx]
!42 = metadata !{i32 786451, metadata !11, null, metadata !"_MSMDvtx", i32 180, i64 448, i64 64, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMDvtx] [line 180, size 448, align 64, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !45, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!44 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"id", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 181, size 32, align 32, offset 0] [from int]
!45 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"mark", i32 182, i64 8, i64 8, i64 32, i32 0, metadata !46} ; [ DW_TAG_member ] [mark] [line 182, size 8, align 8, offset 32] [from char]
!46 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!47 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"status", i32 183, i64 8, i64 8, i64 40, i32 0, metadata !46} ; [ DW_TAG_member ] [status] [line 183, size 8, align 8, offset 40] [from char]
!48 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"stage", i32 184, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [stage] [line 184, size 32, align 32, offset 64] [from int]
!49 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"wght", i32 185, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [wght] [line 185, size 32, align 32, offset 96] [from int]
!50 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"nadj", i32 186, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nadj] [line 186, size 32, align 32, offset 128] [from int]
!51 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"adj", i32 187, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [adj] [line 187, size 64, align 64, offset 192] [from ]
!52 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"bndwght", i32 188, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [bndwght] [line 188, size 32, align 32, offset 256] [from int]
!53 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"par", i32 189, i64 64, i64 64, i64 320, i32 0, metadata !40} ; [ DW_TAG_member ] [par] [line 189, size 64, align 64, offset 320] [from ]
!54 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"subtrees", i32 190, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [subtrees] [line 190, size 64, align 64, offset 384] [from ]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivtmpIV", i32 45, i64 192, i64 64, i64 384, i32 0, metadata !56} ; [ DW_TAG_member ] [ivtmpIV] [line 45, size 192, align 64, offset 384] [from IV]
!56 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!57 = metadata !{i32 786451, metadata !58, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !59, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!58 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63}
!60 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!61 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!62 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!63 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!64 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"reachIV", i32 46, i64 192, i64 64, i64 576, i32 0, metadata !56} ; [ DW_TAG_member ] [reachIV] [line 46, size 192, align 64, offset 576] [from IV]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786688, metadata !4, metadata !"msmd", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msmd] [line 19]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_setDefaultFields", metadata !"MSMD_setDefaultFields", metadata !"", i32 35, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMD*)* @MSMD_setDefaultFields, null, null, metadata !70, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [MSMD_setDefaultFields]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !8}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786689, metadata !67, metadata !"msmd", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 36]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_clearData", metadata !"MSMD_clearData", metadata !"", i32 58, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMD*)* @MSMD_clearData, null, null, metadata !73, i32 60} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 60] [MSMD_clearData]
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!74 = metadata !{i32 786689, metadata !72, metadata !"msmd", metadata !5, i32 16777275, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 59]
!75 = metadata !{i32 786688, metadata !72, metadata !"ip", metadata !5, i32 61, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 61]
!76 = metadata !{i32 786688, metadata !72, metadata !"first", metadata !5, i32 62, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 62]
!77 = metadata !{i32 786688, metadata !72, metadata !"last", metadata !5, i32 62, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 62]
!78 = metadata !{i32 786688, metadata !72, metadata !"v", metadata !5, i32 62, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 62]
!79 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_free", metadata !"MSMD_free", metadata !"", i32 113, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMD*)* @MSMD_free, null, null, metadata !80, i32 115} ; [ DW_TAG_subprogram ] [line 113] [def] [scope 115] [MSMD_free]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786689, metadata !79, metadata !"msmd", metadata !5, i32 16777330, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 114]
!82 = metadata !{i32 21, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!84 = metadata !{i32 21, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !83, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!86 = metadata !{metadata !"any pointer", metadata !87}
!87 = metadata !{metadata !"omnipotent char", metadata !88}
!88 = metadata !{metadata !"Simple C/C++ TBAA"}
!89 = metadata !{i32 786689, metadata !67, metadata !"msmd", metadata !5, i32 16777252, metadata !8, i32 0, metadata !90} ; [ DW_TAG_arg_variable ] [msmd] [line 36]
!90 = metadata !{i32 22, i32 0, metadata !4, null}
!91 = metadata !{i32 36, i32 0, metadata !67, metadata !90}
!92 = metadata !{i32 38, i32 0, metadata !67, metadata !90}
!93 = metadata !{metadata !"int", metadata !87}
!94 = metadata !{i32 39, i32 0, metadata !67, metadata !90}
!95 = metadata !{i32 40, i32 0, metadata !67, metadata !90}
!96 = metadata !{i32 41, i32 0, metadata !67, metadata !90}
!97 = metadata !{i32 44, i32 0, metadata !67, metadata !90}
!98 = metadata !{i32 45, i32 0, metadata !67, metadata !90}
!99 = metadata !{i32 24, i32 0, metadata !4, null}
!100 = metadata !{i32 36, i32 0, metadata !67, null}
!101 = metadata !{i32 38, i32 0, metadata !67, null}
!102 = metadata !{i32 39, i32 0, metadata !67, null}
!103 = metadata !{i32 40, i32 0, metadata !67, null}
!104 = metadata !{i32 41, i32 0, metadata !67, null}
!105 = metadata !{i32 44, i32 0, metadata !67, null}
!106 = metadata !{i32 45, i32 0, metadata !67, null}
!107 = metadata !{i32 47, i32 0, metadata !67, null}
!108 = metadata !{i32 59, i32 0, metadata !72, null}
!109 = metadata !{i32 68, i32 0, metadata !72, null}
!110 = metadata !{i32 69, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !72, i32 68, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!112 = metadata !{i32 71, i32 0, metadata !111, null}
!113 = metadata !{i32 73, i32 0, metadata !72, null}
!114 = metadata !{i32 78, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !72, i32 73, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!116 = metadata !{i32 79, i32 0, metadata !115, null}
!117 = metadata !{i32 80, i32 0, metadata !72, null}
!118 = metadata !{i32 85, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !72, i32 80, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!120 = metadata !{i32 86, i32 0, metadata !119, null}
!121 = metadata !{i32 87, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !119, i32 87, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!123 = metadata !{i32 88, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !122, i32 87, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!125 = metadata !{i32 89, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !124, i32 88, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!127 = metadata !{i32 90, i32 0, metadata !126, null}
!128 = metadata !{i32 92, i32 0, metadata !119, null}
!129 = metadata !{i32 92, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !119, i32 92, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!131 = metadata !{i32 94, i32 0, metadata !72, null}
!132 = metadata !{i32 95, i32 0, metadata !72, null}
!133 = metadata !{i32 96, i32 0, metadata !72, null}
!134 = metadata !{i32 97, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !72, i32 96, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!136 = metadata !{i32 98, i32 0, metadata !135, null}
!137 = metadata !{i32 786689, metadata !67, metadata !"msmd", metadata !5, i32 16777252, metadata !8, i32 0, metadata !138} ; [ DW_TAG_arg_variable ] [msmd] [line 36]
!138 = metadata !{i32 100, i32 0, metadata !72, null}
!139 = metadata !{i32 36, i32 0, metadata !67, metadata !138}
!140 = metadata !{i32 38, i32 0, metadata !67, metadata !138}
!141 = metadata !{i32 39, i32 0, metadata !67, metadata !138}
!142 = metadata !{i32 40, i32 0, metadata !67, metadata !138}
!143 = metadata !{i32 44, i32 0, metadata !67, metadata !138}
!144 = metadata !{i32 41, i32 0, metadata !67, metadata !138}
!145 = metadata !{i32 45, i32 0, metadata !67, metadata !138}
!146 = metadata !{i32 102, i32 0, metadata !72, null}
!147 = metadata !{i32 114, i32 0, metadata !79, null}
!148 = metadata !{i32 116, i32 0, metadata !79, null}
!149 = metadata !{i32 117, i32 0, metadata !79, null}
!150 = metadata !{i32 117, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !79, i32 117, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c]
!152 = metadata !{%struct._MSMD* null}
!153 = metadata !{i32 119, i32 0, metadata !79, null}
