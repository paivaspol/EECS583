; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_pseudo.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [61 x i8] c"\0A fatal error in BPG_pseudoperipheralnode(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"\0A fatal error in BPG_levelStructure(%p,%d,%p,%p,%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BPG_pseudoperipheralnode(%struct._BPG* %bpg, i32 %seed) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !56, metadata !92), !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !57, metadata !92), !dbg !94
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !95
  br i1 %1, label %2, label %5, !dbg !97

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !98, !tbaa !100
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), %struct._BPG* null, i32 %seed) #5, !dbg !104
  tail call void @exit(i32 -1) #6, !dbg !105
  unreachable, !dbg !105

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %seed, 0, !dbg !106
  %7 = sub nsw i32 0, %seed, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !57, metadata !92), !dbg !94
  %.seed = select i1 %6, i32 %7, i32 %seed, !dbg !110
  %8 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !111
  %9 = load i32* %8, align 4, !dbg !111, !tbaa !112
  %10 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !115
  %11 = load i32* %10, align 4, !dbg !115, !tbaa !116
  %12 = add nsw i32 %11, %9, !dbg !117
  %13 = srem i32 %.seed, %12, !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !57, metadata !92), !dbg !94
  %14 = tail call i32* @IVinit(i32 %12, i32 -1) #5, !dbg !119
  tail call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !65, metadata !92), !dbg !120
  %15 = load i32* %8, align 4, !dbg !121, !tbaa !112
  %16 = load i32* %10, align 4, !dbg !122, !tbaa !116
  %17 = add nsw i32 %16, %15, !dbg !123
  %18 = tail call i32* @IVinit(i32 %17, i32 -1) #5, !dbg !124
  tail call void @llvm.dbg.value(metadata i32* %18, i64 0, metadata !64, metadata !92), !dbg !125
  %19 = load i32* %8, align 4, !dbg !126, !tbaa !112
  %20 = load i32* %10, align 4, !dbg !127, !tbaa !116
  %21 = add nsw i32 %20, %19, !dbg !128
  %22 = tail call i32* @IVinit(i32 %21, i32 -1) #5, !dbg !129
  tail call void @llvm.dbg.value(metadata i32* %22, i64 0, metadata !66, metadata !92), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !60, metadata !92), !dbg !131
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !63, metadata !92), !dbg !132
  %23 = tail call i32 @BPG_levelStructure(%struct._BPG* %bpg, i32 %13, i32* %14, i32* %18, i32* %22, i32 1) #7, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !58, metadata !92), !dbg !134
  %.pn12 = sext i32 %23 to i64, !dbg !135
  %.pn.in.in3 = getelementptr inbounds i32* %14, i64 %.pn12, !dbg !135
  %.pn.in4 = load i32* %.pn.in.in3, align 4, !dbg !135
  %.pn5 = sext i32 %.pn.in4 to i64, !dbg !136
  %rad.0.in6 = getelementptr inbounds i32* %18, i64 %.pn5, !dbg !136
  %rad.07 = load i32* %rad.0.in6, align 4, !dbg !136
  %24 = icmp sgt i32 %rad.07, 0, !dbg !137
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !138

.lr.ph:                                           ; preds = %5, %.lr.ph
  %rad.010 = phi i32 [ %rad.0, %.lr.ph ], [ %rad.07, %5 ]
  %.pn.in9 = phi i32 [ %.pn.in, %.lr.ph ], [ %.pn.in4, %5 ]
  %tag.08 = phi i32 [ %25, %.lr.ph ], [ 1, %5 ]
  tail call void @llvm.dbg.value(metadata i32 %rad.0, i64 0, metadata !60, metadata !92), !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %.pn.in, i64 0, metadata !62, metadata !92), !dbg !139
  %25 = add nuw nsw i32 %tag.08, 1, !dbg !140
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !63, metadata !92), !dbg !132
  %26 = tail call i32 @BPG_levelStructure(%struct._BPG* %bpg, i32 %.pn.in9, i32* %14, i32* %18, i32* %22, i32 %25) #7, !dbg !142
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !58, metadata !92), !dbg !134
  %.pn1 = sext i32 %26 to i64, !dbg !135
  %.pn.in.in = getelementptr inbounds i32* %14, i64 %.pn1, !dbg !135
  %.pn.in = load i32* %.pn.in.in, align 4, !dbg !135
  %.pn = sext i32 %.pn.in to i64, !dbg !136
  %rad.0.in = getelementptr inbounds i32* %18, i64 %.pn, !dbg !136
  %rad.0 = load i32* %rad.0.in, align 4, !dbg !136
  %27 = icmp slt i32 %rad.010, %rad.0, !dbg !137
  br i1 %27, label %.lr.ph, label %._crit_edge, !dbg !138

