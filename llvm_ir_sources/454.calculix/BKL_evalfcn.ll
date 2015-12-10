; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in BKL_evalfcn(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in BKL_evalGain(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define float @BKL_evalfcn(%struct._BKL* %bkl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !79, metadata !116), !dbg !117
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !118
  br i1 %1, label %2, label %5, !dbg !120

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !121, !tbaa !123
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._BKL* null) #5, !dbg !127
  tail call void @exit(i32 -1) #6, !dbg !128
  unreachable, !dbg !128

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1, !dbg !129
  %7 = load i32* %6, align 4, !dbg !129, !tbaa !131
  %8 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2, !dbg !133
  %9 = load i32* %8, align 4, !dbg !133, !tbaa !131
  %10 = icmp sgt i32 %7, %9, !dbg !134
  %.1 = select i1 %10, i32 %9, i32 %7
  %11 = icmp eq i32 %.1, 0, !dbg !135
  br i1 %11, label %12, label %17, !dbg !137

; <label>:12                                      ; preds = %5
  %13 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4, !dbg !138
  %14 = load i32* %13, align 4, !dbg !138, !tbaa !140
  %15 = sitofp i32 %14 to float, !dbg !143
  %16 = fmul float %15, %15, !dbg !144
  tail call void @llvm.dbg.value(metadata float %16, i64 0, metadata !80, metadata !116), !dbg !145
  br label %31, !dbg !146

; <label>:17                                      ; preds = %5
  %. = select i1 %10, i32 %7, i32 %9
  %18 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 0, !dbg !147
  %19 = load i32* %18, align 4, !dbg !147, !tbaa !131
  %20 = sitofp i32 %19 to double, !dbg !147
  %21 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13, !dbg !149
  %22 = load float* %21, align 4, !dbg !149, !tbaa !150
  %23 = sitofp i32 %. to float, !dbg !151
  %24 = fmul float %23, %22, !dbg !152
  %25 = sitofp i32 %.1 to float, !dbg !153
  %26 = fdiv float %24, %25, !dbg !154
  %27 = fpext float %26 to double, !dbg !155
  %28 = fadd double %27, 1.000000e+00, !dbg !156
  %29 = fmul double %20, %28, !dbg !157
  %30 = fptrunc double %29 to float, !dbg !147
  tail call void @llvm.dbg.value(metadata float %30, i64 0, metadata !80, metadata !116), !dbg !145
  br label %31

; <label>:31                                      ; preds = %17, %12
  %cost.0 = phi float [ %16, %12 ], [ %30, %17 ]
  ret float %cost.0, !dbg !158
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define float @BKL_eval(%struct._BKL* %bkl, i32 %Sweight, i32 %Bweight, i32 %Wweight) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !87, metadata !116), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %Sweight, i64 0, metadata !88, metadata !116), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 %Bweight, i64 0, metadata !89, metadata !116), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %Wweight, i64 0, metadata !90, metadata !116), !dbg !162
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !163
  br i1 %1, label %2, label %5, !dbg !165

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !166, !tbaa !123
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._BKL* null) #5, !dbg !168
  tail call void @exit(i32 -1) #6, !dbg !169
  unreachable, !dbg !169

; <label>:5                                       ; preds = %0
  %6 = icmp sgt i32 %Bweight, %Wweight, !dbg !170
  %Wweight.Bweight = select i1 %6, i32 %Wweight, i32 %Bweight
  %7 = icmp eq i32 %Wweight.Bweight, 0, !dbg !172
  br i1 %7, label %8, label %13, !dbg !174

; <label>:8                                       ; preds = %5
  %9 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4, !dbg !175
  %10 = load i32* %9, align 4, !dbg !175, !tbaa !140
  %11 = sitofp i32 %10 to float, !dbg !177
  %12 = fmul float %11, %11, !dbg !178
  tail call void @llvm.dbg.value(metadata float %12, i64 0, metadata !91, metadata !116), !dbg !179
  br label %25, !dbg !180

