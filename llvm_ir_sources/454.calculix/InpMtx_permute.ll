; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._DV = type { i32, i32, i32, double* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [54 x i8] c"\0A fatal error in InpMtx_permute(%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [78 x i8] c"\0A fatal error in InpMtx_permute(%p,%p,%p)\0A coordType = %d, must be 1, 2 or 3\0A\00", align 1
@.str2 = private unnamed_addr constant [77 x i8] c"\0A fatal error in InpMtx_permute(%p,%p,%p)\0A nent = %d, ivec1 = %p, ivec2 = %p\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @InpMtx_permute(%struct._InpMtx* %inpmtx, i32* %rowOldToNew, i32* %colOldToNew) #0 {
  tail call void @llvm.dbg.value(metadata %struct._InpMtx* %inpmtx, i64 0, metadata !49, metadata !68), !dbg !69
  tail call void @llvm.dbg.value(metadata i32* %rowOldToNew, i64 0, metadata !50, metadata !68), !dbg !70
  tail call void @llvm.dbg.value(metadata i32* %colOldToNew, i64 0, metadata !51, metadata !68), !dbg !71
  %1 = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !72
  br i1 %1, label %2, label %5, !dbg !74

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !75, !tbaa !77
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null, i32* %rowOldToNew, i32* %colOldToNew) #5, !dbg !81
  tail call void @exit(i32 -1) #6, !dbg !82
  unreachable, !dbg !82

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !83
  %7 = load i32* %6, align 4, !dbg !83, !tbaa !85
  %.off = add i32 %7, -1, !dbg !91
  %8 = icmp ugt i32 %.off, 2, !dbg !91
  br i1 %8, label %9, label %12, !dbg !91

; <label>:9                                       ; preds = %5
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !92, !tbaa !77
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32* %rowOldToNew, i32* %colOldToNew, i32 %7) #5, !dbg !94
  tail call void @exit(i32 -1) #6, !dbg !95
  unreachable, !dbg !95

; <label>:12                                      ; preds = %5
  %13 = icmp eq i32* %rowOldToNew, null, !dbg !96
  %14 = icmp eq i32* %colOldToNew, null, !dbg !98
  %or.cond = and i1 %13, %14, !dbg !99
  br i1 %or.cond, label %99, label %15, !dbg !99

; <label>:15                                      ; preds = %12
  %16 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !100
  %17 = load i32* %16, align 4, !dbg !100, !tbaa !102
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !54, metadata !68), !dbg !103
  %18 = icmp eq i32 %17, 0, !dbg !104
  br i1 %18, label %99, label %19, !dbg !105

; <label>:19                                      ; preds = %15
  %20 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #5, !dbg !106
  tail call void @llvm.dbg.value(metadata i32* %20, i64 0, metadata !56, metadata !68), !dbg !107
  %21 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #5, !dbg !108
  tail call void @llvm.dbg.value(metadata i32* %21, i64 0, metadata !57, metadata !68), !dbg !109
  %22 = icmp eq i32* %20, null, !dbg !110
  %23 = icmp eq i32* %21, null, !dbg !112
  %or.cond3 = or i1 %22, %23, !dbg !113
  br i1 %or.cond3, label %24, label %27, !dbg !113

; <label>:24                                      ; preds = %19
  %25 = load %struct.__sFILE** @__stderrp, align 8, !dbg !114, !tbaa !77
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([77 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32* %rowOldToNew, i32* %colOldToNew, i32 %17, i32* %20, i32* %21) #5, !dbg !116
  tail call void @exit(i32 -1) #6, !dbg !117
  unreachable, !dbg !117

; <label>:27                                      ; preds = %19
  %28 = load i32* %6, align 4, !dbg !118, !tbaa !85
  switch i32 %28, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader17
    i32 3, label %.preheader19
  ], !dbg !119

.preheader19:                                     ; preds = %27
  %29 = icmp sgt i32 %17, 0, !dbg !120
  br i1 %29, label %.lr.ph25, label %.loopexit, !dbg !123

.lr.ph25:                                         ; preds = %.preheader19
  %30 = icmp ne i32* %rowOldToNew, null, !dbg !124
  %31 = icmp ne i32* %colOldToNew, null, !dbg !127
  %32 = add i32 %17, -1, !dbg !123
  br label %75, !dbg !123

