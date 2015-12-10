; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdr = type { %struct.anon }
%struct.anon = type { %union.hdr*, i8* }

@stack_dir = internal unnamed_addr global i32 0, align 4
@last_alloca_header = internal unnamed_addr global %union.hdr* null, align 8
@find_stack_direction.addr = internal unnamed_addr global i8* null, align 8

; Function Attrs: nounwind optsize uwtable
define i8* @C_alloca(i64 %size) #0 {
entry:
  %probe = alloca i8, align 1
  call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !12), !dbg !48
  call void @llvm.dbg.declare(metadata !{i8* %probe}, metadata !13), !dbg !49
  call void @llvm.dbg.value(metadata !{i8* %probe}, i64 0, metadata !15), !dbg !50
  %0 = load i32* @stack_dir, align 4, !dbg !51, !tbaa !52
  %cmp = icmp eq i32 %0, 0, !dbg !51
  br i1 %cmp, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  call fastcc void @find_stack_direction() #5, !dbg !55
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %entry
  %1 = load %union.hdr** @last_alloca_header, align 8, !dbg !56, !tbaa !57
  call void @llvm.dbg.value(metadata !{%union.hdr* %1}, i64 0, metadata !17), !dbg !56
  %cmp134 = icmp eq %union.hdr* %1, null, !dbg !56
  br i1 %cmp134, label %for.end, label %for.body, !dbg !56

for.body:                                         ; preds = %if.then9, %if.end
  %hp.035 = phi %union.hdr* [ %1, %if.end ], [ %5, %if.then9 ]
  %2 = load i32* @stack_dir, align 4, !dbg !58, !tbaa !52
  %cmp2 = icmp sgt i32 %2, 0, !dbg !58
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false, !dbg !58

land.lhs.true:                                    ; preds = %for.body
  %deep = getelementptr inbounds %union.hdr* %hp.035, i64 0, i32 0, i32 1, !dbg !58
  %3 = load i8** %deep, align 8, !dbg !58, !tbaa !57
  %cmp3 = icmp ugt i8* %3, %probe, !dbg !58
  br i1 %cmp3, label %if.then9, label %lor.lhs.false, !dbg !58

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %cmp4 = icmp slt i32 %2, 0, !dbg !58
  br i1 %cmp4, label %land.lhs.true5, label %for.end, !dbg !58

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %deep7 = getelementptr inbounds %union.hdr* %hp.035, i64 0, i32 0, i32 1, !dbg !58
  %4 = load i8** %deep7, align 8, !dbg !58, !tbaa !57
  %cmp8 = icmp ult i8* %4, %probe, !dbg !58
  br i1 %cmp8, label %if.then9, label %for.end, !dbg !58

if.then9:                                         ; preds = %land.lhs.true5, %land.lhs.true
  %next = getelementptr inbounds %union.hdr* %hp.035, i64 0, i32 0, i32 0, !dbg !59
  %5 = load %union.hdr** %next, align 8, !dbg !59, !tbaa !57
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !33), !dbg !59
  %6 = bitcast %union.hdr* %hp.035 to i8*, !dbg !61
  call void @free(i8* %6) #6, !dbg !61
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !17), !dbg !62
  %cmp1 = icmp eq %union.hdr* %5, null, !dbg !56
  br i1 %cmp1, label %for.end, label %for.body, !dbg !56

for.end:                                          ; preds = %if.then9, %lor.lhs.false, %land.lhs.true5, %if.end
  %hp.0.lcssa = phi %union.hdr* [ null, %if.end ], [ %hp.035, %land.lhs.true5 ], [ %hp.035, %lor.lhs.false ], [ null, %if.then9 ]
  store %union.hdr* %hp.0.lcssa, %union.hdr** @last_alloca_header, align 8, !dbg !63, !tbaa !57
  %cmp12 = icmp eq i64 %size, 0, !dbg !64
  br i1 %cmp12, label %return, label %if.end14, !dbg !64

if.end14:                                         ; preds = %for.end
  %add = add i64 %size, 16, !dbg !65
  %call = call noalias i8* @xmalloc(i64 %add) #6, !dbg !65
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !36), !dbg !65
  %cmp15 = icmp eq i8* %call, null, !dbg !66
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !66

if.then16:                                        ; preds = %if.end14
  call void @abort() #7, !dbg !67
  unreachable, !dbg !67

