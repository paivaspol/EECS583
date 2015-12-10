; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/mcf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

@net = common global %struct.network zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"active arcs                : %ld\0A\00", align 1
@.str1 = private unnamed_addr constant [34 x i8] c"simplex iterations         : %ld\0A\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"objective value            : %0.0f\0A\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"erased arcs                : %ld\0A\00", align 1
@.str4 = private unnamed_addr constant [34 x i8] c"new implicit arcs          : %ld\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"checksum                   : %ld\0A\00", align 1
@.str13 = private unnamed_addr constant [34 x i8] c"nodes                      : %ld\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"mcf.out\00", align 1
@str = private unnamed_addr constant [28 x i8] c"not enough memory, exit(-1)\00"
@str16 = private unnamed_addr constant [31 x i8] c"\0AMCF SPEC CPU2006 version 1.10\00"
@str17 = private unnamed_addr constant [51 x i8] c"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\00"
@str18 = private unnamed_addr constant [45 x i8] c"Copyright (c) 2000-2002 Andreas Loebel & ZIB\00"
@str19 = private unnamed_addr constant [39 x i8] c"Copyright (c) 2003-2005 Andreas Loebel\00"
@str20 = private unnamed_addr constant [5 x i8] c"done\00"
@str21 = private unnamed_addr constant [17 x i8] c"read error, exit\00"

; Function Attrs: nounwind optsize uwtable
define i64 @global_opt() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !94, i64 0, metadata !10), !dbg !95
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !11), !dbg !97
  br label %while.body, !dbg !98

while.body:                                       ; preds = %if.end23, %entry
  %residual_nb_it.032 = phi i64 [ 5, %entry ], [ %dec, %if.end23 ]
  %0 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 5), align 8, !dbg !99, !tbaa !101
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0), i64 %0) #6, !dbg !99
  %call1 = tail call i64 @primal_net_simplex(%struct.network* @net) #6, !dbg !104
  %1 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 27), align 8, !dbg !105, !tbaa !101
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0), i64 %1) #6, !dbg !105
  %call3 = tail call double @flow_cost(%struct.network* @net) #6, !dbg !106
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0), double %call3) #6, !dbg !106
  %tobool5 = icmp eq i64 %residual_nb_it.032, 0, !dbg !107
  br i1 %tobool5, label %while.end, label %if.end, !dbg !107

if.end:                                           ; preds = %while.body
  %2 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 7), align 8, !dbg !108, !tbaa !101
  %tobool6 = icmp eq i64 %2, 0, !dbg !108
  br i1 %tobool6, label %if.end13, label %if.then7, !dbg !108

if.then7:                                         ; preds = %if.end
  %call8 = tail call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0) #6, !dbg !109
  tail call void @llvm.dbg.value(metadata !{i64 %call8}, i64 0, metadata !10), !dbg !109
  %tobool9 = icmp eq i64 %call8, 0, !dbg !111
  br i1 %tobool9, label %if.end13, label %if.then10, !dbg !111

if.then10:                                        ; preds = %if.then7
  %call11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i64 %call8) #6, !dbg !112
  br label %if.end13, !dbg !112

if.end13:                                         ; preds = %if.then7, %if.end, %if.then10
  %call14 = tail call i64 @price_out_impl(%struct.network* @net) #6, !dbg !113
  tail call void @llvm.dbg.value(metadata !{i64 %call14}, i64 0, metadata !10), !dbg !113
  %tobool15 = icmp eq i64 %call14, 0, !dbg !114
  br i1 %tobool15, label %while.end, label %if.end18, !dbg !114

if.end18:                                         ; preds = %if.end13
  %call17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i64 %call14) #6, !dbg !115
  %cmp19 = icmp slt i64 %call14, 0, !dbg !116
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !116

if.then21:                                        ; preds = %if.end18
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str, i64 0, i64 0)), !dbg !117
  tail call void @exit(i32 -1) #7, !dbg !119
  unreachable, !dbg !119

if.end23:                                         ; preds = %if.end18
  %dec = add nsw i64 %residual_nb_it.032, -1, !dbg !120
  tail call void @llvm.dbg.value(metadata !{i64 %dec}, i64 0, metadata !11), !dbg !120
  br label %while.body

