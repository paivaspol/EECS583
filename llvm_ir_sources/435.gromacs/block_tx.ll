; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"TX: Null pointer (size=%d)!\0A\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"RX: Null pointer (size=%d)!\0A\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"%d: size=%d, len=%d, rx_count=%d\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"block->index\00", align 1
@.str4 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"block->a\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @_blocktx(i32 %dest, i32 %nelem, i32 %size, i8* %data) #0 {
entry:
  %size.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %dest}, i64 0, metadata !11), !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %nelem}, i64 0, metadata !12), !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !13), !dbg !53
  store i32 %size, i32* %size.addr, align 4, !tbaa !54
  call void @llvm.dbg.declare(metadata !{i32* %size.addr}, metadata !13), !dbg !53
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !14), !dbg !53
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !16), !dbg !57
  %cmp = icmp eq i8* %data, null, !dbg !58
  %cmp1 = icmp sgt i32 %size, 0, !dbg !58
  %or.cond = and i1 %cmp, %cmp1, !dbg !58
  br i1 %or.cond, label %if.then, label %for.cond.preheader, !dbg !58

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str, i64 0, i64 0), i32 %size) #3, !dbg !59
  br label %for.cond.preheader, !dbg !59

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp210 = icmp sgt i32 %nelem, 0, !dbg !60
  br i1 %cmp210, label %for.body.lr.ph, label %for.end, !dbg !60

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = bitcast i32* %size.addr to i8*, !dbg !62
  br label %for.body, !dbg !60

for.body:                                         ; preds = %if.end5, %for.body.lr.ph
  %buf.012 = phi i8* [ %data, %for.body.lr.ph ], [ %add.ptr, %if.end5 ]
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5 ]
  call void @gmx_txs(i32 %dest, i8* %0, i32 4) #3, !dbg !62
  call void @llvm.dbg.value(metadata !{i32* %size.addr}, i64 0, metadata !13), !dbg !64
  %1 = load i32* %size.addr, align 4, !dbg !64, !tbaa !54
  %cmp3 = icmp sgt i32 %1, 0, !dbg !64
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !64

if.then4:                                         ; preds = %for.body
  call void @gmx_txs(i32 %dest, i8* %buf.012, i32 %1) #3, !dbg !65
  call void @llvm.dbg.value(metadata !{i32* %size.addr}, i64 0, metadata !13), !dbg !66
  %.pre = load i32* %size.addr, align 4, !dbg !66, !tbaa !54
  br label %if.end5, !dbg !65

if.end5:                                          ; preds = %if.then4, %for.body
  %2 = phi i32 [ %.pre, %if.then4 ], [ %1, %for.body ]
  call void @llvm.dbg.value(metadata !{i32* %size.addr}, i64 0, metadata !13), !dbg !66
  %idx.ext = sext i32 %2 to i64, !dbg !66
  %add.ptr = getelementptr inbounds i8* %buf.012, i64 %idx.ext, !dbg !66
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !16), !dbg !66
  %inc = add nsw i32 %i.011, 1, !dbg !60
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !15), !dbg !60
  %exitcond = icmp eq i32 %inc, %nelem, !dbg !60
  br i1 %exitcond, label %for.end, label %for.body, !dbg !60

for.end:                                          ; preds = %if.end5, %for.cond.preheader
  ret void, !dbg !67
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @gmx_txs(i32, i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @_blockrx(i32 %src, i32 %nelem, i32 %size, i8* %data) #0 {
entry:
  %len = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %src}, i64 0, metadata !21), !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %nelem}, i64 0, metadata !22), !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !23), !dbg !68
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !24), !dbg !68
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !26), !dbg !69
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !27), !dbg !70
  %cmp = icmp eq i8* %data, null, !dbg !71
  %cmp1 = icmp sgt i32 %size, 0, !dbg !71
  %or.cond = and i1 %cmp, %cmp1, !dbg !71
  br i1 %or.cond, label %if.then, label %for.cond.preheader, !dbg !71

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), i32 %size) #3, !dbg !72
  br label %for.cond.preheader, !dbg !72

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp216 = icmp sgt i32 %nelem, 0, !dbg !73
  br i1 %cmp216, label %for.body.lr.ph, label %for.end, !dbg !73

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = bitcast i32* %len to i8*, !dbg !75
  br label %for.body, !dbg !73

