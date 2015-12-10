; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in Ideq_resize(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_resize(%struct._Ideq* %deq, i32 %newsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !28), !dbg !37
  tail call void @llvm.dbg.value(metadata !{i32 %newsize}, i64 0, metadata !29), !dbg !38
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !39
  %cmp1 = icmp slt i32 %newsize, 0, !dbg !39
  %or.cond = or i1 %cmp, %cmp1, !dbg !39
  br i1 %or.cond, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !40, !tbaa !42
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._Ideq* %deq, i32 %newsize) #5, !dbg !40
  tail call void @exit(i32 -1) #6, !dbg !45
  unreachable, !dbg !45

if.end:                                           ; preds = %entry
  %tail2 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !46
  %1 = load i32* %tail2, align 4, !dbg !46, !tbaa !47
  %head3 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !46
  %2 = load i32* %head3, align 4, !dbg !46, !tbaa !47
  %cmp4 = icmp slt i32 %1, %2, !dbg !46
  br i1 %cmp4, label %if.else, label %if.end14, !dbg !46

if.else:                                          ; preds = %if.end
  %size9 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0, !dbg !48
  %3 = load i32* %size9, align 4, !dbg !48, !tbaa !47
  %add10 = add nsw i32 %3, %1, !dbg !48
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.else
  %.pn = phi i32 [ %add10, %if.else ], [ %1, %if.end ]
  %size.0.in = sub nsw i32 %.pn, %2, !dbg !50
  %size.0 = add nsw i32 %size.0.in, 1, !dbg !50
  %cmp15 = icmp slt i32 %size.0.in, %newsize, !dbg !52
  br i1 %cmp15, label %if.end17, label %return, !dbg !52

if.end17:                                         ; preds = %if.end14
  %call18 = tail call i32* @IVinit(i32 %size.0, i32 -1) #5, !dbg !53
  tail call void @llvm.dbg.value(metadata !{i32* %call18}, i64 0, metadata !36), !dbg !53
  %4 = load i32* %head3, align 4, !dbg !54, !tbaa !47
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !32), !dbg !54
  %cmp20 = icmp eq i32 %4, -1, !dbg !54
  br i1 %cmp20, label %if.end40, label %if.then21, !dbg !54

if.then21:                                        ; preds = %if.end17
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !55
  %5 = load i32** %vec, align 8, !dbg !55, !tbaa !42
  tail call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !35), !dbg !55
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !30), !dbg !57
  %6 = load i32* %tail2, align 4, !dbg !58, !tbaa !47
  %cmp2478 = icmp eq i32 %4, %6, !dbg !58
  %idxprom79 = sext i32 %4 to i64, !dbg !59
  %arrayidx80 = getelementptr inbounds i32* %5, i64 %idxprom79, !dbg !59
  %7 = load i32* %arrayidx80, align 4, !dbg !59, !tbaa !47
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !30), !dbg !59
  store i32 %7, i32* %call18, align 4, !dbg !59, !tbaa !47
  br i1 %cmp2478, label %if.end40, label %while.body, !dbg !58

while.body:                                       ; preds = %if.then21, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %if.then21 ]
  %count.082 = phi i32 [ %inc, %while.body ], [ 0, %if.then21 ]
  %j.081 = phi i32 [ %.inc31, %while.body ], [ %4, %if.then21 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !58
  %inc = add nsw i32 %count.082, 1, !dbg !59
  %cmp28 = icmp eq i32 %j.081, %size.0.in, !dbg !61
  %inc31 = add nsw i32 %j.081, 1, !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32 %inc31}, i64 0, metadata !32), !dbg !62
  %.inc31 = select i1 %cmp28, i32 0, i32 %inc31, !dbg !61
  %8 = load i32* %tail2, align 4, !dbg !58, !tbaa !47
  %cmp24 = icmp eq i32 %.inc31, %8, !dbg !58
  %idxprom = sext i32 %.inc31 to i64, !dbg !59
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom, !dbg !59
  %9 = load i32* %arrayidx, align 4, !dbg !59, !tbaa !47
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !30), !dbg !59
  %arrayidx26 = getelementptr inbounds i32* %call18, i64 %indvars.iv.next, !dbg !59
  store i32 %9, i32* %arrayidx26, align 4, !dbg !59, !tbaa !47
  br i1 %cmp24, label %if.end40, label %while.body, !dbg !58

if.end40:                                         ; preds = %if.then21, %while.body, %if.end17
  %head.0 = phi i32 [ -1, %if.end17 ], [ 0, %while.body ], [ 0, %if.then21 ]
  %tail.0 = phi i32 [ -1, %if.end17 ], [ %inc, %while.body ], [ 0, %if.then21 ]
  tail call void @Ideq_clearData(%struct._Ideq* %deq) #5, !dbg !64
  %iv41 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, !dbg !65
  tail call void @IV_init(%struct._IV* %iv41, i32 %newsize, i32* null) #5, !dbg !65
  %cmp42 = icmp sgt i32 %size.0.in, -1, !dbg !66
  br i1 %cmp42, label %if.then43, label %if.end46, !dbg !66

