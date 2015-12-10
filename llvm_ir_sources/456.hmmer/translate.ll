; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@squid_errno = external global i32
@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @Translate(i8* %seq, i8** nocapture %code) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !12), !dbg !19
  tail call void @llvm.dbg.value(metadata !{i8** %code}, i64 0, metadata !13), !dbg !19
  %cmp = icmp eq i8* %seq, null, !dbg !20
  br i1 %cmp, label %if.then, label %if.end, !dbg !20

if.then:                                          ; preds = %entry
  store i32 2, i32* @squid_errno, align 4, !dbg !21, !tbaa !23
  br label %return, !dbg !21

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %seq) #5, !dbg !26
  %add = add i64 %call, 1, !dbg !26
  %call1 = tail call noalias i8* @calloc(i64 %add, i64 1) #6, !dbg !26
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !16), !dbg !26
  %cmp2 = icmp eq i8* %call1, null, !dbg !26
  br i1 %cmp2, label %if.then3, label %for.cond.preheader, !dbg !26

if.then3:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #6, !dbg !27
  br label %for.cond.preheader, !dbg !27

for.cond.preheader:                               ; preds = %if.then3, %if.end
  %aaptr.0.ph = phi i8* [ %call1, %if.end ], [ null, %if.then3 ]
  %0 = load i8* %seq, align 1, !dbg !28, !tbaa !24
  %cmp566 = icmp eq i8 %0, 0, !dbg !28
  br i1 %cmp566, label %return, label %land.lhs.true, !dbg !28

land.lhs.true:                                    ; preds = %for.cond.preheader, %for.end
  %1 = phi i8 [ %8, %for.end ], [ %0, %for.cond.preheader ]
  %aaptr.068 = phi i8* [ %add.ptr36, %for.end ], [ %aaptr.0.ph, %for.cond.preheader ]
  %seq.addr.067 = phi i8* [ %add.ptr38, %for.end ], [ %seq, %for.cond.preheader ]
  %add.ptr = getelementptr inbounds i8* %seq.addr.067, i64 1, !dbg !28
  %2 = load i8* %add.ptr, align 1, !dbg !28, !tbaa !24
  %cmp8 = icmp eq i8 %2, 0, !dbg !28
  br i1 %cmp8, label %return, label %land.rhs, !dbg !28

land.rhs:                                         ; preds = %land.lhs.true
  %add.ptr10 = getelementptr inbounds i8* %seq.addr.067, i64 2, !dbg !28
  %3 = load i8* %add.ptr10, align 1, !dbg !28, !tbaa !24
  %cmp12 = icmp eq i8 %3, 0, !dbg !28
  br i1 %cmp12, label %return, label %for.body17

for.cond14:                                       ; preds = %sw.epilog
  %4 = trunc i64 %indvars.iv to i32, !dbg !30
  %cmp15 = icmp slt i32 %4, 3, !dbg !30
  br i1 %cmp15, label %for.cond14.for.body17_crit_edge, label %for.end, !dbg !30

for.cond14.for.body17_crit_edge:                  ; preds = %for.cond14
  %add.ptr18.phi.trans.insert = getelementptr inbounds i8* %seq.addr.067, i64 %indvars.iv
  %.pre = load i8* %add.ptr18.phi.trans.insert, align 1, !dbg !33, !tbaa !24
  %phitmp = add i64 %indvars.iv, 1, !dbg !30
  br label %for.body17, !dbg !30

for.body17:                                       ; preds = %land.rhs, %for.cond14.for.body17_crit_edge
  %5 = phi i8 [ %.pre, %for.cond14.for.body17_crit_edge ], [ %1, %land.rhs ]
  %indvars.iv = phi i64 [ %phitmp, %for.cond14.for.body17_crit_edge ], [ 1, %land.rhs ]
  %codon.064 = phi i32 [ %codon.1, %for.cond14.for.body17_crit_edge ], [ 0, %land.rhs ]
  %mul = shl nsw i32 %codon.064, 2, !dbg !35
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !14), !dbg !35
  %conv19 = sext i8 %5 to i32, !dbg !33
  switch i32 %conv19, label %for.end [
    i32 65, label %sw.epilog
    i32 97, label %sw.epilog
    i32 67, label %sw.bb20
    i32 99, label %sw.bb20
    i32 71, label %sw.bb22
    i32 103, label %sw.bb22
    i32 84, label %sw.bb24
    i32 116, label %sw.bb24
    i32 85, label %sw.bb26
    i32 117, label %sw.bb26
  ], !dbg !33

sw.bb20:                                          ; preds = %for.body17, %for.body17
  %add2162 = or i32 %mul, 1, !dbg !36
  tail call void @llvm.dbg.value(metadata !{i32 %add2162}, i64 0, metadata !14), !dbg !36
  br label %sw.epilog, !dbg !36

sw.bb22:                                          ; preds = %for.body17, %for.body17
  %add2361 = or i32 %mul, 2, !dbg !38
  tail call void @llvm.dbg.value(metadata !{i32 %add2361}, i64 0, metadata !14), !dbg !38
  br label %sw.epilog, !dbg !38