for.body:                                         ; preds = %if.end8, %for.body.lr.ph
  %buf.018 = phi i8* [ %data, %for.body.lr.ph ], [ %add.ptr, %if.end8 ]
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end8 ]
  call void @gmx_rxs(i32 %src, i8* %0, i32 4) #3, !dbg !75
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !26), !dbg !77
  %1 = load i32* %len, align 4, !dbg !77, !tbaa !54
  %cmp3 = icmp eq i32 %1, %size, !dbg !77
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !77

if.then4:                                         ; preds = %for.body
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i32 0, i32 %size, i32 %1, i32 0) #3, !dbg !78
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !26), !dbg !79
  %.pr = load i32* %len, align 4, !dbg !79, !tbaa !54
  br label %if.end5, !dbg !78

if.end5:                                          ; preds = %for.body, %if.then4
  %2 = phi i32 [ %size, %for.body ], [ %.pr, %if.then4 ]
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !26), !dbg !79
  %cmp6 = icmp sgt i32 %2, 0, !dbg !79
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !79

if.then7:                                         ; preds = %if.end5
  call void @gmx_rxs(i32 %src, i8* %buf.018, i32 %2) #3, !dbg !80
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !26), !dbg !81
  %.pre = load i32* %len, align 4, !dbg !81, !tbaa !54
  br label %if.end8, !dbg !80

if.end8:                                          ; preds = %if.then7, %if.end5
  %3 = phi i32 [ %.pre, %if.then7 ], [ %2, %if.end5 ]
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !26), !dbg !81
  %idx.ext = sext i32 %3 to i64, !dbg !81
  %add.ptr = getelementptr inbounds i8* %buf.018, i64 %idx.ext, !dbg !81
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !27), !dbg !81
  %inc = add nsw i32 %i.017, 1, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !25), !dbg !73
  %exitcond = icmp eq i32 %inc, %nelem, !dbg !73
  br i1 %exitcond, label %for.end, label %for.body, !dbg !73

for.end:                                          ; preds = %if.end8, %for.cond.preheader
  ret void, !dbg !82
}

; Function Attrs: optsize
declare void @gmx_rxs(i32, i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @mv_block(i32 %dest, %struct.t_block* %block) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dest}, i64 0, metadata !47), !dbg !83
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %block}, i64 0, metadata !48), !dbg !83
  %0 = bitcast %struct.t_block* %block to i8*, !dbg !84
  tail call void @_blocktx(i32 %dest, i32 1, i32 1024, i8* %0) #4, !dbg !84
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !85
  %1 = bitcast i32* %nr to i8*, !dbg !85
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %1) #4, !dbg !85
  %2 = load i32* %nr, align 4, !dbg !86, !tbaa !54
  %add = shl i32 %2, 2, !dbg !86
  %mul = add i32 %add, 4, !dbg !86
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !86
  %3 = load i32** %index, align 8, !dbg !86, !tbaa !87
  %4 = bitcast i32* %3 to i8*, !dbg !86
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul, i8* %4) #4, !dbg !86
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !88
  %5 = bitcast i32* %nra to i8*, !dbg !88
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %5) #4, !dbg !88
  %6 = load i32* %nra, align 4, !dbg !89, !tbaa !54
  %mul5 = shl i32 %6, 2, !dbg !89
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !89
  %7 = load i32** %a, align 8, !dbg !89, !tbaa !87
  %8 = bitcast i32* %7 to i8*, !dbg !89
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul5, i8* %8) #4, !dbg !89
  ret void, !dbg !90
}

