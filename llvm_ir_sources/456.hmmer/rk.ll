; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i64 @rkcomp(i8* %probe) #0 {
entry:
  %coded = alloca [17 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %probe}, i64 0, metadata !13), !dbg !32
  call void @llvm.dbg.value(metadata !33, i64 0, metadata !14), !dbg !34
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %coded}, metadata !15), !dbg !35
  %call = call i64 @strlen(i8* %probe) #5, !dbg !36
  %conv = trunc i64 %call to i32, !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !19), !dbg !36
  %sext = shl i64 %call, 32, !dbg !36
  %conv1 = ashr exact i64 %sext, 32, !dbg !36
  %cmp = icmp ugt i64 %conv1, 16, !dbg !36
  br i1 %cmp, label %return, label %if.end, !dbg !36

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [17 x i8]* %coded, i64 0, i64 0, !dbg !37
  %call3 = call i32 @seqencode(i8* %arraydecay, i8* %probe) #6, !dbg !37
  %cmp4 = icmp eq i32 %call3, 0, !dbg !37
  br i1 %cmp4, label %return, label %for.cond.preheader, !dbg !37

for.cond.preheader:                               ; preds = %if.end
  %cmp832 = icmp sgt i32 %conv, 0, !dbg !38
  br i1 %cmp832, label %for.body, label %for.body15, !dbg !38

for.cond11.preheader:                             ; preds = %for.body
  %cmp1329 = icmp ult i32 %conv, 16, !dbg !40
  br i1 %cmp1329, label %for.body15, label %return, !dbg !40

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %hashprobe.033 = phi i64 [ %or, %for.body ], [ 0, %for.cond.preheader ]
  %shl = shl i64 %hashprobe.033, 4, !dbg !42
  call void @llvm.dbg.value(metadata !{i64 %shl}, i64 0, metadata !14), !dbg !42
  %arrayidx = getelementptr inbounds [17 x i8]* %coded, i64 0, i64 %indvars.iv, !dbg !44
  %0 = load i8* %arrayidx, align 1, !dbg !44, !tbaa !45
  %conv10 = sext i8 %0 to i64, !dbg !44
  %or = or i64 %conv10, %shl, !dbg !44
  call void @llvm.dbg.value(metadata !{i64 %or}, i64 0, metadata !14), !dbg !44
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !38
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !21), !dbg !38
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !38
  %exitcond37 = icmp eq i32 %lftr.wideiv, %conv, !dbg !38
  br i1 %exitcond37, label %for.cond11.preheader, label %for.body, !dbg !38

for.body15:                                       ; preds = %for.cond.preheader, %for.cond11.preheader, %for.body15
  %i.131 = phi i32 [ %inc19, %for.body15 ], [ %conv, %for.cond11.preheader ], [ 0, %for.cond.preheader ]
  %hashprobe.130 = phi i64 [ %or17, %for.body15 ], [ %or, %for.cond11.preheader ], [ 0, %for.cond.preheader ]
  %shl16 = shl i64 %hashprobe.130, 4, !dbg !47
  call void @llvm.dbg.value(metadata !{i64 %shl16}, i64 0, metadata !14), !dbg !47
  %or17 = or i64 %shl16, 15, !dbg !49
  call void @llvm.dbg.value(metadata !{i64 %or17}, i64 0, metadata !14), !dbg !49
  %inc19 = add nsw i32 %i.131, 1, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %inc19}, i64 0, metadata !21), !dbg !40
  %exitcond = icmp eq i32 %inc19, 16, !dbg !40
  br i1 %exitcond, label %return, label %for.body15, !dbg !40

return:                                           ; preds = %for.cond11.preheader, %for.body15, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %if.end ], [ %or, %for.cond11.preheader ], [ %or17, %for.body15 ]
  ret i64 %retval.0, !dbg !50
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare i32 @seqencode(i8*, i8*) #3

; Function Attrs: nounwind optsize readonly uwtable
define i32 @rkseq(i64 %hashprobe, i8* nocapture %sequence) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %hashprobe}, i64 0, metadata !26), !dbg !51
  tail call void @llvm.dbg.value(metadata !{i8* %sequence}, i64 0, metadata !27), !dbg !52
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !30), !dbg !53
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !31), !dbg !54
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !55
  br label %for.body, !dbg !55

while.cond.preheader:                             ; preds = %for.body, %if.end
  %target.0.lcssa = phi i64 [ %target.075, %for.body ], [ %or, %if.end ]
  %add.ptr768 = getelementptr inbounds i8* %sequence, i64 15, !dbg !57
  %0 = load i8* %add.ptr768, align 1, !dbg !57, !tbaa !45
  %cmp969 = icmp eq i8 %0, 0, !dbg !57
  br i1 %cmp969, label %for.body25, label %while.body.lr.ph, !dbg !57

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %add.ptr667 = getelementptr inbounds i8* %sequence, i64 16, !dbg !57
  br label %while.body, !dbg !57

