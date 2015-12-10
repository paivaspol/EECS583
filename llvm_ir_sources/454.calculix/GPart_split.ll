; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_split.c'
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
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in GPart_split(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"\0A fatal error in GPart_split(%p)\0A child(ren) exist, already split\0A\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"\0A\0A inside GPart_split, %d components, cweights : \00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A separator weight = %d, weight of components = %d\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"\0A\0A component %d\00", align 1
@.str5 = private unnamed_addr constant [16 x i8] c"\0A map to parent\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @GPart_split(%struct._GPart* %gpart) #0 {
  %ierr = alloca i32, align 4
  %map = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._GPart* %gpart, i64 0, metadata !136, metadata !156), !dbg !157
  %1 = icmp eq %struct._GPart* %gpart, null, !dbg !158
  br i1 %1, label %6, label %2, !dbg !160

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1, !dbg !161
  %4 = load %struct._Graph** %3, align 8, !dbg !161, !tbaa !162
  tail call void @llvm.dbg.value(metadata %struct._Graph* %4, i64 0, metadata !139, metadata !156), !dbg !169
  %5 = icmp eq %struct._Graph* %4, null, !dbg !170
  br i1 %5, label %6, label %9, !dbg !171

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !172, !tbaa !174
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart) #6, !dbg !175
  tail call void @exit(i32 -1) #7, !dbg !176
  unreachable, !dbg !176

; <label>:9                                       ; preds = %2
  %10 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 8, !dbg !177
  %11 = load %struct._GPart** %10, align 8, !dbg !177, !tbaa !179
  %12 = icmp eq %struct._GPart* %11, null, !dbg !180
  br i1 %12, label %16, label %13, !dbg !181

; <label>:13                                      ; preds = %9
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !182, !tbaa !174
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), %struct._GPart* %gpart) #6, !dbg !184
  tail call void @exit(i32 -1) #7, !dbg !185
  unreachable, !dbg !185

; <label>:16                                      ; preds = %9
  %17 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12, !dbg !186
  %18 = load %struct.__sFILE** %17, align 8, !dbg !186, !tbaa !187
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %18, i64 0, metadata !137, metadata !156), !dbg !188
  %19 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11, !dbg !189
  %20 = load i32* %19, align 4, !dbg !189, !tbaa !190
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !144, metadata !156), !dbg !191
  tail call void @GPart_setCweights(%struct._GPart* %gpart) #6, !dbg !192
  %21 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4, !dbg !193
  %22 = load i32* %21, align 4, !dbg !193, !tbaa !194
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !145, metadata !156), !dbg !195
  %23 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6, !dbg !196
  %24 = tail call i32* @IV_entries(%struct._IV* %23) #6, !dbg !197
  tail call void @llvm.dbg.value(metadata i32* %24, i64 0, metadata !150, metadata !156), !dbg !198
  %25 = icmp sgt i32 %20, 1, !dbg !199
  br i1 %25, label %26, label %29, !dbg !201

; <label>:26                                      ; preds = %16
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 %22) #6, !dbg !202
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !143, metadata !156), !dbg !204
  %28 = call i32 @IV_fp80(%struct._IV* %23, %struct.__sFILE* %18, i32 25, i32* %ierr) #6, !dbg !205
  br label %29, !dbg !206

; <label>:29                                      ; preds = %26, %16
  %30 = icmp eq i32 %22, 1, !dbg !207
  br i1 %30, label %.loopexit, label %31, !dbg !209

; <label>:31                                      ; preds = %29
  %32 = load i32* %24, align 4, !dbg !210, !tbaa !211
  call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !148, metadata !156), !dbg !212
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !141, metadata !156), !dbg !213
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !142, metadata !156), !dbg !214
  %33 = icmp slt i32 %22, 1, !dbg !215
  br i1 %33, label %._crit_edge, label %.lr.ph4, !dbg !218

.lr.ph4:                                          ; preds = %31, %.lr.ph4
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph4 ], [ 1, %31 ]
  %domwght.03 = phi i32 [ %36, %.lr.ph4 ], [ 0, %31 ]
  %34 = getelementptr inbounds i32* %24, i64 %indvars.iv, !dbg !219
  %35 = load i32* %34, align 4, !dbg !219, !tbaa !211
  %36 = add nsw i32 %35, %domwght.03, !dbg !221
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !141, metadata !156), !dbg !213
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !218
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !218
  %exitcond5 = icmp eq i32 %lftr.wideiv, %22, !dbg !218
  br i1 %exitcond5, label %._crit_edge, label %.lr.ph4, !dbg !218

