; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/viewit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }

@can_view_ftp = internal unnamed_addr constant [5 x i32] [i32 0, i32 36, i32 45, i32 19, i32 15], align 16
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"Can not view %s, no DISPLAY environment variable.\0A\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @can_view(i32 %ftp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !61), !dbg !111
  tail call void @llvm.dbg.value(metadata !112, i64 0, metadata !62), !dbg !113
  br label %for.body, !dbg !113

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.06, 1, !dbg !113
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !113
  %cmp = icmp ult i32 %0, 5, !dbg !113
  br i1 %cmp, label %for.body, label %return, !dbg !113

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.cond ]
  %i.06 = phi i32 [ 1, %entry ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds [5 x i32]* @can_view_ftp, i64 0, i64 %indvars.iv, !dbg !115
  %1 = load i32* %arrayidx, align 4, !dbg !115, !tbaa !116
  %cmp2 = icmp eq i32 %1, %ftp, !dbg !115
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !113
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !62), !dbg !113
  br i1 %cmp2, label %return, label %for.cond, !dbg !115

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ %i.06, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0, !dbg !119
}

; Function Attrs: nounwind optsize uwtable
define void @do_view(i8* %fn, i8* nocapture %opts) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !69), !dbg !120
  tail call void @llvm.dbg.value(metadata !{i8* %opts}, i64 0, metadata !70), !dbg !120
  tail call void @llvm.dbg.value(metadata !121, i64 0, metadata !84), !dbg !122
  %call = tail call i32 @bDoView() #5, !dbg !123
  %tobool = icmp eq i32 %call, 0, !dbg !123
  %tobool1 = icmp eq i8* %fn, null, !dbg !123
  %or.cond = or i1 %tobool, %tobool1, !dbg !123
  br i1 %or.cond, label %cleanup, label %if.then2, !dbg !123

if.then2:                                         ; preds = %entry
  tail call void @llvm.dbg.value(metadata !121, i64 0, metadata !87), !dbg !124
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !126, !tbaa !128
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i8* %fn) #5, !dbg !126
  br label %cleanup, !dbg !129

cleanup:                                          ; preds = %if.then2, %entry
  ret void, !dbg !130
}

; Function Attrs: optsize
declare i32 @bDoView() #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @view_all(i32 %nf, %struct.t_filenm* %fnm) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nf}, i64 0, metadata !101), !dbg !131
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !102), !dbg !131
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !103), !dbg !132
  %cmp28 = icmp sgt i32 %nf, 0, !dbg !132
  br i1 %cmp28, label %for.body, label %for.end, !dbg !132

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, !dbg !134
  %ftp = getelementptr inbounds %struct.t_filenm* %arrayidx, i64 0, i32 0, !dbg !134
  %0 = load i32* %ftp, align 4, !dbg !134, !tbaa !116
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !135), !dbg !136
  tail call void @llvm.dbg.value(metadata !112, i64 0, metadata !137), !dbg !138
  br label %for.body.i, !dbg !138

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nsw i32 %i.06.i, 1, !dbg !138
  %1 = trunc i64 %indvars.iv.next.i to i32, !dbg !138
  %cmp.i = icmp ult i32 %1, 5, !dbg !138
  br i1 %cmp.i, label %for.body.i, label %for.inc, !dbg !138

for.body.i:                                       ; preds = %for.cond.i, %for.body
  %indvars.iv.i = phi i64 [ 1, %for.body ], [ %indvars.iv.next.i, %for.cond.i ]
  %i.06.i = phi i32 [ 1, %for.body ], [ %inc.i, %for.cond.i ]
  %arrayidx.i = getelementptr inbounds [5 x i32]* @can_view_ftp, i64 0, i64 %indvars.iv.i, !dbg !139
  %2 = load i32* %arrayidx.i, align 4, !dbg !139, !tbaa !116
  %cmp2.i = icmp eq i32 %2, %0, !dbg !139
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !138
  br i1 %cmp2.i, label %can_view.exit, label %for.cond.i, !dbg !139

