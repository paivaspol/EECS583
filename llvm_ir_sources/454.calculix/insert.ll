; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"reallocation: nzs_=%d\0A\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @insert(i32* nocapture %ipointer, i32** nocapture %mast1p, i32** nocapture %mast2p, i32* nocapture %i1, i32* nocapture %i2, i32* nocapture %ifree, i32* nocapture %nzs_) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ipointer}, i64 0, metadata !12), !dbg !24
  tail call void @llvm.dbg.value(metadata !{i32** %mast1p}, i64 0, metadata !13), !dbg !24
  tail call void @llvm.dbg.value(metadata !{i32** %mast2p}, i64 0, metadata !14), !dbg !24
  tail call void @llvm.dbg.value(metadata !{i32* %i1}, i64 0, metadata !15), !dbg !24
  tail call void @llvm.dbg.value(metadata !{i32* %i2}, i64 0, metadata !16), !dbg !25
  tail call void @llvm.dbg.value(metadata !{i32* %ifree}, i64 0, metadata !17), !dbg !25
  tail call void @llvm.dbg.value(metadata !{i32* %nzs_}, i64 0, metadata !18), !dbg !25
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !22), !dbg !27
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !23), !dbg !27
  %0 = load i32** %mast1p, align 8, !dbg !28, !tbaa !29
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !22), !dbg !28
  %1 = load i32** %mast2p, align 8, !dbg !32, !tbaa !29
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !23), !dbg !32
  %2 = load i32* %i1, align 4, !dbg !33, !tbaa !34
  %3 = load i32* %i2, align 4, !dbg !33, !tbaa !34
  %cmp = icmp slt i32 %2, %3, !dbg !33
  %. = select i1 %cmp, i32 %2, i32 %3, !dbg !35
  %.116 = select i1 %cmp, i32 %3, i32 %2, !dbg !35
  %sub = add nsw i32 %.116, -1, !dbg !37
  %idxprom = sext i32 %sub to i64, !dbg !37
  %arrayidx = getelementptr inbounds i32* %ipointer, i64 %idxprom, !dbg !37
  %4 = load i32* %arrayidx, align 4, !dbg !37, !tbaa !34
  %cmp1 = icmp eq i32 %4, 0, !dbg !37
  br i1 %cmp1, label %if.then2, label %while.body, !dbg !37

if.then2:                                         ; preds = %entry
  %5 = load i32* %ifree, align 4, !dbg !38, !tbaa !34
  %inc = add nsw i32 %5, 1, !dbg !38
  store i32 %inc, i32* %ifree, align 4, !dbg !38, !tbaa !34
  %6 = load i32* %nzs_, align 4, !dbg !40, !tbaa !34
  %cmp3 = icmp slt i32 %5, %6, !dbg !40
  br i1 %cmp3, label %if.end12, label %if.then4, !dbg !40

if.then4:                                         ; preds = %if.then2
  %conv = sitofp i32 %6 to double, !dbg !41
  %mul = fmul double %conv, 1.100000e+00, !dbg !41
  %conv5 = fptosi double %mul to i32, !dbg !41
  store i32 %conv5, i32* %nzs_, align 4, !dbg !41, !tbaa !34
  %7 = bitcast i32* %0 to i8*, !dbg !43
  %conv6 = sext i32 %conv5 to i64, !dbg !43
  %mul7 = shl nsw i64 %conv6, 2, !dbg !43
  %call = tail call i8* @realloc(i8* %7, i64 %mul7) #3, !dbg !43
  %8 = bitcast i8* %call to i32*, !dbg !43
  tail call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !22), !dbg !43
  %9 = bitcast i32* %1 to i8*, !dbg !44
  %10 = load i32* %nzs_, align 4, !dbg !44, !tbaa !34
  %conv8 = sext i32 %10 to i64, !dbg !44
  %mul9 = shl nsw i64 %conv8, 2, !dbg !44
  %call10 = tail call i8* @realloc(i8* %9, i64 %mul9) #3, !dbg !44
  %11 = bitcast i8* %call10 to i32*, !dbg !44
  tail call void @llvm.dbg.value(metadata !{i32* %11}, i64 0, metadata !23), !dbg !44
  %12 = load i32* %nzs_, align 4, !dbg !45, !tbaa !34
  %call11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i32 %12) #3, !dbg !45
  %.pre = load i32* %ifree, align 4, !dbg !46, !tbaa !34
  br label %if.end12, !dbg !47

