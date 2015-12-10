; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [87 x i8] c"\0A\0A error in I2Ohash_init(%p,%d,%d,%d)\0A hashtable is NULL or nlist = %d is nonpositive\0A\00", align 1
@.str1 = private unnamed_addr constant [61 x i8] c"\0A\0A error in I2Ohash_init(%p,%d,%d,%d)\0A nobj = %d, grow = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str3 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @I2Ohash_init(%struct._I2Ohash* %hashtable, i32 %nlist, i32 %nobj, i32 %grow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._I2Ohash* %hashtable}, i64 0, metadata !34), !dbg !39
  tail call void @llvm.dbg.value(metadata !{i32 %nlist}, i64 0, metadata !35), !dbg !40
  tail call void @llvm.dbg.value(metadata !{i32 %nobj}, i64 0, metadata !36), !dbg !41
  tail call void @llvm.dbg.value(metadata !{i32 %grow}, i64 0, metadata !37), !dbg !42
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null, !dbg !43
  %cmp1 = icmp slt i32 %nlist, 1, !dbg !43
  %or.cond = or i1 %cmp, %cmp1, !dbg !43
  br i1 %or.cond, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !44, !tbaa !46
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([87 x i8]* @.str, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %nlist, i32 %nobj, i32 %grow, i32 %nlist) #5, !dbg !44
  tail call void @exit(i32 -1) #6, !dbg !49
  unreachable, !dbg !49

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i32 %nobj, 1, !dbg !50
  %cmp3 = icmp slt i32 %grow, 1, !dbg !50
  %or.cond71 = and i1 %cmp2, %cmp3, !dbg !50
  br i1 %or.cond71, label %if.then4, label %if.end6, !dbg !50

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !51, !tbaa !46
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str1, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %nlist, i32 %nobj, i32 %grow, i32 %nobj, i32 %grow) #5, !dbg !51
  tail call void @exit(i32 -1) #6, !dbg !53
  unreachable, !dbg !53

if.end6:                                          ; preds = %if.end
  tail call void @I2Ohash_clearData(%struct._I2Ohash* %hashtable) #5, !dbg !54
  %nlist7 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0, !dbg !55
  store i32 %nlist, i32* %nlist7, align 4, !dbg !55, !tbaa !56
  %grow8 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 1, !dbg !57
  store i32 %grow, i32* %grow8, align 4, !dbg !57, !tbaa !56
  %cmp9 = icmp sgt i32 %nobj, 0, !dbg !58
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !58

if.then10:                                        ; preds = %if.end6
  %add = add nsw i32 %nobj, 1, !dbg !59
  %call11 = tail call %struct._I2OP* @I2OP_init(i32 %add, i32 1) #5, !dbg !59
  %baseI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 3, !dbg !59
  store %struct._I2OP* %call11, %struct._I2OP** %baseI2OP, align 8, !dbg !59, !tbaa !46
  %add.ptr = getelementptr inbounds %struct._I2OP* %call11, i64 1, !dbg !61
  %freeI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 4, !dbg !61
  store %struct._I2OP* %add.ptr, %struct._I2OP** %freeI2OP, align 8, !dbg !61, !tbaa !46
  %next = getelementptr inbounds %struct._I2OP* %call11, i64 0, i32 3, !dbg !62
  store %struct._I2OP* null, %struct._I2OP** %next, align 8, !dbg !62, !tbaa !46
  br label %if.end14, !dbg !63

if.end14:                                         ; preds = %if.then10, %if.end6
  %cmp15 = icmp sgt i32 %nlist, 0, !dbg !64
  br i1 %cmp15, label %if.then16, label %if.else25, !dbg !64

if.then16:                                        ; preds = %if.end14
  %conv = sext i32 %nlist to i64, !dbg !65
  %mul = shl nsw i64 %conv, 3, !dbg !65
  %call17 = tail call noalias i8* @malloc(i64 %mul) #5, !dbg !65
  %2 = bitcast i8* %call17 to %struct._I2OP**, !dbg !65
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !65
  store %struct._I2OP** %2, %struct._I2OP*** %heads, align 8, !dbg !65, !tbaa !46
  %cmp18 = icmp eq i8* %call17, null, !dbg !65
  br i1 %cmp18, label %if.then20, label %for.body.lr.ph, !dbg !65

