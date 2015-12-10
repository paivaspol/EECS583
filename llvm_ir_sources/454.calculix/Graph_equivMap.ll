; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_equivMap.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in Graph_equivMap(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @Graph_equivMap(%struct._Graph* %g) #0 {
  %usize = alloca i32, align 4
  %vsize = alloca i32, align 4
  %uadj = alloca i32*, align 8
  %vadj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !57, metadata !79), !dbg !80
  %1 = icmp eq %struct._Graph* %g, null, !dbg !81
  br i1 %1, label %6, label %2, !dbg !83

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !84
  %4 = load i32* %3, align 4, !dbg !84, !tbaa !85
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !62, metadata !79), !dbg !91
  %5 = icmp slt i32 %4, 1, !dbg !92
  br i1 %5, label %6, label %.lr.ph23, !dbg !93

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !94, !tbaa !96
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._Graph* %g) #5, !dbg !97
  tail call void @exit(i32 -1) #6, !dbg !98
  unreachable, !dbg !98

.lr.ph23:                                         ; preds = %2
  %9 = tail call %struct._IV* @IV_new() #5, !dbg !99
  tail call void @llvm.dbg.value(metadata %struct._IV* %9, i64 0, metadata !74, metadata !79), !dbg !100
  tail call void @IV_init(%struct._IV* %9, i32 %4, i32* null) #5, !dbg !101
  %10 = tail call i32* @IV_entries(%struct._IV* %9) #5, !dbg !102
  tail call void @llvm.dbg.value(metadata i32* %10, i64 0, metadata !70, metadata !79), !dbg !103
  tail call void @IVfill(i32 %4, i32* %10, i32 -1) #5, !dbg !104
  %11 = tail call i32* @IVinit(i32 %4, i32 -1) #5, !dbg !105
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !71, metadata !79), !dbg !106
  %12 = tail call i32* @IVinit(i32 %4, i32 -1) #5, !dbg !107
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !69, metadata !79), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !63, metadata !79), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !66, metadata !79), !dbg !110
  %13 = add i32 %4, -1, !dbg !111
  br label %14, !dbg !111

; <label>:14                                      ; preds = %._crit_edge35, %.lr.ph23
  %indvars.iv33 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next34, %._crit_edge35 ]
  %nvtx2.021 = phi i32 [ 0, %.lr.ph23 ], [ %nvtx2.1, %._crit_edge35 ]
  %15 = getelementptr inbounds i32* %10, i64 %indvars.iv33, !dbg !113
  %16 = load i32* %15, align 4, !dbg !113, !tbaa !117
  %17 = icmp eq i32 %16, -1, !dbg !118
  %18 = trunc i64 %indvars.iv33 to i32, !dbg !119
  br i1 %17, label %19, label %._crit_edge35, !dbg !121

; <label>:19                                      ; preds = %14
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !67, metadata !79), !dbg !122
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !73, metadata !79), !dbg !123
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %18, i32* %vsize, i32** %vadj) #5, !dbg !119
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !67, metadata !79), !dbg !122
  %20 = load i32* %vsize, align 4, !dbg !124, !tbaa !117
  %21 = icmp eq i32 %20, 0, !dbg !126
  br i1 %21, label %25, label %.preheader, !dbg !127

.preheader:                                       ; preds = %19
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !67, metadata !79), !dbg !122
  %22 = icmp sgt i32 %20, 0, !dbg !128
  br i1 %22, label %.lr.ph, label %._crit_edge, !dbg !132

.lr.ph:                                           ; preds = %.preheader
  %23 = load i32** %vadj, align 8, !dbg !133, !tbaa !96
  %24 = sext i32 %20 to i64, !dbg !132
  br label %27, !dbg !132

; <label>:25                                      ; preds = %19
  %26 = add nsw i32 %nvtx2.021, 1, !dbg !136
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !63, metadata !79), !dbg !109
  store i32 %nvtx2.021, i32* %15, align 4, !dbg !138, !tbaa !117
  br label %._crit_edge35, !dbg !139