if.end12:                                         ; preds = %if.then2, %if.then4
  %13 = phi i32 [ %.pre, %if.then4 ], [ %inc, %if.then2 ]
  %mast1.0 = phi i32* [ %8, %if.then4 ], [ %0, %if.then2 ]
  %mast2.0 = phi i32* [ %11, %if.then4 ], [ %1, %if.then2 ]
  store i32 %13, i32* %arrayidx, align 4, !dbg !46, !tbaa !34
  %14 = load i32* %ifree, align 4, !dbg !48, !tbaa !34
  %sub16 = add nsw i32 %14, -1, !dbg !48
  %idxprom17 = sext i32 %sub16 to i64, !dbg !48
  %arrayidx18 = getelementptr inbounds i32* %mast1.0, i64 %idxprom17, !dbg !48
  store i32 %., i32* %arrayidx18, align 4, !dbg !48, !tbaa !34
  %15 = load i32* %ifree, align 4, !dbg !49, !tbaa !34
  %sub19 = add nsw i32 %15, -1, !dbg !49
  %idxprom20 = sext i32 %sub19 to i64, !dbg !49
  %arrayidx21 = getelementptr inbounds i32* %mast2.0, i64 %idxprom20, !dbg !49
  store i32 0, i32* %arrayidx21, align 4, !dbg !49, !tbaa !34
  br label %if.end68, !dbg !50

while.body:                                       ; preds = %entry, %if.end32
  %istart.0 = phi i32 [ %17, %if.end32 ], [ %4, %entry ]
  %sub26 = add nsw i32 %istart.0, -1, !dbg !51
  %idxprom27 = sext i32 %sub26 to i64, !dbg !51
  %arrayidx28 = getelementptr inbounds i32* %0, i64 %idxprom27, !dbg !51
  %16 = load i32* %arrayidx28, align 4, !dbg !51, !tbaa !34
  %cmp29 = icmp eq i32 %16, %., !dbg !51
  br i1 %cmp29, label %if.end68, label %if.end32, !dbg !51

if.end32:                                         ; preds = %while.body
  %arrayidx35 = getelementptr inbounds i32* %1, i64 %idxprom27, !dbg !54
  %17 = load i32* %arrayidx35, align 4, !dbg !54, !tbaa !34
  %cmp36 = icmp eq i32 %17, 0, !dbg !54
  br i1 %cmp36, label %if.then38, label %while.body, !dbg !54

if.then38:                                        ; preds = %if.end32
  %18 = load i32* %ifree, align 4, !dbg !55, !tbaa !34
  %inc39 = add nsw i32 %18, 1, !dbg !55
  store i32 %inc39, i32* %ifree, align 4, !dbg !55, !tbaa !34
  %19 = load i32* %nzs_, align 4, !dbg !57, !tbaa !34
  %cmp40 = icmp slt i32 %18, %19, !dbg !57
  br i1 %cmp40, label %if.end53, label %if.then42, !dbg !57

