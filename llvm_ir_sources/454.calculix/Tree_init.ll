; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in Tree_init1(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Tree_init2(%p,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Tree_init3(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Tree_setFchSibRoot(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Tree_setRoot(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_init1(%struct._Tree* %tree, i32 %size) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !22, metadata !64), !dbg !65
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !23, metadata !64), !dbg !66
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !67
  %2 = icmp slt i32 %size, 0, !dbg !69
  %or.cond = or i1 %1, %2, !dbg !70
  br i1 %or.cond, label %3, label %6, !dbg !70

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !71, !tbaa !73
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, i32 %size) #5, !dbg !77
  tail call void @exit(i32 -1) #6, !dbg !78
  unreachable, !dbg !78

; <label>:6                                       ; preds = %0
  tail call void @Tree_clearData(%struct._Tree* %tree) #5, !dbg !79
  %7 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !80
  store i32 %size, i32* %7, align 4, !dbg !81, !tbaa !82
  %8 = icmp sgt i32 %size, 0, !dbg !85
  br i1 %8, label %9, label %16, !dbg !87

; <label>:9                                       ; preds = %6
  %10 = tail call i32* @IVinit(i32 %size, i32 -1) #5, !dbg !88
  %11 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !90
  store i32* %10, i32** %11, align 8, !dbg !91, !tbaa !92
  %12 = tail call i32* @IVinit(i32 %size, i32 -1) #5, !dbg !93
  %13 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !94
  store i32* %12, i32** %13, align 8, !dbg !95, !tbaa !96
  %14 = tail call i32* @IVinit(i32 %size, i32 -1) #5, !dbg !97
  %15 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !98
  store i32* %14, i32** %15, align 8, !dbg !99, !tbaa !100
  br label %16, !dbg !101

; <label>:16                                      ; preds = %9, %6
  ret void, !dbg !102
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Tree_clearData(%struct._Tree*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_init2(%struct._Tree* %tree, i32 %size, i32* %par) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !28, metadata !64), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !29, metadata !64), !dbg !104
  tail call void @llvm.dbg.value(metadata i32* %par, i64 0, metadata !30, metadata !64), !dbg !105
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !106
  %2 = icmp slt i32 %size, 1, !dbg !108
  %or.cond = or i1 %1, %2, !dbg !109
  %3 = icmp eq i32* %par, null, !dbg !110
  %or.cond3 = or i1 %or.cond, %3, !dbg !109
  br i1 %or.cond3, label %4, label %7, !dbg !109

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !111, !tbaa !73
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, i32 %size, i32* %par) #5, !dbg !113
  tail call void @exit(i32 -1) #6, !dbg !114
  unreachable, !dbg !114

; <label>:7                                       ; preds = %0
  tail call void @Tree_init1(%struct._Tree* %tree, i32 %size) #7, !dbg !115
  %8 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !116
  %9 = load i32** %8, align 8, !dbg !116, !tbaa !92
  tail call void @IVcopy(i32 %size, i32* %9, i32* %par) #5, !dbg !117
  tail call void @Tree_setFchSibRoot(%struct._Tree* %tree) #7, !dbg !118
  ret void, !dbg !119
}

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_setFchSibRoot(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !44, metadata !64), !dbg !120
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !121
  br i1 %1, label %2, label %5, !dbg !123

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !124, !tbaa !73
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._Tree* null) #5, !dbg !126
  tail call void @exit(i32 -1) #6, !dbg !127
  unreachable, !dbg !127

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !128
  %7 = load i32* %6, align 4, !dbg !128, !tbaa !82
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !45, metadata !64), !dbg !130
  %8 = icmp slt i32 %7, 1, !dbg !131
  br i1 %8, label %32, label %.lr.ph.lr.ph, !dbg !132

