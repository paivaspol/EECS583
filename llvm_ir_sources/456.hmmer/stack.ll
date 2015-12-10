; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/stack.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intstack_s = type { i32, %struct.intstack_s* }

@.str = private unnamed_addr constant [40 x i8] c"Memory allocation failure at %s line %d\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/stack.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define noalias %struct.intstack_s* @InitIntStack() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 16) #4, !dbg !46
  %0 = bitcast i8* %call to %struct.intstack_s*, !dbg !46
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %0}, i64 0, metadata !16), !dbg !46
  %cmp = icmp eq i8* %call, null, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !46

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 42) #4, !dbg !47
  br label %if.end, !dbg !47

if.end:                                           ; preds = %if.then, %entry
  %nxt = getelementptr inbounds i8* %call, i64 8, !dbg !48
  %1 = bitcast i8* %nxt to %struct.intstack_s**, !dbg !48
  store %struct.intstack_s* null, %struct.intstack_s** %1, align 8, !dbg !48, !tbaa !49
  ret %struct.intstack_s* %0, !dbg !52
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @PushIntStack(%struct.intstack_s* nocapture %stack, i32 %data) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %stack}, i64 0, metadata !21), !dbg !53
  tail call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !22), !dbg !53
  %call = tail call noalias i8* @malloc(i64 16) #4, !dbg !54
  %0 = bitcast i8* %call to %struct.intstack_s*, !dbg !54
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %0}, i64 0, metadata !23), !dbg !54
  %cmp = icmp eq i8* %call, null, !dbg !54
  br i1 %cmp, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 52) #4, !dbg !55
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %entry
  %data1 = bitcast i8* %call to i32*, !dbg !56
  store i32 %data, i32* %data1, align 4, !dbg !56, !tbaa !57
  %nxt = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1, !dbg !58
  %1 = load %struct.intstack_s** %nxt, align 8, !dbg !58, !tbaa !49
  %nxt2 = getelementptr inbounds i8* %call, i64 8, !dbg !58
  %2 = bitcast i8* %nxt2 to %struct.intstack_s**, !dbg !58
  store %struct.intstack_s* %1, %struct.intstack_s** %2, align 8, !dbg !58, !tbaa !49
  store %struct.intstack_s* %0, %struct.intstack_s** %nxt, align 8, !dbg !59, !tbaa !49
  ret void, !dbg !60
}

; Function Attrs: nounwind optsize uwtable
define i32 @PopIntStack(%struct.intstack_s* nocapture %stack, i32* nocapture %ret_data) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %stack}, i64 0, metadata !29), !dbg !61
  tail call void @llvm.dbg.value(metadata !{i32* %ret_data}, i64 0, metadata !30), !dbg !61
  %nxt = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1, !dbg !62
  %0 = load %struct.intstack_s** %nxt, align 8, !dbg !62, !tbaa !49
  %cmp = icmp eq %struct.intstack_s* %0, null, !dbg !62
  br i1 %cmp, label %return, label %if.end, !dbg !62

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %0}, i64 0, metadata !31), !dbg !63
  %nxt2 = getelementptr inbounds %struct.intstack_s* %0, i64 0, i32 1, !dbg !64
  %1 = load %struct.intstack_s** %nxt2, align 8, !dbg !64, !tbaa !49
  store %struct.intstack_s* %1, %struct.intstack_s** %nxt, align 8, !dbg !64, !tbaa !49
  %data = getelementptr inbounds %struct.intstack_s* %0, i64 0, i32 0, !dbg !65
  %2 = load i32* %data, align 4, !dbg !65, !tbaa !57
  store i32 %2, i32* %ret_data, align 4, !dbg !65, !tbaa !57
  %3 = bitcast %struct.intstack_s* %0 to i8*, !dbg !66
  tail call void @free(i8* %3) #4, !dbg !66
  br label %return, !dbg !67

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !67
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @ReverseIntStack(%struct.intstack_s* nocapture %stack) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %stack}, i64 0, metadata !36), !dbg !68
  %nxt = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1, !dbg !69
  %0 = load %struct.intstack_s** %nxt, align 8, !dbg !69, !tbaa !49
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %0}, i64 0, metadata !37), !dbg !69
  store %struct.intstack_s* null, %struct.intstack_s** %nxt, align 8, !dbg !70, !tbaa !49
  %cmp12 = icmp eq %struct.intstack_s* %0, null, !dbg !72
  br i1 %cmp12, label %while.end, label %while.body, !dbg !72