; <label>:13                                      ; preds = %5
  %Bweight.Wweight = select i1 %6, i32 %Bweight, i32 %Wweight
  %14 = sitofp i32 %Sweight to double, !dbg !181
  %15 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13, !dbg !183
  %16 = load float* %15, align 4, !dbg !183, !tbaa !150
  %17 = sitofp i32 %Bweight.Wweight to float, !dbg !184
  %18 = fmul float %17, %16, !dbg !185
  %19 = sitofp i32 %Wweight.Bweight to float, !dbg !186
  %20 = fdiv float %18, %19, !dbg !187
  %21 = fpext float %20 to double, !dbg !188
  %22 = fadd double %21, 1.000000e+00, !dbg !189
  %23 = fmul double %14, %22, !dbg !190
  %24 = fptrunc double %23 to float, !dbg !181
  tail call void @llvm.dbg.value(metadata float %24, i64 0, metadata !91, metadata !116), !dbg !179
  br label %25

; <label>:25                                      ; preds = %13, %8
  %cost.0 = phi float [ %12, %8 ], [ %24, %13 ]
  ret float %cost.0, !dbg !191
}

; Function Attrs: nounwind optsize ssp uwtable
define void @BKL_evalgain(%struct._BKL* %bkl, i32 %dom, i32* %pdeltaS, i32* %pdeltaB, i32* %pdeltaW) #0 {
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  %stats = alloca [3 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !98, metadata !116), !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %dom, i64 0, metadata !99, metadata !116), !dbg !193
  tail call void @llvm.dbg.value(metadata i32* %pdeltaS, i64 0, metadata !100, metadata !116), !dbg !194
  tail call void @llvm.dbg.value(metadata i32* %pdeltaB, i64 0, metadata !101, metadata !116), !dbg !195
  tail call void @llvm.dbg.value(metadata i32* %pdeltaW, i64 0, metadata !102, metadata !116), !dbg !196
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %stats, metadata !111, metadata !116), !dbg !197
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !198
  %2 = icmp slt i32 %dom, 0, !dbg !200
  %or.cond = or i1 %1, %2, !dbg !201
  br i1 %or.cond, label %10, label %3, !dbg !201

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !202
  %5 = load i32* %4, align 4, !dbg !202, !tbaa !203
  %6 = icmp sle i32 %5, %dom, !dbg !204
  %7 = icmp eq i32* %pdeltaS, null, !dbg !205
  %or.cond3 = or i1 %7, %6, !dbg !206
  %8 = icmp eq i32* %pdeltaB, null, !dbg !207
  %or.cond5 = or i1 %8, %or.cond3, !dbg !206
  %9 = icmp eq i32* %pdeltaW, null, !dbg !208
  %or.cond7 = or i1 %9, %or.cond5, !dbg !206
  br i1 %or.cond7, label %10, label %13, !dbg !206

; <label>:10                                      ; preds = %3, %0
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !209, !tbaa !123
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._BKL* %bkl, i32 %dom, i32* %pdeltaS, i32* %pdeltaB, i32* %pdeltaW) #5, !dbg !211
  tail call void @exit(i32 -1) #6, !dbg !212
  unreachable, !dbg !212

; <label>:13                                      ; preds = %3
  %14 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !213
  %15 = load i32** %14, align 8, !dbg !213, !tbaa !214
  tail call void @llvm.dbg.value(metadata i32* %15, i64 0, metadata !109, metadata !116), !dbg !215
  %16 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !216
  %17 = load i32** %16, align 8, !dbg !216, !tbaa !217
  tail call void @llvm.dbg.value(metadata i32* %17, i64 0, metadata !110, metadata !116), !dbg !218
  %18 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 2, !dbg !219
  store i32 0, i32* %18, align 4, !dbg !220, !tbaa !131
  %19 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 1, !dbg !221
  store i32 0, i32* %19, align 4, !dbg !222, !tbaa !131
  %20 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 0, !dbg !223
  store i32 0, i32* %20, align 4, !dbg !224, !tbaa !131
  %21 = sext i32 %dom to i64, !dbg !225
  %22 = getelementptr inbounds i32* %15, i64 %21, !dbg !225
  %23 = load i32* %22, align 4, !dbg !225, !tbaa !131
  %24 = icmp eq i32 %23, 1, !dbg !227
  %25 = getelementptr inbounds i32* %17, i64 %21, !dbg !228
  %26 = load i32* %25, align 4, !dbg !228, !tbaa !131
  %27 = sub nsw i32 0, %26, !dbg !230
  br i1 %24, label %28, label %29, !dbg !231

