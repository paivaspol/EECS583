; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/comlib.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @put_serverbyte(i8 zeroext %data) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8 %data}, i64 0, metadata !10), !dbg !36
  store volatile i8 %data, i8* inttoptr (i64 2952794328 to i8*), align 8, !dbg !37, !tbaa !38
  store volatile i8 1, i8* inttoptr (i64 2952794312 to i8*), align 8, !dbg !40, !tbaa !38
  br label %while.cond, !dbg !41

while.cond:                                       ; preds = %while.cond, %entry
  %0 = load volatile i8* inttoptr (i64 2952794312 to i8*), align 8, !dbg !41, !tbaa !38
  %and = and i8 %0, 1, !dbg !41
  %tobool = icmp eq i8 %and, 0, !dbg !41
  br i1 %tobool, label %while.end, label %while.cond, !dbg !41

while.end:                                        ; preds = %while.cond
  ret void, !dbg !42
}

; Function Attrs: nounwind optsize uwtable
define zeroext i8 @get_serverbyte() #0 {
entry:
  br label %while.cond, !dbg !43

while.cond:                                       ; preds = %while.cond, %entry
  %0 = load volatile i8* inttoptr (i64 2952794304 to i8*), align 64, !dbg !43, !tbaa !38
  %and = and i8 %0, 1, !dbg !43
  %cmp = icmp eq i8 %and, 0, !dbg !43
  br i1 %cmp, label %while.cond, label %while.end, !dbg !43

while.end:                                        ; preds = %while.cond
  %1 = load volatile i8* inttoptr (i64 2952794320 to i8*), align 16, !dbg !44, !tbaa !38
  tail call void @llvm.dbg.value(metadata !{i8 %1}, i64 0, metadata !15), !dbg !44
  store volatile i8 0, i8* inttoptr (i64 2952794304 to i8*), align 64, !dbg !45, !tbaa !38
  ret i8 %1, !dbg !46
}

; Function Attrs: nounwind optsize uwtable
define void @get_serverdata(i8* nocapture %data, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !22), !dbg !47
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !23), !dbg !47
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !24), !dbg !48
  %cmp2 = icmp sgt i32 %size, 0, !dbg !48
  br i1 %cmp2, label %while.cond.i.preheader, label %for.end, !dbg !48

while.cond.i.preheader:                           ; preds = %entry, %get_serverbyte.exit
  %p.04 = phi i8* [ %incdec.ptr, %get_serverbyte.exit ], [ %data, %entry ]
  %size.addr.03 = phi i32 [ %dec, %get_serverbyte.exit ], [ %size, %entry ]
  br label %while.cond.i, !dbg !50

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.cond.i
  %0 = load volatile i8* inttoptr (i64 2952794304 to i8*), align 64, !dbg !50, !tbaa !38
  %and.i = and i8 %0, 1, !dbg !50
  %cmp.i = icmp eq i8 %and.i, 0, !dbg !50
  br i1 %cmp.i, label %while.cond.i, label %get_serverbyte.exit, !dbg !50

get_serverbyte.exit:                              ; preds = %while.cond.i
  %1 = load volatile i8* inttoptr (i64 2952794320 to i8*), align 16, !dbg !51, !tbaa !38
  tail call void @llvm.dbg.value(metadata !{i8 %1}, i64 0, metadata !52), !dbg !51
  store volatile i8 0, i8* inttoptr (i64 2952794304 to i8*), align 64, !dbg !53, !tbaa !38
  %incdec.ptr = getelementptr inbounds i8* %p.04, i64 1, !dbg !48
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !24), !dbg !48
  store i8 %1, i8* %p.04, align 1, !dbg !48, !tbaa !38
  %dec = add nsw i32 %size.addr.03, -1, !dbg !48
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !23), !dbg !48
  %cmp = icmp sgt i32 %dec, 0, !dbg !48
  br i1 %cmp, label %while.cond.i.preheader, label %for.end, !dbg !48

for.end:                                          ; preds = %get_serverbyte.exit, %entry
  ret void, !dbg !54
}

; Function Attrs: nounwind optsize uwtable
define void @put_serverdata(i8* nocapture %data, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !29), !dbg !55
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !30), !dbg !55
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !31), !dbg !56
  %cmp2 = icmp sgt i32 %size, 0, !dbg !56
  br i1 %cmp2, label %for.body, label %for.end, !dbg !56

for.body:                                         ; preds = %entry, %put_serverbyte.exit
  %p.04 = phi i8* [ %incdec.ptr, %put_serverbyte.exit ], [ %data, %entry ]
  %size.addr.03 = phi i32 [ %dec, %put_serverbyte.exit ], [ %size, %entry ]
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !31), !dbg !56
  %0 = load i8* %p.04, align 1, !dbg !56, !tbaa !38
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !58), !dbg !59
  store volatile i8 %0, i8* inttoptr (i64 2952794328 to i8*), align 8, !dbg !60, !tbaa !38
  store volatile i8 1, i8* inttoptr (i64 2952794312 to i8*), align 8, !dbg !61, !tbaa !38
  br label %while.cond.i, !dbg !62