while.body:                                       ; preds = %entry, %while.body
  %old.014 = phi %struct.intstack_s* [ %1, %while.body ], [ %0, %entry ]
  %storemerge13 = phi %struct.intstack_s* [ %old.014, %while.body ], [ null, %entry ]
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %old.014}, i64 0, metadata !38), !dbg !73
  %nxt2 = getelementptr inbounds %struct.intstack_s* %old.014, i64 0, i32 1, !dbg !74
  %1 = load %struct.intstack_s** %nxt2, align 8, !dbg !74, !tbaa !49
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %1}, i64 0, metadata !37), !dbg !74
  store %struct.intstack_s* %storemerge13, %struct.intstack_s** %nxt2, align 8, !dbg !75, !tbaa !49
  store %struct.intstack_s* %old.014, %struct.intstack_s** %nxt, align 8, !dbg !70, !tbaa !49
  %cmp = icmp eq %struct.intstack_s* %1, null, !dbg !72
  br i1 %cmp, label %while.end, label %while.body, !dbg !72

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !76
}

; Function Attrs: nounwind optsize uwtable
define i32 @FreeIntStack(%struct.intstack_s* nocapture %stack) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %stack}, i64 0, metadata !43), !dbg !77
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !78
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %stack}, i64 0, metadata !79) #5, !dbg !81
  %nxt.i = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1, !dbg !82
  %0 = load %struct.intstack_s** %nxt.i, align 8, !dbg !82, !tbaa !49
  %cmp.i4 = icmp eq %struct.intstack_s* %0, null, !dbg !82
  br i1 %cmp.i4, label %while.end, label %while.body, !dbg !82

while.body:                                       ; preds = %entry, %while.body
  %1 = phi %struct.intstack_s* [ %4, %while.body ], [ %0, %entry ]
  %count.05 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %1}, i64 0, metadata !83) #5, !dbg !84
  %nxt2.i = getelementptr inbounds %struct.intstack_s* %1, i64 0, i32 1, !dbg !85
  %2 = load %struct.intstack_s** %nxt2.i, align 8, !dbg !85, !tbaa !49
  store %struct.intstack_s* %2, %struct.intstack_s** %nxt.i, align 8, !dbg !85, !tbaa !49
  %3 = bitcast %struct.intstack_s* %1 to i8*, !dbg !86
  tail call void @free(i8* %3) #4, !dbg !86
  %inc = add nsw i32 %count.05, 1, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !45), !dbg !87
  tail call void @llvm.dbg.value(metadata !{%struct.intstack_s* %stack}, i64 0, metadata !79) #5, !dbg !81
  %4 = load %struct.intstack_s** %nxt.i, align 8, !dbg !82, !tbaa !49
  %cmp.i = icmp eq %struct.intstack_s* %4, null, !dbg !82
  br i1 %cmp.i, label %while.end, label %while.body, !dbg !82