; <label>:27                                      ; preds = %.lr.ph, %27
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %27 ]
  %vsum.01 = phi i32 [ %18, %.lr.ph ], [ %vsum.0., %27 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !73, metadata !79), !dbg !123
  %28 = getelementptr inbounds i32* %23, i64 %indvars.iv, !dbg !133
  %29 = load i32* %28, align 4, !dbg !133, !tbaa !117
  %30 = icmp eq i32 %29, %18, !dbg !140
  %31 = select i1 %30, i32 0, i32 %29, !dbg !141
  %vsum.0. = add nsw i32 %31, %vsum.01, !dbg !141
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !132
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !67, metadata !79), !dbg !122
  %32 = icmp slt i64 %indvars.iv.next, %24, !dbg !128
  br i1 %32, label %27, label %._crit_edge, !dbg !132

._crit_edge:                                      ; preds = %27, %.preheader
  %vsum.0.lcssa = phi i32 [ %18, %.preheader ], [ %vsum.0., %27 ]
  %33 = getelementptr inbounds i32* %12, i64 %indvars.iv33, !dbg !142
  store i32 %vsum.0.lcssa, i32* %33, align 4, !dbg !143, !tbaa !117
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !60, metadata !79), !dbg !144
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !59, metadata !79), !dbg !145
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !67, metadata !79), !dbg !122
  %34 = load i32* %vsize, align 4, !dbg !146, !tbaa !117
  %35 = icmp sgt i32 %34, 0, !dbg !149
  br i1 %35, label %.lr.ph16, label %thread-pre-split, !dbg !150

.lr.ph16:                                         ; preds = %._crit_edge
  %36 = getelementptr inbounds i32* %11, i64 %indvars.iv33, !dbg !151
  br label %37, !dbg !150

; <label>:37                                      ; preds = %.lr.ph16, %89
  %38 = phi i32 [ %34, %.lr.ph16 ], [ %90, %89 ]
  %indvars.iv31 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next32, %89 ]
  %ismapped.013 = phi i32 [ 0, %.lr.ph16 ], [ %ismapped.2, %89 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !73, metadata !79), !dbg !123
  %39 = load i32** %vadj, align 8, !dbg !159, !tbaa !96
  %40 = getelementptr inbounds i32* %39, i64 %indvars.iv31, !dbg !159
  %41 = load i32* %40, align 4, !dbg !159, !tbaa !117
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !64, metadata !79), !dbg !160
  %42 = sext i32 %41 to i64, !dbg !161
  %43 = icmp slt i64 %42, %indvars.iv33, !dbg !161
  br i1 %43, label %44, label %89, !dbg !162

; <label>:44                                      ; preds = %37
  %45 = getelementptr inbounds i32* %12, i64 %42, !dbg !163
  %46 = load i32* %45, align 4, !dbg !163, !tbaa !117
  %47 = icmp eq i32 %46, %vsum.0.lcssa, !dbg !164
  br i1 %47, label %48, label %89, !dbg !165

; <label>:48                                      ; preds = %44
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !65, metadata !79), !dbg !166
  call void @llvm.dbg.value(metadata i32** %uadj, i64 0, metadata !72, metadata !79), !dbg !167
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %41, i32* %usize, i32** %uadj) #5, !dbg !168
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !67, metadata !79), !dbg !122
  %49 = load i32* %vsize, align 4, !dbg !169, !tbaa !117
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !65, metadata !79), !dbg !166
  %50 = load i32* %usize, align 4, !dbg !170, !tbaa !117
  %51 = icmp eq i32 %49, %50, !dbg !171
  br i1 %51, label %52, label %89, !dbg !172

; <label>:52                                      ; preds = %48
  %53 = icmp eq i32 %ismapped.013, 0, !dbg !173
  br i1 %53, label %54, label %67, !dbg !174

; <label>:54                                      ; preds = %52
  store i32 %18, i32* %36, align 4, !dbg !175, !tbaa !117
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !79), !dbg !176
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !67, metadata !79), !dbg !122
  %55 = load i32* %vsize, align 4, !dbg !177, !tbaa !117
  %56 = icmp sgt i32 %55, 0, !dbg !180
  br i1 %56, label %.lr.ph5, label %.loopexit, !dbg !181

.lr.ph5:                                          ; preds = %54
  %57 = load i32** %vadj, align 8, !dbg !182, !tbaa !96
  br label %58, !dbg !181