._crit_edge:                                      ; preds = %.lr.ph, %5
  %root.0.lcssa = phi i32 [ undef, %5 ], [ %.pn.in9, %.lr.ph ]
  tail call void @IVfree(i32* %14) #5, !dbg !143
  tail call void @IVfree(i32* %18) #5, !dbg !144
  tail call void @IVfree(i32* %22) #5, !dbg !145
  ret i32 %root.0.lcssa, !dbg !146
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BPG_levelStructure(%struct._BPG* %bpg, i32 %root, i32* %list, i32* %dist, i32* %mark, i32 %tag) #0 {
  %usize = alloca i32, align 4
  %vsize = alloca i32, align 4
  %uadj = alloca i32*, align 8
  %vadj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !71, metadata !92), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %root, i64 0, metadata !72, metadata !92), !dbg !148
  tail call void @llvm.dbg.value(metadata i32* %list, i64 0, metadata !73, metadata !92), !dbg !149
  tail call void @llvm.dbg.value(metadata i32* %dist, i64 0, metadata !74, metadata !92), !dbg !150
  tail call void @llvm.dbg.value(metadata i32* %mark, i64 0, metadata !75, metadata !92), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %tag, i64 0, metadata !76, metadata !92), !dbg !152
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !153
  %2 = icmp slt i32 %root, 0, !dbg !155
  %or.cond = or i1 %1, %2, !dbg !156
  br i1 %or.cond, label %13, label %3, !dbg !156

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !157
  %5 = load i32* %4, align 4, !dbg !157, !tbaa !112
  %6 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !158
  %7 = load i32* %6, align 4, !dbg !158, !tbaa !116
  %8 = add nsw i32 %7, %5, !dbg !159
  %9 = icmp sle i32 %8, %root, !dbg !160
  %10 = icmp eq i32* %list, null, !dbg !161
  %or.cond3 = or i1 %10, %9, !dbg !162
  %11 = icmp eq i32* %dist, null, !dbg !163
  %or.cond5 = or i1 %11, %or.cond3, !dbg !162
  %12 = icmp eq i32* %mark, null, !dbg !164
  %or.cond7 = or i1 %12, %or.cond5, !dbg !162
  br i1 %or.cond7, label %13, label %16, !dbg !162

; <label>:13                                      ; preds = %3, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !165, !tbaa !100
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), %struct._BPG* %bpg, i32 %root, i32* %list, i32* %dist, i32* %mark, i32 %tag) #5, !dbg !167
  tail call void @exit(i32 -1) #6, !dbg !168
  unreachable, !dbg !168

; <label>:16                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !79, metadata !92), !dbg !169
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !80, metadata !92), !dbg !170
  store i32 %root, i32* %list, align 4, !dbg !171, !tbaa !172
  %17 = sext i32 %root to i64, !dbg !173
  %18 = getelementptr inbounds i32* %dist, i64 %17, !dbg !173
  store i32 0, i32* %18, align 4, !dbg !174, !tbaa !172
  %19 = getelementptr inbounds i32* %mark, i64 %17, !dbg !175
  store i32 %tag, i32* %19, align 4, !dbg !176, !tbaa !172
  %20 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !177
  br label %23, !dbg !179

.loopexit:                                        ; preds = %._crit_edge, %23
  %last.1.lcssa = phi i32 [ %last.016, %23 ], [ %last.2.lcssa, %._crit_edge ]
  %21 = sext i32 %last.1.lcssa to i64, !dbg !180
  %22 = icmp slt i64 %indvars.iv19, %21, !dbg !180
  br i1 %22, label %23, label %59, !dbg !179