.lr.ph.lr.ph:                                     ; preds = %5
  %9 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !133
  %10 = load i32** %9, align 8, !dbg !133, !tbaa !92
  tail call void @llvm.dbg.value(metadata i32* %10, i64 0, metadata !50, metadata !64), !dbg !134
  %11 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !135
  %12 = load i32** %11, align 8, !dbg !135, !tbaa !96
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !49, metadata !64), !dbg !136
  %13 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !137
  %14 = load i32** %13, align 8, !dbg !137, !tbaa !100
  tail call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !51, metadata !64), !dbg !138
  tail call void @IVfill(i32 %7, i32* %12, i32 -1) #5, !dbg !139
  %15 = load i32** %13, align 8, !dbg !140, !tbaa !100
  tail call void @IVfill(i32 %7, i32* %15, i32 -1) #5, !dbg !141
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !46, metadata !64), !dbg !142
  br label %.lr.ph, !dbg !143

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %u.027.in = phi i32 [ %7, %.lr.ph.lr.ph ], [ %u.03, %.outer ]
  %root.0.ph6 = phi i32 [ -1, %.lr.ph.lr.ph ], [ %u.03, %.outer ]
  %16 = sext i32 %u.027.in to i64
  br label %17, !dbg !143

; <label>:17                                      ; preds = %.lr.ph, %22
  %indvars.iv = phi i64 [ %16, %.lr.ph ], [ %indvars.iv.next, %22 ]
  %u.03.in = phi i32 [ %u.027.in, %.lr.ph ], [ %u.03, %22 ]
  %u.03 = add nsw i32 %u.03.in, -1, !dbg !145
  %18 = sext i32 %u.03 to i64, !dbg !146
  %19 = getelementptr inbounds i32* %10, i64 %18, !dbg !146
  %20 = load i32* %19, align 4, !dbg !146, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !48, metadata !64), !dbg !151
  %21 = icmp eq i32 %20, -1, !dbg !152
  br i1 %21, label %.outer, label %22, !dbg !153

; <label>:22                                      ; preds = %17
  %23 = sext i32 %20 to i64, !dbg !154
  %24 = getelementptr inbounds i32* %12, i64 %23, !dbg !154
  %25 = load i32* %24, align 4, !dbg !154, !tbaa !150
  %26 = getelementptr inbounds i32* %14, i64 %18, !dbg !156
  store i32 %25, i32* %26, align 4, !dbg !157, !tbaa !150
  store i32 %u.03, i32* %24, align 4, !dbg !158, !tbaa !150
  %27 = icmp sgt i64 %indvars.iv, 1, !dbg !159
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !143
  br i1 %27, label %17, label %.outer._crit_edge, !dbg !143

.outer:                                           ; preds = %17
  %28 = trunc i64 %indvars.iv to i32, !dbg !160
  %29 = getelementptr inbounds i32* %14, i64 %18, !dbg !160
  store i32 %root.0.ph6, i32* %29, align 4, !dbg !162, !tbaa !150
  %30 = icmp sgt i32 %28, 1, !dbg !159
  br i1 %30, label %.lr.ph, label %.outer._crit_edge, !dbg !143

.outer._crit_edge:                                ; preds = %.outer, %22
  %root.0.ph.lcssa = phi i32 [ %root.0.ph6, %22 ], [ %u.03, %.outer ]
  %31 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !163
  store i32 %root.0.ph.lcssa, i32* %31, align 4, !dbg !164, !tbaa !165
  br label %32, !dbg !166

; <label>:32                                      ; preds = %5, %.outer._crit_edge
  ret void, !dbg !167
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_init3(%struct._Tree* %tree, i32 %size, i32* %par, i32* %fch, i32* %sib) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !35, metadata !64), !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !36, metadata !64), !dbg !169
  tail call void @llvm.dbg.value(metadata i32* %par, i64 0, metadata !37, metadata !64), !dbg !170
  tail call void @llvm.dbg.value(metadata i32* %fch, i64 0, metadata !38, metadata !64), !dbg !171
  tail call void @llvm.dbg.value(metadata i32* %sib, i64 0, metadata !39, metadata !64), !dbg !172
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !173
  %2 = icmp slt i32 %size, 1, !dbg !175
  %or.cond = or i1 %1, %2, !dbg !176
  %3 = icmp eq i32* %par, null, !dbg !177
  %or.cond3 = or i1 %or.cond, %3, !dbg !176
  %4 = icmp eq i32* %fch, null, !dbg !178
  %or.cond5 = or i1 %or.cond3, %4, !dbg !176
  %5 = icmp eq i32* %sib, null, !dbg !179
  %or.cond7 = or i1 %or.cond5, %5, !dbg !176
  br i1 %or.cond7, label %6, label %9, !dbg !176

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !180, !tbaa !73
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i32 %size, i32* %par, i32* %fch, i32* %sib) #5, !dbg !182
  tail call void @exit(i32 -1) #6, !dbg !183
  unreachable, !dbg !183