if.then20:                                        ; preds = %if.then16
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !67, !tbaa !46
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul, i32 45, i8* getelementptr inbounds ([81 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !67
  tail call void @exit(i32 -1) #6, !dbg !67
  unreachable, !dbg !67

if.else25:                                        ; preds = %if.end14
  %cmp26 = icmp eq i32 %nlist, 0, !dbg !64
  br i1 %cmp26, label %for.cond.preheader, label %if.else30, !dbg !64

for.cond.preheader:                               ; preds = %if.else25
  %heads29 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !69
  store %struct._I2OP** null, %struct._I2OP*** %heads29, align 8, !dbg !69, !tbaa !46
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then16
  %heads38 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !71
  br label %for.body, !dbg !74

if.else30:                                        ; preds = %if.else25
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !75, !tbaa !46
  %conv31 = sext i32 %nlist to i64, !dbg !75
  %mul32 = shl nsw i64 %conv31, 3, !dbg !75
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul32, i32 45, i8* getelementptr inbounds ([81 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !75
  tail call void @exit(i32 -1) #6, !dbg !75
  unreachable, !dbg !75

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %5 = phi %struct._I2OP** [ %2, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds %struct._I2OP** %5, i64 %indvars.iv, !dbg !71
  store %struct._I2OP* null, %struct._I2OP** %arrayidx, align 8, !dbg !71, !tbaa !46
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !74
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !74
  %exitcond = icmp eq i32 %lftr.wideiv, %nlist, !dbg !74
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !74

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct._I2OP*** %heads38, align 8, !dbg !71, !tbaa !46
  br label %for.body, !dbg !74

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !77
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @I2Ohash_clearData(%struct._I2Ohash*) #3

; Function Attrs: optsize
declare %struct._I2OP* @I2OP_init(i32, i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"I2Ohash_init", metadata !"I2Ohash_init", metadata !"", i32 18, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._I2Ohash*, i32, i32, i32)* @I2Ohash_init, null, null, metadata !33, i32 23} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 23] [I2Ohash_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2Ohash]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"I2Ohash", i32 6, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [I2Ohash] [line 6, size 0, align 0, offset 0] [from _I2Ohash]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_I2Ohash", i32 7, i64 320, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2Ohash] [line 7, size 320, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/../I2Ohash.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !30, metadata !31}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlist", i32 8, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 8, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"grow", i32 9, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [grow] [line 9, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nitem", i32 10, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nitem] [line 10, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"baseI2OP", i32 11, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [baseI2OP] [line 11, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!19 = metadata !{i32 786454, metadata !11, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!20 = metadata !{i32 786451, metadata !21, null, metadata !"_I2OP", i32 6, i64 192, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2OP] [line 6, size 192, align 64, offset 0] [from ]
!21 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/../../Utilities/I2OP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !27}
!23 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"value0", i32 7, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [value0] [line 7, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"value1", i32 8, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [value1] [line 8, size 32, align 32, offset 32] [from int]
!25 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"value2", i32 9, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [value2] [line 9, size 64, align 64, offset 64] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"next", i32 10, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [next] [line 10, size 64, align 64, offset 128] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!29 = metadata !{i32 786454, metadata !21, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!30 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"freeI2OP", i32 12, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [freeI2OP] [line 12, size 64, align 64, offset 192] [from ]
!31 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"heads", i32 13, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [heads] [line 13, size 64, align 64, offset 256] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38}
!34 = metadata !{i32 786689, metadata !4, metadata !"hashtable", metadata !5, i32 16777235, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashtable] [line 19]
!35 = metadata !{i32 786689, metadata !4, metadata !"nlist", metadata !5, i32 33554452, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nlist] [line 20]
!36 = metadata !{i32 786689, metadata !4, metadata !"nobj", metadata !5, i32 50331669, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nobj] [line 21]
!37 = metadata !{i32 786689, metadata !4, metadata !"grow", metadata !5, i32 67108886, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grow] [line 22]
!38 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 24, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 24]
!39 = metadata !{i32 19, i32 0, metadata !4, null}
!40 = metadata !{i32 20, i32 0, metadata !4, null}
!41 = metadata !{i32 21, i32 0, metadata !4, null}
!42 = metadata !{i32 22, i32 0, metadata !4, null}
!43 = metadata !{i32 25, i32 0, metadata !4, null}
!44 = metadata !{i32 26, i32 0, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !4, i32 25, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c]
!46 = metadata !{metadata !"any pointer", metadata !47}
!47 = metadata !{metadata !"omnipotent char", metadata !48}
!48 = metadata !{metadata !"Simple C/C++ TBAA"}
!49 = metadata !{i32 29, i32 0, metadata !45, null}
!50 = metadata !{i32 31, i32 0, metadata !4, null}
!51 = metadata !{i32 32, i32 0, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c]
!53 = metadata !{i32 35, i32 0, metadata !52, null}
!54 = metadata !{i32 37, i32 0, metadata !4, null}
!55 = metadata !{i32 38, i32 0, metadata !4, null}
!56 = metadata !{metadata !"int", metadata !47}
!57 = metadata !{i32 39, i32 0, metadata !4, null}
!58 = metadata !{i32 40, i32 0, metadata !4, null}
!59 = metadata !{i32 41, i32 0, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !4, i32 40, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c]
!61 = metadata !{i32 42, i32 0, metadata !60, null}
!62 = metadata !{i32 43, i32 0, metadata !60, null}
!63 = metadata !{i32 44, i32 0, metadata !60, null}
!64 = metadata !{i32 45, i32 0, metadata !4, null}
!65 = metadata !{i32 45, i32 0, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c]
!67 = metadata !{i32 45, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !66, i32 45, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c]
!69 = metadata !{i32 45, i32 0, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c]
!71 = metadata !{i32 47, i32 0, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !73, i32 46, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c]
!73 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c]
!74 = metadata !{i32 46, i32 0, metadata !73, null}
!75 = metadata !{i32 45, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c]
!77 = metadata !{i32 50, i32 0, metadata !4, null}