while.end:                                        ; preds = %if.end13, %while.body
  %3 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 29), align 8, !dbg !121, !tbaa !101
  %call24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0), i64 %3) #6, !dbg !121
  ret i64 0, !dbg !122
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: optsize
declare i64 @primal_net_simplex(%struct.network*) #2

; Function Attrs: optsize
declare double @flow_cost(%struct.network*) #2

; Function Attrs: optsize
declare i64 @suspend_impl(%struct.network*, i64, i64) #2

; Function Attrs: optsize
declare i64 @price_out_impl(%struct.network*) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** nocapture %argv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !20), !dbg !123
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !21), !dbg !123
  %cmp = icmp slt i32 %argc, 2, !dbg !124
  br i1 %cmp, label %return, label %if.end, !dbg !124

if.end:                                           ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str16, i64 0, i64 0)), !dbg !125
  %puts21 = tail call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @str17, i64 0, i64 0)), !dbg !126
  %puts22 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str18, i64 0, i64 0)), !dbg !127
  %puts23 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str19, i64 0, i64 0)), !dbg !128
  %putchar = tail call i32 @putchar(i32 10) #4, !dbg !129
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.network* @net, i64 0, i32 0, i64 0), i8 0, i64 624, i32 8, i1 false), !dbg !130
  store i64 10000000, i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 18), align 8, !dbg !131, !tbaa !101
  %arrayidx = getelementptr inbounds i8** %argv, i64 1, !dbg !132
  %0 = load i8** %arrayidx, align 8, !dbg !132, !tbaa !133
  %call5 = tail call i8* @strcpy(i8* getelementptr inbounds (%struct.network* @net, i64 0, i32 0, i64 0), i8* %0) #6, !dbg !132
  %call6 = tail call i64 @read_min(%struct.network* @net) #6, !dbg !134
  %tobool = icmp eq i64 %call6, 0, !dbg !134
  br i1 %tobool, label %if.end10, label %if.then7, !dbg !134

if.then7:                                         ; preds = %if.end
  %puts25 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str21, i64 0, i64 0)), !dbg !135
  %call9 = tail call i64 @getfree(%struct.network* @net) #6, !dbg !137
  br label %return, !dbg !138

if.end10:                                         ; preds = %if.end
  %1 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 3), align 8, !dbg !139, !tbaa !101
  %call11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str13, i64 0, i64 0), i64 %1) #6, !dbg !139
  %call12 = tail call i64 @primal_start_artificial(%struct.network* @net) #6, !dbg !140
  %call13 = tail call i64 @global_opt() #8, !dbg !141
  %puts24 = tail call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str20, i64 0, i64 0)), !dbg !142
  %call15 = tail call i64 @write_circulations(i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), %struct.network* @net) #6, !dbg !143
  %call18 = tail call i64 @getfree(%struct.network* @net) #6, !dbg !144
  %not.tobool16 = icmp ne i64 %call15, 0, !dbg !146
  %. = sext i1 %not.tobool16 to i32, !dbg !146
  br label %return, !dbg !146

return:                                           ; preds = %if.end10, %entry, %if.then7
  %retval.0 = phi i32 [ -1, %if.then7 ], [ -1, %entry ], [ %., %if.end10 ]
  ret i32 %retval.0, !dbg !146
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: optsize
declare i64 @read_min(%struct.network*) #2

; Function Attrs: optsize
declare i64 @getfree(%struct.network*) #2

; Function Attrs: optsize
declare i64 @primal_start_artificial(%struct.network*) #2