for.body:                                         ; preds = %entry, %if.end
  %target.075 = phi i64 [ 0, %entry ], [ %or, %if.end ]
  %i.074 = phi i64 [ 0, %entry ], [ %inc, %if.end ]
  %add.ptr = getelementptr inbounds i8* %sequence, i64 %i.074, !dbg !58
  %1 = load i8* %add.ptr, align 1, !dbg !58, !tbaa !45
  %cmp1 = icmp eq i8 %1, 0, !dbg !58
  br i1 %cmp1, label %while.cond.preheader, label %if.end, !dbg !58

if.end:                                           ; preds = %for.body
  %shl = shl i64 %target.075, 4, !dbg !60
  tail call void @llvm.dbg.value(metadata !{i64 %shl}, i64 0, metadata !31), !dbg !60
  %conv4 = sext i8 %1 to i64, !dbg !61
  %or = or i64 %conv4, %shl, !dbg !61
  tail call void @llvm.dbg.value(metadata !{i64 %or}, i64 0, metadata !31), !dbg !61
  %inc = add nsw i64 %i.074, 1, !dbg !55
  tail call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !28), !dbg !55
  %cmp = icmp ult i64 %inc, 16, !dbg !55
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !55

while.body:                                       ; preds = %while.body.lr.ph, %if.end15
  %add.ptr672 = phi i8* [ %add.ptr667, %while.body.lr.ph ], [ %add.ptr6, %if.end15 ]
  %target.171 = phi i64 [ %target.0.lcssa, %while.body.lr.ph ], [ %or20, %if.end15 ]
  %pos.070 = phi i64 [ 0, %while.body.lr.ph ], [ %inc21, %if.end15 ]
  %and = and i64 %target.171, %hashprobe, !dbg !62
  %cmp11 = icmp eq i64 %and, %target.171, !dbg !62
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !62

if.then13:                                        ; preds = %while.body
  %conv14 = trunc i64 %pos.070 to i32, !dbg !64
  br label %return, !dbg !64

if.end15:                                         ; preds = %while.body
  %shl16 = shl i64 %target.171, 4, !dbg !65
  tail call void @llvm.dbg.value(metadata !{i64 %shl16}, i64 0, metadata !31), !dbg !65
  %2 = load i8* %add.ptr672, align 1, !dbg !66, !tbaa !45
  %conv19 = sext i8 %2 to i64, !dbg !66
  %or20 = or i64 %conv19, %shl16, !dbg !66
  tail call void @llvm.dbg.value(metadata !{i64 %or20}, i64 0, metadata !31), !dbg !66
  %inc21 = add nsw i64 %pos.070, 1, !dbg !67
  tail call void @llvm.dbg.value(metadata !{i64 %inc21}, i64 0, metadata !30), !dbg !67
  %add.ptr5.sum = add i64 %pos.070, 17, !dbg !57
  %add.ptr6 = getelementptr inbounds i8* %sequence, i64 %add.ptr5.sum, !dbg !57
  %add.ptr6.sum = add i64 %pos.070, 16, !dbg !57
  %add.ptr7 = getelementptr inbounds i8* %sequence, i64 %add.ptr6.sum, !dbg !57
  %3 = load i8* %add.ptr7, align 1, !dbg !57, !tbaa !45
  %cmp9 = icmp eq i8 %3, 0, !dbg !57
  br i1 %cmp9, label %for.body25, label %while.body, !dbg !57

for.body25:                                       ; preds = %while.cond.preheader, %if.end15, %if.end32
  %target.264 = phi i64 [ %shl33, %if.end32 ], [ %target.0.lcssa, %while.cond.preheader ], [ %or20, %if.end15 ]
  %pos.163 = phi i64 [ %inc34, %if.end32 ], [ 0, %while.cond.preheader ], [ %inc21, %if.end15 ]
  %i.162 = phi i64 [ %inc36, %if.end32 ], [ 0, %while.cond.preheader ], [ 0, %if.end15 ]
  %or26 = or i64 %target.264, 15, !dbg !68
  tail call void @llvm.dbg.value(metadata !{i64 %or26}, i64 0, metadata !31), !dbg !68
  %and27 = and i64 %or26, %hashprobe, !dbg !71
  %cmp28 = icmp eq i64 %and27, %or26, !dbg !71
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !71

if.then30:                                        ; preds = %for.body25
  %conv31 = trunc i64 %pos.163 to i32, !dbg !72
  br label %return, !dbg !72

if.end32:                                         ; preds = %for.body25
  %shl33 = shl i64 %or26, 4, !dbg !73
  tail call void @llvm.dbg.value(metadata !{i64 %shl33}, i64 0, metadata !31), !dbg !73
  %inc34 = add nsw i64 %pos.163, 1, !dbg !74
  tail call void @llvm.dbg.value(metadata !{i64 %inc34}, i64 0, metadata !30), !dbg !74
  %inc36 = add nsw i64 %i.162, 1, !dbg !75
  tail call void @llvm.dbg.value(metadata !{i64 %inc36}, i64 0, metadata !28), !dbg !75
  %cmp23 = icmp ult i64 %inc36, 16, !dbg !75
  br i1 %cmp23, label %for.body25, label %return, !dbg !75

