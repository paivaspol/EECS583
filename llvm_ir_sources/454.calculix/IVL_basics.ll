; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [87 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in IVL_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in IVL_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A fatal error in IVL_clearData(%p)\0A invalid type = %d\0A\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"\0A fatal error in IVL_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IVL* @IVL_new() #0 {
  %1 = tail call i8* @malloc(i64 48) #6, !dbg !61
  %2 = bitcast i8* %1 to %struct._IVL*, !dbg !61
  tail call void @llvm.dbg.value(metadata %struct._IVL* %2, i64 0, metadata !38, metadata !65), !dbg !66
  %3 = icmp eq i8* %1, null, !dbg !61
  br i1 %3, label %4, label %7, !dbg !67

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !68, !tbaa !70
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 48, i32 21, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !68
  tail call void @exit(i32 -1) #7, !dbg !68
  unreachable, !dbg !68

; <label>:7                                       ; preds = %0
  tail call void @IVL_setDefaultFields(%struct._IVL* %2) #8, !dbg !74
  ret %struct._IVL* %2, !dbg !75
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @IVL_setDefaultFields(%struct._IVL* %ivl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !43, metadata !65), !dbg !76
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !77
  br i1 %1, label %2, label %5, !dbg !79

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !80, !tbaa !70
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._IVL* null) #6, !dbg !82
  tail call void @exit(i32 -1) #7, !dbg !83
  unreachable, !dbg !83

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0, !dbg !84
  store i32 -1, i32* %6, align 4, !dbg !85, !tbaa !86
  %7 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !89
  %8 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 6, !dbg !90
  %9 = bitcast i32* %7 to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 28, i32 4, i1 false), !dbg !92
  store i32 1024, i32* %8, align 4, !dbg !91, !tbaa !93
  %10 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7, !dbg !94
  store %struct._Ichunk* null, %struct._Ichunk** %10, align 8, !dbg !95, !tbaa !96
  ret void, !dbg !97
}

; Function Attrs: nounwind optsize ssp uwtable
define void @IVL_clearData(%struct._IVL* %ivl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !46, metadata !65), !dbg !98
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !99
  br i1 %1, label %2, label %5, !dbg !101

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !102, !tbaa !70
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._IVL* null) #6, !dbg !104
  tail call void @exit(i32 -1) #7, !dbg !105
  unreachable, !dbg !105

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0, !dbg !106
  %7 = load i32* %6, align 4, !dbg !106, !tbaa !86
  switch i32 %7, label %49 [
    i32 2, label %.preheader
    i32 1, label %.preheader1
    i32 -1, label %.loopexit
    i32 3, label %.loopexit
  ], !dbg !107

.preheader1:                                      ; preds = %5
  %8 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7, !dbg !108
  %9 = load %struct._Ichunk** %8, align 8, !dbg !108, !tbaa !96
  %10 = icmp eq %struct._Ichunk* %9, null, !dbg !109
  br i1 %10, label %.loopexit, label %.lr.ph4, !dbg !110

.lr.ph4:                                          ; preds = %.preheader1
  %11 = bitcast %struct._Ichunk** %8 to i64*, !dbg !111
  br label %36, !dbg !110

.preheader:                                       ; preds = %5
  %12 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !113
  %13 = load i32* %12, align 4, !dbg !113, !tbaa !116
  %14 = icmp sgt i32 %13, 0, !dbg !117
  br i1 %14, label %.lr.ph, label %.loopexit, !dbg !118

.lr.ph:                                           ; preds = %.preheader
  %15 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5, !dbg !119
  %16 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4, !dbg !122
  %17 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3, !dbg !124
  br label %18, !dbg !118