.preheader17:                                     ; preds = %27
  %33 = icmp sgt i32 %17, 0, !dbg !129
  br i1 %33, label %.lr.ph23, label %.loopexit, !dbg !133

.lr.ph23:                                         ; preds = %.preheader17
  %34 = icmp ne i32* %rowOldToNew, null, !dbg !134
  %35 = icmp ne i32* %colOldToNew, null, !dbg !137
  %36 = add i32 %17, -1, !dbg !133
  br label %58, !dbg !133

.preheader:                                       ; preds = %27
  %37 = icmp sgt i32 %17, 0, !dbg !139
  br i1 %37, label %.lr.ph, label %.loopexit, !dbg !143

.lr.ph:                                           ; preds = %.preheader
  %38 = icmp ne i32* %rowOldToNew, null, !dbg !144
  %39 = icmp ne i32* %colOldToNew, null, !dbg !147
  %40 = add i32 %17, -1, !dbg !143
  br label %41, !dbg !143

; <label>:41                                      ; preds = %57, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %57 ]
  %42 = getelementptr inbounds i32* %20, i64 %indvars.iv, !dbg !149
  %43 = load i32* %42, align 4, !dbg !149, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !55, metadata !68), !dbg !151
  %44 = getelementptr inbounds i32* %21, i64 %indvars.iv, !dbg !152
  %45 = load i32* %44, align 4, !dbg !152, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !52, metadata !68), !dbg !153
  %46 = icmp sgt i32 %43, -1, !dbg !154
  %or.cond5 = and i1 %38, %46, !dbg !155
  br i1 %or.cond5, label %47, label %51, !dbg !155

; <label>:47                                      ; preds = %41
  %48 = sext i32 %43 to i64, !dbg !156
  %49 = getelementptr inbounds i32* %rowOldToNew, i64 %48, !dbg !156
  %50 = load i32* %49, align 4, !dbg !156, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !55, metadata !68), !dbg !151
  br label %51, !dbg !158

; <label>:51                                      ; preds = %47, %41
  %row.0 = phi i32 [ %50, %47 ], [ %43, %41 ]
  %52 = icmp sgt i32 %45, -1, !dbg !159
  %or.cond7 = and i1 %39, %52, !dbg !160
  br i1 %or.cond7, label %53, label %57, !dbg !160

; <label>:53                                      ; preds = %51
  %54 = sext i32 %45 to i64, !dbg !161
  %55 = getelementptr inbounds i32* %colOldToNew, i64 %54, !dbg !161
  %56 = load i32* %55, align 4, !dbg !161, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !52, metadata !68), !dbg !153
  br label %57, !dbg !163

; <label>:57                                      ; preds = %53, %51
  %col.0 = phi i32 [ %56, %53 ], [ %45, %51 ]
  store i32 %row.0, i32* %42, align 4, !dbg !164, !tbaa !150
  store i32 %col.0, i32* %44, align 4, !dbg !165, !tbaa !150
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !143
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !143
  %exitcond = icmp eq i32 %lftr.wideiv, %40, !dbg !143
  br i1 %exitcond, label %.loopexit, label %41, !dbg !143

; <label>:58                                      ; preds = %74, %.lr.ph23
  %indvars.iv26 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next27, %74 ]
  %59 = getelementptr inbounds i32* %20, i64 %indvars.iv26, !dbg !166
  %60 = load i32* %59, align 4, !dbg !166, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !52, metadata !68), !dbg !153
  %61 = getelementptr inbounds i32* %21, i64 %indvars.iv26, !dbg !167
  %62 = load i32* %61, align 4, !dbg !167, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !55, metadata !68), !dbg !151
  %63 = icmp sgt i32 %62, -1, !dbg !168
  %or.cond9 = and i1 %34, %63, !dbg !169
  br i1 %or.cond9, label %64, label %68, !dbg !169

; <label>:64                                      ; preds = %58
  %65 = sext i32 %62 to i64, !dbg !170
  %66 = getelementptr inbounds i32* %rowOldToNew, i64 %65, !dbg !170
  %67 = load i32* %66, align 4, !dbg !170, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !55, metadata !68), !dbg !151
  br label %68, !dbg !172