if.then43:                                        ; preds = %if.end40
  %vec45 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3, !dbg !67
  %10 = load i32** %vec45, align 8, !dbg !67, !tbaa !42
  tail call void @IVcopy(i32 %size.0, i32* %10, i32* %call18) #5, !dbg !67
  br label %if.end46, !dbg !69

if.end46:                                         ; preds = %if.then43, %if.end40
  tail call void @IVfree(i32* %call18) #5, !dbg !70
  store i32 %head.0, i32* %head3, align 4, !dbg !71, !tbaa !47
  store i32 %tail.0, i32* %tail2, align 4, !dbg !72, !tbaa !47
  %maxsize = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 0, !dbg !73
  store i32 %newsize, i32* %maxsize, align 4, !dbg !73, !tbaa !47
  br label %return, !dbg !74

return:                                           ; preds = %if.end14, %if.end46
  %retval.0 = phi i32 [ 1, %if.end46 ], [ -1, %if.end14 ]
  ret i32 %retval.0, !dbg !74
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @Ideq_clearData(%struct._Ideq*) #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_resize", metadata !"Ideq_resize", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Ideq*, i32)* @Ideq_resize, null, null, metadata !27, i32 23} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 23] [Ideq_resize]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ideq]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Ideq", i32 19, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Ideq] [line 19, size 0, align 0, offset 0] [from _Ideq]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Ideq", i32 20, i64 320, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ideq] [line 20, size 320, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../Ideq.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"maxsize", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 21, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"head", i32 22, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [head] [line 22, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"tail", i32 23, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [tail] [line 23, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"iv", i32 24, i64 192, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [iv] [line 24, size 192, align 64, offset 128] [from IV]
!18 = metadata !{i32 786454, metadata !12, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!28 = metadata !{i32 786689, metadata !4, metadata !"deq", metadata !5, i32 16777237, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 21]
!29 = metadata !{i32 786689, metadata !4, metadata !"newsize", metadata !5, i32 33554454, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newsize] [line 22]
!30 = metadata !{i32 786688, metadata !4, metadata !"count", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 24]
!31 = metadata !{i32 786688, metadata !4, metadata !"head", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 24]
!32 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 24]
!33 = metadata !{i32 786688, metadata !4, metadata !"size", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 24]
!34 = metadata !{i32 786688, metadata !4, metadata !"tail", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tail] [line 24]
!35 = metadata !{i32 786688, metadata !4, metadata !"ivec", metadata !5, i32 25, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec] [line 25]
!36 = metadata !{i32 786688, metadata !4, metadata !"tmp", metadata !5, i32 25, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 25]
!37 = metadata !{i32 21, i32 0, metadata !4, null}
!38 = metadata !{i32 22, i32 0, metadata !4, null}
!39 = metadata !{i32 31, i32 0, metadata !4, null}
!40 = metadata !{i32 32, i32 0, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c]
!42 = metadata !{metadata !"any pointer", metadata !43}
!43 = metadata !{metadata !"omnipotent char", metadata !44}
!44 = metadata !{metadata !"Simple C/C++ TBAA"}
!45 = metadata !{i32 34, i32 0, metadata !41, null}
!46 = metadata !{i32 41, i32 0, metadata !4, null}
!47 = metadata !{metadata !"int", metadata !43}
!48 = metadata !{i32 44, i32 0, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !4, i32 43, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c]
!50 = metadata !{i32 42, i32 0, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !4, i32 41, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c]
!52 = metadata !{i32 46, i32 0, metadata !4, null}
!53 = metadata !{i32 54, i32 0, metadata !4, null}
!54 = metadata !{i32 55, i32 0, metadata !4, null}
!55 = metadata !{i32 56, i32 0, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c]
!57 = metadata !{i32 57, i32 0, metadata !56, null}
!58 = metadata !{i32 58, i32 0, metadata !56, null} ; [ DW_TAG_imported_module ]
!59 = metadata !{i32 59, i32 0, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !56, i32 58, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c]
!61 = metadata !{i32 60, i32 0, metadata !60, null}
!62 = metadata !{i32 63, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !60, i32 62, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c]
!64 = metadata !{i32 72, i32 0, metadata !4, null}
!65 = metadata !{i32 73, i32 0, metadata !4, null}
!66 = metadata !{i32 74, i32 0, metadata !4, null}
!67 = metadata !{i32 75, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !4, i32 74, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_resize.c]
!69 = metadata !{i32 76, i32 0, metadata !68, null}
!70 = metadata !{i32 77, i32 0, metadata !4, null}
!71 = metadata !{i32 78, i32 0, metadata !4, null}
!72 = metadata !{i32 79, i32 0, metadata !4, null}
!73 = metadata !{i32 80, i32 0, metadata !4, null}
!74 = metadata !{i32 82, i32 0, metadata !4, null}