; <label>:28                                      ; preds = %13
  store i32 %27, i32* %19, align 4, !dbg !230, !tbaa !131
  store i32 %26, i32* %18, align 4, !dbg !232, !tbaa !131
  br label %30, !dbg !233

; <label>:29                                      ; preds = %13
  store i32 %27, i32* %18, align 4, !dbg !234, !tbaa !131
  store i32 %26, i32* %19, align 4, !dbg !236, !tbaa !131
  br label %30

; <label>:30                                      ; preds = %29, %28
  %31 = phi i32 [ %27, %29 ], [ %26, %28 ]
  %32 = phi i32 [ %26, %29 ], [ %27, %28 ]
  %storemerge = phi i32 [ 1, %29 ], [ 2, %28 ]
  store i32 %storemerge, i32* %22, align 4, !dbg !237, !tbaa !131
  %33 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !238
  %34 = load %struct._BPG** %33, align 8, !dbg !238, !tbaa !239
  %35 = getelementptr inbounds %struct._BPG* %34, i64 0, i32 2, !dbg !240
  %36 = load %struct._Graph** %35, align 8, !dbg !240, !tbaa !241
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !107, metadata !116), !dbg !243
  tail call void @llvm.dbg.value(metadata i32** %adj, i64 0, metadata !108, metadata !116), !dbg !244
  call void @Graph_adjAndSize(%struct._Graph* %36, i32 %dom, i32* %size, i32** %adj) #5, !dbg !245
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !103, metadata !116), !dbg !246
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !107, metadata !116), !dbg !243
  %37 = load i32* %size, align 4, !dbg !247, !tbaa !131
  %38 = icmp sgt i32 %37, 0, !dbg !250
  br i1 %38, label %.lr.ph, label %62, !dbg !251

.lr.ph:                                           ; preds = %30, %58
  %indvars.iv = phi i64 [ %indvars.iv.next, %58 ], [ 0, %30 ]
  call void @llvm.dbg.value(metadata i32** %adj, i64 0, metadata !108, metadata !116), !dbg !244
  %39 = load i32** %adj, align 8, !dbg !252, !tbaa !123
  %40 = getelementptr inbounds i32* %39, i64 %indvars.iv, !dbg !252
  %41 = load i32* %40, align 4, !dbg !252, !tbaa !131
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !106, metadata !116), !dbg !254
  %42 = sext i32 %41 to i64, !dbg !255
  %43 = getelementptr inbounds i32* %15, i64 %42, !dbg !255
  %44 = load i32* %43, align 4, !dbg !255, !tbaa !131
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !105, metadata !116), !dbg !256
  %45 = call i32 @BKL_segColor(%struct._BKL* %bkl, i32 %41) #5, !dbg !257
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !104, metadata !116), !dbg !258
  %46 = icmp eq i32 %44, %45, !dbg !259
  br i1 %46, label %58, label %47, !dbg !261

