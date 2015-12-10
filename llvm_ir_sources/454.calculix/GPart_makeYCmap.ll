; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_makeYCmap.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct.__sFILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in GPart_makeYCmap(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"\0A YVmapIV\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @GPart_makeYCmap(%struct._GPart* %gpart, %struct._IV* %YVmapIV) #0 {
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._GPart* %gpart, i64 0, metadata !137, metadata !157), !dbg !158
  tail call void @llvm.dbg.value(metadata %struct._IV* %YVmapIV, i64 0, metadata !138, metadata !157), !dbg !159
  %1 = icmp eq %struct._GPart* %gpart, null, !dbg !160
  br i1 %1, label %17, label %2, !dbg !162

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1, !dbg !163
  %4 = load %struct._Graph** %3, align 8, !dbg !163, !tbaa !164
  tail call void @llvm.dbg.value(metadata %struct._Graph* %4, i64 0, metadata !139, metadata !157), !dbg !171
  %5 = icmp eq %struct._Graph* %4, null, !dbg !172
  br i1 %5, label %17, label %6, !dbg !173

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2, !dbg !174
  %8 = load i32* %7, align 4, !dbg !174, !tbaa !175
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !141, metadata !157), !dbg !176
  %9 = icmp slt i32 %8, 1, !dbg !177
  %10 = icmp eq %struct._IV* %YVmapIV, null, !dbg !178
  %or.cond = or i1 %10, %9, !dbg !179
  br i1 %or.cond, label %17, label %11, !dbg !179

; <label>:11                                      ; preds = %6
  %12 = tail call i32 @IV_size(%struct._IV* %YVmapIV) #6, !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !142, metadata !157), !dbg !181
  %13 = icmp slt i32 %12, 1, !dbg !182
  br i1 %13, label %17, label %14, !dbg !183

; <label>:14                                      ; preds = %11
  %15 = tail call i32* @IV_entries(%struct._IV* %YVmapIV) #6, !dbg !184
  tail call void @llvm.dbg.value(metadata i32* %15, i64 0, metadata !151, metadata !157), !dbg !185
  %16 = icmp eq i32* %15, null, !dbg !186
  br i1 %16, label %17, label %.lr.ph7, !dbg !187

; <label>:17                                      ; preds = %14, %11, %6, %2, %0
  %18 = load %struct.__sFILE** @__stderrp, align 8, !dbg !188, !tbaa !190
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, %struct._IV* %YVmapIV) #6, !dbg !191
  %20 = icmp eq %struct._IV* %YVmapIV, null, !dbg !192
  br i1 %20, label %26, label %21, !dbg !194

; <label>:21                                      ; preds = %17
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !195, !tbaa !190
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %22), !dbg !197
  %24 = load %struct.__sFILE** @__stderrp, align 8, !dbg !198, !tbaa !190
  %25 = tail call i32 @IV_writeForHumanEye(%struct._IV* %YVmapIV, %struct.__sFILE* %24) #6, !dbg !199
  br label %26, !dbg !200

; <label>:26                                      ; preds = %17, %21
  tail call void @exit(i32 -1) #7, !dbg !201
  unreachable, !dbg !201

.lr.ph7:                                          ; preds = %14
  %27 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5, !dbg !202
  %28 = tail call i32* @IV_entries(%struct._IV* %27) #6, !dbg !203
  tail call void @llvm.dbg.value(metadata i32* %28, i64 0, metadata !147, metadata !157), !dbg !204
  %29 = tail call i32* @IVinit(i32 %8, i32 -1) #6, !dbg !205
  tail call void @llvm.dbg.value(metadata i32* %29, i64 0, metadata !149, metadata !157), !dbg !206
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !146, metadata !157), !dbg !207
  %30 = add i32 %12, -1, !dbg !208
  br label %31, !dbg !208