; <label>:58                                      ; preds = %.lr.ph5, %58
  %indvars.iv27 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next28, %58 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !73, metadata !79), !dbg !123
  %59 = getelementptr inbounds i32* %57, i64 %indvars.iv27, !dbg !182
  %60 = load i32* %59, align 4, !dbg !182, !tbaa !117
  %61 = sext i32 %60 to i64, !dbg !184
  %62 = getelementptr inbounds i32* %11, i64 %61, !dbg !184
  store i32 %18, i32* %62, align 4, !dbg !185, !tbaa !117
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !181
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !67, metadata !79), !dbg !122
  %63 = load i32* %vsize, align 4, !dbg !177, !tbaa !117
  %64 = sext i32 %63 to i64, !dbg !180
  %65 = icmp slt i64 %indvars.iv.next28, %64, !dbg !180
  br i1 %65, label %58, label %.loopexit, !dbg !181

.loopexit:                                        ; preds = %58, %54
  %66 = phi i32 [ %55, %54 ], [ %63, %58 ]
  %.pre = load i32* %usize, align 4, !dbg !186, !tbaa !117
  br label %67

; <label>:67                                      ; preds = %.loopexit, %52
  %68 = phi i32 [ %49, %52 ], [ %66, %.loopexit ]
  %69 = phi i32 [ %49, %52 ], [ %.pre, %.loopexit ]
  %ismapped.1 = phi i32 [ %ismapped.013, %52 ], [ 1, %.loopexit ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !79), !dbg !176
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !65, metadata !79), !dbg !166
  %70 = icmp sgt i32 %69, 0, !dbg !189
  br i1 %70, label %.lr.ph8, label %84, !dbg !190

.lr.ph8:                                          ; preds = %67
  %71 = load i32** %uadj, align 8, !dbg !191, !tbaa !96
  %72 = sext i32 %69 to i64, !dbg !190
  br label %73, !dbg !190

; <label>:73                                      ; preds = %.lr.ph8, %80
  %indvars.iv29 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next30, %80 ]
  call void @llvm.dbg.value(metadata i32** %uadj, i64 0, metadata !72, metadata !79), !dbg !167
  %74 = getelementptr inbounds i32* %71, i64 %indvars.iv29, !dbg !191
  %75 = load i32* %74, align 4, !dbg !191, !tbaa !117
  %76 = sext i32 %75 to i64, !dbg !194
  %77 = getelementptr inbounds i32* %11, i64 %76, !dbg !194
  %78 = load i32* %77, align 4, !dbg !194, !tbaa !117
  %79 = icmp eq i32 %78, %18, !dbg !195
  br i1 %79, label %80, label %._crit_edge9, !dbg !196

; <label>:80                                      ; preds = %73
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !dbg !190
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !65, metadata !79), !dbg !166
  %81 = icmp slt i64 %indvars.iv.next30, %72, !dbg !189
  br i1 %81, label %73, label %._crit_edge11, !dbg !190

._crit_edge9:                                     ; preds = %73
  %82 = trunc i64 %indvars.iv29 to i32, !dbg !196
  br label %84, !dbg !196

._crit_edge11:                                    ; preds = %80
  %83 = trunc i64 %indvars.iv.next30 to i32, !dbg !190
  br label %84, !dbg !190

; <label>:84                                      ; preds = %._crit_edge11, %._crit_edge9, %67
  %jj.1.lcssa = phi i32 [ %82, %._crit_edge9 ], [ %83, %._crit_edge11 ], [ 0, %67 ]
  call void @llvm.dbg.value(metadata i32* %usize, i64 0, metadata !65, metadata !79), !dbg !166
  %85 = icmp eq i32 %jj.1.lcssa, %69, !dbg !197
  br i1 %85, label %86, label %89, !dbg !199

; <label>:86                                      ; preds = %84
  %87 = getelementptr inbounds i32* %10, i64 %42, !dbg !200
  %88 = load i32* %87, align 4, !dbg !200, !tbaa !117
  store i32 %88, i32* %15, align 4, !dbg !202, !tbaa !117
  br label %93, !dbg !203

; <label>:89                                      ; preds = %37, %44, %84, %48
  %90 = phi i32 [ %68, %84 ], [ %49, %48 ], [ %38, %44 ], [ %38, %37 ], !dbg !150
  %ismapped.2 = phi i32 [ %ismapped.1, %84 ], [ %ismapped.013, %48 ], [ %ismapped.013, %44 ], [ %ismapped.013, %37 ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !150
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !67, metadata !79), !dbg !122
  %91 = sext i32 %90 to i64, !dbg !149
  %92 = icmp slt i64 %indvars.iv.next32, %91, !dbg !149
  br i1 %92, label %37, label %thread-pre-split, !dbg !150