; <label>:9                                       ; preds = %0
  tail call void @Tree_init1(%struct._Tree* %tree, i32 %size) #7, !dbg !184
  %10 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !185
  %11 = load i32** %10, align 8, !dbg !185, !tbaa !92
  tail call void @IVcopy(i32 %size, i32* %11, i32* %par) #5, !dbg !186
  %12 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !187
  %13 = load i32** %12, align 8, !dbg !187, !tbaa !96
  tail call void @IVcopy(i32 %size, i32* %13, i32* %fch) #5, !dbg !188
  %14 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !189
  %15 = load i32** %14, align 8, !dbg !189, !tbaa !100
  tail call void @IVcopy(i32 %size, i32* %15, i32* %sib) #5, !dbg !190
  tail call void @Tree_setRoot(%struct._Tree* %tree) #7, !dbg !191
  ret void, !dbg !192
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_setRoot(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !54, metadata !64), !dbg !193
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !194
  br i1 %1, label %6, label %2, !dbg !196

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !197
  %4 = load i32* %3, align 4, !dbg !197, !tbaa !82
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !55, metadata !64), !dbg !198
  %5 = icmp slt i32 %4, 1, !dbg !199
  br i1 %5, label %6, label %.lr.ph, !dbg !200

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !201, !tbaa !73
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !203
  tail call void @exit(i32 -1) #6, !dbg !204
  unreachable, !dbg !204

.lr.ph:                                           ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !55, metadata !64), !dbg !198
  %9 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !205
  %10 = load i32** %9, align 8, !dbg !205, !tbaa !92
  tail call void @llvm.dbg.value(metadata i32* %10, i64 0, metadata !58, metadata !64), !dbg !206
  %11 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !207
  %12 = load i32** %11, align 8, !dbg !207, !tbaa !100
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !59, metadata !64), !dbg !208
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !56, metadata !64), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !64), !dbg !210
  %13 = add i32 %4, -1, !dbg !211
  br label %14, !dbg !211

; <label>:14                                      ; preds = %21, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %21 ]
  %root.02 = phi i32 [ -1, %.lr.ph ], [ %root.1, %21 ]
  %15 = getelementptr inbounds i32* %10, i64 %indvars.iv, !dbg !213
  %16 = load i32* %15, align 4, !dbg !213, !tbaa !150
  %17 = icmp eq i32 %16, -1, !dbg !217
  br i1 %17, label %18, label %._crit_edge3, !dbg !218

._crit_edge3:                                     ; preds = %14
  %.pre = trunc i64 %indvars.iv to i32, !dbg !211
  br label %21, !dbg !218

; <label>:18                                      ; preds = %14
  %19 = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !219
  store i32 %root.02, i32* %19, align 4, !dbg !221, !tbaa !150
  %20 = trunc i64 %indvars.iv to i32, !dbg !222
  br label %21, !dbg !222