if.then42:                                        ; preds = %if.then38
  %conv43 = sitofp i32 %19 to double, !dbg !58
  %mul44 = fmul double %conv43, 1.100000e+00, !dbg !58
  %conv45 = fptosi double %mul44 to i32, !dbg !58
  store i32 %conv45, i32* %nzs_, align 4, !dbg !58, !tbaa !34
  %20 = bitcast i32* %0 to i8*, !dbg !60
  %conv46 = sext i32 %conv45 to i64, !dbg !60
  %mul47 = shl nsw i64 %conv46, 2, !dbg !60
  %call48 = tail call i8* @realloc(i8* %20, i64 %mul47) #3, !dbg !60
  %21 = bitcast i8* %call48 to i32*, !dbg !60
  tail call void @llvm.dbg.value(metadata !{i32* %21}, i64 0, metadata !22), !dbg !60
  %22 = bitcast i32* %1 to i8*, !dbg !61
  %23 = load i32* %nzs_, align 4, !dbg !61, !tbaa !34
  %conv49 = sext i32 %23 to i64, !dbg !61
  %mul50 = shl nsw i64 %conv49, 2, !dbg !61
  %call51 = tail call i8* @realloc(i8* %22, i64 %mul50) #3, !dbg !61
  %24 = bitcast i8* %call51 to i32*, !dbg !61
  tail call void @llvm.dbg.value(metadata !{i32* %24}, i64 0, metadata !23), !dbg !61
  %25 = load i32* %nzs_, align 4, !dbg !62, !tbaa !34
  %call52 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i32 %25) #3, !dbg !62
  %.pre119 = load i32* %ifree, align 4, !dbg !63, !tbaa !34
  br label %if.end53, !dbg !64

if.end53:                                         ; preds = %if.then38, %if.then42
  %26 = phi i32 [ %.pre119, %if.then42 ], [ %inc39, %if.then38 ]
  %mast1.1 = phi i32* [ %21, %if.then42 ], [ %0, %if.then38 ]
  %mast2.1 = phi i32* [ %24, %if.then42 ], [ %1, %if.then38 ]
  %arrayidx56 = getelementptr inbounds i32* %mast2.1, i64 %idxprom27, !dbg !63
  store i32 %26, i32* %arrayidx56, align 4, !dbg !63, !tbaa !34
  %27 = load i32* %ifree, align 4, !dbg !65, !tbaa !34
  %sub57 = add nsw i32 %27, -1, !dbg !65
  %idxprom58 = sext i32 %sub57 to i64, !dbg !65
  %arrayidx59 = getelementptr inbounds i32* %mast1.1, i64 %idxprom58, !dbg !65
  store i32 %., i32* %arrayidx59, align 4, !dbg !65, !tbaa !34
  %28 = load i32* %ifree, align 4, !dbg !66, !tbaa !34
  %sub60 = add nsw i32 %28, -1, !dbg !66
  %idxprom61 = sext i32 %sub60 to i64, !dbg !66
  %arrayidx62 = getelementptr inbounds i32* %mast2.1, i64 %idxprom61, !dbg !66
  store i32 0, i32* %arrayidx62, align 4, !dbg !66, !tbaa !34
  br label %if.end68, !dbg !67