thread-pre-split:                                 ; preds = %89, %._crit_edge
  %.pr = load i32* %15, align 4, !dbg !204, !tbaa !117
  br label %93

; <label>:93                                      ; preds = %thread-pre-split, %86
  %94 = phi i32 [ %.pr, %thread-pre-split ], [ %88, %86 ], !dbg !204
  %95 = icmp eq i32 %94, -1, !dbg !206
  br i1 %95, label %96, label %._crit_edge35, !dbg !207

; <label>:96                                      ; preds = %93
  %97 = add nsw i32 %nvtx2.021, 1, !dbg !208
  call void @llvm.dbg.value(metadata i32 %97, i64 0, metadata !63, metadata !79), !dbg !109
  store i32 %nvtx2.021, i32* %15, align 4, !dbg !210, !tbaa !117
  br label %._crit_edge35, !dbg !211

._crit_edge35:                                    ; preds = %14, %93, %96, %25
  %nvtx2.1 = phi i32 [ %nvtx2.021, %93 ], [ %97, %96 ], [ %26, %25 ], [ %nvtx2.021, %14 ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !dbg !111
  %exitcond = icmp eq i32 %18, %13, !dbg !111
  br i1 %exitcond, label %._crit_edge24, label %14, !dbg !111

._crit_edge24:                                    ; preds = %._crit_edge35
  call void @IVfree(i32* %11) #5, !dbg !212
  call void @IVfree(i32* %12) #5, !dbg !213
  ret %struct._IV* %9, !dbg !214
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!75, !76, !77}
!llvm.ident = !{!78}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_equivMap.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "Graph_equivMap", scope: !1, file: !1, line: 22, type: !7, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._Graph*)* @Graph_equivMap, variables: !56)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !20}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !11, line: 21, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !11, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !22, line: 49, baseType: !23)
!22 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !22, line: 50, size: 384, align: 64, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !54, !55}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !22, line: 51, baseType: !15, size: 32, align: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !23, file: !22, line: 52, baseType: !15, size: 32, align: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !23, file: !22, line: 53, baseType: !15, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !23, file: !22, line: 54, baseType: !15, size: 32, align: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !23, file: !22, line: 55, baseType: !15, size: 32, align: 32, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !23, file: !22, line: 56, baseType: !15, size: 32, align: 32, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !23, file: !22, line: 57, baseType: !32, size: 64, align: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !34, line: 55, baseType: !35)
!34 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !34, line: 79, size: 384, align: 64, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42, !44, !45}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !34, line: 80, baseType: !15, size: 32, align: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !35, file: !34, line: 81, baseType: !15, size: 32, align: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !35, file: !34, line: 82, baseType: !15, size: 32, align: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !35, file: !34, line: 83, baseType: !15, size: 32, align: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !35, file: !34, line: 84, baseType: !19, size: 64, align: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !35, file: !34, line: 85, baseType: !43, size: 64, align: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !35, file: !34, line: 86, baseType: !15, size: 32, align: 32, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !35, file: !34, line: 87, baseType: !46, size: 64, align: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !34, line: 56, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !34, line: 102, size: 192, align: 64, elements: !49)
!49 = !{!50, !51, !52, !53}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !48, file: !34, line: 103, baseType: !15, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !48, file: !34, line: 104, baseType: !15, size: 32, align: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !48, file: !34, line: 105, baseType: !19, size: 64, align: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !48, file: !34, line: 106, baseType: !46, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !23, file: !22, line: 58, baseType: !19, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !23, file: !22, line: 59, baseType: !32, size: 64, align: 64, offset: 320)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !6, file: !1, line: 23, type: !20)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !6, file: !1, line: 25, type: !15)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !6, file: !1, line: 25, type: !15)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ismapped", scope: !6, file: !1, line: 25, type: !15)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jj", scope: !6, file: !1, line: 25, type: !15)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !6, file: !1, line: 25, type: !15)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx2", scope: !6, file: !1, line: 25, type: !15)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !6, file: !1, line: 25, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "usize", scope: !6, file: !1, line: 25, type: !15)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !6, file: !1, line: 25, type: !15)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsize", scope: !6, file: !1, line: 25, type: !15)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsum", scope: !6, file: !1, line: 25, type: !15)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chksum", scope: !6, file: !1, line: 26, type: !19)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eqmap", scope: !6, file: !1, line: 26, type: !19)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mark", scope: !6, file: !1, line: 26, type: !19)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uadj", scope: !6, file: !1, line: 26, type: !19)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vadj", scope: !6, file: !1, line: 26, type: !19)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eqmapIV", scope: !6, file: !1, line: 27, type: !9)
!75 = !{i32 2, !"Dwarf Version", i32 2}
!76 = !{i32 2, !"Debug Info Version", i32 700000003}
!77 = !{i32 1, !"PIC Level", i32 2}
!78 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!79 = !DIExpression()
!80 = !DILocation(line: 23, column: 13, scope: !6)
!81 = !DILocation(line: 33, column: 8, scope: !82)
!82 = distinct !DILexicalBlock(scope: !6, file: !1, line: 33, column: 6)
!83 = !DILocation(line: 33, column: 16, scope: !82)
!84 = !DILocation(line: 33, column: 30, scope: !82)
!85 = !{!86, !87, i64 4}
!86 = !{!"_Graph", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20, !90, i64 24, !90, i64 32, !90, i64 40}
!87 = !{!"int", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !{!"any pointer", !88, i64 0}
!91 = !DILocation(line: 25, column: 31, scope: !6)
!92 = !DILocation(line: 33, column: 36, scope: !82)
!93 = !DILocation(line: 33, column: 6, scope: !6)
!94 = !DILocation(line: 34, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !82, file: !1, line: 33, column: 43)
!96 = !{!90, !90, i64 0}
!97 = !DILocation(line: 34, column: 4, scope: !95)
!98 = !DILocation(line: 36, column: 4, scope: !95)
!99 = !DILocation(line: 43, column: 11, scope: !6)
!100 = !DILocation(line: 27, column: 8, scope: !6)
!101 = !DILocation(line: 44, column: 1, scope: !6)
!102 = !DILocation(line: 45, column: 9, scope: !6)
!103 = !DILocation(line: 26, column: 17, scope: !6)
!104 = !DILocation(line: 46, column: 1, scope: !6)
!105 = !DILocation(line: 47, column: 10, scope: !6)
!106 = !DILocation(line: 26, column: 25, scope: !6)
!107 = !DILocation(line: 48, column: 10, scope: !6)
!108 = !DILocation(line: 26, column: 8, scope: !6)
!109 = !DILocation(line: 25, column: 37, scope: !6)
!110 = !DILocation(line: 25, column: 54, scope: !6)
!111 = !DILocation(line: 55, column: 1, scope: !112)
!112 = distinct !DILexicalBlock(scope: !6, file: !1, line: 55, column: 1)
!113 = !DILocation(line: 56, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 56, column: 9)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 55, column: 32)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 55, column: 1)
!117 = !{!87, !87, i64 0}
!118 = !DILocation(line: 56, column: 18, scope: !114)
!119 = !DILocation(line: 57, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !114, file: !1, line: 56, column: 26)
!121 = !DILocation(line: 56, column: 9, scope: !115)
!122 = !DILocation(line: 25, column: 57, scope: !6)
!123 = !DILocation(line: 26, column: 39, scope: !6)
!124 = !DILocation(line: 58, column: 12, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !1, line: 58, column: 12)
!126 = !DILocation(line: 58, column: 18, scope: !125)
!127 = !DILocation(line: 58, column: 12, scope: !120)
!128 = !DILocation(line: 77, column: 28, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 77, column: 10)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 77, column: 10)
!131 = distinct !DILexicalBlock(scope: !125, file: !1, line: 70, column: 14)
!132 = !DILocation(line: 77, column: 10, scope: !130)
!133 = !DILocation(line: 78, column: 18, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 78, column: 18)
!135 = distinct !DILexicalBlock(scope: !129, file: !1, line: 77, column: 45)
!136 = !DILocation(line: 69, column: 26, scope: !137)
!137 = distinct !DILexicalBlock(scope: !125, file: !1, line: 58, column: 25)
!138 = !DILocation(line: 69, column: 19, scope: !137)
!139 = !DILocation(line: 70, column: 7, scope: !137)
!140 = !DILocation(line: 78, column: 27, scope: !134)
!141 = !DILocation(line: 78, column: 18, scope: !135)
!142 = !DILocation(line: 82, column: 10, scope: !131)
!143 = !DILocation(line: 82, column: 20, scope: !131)
!144 = !DILocation(line: 25, column: 17, scope: !6)
!145 = !DILocation(line: 25, column: 13, scope: !6)
!146 = !DILocation(line: 94, column: 30, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 94, column: 10)
!148 = distinct !DILexicalBlock(scope: !131, file: !1, line: 94, column: 10)
!149 = !DILocation(line: 94, column: 28, scope: !147)
!150 = !DILocation(line: 94, column: 10, scope: !148)
!151 = !DILocation(line: 120, column: 22, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 114, column: 40)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 114, column: 24)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 108, column: 38)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 108, column: 21)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 95, column: 60)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 95, column: 18)
!158 = distinct !DILexicalBlock(scope: !147, file: !1, line: 94, column: 45)
!159 = !DILocation(line: 95, column: 23, scope: !157)
!160 = !DILocation(line: 25, column: 44, scope: !6)
!161 = !DILocation(line: 95, column: 33, scope: !157)
!162 = !DILocation(line: 95, column: 37, scope: !157)
!163 = !DILocation(line: 95, column: 40, scope: !157)
!164 = !DILocation(line: 95, column: 50, scope: !157)
!165 = !DILocation(line: 95, column: 18, scope: !158)
!166 = !DILocation(line: 25, column: 47, scope: !6)
!167 = !DILocation(line: 26, column: 32, scope: !6)
!168 = !DILocation(line: 107, column: 16, scope: !156)
!169 = !DILocation(line: 108, column: 21, scope: !155)
!170 = !DILocation(line: 108, column: 30, scope: !155)
!171 = !DILocation(line: 108, column: 27, scope: !155)
!172 = !DILocation(line: 108, column: 21, scope: !156)
!173 = !DILocation(line: 114, column: 33, scope: !153)
!174 = !DILocation(line: 114, column: 24, scope: !154)
!175 = !DILocation(line: 120, column: 30, scope: !152)
!176 = !DILocation(line: 25, column: 27, scope: !6)
!177 = !DILocation(line: 121, column: 42, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 121, column: 22)
!179 = distinct !DILexicalBlock(scope: !152, file: !1, line: 121, column: 22)
!180 = !DILocation(line: 121, column: 40, scope: !178)
!181 = !DILocation(line: 121, column: 22, scope: !179)
!182 = !DILocation(line: 122, column: 31, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !1, line: 121, column: 57)
!184 = !DILocation(line: 122, column: 26, scope: !183)
!185 = !DILocation(line: 122, column: 41, scope: !183)
!186 = !DILocation(line: 131, column: 39, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 131, column: 19)
!188 = distinct !DILexicalBlock(scope: !154, file: !1, line: 131, column: 19)
!189 = !DILocation(line: 131, column: 37, scope: !187)
!190 = !DILocation(line: 131, column: 19, scope: !188)
!191 = !DILocation(line: 132, column: 32, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 132, column: 27)
!193 = distinct !DILexicalBlock(scope: !187, file: !1, line: 131, column: 54)
!194 = !DILocation(line: 132, column: 27, scope: !192)
!195 = !DILocation(line: 132, column: 42, scope: !192)
!196 = !DILocation(line: 132, column: 27, scope: !193)
!197 = !DILocation(line: 140, column: 27, scope: !198)
!198 = distinct !DILexicalBlock(scope: !154, file: !1, line: 140, column: 24)
!199 = !DILocation(line: 140, column: 24, scope: !154)
!200 = !DILocation(line: 153, column: 33, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 140, column: 38)
!202 = !DILocation(line: 153, column: 31, scope: !201)
!203 = !DILocation(line: 154, column: 22, scope: !201)
!204 = !DILocation(line: 159, column: 15, scope: !205)
!205 = distinct !DILexicalBlock(scope: !131, file: !1, line: 159, column: 15)
!206 = !DILocation(line: 159, column: 24, scope: !205)
!207 = !DILocation(line: 159, column: 15, scope: !131)
!208 = !DILocation(line: 170, column: 29, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 159, column: 32)
!210 = !DILocation(line: 170, column: 22, scope: !209)
!211 = !DILocation(line: 171, column: 10, scope: !209)
!212 = !DILocation(line: 175, column: 1, scope: !6)
!213 = !DILocation(line: 176, column: 1, scope: !6)
!214 = !DILocation(line: 183, column: 1, scope: !6)