; <label>:47                                      ; preds = %.lr.ph
  %48 = getelementptr inbounds i32* %17, i64 %42, !dbg !262
  %49 = load i32* %48, align 4, !dbg !262, !tbaa !131
  %50 = sext i32 %44 to i64, !dbg !264
  %51 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 %50, !dbg !264
  %52 = load i32* %51, align 4, !dbg !265, !tbaa !131
  %53 = sub nsw i32 %52, %49, !dbg !265
  store i32 %53, i32* %51, align 4, !dbg !265, !tbaa !131
  %54 = sext i32 %45 to i64, !dbg !266
  %55 = getelementptr inbounds [3 x i32]* %stats, i64 0, i64 %54, !dbg !266
  %56 = load i32* %55, align 4, !dbg !267, !tbaa !131
  %57 = add nsw i32 %56, %49, !dbg !267
  store i32 %57, i32* %55, align 4, !dbg !267, !tbaa !131
  br label %58, !dbg !268

; <label>:58                                      ; preds = %.lr.ph, %47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !251
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !107, metadata !116), !dbg !243
  %59 = load i32* %size, align 4, !dbg !247, !tbaa !131
  %60 = sext i32 %59 to i64, !dbg !250
  %61 = icmp slt i64 %indvars.iv.next, %60, !dbg !250
  br i1 %61, label %.lr.ph, label %._crit_edge, !dbg !251

._crit_edge:                                      ; preds = %58
  %.pre = load i32* %20, align 4, !dbg !269, !tbaa !131
  %.pre10 = load i32* %19, align 4, !dbg !270, !tbaa !131
  %.pre11 = load i32* %18, align 4, !dbg !271, !tbaa !131
  br label %62, !dbg !251

