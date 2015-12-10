; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/mcf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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

; Function Attrs: nounwind optsize ssp uwtable
define i64 @global_opt() #0 {
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !13, metadata !99), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !14, metadata !99), !dbg !101
  br label %1, !dbg !102

; <label>:1                                       ; preds = %21, %0
  %residual_nb_it.01 = phi i64 [ 5, %0 ], [ %24, %21 ]
  %2 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 5), align 8, !dbg !103, !tbaa !105
  %3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0), i64 %2) #6, !dbg !112
  %4 = tail call i64 @primal_net_simplex(%struct.network* @net) #6, !dbg !113
  %5 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 27), align 8, !dbg !114, !tbaa !115
  %6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0), i64 %5) #6, !dbg !116
  %7 = tail call double @flow_cost(%struct.network* @net) #6, !dbg !117
  %8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0), double %7) #6, !dbg !118
  %9 = icmp eq i64 %residual_nb_it.01, 0, !dbg !119
  br i1 %9, label %.thread.thread, label %10, !dbg !121

; <label>:10                                      ; preds = %1
  %11 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 7), align 8, !dbg !122, !tbaa !124
  %12 = icmp eq i64 %11, 0, !dbg !125
  br i1 %12, label %18, label %13, !dbg !126

; <label>:13                                      ; preds = %10
  %14 = tail call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0) #6, !dbg !127
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !13, metadata !99), !dbg !100
  %15 = icmp eq i64 %14, 0, !dbg !129
  br i1 %15, label %18, label %16, !dbg !131

; <label>:16                                      ; preds = %13
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i64 %14) #6, !dbg !132
  br label %18, !dbg !132

; <label>:18                                      ; preds = %13, %10, %16
  %19 = tail call i64 @price_out_impl(%struct.network* @net) #6, !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !13, metadata !99), !dbg !100
  %20 = icmp eq i64 %19, 0, !dbg !134
  br i1 %20, label %.thread.thread, label %21, !dbg !136

; <label>:21                                      ; preds = %18
  %22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i64 %19) #6, !dbg !137
  %23 = icmp slt i64 %19, 0, !dbg !138
  %24 = add nsw i64 %residual_nb_it.01, -1, !dbg !140
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !14, metadata !99), !dbg !101
  br i1 %23, label %25, label %1, !dbg !141

; <label>:25                                      ; preds = %21
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str, i64 0, i64 0)), !dbg !142
  tail call void @exit(i32 -1) #7, !dbg !144
  unreachable, !dbg !144

.thread.thread:                                   ; preds = %18, %1
  %26 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 29), align 8, !dbg !145, !tbaa !146
  %27 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0), i64 %26) #6, !dbg !147
  ret i64 0, !dbg !148
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: optsize
declare i64 @primal_net_simplex(%struct.network*) #2

; Function Attrs: optsize
declare double @flow_cost(%struct.network*) #2

; Function Attrs: optsize
declare i64 @suspend_impl(%struct.network*, i64, i64) #2

; Function Attrs: optsize
declare i64 @price_out_impl(%struct.network*) #2

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !23, metadata !99), !dbg !149
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !24, metadata !99), !dbg !150
  %1 = icmp slt i32 %argc, 2, !dbg !151
  br i1 %1, label %17, label %2, !dbg !153

; <label>:2                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str16, i64 0, i64 0)), !dbg !154
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @str17, i64 0, i64 0)), !dbg !155
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str18, i64 0, i64 0)), !dbg !156
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str19, i64 0, i64 0)), !dbg !157
  %putchar = tail call i32 @putchar(i32 10) #4, !dbg !158
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.network* @net, i64 0, i32 0, i64 0), i8 0, i64 624, i32 8, i1 false), !dbg !159
  store i64 10000000, i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 18), align 8, !dbg !160, !tbaa !161
  %3 = getelementptr inbounds i8** %argv, i64 1, !dbg !162
  %4 = load i8** %3, align 8, !dbg !162, !tbaa !163
  %5 = tail call i8* @__strcpy_chk(i8* getelementptr inbounds (%struct.network* @net, i64 0, i32 0, i64 0), i8* %4, i64 624) #6, !dbg !162
  %6 = tail call i64 @read_min(%struct.network* @net) #6, !dbg !164
  %7 = icmp eq i64 %6, 0, !dbg !164
  br i1 %7, label %10, label %8, !dbg !166