; <label>:31                                      ; preds = %31, %.lr.ph7
  %indvars.iv11 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next12, %31 ]
  %32 = getelementptr inbounds i32* %15, i64 %indvars.iv11, !dbg !210
  %33 = load i32* %32, align 4, !dbg !210, !tbaa !213
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !143, metadata !157), !dbg !214
  %34 = sext i32 %33 to i64, !dbg !215
  %35 = getelementptr inbounds i32* %29, i64 %34, !dbg !215
  %36 = trunc i64 %indvars.iv11 to i32, !dbg !216
  store i32 %36, i32* %35, align 4, !dbg !216, !tbaa !213
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !208
  %exitcond14 = icmp eq i32 %36, %30, !dbg !208
  br i1 %exitcond14, label %._crit_edge8, label %31, !dbg !208

._crit_edge8:                                     ; preds = %31
  %37 = tail call %struct._IV* @IV_new() #6, !dbg !217
  tail call void @llvm.dbg.value(metadata %struct._IV* %37, i64 0, metadata !152, metadata !157), !dbg !218
  tail call void @IV_init(%struct._IV* %37, i32 %12, i32* null) #6, !dbg !219
  %38 = tail call i32* @IV_entries(%struct._IV* %37) #6, !dbg !220
  tail call void @llvm.dbg.value(metadata i32* %38, i64 0, metadata !150, metadata !157), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !146, metadata !157), !dbg !207
  %39 = add i32 %12, -1, !dbg !222
  br label %40, !dbg !222

; <label>:40                                      ; preds = %.loopexit, %._crit_edge8
  %indvars.iv9 = phi i64 [ 0, %._crit_edge8 ], [ %indvars.iv.next10, %.loopexit ]
  %41 = getelementptr inbounds i32* %38, i64 %indvars.iv9, !dbg !224
  store i32 0, i32* %41, align 4, !dbg !227, !tbaa !213
  %42 = getelementptr inbounds i32* %15, i64 %indvars.iv9, !dbg !228
  %43 = load i32* %42, align 4, !dbg !228, !tbaa !213
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !143, metadata !157), !dbg !214
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !144, metadata !157), !dbg !229
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !148, metadata !157), !dbg !230
  call void @Graph_adjAndSize(%struct._Graph* %4, i32 %43, i32* %vsize, i32** %vadj) #6, !dbg !231
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !140, metadata !157), !dbg !232
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !144, metadata !157), !dbg !229
  %44 = load i32* %vsize, align 4, !dbg !233, !tbaa !213
  %45 = icmp sgt i32 %44, 0, !dbg !236
  br i1 %45, label %.lr.ph, label %.loopexit, !dbg !237

.lr.ph:                                           ; preds = %40
  %46 = load i32** %vadj, align 8, !dbg !238, !tbaa !190
  br label %47, !dbg !237

; <label>:47                                      ; preds = %.lr.ph, %69
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %69 ]
  call void @llvm.dbg.value(metadata i32** %vadj, i64 0, metadata !148, metadata !157), !dbg !230
  %48 = getelementptr inbounds i32* %46, i64 %indvars.iv, !dbg !238
  %49 = load i32* %48, align 4, !dbg !238, !tbaa !213
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !145, metadata !157), !dbg !240
  %50 = icmp slt i32 %49, %8, !dbg !241
  br i1 %50, label %51, label %69, !dbg !243

; <label>:51                                      ; preds = %47
  %52 = sext i32 %49 to i64, !dbg !244
  %53 = getelementptr inbounds i32* %29, i64 %52, !dbg !244
  %54 = load i32* %53, align 4, !dbg !244, !tbaa !213
  %55 = icmp eq i32 %54, -1, !dbg !245
  br i1 %55, label %56, label %69, !dbg !246

; <label>:56                                      ; preds = %51
  %57 = getelementptr inbounds i32* %28, i64 %52, !dbg !247
  %58 = load i32* %57, align 4, !dbg !247, !tbaa !213
  switch i32 %58, label %69 [
    i32 1, label %59
    i32 2, label %64
  ], !dbg !250

; <label>:59                                      ; preds = %56
  %60 = load i32* %41, align 4, !dbg !251, !tbaa !213
  %61 = icmp eq i32 %60, 2, !dbg !254
  br i1 %61, label %62, label %63, !dbg !255