sw.bb24:                                          ; preds = %for.body17, %for.body17
  %add2560 = or i32 %mul, 3, !dbg !39
  tail call void @llvm.dbg.value(metadata !{i32 %add2560}, i64 0, metadata !14), !dbg !39
  br label %sw.epilog, !dbg !39

sw.bb26:                                          ; preds = %for.body17, %for.body17
  %add2759 = or i32 %mul, 3, !dbg !40
  tail call void @llvm.dbg.value(metadata !{i32 %add2759}, i64 0, metadata !14), !dbg !40
  br label %sw.epilog, !dbg !40

sw.epilog:                                        ; preds = %for.body17, %for.body17, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20
  %codon.1 = phi i32 [ %add2759, %sw.bb26 ], [ %add2560, %sw.bb24 ], [ %add2361, %sw.bb22 ], [ %add2162, %sw.bb20 ], [ %mul, %for.body17 ], [ %mul, %for.body17 ]
  %cmp28 = icmp eq i32 %codon.1, 64, !dbg !41
  br i1 %cmp28, label %for.end, label %for.cond14, !dbg !41

for.end:                                          ; preds = %for.body17, %sw.epilog, %for.cond14
  %codon.2 = phi i32 [ 64, %sw.epilog ], [ %codon.1, %for.cond14 ], [ 64, %for.body17 ]
  %idxprom = sext i32 %codon.2 to i64, !dbg !42
  %arrayidx = getelementptr inbounds i8** %code, i64 %idxprom, !dbg !42
  %6 = load i8** %arrayidx, align 8, !dbg !42, !tbaa !43
  %call32 = tail call i8* @strcpy(i8* %aaptr.068, i8* %6) #6, !dbg !42
  %7 = load i8** %arrayidx, align 8, !dbg !44, !tbaa !43
  %call35 = tail call i64 @strlen(i8* %7) #5, !dbg !44
  %add.ptr36 = getelementptr inbounds i8* %aaptr.068, i64 %call35, !dbg !44
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr36}, i64 0, metadata !17), !dbg !44
  %add.ptr38 = getelementptr inbounds i8* %seq.addr.067, i64 3, !dbg !28
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr38}, i64 0, metadata !12), !dbg !28
  %8 = load i8* %add.ptr38, align 1, !dbg !28, !tbaa !24
  %cmp5 = icmp eq i8 %8, 0, !dbg !28
  br i1 %cmp5, label %return, label %land.lhs.true, !dbg !28

return:                                           ; preds = %for.cond.preheader, %land.lhs.true, %land.rhs, %for.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call1, %for.end ], [ %call1, %land.rhs ], [ %call1, %land.lhs.true ], [ %call1, %for.cond.preheader ]
  ret i8* %retval.0, !dbg !45
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Translate", metadata !"Translate", metadata !"", i32 48, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8**)* @Translate, null, null, metadata !11, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [Translate]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !10}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!9 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !16, metadata !17, metadata !18}
!12 = metadata !{i32 786689, metadata !4, metadata !"seq", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 48]
!13 = metadata !{i32 786689, metadata !4, metadata !"code", metadata !5, i32 33554480, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [code] [line 48]
!14 = metadata !{i32 786688, metadata !4, metadata !"codon", metadata !5, i32 50, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [codon] [line 50]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786688, metadata !4, metadata !"aaseq", metadata !5, i32 51, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aaseq] [line 51]
!17 = metadata !{i32 786688, metadata !4, metadata !"aaptr", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aaptr] [line 52]
!18 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 53, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 53]
!19 = metadata !{i32 48, i32 0, metadata !4, null}
!20 = metadata !{i32 55, i32 0, metadata !4, null}
!21 = metadata !{i32 56, i32 0, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 56, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c]
!23 = metadata !{metadata !"int", metadata !24}
!24 = metadata !{metadata !"omnipotent char", metadata !25}
!25 = metadata !{metadata !"Simple C/C++ TBAA"}
!26 = metadata !{i32 57, i32 0, metadata !4, null}
!27 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!28 = metadata !{i32 61, i32 0, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c]
!30 = metadata !{i32 66, i32 0, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !32, i32 66, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c]
!32 = metadata !{i32 786443, metadata !1, metadata !29, i32 62, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c]
!33 = metadata !{i32 69, i32 0, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !31, i32 67, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c]
!35 = metadata !{i32 68, i32 0, metadata !34, null}
!36 = metadata !{i32 71, i32 0, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !34, i32 69, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c]
!38 = metadata !{i32 72, i32 0, metadata !37, null}
!39 = metadata !{i32 73, i32 0, metadata !37, null}
!40 = metadata !{i32 74, i32 0, metadata !37, null}
!41 = metadata !{i32 77, i32 0, metadata !34, null}
!42 = metadata !{i32 80, i32 0, metadata !32, null}
!43 = metadata !{metadata !"any pointer", metadata !24}
!44 = metadata !{i32 81, i32 0, metadata !32, null}
!45 = metadata !{i32 84, i32 0, metadata !4, null}