; <label>:68                                      ; preds = %64, %58
  %row.1 = phi i32 [ %67, %64 ], [ %62, %58 ]
  %69 = icmp sgt i32 %60, -1, !dbg !173
  %or.cond11 = and i1 %35, %69, !dbg !174
  br i1 %or.cond11, label %70, label %74, !dbg !174

; <label>:70                                      ; preds = %68
  %71 = sext i32 %60 to i64, !dbg !175
  %72 = getelementptr inbounds i32* %colOldToNew, i64 %71, !dbg !175
  %73 = load i32* %72, align 4, !dbg !175, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !52, metadata !68), !dbg !153
  br label %74, !dbg !177

; <label>:74                                      ; preds = %70, %68
  %col.1 = phi i32 [ %73, %70 ], [ %60, %68 ]
  store i32 %col.1, i32* %59, align 4, !dbg !178, !tbaa !150
  store i32 %row.1, i32* %61, align 4, !dbg !179, !tbaa !150
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !133
  %lftr.wideiv28 = trunc i64 %indvars.iv26 to i32, !dbg !133
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %36, !dbg !133
  br i1 %exitcond29, label %.loopexit, label %58, !dbg !133

; <label>:75                                      ; preds = %94, %.lr.ph25
  %indvars.iv30 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next31, %94 ]
  %76 = getelementptr inbounds i32* %20, i64 %indvars.iv30, !dbg !180
  %77 = load i32* %76, align 4, !dbg !180, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !58, metadata !68), !dbg !181
  %78 = getelementptr inbounds i32* %21, i64 %indvars.iv30, !dbg !182
  %79 = load i32* %78, align 4, !dbg !182, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !63, metadata !68), !dbg !183
  %80 = icmp sgt i32 %79, -1, !dbg !184
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !55, metadata !68), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !52, metadata !68), !dbg !153
  %81 = select i1 %80, i32 0, i32 %79, !dbg !186
  %row.2 = sub nsw i32 %77, %81, !dbg !186
  %82 = select i1 %80, i32 %79, i32 0, !dbg !186
  %col.2 = add nsw i32 %82, %77, !dbg !186
  %83 = icmp sgt i32 %row.2, -1, !dbg !187
  %or.cond13 = and i1 %30, %83, !dbg !188
  br i1 %or.cond13, label %84, label %88, !dbg !188

; <label>:84                                      ; preds = %75
  %85 = sext i32 %row.2 to i64, !dbg !189
  %86 = getelementptr inbounds i32* %rowOldToNew, i64 %85, !dbg !189
  %87 = load i32* %86, align 4, !dbg !189, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !55, metadata !68), !dbg !151
  br label %88, !dbg !191

; <label>:88                                      ; preds = %84, %75
  %row.3 = phi i32 [ %87, %84 ], [ %row.2, %75 ]
  %89 = icmp sgt i32 %col.2, -1, !dbg !192
  %or.cond15 = and i1 %31, %89, !dbg !193
  br i1 %or.cond15, label %90, label %94, !dbg !193

; <label>:90                                      ; preds = %88
  %91 = sext i32 %col.2 to i64, !dbg !194
  %92 = getelementptr inbounds i32* %colOldToNew, i64 %91, !dbg !194
  %93 = load i32* %92, align 4, !dbg !194, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !52, metadata !68), !dbg !153
  br label %94, !dbg !196

; <label>:94                                      ; preds = %90, %88
  %col.3 = phi i32 [ %93, %90 ], [ %col.2, %88 ]
  %95 = icmp sle i32 %col.3, %row.3, !dbg !197
  %96 = select i1 %95, i32 %col.3, i32 %row.3, !dbg !198
  store i32 %96, i32* %76, align 4, !dbg !199, !tbaa !150
  %97 = sub nsw i32 %col.3, %row.3, !dbg !200
  store i32 %97, i32* %78, align 4, !dbg !201, !tbaa !150
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !dbg !123
  %lftr.wideiv32 = trunc i64 %indvars.iv30 to i32, !dbg !123
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %32, !dbg !123
  br i1 %exitcond33, label %.loopexit, label %75, !dbg !123

