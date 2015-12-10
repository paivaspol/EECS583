; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._DV = type { i32, i32, i32, double* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [53 x i8] c"\0A error in Pencil_readFromFile(%p,%s,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Pencil_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"\0A\0A inpmtxA\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"\0A\0A inpmtxB\00", align 1
@.str5 = private unnamed_addr constant [48 x i8] c"\0A error in Pencil_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [35 x i8] c"\0A\0A Pencil : matrix pencil object :\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c" real entries\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"\0A sigma = %20.12e \00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c" complex entries\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"\0A sigma = %20.12e + %20.12e*i\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Pencil_readFromFiles(%struct._Pencil* %pencil, i8* %inpmtxAfileName, i8* %inpmtxBfileName) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Pencil* %pencil, i64 0, metadata !64, metadata !142), !dbg !143
  tail call void @llvm.dbg.value(metadata i8* %inpmtxAfileName, i64 0, metadata !65, metadata !142), !dbg !144
  tail call void @llvm.dbg.value(metadata i8* %inpmtxBfileName, i64 0, metadata !66, metadata !142), !dbg !145
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !67, metadata !142), !dbg !146
  %1 = icmp eq %struct._Pencil* %pencil, null, !dbg !147
  %2 = icmp eq i8* %inpmtxAfileName, null, !dbg !149
  %or.cond = or i1 %1, %2, !dbg !150
  %3 = icmp eq i8* %inpmtxBfileName, null, !dbg !151
  %or.cond3 = or i1 %or.cond, %3, !dbg !150
  br i1 %or.cond3, label %4, label %7, !dbg !150

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !152, !tbaa !154
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), %struct._Pencil* %pencil, i8* %inpmtxAfileName, i8* %inpmtxBfileName) #7, !dbg !158
  br label %22, !dbg !159

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @strcmp(i8* %inpmtxAfileName, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !160
  %9 = icmp eq i32 %8, 0, !dbg !162
  br i1 %9, label %15, label %10, !dbg !163

; <label>:10                                      ; preds = %7
  %11 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !164
  %12 = load %struct._InpMtx** %11, align 8, !dbg !164, !tbaa !166
  %13 = tail call i32 @InpMtx_readFromFile(%struct._InpMtx* %12, i8* %inpmtxAfileName) #7, !dbg !169
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !67, metadata !142), !dbg !146
  %14 = icmp eq i32 %13, 1, !dbg !170
  br i1 %14, label %15, label %22, !dbg !172

; <label>:15                                      ; preds = %10, %7
  %16 = tail call i32 @strcmp(i8* %inpmtxBfileName, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !173
  %17 = icmp eq i32 %16, 0, !dbg !175
  br i1 %17, label %22, label %18, !dbg !176

; <label>:18                                      ; preds = %15
  %19 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !177
  %20 = load %struct._InpMtx** %19, align 8, !dbg !177, !tbaa !179
  %21 = tail call i32 @InpMtx_readFromFile(%struct._InpMtx* %20, i8* %inpmtxBfileName) #7, !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !67, metadata !142), !dbg !146
  ret i32 %21, !dbg !181

; <label>:22                                      ; preds = %15, %10, %4
  %.0 = phi i32 [ 0, %4 ], [ %13, %10 ], [ 1, %15 ]
  ret i32 %.0, !dbg !182
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @InpMtx_readFromFile(%struct._InpMtx*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Pencil_writeForHumanEye(%struct._Pencil* %pencil, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Pencil* %pencil, i64 0, metadata !132, metadata !142), !dbg !183
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !133, metadata !142), !dbg !184
  %1 = icmp eq %struct._Pencil* %pencil, null, !dbg !185
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !187
  %or.cond = or i1 %1, %2, !dbg !188
  br i1 %or.cond, label %3, label %6, !dbg !188

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !189, !tbaa !154
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._Pencil* %pencil, %struct.__sFILE* %fp) #7, !dbg !191
  tail call void @exit(i32 -1) #8, !dbg !192
  unreachable, !dbg !192

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @Pencil_writeStats(%struct._Pencil* %pencil, %struct.__sFILE* %fp) #9, !dbg !193
  %8 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !194
  %9 = load %struct._InpMtx** %8, align 8, !dbg !194, !tbaa !166
  %10 = icmp eq %struct._InpMtx* %9, null, !dbg !196
  br i1 %10, label %15, label %11, !dbg !197