if.end17:                                         ; preds = %if.end14
  %7 = load %union.hdr** @last_alloca_header, align 8, !dbg !68, !tbaa !57
  %8 = bitcast i8* %call to %union.hdr*, !dbg !68
  %next19 = bitcast i8* %call to %union.hdr**, !dbg !68
  store %union.hdr* %7, %union.hdr** %next19, align 8, !dbg !68, !tbaa !57
  %deep21 = getelementptr inbounds i8* %call, i64 8, !dbg !69
  %9 = bitcast i8* %deep21 to i8**, !dbg !69
  call void @llvm.dbg.value(metadata !{i8* %probe}, i64 0, metadata !13), !dbg !69
  store i8* %probe, i8** %9, align 8, !dbg !69, !tbaa !57
  store %union.hdr* %8, %union.hdr** @last_alloca_header, align 8, !dbg !70, !tbaa !57
  %add.ptr = getelementptr inbounds i8* %call, i64 16, !dbg !71
  br label %return, !dbg !71

return:                                           ; preds = %for.end, %if.end17
  %retval.0 = phi i8* [ %add.ptr, %if.end17 ], [ null, %for.end ]
  ret i8* %retval.0, !dbg !72
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare noalias i8* @xmalloc(i64) #3

; Function Attrs: noreturn nounwind optsize
declare void @abort() #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @find_stack_direction() #0 {
entry:
  %dummy = alloca i8, align 1
  call void @llvm.dbg.declare(metadata !{i8* %dummy}, metadata !42), !dbg !73
  %0 = load i8** @find_stack_direction.addr, align 8, !dbg !74, !tbaa !57
  %cmp = icmp eq i8* %0, null, !dbg !74
  br i1 %cmp, label %if.then, label %if.else, !dbg !74

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{i8* %dummy}, i64 0, metadata !42), !dbg !75
  store i8* %dummy, i8** @find_stack_direction.addr, align 8, !dbg !75, !tbaa !57
  call fastcc void @find_stack_direction() #5, !dbg !77
  br label %if.end4, !dbg !78

if.else:                                          ; preds = %entry
  %cmp1 = icmp ugt i8* %dummy, %0, !dbg !79
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !79

if.then2:                                         ; preds = %if.else
  store i32 1, i32* @stack_dir, align 4, !dbg !81, !tbaa !52
  br label %if.end4, !dbg !81