while.cond.i:                                     ; preds = %while.cond.i, %for.body
  %1 = load volatile i8* inttoptr (i64 2952794312 to i8*), align 8, !dbg !62, !tbaa !38
  %and.i = and i8 %1, 1, !dbg !62
  %tobool.i = icmp eq i8 %and.i, 0, !dbg !62
  br i1 %tobool.i, label %put_serverbyte.exit, label %while.cond.i, !dbg !62

put_serverbyte.exit:                              ; preds = %while.cond.i
  %incdec.ptr = getelementptr inbounds i8* %p.04, i64 1, !dbg !56
  %dec = add nsw i32 %size.addr.03, -1, !dbg !56
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !30), !dbg !56
  %cmp = icmp sgt i32 %dec, 0, !dbg !56
  br i1 %cmp, label %for.body, label %for.end, !dbg !56

for.end:                                          ; preds = %put_serverbyte.exit, %entry
  ret void, !dbg !63
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !32, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/comlib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/comlib.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !16, metadata !27}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"put_serverbyte", metadata !"put_serverbyte", metadata !"", i32 44, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8)* @put_serverbyte, null, null, metadata !9, i32 45} ; [ DW_TAG_subprogram ] [line 44] [def] [scope 45] [put_serverbyte]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/comlib.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786689, metadata !4, metadata !"data", metadata !5, i32 16777260, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 44]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_serverbyte", metadata !"get_serverbyte", metadata !"", i32 51, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8 ()* @get_serverbyte, null, null, metadata !14, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [get_serverbyte]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786688, metadata !11, metadata !"data", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 53]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_serverdata", metadata !"get_serverdata", metadata !"", i32 61, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @get_serverdata, null, null, metadata !21, i32 62} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 62] [get_serverdata]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{null, metadata !19, metadata !20}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{metadata !22, metadata !23, metadata !24}
!22 = metadata !{i32 786689, metadata !16, metadata !"data", metadata !5, i32 16777277, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 61]
!23 = metadata !{i32 786689, metadata !16, metadata !"size", metadata !5, i32 33554493, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 61]
!24 = metadata !{i32 786688, metadata !16, metadata !"p", metadata !5, i32 63, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 63]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"put_serverdata", metadata !"put_serverdata", metadata !"", i32 68, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @put_serverdata, null, null, metadata !28, i32 69} ; [ DW_TAG_subprogram ] [line 68] [def] [scope 69] [put_serverdata]
!28 = metadata !{metadata !29, metadata !30, metadata !31}
!29 = metadata !{i32 786689, metadata !27, metadata !"data", metadata !5, i32 16777284, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 68]
!30 = metadata !{i32 786689, metadata !27, metadata !"size", metadata !5, i32 33554500, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 68]
!31 = metadata !{i32 786688, metadata !27, metadata !"p", metadata !5, i32 70, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 70]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786484, i32 0, null, metadata !"dualcp", metadata !"dualcp", metadata !"", metadata !5, i32 42, metadata !34, i32 1, i32 1, null, null}
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!35 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!36 = metadata !{i32 44, i32 0, metadata !4, null}
!37 = metadata !{i32 46, i32 0, metadata !4, null}
!38 = metadata !{metadata !"omnipotent char", metadata !39}
!39 = metadata !{metadata !"Simple C/C++ TBAA"}
!40 = metadata !{i32 47, i32 0, metadata !4, null}
!41 = metadata !{i32 48, i32 0, metadata !4, null}
!42 = metadata !{i32 49, i32 0, metadata !4, null}
!43 = metadata !{i32 55, i32 0, metadata !11, null}
!44 = metadata !{i32 56, i32 0, metadata !11, null}
!45 = metadata !{i32 57, i32 0, metadata !11, null}
!46 = metadata !{i32 58, i32 0, metadata !11, null} ; [ DW_TAG_imported_module ]
!47 = metadata !{i32 61, i32 0, metadata !16, null}
!48 = metadata !{i32 65, i32 0, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !16, i32 65, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/comlib.c]
!50 = metadata !{i32 55, i32 0, metadata !11, metadata !48}
!51 = metadata !{i32 56, i32 0, metadata !11, metadata !48}
!52 = metadata !{i32 786688, metadata !11, metadata !"data", metadata !5, i32 53, metadata !8, i32 0, metadata !48} ; [ DW_TAG_auto_variable ] [data] [line 53]
!53 = metadata !{i32 57, i32 0, metadata !11, metadata !48}
!54 = metadata !{i32 66, i32 0, metadata !16, null}
!55 = metadata !{i32 68, i32 0, metadata !27, null}
!56 = metadata !{i32 72, i32 0, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !27, i32 72, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/comlib.c]
!58 = metadata !{i32 786689, metadata !4, metadata !"data", metadata !5, i32 16777260, metadata !8, i32 0, metadata !56} ; [ DW_TAG_arg_variable ] [data] [line 44]
!59 = metadata !{i32 44, i32 0, metadata !4, metadata !56}
!60 = metadata !{i32 46, i32 0, metadata !4, metadata !56}
!61 = metadata !{i32 47, i32 0, metadata !4, metadata !56}
!62 = metadata !{i32 48, i32 0, metadata !4, metadata !56}
!63 = metadata !{i32 73, i32 0, metadata !27, null}