; <label>:11                                      ; preds = %6
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %fp), !dbg !198
  %13 = load %struct._InpMtx** %8, align 8, !dbg !200, !tbaa !166
  %14 = tail call i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %13, %struct.__sFILE* %fp) #7, !dbg !201
  br label %15, !dbg !202

; <label>:15                                      ; preds = %6, %11
  %16 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !203
  %17 = load %struct._InpMtx** %16, align 8, !dbg !203, !tbaa !179
  %18 = icmp eq %struct._InpMtx* %17, null, !dbg !205
  br i1 %18, label %23, label %19, !dbg !206

; <label>:19                                      ; preds = %15
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %fp), !dbg !207
  %21 = load %struct._InpMtx** %16, align 8, !dbg !209, !tbaa !179
  %22 = tail call i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %21, %struct.__sFILE* %fp) #7, !dbg !210
  br label %23, !dbg !211

; <label>:23                                      ; preds = %15, %19
  ret i32 1, !dbg !212
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Pencil_writeStats(%struct._Pencil* %pencil, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Pencil* %pencil, i64 0, metadata !136, metadata !142), !dbg !213
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !137, metadata !142), !dbg !214
  %1 = icmp eq %struct._Pencil* %pencil, null, !dbg !215
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !217
  %or.cond = or i1 %1, %2, !dbg !218
  br i1 %or.cond, label %3, label %6, !dbg !218

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !219, !tbaa !154
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str5, i64 0, i64 0), %struct._Pencil* %pencil, %struct.__sFILE* %fp) #7, !dbg !221
  tail call void @exit(i32 -1) #8, !dbg !222
  unreachable, !dbg !222

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i64 34, i64 1, %struct.__sFILE* %fp), !dbg !223
  %8 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 0, !dbg !224
  %9 = load i32* %8, align 4, !dbg !224, !tbaa !226
  switch i32 %9, label %22 [
    i32 1, label %10
    i32 2, label %15
  ], !dbg !227

; <label>:10                                      ; preds = %6
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %fp), !dbg !228
  %12 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0, !dbg !230
  %13 = load double* %12, align 8, !dbg !230, !tbaa !231
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), double %13) #7, !dbg !233
  br label %22, !dbg !234

; <label>:15                                      ; preds = %6
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %fp), !dbg !235
  %17 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0, !dbg !238
  %18 = load double* %17, align 8, !dbg !238, !tbaa !231
  %19 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1, !dbg !239
  %20 = load double* %19, align 8, !dbg !239, !tbaa !231
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), double %18, double %20) #7, !dbg !240
  br label %22, !dbg !241

; <label>:22                                      ; preds = %6, %15, %10
  %23 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !242
  %24 = load %struct._InpMtx** %23, align 8, !dbg !242, !tbaa !166
  %25 = icmp eq %struct._InpMtx* %24, null, !dbg !244
  br i1 %25, label %30, label %26, !dbg !245

; <label>:26                                      ; preds = %22
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %fp), !dbg !246
  %28 = load %struct._InpMtx** %23, align 8, !dbg !248, !tbaa !166
  %29 = tail call i32 @InpMtx_writeStats(%struct._InpMtx* %28, %struct.__sFILE* %fp) #7, !dbg !249
  br label %30, !dbg !250

; <label>:30                                      ; preds = %22, %26
  %31 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !251
  %32 = load %struct._InpMtx** %31, align 8, !dbg !251, !tbaa !179
  %33 = icmp eq %struct._InpMtx* %32, null, !dbg !253
  br i1 %33, label %38, label %34, !dbg !254

; <label>:34                                      ; preds = %30
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %fp), !dbg !255
  %36 = load %struct._InpMtx** %31, align 8, !dbg !257, !tbaa !179
  %37 = tail call i32 @InpMtx_writeStats(%struct._InpMtx* %36, %struct.__sFILE* %fp) #7, !dbg !258
  br label %38, !dbg !259

; <label>:38                                      ; preds = %30, %34
  ret i32 1, !dbg !260
}

; Function Attrs: optsize
declare i32 @InpMtx_writeForHumanEye(%struct._InpMtx*, %struct.__sFILE*) #3