; <label>:21                                      ; preds = %._crit_edge3, %18
  %lftr.wideiv.pre-phi = phi i32 [ %.pre, %._crit_edge3 ], [ %20, %18 ], !dbg !211
  %root.1 = phi i32 [ %root.02, %._crit_edge3 ], [ %20, %18 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !211
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %13, !dbg !211
  br i1 %exitcond, label %._crit_edge, label %14, !dbg !211

._crit_edge:                                      ; preds = %21
  %22 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !223
  store i32 %root.1, i32* %22, align 4, !dbg !224, !tbaa !165
  ret void, !dbg !225
}

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

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
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !24, !31, !40, !52}
!6 = !DISubprogram(name: "Tree_init1", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*, i32)* @Tree_init1, variables: !21)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !11, line: 15, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !11, line: 16, size: 256, align: 64, elements: !13)
!13 = !{!14, !16, !17, !19, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !12, file: !11, line: 17, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !12, file: !11, line: 18, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !12, file: !11, line: 19, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !12, file: !11, line: 20, baseType: !18, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !12, file: !11, line: 21, baseType: !18, size: 64, align: 64, offset: 192)
!21 = !{!22, !23}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !6, file: !1, line: 16, type: !15)
!24 = !DISubprogram(name: "Tree_init2", scope: !1, file: !1, line: 57, type: !25, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*, i32, i32*)* @Tree_init2, variables: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !9, !15, !18}
!27 = !{!28, !29, !30}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !24, file: !1, line: 58, type: !9)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !24, file: !1, line: 59, type: !15)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "par", arg: 3, scope: !24, file: !1, line: 60, type: !18)
!31 = !DISubprogram(name: "Tree_init3", scope: !1, file: !1, line: 102, type: !32, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*, i32, i32*, i32*, i32*)* @Tree_init3, variables: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !9, !15, !18, !18, !18}
!34 = !{!35, !36, !37, !38, !39}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !31, file: !1, line: 103, type: !9)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !31, file: !1, line: 104, type: !15)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "par", arg: 3, scope: !31, file: !1, line: 105, type: !18)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fch", arg: 4, scope: !31, file: !1, line: 106, type: !18)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sib", arg: 5, scope: !31, file: !1, line: 107, type: !18)
!40 = !DISubprogram(name: "Tree_setFchSibRoot", scope: !1, file: !1, line: 152, type: !41, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*)* @Tree_setFchSibRoot, variables: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !9}
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !40, file: !1, line: 153, type: !9)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !40, file: !1, line: 155, type: !15)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "root", scope: !40, file: !1, line: 155, type: !15)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !40, file: !1, line: 155, type: !15)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !40, file: !1, line: 155, type: !15)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fch", scope: !40, file: !1, line: 156, type: !18)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "par", scope: !40, file: !1, line: 156, type: !18)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sib", scope: !40, file: !1, line: 156, type: !18)
!52 = !DISubprogram(name: "Tree_setRoot", scope: !1, file: !1, line: 210, type: !41, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*)* @Tree_setRoot, variables: !53)
!53 = !{!54, !55, !56, !57, !58, !59}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !52, file: !1, line: 211, type: !9)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !52, file: !1, line: 213, type: !15)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "root", scope: !52, file: !1, line: 213, type: !15)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !52, file: !1, line: 213, type: !15)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "par", scope: !52, file: !1, line: 214, type: !18)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sib", scope: !52, file: !1, line: 214, type: !18)
!60 = !{i32 2, !"Dwarf Version", i32 2}
!61 = !{i32 2, !"Debug Info Version", i32 700000003}
!62 = !{i32 1, !"PIC Level", i32 2}
!63 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!64 = !DIExpression()
!65 = !DILocation(line: 15, column: 12, scope: !6)
!66 = !DILocation(line: 16, column: 11, scope: !6)
!67 = !DILocation(line: 23, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !6, file: !1, line: 23, column: 6)
!69 = !DILocation(line: 23, column: 27, scope: !68)
!70 = !DILocation(line: 23, column: 19, scope: !68)
!71 = !DILocation(line: 24, column: 12, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 23, column: 33)
!73 = !{!74, !74, i64 0}
!74 = !{!"any pointer", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C/C++ TBAA"}
!77 = !DILocation(line: 24, column: 4, scope: !72)
!78 = !DILocation(line: 26, column: 4, scope: !72)
!79 = !DILocation(line: 33, column: 1, scope: !6)
!80 = !DILocation(line: 39, column: 7, scope: !6)
!81 = !DILocation(line: 39, column: 11, scope: !6)
!82 = !{!83, !84, i64 0}
!83 = !{!"_Tree", !84, i64 0, !84, i64 4, !74, i64 8, !74, i64 16, !74, i64 24}
!84 = !{!"int", !75, i64 0}
!85 = !DILocation(line: 40, column: 11, scope: !86)
!86 = distinct !DILexicalBlock(scope: !6, file: !1, line: 40, column: 6)
!87 = !DILocation(line: 40, column: 6, scope: !6)
!88 = !DILocation(line: 41, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 40, column: 17)
!90 = !DILocation(line: 41, column: 9, scope: !89)
!91 = !DILocation(line: 41, column: 13, scope: !89)
!92 = !{!83, !74, i64 8}
!93 = !DILocation(line: 42, column: 15, scope: !89)
!94 = !DILocation(line: 42, column: 9, scope: !89)
!95 = !DILocation(line: 42, column: 13, scope: !89)
!96 = !{!83, !74, i64 16}
!97 = !DILocation(line: 43, column: 15, scope: !89)
!98 = !DILocation(line: 43, column: 9, scope: !89)
!99 = !DILocation(line: 43, column: 13, scope: !89)
!100 = !{!83, !74, i64 24}
!101 = !DILocation(line: 44, column: 1, scope: !89)
!102 = !DILocation(line: 46, column: 1, scope: !6)
!103 = !DILocation(line: 58, column: 12, scope: !24)
!104 = !DILocation(line: 59, column: 11, scope: !24)
!105 = !DILocation(line: 60, column: 11, scope: !24)
!106 = !DILocation(line: 67, column: 11, scope: !107)
!107 = distinct !DILexicalBlock(scope: !24, file: !1, line: 67, column: 6)
!108 = !DILocation(line: 67, column: 27, scope: !107)
!109 = !DILocation(line: 67, column: 19, scope: !107)
!110 = !DILocation(line: 67, column: 39, scope: !107)
!111 = !DILocation(line: 68, column: 12, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 67, column: 49)
!113 = !DILocation(line: 68, column: 4, scope: !112)
!114 = !DILocation(line: 70, column: 4, scope: !112)
!115 = !DILocation(line: 77, column: 1, scope: !24)
!116 = !DILocation(line: 83, column: 20, scope: !24)
!117 = !DILocation(line: 83, column: 1, scope: !24)
!118 = !DILocation(line: 89, column: 1, scope: !24)
!119 = !DILocation(line: 91, column: 1, scope: !24)
!120 = !DILocation(line: 153, column: 12, scope: !40)
!121 = !DILocation(line: 163, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !40, file: !1, line: 163, column: 7)
!123 = !DILocation(line: 163, column: 7, scope: !40)
!124 = !DILocation(line: 164, column: 12, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 163, column: 22)
!126 = !DILocation(line: 164, column: 4, scope: !125)
!127 = !DILocation(line: 166, column: 4, scope: !125)
!128 = !DILocation(line: 168, column: 18, scope: !129)
!129 = distinct !DILexicalBlock(scope: !40, file: !1, line: 168, column: 7)
!130 = !DILocation(line: 155, column: 7, scope: !40)
!131 = !DILocation(line: 168, column: 21, scope: !129)
!132 = !DILocation(line: 168, column: 7, scope: !40)
!133 = !DILocation(line: 171, column: 13, scope: !40)
!134 = !DILocation(line: 156, column: 14, scope: !40)
!135 = !DILocation(line: 172, column: 13, scope: !40)
!136 = !DILocation(line: 156, column: 8, scope: !40)
!137 = !DILocation(line: 173, column: 13, scope: !40)
!138 = !DILocation(line: 156, column: 20, scope: !40)
!139 = !DILocation(line: 179, column: 1, scope: !40)
!140 = !DILocation(line: 180, column: 17, scope: !40)
!141 = !DILocation(line: 180, column: 1, scope: !40)
!142 = !DILocation(line: 155, column: 10, scope: !40)
!143 = !DILocation(line: 188, column: 1, scope: !144)
!144 = distinct !DILexicalBlock(scope: !40, file: !1, line: 188, column: 1)
!145 = !DILocation(line: 188, column: 13, scope: !144)
!146 = !DILocation(line: 189, column: 14, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 189, column: 9)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 188, column: 34)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 188, column: 1)
!150 = !{!84, !84, i64 0}
!151 = !DILocation(line: 155, column: 19, scope: !40)
!152 = !DILocation(line: 189, column: 22, scope: !147)
!153 = !DILocation(line: 189, column: 9, scope: !148)
!154 = !DILocation(line: 190, column: 16, scope: !155)
!155 = distinct !DILexicalBlock(scope: !147, file: !1, line: 189, column: 30)
!156 = !DILocation(line: 190, column: 7, scope: !155)
!157 = !DILocation(line: 190, column: 14, scope: !155)
!158 = !DILocation(line: 191, column: 14, scope: !155)
!159 = !DILocation(line: 188, column: 21, scope: !149)
!160 = !DILocation(line: 193, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !147, file: !1, line: 192, column: 11)
!162 = !DILocation(line: 193, column: 14, scope: !161)
!163 = !DILocation(line: 197, column: 7, scope: !40)
!164 = !DILocation(line: 197, column: 12, scope: !40)
!165 = !{!83, !84, i64 4}
!166 = !DILocation(line: 199, column: 1, scope: !40)
!167 = !DILocation(line: 199, column: 10, scope: !40)
!168 = !DILocation(line: 103, column: 12, scope: !31)
!169 = !DILocation(line: 104, column: 11, scope: !31)
!170 = !DILocation(line: 105, column: 11, scope: !31)
!171 = !DILocation(line: 106, column: 11, scope: !31)
!172 = !DILocation(line: 107, column: 11, scope: !31)
!173 = !DILocation(line: 114, column: 12, scope: !174)
!174 = distinct !DILexicalBlock(scope: !31, file: !1, line: 114, column: 7)
!175 = !DILocation(line: 114, column: 28, scope: !174)
!176 = !DILocation(line: 114, column: 20, scope: !174)
!177 = !DILocation(line: 115, column: 11, scope: !174)
!178 = !DILocation(line: 115, column: 26, scope: !174)
!179 = !DILocation(line: 115, column: 41, scope: !174)
!180 = !DILocation(line: 116, column: 12, scope: !181)
!181 = distinct !DILexicalBlock(scope: !174, file: !1, line: 115, column: 51)
!182 = !DILocation(line: 116, column: 4, scope: !181)
!183 = !DILocation(line: 118, column: 4, scope: !181)
!184 = !DILocation(line: 125, column: 1, scope: !31)
!185 = !DILocation(line: 131, column: 20, scope: !31)
!186 = !DILocation(line: 131, column: 1, scope: !31)
!187 = !DILocation(line: 132, column: 20, scope: !31)
!188 = !DILocation(line: 132, column: 1, scope: !31)
!189 = !DILocation(line: 133, column: 20, scope: !31)
!190 = !DILocation(line: 133, column: 1, scope: !31)
!191 = !DILocation(line: 139, column: 1, scope: !31)
!192 = !DILocation(line: 141, column: 1, scope: !31)
!193 = !DILocation(line: 211, column: 12, scope: !52)
!194 = !DILocation(line: 220, column: 12, scope: !195)
!195 = distinct !DILexicalBlock(scope: !52, file: !1, line: 220, column: 7)
!196 = !DILocation(line: 220, column: 20, scope: !195)
!197 = !DILocation(line: 220, column: 34, scope: !195)
!198 = !DILocation(line: 213, column: 7, scope: !52)
!199 = !DILocation(line: 220, column: 37, scope: !195)
!200 = !DILocation(line: 220, column: 7, scope: !52)
!201 = !DILocation(line: 221, column: 12, scope: !202)
!202 = distinct !DILexicalBlock(scope: !195, file: !1, line: 220, column: 43)
!203 = !DILocation(line: 221, column: 4, scope: !202)
!204 = !DILocation(line: 223, column: 4, scope: !202)
!205 = !DILocation(line: 226, column: 14, scope: !52)
!206 = !DILocation(line: 214, column: 8, scope: !52)
!207 = !DILocation(line: 227, column: 14, scope: !52)
!208 = !DILocation(line: 214, column: 14, scope: !52)
!209 = !DILocation(line: 213, column: 10, scope: !52)
!210 = !DILocation(line: 213, column: 16, scope: !52)
!211 = !DILocation(line: 234, column: 1, scope: !212)
!212 = distinct !DILexicalBlock(scope: !52, file: !1, line: 234, column: 1)
!213 = !DILocation(line: 235, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 235, column: 9)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 234, column: 29)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 234, column: 1)
!217 = !DILocation(line: 235, column: 16, scope: !214)
!218 = !DILocation(line: 235, column: 9, scope: !215)
!219 = !DILocation(line: 236, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !1, line: 235, column: 24)
!221 = !DILocation(line: 236, column: 14, scope: !220)
!222 = !DILocation(line: 238, column: 4, scope: !220)
!223 = !DILocation(line: 240, column: 7, scope: !52)
!224 = !DILocation(line: 240, column: 12, scope: !52)
!225 = !DILocation(line: 242, column: 1, scope: !52)