; <label>:62                                      ; preds = %59
  store i32 3, i32* %41, align 4, !dbg !256, !tbaa !213
  br label %.loopexit, !dbg !258

; <label>:63                                      ; preds = %59
  store i32 1, i32* %41, align 4, !dbg !259, !tbaa !213
  br label %69, !dbg !261

; <label>:64                                      ; preds = %56
  %65 = load i32* %41, align 4, !dbg !262, !tbaa !213
  %66 = icmp eq i32 %65, 1, !dbg !266
  br i1 %66, label %67, label %68, !dbg !267

; <label>:67                                      ; preds = %64
  store i32 3, i32* %41, align 4, !dbg !268, !tbaa !213
  br label %.loopexit, !dbg !270

; <label>:68                                      ; preds = %64
  store i32 2, i32* %41, align 4, !dbg !271, !tbaa !213
  br label %69, !dbg !273

; <label>:69                                      ; preds = %56, %47, %51, %68, %63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !237
  call void @llvm.dbg.value(metadata i32* %vsize, i64 0, metadata !144, metadata !157), !dbg !229
  %70 = load i32* %vsize, align 4, !dbg !233, !tbaa !213
  %71 = sext i32 %70 to i64, !dbg !236
  %72 = icmp slt i64 %indvars.iv.next, %71, !dbg !236
  br i1 %72, label %47, label %.loopexit, !dbg !237

.loopexit:                                        ; preds = %69, %40, %62, %67
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !222
  %lftr.wideiv = trunc i64 %indvars.iv9 to i32, !dbg !222
  %exitcond = icmp eq i32 %lftr.wideiv, %39, !dbg !222
  br i1 %exitcond, label %._crit_edge, label %40, !dbg !222

._crit_edge:                                      ; preds = %.loopexit
  call void @IVfree(i32* %29) #6, !dbg !274
  ret %struct._IV* %37, !dbg !275
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #1

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct.__sFILE*) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #1

; Function Attrs: optsize
declare %struct._IV* @IV_new() #1

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #1

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #1