; <label>:8                                       ; preds = %2
  %puts5 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str21, i64 0, i64 0)), !dbg !167
  %9 = tail call i64 @getfree(%struct.network* @net) #6, !dbg !169
  br label %17, !dbg !170

; <label>:10                                      ; preds = %2
  %11 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 3), align 8, !dbg !171, !tbaa !172
  %12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str13, i64 0, i64 0), i64 %11) #6, !dbg !173
  %13 = tail call i64 @primal_start_artificial(%struct.network* @net) #6, !dbg !174
  %14 = tail call i64 @global_opt() #8, !dbg !175
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str20, i64 0, i64 0)), !dbg !176
  %15 = tail call i64 @write_circulations(i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), %struct.network* @net) #6, !dbg !177
  %16 = tail call i64 @getfree(%struct.network* @net) #6, !dbg !179
  %not. = icmp ne i64 %15, 0, !dbg !181
  %. = sext i1 %not. to i32, !dbg !181
  br label %17, !dbg !181

; <label>:17                                      ; preds = %10, %0, %8
  %.0 = phi i32 [ -1, %8 ], [ -1, %0 ], [ %., %10 ]
  ret i32 %.0, !dbg !182
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #1

; Function Attrs: optsize
declare i64 @read_min(%struct.network*) #2

; Function Attrs: optsize
declare i64 @getfree(%struct.network*) #2

; Function Attrs: optsize
declare i64 @primal_start_artificial(%struct.network*) #2