; <label>:23                                      ; preds = %.loopexit, %16
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %.loopexit ], [ 0, %16 ]
  %last.016 = phi i32 [ %last.1.lcssa, %.loopexit ], [ 0, %16 ]
  %indvars.iv.next20 = add nuw i64 %indvars.iv19, 1, !dbg !179
  %24 = getelementptr inbounds i32* %list, i64 %indvars.iv19, !dbg !181
  %25 = load i32* %24, align 4, !dbg !181, !tbaa !172
  call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !81, metadata !92), !dbg !182
  %26 = load %struct._Graph** %20, align 8, !dbg !177, !tbaa !183
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !82, metadata !92), !dbg !184
  call void @llvm.dbg.value(metadata i32** %uadj, i64 0, metadata !86, metadata !92), !dbg !185
  call void @Graph_adjAndSize(%struct._Graph* %26, i32 %25, i32* %usize, i32** %uadj) #5, !dbg !186
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !77, metadata !92), !dbg !187
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !82, metadata !92), !dbg !184
  %27 = load i32* %usize, align 4, !dbg !188, !tbaa !172
  %28 = icmp sgt i32 %27, 0, !dbg !191
  br i1 %28, label %.lr.ph13, label %.loopexit, !dbg !192

.lr.ph13:                                         ; preds = %23
  %29 = sext i32 %25 to i64, !dbg !193
  %30 = getelementptr inbounds i32* %dist, i64 %29, !dbg !193
  br label %31, !dbg !192

; <label>:31                                      ; preds = %.lr.ph13, %._crit_edge
  %indvars.iv17 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next18, %._crit_edge ]
  %last.110 = phi i32 [ %last.016, %.lr.ph13 ], [ %last.2.lcssa, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32** %uadj, i64 0, metadata !86, metadata !92), !dbg !185
  %32 = load i32** %uadj, align 8, !dbg !200, !tbaa !100
  %33 = getelementptr inbounds i32* %32, i64 %indvars.iv17, !dbg !200
  %34 = load i32* %33, align 4, !dbg !200, !tbaa !172
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !83, metadata !92), !dbg !201
  %35 = load %struct._Graph** %20, align 8, !dbg !202, !tbaa !183
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !84, metadata !92), !dbg !203
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !87, metadata !92), !dbg !204
  call void @Graph_adjAndSize(%struct._Graph* %35, i32 %34, i32* %vsize, i32** %vadj) #5, !dbg !205
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !78, metadata !92), !dbg !206
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !84, metadata !92), !dbg !203
  %36 = load i32* %vsize, align 4, !dbg !207, !tbaa !172
  %37 = icmp sgt i32 %36, 0, !dbg !208
  br i1 %37, label %.lr.ph, label %._crit_edge, !dbg !209

.lr.ph:                                           ; preds = %31
  %38 = load i32** %vadj, align 8, !dbg !210, !tbaa !100
  br label %39, !dbg !209

; <label>:39                                      ; preds = %.lr.ph, %53
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %53 ]
  %last.28 = phi i32 [ %last.110, %.lr.ph ], [ %last.3, %53 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !87, metadata !92), !dbg !204
  %40 = getelementptr inbounds i32* %38, i64 %indvars.iv, !dbg !210
  %41 = load i32* %40, align 4, !dbg !210, !tbaa !172
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !85, metadata !92), !dbg !211
  %42 = sext i32 %41 to i64, !dbg !212
  %43 = getelementptr inbounds i32* %mark, i64 %42, !dbg !212
  %44 = load i32* %43, align 4, !dbg !212, !tbaa !172
  %45 = icmp eq i32 %44, %tag, !dbg !213
  br i1 %45, label %53, label %46, !dbg !214

; <label>:46                                      ; preds = %39
  store i32 %tag, i32* %43, align 4, !dbg !215, !tbaa !172
  %47 = add nsw i32 %last.28, 1, !dbg !216
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !79, metadata !92), !dbg !169
  %48 = sext i32 %47 to i64, !dbg !217
  %49 = getelementptr inbounds i32* %list, i64 %48, !dbg !217
  store i32 %41, i32* %49, align 4, !dbg !218, !tbaa !172
  %50 = load i32* %30, align 4, !dbg !193, !tbaa !172
  %51 = add nsw i32 %50, 1, !dbg !219
  %52 = getelementptr inbounds i32* %dist, i64 %42, !dbg !220
  store i32 %51, i32* %52, align 4, !dbg !221, !tbaa !172
  br label %53, !dbg !222

; <label>:53                                      ; preds = %39, %46
  %last.3 = phi i32 [ %47, %46 ], [ %last.28, %39 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !209
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !84, metadata !92), !dbg !203
  %54 = sext i32 %36 to i64, !dbg !208
  %55 = icmp slt i64 %indvars.iv.next, %54, !dbg !208
  br i1 %55, label %39, label %._crit_edge, !dbg !209