._crit_edge:                                      ; preds = %.lr.ph4, %31
  %domwght.0.lcssa = phi i32 [ 0, %31 ], [ %36, %.lr.ph4 ]
  br i1 %25, label %37, label %39, !dbg !222

; <label>:37                                      ; preds = %._crit_edge
  %38 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 %32, i32 %domwght.0.lcssa) #6, !dbg !223
  br label %39, !dbg !226

; <label>:39                                      ; preds = %37, %._crit_edge
  %40 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5, !dbg !227
  %41 = call i32* @IV_entries(%struct._IV* %40) #6, !dbg !228
  call void @llvm.dbg.value(metadata i32* %41, i64 0, metadata !149, metadata !156), !dbg !229
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !142, metadata !156), !dbg !214
  br i1 %33, label %.loopexit, label %.lr.ph, !dbg !230

.lr.ph:                                           ; preds = %39
  %42 = icmp sgt i32 %20, 3, !dbg !232
  %43 = bitcast %struct._GPart** %10 to i64*, !dbg !236
  %44 = bitcast %struct.__sFILE** %17 to i64*, !dbg !237
  br label %45, !dbg !230

; <label>:45                                      ; preds = %60, %.lr.ph
  %icomp.11 = phi i32 [ 1, %.lr.ph ], [ %77, %60 ]
  %46 = call %struct._GPart* @GPart_new() #6, !dbg !238
  call void @llvm.dbg.value(metadata %struct._GPart* %46, i64 0, metadata !138, metadata !156), !dbg !239
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !151, metadata !156), !dbg !240
  %47 = call %struct._Graph* @Graph_subGraph(%struct._Graph* %4, i32 %icomp.11, i32* %41, i32** %map) #6, !dbg !241
  call void @llvm.dbg.value(metadata %struct._Graph* %47, i64 0, metadata !140, metadata !156), !dbg !242
  br i1 %42, label %48, label %60, !dbg !243

; <label>:48                                      ; preds = %45
  %49 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0), i32 %icomp.11) #6, !dbg !244
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %18), !dbg !246
  %51 = getelementptr inbounds %struct._Graph* %47, i64 0, i32 1, !dbg !247
  %52 = load i32* %51, align 4, !dbg !247, !tbaa !248
  %53 = getelementptr inbounds %struct._Graph* %47, i64 0, i32 2, !dbg !250
  %54 = load i32* %53, align 4, !dbg !250, !tbaa !251
  %55 = add nsw i32 %54, %52, !dbg !252
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !151, metadata !156), !dbg !240
  %56 = load i32** %map, align 8, !dbg !253, !tbaa !174
  call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !143, metadata !156), !dbg !204
  %57 = call i32 @IVfp80(%struct.__sFILE* %18, i32 %55, i32* %56, i32 80, i32* %ierr) #6, !dbg !254
  %58 = call i32 @Graph_writeForHumanEye(%struct._Graph* %47, %struct.__sFILE* %18) #6, !dbg !255
  %59 = call i32 @fflush(%struct.__sFILE* %18) #6, !dbg !256
  br label %60, !dbg !257