; Function Attrs: nounwind optsize uwtable
define void @ld_block(i32 %src, %struct.t_block* %block) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %src}, i64 0, metadata !51), !dbg !91
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %block}, i64 0, metadata !52), !dbg !91
  %0 = bitcast %struct.t_block* %block to i8*, !dbg !92
  tail call void @_blockrx(i32 %src, i32 1, i32 1024, i8* %0) #4, !dbg !92
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !93
  %1 = bitcast i32* %nr to i8*, !dbg !93
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %1) #4, !dbg !93
  %2 = load i32* %nr, align 4, !dbg !94, !tbaa !54
  %add = add nsw i32 %2, 1, !dbg !94
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), i32 108, i32 %add, i32 4) #3, !dbg !94
  %3 = bitcast i8* %call to i32*, !dbg !94
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !94
  store i32* %3, i32** %index, align 8, !dbg !94, !tbaa !87
  %4 = load i32* %nr, align 4, !dbg !95, !tbaa !54
  %add3 = shl i32 %4, 2, !dbg !95
  %mul = add i32 %add3, 4, !dbg !95
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul, i8* %call) #4, !dbg !95
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !96
  %5 = bitcast i32* %nra to i8*, !dbg !96
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %5) #4, !dbg !96
  %6 = load i32* %nra, align 4, !dbg !97, !tbaa !54
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), i32 120, i32 %6, i32 4) #3, !dbg !97
  %7 = bitcast i8* %call7 to i32*, !dbg !97
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !97
  store i32* %7, i32** %a, align 8, !dbg !97, !tbaa !87
  %8 = load i32* %nra, align 4, !dbg !98, !tbaa !54
  %mul10 = shl i32 %8, 2, !dbg !98
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul10, i8* %call7) #4, !dbg !98
  ret void, !dbg !99
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !19, metadata !28, metadata !49}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_blocktx", metadata !"_blocktx", metadata !"", i32 40, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i8*)* @_blocktx, null, null, metadata !10, i32 41} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 41] [_blocktx]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16}
!11 = metadata !{i32 786689, metadata !4, metadata !"dest", metadata !5, i32 16777256, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 40]
!12 = metadata !{i32 786689, metadata !4, metadata !"nelem", metadata !5, i32 33554472, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelem] [line 40]
!13 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 50331688, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 40]
!14 = metadata !{i32 786689, metadata !4, metadata !"data", metadata !5, i32 67108904, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 40]
!15 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 42, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 42]
!16 = metadata !{i32 786688, metadata !4, metadata !"buf", metadata !5, i32 43, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 43]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!18 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_blockrx", metadata !"_blockrx", metadata !"", i32 56, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i8*)* @_blockrx, null, null, metadata !20, i32 57} ; [ DW_TAG_subprogram ] [line 56] [def] [scope 57] [_blockrx]
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27}
!21 = metadata !{i32 786689, metadata !19, metadata !"src", metadata !5, i32 16777272, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 56]
!22 = metadata !{i32 786689, metadata !19, metadata !"nelem", metadata !5, i32 33554488, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelem] [line 56]
!23 = metadata !{i32 786689, metadata !19, metadata !"size", metadata !5, i32 50331704, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 56]
!24 = metadata !{i32 786689, metadata !19, metadata !"data", metadata !5, i32 67108920, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 56]
!25 = metadata !{i32 786688, metadata !19, metadata !"i", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 58]
!26 = metadata !{i32 786688, metadata !19, metadata !"len", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 58]
!27 = metadata !{i32 786688, metadata !19, metadata !"buf", metadata !5, i32 59, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 59]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mv_block", metadata !"mv_block", metadata !"", i32 74, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_block*)* @mv_block, null, null, metadata !46, i32 75} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 75] [mv_block]
!29 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{null, metadata !8, metadata !31}
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!32 = metadata !{i32 786454, metadata !1, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!33 = metadata !{i32 786451, metadata !34, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !35, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!34 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!35 = metadata !{metadata !36, metadata !40, metadata !41, metadata !44, metadata !45}
!36 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!37 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !8, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!40 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !8} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!41 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !42} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!43 = metadata !{i32 786454, metadata !34, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!44 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !8} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!45 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !42} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!46 = metadata !{metadata !47, metadata !48}
!47 = metadata !{i32 786689, metadata !28, metadata !"dest", metadata !5, i32 16777290, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 74]
!48 = metadata !{i32 786689, metadata !28, metadata !"block", metadata !5, i32 33554506, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block] [line 74]
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ld_block", metadata !"ld_block", metadata !"", i32 98, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_block*)* @ld_block, null, null, metadata !50, i32 99} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 99] [ld_block]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786689, metadata !49, metadata !"src", metadata !5, i32 16777314, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 98]
!52 = metadata !{i32 786689, metadata !49, metadata !"block", metadata !5, i32 33554530, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block] [line 98]
!53 = metadata !{i32 40, i32 0, metadata !4, null}
!54 = metadata !{metadata !"int", metadata !55}
!55 = metadata !{metadata !"omnipotent char", metadata !56}
!56 = metadata !{metadata !"Simple C/C++ TBAA"}
!57 = metadata !{i32 43, i32 0, metadata !4, null}
!58 = metadata !{i32 45, i32 0, metadata !4, null}
!59 = metadata !{i32 46, i32 0, metadata !4, null}
!60 = metadata !{i32 48, i32 0, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c]
!62 = metadata !{i32 49, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !61, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c]
!64 = metadata !{i32 50, i32 0, metadata !63, null}
!65 = metadata !{i32 51, i32 0, metadata !63, null}
!66 = metadata !{i32 52, i32 0, metadata !63, null}
!67 = metadata !{i32 54, i32 0, metadata !4, null}
!68 = metadata !{i32 56, i32 0, metadata !19, null}
!69 = metadata !{i32 58, i32 0, metadata !19, null} ; [ DW_TAG_imported_module ]
!70 = metadata !{i32 59, i32 0, metadata !19, null}
!71 = metadata !{i32 61, i32 0, metadata !19, null}
!72 = metadata !{i32 62, i32 0, metadata !19, null}
!73 = metadata !{i32 63, i32 0, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !19, i32 63, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c]
!75 = metadata !{i32 64, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !74, i32 63, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c]
!77 = metadata !{i32 65, i32 0, metadata !76, null}
!78 = metadata !{i32 66, i32 0, metadata !76, null}
!79 = metadata !{i32 68, i32 0, metadata !76, null}
!80 = metadata !{i32 69, i32 0, metadata !76, null}
!81 = metadata !{i32 70, i32 0, metadata !76, null}
!82 = metadata !{i32 72, i32 0, metadata !19, null}
!83 = metadata !{i32 74, i32 0, metadata !28, null}
!84 = metadata !{i32 76, i32 0, metadata !28, null}
!85 = metadata !{i32 80, i32 0, metadata !28, null}
!86 = metadata !{i32 84, i32 0, metadata !28, null}
!87 = metadata !{metadata !"any pointer", metadata !55}
!88 = metadata !{i32 88, i32 0, metadata !28, null}
!89 = metadata !{i32 92, i32 0, metadata !28, null}
!90 = metadata !{i32 96, i32 0, metadata !28, null}
!91 = metadata !{i32 98, i32 0, metadata !49, null}
!92 = metadata !{i32 100, i32 0, metadata !49, null}
!93 = metadata !{i32 104, i32 0, metadata !49, null}
!94 = metadata !{i32 108, i32 0, metadata !49, null}
!95 = metadata !{i32 112, i32 0, metadata !49, null}
!96 = metadata !{i32 116, i32 0, metadata !49, null}
!97 = metadata !{i32 120, i32 0, metadata !49, null}
!98 = metadata !{i32 124, i32 0, metadata !49, null}
!99 = metadata !{i32 128, i32 0, metadata !49, null}