; Function Attrs: optsize
declare i64 @write_circulations(i8*, %struct.network*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !25, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/mcf.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !7, !6}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !5, line: 69, baseType: !6)
!5 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!6 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !{!9, !15}
!9 = !DISubprogram(name: "global_opt", scope: !1, file: !1, line: 35, type: !10, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @global_opt, variables: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{!6}
!12 = !{!13, !14}
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_arcs", scope: !9, file: !1, line: 40, type: !6)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "residual_nb_it", scope: !9, file: !1, line: 41, type: !6)
!15 = !DISubprogram(name: "main", scope: !1, file: !1, line: 117, type: !16, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !22)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !19}
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !{!23, !24}
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !15, file: !1, line: 117, type: !18)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !15, file: !1, line: 117, type: !19)
!25 = !{!26}
!26 = !DIGlobalVariable(name: "net", scope: !0, file: !1, line: 28, type: !27, isLocal: false, isDefinition: true, variable: %struct.network* @net)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !5, line: 163, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !5, line: 138, size: 4992, align: 64, elements: !29)
!29 = !{!30, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !55, !87, !88, !89, !90, !91, !92, !93, !94}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !28, file: !5, line: 140, baseType: !31, size: 1600, align: 8)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1600, align: 8, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 200)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !28, file: !5, line: 141, baseType: !31, size: 1600, align: 8, offset: 1600)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !28, file: !5, line: 142, baseType: !6, size: 64, align: 64, offset: 3200)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !28, file: !5, line: 142, baseType: !6, size: 64, align: 64, offset: 3264)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !28, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3328)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !28, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3392)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !28, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3456)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !28, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3520)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !28, file: !5, line: 144, baseType: !6, size: 64, align: 64, offset: 3584)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !28, file: !5, line: 144, baseType: !6, size: 64, align: 64, offset: 3648)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !28, file: !5, line: 146, baseType: !6, size: 64, align: 64, offset: 3712)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !28, file: !5, line: 147, baseType: !6, size: 64, align: 64, offset: 3776)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !28, file: !5, line: 148, baseType: !6, size: 64, align: 64, offset: 3840)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !28, file: !5, line: 149, baseType: !6, size: 64, align: 64, offset: 3904)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !28, file: !5, line: 150, baseType: !6, size: 64, align: 64, offset: 3968)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !28, file: !5, line: 151, baseType: !6, size: 64, align: 64, offset: 4032)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !28, file: !5, line: 152, baseType: !6, size: 64, align: 64, offset: 4096)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !28, file: !5, line: 153, baseType: !6, size: 64, align: 64, offset: 4160)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !28, file: !5, line: 154, baseType: !6, size: 64, align: 64, offset: 4224)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !28, file: !5, line: 155, baseType: !53, size: 64, align: 64, offset: 4288)
!53 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !28, file: !5, line: 156, baseType: !4, size: 64, align: 64, offset: 4352)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !28, file: !5, line: 157, baseType: !56, size: 64, align: 64, offset: 4416)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !5, line: 100, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !5, line: 107, size: 832, align: 64, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !80, !81, !82, !83, !84, !85, !86}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !58, file: !5, line: 109, baseType: !4, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !58, file: !5, line: 110, baseType: !18, size: 32, align: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !58, file: !5, line: 111, baseType: !56, size: 64, align: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !58, file: !5, line: 112, baseType: !56, size: 64, align: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !58, file: !5, line: 113, baseType: !56, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !58, file: !5, line: 114, baseType: !56, size: 64, align: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !58, file: !5, line: 115, baseType: !67, size: 64, align: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !5, line: 103, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !5, line: 126, size: 512, align: 64, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !79}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !69, file: !5, line: 128, baseType: !4, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !69, file: !5, line: 129, baseType: !56, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !69, file: !5, line: 129, baseType: !56, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !69, file: !5, line: 130, baseType: !18, size: 32, align: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !69, file: !5, line: 131, baseType: !67, size: 64, align: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !69, file: !5, line: 131, baseType: !67, size: 64, align: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !69, file: !5, line: 132, baseType: !78, size: 64, align: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !5, line: 68, baseType: !6)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !69, file: !5, line: 133, baseType: !4, size: 64, align: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !58, file: !5, line: 116, baseType: !67, size: 64, align: 64, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !58, file: !5, line: 116, baseType: !67, size: 64, align: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !58, file: !5, line: 117, baseType: !67, size: 64, align: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !58, file: !5, line: 118, baseType: !78, size: 64, align: 64, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !58, file: !5, line: 119, baseType: !6, size: 64, align: 64, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !58, file: !5, line: 120, baseType: !18, size: 32, align: 32, offset: 768)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !58, file: !5, line: 121, baseType: !18, size: 32, align: 32, offset: 800)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !28, file: !5, line: 157, baseType: !56, size: 64, align: 64, offset: 4480)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !28, file: !5, line: 158, baseType: !67, size: 64, align: 64, offset: 4544)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !28, file: !5, line: 158, baseType: !67, size: 64, align: 64, offset: 4608)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !28, file: !5, line: 159, baseType: !67, size: 64, align: 64, offset: 4672)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !28, file: !5, line: 159, baseType: !67, size: 64, align: 64, offset: 4736)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !28, file: !5, line: 160, baseType: !6, size: 64, align: 64, offset: 4800)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !28, file: !5, line: 161, baseType: !6, size: 64, align: 64, offset: 4864)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !28, file: !5, line: 162, baseType: !6, size: 64, align: 64, offset: 4928)
!95 = !{i32 2, !"Dwarf Version", i32 2}
!96 = !{i32 2, !"Debug Info Version", i32 700000003}
!97 = !{i32 1, !"PIC Level", i32 2}
!98 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!99 = !DIExpression()
!100 = !DILocation(line: 40, column: 10, scope: !9)
!101 = !DILocation(line: 41, column: 10, scope: !9)
!102 = !DILocation(line: 48, column: 5, scope: !9)
!103 = !DILocation(line: 51, column: 59, scope: !104)
!104 = distinct !DILexicalBlock(scope: !9, file: !1, line: 49, column: 5)
!105 = !{!106, !109, i64 424}
!106 = !{!"network", !107, i64 0, !107, i64 200, !109, i64 400, !109, i64 408, !109, i64 416, !109, i64 424, !109, i64 432, !109, i64 440, !109, i64 448, !109, i64 456, !109, i64 464, !109, i64 472, !109, i64 480, !109, i64 488, !109, i64 496, !109, i64 504, !109, i64 512, !109, i64 520, !109, i64 528, !110, i64 536, !109, i64 544, !111, i64 552, !111, i64 560, !111, i64 568, !111, i64 576, !111, i64 584, !111, i64 592, !109, i64 600, !109, i64 608, !109, i64 616}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !{!"long", !107, i64 0}
!110 = !{!"double", !107, i64 0}
!111 = !{!"any pointer", !107, i64 0}
!112 = !DILocation(line: 51, column: 9, scope: !104)
!113 = !DILocation(line: 54, column: 9, scope: !104)
!114 = !DILocation(line: 58, column: 59, scope: !104)
!115 = !{!106, !109, i64 600}
!116 = !DILocation(line: 58, column: 9, scope: !104)
!117 = !DILocation(line: 59, column: 57, scope: !104)
!118 = !DILocation(line: 59, column: 9, scope: !104)
!119 = !DILocation(line: 67, column: 14, scope: !120)
!120 = distinct !DILexicalBlock(scope: !104, file: !1, line: 67, column: 13)
!121 = !DILocation(line: 67, column: 13, scope: !104)
!122 = !DILocation(line: 71, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !104, file: !1, line: 71, column: 13)
!124 = !{!106, !109, i64 440}
!125 = !DILocation(line: 71, column: 13, scope: !123)
!126 = !DILocation(line: 71, column: 13, scope: !104)
!127 = !DILocation(line: 73, column: 22, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !1, line: 72, column: 9)
!129 = !DILocation(line: 76, column: 15, scope: !130)
!130 = distinct !DILexicalBlock(scope: !128, file: !1, line: 76, column: 15)
!131 = !DILocation(line: 76, column: 15, scope: !128)
!132 = !DILocation(line: 77, column: 13, scope: !130)
!133 = !DILocation(line: 82, column: 20, scope: !104)
!134 = !DILocation(line: 85, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !104, file: !1, line: 85, column: 13)
!136 = !DILocation(line: 85, column: 13, scope: !104)
!137 = !DILocation(line: 86, column: 13, scope: !135)
!138 = !DILocation(line: 89, column: 22, scope: !139)
!139 = distinct !DILexicalBlock(scope: !104, file: !1, line: 89, column: 13)
!140 = !DILocation(line: 103, column: 23, scope: !104)
!141 = !DILocation(line: 89, column: 13, scope: !104)
!142 = !DILocation(line: 92, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 90, column: 9)
!144 = !DILocation(line: 95, column: 13, scope: !143)
!145 = !DILocation(line: 106, column: 55, scope: !9)
!146 = !{!106, !109, i64 616}
!147 = !DILocation(line: 106, column: 5, scope: !9)
!148 = !DILocation(line: 108, column: 5, scope: !9)
!149 = !DILocation(line: 117, column: 15, scope: !15)
!150 = !DILocation(line: 117, column: 27, scope: !15)
!151 = !DILocation(line: 124, column: 14, scope: !152)
!152 = distinct !DILexicalBlock(scope: !15, file: !1, line: 124, column: 9)
!153 = !DILocation(line: 124, column: 9, scope: !15)
!154 = !DILocation(line: 128, column: 5, scope: !15)
!155 = !DILocation(line: 129, column: 5, scope: !15)
!156 = !DILocation(line: 130, column: 5, scope: !15)
!157 = !DILocation(line: 131, column: 5, scope: !15)
!158 = !DILocation(line: 132, column: 5, scope: !15)
!159 = !DILocation(line: 136, column: 5, scope: !15)
!160 = !DILocation(line: 137, column: 14, scope: !15)
!161 = !{!106, !109, i64 528}
!162 = !DILocation(line: 139, column: 5, scope: !15)
!163 = !{!111, !111, i64 0}
!164 = !DILocation(line: 141, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !15, file: !1, line: 141, column: 9)
!166 = !DILocation(line: 141, column: 9, scope: !15)
!167 = !DILocation(line: 143, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 142, column: 5)
!169 = !DILocation(line: 144, column: 9, scope: !168)
!170 = !DILocation(line: 145, column: 9, scope: !168)
!171 = !DILocation(line: 150, column: 55, scope: !15)
!172 = !{!106, !109, i64 408}
!173 = !DILocation(line: 150, column: 5, scope: !15)
!174 = !DILocation(line: 154, column: 5, scope: !15)
!175 = !DILocation(line: 155, column: 5, scope: !15)
!176 = !DILocation(line: 159, column: 5, scope: !15)
!177 = !DILocation(line: 164, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !15, file: !1, line: 164, column: 9)
!179 = !DILocation(line: 166, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !178, file: !1, line: 165, column: 5)
!181 = !DILocation(line: 172, column: 5, scope: !15)
!182 = !DILocation(line: 173, column: 1, scope: !15)