.loopexit:                                        ; preds = %94, %74, %57, %.preheader19, %.preheader17, %.preheader, %27
  %98 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !202
  store i32 1, i32* %98, align 4, !dbg !203, !tbaa !204
  br label %99, !dbg !205

; <label>:99                                      ; preds = %15, %12, %.loopexit
  ret void, !dbg !206
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @InpMtx_ivec1(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_ivec2(%struct._InpMtx*) #3

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
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "InpMtx_permute", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._InpMtx*, i32*, i32*)* @InpMtx_permute, variables: !48)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !31, !31}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "InpMtx", file: !11, line: 51, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../InpMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_InpMtx", file: !11, line: 52, size: 1472, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !22, !32, !33, !43, !44, !45, !46, !47}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "coordType", scope: !12, file: !11, line: 53, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "storageMode", scope: !12, file: !11, line: 54, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "inputMode", scope: !12, file: !11, line: 55, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "maxnent", scope: !12, file: !11, line: 56, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !12, file: !11, line: 57, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "resizeMultiple", scope: !12, file: !11, line: 58, baseType: !21, size: 64, align: 64, offset: 192)
!21 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ivec1IV", scope: !12, file: !11, line: 59, baseType: !23, size: 192, align: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !24, line: 20, baseType: !25)
!24 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !24, line: 21, size: 192, align: 64, elements: !26)
!26 = !{!27, !28, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !25, file: !24, line: 22, baseType: !15, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !25, file: !24, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !25, file: !24, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !25, file: !24, line: 25, baseType: !31, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ivec2IV", scope: !12, file: !11, line: 60, baseType: !23, size: 192, align: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dvecDV", scope: !12, file: !11, line: 61, baseType: !34, size: 192, align: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !35, line: 20, baseType: !36)
!35 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !35, line: 21, size: 192, align: 64, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !36, file: !35, line: 22, baseType: !15, size: 32, align: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !36, file: !35, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !36, file: !35, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !36, file: !35, line: 25, baseType: !42, size: 64, align: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "maxnvector", scope: !12, file: !11, line: 62, baseType: !15, size: 32, align: 32, offset: 832)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nvector", scope: !12, file: !11, line: 63, baseType: !15, size: 32, align: 32, offset: 864)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "vecidsIV", scope: !12, file: !11, line: 64, baseType: !23, size: 192, align: 64, offset: 896)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "sizesIV", scope: !12, file: !11, line: 65, baseType: !23, size: 192, align: 64, offset: 1088)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsIV", scope: !12, file: !11, line: 66, baseType: !23, size: 192, align: 64, offset: 1280)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !63}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtx", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rowOldToNew", arg: 2, scope: !6, file: !1, line: 16, type: !31)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colOldToNew", arg: 3, scope: !6, file: !1, line: 17, type: !31)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !6, file: !1, line: 19, type: !15)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !6, file: !1, line: 19, type: !15)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nent", scope: !6, file: !1, line: 19, type: !15)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row", scope: !6, file: !1, line: 19, type: !15)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivec1", scope: !6, file: !1, line: 20, type: !31)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivec2", scope: !6, file: !1, line: 20, type: !31)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chv", scope: !59, file: !1, line: 84, type: !15)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 83, column: 45)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 83, column: 13)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 72, column: 13)
!62 = distinct !DILexicalBlock(scope: !6, file: !1, line: 61, column: 6)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "off", scope: !59, file: !1, line: 84, type: !15)
!64 = !{i32 2, !"Dwarf Version", i32 2}
!65 = !{i32 2, !"Debug Info Version", i32 700000003}
!66 = !{i32 1, !"PIC Level", i32 2}
!67 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!68 = !DIExpression()
!69 = !DILocation(line: 15, column: 14, scope: !6)
!70 = !DILocation(line: 16, column: 14, scope: !6)
!71 = !DILocation(line: 17, column: 14, scope: !6)
!72 = !DILocation(line: 26, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !6, file: !1, line: 26, column: 6)
!74 = !DILocation(line: 26, column: 6, scope: !6)
!75 = !DILocation(line: 27, column: 12, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 26, column: 23)
!77 = !{!78, !78, i64 0}
!78 = !{!"any pointer", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !DILocation(line: 27, column: 4, scope: !76)
!82 = !DILocation(line: 29, column: 4, scope: !76)
!83 = !DILocation(line: 31, column: 14, scope: !84)
!84 = distinct !DILexicalBlock(scope: !6, file: !1, line: 31, column: 6)
!85 = !{!86, !87, i64 0}
!86 = !{!"_InpMtx", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12, !87, i64 16, !88, i64 24, !89, i64 32, !89, i64 56, !90, i64 80, !87, i64 104, !87, i64 108, !89, i64 112, !89, i64 136, !89, i64 160}
!87 = !{!"int", !79, i64 0}
!88 = !{!"double", !79, i64 0}
!89 = !{!"_IV", !87, i64 0, !87, i64 4, !87, i64 8, !78, i64 16}
!90 = !{!"_DV", !87, i64 0, !87, i64 4, !87, i64 8, !78, i64 16}
!91 = !DILocation(line: 31, column: 29, scope: !84)
!92 = !DILocation(line: 32, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !84, file: !1, line: 31, column: 57)
!94 = !DILocation(line: 32, column: 4, scope: !93)
!95 = !DILocation(line: 35, column: 4, scope: !93)
!96 = !DILocation(line: 42, column: 18, scope: !97)
!97 = distinct !DILexicalBlock(scope: !6, file: !1, line: 42, column: 6)
!98 = !DILocation(line: 42, column: 41, scope: !97)
!99 = !DILocation(line: 42, column: 26, scope: !97)
!100 = !DILocation(line: 45, column: 22, scope: !101)
!101 = distinct !DILexicalBlock(scope: !6, file: !1, line: 45, column: 6)
!102 = !{!86, !87, i64 16}
!103 = !DILocation(line: 19, column: 19, scope: !6)
!104 = !DILocation(line: 45, column: 28, scope: !101)
!105 = !DILocation(line: 45, column: 6, scope: !6)
!106 = !DILocation(line: 48, column: 9, scope: !6)
!107 = !DILocation(line: 20, column: 11, scope: !6)
!108 = !DILocation(line: 49, column: 9, scope: !6)
!109 = !DILocation(line: 20, column: 19, scope: !6)
!110 = !DILocation(line: 50, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !6, file: !1, line: 50, column: 6)
!112 = !DILocation(line: 50, column: 29, scope: !111)
!113 = !DILocation(line: 50, column: 20, scope: !111)
!114 = !DILocation(line: 51, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 50, column: 39)
!116 = !DILocation(line: 51, column: 4, scope: !115)
!117 = !DILocation(line: 54, column: 4, scope: !115)
!118 = !DILocation(line: 61, column: 6, scope: !62)
!119 = !DILocation(line: 61, column: 6, scope: !6)
!120 = !DILocation(line: 86, column: 22, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 86, column: 4)
!122 = distinct !DILexicalBlock(scope: !59, file: !1, line: 86, column: 4)
!123 = !DILocation(line: 86, column: 4, scope: !122)
!124 = !DILocation(line: 93, column: 36, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 93, column: 12)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 86, column: 38)
!127 = !DILocation(line: 96, column: 36, scope: !128)
!128 = distinct !DILexicalBlock(scope: !126, file: !1, line: 96, column: 12)
!129 = !DILocation(line: 73, column: 22, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 73, column: 4)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 73, column: 4)
!132 = distinct !DILexicalBlock(scope: !61, file: !1, line: 72, column: 44)
!133 = !DILocation(line: 73, column: 4, scope: !131)
!134 = !DILocation(line: 75, column: 36, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 75, column: 12)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 73, column: 38)
!137 = !DILocation(line: 78, column: 36, scope: !138)
!138 = distinct !DILexicalBlock(scope: !136, file: !1, line: 78, column: 12)
!139 = !DILocation(line: 62, column: 22, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 62, column: 4)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 62, column: 4)
!142 = distinct !DILexicalBlock(scope: !62, file: !1, line: 61, column: 34)
!143 = !DILocation(line: 62, column: 4, scope: !141)
!144 = !DILocation(line: 64, column: 36, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !1, line: 64, column: 12)
!146 = distinct !DILexicalBlock(scope: !140, file: !1, line: 62, column: 38)
!147 = !DILocation(line: 67, column: 36, scope: !148)
!148 = distinct !DILexicalBlock(scope: !146, file: !1, line: 67, column: 12)
!149 = !DILocation(line: 63, column: 13, scope: !146)
!150 = !{!87, !87, i64 0}
!151 = !DILocation(line: 19, column: 25, scope: !6)
!152 = !DILocation(line: 63, column: 31, scope: !146)
!153 = !DILocation(line: 19, column: 10, scope: !6)
!154 = !DILocation(line: 64, column: 14, scope: !145)
!155 = !DILocation(line: 64, column: 21, scope: !145)
!156 = !DILocation(line: 65, column: 16, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !1, line: 64, column: 46)
!158 = !DILocation(line: 66, column: 7, scope: !157)
!159 = !DILocation(line: 67, column: 14, scope: !148)
!160 = !DILocation(line: 67, column: 21, scope: !148)
!161 = !DILocation(line: 68, column: 16, scope: !162)
!162 = distinct !DILexicalBlock(scope: !148, file: !1, line: 67, column: 46)
!163 = !DILocation(line: 69, column: 7, scope: !162)
!164 = !DILocation(line: 70, column: 17, scope: !146)
!165 = !DILocation(line: 70, column: 35, scope: !146)
!166 = !DILocation(line: 74, column: 13, scope: !136)
!167 = !DILocation(line: 74, column: 31, scope: !136)
!168 = !DILocation(line: 75, column: 14, scope: !135)
!169 = !DILocation(line: 75, column: 21, scope: !135)
!170 = !DILocation(line: 76, column: 16, scope: !171)
!171 = distinct !DILexicalBlock(scope: !135, file: !1, line: 75, column: 46)
!172 = !DILocation(line: 77, column: 7, scope: !171)
!173 = !DILocation(line: 78, column: 14, scope: !138)
!174 = !DILocation(line: 78, column: 21, scope: !138)
!175 = !DILocation(line: 79, column: 16, scope: !176)
!176 = distinct !DILexicalBlock(scope: !138, file: !1, line: 78, column: 46)
!177 = !DILocation(line: 80, column: 7, scope: !176)
!178 = !DILocation(line: 81, column: 17, scope: !136)
!179 = !DILocation(line: 81, column: 35, scope: !136)
!180 = !DILocation(line: 87, column: 13, scope: !126)
!181 = !DILocation(line: 84, column: 10, scope: !59)
!182 = !DILocation(line: 87, column: 31, scope: !126)
!183 = !DILocation(line: 84, column: 15, scope: !59)
!184 = !DILocation(line: 88, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !126, file: !1, line: 88, column: 12)
!186 = !DILocation(line: 88, column: 12, scope: !126)
!187 = !DILocation(line: 93, column: 14, scope: !125)
!188 = !DILocation(line: 93, column: 21, scope: !125)
!189 = !DILocation(line: 94, column: 16, scope: !190)
!190 = distinct !DILexicalBlock(scope: !125, file: !1, line: 93, column: 46)
!191 = !DILocation(line: 95, column: 7, scope: !190)
!192 = !DILocation(line: 96, column: 14, scope: !128)
!193 = !DILocation(line: 96, column: 21, scope: !128)
!194 = !DILocation(line: 97, column: 16, scope: !195)
!195 = distinct !DILexicalBlock(scope: !128, file: !1, line: 96, column: 46)
!196 = !DILocation(line: 98, column: 7, scope: !195)
!197 = !DILocation(line: 99, column: 24, scope: !126)
!198 = !DILocation(line: 99, column: 19, scope: !126)
!199 = !DILocation(line: 99, column: 17, scope: !126)
!200 = !DILocation(line: 100, column: 23, scope: !126)
!201 = !DILocation(line: 100, column: 17, scope: !126)
!202 = !DILocation(line: 108, column: 9, scope: !6)
!203 = !DILocation(line: 108, column: 21, scope: !6)
!204 = !{!86, !87, i64 4}
!205 = !DILocation(line: 110, column: 1, scope: !6)
!206 = !DILocation(line: 110, column: 10, scope: !6)