while.end:                                        ; preds = %while.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %5 = bitcast %struct.intstack_s* %stack to i8*, !dbg !88
  tail call void @free(i8* %5) #4, !dbg !88
  ret i32 %count.0.lcssa, !dbg !89
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stack.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/stack.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !17, metadata !24, metadata !32, metadata !39}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InitIntStack", metadata !"InitIntStack", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.intstack_s* ()* @InitIntStack, null, null, metadata !15, i32 38} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 38] [InitIntStack]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stack.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from intstack_s]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"intstack_s", i32 282, i64 128, i64 64, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [intstack_s] [line 282, size 128, align 64, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !14}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"data", i32 283, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [data] [line 283, size 32, align 32, offset 0] [from int]
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"nxt", i32 284, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nxt] [line 284, size 64, align 64, offset 64] [from ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786688, metadata !4, metadata !"stack", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stack] [line 39]
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PushIntStack", metadata !"PushIntStack", metadata !"", i32 47, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.intstack_s*, i32)* @PushIntStack, null, null, metadata !20, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [PushIntStack]
!18 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{null, metadata !8, metadata !13}
!20 = metadata !{metadata !21, metadata !22, metadata !23}
!21 = metadata !{i32 786689, metadata !17, metadata !"stack", metadata !5, i32 16777263, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stack] [line 47]
!22 = metadata !{i32 786689, metadata !17, metadata !"data", metadata !5, i32 33554479, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 47]
!23 = metadata !{i32 786688, metadata !17, metadata !"new", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 49]
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PopIntStack", metadata !"PopIntStack", metadata !"", i32 60, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.intstack_s*, i32*)* @PopIntStack, null, null, metadata !28, i32 61} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 61] [PopIntStack]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !13, metadata !8, metadata !27}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!28 = metadata !{metadata !29, metadata !30, metadata !31}
!29 = metadata !{i32 786689, metadata !24, metadata !"stack", metadata !5, i32 16777276, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stack] [line 60]
!30 = metadata !{i32 786689, metadata !24, metadata !"ret_data", metadata !5, i32 33554492, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_data] [line 60]
!31 = metadata !{i32 786688, metadata !24, metadata !"old", metadata !5, i32 62, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old] [line 62]
!32 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ReverseIntStack", metadata !"ReverseIntStack", metadata !"", i32 75, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.intstack_s*)* @ReverseIntStack, null, null, metadata !35, i32 76} ; [ DW_TAG_subprogram ] [line 75] [def] [scope 76] [ReverseIntStack]
!33 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{null, metadata !8}
!35 = metadata !{metadata !36, metadata !37, metadata !38}
!36 = metadata !{i32 786689, metadata !32, metadata !"stack", metadata !5, i32 16777291, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stack] [line 75]
!37 = metadata !{i32 786688, metadata !32, metadata !"old", metadata !5, i32 77, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old] [line 77]
!38 = metadata !{i32 786688, metadata !32, metadata !"new", metadata !5, i32 78, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 78]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FreeIntStack", metadata !"FreeIntStack", metadata !"", i32 92, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.intstack_s*)* @FreeIntStack, null, null, metadata !42, i32 93} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 93] [FreeIntStack]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !13, metadata !8}
!42 = metadata !{metadata !43, metadata !44, metadata !45}
!43 = metadata !{i32 786689, metadata !39, metadata !"stack", metadata !5, i32 16777308, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stack] [line 92]
!44 = metadata !{i32 786688, metadata !39, metadata !"data", metadata !5, i32 94, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 94]
!45 = metadata !{i32 786688, metadata !39, metadata !"count", metadata !5, i32 95, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 95]
!46 = metadata !{i32 41, i32 0, metadata !4, null}
!47 = metadata !{i32 42, i32 0, metadata !4, null}
!48 = metadata !{i32 43, i32 0, metadata !4, null}
!49 = metadata !{metadata !"any pointer", metadata !50}
!50 = metadata !{metadata !"omnipotent char", metadata !51}
!51 = metadata !{metadata !"Simple C/C++ TBAA"}
!52 = metadata !{i32 44, i32 0, metadata !4, null}
!53 = metadata !{i32 47, i32 0, metadata !17, null}
!54 = metadata !{i32 51, i32 0, metadata !17, null}
!55 = metadata !{i32 52, i32 0, metadata !17, null}
!56 = metadata !{i32 53, i32 0, metadata !17, null}
!57 = metadata !{metadata !"int", metadata !50}
!58 = metadata !{i32 55, i32 0, metadata !17, null}
!59 = metadata !{i32 56, i32 0, metadata !17, null}
!60 = metadata !{i32 57, i32 0, metadata !17, null}
!61 = metadata !{i32 60, i32 0, metadata !24, null}
!62 = metadata !{i32 64, i32 0, metadata !24, null}
!63 = metadata !{i32 66, i32 0, metadata !24, null}
!64 = metadata !{i32 67, i32 0, metadata !24, null}
!65 = metadata !{i32 69, i32 0, metadata !24, null}
!66 = metadata !{i32 70, i32 0, metadata !24, null}
!67 = metadata !{i32 71, i32 0, metadata !24, null}
!68 = metadata !{i32 75, i32 0, metadata !32, null}
!69 = metadata !{i32 80, i32 0, metadata !32, null}
!70 = metadata !{i32 87, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !32, i32 83, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stack.c]
!72 = metadata !{i32 82, i32 0, metadata !32, null}
!73 = metadata !{i32 84, i32 0, metadata !71, null}
!74 = metadata !{i32 85, i32 0, metadata !71, null}
!75 = metadata !{i32 86, i32 0, metadata !71, null}
!76 = metadata !{i32 89, i32 0, metadata !32, null}
!77 = metadata !{i32 92, i32 0, metadata !39, null}
!78 = metadata !{i32 95, i32 0, metadata !39, null}
!79 = metadata !{i32 786689, metadata !24, metadata !"stack", metadata !5, i32 16777276, metadata !8, i32 0, metadata !80} ; [ DW_TAG_arg_variable ] [stack] [line 60]
!80 = metadata !{i32 97, i32 0, metadata !39, null}
!81 = metadata !{i32 60, i32 0, metadata !24, metadata !80}
!82 = metadata !{i32 64, i32 0, metadata !24, metadata !80}
!83 = metadata !{i32 786688, metadata !24, metadata !"old", metadata !5, i32 62, metadata !8, i32 0, metadata !80} ; [ DW_TAG_auto_variable ] [old] [line 62]
!84 = metadata !{i32 66, i32 0, metadata !24, metadata !80}
!85 = metadata !{i32 67, i32 0, metadata !24, metadata !80}
!86 = metadata !{i32 70, i32 0, metadata !24, metadata !80}
!87 = metadata !{i32 98, i32 0, metadata !39, null}
!88 = metadata !{i32 99, i32 0, metadata !39, null}
!89 = metadata !{i32 100, i32 0, metadata !39, null}