if.else3:                                         ; preds = %if.else
  store i32 -1, i32* @stack_dir, align 4, !dbg !82, !tbaa !52
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else3, %if.then
  ret void, !dbg !83
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !43, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !38}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"C_alloca", metadata !"C_alloca", metadata !"", i32 148, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (i64)* @C_alloca, null, null, metadata !11, i32 150} ; [ DW_TAG_subprogram ] [line 148] [def] [scope 150] [C_alloca]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!10 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!11 = metadata !{metadata !12, metadata !13, metadata !15, metadata !17, metadata !33, metadata !36}
!12 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777365, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 149]
!13 = metadata !{i32 786688, metadata !4, metadata !"probe", metadata !5, i32 151, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [probe] [line 151]
!14 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!15 = metadata !{i32 786688, metadata !4, metadata !"depth", metadata !5, i32 152, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [depth] [line 152]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!17 = metadata !{i32 786688, metadata !18, metadata !"hp", metadata !5, i32 163, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hp] [line 163]
!18 = metadata !{i32 786443, metadata !1, metadata !4, i32 162, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from header]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"header", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [header] [line 134, size 0, align 0, offset 0] [from hdr]
!21 = metadata !{i32 786455, metadata !1, null, metadata !"hdr", i32 126, i64 128, i64 64, i64 0, i32 0, null, metadata !22, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [hdr] [line 126, size 128, align 64, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !27}
!23 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"align", i32 128, i64 64, i64 8, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [align] [line 128, size 64, align 8, offset 0] [from ]
!24 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !14, metadata !25, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from char]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!27 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"h", i32 133, i64 128, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [h] [line 133, size 128, align 64, offset 0] [from ]
!28 = metadata !{i32 786451, metadata !1, metadata !21, metadata !"", i32 129, i64 128, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 128, align 64, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !32}
!30 = metadata !{i32 786445, metadata !1, metadata !28, metadata !"next", i32 131, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [next] [line 131, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hdr]
!32 = metadata !{i32 786445, metadata !1, metadata !28, metadata !"deep", i32 132, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [deep] [line 132, size 64, align 64, offset 64] [from ]
!33 = metadata !{i32 786688, metadata !34, metadata !"np", metadata !5, i32 169, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [np] [line 169]
!34 = metadata !{i32 786443, metadata !1, metadata !35, i32 168, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c]
!35 = metadata !{i32 786443, metadata !1, metadata !18, i32 165, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c]
!36 = metadata !{i32 786688, metadata !37, metadata !"new", metadata !5, i32 187, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 187]
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 186, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"find_stack_direction", metadata !"find_stack_direction", metadata !"", i32 92, metadata !39, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @find_stack_direction, null, null, metadata !41, i32 93} ; [ DW_TAG_subprogram ] [line 92] [local] [def] [scope 93] [find_stack_direction]
!39 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786688, metadata !38, metadata !"dummy", metadata !5, i32 95, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dummy] [line 95]
!43 = metadata !{metadata !44, metadata !46, metadata !47}
!44 = metadata !{i32 786484, i32 0, null, metadata !"stack_dir", metadata !"stack_dir", metadata !"", metadata !5, i32 88, metadata !45, i32 1, i32 1, i32* @stack_dir, null} ; [ DW_TAG_variable ] [stack_dir] [line 88] [local] [def]
!45 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!46 = metadata !{i32 786484, i32 0, null, metadata !"last_alloca_header", metadata !"last_alloca_header", metadata !"", metadata !5, i32 136, metadata !19, i32 1, i32 1, %union.hdr** @last_alloca_header, null} ; [ DW_TAG_variable ] [last_alloca_header] [line 136] [local] [def]
!47 = metadata !{i32 786484, i32 0, metadata !38, metadata !"addr", metadata !"addr", metadata !"", metadata !5, i32 94, metadata !16, i32 1, i32 1, i8** @find_stack_direction.addr, null} ; [ DW_TAG_variable ] [addr] [line 94] [local] [def]
!48 = metadata !{i32 149, i32 0, metadata !4, null}
!49 = metadata !{i32 151, i32 0, metadata !4, null}
!50 = metadata !{i32 152, i32 0, metadata !4, null}
!51 = metadata !{i32 155, i32 0, metadata !4, null}
!52 = metadata !{metadata !"int", metadata !53}
!53 = metadata !{metadata !"omnipotent char", metadata !54}
!54 = metadata !{metadata !"Simple C/C++ TBAA"}
!55 = metadata !{i32 156, i32 0, metadata !4, null}
!56 = metadata !{i32 165, i32 0, metadata !35, null}
!57 = metadata !{metadata !"any pointer", metadata !53}
!58 = metadata !{i32 166, i32 0, metadata !35, null}
!59 = metadata !{i32 169, i32 0, metadata !34, null}
!60 = metadata !{%union.hdr* null}
!61 = metadata !{i32 171, i32 0, metadata !34, null}
!62 = metadata !{i32 173, i32 0, metadata !34, null}
!63 = metadata !{i32 178, i32 0, metadata !18, null}
!64 = metadata !{i32 181, i32 0, metadata !4, null}
!65 = metadata !{i32 187, i32 0, metadata !37, null}
!66 = metadata !{i32 190, i32 0, metadata !37, null}
!67 = metadata !{i32 191, i32 0, metadata !37, null}
!68 = metadata !{i32 193, i32 0, metadata !37, null}
!69 = metadata !{i32 194, i32 0, metadata !37, null}
!70 = metadata !{i32 196, i32 0, metadata !37, null}
!71 = metadata !{i32 200, i32 0, metadata !37, null}
!72 = metadata !{i32 202, i32 0, metadata !4, null}
!73 = metadata !{i32 95, i32 0, metadata !38, null}
!74 = metadata !{i32 97, i32 0, metadata !38, null}
!75 = metadata !{i32 99, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !38, i32 98, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c]
!77 = metadata !{i32 101, i32 0, metadata !76, null}
!78 = metadata !{i32 102, i32 0, metadata !76, null}
!79 = metadata !{i32 106, i32 0, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !38, i32 104, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c]
!81 = metadata !{i32 107, i32 0, metadata !80, null}
!82 = metadata !{i32 109, i32 0, metadata !80, null}
!83 = metadata !{i32 111, i32 0, metadata !38, null}