; <label>:60                                      ; preds = %48, %45
  call void @GPart_init(%struct._GPart* %46, %struct._Graph* %47) #6, !dbg !258
  %61 = getelementptr inbounds %struct._GPart* %46, i64 0, i32 2, !dbg !259
  %62 = load i32* %61, align 4, !dbg !259, !tbaa !260
  %63 = getelementptr inbounds %struct._GPart* %46, i64 0, i32 3, !dbg !261
  %64 = load i32* %63, align 4, !dbg !261, !tbaa !262
  %65 = add nsw i32 %64, %62, !dbg !263
  call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !146, metadata !156), !dbg !264
  %66 = getelementptr inbounds %struct._GPart* %46, i64 0, i32 10, !dbg !265
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !151, metadata !156), !dbg !240
  %67 = load i32** %map, align 8, !dbg !266, !tbaa !174
  call void @IV_init2(%struct._IV* %66, i32 %65, i32 %65, i32 1, i32* %67) #6, !dbg !267
  %68 = getelementptr inbounds %struct._GPart* %46, i64 0, i32 7, !dbg !268
  store %struct._GPart* %gpart, %struct._GPart** %68, align 8, !dbg !269, !tbaa !270
  %69 = load i64* %43, align 8, !dbg !236, !tbaa !179
  %70 = getelementptr inbounds %struct._GPart* %46, i64 0, i32 9, !dbg !271
  %71 = bitcast %struct._GPart** %70 to i64*, !dbg !272
  store i64 %69, i64* %71, align 8, !dbg !272, !tbaa !273
  store %struct._GPart* %46, %struct._GPart** %10, align 8, !dbg !274, !tbaa !179
  %72 = load i32* %19, align 4, !dbg !275, !tbaa !190
  %73 = getelementptr inbounds %struct._GPart* %46, i64 0, i32 11, !dbg !276
  store i32 %72, i32* %73, align 4, !dbg !277, !tbaa !190
  %74 = load i64* %44, align 8, !dbg !237, !tbaa !187
  %75 = getelementptr inbounds %struct._GPart* %46, i64 0, i32 12, !dbg !278
  %76 = bitcast %struct.__sFILE** %75 to i64*, !dbg !279
  store i64 %74, i64* %76, align 8, !dbg !279, !tbaa !187
  %77 = add nuw nsw i32 %icomp.11, 1, !dbg !280
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !142, metadata !156), !dbg !214
  %exitcond = icmp eq i32 %icomp.11, %22, !dbg !230
  br i1 %exitcond, label %.loopexit, label %45, !dbg !230