if.end68:                                         ; preds = %while.body, %if.end53, %if.end12
  %mast1.2 = phi i32* [ %mast1.0, %if.end12 ], [ %mast1.1, %if.end53 ], [ %0, %while.body ]
  %mast2.2 = phi i32* [ %mast2.0, %if.end12 ], [ %mast2.1, %if.end53 ], [ %1, %while.body ]
  store i32* %mast1.2, i32** %mast1p, align 8, !dbg !68, !tbaa !29
  store i32* %mast2.2, i32** %mast2p, align 8, !dbg !69, !tbaa !29
  ret void, !dbg !70
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"insert", metadata !"insert", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32**, i32**, i32*, i32*, i32*, i32*)* @insert, null, null, metadata !11, i32 25} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 25] [insert]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10, metadata !10, metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23}
!12 = metadata !{i32 786689, metadata !4, metadata !"ipointer", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ipointer] [line 24]
!13 = metadata !{i32 786689, metadata !4, metadata !"mast1p", metadata !5, i32 33554456, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mast1p] [line 24]
!14 = metadata !{i32 786689, metadata !4, metadata !"mast2p", metadata !5, i32 50331672, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mast2p] [line 24]
!15 = metadata !{i32 786689, metadata !4, metadata !"i1", metadata !5, i32 67108888, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i1] [line 24]
!16 = metadata !{i32 786689, metadata !4, metadata !"i2", metadata !5, i32 83886105, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i2] [line 25]
!17 = metadata !{i32 786689, metadata !4, metadata !"ifree", metadata !5, i32 100663321, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ifree] [line 25]
!18 = metadata !{i32 786689, metadata !4, metadata !"nzs_", metadata !5, i32 117440537, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nzs_] [line 25]
!19 = metadata !{i32 786688, metadata !4, metadata !"idof1", metadata !5, i32 29, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idof1] [line 29]
!20 = metadata !{i32 786688, metadata !4, metadata !"idof2", metadata !5, i32 29, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idof2] [line 29]
!21 = metadata !{i32 786688, metadata !4, metadata !"istart", metadata !5, i32 29, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istart] [line 29]
!22 = metadata !{i32 786688, metadata !4, metadata !"mast1", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mast1] [line 29]
!23 = metadata !{i32 786688, metadata !4, metadata !"mast2", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mast2] [line 29]
!24 = metadata !{i32 24, i32 0, metadata !4, null}
!25 = metadata !{i32 25, i32 0, metadata !4, null}
!26 = metadata !{i32* null}
!27 = metadata !{i32 29, i32 0, metadata !4, null}
!28 = metadata !{i32 31, i32 0, metadata !4, null}
!29 = metadata !{metadata !"any pointer", metadata !30}
!30 = metadata !{metadata !"omnipotent char", metadata !31}
!31 = metadata !{metadata !"Simple C/C++ TBAA"}
!32 = metadata !{i32 32, i32 0, metadata !4, null}
!33 = metadata !{i32 34, i32 0, metadata !4, null}
!34 = metadata !{metadata !"int", metadata !30}
!35 = metadata !{i32 37, i32 0, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c]
!37 = metadata !{i32 43, i32 0, metadata !4, null}
!38 = metadata !{i32 44, i32 0, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !4, i32 43, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c]
!40 = metadata !{i32 45, i32 0, metadata !39, null}
!41 = metadata !{i32 46, i32 0, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !39, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c]
!43 = metadata !{i32 47, i32 0, metadata !42, null}
!44 = metadata !{i32 48, i32 0, metadata !42, null}
!45 = metadata !{i32 49, i32 0, metadata !42, null}
!46 = metadata !{i32 51, i32 0, metadata !39, null}
!47 = metadata !{i32 50, i32 0, metadata !42, null}
!48 = metadata !{i32 52, i32 0, metadata !39, null}
!49 = metadata !{i32 53, i32 0, metadata !39, null}
!50 = metadata !{i32 54, i32 0, metadata !39, null}
!51 = metadata !{i32 58, i32 0, metadata !52, null} ; [ DW_TAG_imported_module ]
!52 = metadata !{i32 786443, metadata !1, metadata !53, i32 57, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c]
!53 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c]
!54 = metadata !{i32 59, i32 0, metadata !52, null}
!55 = metadata !{i32 60, i32 0, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !52, i32 59, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c]
!57 = metadata !{i32 61, i32 0, metadata !56, null}
!58 = metadata !{i32 62, i32 0, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !56, i32 61, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c]
!60 = metadata !{i32 63, i32 0, metadata !59, null}
!61 = metadata !{i32 64, i32 0, metadata !59, null}
!62 = metadata !{i32 65, i32 0, metadata !59, null}
!63 = metadata !{i32 67, i32 0, metadata !56, null}
!64 = metadata !{i32 66, i32 0, metadata !59, null}
!65 = metadata !{i32 68, i32 0, metadata !56, null}
!66 = metadata !{i32 69, i32 0, metadata !56, null}
!67 = metadata !{i32 70, i32 0, metadata !56, null}
!68 = metadata !{i32 78, i32 0, metadata !4, null}
!69 = metadata !{i32 79, i32 0, metadata !4, null}
!70 = metadata !{i32 81, i32 0, metadata !4, null}