can_view.exit:                                    ; preds = %for.body.i
  %tobool = icmp eq i32 %i.06.i, 0, !dbg !134
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !134

land.lhs.true:                                    ; preds = %can_view.exit
  %call3 = tail call i32 @is_output(%struct.t_filenm* %arrayidx) #5, !dbg !134
  %tobool4 = icmp eq i32 %call3, 0, !dbg !134
  br i1 %tobool4, label %for.inc, label %land.lhs.true5, !dbg !134

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call8 = tail call i32 @is_optional(%struct.t_filenm* %arrayidx) #5, !dbg !140
  %tobool9 = icmp eq i32 %call8, 0, !dbg !140
  br i1 %tobool9, label %if.then, label %lor.lhs.false, !dbg !140

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %call12 = tail call i32 @is_set(%struct.t_filenm* %arrayidx) #5, !dbg !140
  %tobool13 = icmp eq i32 %call12, 0, !dbg !140
  br i1 %tobool13, label %for.inc, label %if.then, !dbg !140

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true5
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2, !dbg !141
  %3 = load i8** %fn, align 8, !dbg !141, !tbaa !128
  tail call void @do_view(i8* %3, i8* undef) #6, !dbg !141
  br label %for.inc, !dbg !141

for.inc:                                          ; preds = %for.cond.i, %lor.lhs.false, %land.lhs.true, %can_view.exit, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !132
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !132
  %exitcond = icmp eq i32 %lftr.wideiv, %nf, !dbg !132
  br i1 %exitcond, label %for.end, label %for.body, !dbg !132

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !142
}

; Function Attrs: optsize
declare i32 @is_output(%struct.t_filenm*) #2

; Function Attrs: optsize
declare i32 @is_optional(%struct.t_filenm*) #2