; <label>:62                                      ; preds = %._crit_edge, %30
  %63 = phi i32 [ %.pre11, %._crit_edge ], [ %31, %30 ]
  %64 = phi i32 [ %.pre10, %._crit_edge ], [ %32, %30 ]
  %65 = phi i32 [ %.pre, %._crit_edge ], [ 0, %30 ]
  store i32 %65, i32* %pdeltaS, align 4, !dbg !272, !tbaa !131
  store i32 %64, i32* %pdeltaB, align 4, !dbg !273, !tbaa !131
  store i32 %63, i32* %pdeltaW, align 4, !dbg !274, !tbaa !131
  %66 = load i32* %22, align 4, !dbg !275, !tbaa !131
  %67 = icmp eq i32 %66, 1, !dbg !277
  %. = select i1 %67, i32 2, i32 1, !dbg !278
  store i32 %., i32* %22, align 4, !dbg !280, !tbaa !131
  %68 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 9, !dbg !281
  %69 = load i32* %68, align 4, !dbg !282, !tbaa !283
  %70 = add nsw i32 %69, 1, !dbg !282
  store i32 %70, i32* %68, align 4, !dbg !282, !tbaa !283
  ret void, !dbg !284
}

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare i32 @BKL_segColor(%struct._BKL*, i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!112, !113, !114}
!llvm.ident = !{!115}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_evalfcn.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!6 = !{!7, !83, !94}
!7 = !DISubprogram(name: "BKL_evalfcn", scope: !1, file: !1, line: 16, type: !8, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct._BKL*)* @BKL_evalfcn, variables: !78)
!8 = !DISubroutineType(types: !9)
!9 = !{!5, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "BKL", file: !12, line: 45, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BKL", file: !12, line: 46, size: 704, align: 64, elements: !14)
!14 = !{!15, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !76, !77}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "bpg", scope: !13, file: !12, line: 47, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "BPG", file: !18, line: 21, baseType: !19)
!18 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BPG", file: !18, line: 22, size: 128, align: 64, elements: !20)
!20 = !{!21, !23, !24}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nX", scope: !19, file: !18, line: 23, baseType: !22, size: 32, align: 32)
!22 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nY", scope: !19, file: !18, line: 24, baseType: !22, size: 32, align: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !19, file: !18, line: 25, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !27, line: 49, baseType: !28)
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !27, line: 50, size: 384, align: 64, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !60, !61}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !28, file: !27, line: 51, baseType: !22, size: 32, align: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !28, file: !27, line: 52, baseType: !22, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !28, file: !27, line: 53, baseType: !22, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !28, file: !27, line: 54, baseType: !22, size: 32, align: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !28, file: !27, line: 55, baseType: !22, size: 32, align: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !28, file: !27, line: 56, baseType: !22, size: 32, align: 32, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !28, file: !27, line: 57, baseType: !37, size: 64, align: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !39, line: 55, baseType: !40)
!39 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !39, line: 79, size: 384, align: 64, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !48, !50, !51}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !39, line: 80, baseType: !22, size: 32, align: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !40, file: !39, line: 81, baseType: !22, size: 32, align: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !40, file: !39, line: 82, baseType: !22, size: 32, align: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !40, file: !39, line: 83, baseType: !22, size: 32, align: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !40, file: !39, line: 84, baseType: !47, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !40, file: !39, line: 85, baseType: !49, size: 64, align: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !40, file: !39, line: 86, baseType: !22, size: 32, align: 32, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !40, file: !39, line: 87, baseType: !52, size: 64, align: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !39, line: 56, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !39, line: 102, size: 192, align: 64, elements: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !54, file: !39, line: 103, baseType: !22, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !54, file: !39, line: 104, baseType: !22, size: 32, align: 32, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !54, file: !39, line: 105, baseType: !47, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !39, line: 106, baseType: !52, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !28, file: !27, line: 58, baseType: !47, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !28, file: !27, line: 59, baseType: !37, size: 64, align: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ndom", scope: !13, file: !12, line: 48, baseType: !22, size: 32, align: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "nseg", scope: !13, file: !12, line: 49, baseType: !22, size: 32, align: 32, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !13, file: !12, line: 50, baseType: !22, size: 32, align: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "totweight", scope: !13, file: !12, line: 51, baseType: !22, size: 32, align: 32, offset: 160)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "npass", scope: !13, file: !12, line: 52, baseType: !22, size: 32, align: 32, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "npatch", scope: !13, file: !12, line: 53, baseType: !22, size: 32, align: 32, offset: 224)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nflips", scope: !13, file: !12, line: 54, baseType: !22, size: 32, align: 32, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "nimprove", scope: !13, file: !12, line: 55, baseType: !22, size: 32, align: 32, offset: 288)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ngaineval", scope: !13, file: !12, line: 56, baseType: !22, size: 32, align: 32, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !13, file: !12, line: 57, baseType: !47, size: 64, align: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cweights", scope: !13, file: !12, line: 58, baseType: !73, size: 96, align: 32, offset: 448)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 96, align: 32, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 3)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "regwghts", scope: !13, file: !12, line: 59, baseType: !47, size: 64, align: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !13, file: !12, line: 60, baseType: !5, size: 32, align: 32, offset: 640)
!78 = !{!79, !80, !81, !82}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !7, file: !1, line: 17, type: !10)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cost", scope: !7, file: !1, line: 19, type: !5)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wmax", scope: !7, file: !1, line: 20, type: !22)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wmin", scope: !7, file: !1, line: 20, type: !22)
!83 = !DISubprogram(name: "BKL_eval", scope: !1, file: !1, line: 54, type: !84, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct._BKL*, i32, i32, i32)* @BKL_eval, variables: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{!5, !10, !22, !22, !22}
!86 = !{!87, !88, !89, !90, !91, !92, !93}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !83, file: !1, line: 55, type: !10)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Sweight", arg: 2, scope: !83, file: !1, line: 56, type: !22)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Bweight", arg: 3, scope: !83, file: !1, line: 57, type: !22)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wweight", arg: 4, scope: !83, file: !1, line: 58, type: !22)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cost", scope: !83, file: !1, line: 60, type: !5)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wmax", scope: !83, file: !1, line: 61, type: !22)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wmin", scope: !83, file: !1, line: 61, type: !22)
!94 = !DISubprogram(name: "BKL_evalgain", scope: !1, file: !1, line: 95, type: !95, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._BKL*, i32, i32*, i32*, i32*)* @BKL_evalgain, variables: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !10, !22, !47, !47, !47}
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !94, file: !1, line: 96, type: !10)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dom", arg: 2, scope: !94, file: !1, line: 97, type: !22)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pdeltaS", arg: 3, scope: !94, file: !1, line: 98, type: !47)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pdeltaB", arg: 4, scope: !94, file: !1, line: 99, type: !47)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pdeltaW", arg: 5, scope: !94, file: !1, line: 100, type: !47)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !94, file: !1, line: 102, type: !22)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newc", scope: !94, file: !1, line: 102, type: !22)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldc", scope: !94, file: !1, line: 102, type: !22)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seg", scope: !94, file: !1, line: 102, type: !22)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !94, file: !1, line: 102, type: !22)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adj", scope: !94, file: !1, line: 103, type: !47)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colors", scope: !94, file: !1, line: 103, type: !47)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "regwghts", scope: !94, file: !1, line: 103, type: !47)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stats", scope: !94, file: !1, line: 104, type: !73)
!112 = !{i32 2, !"Dwarf Version", i32 2}
!113 = !{i32 2, !"Debug Info Version", i32 700000003}
!114 = !{i32 1, !"PIC Level", i32 2}
!115 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!116 = !DIExpression()
!117 = !DILocation(line: 17, column: 11, scope: !7)
!118 = !DILocation(line: 26, column: 10, scope: !119)
!119 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 6)
!120 = !DILocation(line: 26, column: 6, scope: !7)
!121 = !DILocation(line: 27, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 26, column: 20)
!123 = !{!124, !124, i64 0}
!124 = !{!"any pointer", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !DILocation(line: 27, column: 4, scope: !122)
!128 = !DILocation(line: 29, column: 4, scope: !122)
!129 = !DILocation(line: 31, column: 6, scope: !130)
!130 = distinct !DILexicalBlock(scope: !7, file: !1, line: 31, column: 6)
!131 = !{!132, !132, i64 0}
!132 = !{!"int", !125, i64 0}
!133 = !DILocation(line: 31, column: 26, scope: !130)
!134 = !DILocation(line: 31, column: 23, scope: !130)
!135 = !DILocation(line: 38, column: 11, scope: !136)
!136 = distinct !DILexicalBlock(scope: !7, file: !1, line: 38, column: 6)
!137 = !DILocation(line: 38, column: 6, scope: !7)
!138 = !DILocation(line: 39, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !1, line: 38, column: 18)
!140 = !{!141, !132, i64 20}
!141 = !{!"_BKL", !124, i64 0, !132, i64 8, !132, i64 12, !132, i64 16, !132, i64 20, !132, i64 24, !132, i64 28, !132, i64 32, !132, i64 36, !132, i64 40, !124, i64 48, !125, i64 56, !124, i64 72, !142, i64 80}
!142 = !{!"float", !125, i64 0}
!143 = !DILocation(line: 39, column: 12, scope: !139)
!144 = !DILocation(line: 39, column: 36, scope: !139)
!145 = !DILocation(line: 19, column: 9, scope: !7)
!146 = !DILocation(line: 40, column: 1, scope: !139)
!147 = !DILocation(line: 41, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !136, file: !1, line: 40, column: 8)
!149 = !DILocation(line: 41, column: 42, scope: !148)
!150 = !{!141, !142, i64 80}
!151 = !DILocation(line: 41, column: 50, scope: !148)
!152 = !DILocation(line: 41, column: 48, scope: !148)
!153 = !DILocation(line: 41, column: 56, scope: !148)
!154 = !DILocation(line: 41, column: 55, scope: !148)
!155 = !DILocation(line: 41, column: 36, scope: !148)
!156 = !DILocation(line: 41, column: 34, scope: !148)
!157 = !DILocation(line: 41, column: 28, scope: !148)
!158 = !DILocation(line: 43, column: 1, scope: !7)
!159 = !DILocation(line: 55, column: 11, scope: !83)
!160 = !DILocation(line: 56, column: 10, scope: !83)
!161 = !DILocation(line: 57, column: 10, scope: !83)
!162 = !DILocation(line: 58, column: 10, scope: !83)
!163 = !DILocation(line: 67, column: 10, scope: !164)
!164 = distinct !DILexicalBlock(scope: !83, file: !1, line: 67, column: 6)
!165 = !DILocation(line: 67, column: 6, scope: !83)
!166 = !DILocation(line: 68, column: 12, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 67, column: 20)
!168 = !DILocation(line: 68, column: 4, scope: !167)
!169 = !DILocation(line: 70, column: 4, scope: !167)
!170 = !DILocation(line: 72, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !83, file: !1, line: 72, column: 6)
!172 = !DILocation(line: 79, column: 11, scope: !173)
!173 = distinct !DILexicalBlock(scope: !83, file: !1, line: 79, column: 6)
!174 = !DILocation(line: 79, column: 6, scope: !83)
!175 = !DILocation(line: 80, column: 25, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !1, line: 79, column: 18)
!177 = !DILocation(line: 80, column: 12, scope: !176)
!178 = !DILocation(line: 80, column: 36, scope: !176)
!179 = !DILocation(line: 60, column: 9, scope: !83)
!180 = !DILocation(line: 81, column: 1, scope: !176)
!181 = !DILocation(line: 82, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !173, file: !1, line: 81, column: 8)
!183 = !DILocation(line: 82, column: 33, scope: !182)
!184 = !DILocation(line: 82, column: 41, scope: !182)
!185 = !DILocation(line: 82, column: 39, scope: !182)
!186 = !DILocation(line: 82, column: 47, scope: !182)
!187 = !DILocation(line: 82, column: 46, scope: !182)
!188 = !DILocation(line: 82, column: 27, scope: !182)
!189 = !DILocation(line: 82, column: 25, scope: !182)
!190 = !DILocation(line: 82, column: 19, scope: !182)
!191 = !DILocation(line: 84, column: 1, scope: !83)
!192 = !DILocation(line: 96, column: 11, scope: !94)
!193 = !DILocation(line: 97, column: 10, scope: !94)
!194 = !DILocation(line: 98, column: 11, scope: !94)
!195 = !DILocation(line: 99, column: 11, scope: !94)
!196 = !DILocation(line: 100, column: 11, scope: !94)
!197 = !DILocation(line: 104, column: 7, scope: !94)
!198 = !DILocation(line: 110, column: 11, scope: !199)
!199 = distinct !DILexicalBlock(scope: !94, file: !1, line: 110, column: 7)
!200 = !DILocation(line: 110, column: 26, scope: !199)
!201 = !DILocation(line: 110, column: 19, scope: !199)
!202 = !DILocation(line: 110, column: 45, scope: !199)
!203 = !{!141, !132, i64 8}
!204 = !DILocation(line: 110, column: 37, scope: !199)
!205 = !DILocation(line: 111, column: 15, scope: !199)
!206 = !DILocation(line: 111, column: 4, scope: !199)
!207 = !DILocation(line: 111, column: 34, scope: !199)
!208 = !DILocation(line: 111, column: 53, scope: !199)
!209 = !DILocation(line: 112, column: 12, scope: !210)
!210 = distinct !DILexicalBlock(scope: !199, file: !1, line: 111, column: 63)
!211 = !DILocation(line: 112, column: 4, scope: !210)
!212 = !DILocation(line: 114, column: 4, scope: !210)
!213 = !DILocation(line: 116, column: 17, scope: !94)
!214 = !{!141, !124, i64 48}
!215 = !DILocation(line: 103, column: 14, scope: !94)
!216 = !DILocation(line: 117, column: 17, scope: !94)
!217 = !{!141, !124, i64 72}
!218 = !DILocation(line: 103, column: 23, scope: !94)
!219 = !DILocation(line: 118, column: 23, scope: !94)
!220 = !DILocation(line: 118, column: 32, scope: !94)
!221 = !DILocation(line: 118, column: 12, scope: !94)
!222 = !DILocation(line: 118, column: 21, scope: !94)
!223 = !DILocation(line: 118, column: 1, scope: !94)
!224 = !DILocation(line: 118, column: 10, scope: !94)
!225 = !DILocation(line: 124, column: 6, scope: !226)
!226 = distinct !DILexicalBlock(scope: !94, file: !1, line: 124, column: 6)
!227 = !DILocation(line: 124, column: 18, scope: !226)
!228 = !DILocation(line: 129, column: 16, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !1, line: 124, column: 25)
!230 = !DILocation(line: 129, column: 13, scope: !229)
!231 = !DILocation(line: 124, column: 6, scope: !94)
!232 = !DILocation(line: 130, column: 13, scope: !229)
!233 = !DILocation(line: 132, column: 1, scope: !229)
!234 = !DILocation(line: 137, column: 13, scope: !235)
!235 = distinct !DILexicalBlock(scope: !226, file: !1, line: 132, column: 8)
!236 = !DILocation(line: 138, column: 13, scope: !235)
!237 = !DILocation(line: 131, column: 16, scope: !229)
!238 = !DILocation(line: 146, column: 23, scope: !94)
!239 = !{!141, !124, i64 0}
!240 = !DILocation(line: 146, column: 28, scope: !94)
!241 = !{!242, !124, i64 8}
!242 = !{!"_BPG", !132, i64 0, !132, i64 4, !124, i64 8}
!243 = !DILocation(line: 102, column: 28, scope: !94)
!244 = !DILocation(line: 103, column: 8, scope: !94)
!245 = !DILocation(line: 146, column: 1, scope: !94)
!246 = !DILocation(line: 102, column: 7, scope: !94)
!247 = !DILocation(line: 147, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 147, column: 1)
!249 = distinct !DILexicalBlock(scope: !94, file: !1, line: 147, column: 1)
!250 = !DILocation(line: 147, column: 19, scope: !248)
!251 = !DILocation(line: 147, column: 1, scope: !249)
!252 = !DILocation(line: 148, column: 10, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !1, line: 147, column: 35)
!254 = !DILocation(line: 102, column: 23, scope: !94)
!255 = !DILocation(line: 149, column: 11, scope: !253)
!256 = !DILocation(line: 102, column: 17, scope: !94)
!257 = !DILocation(line: 150, column: 11, scope: !253)
!258 = !DILocation(line: 102, column: 11, scope: !94)
!259 = !DILocation(line: 157, column: 14, scope: !260)
!260 = distinct !DILexicalBlock(scope: !253, file: !1, line: 157, column: 9)
!261 = !DILocation(line: 157, column: 9, scope: !253)
!262 = !DILocation(line: 158, column: 22, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !1, line: 157, column: 24)
!264 = !DILocation(line: 158, column: 7, scope: !263)
!265 = !DILocation(line: 158, column: 19, scope: !263)
!266 = !DILocation(line: 159, column: 7, scope: !263)
!267 = !DILocation(line: 159, column: 19, scope: !263)
!268 = !DILocation(line: 166, column: 4, scope: !263)
!269 = !DILocation(line: 178, column: 12, scope: !94)
!270 = !DILocation(line: 179, column: 12, scope: !94)
!271 = !DILocation(line: 180, column: 12, scope: !94)
!272 = !DILocation(line: 178, column: 10, scope: !94)
!273 = !DILocation(line: 179, column: 10, scope: !94)
!274 = !DILocation(line: 180, column: 10, scope: !94)
!275 = !DILocation(line: 186, column: 6, scope: !276)
!276 = distinct !DILexicalBlock(scope: !94, file: !1, line: 186, column: 6)
!277 = !DILocation(line: 186, column: 18, scope: !276)
!278 = !DILocation(line: 188, column: 1, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !1, line: 186, column: 25)
!280 = !DILocation(line: 187, column: 16, scope: !279)
!281 = !DILocation(line: 196, column: 6, scope: !94)
!282 = !DILocation(line: 196, column: 15, scope: !94)
!283 = !{!141, !132, i64 40}
!284 = !DILocation(line: 198, column: 1, scope: !94)