; <label>:18                                      ; preds = %.lr.ph, %32
  %19 = phi i32 [ %13, %.lr.ph ], [ %33, %32 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  %20 = load i32*** %15, align 8, !dbg !119, !tbaa !125
  %21 = getelementptr inbounds i32** %20, i64 %indvars.iv, !dbg !126
  %22 = load i32** %21, align 8, !dbg !126, !tbaa !70
  %23 = icmp eq i32* %22, null, !dbg !127
  br i1 %23, label %32, label %24, !dbg !128

; <label>:24                                      ; preds = %18
  tail call void @IVfree(i32* %22) #6, !dbg !129
  %25 = load i32*** %15, align 8, !dbg !130, !tbaa !125
  %26 = getelementptr inbounds i32** %25, i64 %indvars.iv, !dbg !131
  store i32* null, i32** %26, align 8, !dbg !132, !tbaa !70
  %27 = load i32** %16, align 8, !dbg !122, !tbaa !133
  %28 = getelementptr inbounds i32* %27, i64 %indvars.iv, !dbg !134
  %29 = load i32* %28, align 4, !dbg !134, !tbaa !135
  %30 = load i32* %17, align 4, !dbg !136, !tbaa !137
  %31 = sub nsw i32 %30, %29, !dbg !136
  store i32 %31, i32* %17, align 4, !dbg !136, !tbaa !137
  %.pre = load i32* %12, align 4, !dbg !113, !tbaa !116
  br label %32, !dbg !138

; <label>:32                                      ; preds = %18, %24
  %33 = phi i32 [ %19, %18 ], [ %.pre, %24 ], !dbg !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !118
  %34 = sext i32 %33 to i64, !dbg !117
  %35 = icmp slt i64 %indvars.iv.next, %34, !dbg !117
  br i1 %35, label %18, label %.loopexit, !dbg !118

; <label>:36                                      ; preds = %.lr.ph4, %45
  %37 = phi %struct._Ichunk* [ %9, %.lr.ph4 ], [ %47, %45 ]
  %38 = getelementptr inbounds %struct._Ichunk* %37, i64 0, i32 3, !dbg !139
  %39 = bitcast %struct._Ichunk** %38 to i64*, !dbg !139
  %40 = load i64* %39, align 8, !dbg !139, !tbaa !140
  store i64 %40, i64* %11, align 8, !dbg !111, !tbaa !96
  %41 = getelementptr inbounds %struct._Ichunk* %37, i64 0, i32 2, !dbg !142
  %42 = load i32** %41, align 8, !dbg !142, !tbaa !144
  %43 = icmp eq i32* %42, null, !dbg !145
  br i1 %43, label %45, label %44, !dbg !146

; <label>:44                                      ; preds = %36
  tail call void @IVfree(i32* %42) #6, !dbg !147
  br label %45, !dbg !149

; <label>:45                                      ; preds = %44, %36
  %46 = bitcast %struct._Ichunk* %37 to i8*, !dbg !150
  tail call void @free(i8* %46) #8, !dbg !150
  %47 = load %struct._Ichunk** %8, align 8, !dbg !108, !tbaa !96
  %48 = icmp eq %struct._Ichunk* %47, null, !dbg !109
  br i1 %48, label %.loopexit, label %36, !dbg !110

; <label>:49                                      ; preds = %5
  %50 = load %struct.__sFILE** @__stderrp, align 8, !dbg !153, !tbaa !70
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), %struct._IVL* %ivl, i32 %7) #6, !dbg !154
  tail call void @exit(i32 -1) #7, !dbg !155
  unreachable, !dbg !155

.loopexit:                                        ; preds = %45, %32, %.preheader1, %.preheader, %5, %5
  %52 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4, !dbg !156
  %53 = load i32** %52, align 8, !dbg !156, !tbaa !133
  %54 = icmp eq i32* %53, null, !dbg !158
  br i1 %54, label %56, label %55, !dbg !159

; <label>:55                                      ; preds = %.loopexit
  tail call void @IVfree(i32* %53) #6, !dbg !160
  store i32* null, i32** %52, align 8, !dbg !162, !tbaa !133
  br label %56, !dbg !163

; <label>:56                                      ; preds = %.loopexit, %55
  %57 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5, !dbg !164
  %58 = load i32*** %57, align 8, !dbg !164, !tbaa !125
  %59 = icmp eq i32** %58, null, !dbg !166
  br i1 %59, label %61, label %60, !dbg !167