; Function Attrs: optsize
declare i32 @is_set(%struct.t_filenm*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !53, metadata !54, metadata !104, metadata !53, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/viewit.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/viewit.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 37, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 37, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/filenm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!6 = metadata !{i32 786472, metadata !"efMDP", i64 0} ; [ DW_TAG_enumerator ] [efMDP :: 0]
!7 = metadata !{i32 786472, metadata !"efGCT", i64 1} ; [ DW_TAG_enumerator ] [efGCT :: 1]
!8 = metadata !{i32 786472, metadata !"efTRX", i64 2} ; [ DW_TAG_enumerator ] [efTRX :: 2]
!9 = metadata !{i32 786472, metadata !"efTRN", i64 3} ; [ DW_TAG_enumerator ] [efTRN :: 3]
!10 = metadata !{i32 786472, metadata !"efTRR", i64 4} ; [ DW_TAG_enumerator ] [efTRR :: 4]
!11 = metadata !{i32 786472, metadata !"efTRJ", i64 5} ; [ DW_TAG_enumerator ] [efTRJ :: 5]
!12 = metadata !{i32 786472, metadata !"efXTC", i64 6} ; [ DW_TAG_enumerator ] [efXTC :: 6]
!13 = metadata !{i32 786472, metadata !"efG87", i64 7} ; [ DW_TAG_enumerator ] [efG87 :: 7]
!14 = metadata !{i32 786472, metadata !"efENX", i64 8} ; [ DW_TAG_enumerator ] [efENX :: 8]
!15 = metadata !{i32 786472, metadata !"efEDR", i64 9} ; [ DW_TAG_enumerator ] [efEDR :: 9]
!16 = metadata !{i32 786472, metadata !"efENE", i64 10} ; [ DW_TAG_enumerator ] [efENE :: 10]
!17 = metadata !{i32 786472, metadata !"efSTX", i64 11} ; [ DW_TAG_enumerator ] [efSTX :: 11]
!18 = metadata !{i32 786472, metadata !"efSTO", i64 12} ; [ DW_TAG_enumerator ] [efSTO :: 12]
!19 = metadata !{i32 786472, metadata !"efGRO", i64 13} ; [ DW_TAG_enumerator ] [efGRO :: 13]
!20 = metadata !{i32 786472, metadata !"efG96", i64 14} ; [ DW_TAG_enumerator ] [efG96 :: 14]
!21 = metadata !{i32 786472, metadata !"efPDB", i64 15} ; [ DW_TAG_enumerator ] [efPDB :: 15]
!22 = metadata !{i32 786472, metadata !"efBRK", i64 16} ; [ DW_TAG_enumerator ] [efBRK :: 16]
!23 = metadata !{i32 786472, metadata !"efENT", i64 17} ; [ DW_TAG_enumerator ] [efENT :: 17]
!24 = metadata !{i32 786472, metadata !"efLOG", i64 18} ; [ DW_TAG_enumerator ] [efLOG :: 18]
!25 = metadata !{i32 786472, metadata !"efXVG", i64 19} ; [ DW_TAG_enumerator ] [efXVG :: 19]
!26 = metadata !{i32 786472, metadata !"efOUT", i64 20} ; [ DW_TAG_enumerator ] [efOUT :: 20]
!27 = metadata !{i32 786472, metadata !"efNDX", i64 21} ; [ DW_TAG_enumerator ] [efNDX :: 21]
!28 = metadata !{i32 786472, metadata !"efTOP", i64 22} ; [ DW_TAG_enumerator ] [efTOP :: 22]
!29 = metadata !{i32 786472, metadata !"efITP", i64 23} ; [ DW_TAG_enumerator ] [efITP :: 23]
!30 = metadata !{i32 786472, metadata !"efTPX", i64 24} ; [ DW_TAG_enumerator ] [efTPX :: 24]
!31 = metadata !{i32 786472, metadata !"efTPS", i64 25} ; [ DW_TAG_enumerator ] [efTPS :: 25]
!32 = metadata !{i32 786472, metadata !"efTPR", i64 26} ; [ DW_TAG_enumerator ] [efTPR :: 26]
!33 = metadata !{i32 786472, metadata !"efTPA", i64 27} ; [ DW_TAG_enumerator ] [efTPA :: 27]
!34 = metadata !{i32 786472, metadata !"efTPB", i64 28} ; [ DW_TAG_enumerator ] [efTPB :: 28]
!35 = metadata !{i32 786472, metadata !"efTEX", i64 29} ; [ DW_TAG_enumerator ] [efTEX :: 29]
!36 = metadata !{i32 786472, metadata !"efRTP", i64 30} ; [ DW_TAG_enumerator ] [efRTP :: 30]
!37 = metadata !{i32 786472, metadata !"efATP", i64 31} ; [ DW_TAG_enumerator ] [efATP :: 31]
!38 = metadata !{i32 786472, metadata !"efHDB", i64 32} ; [ DW_TAG_enumerator ] [efHDB :: 32]
!39 = metadata !{i32 786472, metadata !"efDAT", i64 33} ; [ DW_TAG_enumerator ] [efDAT :: 33]
!40 = metadata !{i32 786472, metadata !"efDLG", i64 34} ; [ DW_TAG_enumerator ] [efDLG :: 34]
!41 = metadata !{i32 786472, metadata !"efMAP", i64 35} ; [ DW_TAG_enumerator ] [efMAP :: 35]
!42 = metadata !{i32 786472, metadata !"efEPS", i64 36} ; [ DW_TAG_enumerator ] [efEPS :: 36]
!43 = metadata !{i32 786472, metadata !"efMAT", i64 37} ; [ DW_TAG_enumerator ] [efMAT :: 37]
!44 = metadata !{i32 786472, metadata !"efM2P", i64 38} ; [ DW_TAG_enumerator ] [efM2P :: 38]
!45 = metadata !{i32 786472, metadata !"efMTX", i64 39} ; [ DW_TAG_enumerator ] [efMTX :: 39]
!46 = metadata !{i32 786472, metadata !"efEDI", i64 40} ; [ DW_TAG_enumerator ] [efEDI :: 40]
!47 = metadata !{i32 786472, metadata !"efEDO", i64 41} ; [ DW_TAG_enumerator ] [efEDO :: 41]
!48 = metadata !{i32 786472, metadata !"efPPA", i64 42} ; [ DW_TAG_enumerator ] [efPPA :: 42]
!49 = metadata !{i32 786472, metadata !"efPDO", i64 43} ; [ DW_TAG_enumerator ] [efPDO :: 43]
!50 = metadata !{i32 786472, metadata !"efHAT", i64 44} ; [ DW_TAG_enumerator ] [efHAT :: 44]
!51 = metadata !{i32 786472, metadata !"efXPM", i64 45} ; [ DW_TAG_enumerator ] [efXPM :: 45]
!52 = metadata !{i32 786472, metadata !"efNR", i64 46} ; [ DW_TAG_enumerator ] [efNR :: 46]
!53 = metadata !{i32 0}
!54 = metadata !{metadata !55, metadata !63, metadata !88}
!55 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"can_view", metadata !"can_view", metadata !"", i32 46, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @can_view, null, null, metadata !60, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [can_view]
!56 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/viewit.c]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !59}
!59 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!60 = metadata !{metadata !61, metadata !62}
!61 = metadata !{i32 786689, metadata !55, metadata !"ftp", metadata !56, i32 16777262, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 46]
!62 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !56, i32 48, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 48]
!63 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"do_view", metadata !"do_view", metadata !"", i32 57, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*)* @do_view, null, null, metadata !68, i32 58} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 58] [do_view]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null, metadata !66, metadata !66}
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!67 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !75, metadata !79, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87}
!69 = metadata !{i32 786689, metadata !63, metadata !"fn", metadata !56, i32 16777273, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 57]
!70 = metadata !{i32 786689, metadata !63, metadata !"opts", metadata !56, i32 33554489, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 57]
!71 = metadata !{i32 786688, metadata !63, metadata !"buf", metadata !56, i32 60, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 60]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !67, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 4096}     ; [ DW_TAG_subrange_type ] [0, 4095]
!75 = metadata !{i32 786688, metadata !63, metadata !"env", metadata !56, i32 60, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [env] [line 60]
!76 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !67, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!79 = metadata !{i32 786688, metadata !63, metadata !"ext", metadata !56, i32 60, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ext] [line 60]
!80 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24, i64 8, i32 0, i32 0, metadata !67, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24, align 8, offset 0] [from char]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!83 = metadata !{i32 786688, metadata !63, metadata !"cmd", metadata !56, i32 60, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmd] [line 60]
!84 = metadata !{i32 786688, metadata !63, metadata !"defopts", metadata !56, i32 60, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [defopts] [line 60]
!85 = metadata !{i32 786688, metadata !63, metadata !"ftp", metadata !56, i32 61, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftp] [line 61]
!86 = metadata !{i32 786688, metadata !63, metadata !"n", metadata !56, i32 61, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 61]
!87 = metadata !{i32 786688, metadata !63, metadata !"disp", metadata !56, i32 62, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disp] [line 62]
!88 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"view_all", metadata !"view_all", metadata !"", i32 106, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_filenm*)* @view_all, null, null, metadata !100, i32 107} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 107] [view_all]
!89 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{null, metadata !59, metadata !91}
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_filenm]
!92 = metadata !{i32 786454, metadata !1, null, metadata !"t_filenm", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [t_filenm] [line 62, size 0, align 0, offset 0] [from ]
!93 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 57, i64 256, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 57, size 256, align 64, offset 0] [from ]
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98}
!95 = metadata !{i32 786445, metadata !4, metadata !93, metadata !"ftp", i32 58, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [ftp] [line 58, size 32, align 32, offset 0] [from int]
!96 = metadata !{i32 786445, metadata !4, metadata !93, metadata !"opt", i32 59, i64 64, i64 64, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [opt] [line 59, size 64, align 64, offset 64] [from ]
!97 = metadata !{i32 786445, metadata !4, metadata !93, metadata !"fn", i32 60, i64 64, i64 64, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [fn] [line 60, size 64, align 64, offset 128] [from ]
!98 = metadata !{i32 786445, metadata !4, metadata !93, metadata !"flag", i32 61, i64 64, i64 64, i64 192, i32 0, metadata !99} ; [ DW_TAG_member ] [flag] [line 61, size 64, align 64, offset 192] [from long unsigned int]
!99 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!100 = metadata !{metadata !101, metadata !102, metadata !103}
!101 = metadata !{i32 786689, metadata !88, metadata !"nf", metadata !56, i32 16777322, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nf] [line 106]
!102 = metadata !{i32 786689, metadata !88, metadata !"fnm", metadata !56, i32 33554538, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 106]
!103 = metadata !{i32 786688, metadata !88, metadata !"i", metadata !56, i32 108, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 108]
!104 = metadata !{metadata !105, metadata !109}
!105 = metadata !{i32 786484, i32 0, null, metadata !"view_program", metadata !"view_program", metadata !"", metadata !56, i32 43, metadata !106, i32 1, i32 1, null, null}
!106 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 64, i32 0, i32 0, metadata !66, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 64, offset 0] [from ]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!109 = metadata !{i32 786484, i32 0, null, metadata !"can_view_ftp", metadata !"can_view_ftp", metadata !"", metadata !56, i32 40, metadata !110, i32 1, i32 1, [5 x i32]* @can_view_ftp, null} ; [ DW_TAG_variable ] [can_view_ftp] [line 40] [local] [def]
!110 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !59, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from int]
!111 = metadata !{i32 46, i32 0, metadata !55, null}
!112 = metadata !{i32 1}
!113 = metadata !{i32 50, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !55, i32 50, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/viewit.c]
!115 = metadata !{i32 51, i32 0, metadata !114, null}
!116 = metadata !{metadata !"int", metadata !117}
!117 = metadata !{metadata !"omnipotent char", metadata !118}
!118 = metadata !{metadata !"Simple C/C++ TBAA"}
!119 = metadata !{i32 55, i32 0, metadata !55, null}
!120 = metadata !{i32 57, i32 0, metadata !63, null}
!121 = metadata !{i8* null}
!122 = metadata !{i32 60, i32 0, metadata !63, null}
!123 = metadata !{i32 65, i32 0, metadata !63, null}
!124 = metadata !{i32 67, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !63, i32 65, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/viewit.c]
!126 = metadata !{i32 72, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !125, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/viewit.c]
!128 = metadata !{metadata !"any pointer", metadata !117}
!129 = metadata !{i32 73, i32 0, metadata !127, null}
!130 = metadata !{i32 104, i32 0, metadata !63, null}
!131 = metadata !{i32 106, i32 0, metadata !88, null}
!132 = metadata !{i32 110, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !88, i32 110, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/viewit.c]
!134 = metadata !{i32 111, i32 0, metadata !133, null}
!135 = metadata !{i32 786689, metadata !55, metadata !"ftp", metadata !56, i32 16777262, metadata !59, i32 0, metadata !134} ; [ DW_TAG_arg_variable ] [ftp] [line 46]
!136 = metadata !{i32 46, i32 0, metadata !55, metadata !134}
!137 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !56, i32 48, metadata !59, i32 0, metadata !134} ; [ DW_TAG_auto_variable ] [i] [line 48]
!138 = metadata !{i32 50, i32 0, metadata !114, metadata !134}
!139 = metadata !{i32 51, i32 0, metadata !114, metadata !134}
!140 = metadata !{i32 112, i32 0, metadata !133, null}
!141 = metadata !{i32 113, i32 0, metadata !133, null}
!142 = metadata !{i32 114, i32 0, metadata !88, null}