._crit_edge:                                      ; preds = %53, %31
  %last.2.lcssa = phi i32 [ %last.110, %31 ], [ %last.3, %53 ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !192
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !82, metadata !92), !dbg !184
  %56 = load i32* %usize, align 4, !dbg !188, !tbaa !172
  %57 = sext i32 %56 to i64, !dbg !191
  %58 = icmp slt i64 %indvars.iv.next18, %57, !dbg !191
  br i1 %58, label %31, label %.loopexit, !dbg !192

; <label>:59                                      ; preds = %.loopexit
  ret i32 %last.1.lcssa, !dbg !223
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!88, !89, !90}
!llvm.ident = !{!91}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_pseudo.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !67}
!6 = !DISubprogram(name: "BPG_pseudoperipheralnode", scope: !1, file: !1, line: 16, type: !7, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BPG*, i32)* @BPG_pseudoperipheralnode, variables: !55)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !9}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "BPG", file: !12, line: 21, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../BPG.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BPG", file: !12, line: 22, size: 128, align: 64, elements: !14)
!14 = !{!15, !16, !17}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nX", scope: !13, file: !12, line: 23, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nY", scope: !13, file: !12, line: 24, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !13, file: !12, line: 25, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !20, line: 49, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !20, line: 50, size: 384, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !53, !54}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !20, line: 51, baseType: !9, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !21, file: !20, line: 52, baseType: !9, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !21, file: !20, line: 53, baseType: !9, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !21, file: !20, line: 54, baseType: !9, size: 32, align: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !21, file: !20, line: 55, baseType: !9, size: 32, align: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !21, file: !20, line: 56, baseType: !9, size: 32, align: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !21, file: !20, line: 57, baseType: !30, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !32, line: 55, baseType: !33)
!32 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !32, line: 79, size: 384, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !41, !43, !44}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 80, baseType: !9, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !33, file: !32, line: 81, baseType: !9, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !33, file: !32, line: 82, baseType: !9, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !33, file: !32, line: 83, baseType: !9, size: 32, align: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !33, file: !32, line: 84, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !33, file: !32, line: 85, baseType: !42, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !33, file: !32, line: 86, baseType: !9, size: 32, align: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !33, file: !32, line: 87, baseType: !45, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !32, line: 56, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !32, line: 102, size: 192, align: 64, elements: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !47, file: !32, line: 103, baseType: !9, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !47, file: !32, line: 104, baseType: !9, size: 32, align: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !47, file: !32, line: 105, baseType: !40, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !47, file: !32, line: 106, baseType: !45, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !21, file: !20, line: 58, baseType: !40, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !21, file: !20, line: 59, baseType: !30, size: 64, align: 64, offset: 320)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !6, file: !1, line: 17, type: !10)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 2, scope: !6, file: !1, line: 18, type: !9)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last", scope: !6, file: !1, line: 20, type: !9)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mate", scope: !6, file: !1, line: 20, type: !9)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldrad", scope: !6, file: !1, line: 20, type: !9)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rad", scope: !6, file: !1, line: 20, type: !9)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "root", scope: !6, file: !1, line: 20, type: !9)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tag", scope: !6, file: !1, line: 20, type: !9)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dist", scope: !6, file: !1, line: 21, type: !40)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !6, file: !1, line: 21, type: !40)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mark", scope: !6, file: !1, line: 21, type: !40)
!67 = !DISubprogram(name: "BPG_levelStructure", scope: !1, file: !1, line: 103, type: !68, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BPG*, i32, i32*, i32*, i32*, i32)* @BPG_levelStructure, variables: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{!9, !10, !9, !40, !40, !40, !9}
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !67, file: !1, line: 104, type: !10)
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 2, scope: !67, file: !1, line: 105, type: !9)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 3, scope: !67, file: !1, line: 106, type: !40)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dist", arg: 4, scope: !67, file: !1, line: 107, type: !40)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mark", arg: 5, scope: !67, file: !1, line: 108, type: !40)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tag", arg: 6, scope: !67, file: !1, line: 109, type: !9)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !67, file: !1, line: 111, type: !9)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jj", scope: !67, file: !1, line: 111, type: !9)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last", scope: !67, file: !1, line: 111, type: !9)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "now", scope: !67, file: !1, line: 111, type: !9)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !67, file: !1, line: 111, type: !9)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "usize", scope: !67, file: !1, line: 111, type: !9)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !67, file: !1, line: 111, type: !9)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsize", scope: !67, file: !1, line: 111, type: !9)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !67, file: !1, line: 111, type: !9)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uadj", scope: !67, file: !1, line: 112, type: !40)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vadj", scope: !67, file: !1, line: 112, type: !40)
!88 = !{i32 2, !"Dwarf Version", i32 2}
!89 = !{i32 2, !"Debug Info Version", i32 700000003}
!90 = !{i32 1, !"PIC Level", i32 2}
!91 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!92 = !DIExpression()
!93 = !DILocation(line: 17, column: 11, scope: !6)
!94 = !DILocation(line: 18, column: 10, scope: !6)
!95 = !DILocation(line: 27, column: 10, scope: !96)
!96 = distinct !DILexicalBlock(scope: !6, file: !1, line: 27, column: 6)
!97 = !DILocation(line: 27, column: 6, scope: !6)
!98 = !DILocation(line: 28, column: 12, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 27, column: 20)
!100 = !{!101, !101, i64 0}
!101 = !{!"any pointer", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !DILocation(line: 28, column: 4, scope: !99)
!105 = !DILocation(line: 30, column: 4, scope: !99)
!106 = !DILocation(line: 32, column: 11, scope: !107)
!107 = distinct !DILexicalBlock(scope: !6, file: !1, line: 32, column: 6)
!108 = !DILocation(line: 33, column: 11, scope: !109)
!109 = distinct !DILexicalBlock(scope: !107, file: !1, line: 32, column: 17)
!110 = !DILocation(line: 32, column: 6, scope: !6)
!111 = !DILocation(line: 35, column: 21, scope: !6)
!112 = !{!113, !114, i64 0}
!113 = !{!"_BPG", !114, i64 0, !114, i64 4, !101, i64 8}
!114 = !{!"int", !102, i64 0}
!115 = !DILocation(line: 35, column: 31, scope: !6)
!116 = !{!113, !114, i64 4}
!117 = !DILocation(line: 35, column: 24, scope: !6)
!118 = !DILocation(line: 35, column: 13, scope: !6)
!119 = !DILocation(line: 36, column: 8, scope: !6)
!120 = !DILocation(line: 21, column: 15, scope: !6)
!121 = !DILocation(line: 37, column: 20, scope: !6)
!122 = !DILocation(line: 37, column: 30, scope: !6)
!123 = !DILocation(line: 37, column: 23, scope: !6)
!124 = !DILocation(line: 37, column: 8, scope: !6)
!125 = !DILocation(line: 21, column: 8, scope: !6)
!126 = !DILocation(line: 38, column: 20, scope: !6)
!127 = !DILocation(line: 38, column: 30, scope: !6)
!128 = !DILocation(line: 38, column: 23, scope: !6)
!129 = !DILocation(line: 38, column: 8, scope: !6)
!130 = !DILocation(line: 21, column: 22, scope: !6)
!131 = !DILocation(line: 20, column: 19, scope: !6)
!132 = !DILocation(line: 20, column: 38, scope: !6)
!133 = !DILocation(line: 46, column: 8, scope: !6)
!134 = !DILocation(line: 20, column: 7, scope: !6)
!135 = !DILocation(line: 47, column: 8, scope: !6)
!136 = !DILocation(line: 48, column: 8, scope: !6)
!137 = !DILocation(line: 59, column: 16, scope: !6)
!138 = !DILocation(line: 59, column: 1, scope: !6)
!139 = !DILocation(line: 20, column: 32, scope: !6)
!140 = !DILocation(line: 62, column: 7, scope: !141)
!141 = distinct !DILexicalBlock(scope: !6, file: !1, line: 59, column: 24)
!142 = !DILocation(line: 63, column: 11, scope: !141)
!143 = !DILocation(line: 87, column: 1, scope: !6)
!144 = !DILocation(line: 88, column: 1, scope: !6)
!145 = !DILocation(line: 89, column: 1, scope: !6)
!146 = !DILocation(line: 91, column: 1, scope: !6)
!147 = !DILocation(line: 104, column: 11, scope: !67)
!148 = !DILocation(line: 105, column: 10, scope: !67)
!149 = !DILocation(line: 106, column: 10, scope: !67)
!150 = !DILocation(line: 107, column: 10, scope: !67)
!151 = !DILocation(line: 108, column: 10, scope: !67)
!152 = !DILocation(line: 109, column: 10, scope: !67)
!153 = !DILocation(line: 118, column: 10, scope: !154)
!154 = distinct !DILexicalBlock(scope: !67, file: !1, line: 118, column: 6)
!155 = !DILocation(line: 118, column: 26, scope: !154)
!156 = !DILocation(line: 118, column: 18, scope: !154)
!157 = !DILocation(line: 118, column: 46, scope: !154)
!158 = !DILocation(line: 118, column: 56, scope: !154)
!159 = !DILocation(line: 118, column: 49, scope: !154)
!160 = !DILocation(line: 118, column: 38, scope: !154)
!161 = !DILocation(line: 119, column: 12, scope: !154)
!162 = !DILocation(line: 119, column: 4, scope: !154)
!163 = !DILocation(line: 119, column: 28, scope: !154)
!164 = !DILocation(line: 119, column: 44, scope: !154)
!165 = !DILocation(line: 120, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !154, file: !1, line: 119, column: 54)
!167 = !DILocation(line: 120, column: 4, scope: !166)
!168 = !DILocation(line: 123, column: 4, scope: !166)
!169 = !DILocation(line: 111, column: 15, scope: !67)
!170 = !DILocation(line: 111, column: 21, scope: !67)
!171 = !DILocation(line: 133, column: 9, scope: !67)
!172 = !{!114, !114, i64 0}
!173 = !DILocation(line: 134, column: 1, scope: !67)
!174 = !DILocation(line: 134, column: 12, scope: !67)
!175 = !DILocation(line: 135, column: 1, scope: !67)
!176 = !DILocation(line: 135, column: 12, scope: !67)
!177 = !DILocation(line: 142, column: 26, scope: !178)
!178 = distinct !DILexicalBlock(scope: !67, file: !1, line: 136, column: 23)
!179 = !DILocation(line: 136, column: 1, scope: !67)
!180 = !DILocation(line: 136, column: 13, scope: !67)
!181 = !DILocation(line: 137, column: 8, scope: !178)
!182 = !DILocation(line: 111, column: 26, scope: !67)
!183 = !{!113, !101, i64 8}
!184 = !DILocation(line: 111, column: 29, scope: !67)
!185 = !DILocation(line: 112, column: 8, scope: !67)
!186 = !DILocation(line: 142, column: 4, scope: !178)
!187 = !DILocation(line: 111, column: 7, scope: !67)
!188 = !DILocation(line: 143, column: 24, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 143, column: 4)
!190 = distinct !DILexicalBlock(scope: !178, file: !1, line: 143, column: 4)
!191 = !DILocation(line: 143, column: 22, scope: !189)
!192 = !DILocation(line: 143, column: 4, scope: !190)
!193 = !DILocation(line: 158, column: 23, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 151, column: 32)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 151, column: 15)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 146, column: 42)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 146, column: 7)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 146, column: 7)
!199 = distinct !DILexicalBlock(scope: !189, file: !1, line: 143, column: 39)
!200 = !DILocation(line: 144, column: 11, scope: !199)
!201 = !DILocation(line: 111, column: 36, scope: !67)
!202 = !DILocation(line: 145, column: 29, scope: !199)
!203 = !DILocation(line: 111, column: 39, scope: !67)
!204 = !DILocation(line: 112, column: 15, scope: !67)
!205 = !DILocation(line: 145, column: 7, scope: !199)
!206 = !DILocation(line: 111, column: 11, scope: !67)
!207 = !DILocation(line: 146, column: 27, scope: !197)
!208 = !DILocation(line: 146, column: 25, scope: !197)
!209 = !DILocation(line: 146, column: 7, scope: !198)
!210 = !DILocation(line: 147, column: 14, scope: !196)
!211 = !DILocation(line: 111, column: 46, scope: !67)
!212 = !DILocation(line: 151, column: 15, scope: !195)
!213 = !DILocation(line: 151, column: 23, scope: !195)
!214 = !DILocation(line: 151, column: 15, scope: !196)
!215 = !DILocation(line: 156, column: 21, scope: !194)
!216 = !DILocation(line: 157, column: 18, scope: !194)
!217 = !DILocation(line: 157, column: 13, scope: !194)
!218 = !DILocation(line: 157, column: 26, scope: !194)
!219 = !DILocation(line: 158, column: 31, scope: !194)
!220 = !DILocation(line: 158, column: 13, scope: !194)
!221 = !DILocation(line: 158, column: 21, scope: !194)
!222 = !DILocation(line: 159, column: 10, scope: !194)
!223 = !DILocation(line: 164, column: 1, scope: !67)