; <label>:60                                      ; preds = %56
  tail call void @PIVfree(i32** %58) #6, !dbg !168
  store i32** null, i32*** %57, align 8, !dbg !170, !tbaa !125
  br label %61, !dbg !171

; <label>:61                                      ; preds = %56, %60
  %62 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !172
  store i32 0, i32* %62, align 4, !dbg !173, !tbaa !174
  %63 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !175
  store i32 0, i32* %63, align 4, !dbg !176, !tbaa !116
  tail call void @IVL_setDefaultFields(%struct._IVL* %ivl) #8, !dbg !177
  ret void, !dbg !178
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @PIVfree(i32**) #3

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct._IVL* @IVL_free(%struct._IVL* %ivl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !56, metadata !65), !dbg !179
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !180
  br i1 %1, label %2, label %5, !dbg !182

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !183, !tbaa !70
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([42 x i8]* @.str5, i64 0, i64 0), %struct._IVL* null) #6, !dbg !185
  tail call void @exit(i32 -1) #7, !dbg !186
  unreachable, !dbg !186

; <label>:5                                       ; preds = %0
  tail call void @IVL_clearData(%struct._IVL* %ivl) #8, !dbg !187
  %6 = bitcast %struct._IVL* %ivl to i8*, !dbg !188
  tail call void @free(i8* %6) #8, !dbg !188
  tail call void @llvm.dbg.value(metadata %struct._IVL* null, i64 0, metadata !56, metadata !65), !dbg !179
  ret %struct._IVL* null, !dbg !191
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !31, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !27, !28, !29}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !6, line: 79, size: 384, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/../IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12, !13, !15, !17, !18}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !6, line: 80, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !5, file: !6, line: 81, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !5, file: !6, line: 82, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !5, file: !6, line: 83, baseType: !9, size: 32, align: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !5, file: !6, line: 84, baseType: !14, size: 64, align: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !5, file: !6, line: 85, baseType: !16, size: 64, align: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5, file: !6, line: 86, baseType: !9, size: 32, align: 32, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !5, file: !6, line: 87, baseType: !19, size: 64, align: 64, offset: 320)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !6, line: 56, baseType: !21)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !6, line: 102, size: 192, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !21, file: !6, line: 103, baseType: !9, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !21, file: !6, line: 104, baseType: !9, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !21, file: !6, line: 105, baseType: !14, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !6, line: 106, baseType: !19, size: 64, align: 64, offset: 128)
!27 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !{!32, !39, !44, !52}
!32 = !DISubprogram(name: "IVL_new", scope: !1, file: !1, line: 16, type: !33, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IVL* ()* @IVL_new, variables: !37)
!33 = !DISubroutineType(types: !34)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !6, line: 55, baseType: !5)
!37 = !{!38}
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivl", scope: !32, file: !1, line: 19, type: !35)
!39 = !DISubprogram(name: "IVL_setDefaultFields", scope: !1, file: !1, line: 35, type: !40, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IVL*)* @IVL_setDefaultFields, variables: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !35}
!42 = !{!43}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !39, file: !1, line: 36, type: !35)
!44 = !DISubprogram(name: "IVL_clearData", scope: !1, file: !1, line: 63, type: !40, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IVL*)* @IVL_clearData, variables: !45)
!45 = !{!46, !47, !50}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !44, file: !1, line: 64, type: !35)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ilist", scope: !48, file: !1, line: 84, type: !9)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 83, column: 17)
!49 = distinct !DILexicalBlock(scope: !44, file: !1, line: 82, column: 22)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chunk", scope: !51, file: !1, line: 94, type: !19)
!51 = distinct !DILexicalBlock(scope: !49, file: !1, line: 93, column: 20)
!52 = !DISubprogram(name: "IVL_free", scope: !1, file: !1, line: 144, type: !53, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IVL* (%struct._IVL*)* @IVL_free, variables: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!35, !35}
!55 = !{!56}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !52, file: !1, line: 145, type: !35)
!57 = !{i32 2, !"Dwarf Version", i32 2}
!58 = !{i32 2, !"Debug Info Version", i32 700000003}
!59 = !{i32 1, !"PIC Level", i32 2}
!60 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!61 = !DILocation(line: 21, column: 1, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 21, column: 1)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 21, column: 1)
!64 = distinct !DILexicalBlock(scope: !32, file: !1, line: 21, column: 1)
!65 = !DIExpression()
!66 = !DILocation(line: 19, column: 8, scope: !32)
!67 = !DILocation(line: 21, column: 1, scope: !63)
!68 = !DILocation(line: 21, column: 1, scope: !69)
!69 = distinct !DILexicalBlock(scope: !62, file: !1, line: 21, column: 1)
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !DILocation(line: 22, column: 1, scope: !32)
!75 = !DILocation(line: 24, column: 1, scope: !32)
!76 = !DILocation(line: 36, column: 11, scope: !39)
!77 = !DILocation(line: 38, column: 10, scope: !78)
!78 = distinct !DILexicalBlock(scope: !39, file: !1, line: 38, column: 6)
!79 = !DILocation(line: 38, column: 6, scope: !39)
!80 = !DILocation(line: 39, column: 12, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 38, column: 20)
!82 = !DILocation(line: 39, column: 4, scope: !81)
!83 = !DILocation(line: 41, column: 4, scope: !81)
!84 = !DILocation(line: 43, column: 6, scope: !39)
!85 = !DILocation(line: 43, column: 15, scope: !39)
!86 = !{!87, !88, i64 0}
!87 = !{!"_IVL", !88, i64 0, !88, i64 4, !88, i64 8, !88, i64 12, !71, i64 16, !71, i64 24, !88, i64 32, !71, i64 40}
!88 = !{!"int", !72, i64 0}
!89 = !DILocation(line: 44, column: 6, scope: !39)
!90 = !DILocation(line: 49, column: 6, scope: !39)
!91 = !DILocation(line: 49, column: 15, scope: !39)
!92 = !DILocation(line: 45, column: 15, scope: !39)
!93 = !{!87, !88, i64 32}
!94 = !DILocation(line: 50, column: 6, scope: !39)
!95 = !DILocation(line: 50, column: 14, scope: !39)
!96 = !{!87, !71, i64 40}
!97 = !DILocation(line: 52, column: 1, scope: !39)
!98 = !DILocation(line: 64, column: 11, scope: !44)
!99 = !DILocation(line: 71, column: 10, scope: !100)
!100 = distinct !DILexicalBlock(scope: !44, file: !1, line: 71, column: 6)
!101 = !DILocation(line: 71, column: 6, scope: !44)
!102 = !DILocation(line: 72, column: 12, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 71, column: 20)
!104 = !DILocation(line: 72, column: 4, scope: !103)
!105 = !DILocation(line: 74, column: 4, scope: !103)
!106 = !DILocation(line: 82, column: 15, scope: !44)
!107 = !DILocation(line: 82, column: 1, scope: !44)
!108 = !DILocation(line: 95, column: 26, scope: !51)
!109 = !DILocation(line: 95, column: 33, scope: !51)
!110 = !DILocation(line: 95, column: 4, scope: !51)
!111 = !DILocation(line: 96, column: 18, scope: !112)
!112 = distinct !DILexicalBlock(scope: !51, file: !1, line: 95, column: 43)
!113 = !DILocation(line: 85, column: 35, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 85, column: 4)
!115 = distinct !DILexicalBlock(scope: !48, file: !1, line: 85, column: 4)
!116 = !{!87, !88, i64 8}
!117 = !DILocation(line: 85, column: 28, scope: !114)
!118 = !DILocation(line: 85, column: 4, scope: !115)
!119 = !DILocation(line: 86, column: 17, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 86, column: 12)
!121 = distinct !DILexicalBlock(scope: !114, file: !1, line: 85, column: 53)
!122 = !DILocation(line: 89, column: 29, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !1, line: 86, column: 40)
!124 = !DILocation(line: 89, column: 15, scope: !123)
!125 = !{!87, !71, i64 24}
!126 = !DILocation(line: 86, column: 12, scope: !120)
!127 = !DILocation(line: 86, column: 30, scope: !120)
!128 = !DILocation(line: 86, column: 12, scope: !121)
!129 = !DILocation(line: 87, column: 10, scope: !123)
!130 = !DILocation(line: 88, column: 15, scope: !123)
!131 = !DILocation(line: 88, column: 10, scope: !123)
!132 = !DILocation(line: 88, column: 28, scope: !123)
!133 = !{!87, !71, i64 16}
!134 = !DILocation(line: 89, column: 24, scope: !123)
!135 = !{!88, !88, i64 0}
!136 = !DILocation(line: 89, column: 21, scope: !123)
!137 = !{!87, !88, i64 12}
!138 = !DILocation(line: 90, column: 7, scope: !123)
!139 = !DILocation(line: 96, column: 27, scope: !112)
!140 = !{!141, !71, i64 16}
!141 = !{!"_Ichunk", !88, i64 0, !88, i64 4, !71, i64 8, !71, i64 16}
!142 = !DILocation(line: 97, column: 19, scope: !143)
!143 = distinct !DILexicalBlock(scope: !112, file: !1, line: 97, column: 12)
!144 = !{!141, !71, i64 8}
!145 = !DILocation(line: 97, column: 24, scope: !143)
!146 = !DILocation(line: 97, column: 12, scope: !112)
!147 = !DILocation(line: 98, column: 10, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 97, column: 34)
!149 = !DILocation(line: 100, column: 7, scope: !148)
!150 = !DILocation(line: 101, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 101, column: 7)
!152 = distinct !DILexicalBlock(scope: !112, file: !1, line: 101, column: 7)
!153 = !DILocation(line: 108, column: 12, scope: !49)
!154 = !DILocation(line: 108, column: 4, scope: !49)
!155 = !DILocation(line: 110, column: 4, scope: !49)
!156 = !DILocation(line: 117, column: 11, scope: !157)
!157 = distinct !DILexicalBlock(scope: !44, file: !1, line: 117, column: 6)
!158 = !DILocation(line: 117, column: 17, scope: !157)
!159 = !DILocation(line: 117, column: 6, scope: !44)
!160 = !DILocation(line: 118, column: 4, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 117, column: 27)
!162 = !DILocation(line: 119, column: 15, scope: !161)
!163 = !DILocation(line: 120, column: 1, scope: !161)
!164 = !DILocation(line: 121, column: 11, scope: !165)
!165 = distinct !DILexicalBlock(scope: !44, file: !1, line: 121, column: 6)
!166 = !DILocation(line: 121, column: 17, scope: !165)
!167 = !DILocation(line: 121, column: 6, scope: !44)
!168 = !DILocation(line: 122, column: 4, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 121, column: 27)
!170 = !DILocation(line: 123, column: 15, scope: !169)
!171 = !DILocation(line: 124, column: 1, scope: !169)
!172 = !DILocation(line: 125, column: 19, scope: !44)
!173 = !DILocation(line: 125, column: 28, scope: !44)
!174 = !{!87, !88, i64 4}
!175 = !DILocation(line: 125, column: 6, scope: !44)
!176 = !DILocation(line: 125, column: 12, scope: !44)
!177 = !DILocation(line: 131, column: 1, scope: !44)
!178 = !DILocation(line: 133, column: 1, scope: !44)
!179 = !DILocation(line: 145, column: 11, scope: !52)
!180 = !DILocation(line: 147, column: 10, scope: !181)
!181 = distinct !DILexicalBlock(scope: !52, file: !1, line: 147, column: 6)
!182 = !DILocation(line: 147, column: 6, scope: !52)
!183 = !DILocation(line: 148, column: 12, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !1, line: 147, column: 20)
!185 = !DILocation(line: 148, column: 4, scope: !184)
!186 = !DILocation(line: 150, column: 4, scope: !184)
!187 = !DILocation(line: 152, column: 1, scope: !52)
!188 = !DILocation(line: 153, column: 1, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 153, column: 1)
!190 = distinct !DILexicalBlock(scope: !52, file: !1, line: 153, column: 1)
!191 = !DILocation(line: 155, column: 1, scope: !52)