; Function Attrs: optsize
declare i32 @InpMtx_writeStats(%struct._InpMtx*, %struct.__sFILE*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!138, !139, !140}
!llvm.ident = !{!141}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !68, !134}
!6 = !DISubprogram(name: "Pencil_readFromFiles", scope: !1, file: !1, line: 21, type: !7, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Pencil*, i8*, i8*)* @Pencil_readFromFiles, variables: !63)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !61, !61}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pencil", file: !12, line: 17, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../Pencil.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Pencil", file: !12, line: 18, size: 320, align: 64, elements: !14)
!14 = !{!15, !16, !17, !56, !57}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 19, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "symflag", scope: !13, file: !12, line: 20, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "inpmtxA", scope: !13, file: !12, line: 21, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "InpMtx", file: !20, line: 51, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../InpMtx/InpMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_InpMtx", file: !20, line: 52, size: 1472, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !30, !40, !41, !51, !52, !53, !54, !55}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "coordType", scope: !21, file: !20, line: 53, baseType: !9, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "storageMode", scope: !21, file: !20, line: 54, baseType: !9, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "inputMode", scope: !21, file: !20, line: 55, baseType: !9, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "maxnent", scope: !21, file: !20, line: 56, baseType: !9, size: 32, align: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !21, file: !20, line: 57, baseType: !9, size: 32, align: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "resizeMultiple", scope: !21, file: !20, line: 58, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ivec1IV", scope: !21, file: !20, line: 59, baseType: !31, size: 192, align: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !32, line: 20, baseType: !33)
!32 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !32, line: 21, size: 192, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !33, file: !32, line: 22, baseType: !9, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !33, file: !32, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !33, file: !32, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !33, file: !32, line: 25, baseType: !39, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ivec2IV", scope: !21, file: !20, line: 60, baseType: !31, size: 192, align: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dvecDV", scope: !21, file: !20, line: 61, baseType: !42, size: 192, align: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !43, line: 20, baseType: !44)
!43 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !43, line: 21, size: 192, align: 64, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !44, file: !43, line: 22, baseType: !9, size: 32, align: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !44, file: !43, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !44, file: !43, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !44, file: !43, line: 25, baseType: !50, size: 64, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "maxnvector", scope: !21, file: !20, line: 62, baseType: !9, size: 32, align: 32, offset: 832)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nvector", scope: !21, file: !20, line: 63, baseType: !9, size: 32, align: 32, offset: 864)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "vecidsIV", scope: !21, file: !20, line: 64, baseType: !31, size: 192, align: 64, offset: 896)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sizesIV", scope: !21, file: !20, line: 65, baseType: !31, size: 192, align: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsIV", scope: !21, file: !20, line: 66, baseType: !31, size: 192, align: 64, offset: 1280)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "inpmtxB", scope: !13, file: !12, line: 22, baseType: !18, size: 64, align: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !13, file: !12, line: 23, baseType: !58, size: 128, align: 64, offset: 192)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, align: 64, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 2)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!63 = !{!64, !65, !66, !67}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pencil", arg: 1, scope: !6, file: !1, line: 22, type: !10)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtxAfileName", arg: 2, scope: !6, file: !1, line: 23, type: !61)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpmtxBfileName", arg: 3, scope: !6, file: !1, line: 24, type: !61)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !6, file: !1, line: 26, type: !9)
!68 = !DISubprogram(name: "Pencil_writeForHumanEye", scope: !1, file: !1, line: 63, type: !69, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Pencil*, %struct.__sFILE*)* @Pencil_writeForHumanEye, variables: !131)
!69 = !DISubroutineType(types: !70)
!70 = !{!9, !10, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 153, baseType: !74)
!73 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !73, line: 122, size: 1216, align: 64, elements: !75)
!75 = !{!76, !79, !80, !81, !83, !84, !89, !90, !91, !95, !99, !109, !115, !116, !119, !120, !124, !128, !129, !130}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !74, file: !73, line: 123, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !74, file: !73, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !74, file: !73, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !73, line: 126, baseType: !82, size: 16, align: 16, offset: 128)
!82 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !74, file: !73, line: 127, baseType: !82, size: 16, align: 16, offset: 144)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !74, file: !73, line: 128, baseType: !85, size: 128, align: 64, offset: 192)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !73, line: 88, size: 128, align: 64, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !85, file: !73, line: 89, baseType: !77, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !85, file: !73, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !74, file: !73, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !74, file: !73, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !74, file: !73, line: 133, baseType: !92, size: 64, align: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!9, !4}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !74, file: !73, line: 134, baseType: !96, size: 64, align: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{!9, !4, !61, !9}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !74, file: !73, line: 135, baseType: !100, size: 64, align: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !4, !103, !9}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !73, line: 77, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !105, line: 71, baseType: !106)
!105 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !107, line: 46, baseType: !108)
!107 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!108 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !74, file: !73, line: 136, baseType: !110, size: 64, align: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!9, !4, !113, !9}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !74, file: !73, line: 139, baseType: !85, size: 128, align: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !74, file: !73, line: 140, baseType: !117, size: 64, align: 64, offset: 832)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !73, line: 94, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !74, file: !73, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !74, file: !73, line: 144, baseType: !121, size: 24, align: 8, offset: 928)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 24, align: 8, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 3)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !74, file: !73, line: 145, baseType: !125, size: 8, align: 8, offset: 952)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 8, align: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 1)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !74, file: !73, line: 148, baseType: !85, size: 128, align: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !74, file: !73, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !73, line: 152, baseType: !103, size: 64, align: 64, offset: 1152)
!131 = !{!132, !133}
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pencil", arg: 1, scope: !68, file: !1, line: 64, type: !10)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !68, file: !1, line: 65, type: !71)
!134 = !DISubprogram(name: "Pencil_writeStats", scope: !1, file: !1, line: 99, type: !69, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Pencil*, %struct.__sFILE*)* @Pencil_writeStats, variables: !135)
!135 = !{!136, !137}
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pencil", arg: 1, scope: !134, file: !1, line: 100, type: !10)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !134, file: !1, line: 101, type: !71)
!138 = !{i32 2, !"Dwarf Version", i32 2}
!139 = !{i32 2, !"Debug Info Version", i32 700000003}
!140 = !{i32 1, !"PIC Level", i32 2}
!141 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!142 = !DIExpression()
!143 = !DILocation(line: 22, column: 14, scope: !6)
!144 = !DILocation(line: 23, column: 14, scope: !6)
!145 = !DILocation(line: 24, column: 14, scope: !6)
!146 = !DILocation(line: 26, column: 8, scope: !6)
!147 = !DILocation(line: 32, column: 14, scope: !148)
!148 = distinct !DILexicalBlock(scope: !6, file: !1, line: 32, column: 7)
!149 = !DILocation(line: 32, column: 41, scope: !148)
!150 = !DILocation(line: 32, column: 22, scope: !148)
!151 = !DILocation(line: 33, column: 23, scope: !148)
!152 = !DILocation(line: 34, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !1, line: 33, column: 33)
!154 = !{!155, !155, i64 0}
!155 = !{!"any pointer", !156, i64 0}
!156 = !{!"omnipotent char", !157, i64 0}
!157 = !{!"Simple C/C++ TBAA"}
!158 = !DILocation(line: 34, column: 4, scope: !153)
!159 = !DILocation(line: 36, column: 4, scope: !153)
!160 = !DILocation(line: 38, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !6, file: !1, line: 38, column: 6)
!162 = !DILocation(line: 38, column: 38, scope: !161)
!163 = !DILocation(line: 38, column: 6, scope: !6)
!164 = !DILocation(line: 39, column: 37, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 38, column: 45)
!166 = !{!167, !155, i64 8}
!167 = !{!"_Pencil", !168, i64 0, !168, i64 4, !155, i64 8, !155, i64 16, !156, i64 24}
!168 = !{!"int", !156, i64 0}
!169 = !DILocation(line: 39, column: 9, scope: !165)
!170 = !DILocation(line: 40, column: 12, scope: !171)
!171 = distinct !DILexicalBlock(scope: !165, file: !1, line: 40, column: 9)
!172 = !DILocation(line: 40, column: 9, scope: !165)
!173 = !DILocation(line: 44, column: 6, scope: !174)
!174 = distinct !DILexicalBlock(scope: !6, file: !1, line: 44, column: 6)
!175 = !DILocation(line: 44, column: 38, scope: !174)
!176 = !DILocation(line: 44, column: 6, scope: !6)
!177 = !DILocation(line: 45, column: 37, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 44, column: 45)
!179 = !{!167, !155, i64 16}
!180 = !DILocation(line: 45, column: 9, scope: !178)
!181 = !DILocation(line: 46, column: 9, scope: !178)
!182 = !DILocation(line: 50, column: 14, scope: !6)
!183 = !DILocation(line: 64, column: 14, scope: !68)
!184 = !DILocation(line: 65, column: 14, scope: !68)
!185 = !DILocation(line: 67, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !68, file: !1, line: 67, column: 6)
!187 = !DILocation(line: 67, column: 27, scope: !186)
!188 = !DILocation(line: 67, column: 21, scope: !186)
!189 = !DILocation(line: 68, column: 12, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !1, line: 67, column: 37)
!191 = !DILocation(line: 68, column: 4, scope: !190)
!192 = !DILocation(line: 70, column: 4, scope: !190)
!193 = !DILocation(line: 77, column: 1, scope: !68)
!194 = !DILocation(line: 78, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !68, file: !1, line: 78, column: 6)
!196 = !DILocation(line: 78, column: 22, scope: !195)
!197 = !DILocation(line: 78, column: 6, scope: !68)
!198 = !DILocation(line: 79, column: 4, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 78, column: 32)
!200 = !DILocation(line: 80, column: 36, scope: !199)
!201 = !DILocation(line: 80, column: 4, scope: !199)
!202 = !DILocation(line: 81, column: 1, scope: !199)
!203 = !DILocation(line: 82, column: 14, scope: !204)
!204 = distinct !DILexicalBlock(scope: !68, file: !1, line: 82, column: 6)
!205 = !DILocation(line: 82, column: 22, scope: !204)
!206 = !DILocation(line: 82, column: 6, scope: !68)
!207 = !DILocation(line: 83, column: 4, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !1, line: 82, column: 32)
!209 = !DILocation(line: 84, column: 36, scope: !208)
!210 = !DILocation(line: 84, column: 4, scope: !208)
!211 = !DILocation(line: 85, column: 1, scope: !208)
!212 = !DILocation(line: 86, column: 1, scope: !68)
!213 = !DILocation(line: 100, column: 14, scope: !134)
!214 = !DILocation(line: 101, column: 14, scope: !134)
!215 = !DILocation(line: 108, column: 13, scope: !216)
!216 = distinct !DILexicalBlock(scope: !134, file: !1, line: 108, column: 6)
!217 = !DILocation(line: 108, column: 27, scope: !216)
!218 = !DILocation(line: 108, column: 21, scope: !216)
!219 = !DILocation(line: 109, column: 12, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !1, line: 108, column: 37)
!221 = !DILocation(line: 109, column: 4, scope: !220)
!222 = !DILocation(line: 111, column: 4, scope: !220)
!223 = !DILocation(line: 113, column: 1, scope: !134)
!224 = !DILocation(line: 114, column: 6, scope: !225)
!225 = distinct !DILexicalBlock(scope: !134, file: !1, line: 114, column: 6)
!226 = !{!167, !168, i64 0}
!227 = !DILocation(line: 114, column: 6, scope: !134)
!228 = !DILocation(line: 115, column: 4, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 114, column: 31)
!230 = !DILocation(line: 116, column: 39, scope: !229)
!231 = !{!232, !232, i64 0}
!232 = !{!"double", !156, i64 0}
!233 = !DILocation(line: 116, column: 4, scope: !229)
!234 = !DILocation(line: 117, column: 1, scope: !229)
!235 = !DILocation(line: 118, column: 4, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 117, column: 41)
!237 = distinct !DILexicalBlock(scope: !225, file: !1, line: 117, column: 13)
!238 = !DILocation(line: 120, column: 12, scope: !236)
!239 = !DILocation(line: 120, column: 30, scope: !236)
!240 = !DILocation(line: 119, column: 4, scope: !236)
!241 = !DILocation(line: 121, column: 1, scope: !236)
!242 = !DILocation(line: 122, column: 14, scope: !243)
!243 = distinct !DILexicalBlock(scope: !134, file: !1, line: 122, column: 6)
!244 = !DILocation(line: 122, column: 22, scope: !243)
!245 = !DILocation(line: 122, column: 6, scope: !134)
!246 = !DILocation(line: 123, column: 4, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !1, line: 122, column: 32)
!248 = !DILocation(line: 124, column: 30, scope: !247)
!249 = !DILocation(line: 124, column: 4, scope: !247)
!250 = !DILocation(line: 125, column: 1, scope: !247)
!251 = !DILocation(line: 126, column: 14, scope: !252)
!252 = distinct !DILexicalBlock(scope: !134, file: !1, line: 126, column: 6)
!253 = !DILocation(line: 126, column: 22, scope: !252)
!254 = !DILocation(line: 126, column: 6, scope: !134)
!255 = !DILocation(line: 127, column: 4, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !1, line: 126, column: 32)
!257 = !DILocation(line: 128, column: 30, scope: !256)
!258 = !DILocation(line: 128, column: 4, scope: !256)
!259 = !DILocation(line: 129, column: 1, scope: !256)
!260 = !DILocation(line: 131, column: 1, scope: !134)