.loopexit:                                        ; preds = %60, %39, %29
  ret void, !dbg !281
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @GPart_setCweights(%struct._GPart*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_fp80(%struct._IV*, %struct.__sFILE*, i32, i32*) #3

; Function Attrs: optsize
declare %struct._GPart* @GPart_new() #3

; Function Attrs: optsize
declare %struct._Graph* @Graph_subGraph(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct.__sFILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @Graph_writeForHumanEye(%struct._Graph*, %struct.__sFILE*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #1

; Function Attrs: optsize
declare void @GPart_init(%struct._GPart*, %struct._Graph*) #3

; Function Attrs: optsize
declare void @IV_init2(%struct._IV*, i32, i32, i32, i32*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!152, !153, !154}
!llvm.ident = !{!155}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_split.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "GPart_split", scope: !1, file: !1, line: 16, type: !7, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._GPart*)* @GPart_split, variables: !135)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPart", file: !11, line: 37, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../GPart.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GPart", file: !11, line: 38, size: 1152, align: 64, elements: !13)
!13 = !{!14, !16, !54, !55, !56, !57, !66, !67, !68, !69, !70, !71, !72}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !12, file: !11, line: 39, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !12, file: !11, line: 40, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !19, line: 49, baseType: !20)
!19 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !19, line: 50, size: 384, align: 64, elements: !21)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !52, !53}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !20, file: !19, line: 51, baseType: !15, size: 32, align: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !20, file: !19, line: 52, baseType: !15, size: 32, align: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !20, file: !19, line: 53, baseType: !15, size: 32, align: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !20, file: !19, line: 54, baseType: !15, size: 32, align: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !20, file: !19, line: 55, baseType: !15, size: 32, align: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !20, file: !19, line: 56, baseType: !15, size: 32, align: 32, offset: 160)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !20, file: !19, line: 57, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !31, line: 55, baseType: !32)
!31 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !31, line: 79, size: 384, align: 64, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !40, !42, !43}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !31, line: 80, baseType: !15, size: 32, align: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !32, file: !31, line: 81, baseType: !15, size: 32, align: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !32, file: !31, line: 82, baseType: !15, size: 32, align: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !32, file: !31, line: 83, baseType: !15, size: 32, align: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !32, file: !31, line: 84, baseType: !39, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !32, file: !31, line: 85, baseType: !41, size: 64, align: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !32, file: !31, line: 86, baseType: !15, size: 32, align: 32, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !32, file: !31, line: 87, baseType: !44, size: 64, align: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !31, line: 56, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !31, line: 102, size: 192, align: 64, elements: !47)
!47 = !{!48, !49, !50, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !46, file: !31, line: 103, baseType: !15, size: 32, align: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !46, file: !31, line: 104, baseType: !15, size: 32, align: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !46, file: !31, line: 105, baseType: !39, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !46, file: !31, line: 106, baseType: !44, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !20, file: !19, line: 58, baseType: !39, size: 64, align: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !20, file: !19, line: 59, baseType: !29, size: 64, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !12, file: !11, line: 41, baseType: !15, size: 32, align: 32, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !12, file: !11, line: 42, baseType: !15, size: 32, align: 32, offset: 160)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ncomp", scope: !12, file: !11, line: 43, baseType: !15, size: 32, align: 32, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "compidsIV", scope: !12, file: !11, line: 44, baseType: !58, size: 192, align: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !59, line: 20, baseType: !60)
!59 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !59, line: 21, size: 192, align: 64, elements: !61)
!61 = !{!62, !63, !64, !65}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !60, file: !59, line: 22, baseType: !15, size: 32, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !60, file: !59, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !60, file: !59, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !60, file: !59, line: 25, baseType: !39, size: 64, align: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cweightsIV", scope: !12, file: !11, line: 45, baseType: !58, size: 192, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !12, file: !11, line: 46, baseType: !9, size: 64, align: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !12, file: !11, line: 47, baseType: !9, size: 64, align: 64, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !12, file: !11, line: 48, baseType: !9, size: 64, align: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "vtxMapIV", scope: !12, file: !11, line: 49, baseType: !58, size: 192, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !12, file: !11, line: 50, baseType: !15, size: 32, align: 32, offset: 1024)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !12, file: !11, line: 51, baseType: !73, size: 64, align: 64, offset: 1088)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 153, baseType: !76)
!75 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !75, line: 122, size: 1216, align: 64, elements: !77)
!77 = !{!78, !81, !82, !83, !85, !86, !91, !92, !93, !97, !103, !113, !119, !120, !123, !124, !128, !132, !133, !134}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !76, file: !75, line: 123, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !76, file: !75, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !76, file: !75, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !76, file: !75, line: 126, baseType: !84, size: 16, align: 16, offset: 128)
!84 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !76, file: !75, line: 127, baseType: !84, size: 16, align: 16, offset: 144)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !76, file: !75, line: 128, baseType: !87, size: 128, align: 64, offset: 192)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !75, line: 88, size: 128, align: 64, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !87, file: !75, line: 89, baseType: !79, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !87, file: !75, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !76, file: !75, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !76, file: !75, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !76, file: !75, line: 133, baseType: !94, size: 64, align: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!15, !4}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !76, file: !75, line: 134, baseType: !98, size: 64, align: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!15, !4, !101, !15}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !76, file: !75, line: 135, baseType: !104, size: 64, align: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !4, !107, !15}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !75, line: 77, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !109, line: 71, baseType: !110)
!109 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !111, line: 46, baseType: !112)
!111 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!112 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !76, file: !75, line: 136, baseType: !114, size: 64, align: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!15, !4, !117, !15}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !76, file: !75, line: 139, baseType: !87, size: 128, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !76, file: !75, line: 140, baseType: !121, size: 64, align: 64, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !75, line: 94, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !76, file: !75, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !76, file: !75, line: 144, baseType: !125, size: 24, align: 8, offset: 928)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 24, align: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 3)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !76, file: !75, line: 145, baseType: !129, size: 8, align: 8, offset: 952)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 8, align: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 1)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !76, file: !75, line: 148, baseType: !87, size: 128, align: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !76, file: !75, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !76, file: !75, line: 152, baseType: !107, size: 64, align: 64, offset: 1152)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gpart", arg: 1, scope: !6, file: !1, line: 17, type: !9)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msgFile", scope: !6, file: !1, line: 19, type: !73)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gpartchild", scope: !6, file: !1, line: 20, type: !9)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !6, file: !1, line: 21, type: !17)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gchild", scope: !6, file: !1, line: 21, type: !17)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domwght", scope: !6, file: !1, line: 22, type: !15)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "icomp", scope: !6, file: !1, line: 22, type: !15)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !6, file: !1, line: 22, type: !15)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msglvl", scope: !6, file: !1, line: 22, type: !15)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncomp", scope: !6, file: !1, line: 22, type: !15)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtot", scope: !6, file: !1, line: 22, type: !15)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !6, file: !1, line: 22, type: !15)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sepwght", scope: !6, file: !1, line: 22, type: !15)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compids", scope: !6, file: !1, line: 23, type: !39)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cweights", scope: !6, file: !1, line: 23, type: !39)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !6, file: !1, line: 23, type: !39)
!152 = !{i32 2, !"Dwarf Version", i32 2}
!153 = !{i32 2, !"Debug Info Version", i32 700000003}
!154 = !{i32 1, !"PIC Level", i32 2}
!155 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!156 = !DIExpression()
!157 = !DILocation(line: 17, column: 13, scope: !6)
!158 = !DILocation(line: 29, column: 12, scope: !159)
!159 = distinct !DILexicalBlock(scope: !6, file: !1, line: 29, column: 6)
!160 = !DILocation(line: 29, column: 20, scope: !159)
!161 = !DILocation(line: 29, column: 35, scope: !159)
!162 = !{!163, !167, i64 8}
!163 = !{!"_GPart", !164, i64 0, !167, i64 8, !164, i64 16, !164, i64 20, !164, i64 24, !168, i64 32, !168, i64 56, !167, i64 80, !167, i64 88, !167, i64 96, !168, i64 104, !164, i64 128, !167, i64 136}
!164 = !{!"int", !165, i64 0}
!165 = !{!"omnipotent char", !166, i64 0}
!166 = !{!"Simple C/C++ TBAA"}
!167 = !{!"any pointer", !165, i64 0}
!168 = !{!"_IV", !164, i64 0, !164, i64 4, !164, i64 8, !167, i64 16}
!169 = !DILocation(line: 21, column: 10, scope: !6)
!170 = !DILocation(line: 29, column: 38, scope: !159)
!171 = !DILocation(line: 29, column: 6, scope: !6)
!172 = !DILocation(line: 30, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !159, file: !1, line: 29, column: 48)
!174 = !{!167, !167, i64 0}
!175 = !DILocation(line: 30, column: 4, scope: !173)
!176 = !DILocation(line: 32, column: 4, scope: !173)
!177 = !DILocation(line: 34, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !6, file: !1, line: 34, column: 6)
!179 = !{!163, !167, i64 88}
!180 = !DILocation(line: 34, column: 17, scope: !178)
!181 = !DILocation(line: 34, column: 6, scope: !6)
!182 = !DILocation(line: 35, column: 12, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !1, line: 34, column: 27)
!184 = !DILocation(line: 35, column: 4, scope: !183)
!185 = !DILocation(line: 37, column: 4, scope: !183)
!186 = !DILocation(line: 39, column: 18, scope: !6)
!187 = !{!163, !167, i64 136}
!188 = !DILocation(line: 19, column: 10, scope: !6)
!189 = !DILocation(line: 40, column: 18, scope: !6)
!190 = !{!163, !164, i64 128}
!191 = !DILocation(line: 22, column: 31, scope: !6)
!192 = !DILocation(line: 48, column: 1, scope: !6)
!193 = !DILocation(line: 49, column: 19, scope: !6)
!194 = !{!163, !164, i64 24}
!195 = !DILocation(line: 22, column: 39, scope: !6)
!196 = !DILocation(line: 50, column: 31, scope: !6)
!197 = !DILocation(line: 50, column: 12, scope: !6)
!198 = !DILocation(line: 23, column: 20, scope: !6)
!199 = !DILocation(line: 51, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !6, file: !1, line: 51, column: 6)
!201 = !DILocation(line: 51, column: 6, scope: !6)
!202 = !DILocation(line: 52, column: 4, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !1, line: 51, column: 19)
!204 = !DILocation(line: 22, column: 25, scope: !6)
!205 = !DILocation(line: 55, column: 4, scope: !203)
!206 = !DILocation(line: 56, column: 1, scope: !203)
!207 = !DILocation(line: 57, column: 12, scope: !208)
!208 = distinct !DILexicalBlock(scope: !6, file: !1, line: 57, column: 6)
!209 = !DILocation(line: 57, column: 6, scope: !6)
!210 = !DILocation(line: 66, column: 11, scope: !6)
!211 = !{!164, !164, i64 0}
!212 = !DILocation(line: 22, column: 59, scope: !6)
!213 = !DILocation(line: 22, column: 9, scope: !6)
!214 = !DILocation(line: 22, column: 18, scope: !6)
!215 = !DILocation(line: 68, column: 25, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 68, column: 1)
!217 = distinct !DILexicalBlock(scope: !6, file: !1, line: 68, column: 1)
!218 = !DILocation(line: 68, column: 1, scope: !217)
!219 = !DILocation(line: 69, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !1, line: 68, column: 46)
!221 = !DILocation(line: 69, column: 12, scope: !220)
!222 = !DILocation(line: 71, column: 6, scope: !6)
!223 = !DILocation(line: 72, column: 4, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !1, line: 71, column: 19)
!225 = distinct !DILexicalBlock(scope: !6, file: !1, line: 71, column: 6)
!226 = !DILocation(line: 75, column: 1, scope: !224)
!227 = !DILocation(line: 85, column: 30, scope: !6)
!228 = !DILocation(line: 85, column: 11, scope: !6)
!229 = !DILocation(line: 23, column: 10, scope: !6)
!230 = !DILocation(line: 86, column: 1, scope: !231)
!231 = distinct !DILexicalBlock(scope: !6, file: !1, line: 86, column: 1)
!232 = !DILocation(line: 89, column: 16, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 89, column: 9)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 86, column: 46)
!235 = distinct !DILexicalBlock(scope: !231, file: !1, line: 86, column: 1)
!236 = !DILocation(line: 100, column: 29, scope: !234)
!237 = !DILocation(line: 103, column: 33, scope: !234)
!238 = !DILocation(line: 87, column: 17, scope: !234)
!239 = !DILocation(line: 20, column: 10, scope: !6)
!240 = !DILocation(line: 23, column: 31, scope: !6)
!241 = !DILocation(line: 88, column: 13, scope: !234)
!242 = !DILocation(line: 21, column: 14, scope: !6)
!243 = !DILocation(line: 89, column: 9, scope: !234)
!244 = !DILocation(line: 90, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !233, file: !1, line: 89, column: 22)
!246 = !DILocation(line: 91, column: 7, scope: !245)
!247 = !DILocation(line: 92, column: 31, scope: !245)
!248 = !{!249, !164, i64 4}
!249 = !{!"_Graph", !164, i64 0, !164, i64 4, !164, i64 8, !164, i64 12, !164, i64 16, !164, i64 20, !167, i64 24, !167, i64 32, !167, i64 40}
!250 = !DILocation(line: 92, column: 46, scope: !245)
!251 = !{!249, !164, i64 8}
!252 = !DILocation(line: 92, column: 36, scope: !245)
!253 = !DILocation(line: 92, column: 53, scope: !245)
!254 = !DILocation(line: 92, column: 7, scope: !245)
!255 = !DILocation(line: 93, column: 7, scope: !245)
!256 = !DILocation(line: 94, column: 7, scope: !245)
!257 = !DILocation(line: 95, column: 4, scope: !245)
!258 = !DILocation(line: 96, column: 4, scope: !234)
!259 = !DILocation(line: 97, column: 24, scope: !234)
!260 = !{!163, !164, i64 16}
!261 = !DILocation(line: 97, column: 43, scope: !234)
!262 = !{!163, !164, i64 20}
!263 = !DILocation(line: 97, column: 29, scope: !234)
!264 = !DILocation(line: 22, column: 46, scope: !6)
!265 = !DILocation(line: 98, column: 26, scope: !234)
!266 = !DILocation(line: 98, column: 53, scope: !234)
!267 = !DILocation(line: 98, column: 4, scope: !234)
!268 = !DILocation(line: 99, column: 16, scope: !234)
!269 = !DILocation(line: 99, column: 20, scope: !234)
!270 = !{!163, !167, i64 80}
!271 = !DILocation(line: 100, column: 16, scope: !234)
!272 = !DILocation(line: 100, column: 20, scope: !234)
!273 = !{!163, !167, i64 96}
!274 = !DILocation(line: 101, column: 20, scope: !234)
!275 = !DILocation(line: 102, column: 33, scope: !234)
!276 = !DILocation(line: 102, column: 16, scope: !234)
!277 = !DILocation(line: 102, column: 24, scope: !234)
!278 = !DILocation(line: 103, column: 16, scope: !234)
!279 = !DILocation(line: 103, column: 24, scope: !234)
!280 = !DILocation(line: 86, column: 41, scope: !235)
!281 = !DILocation(line: 106, column: 10, scope: !6)