; Function Attrs: optsize
declare void @IVfree(i32*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!153, !154, !155}
!llvm.ident = !{!156}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_makeYCmap.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "GPart_makeYCmap", scope: !1, file: !1, line: 20, type: !7, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._GPart*, %struct._IV*)* @GPart_makeYCmap, variables: !136)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !20, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !11, line: 21, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !11, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPart", file: !22, line: 37, baseType: !23)
!22 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../GPart.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GPart", file: !22, line: 38, size: 1152, align: 64, elements: !24)
!24 = !{!25, !26, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !23, file: !22, line: 39, baseType: !15, size: 32, align: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !23, file: !22, line: 40, baseType: !27, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !29, line: 49, baseType: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !29, line: 50, size: 384, align: 64, elements: !31)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !61, !62}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !29, line: 51, baseType: !15, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !30, file: !29, line: 52, baseType: !15, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !30, file: !29, line: 53, baseType: !15, size: 32, align: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !30, file: !29, line: 54, baseType: !15, size: 32, align: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !30, file: !29, line: 55, baseType: !15, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !30, file: !29, line: 56, baseType: !15, size: 32, align: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !30, file: !29, line: 57, baseType: !39, size: 64, align: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !41, line: 55, baseType: !42)
!41 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !41, line: 79, size: 384, align: 64, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !51, !52}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !41, line: 80, baseType: !15, size: 32, align: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !42, file: !41, line: 81, baseType: !15, size: 32, align: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !42, file: !41, line: 82, baseType: !15, size: 32, align: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !42, file: !41, line: 83, baseType: !15, size: 32, align: 32, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !42, file: !41, line: 84, baseType: !19, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !42, file: !41, line: 85, baseType: !50, size: 64, align: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !42, file: !41, line: 86, baseType: !15, size: 32, align: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !42, file: !41, line: 87, baseType: !53, size: 64, align: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !41, line: 56, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !41, line: 102, size: 192, align: 64, elements: !56)
!56 = !{!57, !58, !59, !60}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !55, file: !41, line: 103, baseType: !15, size: 32, align: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !55, file: !41, line: 104, baseType: !15, size: 32, align: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !55, file: !41, line: 105, baseType: !19, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !55, file: !41, line: 106, baseType: !53, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !30, file: !29, line: 58, baseType: !19, size: 64, align: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !30, file: !29, line: 59, baseType: !39, size: 64, align: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !23, file: !22, line: 41, baseType: !15, size: 32, align: 32, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !23, file: !22, line: 42, baseType: !15, size: 32, align: 32, offset: 160)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ncomp", scope: !23, file: !22, line: 43, baseType: !15, size: 32, align: 32, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "compidsIV", scope: !23, file: !22, line: 44, baseType: !10, size: 192, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "cweightsIV", scope: !23, file: !22, line: 45, baseType: !10, size: 192, align: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !23, file: !22, line: 46, baseType: !20, size: 64, align: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !23, file: !22, line: 47, baseType: !20, size: 64, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !23, file: !22, line: 48, baseType: !20, size: 64, align: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "vtxMapIV", scope: !23, file: !22, line: 49, baseType: !10, size: 192, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !23, file: !22, line: 50, baseType: !15, size: 32, align: 32, offset: 1024)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !23, file: !22, line: 51, baseType: !74, size: 64, align: 64, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 153, baseType: !77)
!76 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !76, line: 122, size: 1216, align: 64, elements: !78)
!78 = !{!79, !82, !83, !84, !86, !87, !92, !93, !94, !98, !104, !114, !120, !121, !124, !125, !129, !133, !134, !135}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !77, file: !76, line: 123, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !77, file: !76, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !77, file: !76, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !77, file: !76, line: 126, baseType: !85, size: 16, align: 16, offset: 128)
!85 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !77, file: !76, line: 127, baseType: !85, size: 16, align: 16, offset: 144)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !77, file: !76, line: 128, baseType: !88, size: 128, align: 64, offset: 192)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !76, line: 88, size: 128, align: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !88, file: !76, line: 89, baseType: !80, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !88, file: !76, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !77, file: !76, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !77, file: !76, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !77, file: !76, line: 133, baseType: !95, size: 64, align: 64, offset: 448)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!15, !4}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !77, file: !76, line: 134, baseType: !99, size: 64, align: 64, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!15, !4, !102, !15}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !77, file: !76, line: 135, baseType: !105, size: 64, align: 64, offset: 576)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !4, !108, !15}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !76, line: 77, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !110, line: 71, baseType: !111)
!110 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !112, line: 46, baseType: !113)
!112 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!113 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !77, file: !76, line: 136, baseType: !115, size: 64, align: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!15, !4, !118, !15}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !77, file: !76, line: 139, baseType: !88, size: 128, align: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !77, file: !76, line: 140, baseType: !122, size: 64, align: 64, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !76, line: 94, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !77, file: !76, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !77, file: !76, line: 144, baseType: !126, size: 24, align: 8, offset: 928)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 24, align: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 3)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !77, file: !76, line: 145, baseType: !130, size: 8, align: 8, offset: 952)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 8, align: 8, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 1)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !77, file: !76, line: 148, baseType: !88, size: 128, align: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !77, file: !76, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !77, file: !76, line: 152, baseType: !108, size: 64, align: 64, offset: 1152)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gpart", arg: 1, scope: !6, file: !1, line: 21, type: !20)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "YVmapIV", arg: 2, scope: !6, file: !1, line: 22, type: !9)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !6, file: !1, line: 24, type: !27)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !6, file: !1, line: 25, type: !15)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !6, file: !1, line: 25, type: !15)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nY", scope: !6, file: !1, line: 25, type: !15)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !6, file: !1, line: 25, type: !15)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsize", scope: !6, file: !1, line: 25, type: !15)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !6, file: !1, line: 25, type: !15)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !6, file: !1, line: 25, type: !15)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compids", scope: !6, file: !1, line: 26, type: !19)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vadj", scope: !6, file: !1, line: 26, type: !19)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "VYmap", scope: !6, file: !1, line: 26, type: !19)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "YCmap", scope: !6, file: !1, line: 26, type: !19)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "YVmap", scope: !6, file: !1, line: 26, type: !19)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "YCmapIV", scope: !6, file: !1, line: 27, type: !9)
!153 = !{i32 2, !"Dwarf Version", i32 2}
!154 = !{i32 2, !"Debug Info Version", i32 700000003}
!155 = !{i32 1, !"PIC Level", i32 2}
!156 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!157 = !DIExpression()
!158 = !DILocation(line: 21, column: 13, scope: !6)
!159 = !DILocation(line: 22, column: 13, scope: !6)
!160 = !DILocation(line: 33, column: 12, scope: !161)
!161 = distinct !DILexicalBlock(scope: !6, file: !1, line: 33, column: 6)
!162 = !DILocation(line: 33, column: 20, scope: !161)
!163 = !DILocation(line: 33, column: 35, scope: !161)
!164 = !{!165, !169, i64 8}
!165 = !{!"_GPart", !166, i64 0, !169, i64 8, !166, i64 16, !166, i64 20, !166, i64 24, !170, i64 32, !170, i64 56, !169, i64 80, !169, i64 88, !169, i64 96, !170, i64 104, !166, i64 128, !169, i64 136}
!166 = !{!"int", !167, i64 0}
!167 = !{!"omnipotent char", !168, i64 0}
!168 = !{!"Simple C/C++ TBAA"}
!169 = !{!"any pointer", !167, i64 0}
!170 = !{!"_IV", !166, i64 0, !166, i64 4, !166, i64 8, !169, i64 16}
!171 = !DILocation(line: 24, column: 10, scope: !6)
!172 = !DILocation(line: 33, column: 38, scope: !161)
!173 = !DILocation(line: 34, column: 4, scope: !161)
!174 = !DILocation(line: 34, column: 22, scope: !161)
!175 = !{!165, !166, i64 16}
!176 = !DILocation(line: 25, column: 13, scope: !6)
!177 = !DILocation(line: 34, column: 28, scope: !161)
!178 = !DILocation(line: 35, column: 15, scope: !161)
!179 = !DILocation(line: 35, column: 4, scope: !161)
!180 = !DILocation(line: 35, column: 32, scope: !161)
!181 = !DILocation(line: 25, column: 19, scope: !6)
!182 = !DILocation(line: 35, column: 50, scope: !161)
!183 = !DILocation(line: 36, column: 4, scope: !161)
!184 = !DILocation(line: 36, column: 16, scope: !161)
!185 = !DILocation(line: 26, column: 43, scope: !6)
!186 = !DILocation(line: 36, column: 37, scope: !161)
!187 = !DILocation(line: 33, column: 6, scope: !6)
!188 = !DILocation(line: 37, column: 12, scope: !189)
!189 = distinct !DILexicalBlock(scope: !161, file: !1, line: 36, column: 47)
!190 = !{!169, !169, i64 0}
!191 = !DILocation(line: 37, column: 4, scope: !189)
!192 = !DILocation(line: 39, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 39, column: 9)
!194 = !DILocation(line: 39, column: 9, scope: !189)
!195 = !DILocation(line: 40, column: 15, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !1, line: 39, column: 27)
!197 = !DILocation(line: 40, column: 7, scope: !196)
!198 = !DILocation(line: 41, column: 36, scope: !196)
!199 = !DILocation(line: 41, column: 7, scope: !196)
!200 = !DILocation(line: 42, column: 4, scope: !196)
!201 = !DILocation(line: 43, column: 4, scope: !189)
!202 = !DILocation(line: 45, column: 30, scope: !6)
!203 = !DILocation(line: 45, column: 11, scope: !6)
!204 = !DILocation(line: 26, column: 10, scope: !6)
!205 = !DILocation(line: 51, column: 9, scope: !6)
!206 = !DILocation(line: 26, column: 27, scope: !6)
!207 = !DILocation(line: 25, column: 36, scope: !6)
!208 = !DILocation(line: 52, column: 1, scope: !209)
!209 = distinct !DILexicalBlock(scope: !6, file: !1, line: 52, column: 1)
!210 = !DILocation(line: 53, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 52, column: 30)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 52, column: 1)
!213 = !{!166, !166, i64 0}
!214 = !DILocation(line: 25, column: 23, scope: !6)
!215 = !DILocation(line: 54, column: 4, scope: !211)
!216 = !DILocation(line: 54, column: 13, scope: !211)
!217 = !DILocation(line: 61, column: 11, scope: !6)
!218 = !DILocation(line: 27, column: 10, scope: !6)
!219 = !DILocation(line: 62, column: 1, scope: !6)
!220 = !DILocation(line: 63, column: 9, scope: !6)
!221 = !DILocation(line: 26, column: 35, scope: !6)
!222 = !DILocation(line: 69, column: 1, scope: !223)
!223 = distinct !DILexicalBlock(scope: !6, file: !1, line: 69, column: 1)
!224 = !DILocation(line: 70, column: 4, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 69, column: 30)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 69, column: 1)
!227 = !DILocation(line: 70, column: 13, scope: !225)
!228 = !DILocation(line: 71, column: 8, scope: !225)
!229 = !DILocation(line: 25, column: 26, scope: !6)
!230 = !DILocation(line: 26, column: 20, scope: !6)
!231 = !DILocation(line: 72, column: 4, scope: !225)
!232 = !DILocation(line: 25, column: 9, scope: !6)
!233 = !DILocation(line: 73, column: 24, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 73, column: 4)
!235 = distinct !DILexicalBlock(scope: !225, file: !1, line: 73, column: 4)
!236 = !DILocation(line: 73, column: 22, scope: !234)
!237 = !DILocation(line: 73, column: 4, scope: !235)
!238 = !DILocation(line: 74, column: 11, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !1, line: 73, column: 39)
!240 = !DILocation(line: 25, column: 33, scope: !6)
!241 = !DILocation(line: 75, column: 14, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 75, column: 12)
!243 = !DILocation(line: 75, column: 21, scope: !242)
!244 = !DILocation(line: 75, column: 24, scope: !242)
!245 = !DILocation(line: 75, column: 33, scope: !242)
!246 = !DILocation(line: 75, column: 12, scope: !239)
!247 = !DILocation(line: 81, column: 15, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 81, column: 15)
!249 = distinct !DILexicalBlock(scope: !242, file: !1, line: 75, column: 41)
!250 = !DILocation(line: 81, column: 15, scope: !249)
!251 = !DILocation(line: 87, column: 18, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 87, column: 18)
!253 = distinct !DILexicalBlock(scope: !248, file: !1, line: 81, column: 33)
!254 = !DILocation(line: 87, column: 27, scope: !252)
!255 = !DILocation(line: 87, column: 18, scope: !253)
!256 = !DILocation(line: 94, column: 25, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !1, line: 87, column: 34)
!258 = !DILocation(line: 95, column: 16, scope: !257)
!259 = !DILocation(line: 102, column: 25, scope: !260)
!260 = distinct !DILexicalBlock(scope: !252, file: !1, line: 96, column: 20)
!261 = !DILocation(line: 104, column: 10, scope: !253)
!262 = !DILocation(line: 110, column: 18, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !1, line: 110, column: 18)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 104, column: 40)
!265 = distinct !DILexicalBlock(scope: !248, file: !1, line: 104, column: 22)
!266 = !DILocation(line: 110, column: 27, scope: !263)
!267 = !DILocation(line: 110, column: 18, scope: !264)
!268 = !DILocation(line: 117, column: 25, scope: !269)
!269 = distinct !DILexicalBlock(scope: !263, file: !1, line: 110, column: 34)
!270 = !DILocation(line: 118, column: 16, scope: !269)
!271 = !DILocation(line: 125, column: 25, scope: !272)
!272 = distinct !DILexicalBlock(scope: !263, file: !1, line: 119, column: 20)
!273 = !DILocation(line: 127, column: 10, scope: !264)
!274 = !DILocation(line: 136, column: 1, scope: !6)
!275 = !DILocation(line: 138, column: 1, scope: !6)