; Function Attrs: optsize
declare i64 @write_circulations(i8*, %struct.network*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !22, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/mcf.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/mcf.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"global_opt", metadata !"global_opt", metadata !"", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 ()* @global_opt, null, null, metadata !9, i32 39} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 39] [global_opt]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/mcf.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !11}
!10 = metadata !{i32 786688, metadata !4, metadata !"new_arcs", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_arcs] [line 40]
!11 = metadata !{i32 786688, metadata !4, metadata !"residual_nb_it", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [residual_nb_it] [line 41]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 117, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @main, null, null, metadata !19, i32 123} ; [ DW_TAG_subprogram ] [line 117] [def] [scope 123] [main]
!13 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !15, metadata !16}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!18 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!19 = metadata !{metadata !20, metadata !21}
!20 = metadata !{i32 786689, metadata !12, metadata !"argc", metadata !5, i32 16777333, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 117]
!21 = metadata !{i32 786689, metadata !12, metadata !"argv", metadata !5, i32 33554549, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 117]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786484, i32 0, null, metadata !"net", metadata !"net", metadata !"", metadata !5, i32 28, metadata !24, i32 0, i32 1, %struct.network* @net, null} ; [ DW_TAG_variable ] [net] [line 28] [def]
!24 = metadata !{i32 786454, metadata !1, null, metadata !"network_t", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [network_t] [line 163, size 0, align 0, offset 0] [from network]
!25 = metadata !{i32 786451, metadata !26, null, metadata !"network", i32 138, i64 4992, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [network] [line 138, size 4992, align 64, offset 0] [from ]
!26 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/defines.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!27 = metadata !{metadata !28, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !52, metadata !54, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!28 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"inputfile", i32 140, i64 1600, i64 8, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [inputfile] [line 140, size 1600, align 8, offset 0] [from ]
!29 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1600, i64 8, i32 0, i32 0, metadata !18, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1600, align 8, offset 0] [from char]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 200}      ; [ DW_TAG_subrange_type ] [0, 199]
!32 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"clustfile", i32 141, i64 1600, i64 8, i64 1600, i32 0, metadata !29} ; [ DW_TAG_member ] [clustfile] [line 141, size 1600, align 8, offset 1600] [from ]
!33 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"n", i32 142, i64 64, i64 64, i64 3200, i32 0, metadata !8} ; [ DW_TAG_member ] [n] [line 142, size 64, align 64, offset 3200] [from long int]
!34 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"n_trips", i32 142, i64 64, i64 64, i64 3264, i32 0, metadata !8} ; [ DW_TAG_member ] [n_trips] [line 142, size 64, align 64, offset 3264] [from long int]
!35 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"max_m", i32 143, i64 64, i64 64, i64 3328, i32 0, metadata !8} ; [ DW_TAG_member ] [max_m] [line 143, size 64, align 64, offset 3328] [from long int]
!36 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"m", i32 143, i64 64, i64 64, i64 3392, i32 0, metadata !8} ; [ DW_TAG_member ] [m] [line 143, size 64, align 64, offset 3392] [from long int]
!37 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"m_org", i32 143, i64 64, i64 64, i64 3456, i32 0, metadata !8} ; [ DW_TAG_member ] [m_org] [line 143, size 64, align 64, offset 3456] [from long int]
!38 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"m_impl", i32 143, i64 64, i64 64, i64 3520, i32 0, metadata !8} ; [ DW_TAG_member ] [m_impl] [line 143, size 64, align 64, offset 3520] [from long int]
!39 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"max_residual_new_m", i32 144, i64 64, i64 64, i64 3584, i32 0, metadata !8} ; [ DW_TAG_member ] [max_residual_new_m] [line 144, size 64, align 64, offset 3584] [from long int]
!40 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"max_new_m", i32 144, i64 64, i64 64, i64 3648, i32 0, metadata !8} ; [ DW_TAG_member ] [max_new_m] [line 144, size 64, align 64, offset 3648] [from long int]
!41 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"primal_unbounded", i32 146, i64 64, i64 64, i64 3712, i32 0, metadata !8} ; [ DW_TAG_member ] [primal_unbounded] [line 146, size 64, align 64, offset 3712] [from long int]
!42 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"dual_unbounded", i32 147, i64 64, i64 64, i64 3776, i32 0, metadata !8} ; [ DW_TAG_member ] [dual_unbounded] [line 147, size 64, align 64, offset 3776] [from long int]
!43 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"perturbed", i32 148, i64 64, i64 64, i64 3840, i32 0, metadata !8} ; [ DW_TAG_member ] [perturbed] [line 148, size 64, align 64, offset 3840] [from long int]
!44 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"feasible", i32 149, i64 64, i64 64, i64 3904, i32 0, metadata !8} ; [ DW_TAG_member ] [feasible] [line 149, size 64, align 64, offset 3904] [from long int]
!45 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"eps", i32 150, i64 64, i64 64, i64 3968, i32 0, metadata !8} ; [ DW_TAG_member ] [eps] [line 150, size 64, align 64, offset 3968] [from long int]
!46 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"opt_tol", i32 151, i64 64, i64 64, i64 4032, i32 0, metadata !8} ; [ DW_TAG_member ] [opt_tol] [line 151, size 64, align 64, offset 4032] [from long int]
!47 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"feas_tol", i32 152, i64 64, i64 64, i64 4096, i32 0, metadata !8} ; [ DW_TAG_member ] [feas_tol] [line 152, size 64, align 64, offset 4096] [from long int]
!48 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"pert_val", i32 153, i64 64, i64 64, i64 4160, i32 0, metadata !8} ; [ DW_TAG_member ] [pert_val] [line 153, size 64, align 64, offset 4160] [from long int]
!49 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"bigM", i32 154, i64 64, i64 64, i64 4224, i32 0, metadata !8} ; [ DW_TAG_member ] [bigM] [line 154, size 64, align 64, offset 4224] [from long int]
!50 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"optcost", i32 155, i64 64, i64 64, i64 4288, i32 0, metadata !51} ; [ DW_TAG_member ] [optcost] [line 155, size 64, align 64, offset 4288] [from double]
!51 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!52 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"ignore_impl", i32 156, i64 64, i64 64, i64 4352, i32 0, metadata !53} ; [ DW_TAG_member ] [ignore_impl] [line 156, size 64, align 64, offset 4352] [from cost_t]
!53 = metadata !{i32 786454, metadata !26, null, metadata !"cost_t", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [cost_t] [line 69, size 0, align 0, offset 0] [from long int]
!54 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"nodes", i32 157, i64 64, i64 64, i64 4416, i32 0, metadata !55} ; [ DW_TAG_member ] [nodes] [line 157, size 64, align 64, offset 4416] [from node_p]
!55 = metadata !{i32 786454, metadata !26, null, metadata !"node_p", i32 100, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [node_p] [line 100, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node]
!57 = metadata !{i32 786451, metadata !26, null, metadata !"node", i32 107, i64 832, i64 64, i32 0, i32 0, null, metadata !58, i32 0, null, null} ; [ DW_TAG_structure_type ] [node] [line 107, size 832, align 64, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85}
!59 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"potential", i32 109, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [potential] [line 109, size 64, align 64, offset 0] [from cost_t]
!60 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"orientation", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [orientation] [line 110, size 32, align 32, offset 64] [from int]
!61 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"child", i32 111, i64 64, i64 64, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [child] [line 111, size 64, align 64, offset 128] [from node_p]
!62 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"pred", i32 112, i64 64, i64 64, i64 192, i32 0, metadata !55} ; [ DW_TAG_member ] [pred] [line 112, size 64, align 64, offset 192] [from node_p]
!63 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"sibling", i32 113, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [sibling] [line 113, size 64, align 64, offset 256] [from node_p]
!64 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"sibling_prev", i32 114, i64 64, i64 64, i64 320, i32 0, metadata !55} ; [ DW_TAG_member ] [sibling_prev] [line 114, size 64, align 64, offset 320] [from node_p]
!65 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"basic_arc", i32 115, i64 64, i64 64, i64 384, i32 0, metadata !66} ; [ DW_TAG_member ] [basic_arc] [line 115, size 64, align 64, offset 384] [from arc_p]
!66 = metadata !{i32 786454, metadata !26, null, metadata !"arc_p", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [arc_p] [line 103, size 0, align 0, offset 0] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc]
!68 = metadata !{i32 786451, metadata !26, null, metadata !"arc", i32 126, i64 512, i64 64, i32 0, i32 0, null, metadata !69, i32 0, null, null} ; [ DW_TAG_structure_type ] [arc] [line 126, size 512, align 64, offset 0] [from ]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !78}
!70 = metadata !{i32 786445, metadata !26, metadata !68, metadata !"cost", i32 128, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [cost] [line 128, size 64, align 64, offset 0] [from cost_t]
!71 = metadata !{i32 786445, metadata !26, metadata !68, metadata !"tail", i32 129, i64 64, i64 64, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [tail] [line 129, size 64, align 64, offset 64] [from node_p]
!72 = metadata !{i32 786445, metadata !26, metadata !68, metadata !"head", i32 129, i64 64, i64 64, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [head] [line 129, size 64, align 64, offset 128] [from node_p]
!73 = metadata !{i32 786445, metadata !26, metadata !68, metadata !"ident", i32 130, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [ident] [line 130, size 32, align 32, offset 192] [from int]
!74 = metadata !{i32 786445, metadata !26, metadata !68, metadata !"nextout", i32 131, i64 64, i64 64, i64 256, i32 0, metadata !66} ; [ DW_TAG_member ] [nextout] [line 131, size 64, align 64, offset 256] [from arc_p]
!75 = metadata !{i32 786445, metadata !26, metadata !68, metadata !"nextin", i32 131, i64 64, i64 64, i64 320, i32 0, metadata !66} ; [ DW_TAG_member ] [nextin] [line 131, size 64, align 64, offset 320] [from arc_p]
!76 = metadata !{i32 786445, metadata !26, metadata !68, metadata !"flow", i32 132, i64 64, i64 64, i64 384, i32 0, metadata !77} ; [ DW_TAG_member ] [flow] [line 132, size 64, align 64, offset 384] [from flow_t]
!77 = metadata !{i32 786454, metadata !26, null, metadata !"flow_t", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [flow_t] [line 68, size 0, align 0, offset 0] [from long int]
!78 = metadata !{i32 786445, metadata !26, metadata !68, metadata !"org_cost", i32 133, i64 64, i64 64, i64 448, i32 0, metadata !53} ; [ DW_TAG_member ] [org_cost] [line 133, size 64, align 64, offset 448] [from cost_t]
!79 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"firstout", i32 116, i64 64, i64 64, i64 448, i32 0, metadata !66} ; [ DW_TAG_member ] [firstout] [line 116, size 64, align 64, offset 448] [from arc_p]
!80 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"firstin", i32 116, i64 64, i64 64, i64 512, i32 0, metadata !66} ; [ DW_TAG_member ] [firstin] [line 116, size 64, align 64, offset 512] [from arc_p]
!81 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"arc_tmp", i32 117, i64 64, i64 64, i64 576, i32 0, metadata !66} ; [ DW_TAG_member ] [arc_tmp] [line 117, size 64, align 64, offset 576] [from arc_p]
!82 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"flow", i32 118, i64 64, i64 64, i64 640, i32 0, metadata !77} ; [ DW_TAG_member ] [flow] [line 118, size 64, align 64, offset 640] [from flow_t]
!83 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"depth", i32 119, i64 64, i64 64, i64 704, i32 0, metadata !8} ; [ DW_TAG_member ] [depth] [line 119, size 64, align 64, offset 704] [from long int]
!84 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"number", i32 120, i64 32, i64 32, i64 768, i32 0, metadata !15} ; [ DW_TAG_member ] [number] [line 120, size 32, align 32, offset 768] [from int]
!85 = metadata !{i32 786445, metadata !26, metadata !57, metadata !"time", i32 121, i64 32, i64 32, i64 800, i32 0, metadata !15} ; [ DW_TAG_member ] [time] [line 121, size 32, align 32, offset 800] [from int]
!86 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"stop_nodes", i32 157, i64 64, i64 64, i64 4480, i32 0, metadata !55} ; [ DW_TAG_member ] [stop_nodes] [line 157, size 64, align 64, offset 4480] [from node_p]
!87 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"arcs", i32 158, i64 64, i64 64, i64 4544, i32 0, metadata !66} ; [ DW_TAG_member ] [arcs] [line 158, size 64, align 64, offset 4544] [from arc_p]
!88 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"stop_arcs", i32 158, i64 64, i64 64, i64 4608, i32 0, metadata !66} ; [ DW_TAG_member ] [stop_arcs] [line 158, size 64, align 64, offset 4608] [from arc_p]
!89 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"dummy_arcs", i32 159, i64 64, i64 64, i64 4672, i32 0, metadata !66} ; [ DW_TAG_member ] [dummy_arcs] [line 159, size 64, align 64, offset 4672] [from arc_p]
!90 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"stop_dummy", i32 159, i64 64, i64 64, i64 4736, i32 0, metadata !66} ; [ DW_TAG_member ] [stop_dummy] [line 159, size 64, align 64, offset 4736] [from arc_p]
!91 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"iterations", i32 160, i64 64, i64 64, i64 4800, i32 0, metadata !8} ; [ DW_TAG_member ] [iterations] [line 160, size 64, align 64, offset 4800] [from long int]
!92 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"bound_exchanges", i32 161, i64 64, i64 64, i64 4864, i32 0, metadata !8} ; [ DW_TAG_member ] [bound_exchanges] [line 161, size 64, align 64, offset 4864] [from long int]
!93 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"checksum", i32 162, i64 64, i64 64, i64 4928, i32 0, metadata !8} ; [ DW_TAG_member ] [checksum] [line 162, size 64, align 64, offset 4928] [from long int]
!94 = metadata !{i64 -1}
!95 = metadata !{i32 44, i32 0, metadata !4, null}
!96 = metadata !{i64 5}
!97 = metadata !{i32 45, i32 0, metadata !4, null}
!98 = metadata !{i32 48, i32 0, metadata !4, null}
!99 = metadata !{i32 51, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !4, i32 49, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/mcf.c]
!101 = metadata !{metadata !"long", metadata !102}
!102 = metadata !{metadata !"omnipotent char", metadata !103}
!103 = metadata !{metadata !"Simple C/C++ TBAA"}
!104 = metadata !{i32 54, i32 0, metadata !100, null}
!105 = metadata !{i32 58, i32 0, metadata !100, null} ; [ DW_TAG_imported_module ]
!106 = metadata !{i32 59, i32 0, metadata !100, null}
!107 = metadata !{i32 67, i32 0, metadata !100, null}
!108 = metadata !{i32 71, i32 0, metadata !100, null}
!109 = metadata !{i32 73, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !100, i32 72, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/mcf.c]
!111 = metadata !{i32 76, i32 0, metadata !110, null}
!112 = metadata !{i32 77, i32 0, metadata !110, null}
!113 = metadata !{i32 82, i32 0, metadata !100, null}
!114 = metadata !{i32 85, i32 0, metadata !100, null}
!115 = metadata !{i32 86, i32 0, metadata !100, null}
!116 = metadata !{i32 89, i32 0, metadata !100, null}
!117 = metadata !{i32 92, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !100, i32 90, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/mcf.c]
!119 = metadata !{i32 95, i32 0, metadata !118, null}
!120 = metadata !{i32 103, i32 0, metadata !100, null}
!121 = metadata !{i32 106, i32 0, metadata !4, null}
!122 = metadata !{i32 108, i32 0, metadata !4, null}
!123 = metadata !{i32 117, i32 0, metadata !12, null}
!124 = metadata !{i32 124, i32 0, metadata !12, null}
!125 = metadata !{i32 128, i32 0, metadata !12, null}
!126 = metadata !{i32 129, i32 0, metadata !12, null}
!127 = metadata !{i32 130, i32 0, metadata !12, null}
!128 = metadata !{i32 131, i32 0, metadata !12, null}
!129 = metadata !{i32 132, i32 0, metadata !12, null}
!130 = metadata !{i32 136, i32 0, metadata !12, null}
!131 = metadata !{i32 137, i32 0, metadata !12, null}
!132 = metadata !{i32 139, i32 0, metadata !12, null}
!133 = metadata !{metadata !"any pointer", metadata !102}
!134 = metadata !{i32 141, i32 0, metadata !12, null}
!135 = metadata !{i32 143, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !12, i32 142, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/mcf.c]
!137 = metadata !{i32 144, i32 0, metadata !136, null}
!138 = metadata !{i32 145, i32 0, metadata !136, null}
!139 = metadata !{i32 150, i32 0, metadata !12, null}
!140 = metadata !{i32 154, i32 0, metadata !12, null}
!141 = metadata !{i32 155, i32 0, metadata !12, null}
!142 = metadata !{i32 159, i32 0, metadata !12, null}
!143 = metadata !{i32 164, i32 0, metadata !12, null}
!144 = metadata !{i32 166, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !12, i32 165, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/mcf.c]
!146 = metadata !{i32 172, i32 0, metadata !12, null}