return:                                           ; preds = %if.end32, %if.then30, %if.then13
  %retval.0 = phi i32 [ %conv14, %if.then13 ], [ %conv31, %if.then30 ], [ -1, %if.end32 ]
  ret i32 %retval.0, !dbg !76
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !22}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rkcomp", metadata !"rkcomp", metadata !"", i32 34, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i8*)* @rkcomp, null, null, metadata !12, i32 35} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 35] [rkcomp]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"Hashseq", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [Hashseq] [line 25, size 0, align 0, offset 0] [from long unsigned int]
!9 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !19, metadata !21}
!13 = metadata !{i32 786689, metadata !4, metadata !"probe", metadata !5, i32 16777250, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [probe] [line 34]
!14 = metadata !{i32 786688, metadata !4, metadata !"hashprobe", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hashprobe] [line 36]
!15 = metadata !{i32 786688, metadata !4, metadata !"coded", metadata !5, i32 37, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coded] [line 37]
!16 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 136, i64 8, i32 0, i32 0, metadata !11, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 136, align 8, offset 0] [from char]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 17}       ; [ DW_TAG_subrange_type ] [0, 16]
!19 = metadata !{i32 786688, metadata !4, metadata !"len", metadata !5, i32 38, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 38]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 39, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 39]
!22 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rkseq", metadata !"rkseq", metadata !"", i32 61, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64, i8*)* @rkseq, null, null, metadata !25, i32 63} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 63] [rkseq]
!23 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !20, metadata !8, metadata !10}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !30, metadata !31}
!26 = metadata !{i32 786689, metadata !22, metadata !"hashprobe", metadata !5, i32 16777277, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashprobe] [line 61]
!27 = metadata !{i32 786689, metadata !22, metadata !"sequence", metadata !5, i32 33554494, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sequence] [line 62]
!28 = metadata !{i32 786688, metadata !22, metadata !"i", metadata !5, i32 64, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 64]
!29 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!30 = metadata !{i32 786688, metadata !22, metadata !"pos", metadata !5, i32 65, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 65]
!31 = metadata !{i32 786688, metadata !22, metadata !"target", metadata !5, i32 66, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [target] [line 66]
!32 = metadata !{i32 34, i32 0, metadata !4, null}
!33 = metadata !{i64 0}
!34 = metadata !{i32 36, i32 0, metadata !4, null}
!35 = metadata !{i32 37, i32 0, metadata !4, null}
!36 = metadata !{i32 41, i32 0, metadata !4, null}
!37 = metadata !{i32 43, i32 0, metadata !4, null}
!38 = metadata !{i32 45, i32 0, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c]
!40 = metadata !{i32 51, i32 0, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c]
!42 = metadata !{i32 47, i32 0, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !39, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c]
!44 = metadata !{i32 48, i32 0, metadata !43, null}
!45 = metadata !{metadata !"omnipotent char", metadata !46}
!46 = metadata !{metadata !"Simple C/C++ TBAA"}
!47 = metadata !{i32 53, i32 0, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !41, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c]
!49 = metadata !{i32 54, i32 0, metadata !48, null}
!50 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!51 = metadata !{i32 61, i32 0, metadata !22, null}
!52 = metadata !{i32 62, i32 0, metadata !22, null}
!53 = metadata !{i32 65, i32 0, metadata !22, null}
!54 = metadata !{i32 66, i32 0, metadata !22, null}
!55 = metadata !{i32 69, i32 0, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !22, i32 69, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c]
!57 = metadata !{i32 77, i32 0, metadata !22, null}
!58 = metadata !{i32 71, i32 0, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !56, i32 70, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c]
!60 = metadata !{i32 73, i32 0, metadata !59, null}
!61 = metadata !{i32 74, i32 0, metadata !59, null}
!62 = metadata !{i32 88, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !22, i32 78, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c]
!64 = metadata !{i32 89, i32 0, metadata !63, null}
!65 = metadata !{i32 90, i32 0, metadata !63, null}
!66 = metadata !{i32 91, i32 0, metadata !63, null}
!67 = metadata !{i32 92, i32 0, metadata !63, null}
!68 = metadata !{i32 97, i32 0, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !70, i32 96, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c]
!70 = metadata !{i32 786443, metadata !1, metadata !22, i32 95, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c]
!71 = metadata !{i32 98, i32 0, metadata !69, null}
!72 = metadata !{i32 99, i32 0, metadata !69, null}
!73 = metadata !{i32 100, i32 0, metadata !69, null}
!74 = metadata !{i32 101, i32 0, metadata !69, null}
!75 = metadata !{i32 95, i32 0, metadata !70, null}
!76 = metadata !{i32 105, i32 0, metadata !22, null}
